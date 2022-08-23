import * as _escrow_tables from './escrow.tables';
import * as _chain from "as-chain";
import {
  currentTimePoint,
  ExtendedAsset,
  Name,
  check,
  requireAuth,
  isAccount,
  TableStore,
  Singleton,
  EMPTY_NAME,
  Symbol,
  Asset,
  requireRecipient,
} from "proton-tsc";
import { BalanceContract } from "proton-tsc/balance";
import { ESCROW_STATUS, sendLogEscrow } from "./escrow.inline";
import { EscrowGlobal, Escrow } from "./escrow.tables";

function GetMsgInterface(): ExtendedAsset {
  const MSG_CONTRACT = Name.fromU64(0xEE69054F00000000);
  const MSG_SYMBOL = new Symbol("FOOBAR", 6);
  return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
}

@contract
class EscrowContract extends BalanceContract {
  escrowsTable: TableStore<Escrow> = new TableStore<Escrow>(this.receiver);
  escrowGlobalSingleton: Singleton<EscrowGlobal> = new Singleton<EscrowGlobal>(
    this.receiver
  );

  /**
   * It creates an escrow.
   * @param {u32} typeId - u32, (exchange: 1, gift: 2, purItem: 3, purService: 4, contest: 5)
   * @param {Name} from - Name,
   * @param {Name} to - Name,
   * @param {ExtendedAsset[]} fromTokens - ExtendedAsset[],
   * @param {u64[]} fromNfts - u64[]
   * @param {ExtendedAsset[]} toTokens - A list of tokens that the user wants to buy.(for exchange)
   * @param {u64[]} toNfts - the nft's that were given to the user (for exchange)
   * @param {u32} deliverType - (immediately: 1, delivery: 2 for purchase item, service, 0 for others)
   * @param {u32} expiry - u32 (for gift, 0 for others)
   */
  @action("startescrow")
  startescrow(
    typeId: u32,
    from: Name,
    to: Name,
    fromTokens: ExtendedAsset[],
    fromNfts: u64[],
    toTokens: ExtendedAsset[],
    toNfts: u64[],
    deliverType: u32,
    expiry: u32
  ): void {
    // Authenticate
    requireAuth(from);

    // Pre-conditions
    this.checkContractIsNotPaused();

    // Validation
    check(
      to == EMPTY_NAME || isAccount(to),
      "to must be empty or a valid account"
    );
    if (typeId == 2) {
      check(
        expiry > currentTimePoint().secSinceEpoch(),
        "expiry must be in future"
      );
    }
    check(
      fromTokens.length || fromNfts.length || toTokens.length || toNfts.length,
      "must escrow atleast one token or NFT on a side"
    );
    //don't substract if the type is purchase
    if (typeId != 3 && typeId != 4) {
      // Substract balances
      this.substractBalance(from, fromTokens, fromNfts);
    }

    // Get and update config
    const escrowGlobal = this.escrowGlobalSingleton.get();
    const escrowId = escrowGlobal.escrowId++;
    this.escrowGlobalSingleton.set(escrowGlobal, this.contract);

    // Create escrow object
    const escrow = new Escrow(
      escrowId,
      typeId,
      from,
      to,
      fromTokens,
      fromNfts,
      toTokens,
      toNfts,
      deliverType,
      expiry
    );

    // Save escrow
    this.escrowsTable.store(escrow, this.contract);
    if (typeId == 1 || typeId == 3 || typeId == 4) {
      const newPriceQuantity = GetMsgInterface();
      let memo = "";
      if (typeId == 1) {
        // memo for exchange
        memo = `${from} wants to exchange ${fromTokens[0]} to ${toTokens[0]} with you. Please visit here to accept or decline: https://easyescrow.io/exchange/${escrowId}/${from}`;
      } else if (typeId == 3) {
        memo = `${from} wants to purchase an item from you. Please visit here to see details: https://easyescrow.io/escrow/${escrowId}`;
      } else if (typeId == 4) {
        memo = `${from} wants to purchase a service from you. Please visit here to see details: https://easyescrow.io/escrow/${escrowId}`;
      }
      this.withdrawAdmin(to, [newPriceQuantity], [], memo);
    }

    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.START);
  }

  /**
   * It fills an escrow.
   * @param {Name} actor - Name,
   * @param {u64} id - u64
   */
  @action("fillescrow")
  fillescrow(actor: Name, id: u64): void {
    // Pre-conditions
    this.checkContractIsNotPaused();

    // Get Escrow
    const escrow = this.escrowsTable.requireGet(
      id,
      `no escrow with ID ${id} found.`
    );

    // If empty, set to as actor
    if (escrow.to == EMPTY_NAME) {
      escrow.to = actor;
    }
    let memo = "";
    // for exchange
    if (escrow.typeId == 1) {
      // Authenticate
      requireAuth(actor);
      check(escrow.to == actor, `only ${escrow.to} can fill this escrow`);
      // Substract balances
      this.substractBalance(escrow.to, escrow.toTokens, escrow.toNfts);
      // Erase
      this.escrowsTable.remove(escrow);

      // Send out
      memo = `escrow ${id} completed!`;
      this.withdrawAdmin(escrow.from, escrow.toTokens, escrow.toNfts, memo);
      this.withdrawAdmin(escrow.to, escrow.fromTokens, escrow.fromNfts, memo);
    }
    //for gift
    else if (escrow.typeId == 2) {
      // Authenticate
      requireAuth(this.receiver);
      check(
        currentTimePoint().secSinceEpoch() - 300 <= escrow.expiry &&
          escrow.expiry <= currentTimePoint().secSinceEpoch() + 300,
        "Didn't reach out the predefined time yet!"
      );

      // Validation
      check(escrow.from == actor, `only ${escrow.from} can fill this escrow`);

      // Erase
      this.escrowsTable.remove(escrow);

      // Send out
      memo = `${escrow.from} sent a gift!`;
      this.withdrawAdmin(escrow.to, escrow.fromTokens, escrow.fromNfts, memo);
    } else if (escrow.typeId == 3 || escrow.typeId == 4) {
      requireAuth(actor);
      // Substract balances. check if from sent fund to our contract
      this.substractBalance(escrow.from, escrow.fromTokens, escrow.fromNfts);
      check(escrow.from == actor, `only ${escrow.from} can fill this escrow`);

      // Erase
      this.escrowsTable.remove(escrow);

      // Send out
      if (escrow.typeId == 3) {
        memo = `${escrow.id} for purchase an item completed`;
      } else if (escrow.typeId == 4) {
        memo = `${escrow.id} for purchase a service completed`;
      }

      this.withdrawAdmin(escrow.to, escrow.fromTokens, escrow.fromNfts, memo);
    }

    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.FILL);
  }

  /**
   * It cancels an escrow.
   * @param {u64} id - u64
   */
  @action("cancelescrow")
  cancelescrow(actor: Name, id: u64): void {
    // Authenticate
    requireAuth(actor);

    // Pre-conditions
    this.checkContractIsNotPaused();

    // Get Escrow
    const escrow = this.escrowsTable.requireGet(
      id,
      `no escrow with ID ${id} found.`
    );

    // Authenticate
    check(
      actor == escrow.from || actor == escrow.to,
      `missing required authority of ${escrow.from} or ${escrow.to}`
    );

    check(
      escrow.typeId == 1 || escrow.typeId == 2 || escrow.typeId == 5,
      `Can't call this action in purchase an item/service!`
    );

    // Erase
    this.escrowsTable.remove(escrow);

    // Send out
    this.withdrawAdmin(
      escrow.from,
      escrow.fromTokens,
      escrow.fromNfts,
      `escrow ${id} cancelled!`
    );

    // Log
    sendLogEscrow(this.contract, escrow, ESCROW_STATUS.CANCEL);
  }

  @action("negopurchase")
  negopurchase(
    escrowId: u64,
    typeId: u32,
    from: Name,
    to: Name,
    fromTokens: ExtendedAsset[],
    fromNfts: u64[],
    toTokens: ExtendedAsset[],
    toNfts: u64[],
    deliverType: u32,
    expiry: u32
  ): void {
    this.checkContractIsNotPaused();
    // Validation
    check(
      to == EMPTY_NAME || isAccount(to),
      "Receiver must be a valid account"
    );
    check(
      fromTokens.length || fromNfts.length,
      "must escrow at least one token or NFT on a side"
    );
    const escrow = this.escrowsTable.requireGet(
      escrowId,
      `no escrow with ID ${escrowId} found.`
    );
    check(
      escrow.from == from || escrow.to == to,
      `Only ${escrow.from} and ${escrow.to} can call this netotiate action!`
    );
    check(
      escrow.typeId == 3 || escrow.typeId == 4,
      `This is not for purchase!`
    );
    const memo2 = `User wants to negotiate your offer. Please visit here to see details: https://easyescrow.io/escrow/${escrowId}`;
    const newPriceQuantity = GetMsgInterface();
    this.withdrawAdmin(from, [newPriceQuantity], [], memo2);
    this.withdrawAdmin(to, [newPriceQuantity], [], memo2);
    const newEscrow = new Escrow(
      escrowId,
      typeId,
      from,
      to,
      fromTokens,
      fromNfts,
      toTokens,
      toNfts,
      deliverType,
      expiry
    );
    // Update escrow
    this.escrowsTable.set(newEscrow, this.contract);
  }
  /**
   * It logs the escrow and its status.
   * @param {escrow} escrow - The escrow object that is being updated.
   * @param {string} status - The status of the escrow.
   */
  //for purchase item, service
  @action("user2nego")
  user2nego(
    escrowId: u64,
    typeId: u32,
    from: Name,
    to: Name,
    fromTokens: ExtendedAsset[],
    fromNfts: u64[],
    toTokens: ExtendedAsset[],
    toNfts: u64[],
    deliverType: u32,
    expiry: u32
  ): void {
    requireAuth(to);
    this.checkContractIsNotPaused();
    // Validation
    check(
      to == EMPTY_NAME || isAccount(to),
      "Receiver must be a valid account"
    );
    check(
      fromTokens.length || fromNfts.length,
      "must escrow atleast one token or NFT on a side"
    );
    const escrow = this.escrowsTable.requireGet(
      escrowId,
      `no escrow with ID ${escrowId} found.`
    );
    check(escrow.from == from, "Wrong escrow!");
    const memo1 = "negotiate from user2";
    this.withdrawAdmin(escrow.from, escrow.fromTokens, escrow.fromNfts, memo1);
    const memo2 = `${to} wants to negotiate your offer. Please visit here to see details: https://easyescrow.io/escrow/${escrowId}`;
    const newPriceQuantity = GetMsgInterface();
    this.withdrawAdmin(from, [newPriceQuantity], [], memo2);
    const newEscrow = new Escrow(
      escrowId,
      typeId,
      from,
      to,
      fromTokens,
      fromNfts,
      toTokens,
      toNfts,
      deliverType,
      expiry
    );
    // Update escrow
    this.escrowsTable.set(newEscrow, this.contract);
  }
  @action("logescrow")
  logescrow(escrow: Escrow, status: string): void {
    requireAuth(this.contract);
  }
}


