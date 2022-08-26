import {
  ExtendedAsset,
  Name,
  Table,
  EMPTY_NAME,
  Asset,
  Symbol,
} from "proton-tsc";

@table("escrowglobal", singleton)
export class EscrowGlobal extends Table {
  constructor(public escrowId: u64 = 0) {
    super();
  }
}
@table("fees")
export class Fee extends Table {
  constructor(
    public feeId: u64 = 0,
    public feeVal: ExtendedAsset = new ExtendedAsset(
      new Asset(250000, new Symbol("XUSDC", 6)),
      Name.fromString("xtokens")
    )
  ) {
    super();
  }
  @primary
  get primary(): u64 {
    return this.feeId;
  }
}

@table("escrows")
export class Escrow extends Table {
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
    super();
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
}
