import {
  currentTimePoint,
  ExtendedAsset,
  Name,
  check,
  requireAuth,
  hasAuth,
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
import { EscrowGlobal, Escrow, Fee } from "./escrow.tables";

//for testnet
// function GetMsgInterface(): ExtendedAsset {
//   const MSG_CONTRACT = Name.fromString("xtokens");
//   const MSG_SYMBOL = new Symbol("FOOBAR", 6);
//   return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
// }

//for real net
function GetMsgInterface(): ExtendedAsset {
  const MSG_CONTRACT = Name.fromString("realestatese");
  const MSG_SYMBOL = new Symbol("MESSAGE", 4);
  return new ExtendedAsset(new Asset(1, MSG_SYMBOL), MSG_CONTRACT);
}

@contract
class EscrowContract extends BalanceContract {
  escrowsTable: TableStore<Escrow> = new TableStore<Escrow>(this.receiver);
  feeTable: TableStore<Fee> = new TableStore<Fee>(this.receiver);
  escrowGlobalSingleton: Singleton<EscrowGlobal> = new Singleton<EscrowGlobal>(
    this.receiver
  );
  //declare fee receiver
  //for test net
  // feeReceiver: Name = Name.fromString("escrowtest1");

  // for real net
  feeReceiver: Name = Name.fromString("escrowfees");
  @action("setfee")
  setfee(feeId: u64, feeVal: ExtendedAsset): void {
    //only this contract owner can call this action
    requireAuth(this.receiver);
    // Get Fee
    const fee = new Fee(feeId, feeVal);
    this.feeTable.set(fee, this.contract);
  }
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
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;

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
      "must escrow at least one token or NFT on a side"
    );
    //don't substract if the type is purchase
    if (typeId != 3 && typeId != 4) {
      // Substract balances to see if user pays fee
      this.substractBalance(from, [feeVal], fromNfts);
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
        memo = `${from} wants to exchange ${fromTokens[0]} to ${toTokens[0]} with you. Details: https://easyescrow.io/exchange/${escrowId}/${from}`;
      } else if (typeId == 3) {
        memo = `${from} wants to purchase an item from you. Details: https://easyescrow.io/escrow/purchase_item/${escrowId}`;
      } else if (typeId == 4) {
        memo = `${from} wants to purchase a service from you. Details: https://easyescrow.io/escrow/purchase_service/${escrowId}`;
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

  //sending fee in fillesc
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
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;
    // for exchange
    if (escrow.typeId == 1) {
      // Authenticate
      requireAuth(actor);
      check(escrow.to == actor, `only ${escrow.to} can fill this escrow`);
      // Substract balances to see if user pays fee
      this.substractBalance(actor, [feeVal], []);
      // Substract balances
      this.substractBalance(escrow.to, escrow.toTokens, escrow.toNfts);
      // Erase
      this.escrowsTable.remove(escrow);
      //Fee collecting
      this.withdrawAdmin(
        this.feeReceiver,
        [feeVal],
        [],
        `fee collected for escrow id ${id} for exchange.`
      );
      this.withdrawAdmin(
        this.feeReceiver,
        [feeVal],
        [],
        `fee collected for escrow id ${id} for exchange.`
      );
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
      //Fee collecting
      this.withdrawAdmin(
        this.feeReceiver,
        [feeVal],
        [],
        `fee collected for escrow id ${id} for gift.`
      );
      // Send out
      memo = `${escrow.from} sent a gift.`;
      this.withdrawAdmin(escrow.to, escrow.fromTokens, escrow.fromNfts, memo);
    } else if (escrow.typeId == 3 || escrow.typeId == 4) {
      requireAuth(actor);
      // Substract balances to see if user pays fee
      this.substractBalance(actor, [feeVal], []);
      // Substract balances. check if from sent fund to our contract
      this.substractBalance(escrow.from, escrow.fromTokens, escrow.fromNfts);
      check(escrow.from == actor, `only ${escrow.from} can fill this escrow.`);

      // Erase
      this.escrowsTable.remove(escrow);

      // Send out
      if (escrow.typeId == 3) {
        memo = `${escrow.id} for purchase an item completed.`;
      } else if (escrow.typeId == 4) {
        memo = `${escrow.id} for purchase a service completed.`;
      }
      //Fee collecting
      this.withdrawAdmin(
        this.feeReceiver,
        [feeVal],
        [],
        `fee collected for escrow id ${id} for purchase.`
      );
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
    const fetchedFee = this.feeTable.get(0);

    if (!fetchedFee) {
      check(false, "Fee doesn't set");
      return; // just for intellisense
    }
    const feeVal = fetchedFee.feeVal;

    //send fee
    this.withdrawAdmin(
      escrow.from,
      [feeVal],
      escrow.fromNfts,
      `fee for escrow ${id} cancelled!`
    );
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
      (hasAuth(escrow.from) || hasAuth(escrow.to)) &&
        escrow.from == from &&
        escrow.to == to,
      `Only ${escrow.from} and ${escrow.to} can call this netotiate action!`
    );
    const caller = hasAuth(from) ? from : to;
    const receiver = hasAuth(from) ? to : from;
    check(
      escrow.typeId == 3 || escrow.typeId == 4,
      `This is not for purchase!`
    );
    let memo2 = `${caller} wants to negotiate your offer. Details: https://easyescrow.io/escrow/purchase_item/${escrowId}`;

    if (escrow.typeId == 4) {
      memo2 = `${caller} wants to negotiate your offer. Details: https://easyescrow.io/escrow/purchase_service/${escrowId}`;
    }
    const newPriceQuantity = GetMsgInterface();
    this.withdrawAdmin(receiver, [newPriceQuantity], [], memo2);
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
    let memo2 = `${to} wants to negotiate your offer. Details: https://easyescrow.io/escrow/purchase_item/${escrowId}`;

    if (escrow.typeId == 4) {
      memo2 = `${to} wants to negotiate your offer. Details: https://easyescrow.io/escrow/purchase_service/${escrowId}`;
    }
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
  /**
   * It logs the escrow and its status.
   * @param {escrow} escrow - The escrow object that is being updated.
   * @param {string} status - The status of the escrow.
   */
  @action("logescrow")
  logescrow(escrow: Escrow, status: string): void {
    requireAuth(this.contract);
  }
}