class startescrowAction implements _chain.Packer {
    constructor (
        public typeId: u32 = 0,
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public fromTokens: Array<_chain.ExtendedAsset> | null = null,
        public fromNfts: Array<u64> | null = null,
        public toTokens: Array<_chain.ExtendedAsset> | null = null,
        public toNfts: Array<u64> | null = null,
        public deliverType: u32 = 0,
        public expiry: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u32>(this.typeId);
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.packObjectArray(this.fromTokens!);
        enc.packNumberArray<u64>(this.fromNfts!)
        enc.packObjectArray(this.toTokens!);
        enc.packNumberArray<u64>(this.toNfts!)
        enc.packNumber<u32>(this.deliverType);
        enc.packNumber<u32>(this.expiry);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.typeId = dec.unpackNumber<u32>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.fromTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.fromTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.fromNfts! = dec.unpackNumberArray<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.toTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.toTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.toNfts! = dec.unpackNumberArray<u64>();
        this.deliverType = dec.unpackNumber<u32>();
        this.expiry = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u32>();
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += _chain.calcPackedVarUint32Length(this.fromTokens!.length);
        for (let i=0; i<this.fromTokens!.length; i++) {
            size += this.fromTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromNfts!.length);size += sizeof<u64>()*this.fromNfts!.length;
        size += _chain.calcPackedVarUint32Length(this.toTokens!.length);
        for (let i=0; i<this.toTokens!.length; i++) {
            size += this.toTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.toNfts!.length);size += sizeof<u64>()*this.toNfts!.length;
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}

class fillescrowAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<u64>(this.id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class cancelescrowAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public id: u64 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<u64>(this.id);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.id = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<u64>();
        return size;
    }
}

