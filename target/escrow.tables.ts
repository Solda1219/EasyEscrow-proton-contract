import * as _chain from "as-chain";
import { ExtendedAsset, Name, Table, EMPTY_NAME } from "proton-tsc";



export class EscrowGlobalDB extends _chain.MultiIndex<EscrowGlobal> {

}

@table("escrowglobal", singleton, nocodegen)

export class EscrowGlobal implements _chain.MultiIndexValue {
    
  constructor(public escrowId: u64 = 0) {
    
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.escrowId);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.escrowId = dec.unpackNumber<u64>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x56117A7191A1CD10);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return EscrowGlobal.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return EscrowGlobal.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return _chain.Name.fromU64(0x56117A7191A1CD10).N;
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        _chain.check(false, "no secondary value!");
        return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
    }
    
    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        _chain.check(false, "no secondary value!");
    }


    static new(code: _chain.Name, scope: _chain.Name = _chain.EMPTY_NAME): _chain.Singleton<EscrowGlobal> {
        return new _chain.Singleton<EscrowGlobal>(code, scope, this.tableName);
    }
}



export class EscrowDB extends _chain.MultiIndex<Escrow> {
    get byFromDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[0];
    }
    get byToDB(): _chain.IDX64 {
        return <_chain.IDX64>this.idxdbs[1];
    }

    
    updateByFrom(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

    
    updateByTo(idxIt: _chain.SecondaryIterator, value: u64, payer: Name): void {
        let secValue = _chain.newSecondaryValue_u64(value);
        this.idxUpdate(idxIt, secValue, payer);
    }

}

@table("escrows", nocodegen)

export class Escrow implements _chain.MultiIndexValue {
    
  constructor(
    public id: u64 = 0,
    public typeId: u32 = 0,
    public from: Name = EMPTY_NAME,
    public to: Name = EMPTY_NAME,
    public fromTokens: ExtendedAsset[] = [],
    public fromNfts: u64[] = [],
    public toTokens: ExtendedAsset[] = [],
    public toNfts: u64[] = [],
    public deliverType: u32 = 0,
    public expiry: u32 = 0
  ) {
    
  }

  @primary
  get primary(): u64 {
    return this.id;
  }

  @secondary
  get byFrom(): u64 {
    return this.from.N;
  }

  set byFrom(value: u64) {
    this.from.N = value;
  }

  @secondary
  get byTo(): u64 {
    return this.to.N;
  }

  set byTo(value: u64) {
    this.to.N = value;
  }

    pack(): u8[] {
        let enc = new _chain.Encoder(this.getSize());
        enc.packNumber<u64>(this.id);
        enc.packNumber<u32>(this.typeId);
        enc.pack(this.from);
        enc.pack(this.to);
        enc.packObjectArray(this.fromTokens);
        enc.packNumberArray<u64>(this.fromNfts)
        enc.packObjectArray(this.toTokens);
        enc.packNumberArray<u64>(this.toNfts)
        enc.packNumber<u32>(this.deliverType);
        enc.packNumber<u32>(this.expiry);
        return enc.getBytes();
    }
    
    unpack(data: u8[]): usize {
        let dec = new _chain.Decoder(data);
        this.id = dec.unpackNumber<u64>();
        this.typeId = dec.unpackNumber<u32>();
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.from = obj;
        }
        
        {
            let obj = new Name();
            dec.unpack(obj);
            this.to = obj;
        }
        
    {
        let length = <i32>dec.unpackLength();
        this.fromTokens = new Array<ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new ExtendedAsset();
            this.fromTokens[i] = obj;
            dec.unpack(obj);
        }
    }

        this.fromNfts = dec.unpackNumberArray<u64>();
        
    {
        let length = <i32>dec.unpackLength();
        this.toTokens = new Array<ExtendedAsset>(length)
        for (let i=0; i<length; i++) {
            let obj = new ExtendedAsset();
            this.toTokens[i] = obj;
            dec.unpack(obj);
        }
    }

        this.toNfts = dec.unpackNumberArray<u64>();
        this.deliverType = dec.unpackNumber<u32>();
        this.expiry = dec.unpackNumber<u32>();
        return dec.getPos();
    }

    getSize(): usize {
        let size: usize = 0;
        size += sizeof<u64>();
        size += sizeof<u32>();
        size += this.from.getSize();
        size += this.to.getSize();
        size += _chain.calcPackedVarUint32Length(this.fromTokens.length);
        for (let i=0; i<this.fromTokens.length; i++) {
            size += this.fromTokens[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.fromNfts.length);size += sizeof<u64>()*this.fromNfts.length;
        size += _chain.calcPackedVarUint32Length(this.toTokens.length);
        for (let i=0; i<this.toTokens.length; i++) {
            size += this.toTokens[i].getSize();
        }

        size += _chain.calcPackedVarUint32Length(this.toNfts.length);size += sizeof<u64>()*this.toNfts.length;
        size += sizeof<u32>();
        size += sizeof<u32>();
        return size;
    }

    static get tableName(): _chain.Name {
        return _chain.Name.fromU64(0x56117A7300000000);
    }

    static tableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        const idxTableBase: u64 = this.tableName.N & 0xfffffffffffffff0;
        const indices: _chain.IDXDB[] = [
            new _chain.IDX64(code.N, scope.N, idxTableBase + 0, 0),
            new _chain.IDX64(code.N, scope.N, idxTableBase + 1, 1),
        ];
        return indices;
    }

    getTableName(): _chain.Name {
        return Escrow.tableName;
    }

    getTableIndexes(code: _chain.Name, scope: _chain.Name): _chain.IDXDB[] {
        return Escrow.tableIndexes(code, scope);
    }

    getPrimaryValue(): u64 {
        return this.primary
    }

    getSecondaryValue(i: i32): _chain.SecondaryValue {
        switch (i) {
            case 0: {
                return _chain.newSecondaryValue_u64(this.byFrom);
                break;
            }
            case 1: {
                return _chain.newSecondaryValue_u64(this.byTo);
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
                return new _chain.SecondaryValue(_chain.SecondaryType.U64, new Array<u64>(0));
        }
    }

    setSecondaryValue(i: i32, value: _chain.SecondaryValue): void {
        switch (i) {
            case 0: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byFrom = _value;
                break;
            }
            case 1: {
                let _value = _chain.getSecondaryValue_u64(value);
                this.byTo = _value;
                break;
            }
            default:
                _chain.assert(false, "bad db index!");
        }
    }


    static new(code: _chain.Name, scope: _chain.Name  = _chain.EMPTY_NAME): EscrowDB {
        return new EscrowDB(code, scope, this.tableName, this.tableIndexes(code, scope));
    }
}