class negopurchaseAction implements _chain.Packer {
    constructor (
        public escrowId: u64 = 0,
        public typeId: u32 = 0,
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public fromTokens: Array<_chain.ExtendedAsset> | null = null,
        public fromNfts: Array<u64> | null = null,
        public toTokens: Array<_chain.ExtendedAsset> | null = null,
        public toNfts: Array<u64> | null = null,
        public deliverType: u32 = 0,
        public expiry: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.escrowId);
        enc.packNumber<u32>(this.typeId);
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.packObjectArray(this.fromTokens!);
        enc.packNumberArray<u64>(this.fromNfts!)
        enc.packObjectArray(this.toTokens!);
        enc.packNumberArray<u64>(this.toNfts!)
        enc.packNumber<u32>(this.deliverType);
        enc.packNumber<u32>(this.expiry);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.escrowId = dec.unpackNumber<u64>();
        this.typeId = dec.unpackNumber<u32>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.fromTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.fromTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.fromNfts! = dec.unpackNumberArray<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.toTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.toTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.toNfts! = dec.unpackNumberArray<u64>();
        this.deliverType = dec.unpackNumber<u32>();
        this.expiry = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += _chain.calcPackedVarUint32Length(this.fromTokens!.length);
        for (let i=0; i<this.fromTokens!.length; i++) {
            size += this.fromTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromNfts!.length);size += sizeof<u64>()*this.fromNfts!.length;
        size += _chain.calcPackedVarUint32Length(this.toTokens!.length);
        for (let i=0; i<this.toTokens!.length; i++) {
            size += this.toTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.toNfts!.length);size += sizeof<u64>()*this.toNfts!.length;
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}

class user2negoAction implements _chain.Packer {
    constructor (
        public escrowId: u64 = 0,
        public typeId: u32 = 0,
        public from: _chain.Name | null = null,
        public to: _chain.Name | null = null,
        public fromTokens: Array<_chain.ExtendedAsset> | null = null,
        public fromNfts: Array<u64> | null = null,
        public toTokens: Array<_chain.ExtendedAsset> | null = null,
        public toNfts: Array<u64> | null = null,
        public deliverType: u32 = 0,
        public expiry: u32 = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.escrowId);
        enc.packNumber<u32>(this.typeId);
        enc.pack(this.from!);
        enc.pack(this.to!);
        enc.packObjectArray(this.fromTokens!);
        enc.packNumberArray<u64>(this.fromNfts!)
        enc.packObjectArray(this.toTokens!);
        enc.packNumberArray<u64>(this.toNfts!)
        enc.packNumber<u32>(this.deliverType);
        enc.packNumber<u32>(this.expiry);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.escrowId = dec.unpackNumber<u64>();
        this.typeId = dec.unpackNumber<u32>();
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.from! = obj;
        }
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.to! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.fromTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.fromTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.fromNfts! = dec.unpackNumberArray<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.toTokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.toTokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.toNfts! = dec.unpackNumberArray<u64>();
        this.deliverType = dec.unpackNumber<u32>();
        this.expiry = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        size += this.from!.getSize();
        size += this.to!.getSize();
        size += _chain.calcPackedVarUint32Length(this.fromTokens!.length);
        for (let i=0; i<this.fromTokens!.length; i++) {
            size += this.fromTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromNfts!.length);size += sizeof<u64>()*this.fromNfts!.length;
        size += _chain.calcPackedVarUint32Length(this.toTokens!.length);
        for (let i=0; i<this.toTokens!.length; i++) {
            size += this.toTokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.toNfts!.length);size += sizeof<u64>()*this.toNfts!.length;
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }
}

class logescrowAction implements _chain.Packer {
    constructor (
        public escrow: _escrow_tables.Escrow | null = null,
        public status: string = "",
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.escrow!);
        enc.packString(this.status);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _escrow_tables.Escrow();
            dec.unpack(obj);
            this.escrow! = obj;
        }
        this.status = dec.unpackString();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.escrow!.getSize();
        size += _chain.Utils.calcPackedStringLength(this.status);
        return size;
    }
}

class transferAction implements _chain.Packer {
    constructor (
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        return size;
    }
}

class withdrawAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public tokens: Array<_chain.ExtendedAsset> | null = null,
        public nfts: Array<u64> | null = null,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packObjectArray(this.tokens!);
        enc.packNumberArray<u64>(this.nfts!)
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.tokens! = new Array<_chain.ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new _chain.ExtendedAsset();
            this.tokens![i] = obj;
            dec.unpack(obj);
        }
    }

        this.nfts! = dec.unpackNumberArray<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += _chain.calcPackedVarUint32Length(this.tokens!.length);
        for (let i=0; i<this.tokens!.length; i++) {
            size += this.tokens![i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.nfts!.length);size += sizeof<u64>()*this.nfts!.length;
        return size;
    }
}

class setglobalsAction implements _chain.Packer {
    constructor (
        public isPaused: boolean = 0,
        public isActorStrict: boolean = 0,
        public isTokenStrict: boolean = 0,
        public isTokensEnabled: boolean = 0,
        public isNftsEnabled: boolean = 0,
        public isContractsEnabled: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<boolean>(this.isPaused);
        enc.packNumber<boolean>(this.isActorStrict);
        enc.packNumber<boolean>(this.isTokenStrict);
        enc.packNumber<boolean>(this.isTokensEnabled);
        enc.packNumber<boolean>(this.isNftsEnabled);
        enc.packNumber<boolean>(this.isContractsEnabled);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.isPaused = dec.unpackNumber<boolean>();
        this.isActorStrict = dec.unpackNumber<boolean>();
        this.isTokenStrict = dec.unpackNumber<boolean>();
        this.isTokensEnabled = dec.unpackNumber<boolean>();
        this.isNftsEnabled = dec.unpackNumber<boolean>();
        this.isContractsEnabled = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

class settokenAction implements _chain.Packer {
    constructor (
        public token: _chain.ExtendedSymbol | null = null,
        public isAllowed: boolean = 0,
        public isBlocked: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.token!);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.ExtendedSymbol();
            dec.unpack(obj);
            this.token! = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.token!.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

class setactorAction implements _chain.Packer {
    constructor (
        public actor: _chain.Name | null = null,
        public isAllowed: boolean = 0,
        public isBlocked: boolean = 0,
    ) {
    }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.pack(this.actor!);
        enc.packNumber<boolean>(this.isAllowed);
        enc.packNumber<boolean>(this.isBlocked);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        
        {
            let obj = new _chain.Name();
            dec.unpack(obj);
            this.actor! = obj;
        }
        this.isAllowed = dec.unpackNumber<boolean>();
        this.isBlocked = dec.unpackNumber<boolean>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += this.actor!.getSize();
        size += sizeof<boolean>();
        size += sizeof<boolean>();
        return size;
    }
}

export function apply(receiver: u64, firstReceiver: u64, action: u64): void {
	const _receiver = new _chain.Name(receiver);
	const _firstReceiver = new _chain.Name(firstReceiver);
	const _action = new _chain.Name(action);

	const mycontract = new EscrowContract(_receiver, _firstReceiver, _action);
	const actionData = _chain.readActionData();

	if (receiver == firstReceiver) {
		if (action == 0xC64D7CAB08BD3800) {//startescrow
            const args = new startescrowAction();
            args.unpack(actionData);
            mycontract.startescrow(args.typeId,args.from!,args.to!,args.fromTokens!,args.fromNfts!,args.toTokens!,args.toNfts!,args.deliverType,args.expiry);
        }
		if (action == 0x5BA3156117A70000) {//fillescrow
            const args = new fillescrowAction();
            args.unpack(actionData);
            mycontract.fillescrow(args.actor!,args.id);
        }
		if (action == 0x41A685455845E9C0) {//cancelescrow
            const args = new cancelescrowAction();
            args.unpack(actionData);
            mycontract.cancelescrow(args.actor!,args.id);
        }
		if (action == 0x9A994AEAE869B0A0) {//negopurchase
            const args = new negopurchaseAction();
            args.unpack(actionData);
            mycontract.negopurchase(args.escrowId,args.typeId,args.from!,args.to!,args.fromTokens!,args.fromNfts!,args.toTokens!,args.toNfts!,args.deliverType,args.expiry);
        }
		if (action == 0xD615714D4CA00000) {//user2nego
            const args = new user2negoAction();
            args.unpack(actionData);
            mycontract.user2nego(args.escrowId,args.typeId,args.from!,args.to!,args.fromTokens!,args.fromNfts!,args.toTokens!,args.toNfts!,args.deliverType,args.expiry);
        }
		if (action == 0x8D18AC22F4E00000) {//logescrow
            const args = new logescrowAction();
            args.unpack(actionData);
            mycontract.logescrow(args.escrow!,args.status);
        }
		
		if (action == 0xE3B2D4DCDC000000) {//withdraw
            const args = new withdrawAction();
            args.unpack(actionData);
            mycontract.withdraw(args.actor!,args.tokens!,args.nfts!);
        }
		if (action == 0xC2B2C8D0E68E0000) {//setglobals
            const args = new setglobalsAction();
            args.unpack(actionData);
            mycontract.setglobals(args.isPaused,args.isActorStrict,args.isTokenStrict,args.isTokensEnabled,args.isNftsEnabled,args.isContractsEnabled);
        }
		if (action == 0xC2B39A4153000000) {//settoken
            const args = new settokenAction();
            args.unpack(actionData);
            mycontract.settoken(args.token!,args.isAllowed,args.isBlocked);
        }
		if (action == 0xC2B2646697000000) {//setactor
            const args = new setactorAction();
            args.unpack(actionData);
            mycontract.setactor(args.actor!,args.isAllowed,args.isBlocked);
        }
	}
  
	if (receiver != firstReceiver) {
		if (action == 0xCDCD3C2D57000000) {//transfer
            const args = new transferAction();
            args.unpack(actionData);
            mycontract.transfer();
        }
	}
	return;
}
