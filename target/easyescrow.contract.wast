(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i64_=>_i32 (func (param i32 i64) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i64_=>_i32 (func (param i64) (result i32)))
 (type $i32_i32_i64_i32_=>_i32 (func (param i32 i32 i64 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $none_=>_i64 (func (result i64)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32)))
 (type $i32_i64_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i64 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i64_i64_i64_i32_i64_=>_i32 (func (param i64 i64 i64 i32 i64) (result i32)))
 (type $i64_i64_i64_i64_=>_i32 (func (param i64 i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i64 i32) (result i32)))
 (type $i64_=>_none (func (param i64)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)))
 (type $i32_i32_i32_i64_=>_none (func (param i32 i32 i32 i64)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i64_=>_none (func (param i32 i64 i32 i64)))
 (type $i64_i64_i64_=>_none (func (param i64 i64 i64)))
 (type $i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i64_i64_i32_=>_i32 (func (param i32 i64 i64 i64 i32) (result i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i64_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32) (result i32)))
 (type $i64_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i64 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i64_i64_i64_=>_i32 (func (param i64 i64 i64) (result i32)))
 (type $i64_i64_i64_i32_=>_i32 (func (param i64 i64 i64 i32) (result i32)))
 (type $i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $i64_i64_i64_i64_i32_i32_=>_i32 (func (param i64 i64 i64 i64 i32 i32) (result i32)))
 (type $i32_i32_=>_i64 (func (param i32 i32) (result i64)))
 (import "env" "eosio_assert" (func $~lib/as-chain/env/eosio_assert (param i32 i32)))
 (import "env" "action_data_size" (func $~lib/as-chain/env/action_data_size (result i32)))
 (import "env" "read_action_data" (func $~lib/as-chain/env/read_action_data (param i32 i32) (result i32)))
 (import "env" "memcpy" (func $~lib/as-chain/env/memcpy (param i32 i32 i32) (result i32)))
 (import "env" "require_auth" (func $~lib/as-chain/env/require_auth (param i64)))
 (import "env" "db_find_i64" (func $~lib/as-chain/env/db_find_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_get_i64" (func $~lib/as-chain/env/db_get_i64 (param i32 i32 i32) (result i32)))
 (import "env" "is_account" (func $~lib/as-chain/env/is_account (param i64) (result i32)))
 (import "env" "current_time" (func $~lib/as-chain/env/current_time (result i64)))
 (import "env" "db_remove_i64" (func $~lib/as-chain/env/db_remove_i64 (param i32)))
 (import "env" "db_update_i64" (func $~lib/as-chain/env/db_update_i64 (param i32 i64 i32 i32)))
 (import "env" "db_store_i64" (func $~lib/as-chain/env/db_store_i64 (param i64 i64 i64 i64 i32 i32) (result i32)))
 (import "env" "send_inline" (func $~lib/as-chain/env/send_inline (param i32 i32)))
 (import "env" "has_auth" (func $~lib/as-chain/env/has_auth (param i64) (result i32)))
 (import "env" "db_idx128_lowerbound" (func $~lib/as-chain/env/db_idx128_lowerbound (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "db_lowerbound_i64" (func $~lib/as-chain/env/db_lowerbound_i64 (param i64 i64 i64 i64) (result i32)))
 (import "env" "db_end_i64" (func $~lib/as-chain/env/db_end_i64 (param i64 i64 i64) (result i32)))
 (import "env" "db_previous_i64" (func $~lib/as-chain/env/db_previous_i64 (param i32 i32) (result i32)))
 (import "env" "db_idx64_find_primary" (func $~lib/as-chain/env/db_idx64_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx128_find_primary" (func $~lib/as-chain/env/db_idx128_find_primary (param i64 i64 i64 i32 i64) (result i32)))
 (import "env" "db_idx64_remove" (func $~lib/as-chain/env/db_idx64_remove (param i32)))
 (import "env" "db_idx128_remove" (func $~lib/as-chain/env/db_idx128_remove (param i32)))
 (import "env" "db_idx64_update" (func $~lib/as-chain/env/db_idx64_update (param i32 i64 i32)))
 (import "env" "db_idx128_update" (func $~lib/as-chain/env/db_idx128_update (param i32 i64 i32)))
 (import "env" "db_idx64_store" (func $~lib/as-chain/env/db_idx64_store (param i64 i64 i64 i64 i32) (result i32)))
 (import "env" "db_idx128_store" (func $~lib/as-chain/env/db_idx128_store (param i64 i64 i64 i64 i32) (result i32)))
 (global $~lib/rt/stub/offset (mut i32) (i32.const 0))
 (global $~lib/as-chain/name/EMPTY_NAME (mut i32) (i32.const 0))
 (global $~lib/as-chain/mi/SAME_PAYER (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT (mut i32) (i32.const 0))
 (global $~lib/proton-tsc/atomicassets/base58/BASE_MAP (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\03\00\00\00\08\00\00\00\01")
 (data (i32.const 1068) "<")
 (data (i32.const 1084) " \00\00\00.12345abcdefghijklmnopqrstuvwxyz")
 (data (i32.const 1132) ",")
 (data (i32.const 1144) "\04\00\00\00\10\00\00\00@\04\00\00@\04\00\00 \00\00\00 ")
 (data (i32.const 1180) "\dc")
 (data (i32.const 1192) "\01\00\00\00\cc\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00e\00x\00i\00s\00t\00s\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00i\00f\00 \00y\00o\00u\00 \00w\00i\00s\00h\00 \00t\00o\00 \00u\00p\00d\00a\00t\00e\00 \00v\00a\00l\00u\00e")
 (data (i32.const 1404) "\dc")
 (data (i32.const 1416) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00u\00p\00d\00a\00t\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1628) "\dc")
 (data (i32.const 1640) "\01\00\00\00\c0\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00\'\00r\00e\00m\00o\00v\00e\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00,\00 \00p\00l\00e\00a\00s\00e\00 \00u\00s\00e\00 \00\'\00s\00e\00t\00\'\00 \00o\00r\00 \00\'\00s\00t\00o\00r\00e\00\'\00 \00t\00o\00 \00s\00a\00v\00e\00 \00v\00a\00l\00u\00e\00 \00f\00i\00r\00s\00t")
 (data (i32.const 1852) "\8c")
 (data (i32.const 1864) "\01\00\00\00t\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00n\00e\00x\00t\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 1996) "\8c")
 (data (i32.const 2008) "\01\00\00\00|\00\00\00F\00a\00i\00l\00e\00d\00 \00t\00o\00 \00f\00i\00n\00d\00 \00\'\00p\00r\00e\00v\00i\00o\00u\00s\00\'\00 \00v\00a\00l\00u\00e\00 \00a\00s\00 \00c\00u\00r\00r\00e\00n\00t\00 \00i\00t\00e\00m\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t")
 (data (i32.const 2140) "|")
 (data (i32.const 2152) "\01\00\00\00f\00\00\00n\00e\00x\00t\00 \00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00i\00n\00 \00t\00a\00b\00l\00e\00 \00i\00s\00 \00a\00t\00 \00a\00u\00t\00o\00i\00n\00c\00r\00e\00m\00e\00n\00t\00 \00l\00i\00m\00i\00t")
 (data (i32.const 2268) "\1c")
 (data (i32.const 2280) "\n\00\00\00\08\00\00\00\02")
 (data (i32.const 2300) "<")
 (data (i32.const 2312) "\01\00\00\00\1e\00\00\00b\00a\00d\00 \00s\00y\00m\00b\00o\00l\00 \00n\00a\00m\00e")
 (data (i32.const 2364) "<")
 (data (i32.const 2376) "\01\00\00\00\"\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00h\00a\00r\00a\00c\00t\00e\00r")
 (data (i32.const 2428) "\1c")
 (data (i32.const 2440) "\01")
 (data (i32.const 2460) "\\")
 (data (i32.const 2472) "\01\00\00\00>\00\00\00D\00e\00c\00o\00d\00e\00r\00.\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 2556) "L")
 (data (i32.const 2568) "\01\00\00\00.\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00e\00x\00t\00e\00n\00d\00e\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 2636) "\1c")
 (data (i32.const 2648) "\0e\00\00\00\08\00\00\00\03")
 (data (i32.const 2668) ",")
 (data (i32.const 2680) "\01\00\00\00\18\00\00\00a\00t\00o\00m\00i\00c\00a\00s\00s\00e\00t\00s")
 (data (i32.const 2716) ",")
 (data (i32.const 2728) "\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00:\00 ")
 (data (i32.const 2764) "\1c")
 (data (i32.const 2776) "\0f\00\00\00\0c\00\00\00\b0\n\00\00\00\00\00\00\90\t")
 (data (i32.const 2796) ",")
 (data (i32.const 2808) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00n\00a\00m\00e\00 ")
 (data (i32.const 2844) "\1c")
 (data (i32.const 2856) "\0f\00\00\00\0c\00\00\00\00\0b\00\00\00\00\00\00\90\t")
 (data (i32.const 2876) "\8c")
 (data (i32.const 2888) "\01\00\00\00t\00\00\001\002\003\004\005\006\007\008\009\00A\00B\00C\00D\00E\00F\00G\00H\00J\00K\00L\00M\00N\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 3020) "\1c")
 (data (i32.const 3032) "\01\00\00\00\n\00\00\00s\00t\00a\00r\00t")
 (data (i32.const 3052) "\1c")
 (data (i32.const 3064) "\01\00\00\00\08\00\00\00f\00i\00l\00l")
 (data (i32.const 3084) "\1c")
 (data (i32.const 3096) "\01\00\00\00\0c\00\00\00c\00a\00n\00c\00e\00l")
 (data (i32.const 3116) "\1c")
 (data (i32.const 3148) "\1c")
 (data (i32.const 3180) "\1c")
 (data (i32.const 3212) "\1c")
 (data (i32.const 3244) "\1c")
 (data (i32.const 3276) "\1c")
 (data (i32.const 3308) "\1c")
 (data (i32.const 3340) "\1c")
 (data (i32.const 3372) "\1c")
 (data (i32.const 3404) "\1c")
 (data (i32.const 3436) "<")
 (data (i32.const 3448) "\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l")
 (data (i32.const 3500) ",")
 (data (i32.const 3512) "\01\00\00\00\12\00\00\00C\00o\00n\00t\00r\00a\00c\00t\00 ")
 (data (i32.const 3548) ",")
 (data (i32.const 3560) "\01\00\00\00\14\00\00\00 \00i\00s\00 \00p\00a\00u\00s\00e\00d")
 (data (i32.const 3596) "\1c")
 (data (i32.const 3608) "\0f\00\00\00\0c\00\00\00\c0\0d\00\00\00\00\00\00\f0\0d")
 (data (i32.const 3628) "\\")
 (data (i32.const 3640) "\01\00\00\00F\00\00\00t\00o\00 \00m\00u\00s\00t\00 \00b\00e\00 \00e\00m\00p\00t\00y\00 \00o\00r\00 \00a\00 \00v\00a\00l\00i\00d\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 3724) "L")
 (data (i32.const 3736) "\01\00\00\000\00\00\00e\00x\00p\00i\00r\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00i\00n\00 \00f\00u\00t\00u\00r\00e")
 (data (i32.const 3804) "l")
 (data (i32.const 3816) "\01\00\00\00\\\00\00\00m\00u\00s\00t\00 \00e\00s\00c\00r\00o\00w\00 \00a\00t\00l\00e\00a\00s\00t\00 \00o\00n\00e\00 \00t\00o\00k\00e\00n\00 \00o\00r\00 \00N\00F\00T\00 \00o\00n\00 \00a\00 \00s\00i\00d\00e")
 (data (i32.const 3916) ",")
 (data (i32.const 3928) "\01\00\00\00\10\00\00\00A\00c\00c\00o\00u\00n\00t\00 ")
 (data (i32.const 3964) ",")
 (data (i32.const 3976) "\01\00\00\00\14\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d")
 (data (i32.const 4012) "\1c")
 (data (i32.const 4024) "\0f\00\00\00\0c\00\00\00`\0f\00\00\00\00\00\00\90\0f")
 (data (i32.const 4044) ",")
 (data (i32.const 4056) "\01\00\00\00\1c\00\00\00v\00a\00l\00i\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y")
 (data (i32.const 4092) "L")
 (data (i32.const 4104) "\01\00\00\00:\00\00\00s\00u\00b\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 4172) "l")
 (data (i32.const 4184) "\01\00\00\00V\00\00\00n\00o\00 \00b\00a\00l\00a\00n\00c\00e\00 \00f\00o\00u\00n\00d\00 \00f\00o\00r\00 \00u\00s\00e\00r\00 \00t\00o\00 \00r\00e\00d\00u\00c\00e\00 \00b\00a\00l\00a\00n\00c\00e")
 (data (i32.const 4284) "<")
 (data (i32.const 4296) "\01\00\00\00*\00\00\00c\00o\00n\00t\00r\00a\00c\00t\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 4348) "<")
 (data (i32.const 4360) "\01\00\00\00&\00\00\00s\00y\00m\00b\00o\00l\00 \00n\00o\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e")
 (data (i32.const 4412) "<")
 (data (i32.const 4424) "\01\00\00\00(\00\00\00u\00s\00e\00r\00 \00b\00a\00l\00a\00n\00c\00e\00 \00t\00o\00o\00 \00l\00o\00w")
 (data (i32.const 4476) "<")
 (data (i32.const 4488) "\01\00\00\00*\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 4540) "<")
 (data (i32.const 4552) "\01\00\00\00(\00\00\00s\00u\00b\00t\00r\00a\00c\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 4604) "\1c")
 (data (i32.const 4616) "\01\00\00\00\08\00\00\00N\00F\00T\00 ")
 (data (i32.const 4636) "L")
 (data (i32.const 4648) "\01\00\00\002\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00i\00n\00 \00b\00a\00l\00a\00n\00c\00e\00 \00o\00f\00 ")
 (data (i32.const 4716) ",")
 (data (i32.const 4728) "\0f\00\00\00\14\00\00\00\10\12\00\00\00\00\00\000\12\00\00\00\00\00\00\90\t")
 (data (i32.const 4764) "\1c")
 (data (i32.const 4776) "\01\00\00\00\02\00\00\000")
 (data (i32.const 4796) "\\")
 (data (i32.const 4808) "\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data (i32.const 4892) "L")
 (data (i32.const 4904) "\01\00\00\000\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00v\00a\00l\00u\00e\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00!")
 (data (i32.const 4972) "<")
 (data (i32.const 4984) "\01\00\00\00&\00\00\00u\00p\00d\00a\00t\00e\00:\00b\00a\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 5036) "L")
 (data (i32.const 5048) "\01\00\00\00:\00\00\00g\00e\00t\00 \00p\00r\00i\00m\00a\00r\00y\00:\00 \00i\00n\00v\00a\00l\00i\00d\00 \00i\00t\00e\00r\00a\00t\00o\00r")
 (data (i32.const 5116) "l")
 (data (i32.const 5128) "\01\00\00\00V\00\00\00p\00r\00i\00m\00a\00r\00y\00 \00k\00e\00y\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00c\00h\00a\00n\00g\00e\00d\00 \00d\00u\00r\00i\00n\00g\00 \00u\00p\00d\00a\00t\00e\00!")
 (data (i32.const 5228) "L")
 (data (i32.const 5240) "\01\00\00\002\00\00\00c\00h\00e\00c\00k\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 5308) "L")
 (data (i32.const 5320) "\01\00\00\00.\00\00\00i\00n\00c\00P\00o\00s\00:\00 \00b\00u\00f\00f\00e\00r\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 5388) "<")
 (data (i32.const 5400) "\01\00\00\00&\00\00\00n\00o\00 \00s\00e\00c\00o\00n\00d\00a\00r\00y\00 \00v\00a\00l\00u\00e\00!")
 (data (i32.const 5452) ",")
 (data (i32.const 5464) "\01\00\00\00\1a\00\00\00b\00a\00d\00 \00d\00b\00 \00i\00n\00d\00e\00x\00!")
 (data (i32.const 5500) "\1c")
 (data (i32.const 5512) "\01\00\00\00\0c\00\00\00F\00O\00O\00B\00A\00R")
 (data (i32.const 5532) "<")
 (data (i32.const 5544) "\01\00\00\00&\00\00\00 \00w\00a\00n\00t\00s\00 \00t\00o\00 \00e\00x\00c\00h\00a\00n\00g\00e\00 ")
 (data (i32.const 5596) "\1c")
 (data (i32.const 5608) "\01\00\00\00\08\00\00\00 \00t\00o\00 ")
 (data (i32.const 5628) "\bc")
 (data (i32.const 5640) "\01\00\00\00\a4\00\00\00 \00w\00i\00t\00h\00 \00y\00o\00u\00.\00 \00P\00l\00e\00a\00s\00e\00 \00v\00i\00s\00i\00t\00 \00h\00e\00r\00e\00 \00t\00o\00 \00a\00c\00c\00e\00p\00t\00 \00o\00r\00 \00d\00e\00c\00l\00i\00n\00e\00:\00 \00h\00t\00t\00p\00s\00:\00/\00/\00e\00a\00s\00y\00e\00s\00c\00r\00o\00w\00.\00i\00o\00/\00e\00x\00c\00h\00a\00n\00g\00e\00/")
 (data (i32.const 5820) "\1c")
 (data (i32.const 5832) "\01\00\00\00\02\00\00\00/")
 (data (i32.const 5852) "<")
 (data (i32.const 5864) "\0f\00\00\00,\00\00\00\90\t\00\00\00\00\00\00\b0\15\00\00\00\00\00\00\f0\15\00\00\00\00\00\00\10\16\00\00\00\00\00\00\d0\16\00\00\00\00\00\00\90\t")
 (data (i32.const 5916) "\1c")
 (data (i32.const 5928) "\01\00\00\00\02\00\00\00.")
 (data (i32.const 5948) "\1c")
 (data (i32.const 5960) "\01\00\00\00\02\00\00\00 ")
 (data (i32.const 5980) "\1c")
 (data (i32.const 5992) "\01\00\00\00\02\00\00\00@")
 (data (i32.const 6012) "\dc")
 (data (i32.const 6024) "\01\00\00\00\c8\00\00\00 \00w\00a\00n\00t\00s\00 \00t\00o\00 \00p\00u\00r\00c\00h\00a\00s\00e\00 \00a\00n\00 \00i\00t\00e\00m\00 \00f\00r\00o\00m\00 \00y\00o\00u\00.\00 \00P\00l\00e\00a\00s\00e\00 \00v\00i\00s\00i\00t\00 \00h\00e\00r\00e\00 \00t\00o\00 \00s\00e\00e\00 \00d\00e\00t\00a\00i\00l\00s\00:\00 \00h\00t\00t\00p\00s\00:\00/\00/\00e\00a\00s\00y\00e\00s\00c\00r\00o\00w\00.\00i\00o\00/\00e\00s\00c\00r\00o\00w\00/")
 (data (i32.const 6236) ",")
 (data (i32.const 6248) "\0f\00\00\00\14\00\00\00\90\t\00\00\00\00\00\00\90\17\00\00\00\00\00\00\90\t")
 (data (i32.const 6284) "\dc")
 (data (i32.const 6296) "\01\00\00\00\cc\00\00\00 \00w\00a\00n\00t\00s\00 \00t\00o\00 \00p\00u\00r\00c\00h\00a\00s\00e\00 \00a\00 \00s\00e\00r\00v\00i\00c\00e\00 \00f\00r\00o\00m\00 \00y\00o\00u\00.\00 \00P\00l\00e\00a\00s\00e\00 \00v\00i\00s\00i\00t\00 \00h\00e\00r\00e\00 \00t\00o\00 \00s\00e\00e\00 \00d\00e\00t\00a\00i\00l\00s\00:\00 \00h\00t\00t\00p\00s\00:\00/\00/\00e\00a\00s\00y\00e\00s\00c\00r\00o\00w\00.\00i\00o\00/\00e\00s\00c\00r\00o\00w\00/")
 (data (i32.const 6508) ",")
 (data (i32.const 6520) "\0f\00\00\00\14\00\00\00\90\t\00\00\00\00\00\00\a0\18\00\00\00\00\00\00\90\t")
 (data (i32.const 6556) "\1c")
 (data (i32.const 6588) ",")
 (data (i32.const 6600) "\01\00\00\00\10\00\00\00t\00r\00a\00n\00s\00f\00e\00r")
 (data (i32.const 6636) "\1c")
 (data (i32.const 6648) "\01\00\00\00\0c\00\00\00a\00c\00t\00i\00v\00e")
 (data (i32.const 6668) ",")
 (data (i32.const 6680) "\01\00\00\00\12\00\00\00l\00o\00g\00e\00s\00c\00r\00o\00w")
 (data (i32.const 6716) "<")
 (data (i32.const 6728) "\01\00\00\00$\00\00\00n\00o\00 \00e\00s\00c\00r\00o\00w\00 \00w\00i\00t\00h\00 \00I\00D\00 ")
 (data (i32.const 6780) ",")
 (data (i32.const 6792) "\01\00\00\00\0e\00\00\00 \00f\00o\00u\00n\00d\00.")
 (data (i32.const 6828) "\1c")
 (data (i32.const 6840) "\0f\00\00\00\0c\00\00\00P\1a\00\00\00\00\00\00\90\1a")
 (data (i32.const 6860) "\1c")
 (data (i32.const 6872) "\01\00\00\00\n\00\00\00o\00n\00l\00y\00 ")
 (data (i32.const 6892) "<")
 (data (i32.const 6904) "\01\00\00\00*\00\00\00 \00c\00a\00n\00 \00f\00i\00l\00l\00 \00t\00h\00i\00s\00 \00e\00s\00c\00r\00o\00w")
 (data (i32.const 6956) "\1c")
 (data (i32.const 6968) "\0f\00\00\00\0c\00\00\00\e0\1a\00\00\00\00\00\00\00\1b")
 (data (i32.const 6988) ",")
 (data (i32.const 7000) "\01\00\00\00\0e\00\00\00e\00s\00c\00r\00o\00w\00 ")
 (data (i32.const 7036) ",")
 (data (i32.const 7048) "\01\00\00\00\16\00\00\00 \00c\00o\00m\00p\00l\00e\00t\00e\00d\00!")
 (data (i32.const 7084) "\1c")
 (data (i32.const 7096) "\0f\00\00\00\0c\00\00\00`\1b\00\00\00\00\00\00\90\1b")
 (data (i32.const 7116) "l")
 (data (i32.const 7128) "\01\00\00\00R\00\00\00D\00i\00d\00n\00\'\00t\00 \00r\00e\00a\00c\00h\00 \00o\00u\00t\00 \00t\00h\00e\00 \00p\00r\00e\00d\00e\00f\00i\00n\00e\00d\00 \00t\00i\00m\00e\00 \00y\00e\00t\00!")
 (data (i32.const 7228) "\1c")
 (data (i32.const 7240) "\0f\00\00\00\0c\00\00\00\e0\1a\00\00\00\00\00\00\00\1b")
 (data (i32.const 7260) ",")
 (data (i32.const 7272) "\01\00\00\00\1a\00\00\00 \00s\00e\00n\00t\00 \00a\00 \00g\00i\00f\00t\00!")
 (data (i32.const 7308) "\1c")
 (data (i32.const 7320) "\0f\00\00\00\0c\00\00\00\90\t\00\00\00\00\00\00p\1c")
 (data (i32.const 7340) "\1c")
 (data (i32.const 7352) "\0f\00\00\00\0c\00\00\00\e0\1a\00\00\00\00\00\00\00\1b")
 (data (i32.const 7372) "\\")
 (data (i32.const 7384) "\01\00\00\00>\00\00\00 \00f\00o\00r\00 \00p\00u\00r\00c\00h\00a\00s\00e\00 \00a\00n\00 \00i\00t\00e\00m\00 \00c\00o\00m\00p\00l\00e\00t\00e\00d")
 (data (i32.const 7468) "\1c")
 (data (i32.const 7480) "\0f\00\00\00\0c\00\00\00\90\t\00\00\00\00\00\00\e0\1c")
 (data (i32.const 7500) "\\")
 (data (i32.const 7512) "\01\00\00\00B\00\00\00 \00f\00o\00r\00 \00p\00u\00r\00c\00h\00a\00s\00e\00 \00a\00 \00s\00e\00r\00v\00i\00c\00e\00 \00c\00o\00m\00p\00l\00e\00t\00e\00d")
 (data (i32.const 7596) "\1c")
 (data (i32.const 7608) "\0f\00\00\00\0c\00\00\00\90\t\00\00\00\00\00\00`\1d")
 (data (i32.const 7628) "\1c")
 (data (i32.const 7640) "\0f\00\00\00\0c\00\00\00P\1a\00\00\00\00\00\00\90\1a")
 (data (i32.const 7660) "L")
 (data (i32.const 7672) "\01\00\00\00<\00\00\00m\00i\00s\00s\00i\00n\00g\00 \00r\00e\00q\00u\00i\00r\00e\00d\00 \00a\00u\00t\00h\00o\00r\00i\00t\00y\00 \00o\00f\00 ")
 (data (i32.const 7740) "\1c")
 (data (i32.const 7752) "\01\00\00\00\08\00\00\00 \00o\00r\00 ")
 (data (i32.const 7772) ",")
 (data (i32.const 7784) "\0f\00\00\00\14\00\00\00\00\1e\00\00\00\00\00\00P\1e\00\00\00\00\00\00\90\t")
 (data (i32.const 7820) "|")
 (data (i32.const 7832) "\01\00\00\00f\00\00\00C\00a\00n\00\'\00t\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00a\00c\00t\00i\00o\00n\00 \00i\00n\00 \00p\00u\00r\00c\00h\00a\00s\00e\00 \00a\00n\00 \00i\00t\00e\00m\00/\00s\00e\00r\00v\00i\00c\00e\00!")
 (data (i32.const 7948) ",")
 (data (i32.const 7960) "\01\00\00\00\16\00\00\00 \00c\00a\00n\00c\00e\00l\00l\00e\00d\00!")
 (data (i32.const 7996) "\1c")
 (data (i32.const 8008) "\0f\00\00\00\0c\00\00\00`\1b\00\00\00\00\00\00 \1f")
 (data (i32.const 8028) "\\")
 (data (i32.const 8040) "\01\00\00\00@\00\00\00R\00e\00c\00e\00i\00v\00e\00r\00 \00m\00u\00s\00t\00 \00b\00e\00 \00a\00 \00v\00a\00l\00i\00d\00 \00a\00c\00c\00o\00u\00n\00t")
 (data (i32.const 8124) "|")
 (data (i32.const 8136) "\01\00\00\00^\00\00\00m\00u\00s\00t\00 \00e\00s\00c\00r\00o\00w\00 \00a\00t\00 \00l\00e\00a\00s\00t\00 \00o\00n\00e\00 \00t\00o\00k\00e\00n\00 \00o\00r\00 \00N\00F\00T\00 \00o\00n\00 \00a\00 \00s\00i\00d\00e")
 (data (i32.const 8252) "\1c")
 (data (i32.const 8264) "\0f\00\00\00\0c\00\00\00P\1a\00\00\00\00\00\00\90\1a")
 (data (i32.const 8284) "\1c")
 (data (i32.const 8296) "\01\00\00\00\n\00\00\00O\00n\00l\00y\00 ")
 (data (i32.const 8316) "\1c")
 (data (i32.const 8328) "\01\00\00\00\n\00\00\00 \00a\00n\00d\00 ")
 (data (i32.const 8348) "\\")
 (data (i32.const 8360) "\01\00\00\00@\00\00\00 \00c\00a\00n\00 \00c\00a\00l\00l\00 \00t\00h\00i\00s\00 \00n\00e\00t\00o\00t\00i\00a\00t\00e\00 \00a\00c\00t\00i\00o\00n\00!")
 (data (i32.const 8444) ",")
 (data (i32.const 8456) "\0f\00\00\00\14\00\00\00p \00\00\00\00\00\00\90 \00\00\00\00\00\00\b0 ")
 (data (i32.const 8492) "L")
 (data (i32.const 8504) "\01\00\00\002\00\00\00T\00h\00i\00s\00 \00i\00s\00 \00n\00o\00t\00 \00f\00o\00r\00 \00p\00u\00r\00c\00h\00a\00s\00e\00!")
 (data (i32.const 8572) "\dc")
 (data (i32.const 8584) "\01\00\00\00\be\00\00\00 \00w\00a\00n\00t\00s\00 \00t\00o\00 \00n\00e\00g\00o\00t\00i\00a\00t\00e\00 \00y\00o\00u\00r\00 \00o\00f\00f\00e\00r\00.\00 \00P\00l\00e\00a\00s\00e\00 \00v\00i\00s\00i\00t\00 \00h\00e\00r\00e\00 \00t\00o\00 \00s\00e\00e\00 \00d\00e\00t\00a\00i\00l\00s\00:\00 \00h\00t\00t\00p\00s\00:\00/\00/\00e\00a\00s\00y\00e\00s\00c\00r\00o\00w\00.\00i\00o\00/\00e\00s\00c\00r\00o\00w\00/")
 (data (i32.const 8796) ",")
 (data (i32.const 8808) "\0f\00\00\00\14\00\00\00\90\t\00\00\00\00\00\00\90!\00\00\00\00\00\00\90\t")
 (data (i32.const 8844) "\1c")
 (data (i32.const 8876) "\1c")
 (data (i32.const 8888) "\0f\00\00\00\0c\00\00\00P\1a\00\00\00\00\00\00\90\1a")
 (data (i32.const 8908) ",")
 (data (i32.const 8920) "\01\00\00\00\1a\00\00\00W\00r\00o\00n\00g\00 \00e\00s\00c\00r\00o\00w\00!")
 (data (i32.const 8956) "<")
 (data (i32.const 8968) "\01\00\00\00(\00\00\00n\00e\00g\00o\00t\00i\00a\00t\00e\00 \00f\00r\00o\00m\00 \00u\00s\00e\00r\002")
 (data (i32.const 9020) ",")
 (data (i32.const 9032) "\0f\00\00\00\14\00\00\00\90\t\00\00\00\00\00\00\90!\00\00\00\00\00\00\90\t")
 (data (i32.const 9068) "\1c")
 (data (i32.const 9100) ",")
 (data (i32.const 9112) "\01\00\00\00\10\00\00\00w\00i\00t\00h\00d\00r\00a\00w")
 (data (i32.const 9148) "\8c")
 (data (i32.const 9160) "\01\00\00\00v\00\00\00a\00 \00t\00o\00k\00e\00n\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00b\00o\00t\00h\00 \00a\00l\00l\00o\00w\00e\00d\00 \00a\00n\00d\00 \00b\00l\00o\00c\00k\00e\00d\00 \00a\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00t\00i\00m\00e")
 (data (i32.const 9292) "<")
 (data (i32.const 9304) "\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00u\00p\00c\00a\00s\00t")
 (data (i32.const 9356) "\8c")
 (data (i32.const 9368) "\01\00\00\00x\00\00\00a\00n\00 \00a\00c\00t\00o\00r\00 \00c\00a\00n\00n\00o\00t\00 \00b\00e\00 \00b\00o\00t\00h\00 \00a\00l\00l\00o\00w\00e\00d\00 \00a\00n\00d\00 \00b\00l\00o\00c\00k\00e\00d\00 \00a\00t\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00t\00i\00m\00e")
 (data (i32.const 9500) "\1c")
 (data (i32.const 9532) ",")
 (data (i32.const 9544) "\01\00\00\00\16\00\00\00e\00o\00s\00i\00o\00.\00s\00t\00a\00k\00e")
 (data (i32.const 9580) ",")
 (data (i32.const 9592) "\01\00\00\00\12\00\00\00e\00o\00s\00i\00o\00.\00r\00a\00m")
 (data (i32.const 9628) "\1c")
 (data (i32.const 9640) "\01\00\00\00\n\00\00\00e\00o\00s\00i\00o")
 (data (i32.const 9660) "<")
 (data (i32.const 9672) "\01\00\00\00\1e\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00D\00e\00p\00o\00s\00i\00t")
 (data (i32.const 9724) "<")
 (data (i32.const 9736) "\01\00\00\00(\00\00\00N\00F\00T\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d")
 (data (i32.const 9788) "\1c")
 (data (i32.const 9820) "L")
 (data (i32.const 9832) "\01\00\00\00:\00\00\00a\00d\00d\00 \00q\00u\00a\00n\00t\00i\00t\00y\00 \00m\00u\00s\00t\00 \00b\00e\00 \00p\00o\00s\00i\00t\00i\00v\00e")
 (data (i32.const 9900) "<")
 (data (i32.const 9912) "\01\00\00\00$\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00u\00n\00d\00e\00r\00f\00l\00o\00w")
 (data (i32.const 9964) "<")
 (data (i32.const 9976) "\01\00\00\00\"\00\00\00a\00d\00d\00i\00t\00i\00o\00n\00 \00o\00v\00e\00r\00f\00l\00o\00w")
 (data (i32.const 10028) "<")
 (data (i32.const 10040) "\01\00\00\00,\00\00\00T\00o\00k\00e\00n\00s\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d")
 (data (i32.const 10092) "<")
 (data (i32.const 10104) "\01\00\00\00*\00\00\00T\00o\00k\00e\00n\00s\00 \00f\00r\00o\00m\00 \00c\00o\00n\00t\00r\00a\00c\00t\00 ")
 (data (i32.const 10156) "L")
 (data (i32.const 10168) "\01\00\00\00:\00\00\00 \00a\00r\00e\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d\00 \00f\00o\00r\00 \00d\00e\00p\00o\00s\00i\00t\00s")
 (data (i32.const 10236) "\1c")
 (data (i32.const 10248) "\0f\00\00\00\0c\00\00\00\80\'\00\00\00\00\00\00\c0\'")
 (data (i32.const 10268) "\1c")
 (data (i32.const 10280) "\01\00\00\00\0c\00\00\00T\00o\00k\00e\00n\00 ")
 (data (i32.const 10300) "L")
 (data (i32.const 10312) "\01\00\00\008\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00e\00n\00a\00b\00l\00e\00d\00 \00f\00o\00r\00 \00d\00e\00p\00o\00s\00i\00t\00s")
 (data (i32.const 10380) "\1c")
 (data (i32.const 10392) "\0f\00\00\00\0c\00\00\000(\00\00\00\00\00\00P(")
 (data (i32.const 10412) "\1c")
 (data (i32.const 10444) ",")
 (data (i32.const 10456) "\01\00\00\00\1c\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00s\00y\00m\00b\00o\00l")
 (data (i32.const 10492) ",")
 (data (i32.const 10504) "\01\00\00\00\1a\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00s\00e\00t")
 (data (i32.const 10540) "<")
 (data (i32.const 10552) "\01\00\00\00 \00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 10604) "<")
 (data (i32.const 10616) "\01\00\00\00\"\00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00v\00a\00l\00u\00e")
 (data (i32.const 10668) "<")
 (data (i32.const 10680) "\01\00\00\00\1e\00\00\00i\00d\00x\006\004\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 10732) "<")
 (data (i32.const 10744) "\01\00\00\00 \00\00\00i\00d\00x\001\002\008\00:\00 \00b\00a\00d\00 \00t\00y\00p\00e")
 (data (i32.const 10800) "Z\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 10836) "B\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 ")
 (data (i32.const 10868) " \00\00\00\00\00\00\00 ")
 (data (i32.const 10908) "\02\t")
 (data (i32.const 10924) "\04A")
 (data (i32.const 10936) "\11\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\13")
 (data (i32.const 10972) " \00\00\00\16\00\00\00 \00\00\00\06")
 (data (i32.const 11004) " \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A")
 (data (i32.const 11052) " \00\00\00\00\00\00\00 ")
 (data (i32.const 11084) " ")
 (data (i32.const 11116) "\02A\00\00\00\00\00\00\02\02")
 (data (i32.const 11148) " ")
 (data (i32.const 11180) " \00\00\00\00\00\00\00 ")
 (data (i32.const 11212) " \00\00\00\00\00\00\00 \00\00\00\1a\00\00\00 \00\00\00\1a")
 (data (i32.const 11260) " ")
 (data (i32.const 11284) " ")
 (data (i32.const 11324) "A\00\00\00\02")
 (data (i32.const 11364) "\02A")
 (data (i32.const 11476) " ")
 (data (i32.const 11516) " ")
 (table $0 4 funcref)
 (elem $0 (i32.const 1) $start:~lib/as-chain/name~anonymous|0 $start:~lib/proton-tsc/allow/allow.utils~anonymous|0 $start:~lib/proton-tsc/allow/allow.utils~anonymous|1)
 (export "apply" (func $easyescrow.contract/apply))
 (export "memory" (memory $0))
 (start $~start)
 (func $start:~lib/as-chain/name~anonymous|0 (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 122)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 97)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 91)
    )
   )
  )
  (if
   (select
    (i32.le_u
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const 65535)
      )
     )
     (i32.const 53)
    )
    (i32.const 0)
    (i32.ge_u
     (local.get $1)
     (i32.const 49)
    )
   )
   (return
    (i32.sub
     (local.get $0)
     (i32.const 48)
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (local.get $0)
     (i32.const 65535)
    )
    (i32.const 46)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.const 65535)
 )
 (func $~lib/as-chain/name/Name#set:N (param $0 i32) (param $1 i64)
  (i64.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/maybeGrowMemory (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $1
     (i32.and
      (i32.add
       (i32.shl
        (local.tee $2
         (memory.size)
        )
        (i32.const 16)
       )
       (i32.const 15)
      )
      (i32.const -16)
     )
    )
   )
   (if
    (i32.lt_s
     (memory.grow
      (select
       (local.get $2)
       (local.tee $1
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (local.get $0)
            (local.get $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.lt_s
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (memory.grow
       (local.get $1)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (global.set $~lib/rt/stub/offset
   (local.get $0)
  )
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  (i32.store
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__alloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (local.set $1
   (global.get $~lib/rt/stub/offset)
  )
  (call $~lib/rt/stub/maybeGrowMemory
   (i32.add
    (local.tee $2
     (i32.add
      (global.get $~lib/rt/stub/offset)
      (i32.const 4)
     )
    )
    (local.tee $0
     (i32.sub
      (i32.and
       (i32.add
        (local.get $0)
        (i32.const 19)
       )
       (i32.const -16)
      )
      (i32.const 4)
     )
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (local.get $2)
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo (param $0 i32) (param $1 i32)
  (i32.store offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:gcInfo2 (param $0 i32) (param $1 i32)
  (i32.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtId (param $0 i32) (param $1 i32)
  (i32.store offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/common/OBJECT#set:rtSize (param $0 i32) (param $1 i32)
  (i32.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/rt/stub/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.tee $2
    (i32.sub
     (local.tee $3
      (call $~lib/rt/stub/__alloc
       (i32.add
        (local.get $0)
        (i32.const 16)
       )
      )
     )
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $2)
   (local.get $0)
  )
  (i32.add
   (local.get $3)
   (i32.const 16)
  )
 )
 (func $~lib/as-chain/bignum/integer/u128/u128#set:hi (param $0 i32) (param $1 i64)
  (i64.store offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $start:~lib/proton-tsc/allow/allow.utils~anonymous|0 (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i64)
  (local.set $1
   (i64.load
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (local.set $2
   (i64.load
    (i32.load
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 9)
    )
   )
   (local.get $1)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local.set $3
   (local.get $1)
  )
  (loop $while-continue|0
   (if
    (local.get $2)
    (block
     (local.set $0
      (i32.add
       (local.tee $1
        (local.get $0)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (local.get $1)
      (local.get $3)
     )
     (local.set $2
      (i32.sub
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $while-continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<u8>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 4)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (select
       (local.get $0)
       (i32.const 8)
       (i32.gt_u
        (local.get $0)
        (i32.const 8)
       )
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/ExtendedSymbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 7)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  (i32.shr_u
   (i32.load offset=16
    (i32.sub
     (local.get $0)
     (i32.const 20)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/string/String.UTF8.byteLength (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.load offset=16
     (i32.sub
      (local.get $0)
      (i32.const 20)
     )
    )
   )
  )
  (local.set $2
   (i32.ne
    (local.get $1)
    (i32.const 0)
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block $while-break|0
     (local.set $2
      (if (result i32)
       (i32.lt_u
        (local.tee $3
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (br_if $while-break|0
         (i32.and
          (local.get $1)
          (i32.eqz
           (local.get $3)
          )
         )
        )
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $3)
         (i32.const 2048)
        )
        (i32.add
         (local.get $2)
         (i32.const 2)
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $3)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (i32.load16_u offset=2
              (local.get $0)
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (local.set $2
             (i32.add
              (local.get $2)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.add
          (local.get $2)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $4
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
  (local.set $1
   (local.get $2)
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $4)
    )
    (block
     (local.set $1
      (if (result i32)
       (i32.lt_u
        (local.tee $2
         (i32.load16_u
          (local.get $0)
         )
        )
        (i32.const 128)
       )
       (block (result i32)
        (i32.store8
         (local.get $1)
         (local.get $2)
        )
        (i32.add
         (local.get $1)
         (i32.const 1)
        )
       )
       (if (result i32)
        (i32.lt_u
         (local.get $2)
         (i32.const 2048)
        )
        (block (result i32)
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 6)
            )
            (i32.const 192)
           )
           (i32.shl
            (i32.or
             (i32.and
              (local.get $2)
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 2)
         )
        )
        (block (result i32)
         (if
          (select
           (i32.gt_u
            (local.get $4)
            (i32.add
             (local.get $0)
             (i32.const 2)
            )
           )
           (i32.const 0)
           (i32.eq
            (i32.and
             (local.get $2)
             (i32.const 64512)
            )
            (i32.const 55296)
           )
          )
          (if
           (i32.eq
            (i32.and
             (local.tee $5
              (i32.load16_u offset=2
               (local.get $0)
              )
             )
             (i32.const 64512)
            )
            (i32.const 56320)
           )
           (block
            (i32.store
             (local.get $1)
             (i32.or
              (i32.or
               (i32.or
                (i32.shl
                 (i32.or
                  (i32.and
                   (local.tee $2
                    (i32.or
                     (i32.add
                      (i32.shl
                       (i32.and
                        (local.get $2)
                        (i32.const 1023)
                       )
                       (i32.const 10)
                      )
                      (i32.const 65536)
                     )
                     (i32.and
                      (local.get $5)
                      (i32.const 1023)
                     )
                    )
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 24)
                )
                (i32.shl
                 (i32.or
                  (i32.and
                   (i32.shr_u
                    (local.get $2)
                    (i32.const 6)
                   )
                   (i32.const 63)
                  )
                  (i32.const 128)
                 )
                 (i32.const 16)
                )
               )
               (i32.shl
                (i32.or
                 (i32.and
                  (i32.shr_u
                   (local.get $2)
                   (i32.const 12)
                  )
                  (i32.const 63)
                 )
                 (i32.const 128)
                )
                (i32.const 8)
               )
              )
              (i32.or
               (i32.shr_u
                (local.get $2)
                (i32.const 18)
               )
               (i32.const 240)
              )
             )
            )
            (local.set $1
             (i32.add
              (local.get $1)
              (i32.const 4)
             )
            )
            (local.set $0
             (i32.add
              (local.get $0)
              (i32.const 4)
             )
            )
            (br $while-continue|0)
           )
          )
         )
         (i32.store16
          (local.get $1)
          (i32.or
           (i32.or
            (i32.shr_u
             (local.get $2)
             (i32.const 12)
            )
            (i32.const 224)
           )
           (i32.shl
            (i32.or
             (i32.and
              (i32.shr_u
               (local.get $2)
               (i32.const 6)
              )
              (i32.const 63)
             )
             (i32.const 128)
            )
            (i32.const 8)
           )
          )
         )
         (i32.store8 offset=2
          (local.get $1)
          (i32.or
           (i32.and
            (local.get $2)
            (i32.const 63)
           )
           (i32.const 128)
          )
         )
         (i32.add
          (local.get $1)
          (i32.const 3)
         )
        )
       )
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (if
   (local.get $3)
   (i32.store8
    (local.get $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.UTF8.encode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $2
   (call $~lib/rt/stub/__new
    (call $~lib/string/String.UTF8.byteLength
     (local.get $0)
     (local.get $1)
    )
    (i32.const 0)
   )
  )
  (call $~lib/string/String.UTF8.encodeUnsafe
   (local.get $0)
   (call $~lib/string/String#get:length
    (local.get $0)
   )
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $0 i32) (result i32)
  (i32.load offset=16
   (i32.sub
    (local.get $0)
    (i32.const 20)
   )
  )
 )
 (func $~lib/as-chain/system/assert (param $0 i32) (param $1 i32)
  (local $2 i32)
  (if
   (local.get $0)
   (return)
  )
  (local.set $0
   (call $~lib/string/String.UTF8.encode
    (local.get $1)
    (i32.const 1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $2
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 11)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.or
    (i32.lt_u
     (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
      (local.get $0)
     )
     (local.get $2)
    )
    (i32.gt_u
     (local.get $2)
     (i32.const 1073741820)
    )
   )
   (unreachable)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/env/eosio_assert
   (i32.const 0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/system/check (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/system/assert
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.le_u
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (local.get $1)
   )
   (return
    (i32.const -1)
   )
  )
  (i32.load16_u
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 8)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/system/check
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 7)
   )
   (i32.const 2320)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.gt_s
     (call $~lib/string/String#get:length
      (local.get $0)
     )
     (local.get $3)
    )
    (block
     (call $~lib/as-chain/system/check
      (select
       (i64.le_u
        (local.tee $4
         (i64.extend_i32_s
          (call $~lib/string/String#charCodeAt
           (local.get $0)
           (i32.sub
            (i32.sub
             (call $~lib/string/String#get:length
              (local.get $0)
             )
             (i32.const 1)
            )
            (local.get $3)
           )
          )
         )
        )
        (i64.const 90)
       )
       (i32.const 0)
       (i64.ge_u
        (local.get $4)
        (i64.const 65)
       )
      )
      (i32.const 2384)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.or
       (local.get $4)
       (i64.load
        (local.get $2)
       )
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $2)
      (i64.shl
       (i64.load
        (local.get $2)
       )
       (i64.const 8)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.or
    (i64.load
     (local.get $2)
    )
    (i64.extend_i32_u
     (i32.and
      (local.get $1)
      (i32.const 255)
     )
    )
   )
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Symbol#constructor
      (i32.const 2448)
      (i32.const 0)
     )
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/asset/ExtendedSymbol#constructor
   (local.get $1)
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Decoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 12)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (local.get $1)
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $~lib/util/memory/memmove|inlined.0
   (local.set $4
    (local.get $2)
   )
   (br_if $~lib/util/memory/memmove|inlined.0
    (i32.eq
     (local.get $0)
     (local.get $1)
    )
   )
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $1)
    )
    (loop $while-continue|0
     (if
      (local.get $4)
      (block
       (local.set $0
        (i32.add
         (local.tee $2
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.set $1
        (i32.add
         (local.tee $3
          (local.get $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (local.get $2)
        (i32.load8_u
         (local.get $3)
        )
       )
       (local.set $4
        (i32.sub
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (loop $while-continue|1
     (if
      (local.get $4)
      (block
       (i32.store8
        (i32.add
         (local.tee $4
          (i32.sub
           (local.get $4)
           (i32.const 1)
          )
         )
         (local.get $0)
        )
        (i32.load8_u
         (i32.add
          (local.get $1)
          (local.get $4)
         )
        )
       )
       (br $while-continue|1)
      )
     )
    )
   )
  )
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $5
   (local.tee $4
    (i32.shl
     (local.get $0)
     (local.get $1)
    )
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $4)
    (i32.const 0)
   )
  )
  (if
   (local.get $3)
   (call $~lib/memory/memory.copy
    (local.get $1)
    (local.get $3)
    (local.get $5)
   )
  )
  (local.set $3
   (local.get $1)
  )
  (i32.store
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (local.get $2)
    )
   )
   (local.get $3)
  )
  (i32.store offset=4
   (local.get $1)
   (local.get $3)
  )
  (i32.store offset=8
   (local.get $1)
   (local.get $4)
  )
  (i32.store offset=12
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/array/Array<u8>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (i32.load offset=12
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $3
     (call $~lib/rt/__newArray
      (local.tee $2
       (select
        (local.tee $2
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $2)
            (i32.const 0)
           )
           (select
            (local.tee $2
             (i32.add
              (local.get $2)
              (local.get $3)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $2)
             (i32.const 0)
            )
           )
           (select
            (local.get $2)
            (local.get $3)
            (i32.lt_s
             (local.get $2)
             (local.get $3)
            )
           )
          )
          (local.get $1)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
      )
      (i32.const 0)
      (i32.const 4)
      (i32.const 0)
     )
    )
   )
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/serializer/Decoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 2480)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpack (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (call $~lib/as-chain/serializer/Packer#unpack@virtual
    (local.get $1)
    (call $~lib/array/Array<u8>#slice
     (i32.load
      (local.get $0)
     )
     (i32.load offset=4
      (local.get $0)
     )
     (i32.load offset=12
      (i32.load
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/as-chain/asset/Symbol#isValid (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (block $__inlined_func$~lib/as-chain/asset/isValid (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (i64.load
         (local.get $0)
        )
        (i64.const 8)
       )
      )
     )
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/asset/isValid
     (i32.const 0)
     (i64.ne
      (i64.and
       (local.get $3)
       (i64.const -72057594037927936)
      )
      (i64.const 0)
     )
    )
   )
   (loop $for-loop|0
    (if
     (i32.le_s
      (local.get $2)
      (i32.const 6)
     )
     (block $for-break0
      (local.set $1
       (local.get $2)
      )
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i32.eqz
         (select
          (i32.le_u
           (local.tee $0
            (i32.wrap_i64
             (i64.and
              (local.get $3)
              (i64.const 255)
             )
            )
           )
           (i32.const 90)
          )
          (i32.const 0)
          (i32.ge_u
           (local.get $0)
           (i32.const 65)
          )
         )
        )
       )
      )
      (br_if $for-break0
       (i64.eqz
        (i64.and
         (local.tee $3
          (i64.shr_u
           (local.get $3)
           (i64.const 8)
          )
         )
         (i64.const 255)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (loop $for-loop|1
    (if
     (i32.le_s
      (local.get $1)
      (i32.const 6)
     )
     (block
      (drop
       (br_if $__inlined_func$~lib/as-chain/asset/isValid
        (i32.const 0)
        (i64.ne
         (i64.and
          (local.tee $3
           (i64.shr_u
            (local.get $3)
            (i64.const 8)
           )
          )
          (i64.const 255)
         )
         (i64.const 0)
        )
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
   (i32.const 1)
  )
 )
 (func $start:~lib/proton-tsc/allow/allow.utils~anonymous|1 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (i64.store
   (local.tee $2
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (i32.const 16)
      )
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (i64.store offset=8
   (local.get $2)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (local.set $0
   (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.tee $1
    (call $~lib/as-chain/serializer/Decoder#constructor
     (local.get $1)
    )
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load
     (local.get $0)
    )
   )
   (i32.const 2576)
  )
  (local.get $0)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (block $__inlined_func$~lib/string/String#concat
   (if
    (i32.eqz
     (local.tee $2
      (i32.add
       (local.tee $3
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $0)
         )
         (i32.const 1)
        )
       )
       (local.tee $4
        (i32.shl
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (i32.const 1)
        )
       )
      )
     )
    )
    (block
     (local.set $2
      (i32.const 2448)
     )
     (br $__inlined_func$~lib/string/String#concat)
    )
   )
   (call $~lib/memory/memory.copy
    (local.tee $2
     (call $~lib/rt/stub/__new
      (local.get $2)
      (i32.const 1)
     )
    )
    (local.get $0)
    (local.get $3)
   )
   (call $~lib/memory/memory.copy
    (i32.add
     (local.get $2)
     (local.get $3)
    )
    (local.get $1)
    (local.get $4)
   )
  )
  (local.get $2)
 )
 (func $~lib/staticarray/StaticArray<~lib/string/String>#join (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String> (result i32)
   (drop
    (br_if $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (i32.const 2448)
     (i32.lt_s
      (local.tee $3
       (i32.sub
        (i32.shr_u
         (i32.load offset=16
          (i32.sub
           (local.tee $1
            (local.get $0)
           )
           (i32.const 20)
          )
         )
         (i32.const 2)
        )
        (i32.const 1)
       )
      )
      (i32.const 0)
     )
    )
   )
   (if
    (i32.eqz
     (local.get $3)
    )
    (br $__inlined_func$~lib/util/string/joinReferenceArray<~lib/string/String>
     (if (result i32)
      (local.tee $0
       (i32.load
        (local.get $1)
       )
      )
      (local.get $0)
      (i32.const 2448)
     )
    )
   )
   (local.set $0
    (i32.const 2448)
   )
   (local.set $4
    (call $~lib/string/String#get:length
     (i32.const 2448)
    )
   )
   (loop $for-loop|0
    (if
     (i32.lt_s
      (local.get $2)
      (local.get $3)
     )
     (block
      (if
       (local.tee $5
        (i32.load
         (i32.add
          (local.get $1)
          (i32.shl
           (local.get $2)
           (i32.const 2)
          )
         )
        )
       )
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (local.get $5)
        )
       )
      )
      (if
       (local.get $4)
       (local.set $0
        (call $~lib/string/String.__concat
         (local.get $0)
         (i32.const 2448)
        )
       )
      )
      (local.set $2
       (i32.add
        (local.get $2)
        (i32.const 1)
       )
      )
      (br $for-loop|0)
     )
    )
   )
   (if (result i32)
    (local.tee $1
     (i32.load
      (i32.add
       (local.get $1)
       (i32.shl
        (local.get $3)
        (i32.const 2)
       )
      )
     )
    )
    (call $~lib/string/String.__concat
     (local.get $0)
     (local.get $1)
    )
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/S2N (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local.set $2
   (i32.le_s
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 13)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 2784)
   (i32.const 1)
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (local.get $2)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 2784)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i64.const 0)
     )
     (if
      (select
       (i32.le_s
        (local.get $1)
        (i32.const 12)
       )
       (i32.const 0)
       (i32.gt_s
        (call $~lib/string/String#get:length
         (local.get $0)
        )
        (local.get $1)
       )
      )
      (block
       (local.set $2
        (call $~lib/string/String#charCodeAt
         (local.get $0)
         (local.get $1)
        )
       )
       (global.set $~argumentsLength
        (i32.const 1)
       )
       (if
        (i64.eq
         (local.tee $3
          (i64.extend_i32_u
           (i32.and
            (call_indirect (type $i32_=>_i32)
             (local.get $2)
             (i32.load
              (i32.const 1056)
             )
            )
            (i32.const 65535)
           )
          )
         )
         (i64.const 65535)
        )
        (block
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 2864)
          (i32.const 1)
          (local.get $0)
         )
         (call $~lib/as-chain/system/check
          (i32.const 0)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 2864)
          )
         )
         (return
          (i64.const 0)
         )
        )
       )
      )
     )
     (local.set $4
      (i64.or
       (local.get $4)
       (select
        (i64.shl
         (i64.and
          (local.get $3)
          (i64.const 31)
         )
         (i64.sub
          (i64.const 64)
          (i64.mul
           (i64.extend_i32_s
            (local.tee $2
             (i32.add
              (local.get $1)
              (i32.const 1)
             )
            )
           )
           (i64.const 5)
          )
         )
        )
        (i64.and
         (local.get $3)
         (i64.const 15)
        )
        (i32.lt_s
         (local.get $1)
         (i32.const 12)
        )
       )
      )
     )
     (local.set $1
      (local.get $2)
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $4)
 )
 (func $~lib/array/Array<u8>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store8
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
   (local.get $2)
  )
 )
 (func $start:easyescrow.contract
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (global.set $~lib/rt/stub/offset
   (i32.const 11532)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/name/EMPTY_NAME
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 0)
  )
  (global.set $~lib/as-chain/mi/SAME_PAYER
   (local.get $0)
  )
  (local.set $4
   (call $~lib/as-chain/name/S2N
    (i32.const 2688)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $4)
  )
  (global.set $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT
   (local.get $0)
  )
  (local.set $0
   (i32.const 0)
  )
  (if
   (call $~lib/string/String#get:length
    (i32.const 2896)
   )
   (i32.store16
    (call $~lib/rt/stub/__new
     (i32.const 2)
     (i32.const 1)
    )
    (i32.load16_u
     (i32.const 2896)
    )
   )
  )
  (drop
   (call $~lib/string/String#charCodeAt
    (i32.const 2896)
    (i32.const 0)
   )
  )
  (local.set $5
   (i32.load offset=4
    (local.tee $3
     (call $~lib/array/Array<u8>#constructor
      (i32.const 256)
     )
    )
   )
  )
  (local.set $2
   (select
    (i32.const 0)
    (local.tee $1
     (i32.load offset=12
      (local.get $3)
     )
    )
    (i32.gt_s
     (local.get $1)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.gt_s
    (local.get $1)
    (local.get $2)
   )
   (call $~lib/memory/memory.fill
    (i32.add
     (local.get $2)
     (local.get $5)
    )
    (i32.const 255)
    (i32.sub
     (local.get $1)
     (local.get $2)
    )
   )
  )
  (global.set $~lib/proton-tsc/atomicassets/base58/BASE_MAP
   (local.get $3)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $0)
     (i32.const 58)
    )
    (block
     (if
      (i32.ne
       (i32.load8_u
        (i32.add
         (local.tee $1
          (call $~lib/string/String#charCodeAt
           (i32.const 2896)
           (local.get $0)
          )
         )
         (i32.load offset=4
          (global.get $~lib/proton-tsc/atomicassets/base58/BASE_MAP)
         )
        )
       )
       (i32.const 255)
      )
      (unreachable)
     )
     (call $~lib/array/Array<u8>#__uset
      (global.get $~lib/proton-tsc/atomicassets/base58/BASE_MAP)
      (local.get $1)
      (local.get $0)
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed (param $0 i32) (param $1 i32)
  (i32.store8 offset=4
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked (param $0 i32) (param $1 i32)
  (i32.store8 offset=5
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 20)
    )
   )
   (local.get $0)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946851309382000)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table (param $0 i32) (param $1 i64)
  (i64.store offset=16
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable (param $0 i32) (param $1 i32)
  (i32.store offset=20
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed (param $0 i32) (param $1 i32)
  (i32.store8 offset=12
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked (param $0 i32) (param $1 i32)
  (i32.store8 offset=13
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 14)
     (i32.const 28)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs (result i32)
  (local $0 i32)
  (block $4of4
   (block $1of4
    (block $outOfRange
     (br_table $1of4 $1of4 $4of4 $4of4 $4of4 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (local.set $0
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor
   (i64.const 0)
   (local.get $0)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946851634287920)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idxdb/IDXDB#constructor (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (block (result i32)
    (if
     (i32.eqz
      (local.get $0)
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 28)
       (i32.const 26)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $3)
  )
  (i32.store offset=24
   (local.get $0)
   (local.get $4)
  )
  (local.get $0)
 )
 (func $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  (i32.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 2)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 29)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
  )
  (local.set $8
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName)
  )
  (local.set $4
   (i64.and
    (i64.load
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $7
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 27)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $5
   (i64.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $7)
   (i32.const 0)
   (call $~lib/as-chain/idxdb/IDXDB#constructor
    (call $~lib/rt/stub/__new
     (i32.const 28)
     (i32.const 52)
    )
    (local.get $5)
    (local.get $6)
    (local.get $4)
    (i32.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 30)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $4
   (i64.load
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (local.set $6
   (i64.load
    (local.get $8)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 31)
    )
   )
   (local.get $4)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $5)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $6)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $7)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable (param $0 i32) (param $1 i32)
  (i32.store offset=24
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused (param $0 i32) (param $1 i32)
  (i32.store8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict (param $0 i32) (param $1 i32)
  (i32.store8 offset=1
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict (param $0 i32) (param $1 i32)
  (i32.store8 offset=2
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled (param $0 i32) (param $1 i32)
  (i32.store8 offset=3
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 6)
     (i32.const 32)
    )
   )
   (local.get $0)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
   (local.get $6)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
   (local.get $6)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
   (local.get $6)
   (local.get $3)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $6)
   (local.get $4)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $6)
   (local.get $5)
  )
  (local.get $6)
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 33)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 0)
    (i32.const 1)
    (i32.const 1)
    (i32.const 1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.const 3774946890198131584)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (i64.load
    (local.get $4)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3168)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 34)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 35)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton (param $0 i32) (param $1 i32)
  (i32.store offset=28
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $3of3
   (block $2of3
    (block $1of3
     (block $0of3
      (block $outOfRange
       (br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
        (global.get $~argumentsLength)
       )
      )
      (unreachable)
     )
     (local.set $0
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.set $3
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 3200)
     )
    )
   )
   (local.set $2
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 3)
     (i32.const 40)
     (i32.const 3232)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 36)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 4152997948076064768)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable (param $0 i32) (param $1 i32)
  (i32.store offset=32
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (block (result i32)
       (if
        (i32.eqz
         (block (result i32)
          (if
           (i32.eqz
            (local.get $0)
           )
           (local.set $0
            (call $~lib/rt/stub/__new
             (i32.const 36)
             (i32.const 17)
            )
           )
          )
          (local.get $0)
         )
        )
        (local.set $0
         (call $~lib/rt/stub/__new
          (i32.const 32)
          (i32.const 18)
         )
        )
       )
       (local.get $0)
      )
     )
     (local.set $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 19)
      )
     )
    )
    (local.get $0)
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 23)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (i32.const 0)
    (i32.const 0)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName)
  )
  (drop
   (i64.load
    (call $~lib/proton-tsc/allow/allow.tables/AllowedActor.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3136)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 24)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 25)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (local.get $2)
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
    (local.get $1)
    (local.get $1)
   )
  )
  (local.set $1
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $0)
   (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
    (local.get $1)
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 41)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $4
   (call $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName)
  )
  (drop
   (i64.load
    (call $~lib/proton-tsc/balance/balance.tables/Balance.get:tableName)
   )
  )
  (local.set $5
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3264)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 42)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $1)
   (i64.const -1)
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 43)
    )
   )
   (local.get $6)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $0)
   (local.get $2)
  )
  (local.get $0)
 )
 (func $escrow.tables/Escrow#set:deliverType (param $0 i32) (param $1 i32)
  (i32.store offset=36
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#set:expiry (param $0 i32) (param $1 i32)
  (i32.store offset=40
   (local.get $0)
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#constructor (param $0 i64) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (result i32)
  (local $10 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $10
    (call $~lib/rt/stub/__new
     (i32.const 44)
     (i32.const 44)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $10)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $10)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $10)
   (local.get $3)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $10)
   (local.get $4)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
   (local.get $10)
   (local.get $5)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $10)
   (local.get $6)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $10)
   (local.get $7)
  )
  (call $escrow.tables/Escrow#set:deliverType
   (local.get $10)
   (local.get $8)
  )
  (call $escrow.tables/Escrow#set:expiry
   (local.get $10)
   (local.get $9)
  )
  (local.get $10)
 )
 (func $escrow.tables/Escrow#constructor@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $10of10
   (block $7of10
    (block $6of10
     (block $5of10
      (block $4of10
       (block $3of10
        (block $2of10
         (block $outOfRange
          (br_table $2of10 $2of10 $2of10 $3of10 $4of10 $5of10 $6of10 $7of10 $10of10 $10of10 $10of10 $outOfRange
           (global.get $~argumentsLength)
          )
         )
         (unreachable)
        )
        (local.set $0
         (global.get $~lib/as-chain/name/EMPTY_NAME)
        )
       )
       (local.set $1
        (global.get $~lib/as-chain/name/EMPTY_NAME)
       )
      )
      (local.set $5
       (call $~lib/rt/__newArray
        (i32.const 0)
        (i32.const 2)
        (i32.const 39)
        (i32.const 3296)
       )
      )
     )
     (local.set $4
      (call $~lib/rt/__newArray
       (i32.const 0)
       (i32.const 3)
       (i32.const 40)
       (i32.const 3328)
      )
     )
    )
    (local.set $3
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 3360)
     )
    )
   )
   (local.set $2
    (call $~lib/rt/__newArray
     (i32.const 0)
     (i32.const 3)
     (i32.const 40)
     (i32.const 3392)
    )
   )
  )
  (call $escrow.tables/Escrow#constructor
   (i64.const 0)
   (i32.const 0)
   (local.get $0)
   (local.get $1)
   (local.get $5)
   (local.get $4)
   (local.get $3)
   (local.get $2)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $escrow.tables/Escrow.get:tableName (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6201872796205711360)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/idx64/IDX64#constructor (param $0 i64) (param $1 i64) (param $2 i64) (param $3 i32) (result i32)
  (call $~lib/as-chain/idxdb/IDXDB#constructor
   (call $~lib/rt/stub/__new
    (i32.const 28)
    (i32.const 53)
   )
   (local.get $0)
   (local.get $1)
   (local.get $2)
   (local.get $3)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 45)
    )
   )
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $4)
   (i64.const -1)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Escrow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
  (local.set $6
   (call $escrow.tables/Escrow.get:tableName)
  )
  (local.set $3
   (i64.and
    (i64.load
     (call $escrow.tables/Escrow.get:tableName)
    )
    (i64.const -16)
   )
  )
  (drop
   (i32.load offset=4
    (local.tee $5
     (call $~lib/rt/__newArray
      (i32.const 2)
      (i32.const 2)
      (i32.const 27)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 0)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (local.get $3)
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $5)
   (i32.const 1)
   (call $~lib/as-chain/idx64/IDX64#constructor
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
    (i64.add
     (local.get $3)
     (i64.const 1)
    )
    (i32.const 1)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 46)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $2)
   (i64.const -1)
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $6)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 47)
    )
   )
   (local.get $3)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (local.get $7)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $0)
   (local.get $8)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $2)
  )
  (local.get $4)
 )
 (func $escrow.tables/EscrowGlobal#constructor (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 48)
    )
   )
   (i64.const 0)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/readActionData (result i32)
  (local $0 i32)
  (local $1 i32)
  (drop
   (call $~lib/as-chain/env/read_action_data
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.tee $0
        (call $~lib/as-chain/env/action_data_size)
       )
      )
     )
    )
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u32> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u8> (param $0 i32) (result i32)
  (local $1 i32)
  (local.set $1
   (i32.load8_u
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackLength (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.or
     (local.get $1)
     (i32.shl
      (i32.and
       (local.tee $3
        (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
         (local.get $0)
        )
       )
       (i32.const 127)
      )
      (local.get $2)
     )
    )
   )
   (local.set $2
    (i32.add
     (local.get $2)
     (i32.const 7)
    )
   )
   (local.set $4
    (i32.add
     (local.get $4)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (i32.and
     (local.get $3)
     (i32.const 128)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 39)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/ExtendedAsset#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 37)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 38)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/asset/Asset#constructor@varargs (result i32)
  (local $0 i32)
  (block $2of2
   (block $1of2
    (block $outOfRange
     (br_table $1of2 $1of2 $2of2 $outOfRange
      (global.get $~argumentsLength)
     )
    )
    (unreachable)
   )
   (local.set $0
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2448)
     (i32.const 0)
    )
   )
  )
  (call $~lib/as-chain/asset/Asset#constructor
   (i64.const 0)
   (local.get $0)
  )
 )
 (func $~lib/as-chain/asset/ExtendedAsset#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (local.set $1
     (call $~lib/as-chain/asset/Asset#constructor@varargs)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $0
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $0)
    (i64.const 0)
   )
  )
  (call $~lib/as-chain/asset/ExtendedAsset#constructor
   (local.get $1)
   (local.get $0)
  )
 )
 (func $~lib/rt/stub/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.const 1073741804)
   )
   (unreachable)
  )
  (local.set $3
   (i32.add
    (local.get $1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (select
     (i32.eqz
      (i32.and
       (local.tee $0
        (i32.sub
         (local.get $0)
         (i32.const 16)
        )
       )
       (i32.const 15)
      )
     )
     (i32.const 0)
     (local.get $0)
    )
   )
   (unreachable)
  )
  (local.set $6
   (i32.eq
    (global.get $~lib/rt/stub/offset)
    (i32.add
     (local.get $0)
     (local.tee $4
      (i32.load
       (local.tee $5
        (i32.sub
         (local.get $0)
         (i32.const 4)
        )
       )
      )
     )
    )
   )
  )
  (local.set $2
   (i32.sub
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 19)
     )
     (i32.const -16)
    )
    (i32.const 4)
   )
  )
  (if
   (i32.gt_u
    (local.get $3)
    (local.get $4)
   )
   (if
    (local.get $6)
    (block
     (if
      (i32.gt_u
       (local.get $3)
       (i32.const 1073741820)
      )
      (unreachable)
     )
     (call $~lib/rt/stub/maybeGrowMemory
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
    (block
     (call $~lib/memory/memory.copy
      (local.tee $2
       (call $~lib/rt/stub/__alloc
        (select
         (local.get $2)
         (local.tee $3
          (i32.shl
           (local.get $4)
           (i32.const 1)
          )
         )
         (i32.gt_u
          (local.get $2)
          (local.get $3)
         )
        )
       )
      )
      (local.get $0)
      (local.get $4)
     )
     (local.set $0
      (local.get $2)
     )
    )
   )
   (if
    (local.get $6)
    (block
     (global.set $~lib/rt/stub/offset
      (i32.add
       (local.get $0)
       (local.get $2)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (i32.sub
    (local.get $0)
    (i32.const 4)
   )
   (local.get $1)
  )
  (i32.add
   (local.get $0)
   (i32.const 16)
  )
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (local.get $1)
    (i32.shr_u
     (local.tee $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.get $2)
    )
   )
   (block
    (if
     (i32.gt_u
      (local.get $1)
      (i32.shr_u
       (i32.const 1073741820)
       (local.get $2)
      )
     )
     (unreachable)
    )
    (local.set $1
     (i32.shl
      (select
       (local.get $1)
       (i32.const 8)
       (i32.gt_u
        (local.get $1)
        (i32.const 8)
       )
      )
      (local.get $2)
     )
    )
    (call $~lib/memory/memory.fill
     (i32.add
      (local.tee $2
       (call $~lib/rt/stub/__renew
        (local.tee $4
         (i32.load
          (local.get $0)
         )
        )
        (local.tee $1
         (select
          (local.tee $2
           (select
            (local.tee $2
             (i32.shl
              (local.get $3)
              (i32.const 1)
             )
            )
            (i32.const 1073741820)
            (i32.lt_u
             (local.get $2)
             (i32.const 1073741820)
            )
           )
          )
          (local.get $1)
          (i32.lt_u
           (local.get $1)
           (local.get $2)
          )
         )
        )
       )
      )
      (local.get $3)
     )
     (i32.const 0)
     (i32.sub
      (local.get $1)
      (local.get $3)
     )
    )
    (if
     (i32.ne
      (local.get $2)
      (local.get $4)
     )
     (block
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (i32.store offset=4
       (local.get $0)
       (local.get $2)
      )
     )
    )
    (i32.store offset=8
     (local.get $0)
     (local.get $1)
    )
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $0)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/array/Array<u64>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 40)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (select
        (local.get $0)
        (i32.const 8)
        (i32.gt_u
         (local.get $0)
         (i32.const 8)
        )
       )
       (i32.const 3)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $2
      (call $~lib/array/Array<u64>#constructor
       (local.tee $1
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $0)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
    (local.tee $1
     (i32.shl
      (local.get $1)
      (i32.const 3)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $easyescrow.contract/startescrowAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/requireAuth (param $0 i32)
  (call $~lib/as-chain/env/require_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary (param $0 i32) (param $1 i32)
  (i32.store8 offset=8
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 55)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load offset=4
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
     (local.tee $1
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
       (i32.const 0)
       (i32.const 0)
       (i32.const 0)
       (i32.const 1)
       (i32.const 1)
       (i32.const 1)
      )
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get (param $0 i32) (result i32)
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
      (i32.load offset=8
       (local.get $0)
      )
      (i64.load
       (local.get $0)
      )
     )
    )
   )
   (block
    (if
     (i32.eqz
      (local.tee $0
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (return
     (local.get $0)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
   (i32.const 0)
   (i32.const 0)
   (i32.const 0)
   (i32.const 1)
   (i32.const 1)
   (i32.const 1)
  )
 )
 (func $~lib/array/Array<u8>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i32.load8_u
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (local.get $1)
   )
  )
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (local.get $0)
    (local.tee $3
     (i32.add
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.shl
      (local.get $1)
      (i32.const 1)
     )
     (i32.const 1)
    )
   )
  )
  (loop $while-continue|0
   (if
    (i32.lt_u
     (local.get $0)
     (local.get $3)
    )
    (block $while-break|0
     (local.set $2
      (i32.load8_u
       (local.get $0)
      )
     )
     (local.set $0
      (i32.add
       (local.get $0)
       (i32.const 1)
      )
     )
     (if
      (i32.and
       (local.get $2)
       (i32.const 128)
      )
      (block
       (br_if $while-break|0
        (i32.eq
         (local.get $0)
         (local.get $3)
        )
       )
       (local.set $4
        (i32.and
         (i32.load8_u
          (local.get $0)
         )
         (i32.const 63)
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (if
        (i32.eq
         (i32.and
          (local.get $2)
          (i32.const 224)
         )
         (i32.const 192)
        )
        (i32.store16
         (local.get $1)
         (i32.or
          (local.get $4)
          (i32.shl
           (i32.and
            (local.get $2)
            (i32.const 31)
           )
           (i32.const 6)
          )
         )
        )
        (block
         (br_if $while-break|0
          (i32.eq
           (local.get $0)
           (local.get $3)
          )
         )
         (local.set $6
          (i32.and
           (i32.load8_u
            (local.get $0)
           )
           (i32.const 63)
          )
         )
         (local.set $0
          (i32.add
           (local.get $0)
           (i32.const 1)
          )
         )
         (if
          (i32.eq
           (i32.and
            (local.get $2)
            (i32.const 240)
           )
           (i32.const 224)
          )
          (local.set $2
           (i32.or
            (local.get $6)
            (i32.or
             (i32.shl
              (i32.and
               (local.get $2)
               (i32.const 15)
              )
              (i32.const 12)
             )
             (i32.shl
              (local.get $4)
              (i32.const 6)
             )
            )
           )
          )
          (block
           (br_if $while-break|0
            (i32.eq
             (local.get $0)
             (local.get $3)
            )
           )
           (local.set $2
            (i32.or
             (i32.and
              (i32.load8_u
               (local.get $0)
              )
              (i32.const 63)
             )
             (i32.or
              (i32.or
               (i32.shl
                (i32.and
                 (local.get $2)
                 (i32.const 7)
                )
                (i32.const 18)
               )
               (i32.shl
                (local.get $4)
                (i32.const 12)
               )
              )
              (i32.shl
               (local.get $6)
               (i32.const 6)
              )
             )
            )
           )
           (local.set $0
            (i32.add
             (local.get $0)
             (i32.const 1)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (local.get $2)
           (i32.const 65536)
          )
          (i32.store16
           (local.get $1)
           (local.get $2)
          )
          (block
           (i32.store
            (local.get $1)
            (i32.or
             (i32.or
              (i32.shr_u
               (local.tee $2
                (i32.sub
                 (local.get $2)
                 (i32.const 65536)
                )
               )
               (i32.const 10)
              )
              (i32.const 55296)
             )
             (i32.shl
              (i32.or
               (i32.and
                (local.get $2)
                (i32.const 1023)
               )
               (i32.const 56320)
              )
              (i32.const 16)
             )
            )
           )
           (local.set $1
            (i32.add
             (local.get $1)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (i32.store16
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 2)
      )
     )
     (br $while-continue|0)
    )
   )
  )
  (call $~lib/rt/stub/__renew
   (local.get $5)
   (i32.sub
    (local.get $1)
    (local.get $5)
   )
  )
 )
 (func $~lib/string/String.UTF8.decode (param $0 i32) (result i32)
  (call $~lib/string/String.UTF8.decodeUnsafe
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/name/N2S (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $2
   (call $~lib/array/Array<u8>#constructor
    (i32.const 13)
   )
  )
  (loop $for-loop|0
   (if
    (i32.le_s
     (local.get $1)
     (i32.const 12)
    )
    (block
     (local.set $3
      (i32.sub
       (i32.const 12)
       (local.get $1)
      )
     )
     (local.set $4
      (if (result i32)
       (local.get $1)
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 31)
         )
        )
       )
       (call $~lib/array/Array<u8>#__get
        (i32.const 1152)
        (i32.wrap_i64
         (i64.and
          (local.get $0)
          (i64.const 15)
         )
        )
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $3)
       (i32.load offset=12
        (local.get $2)
       )
      )
      (block
       (if
        (i32.lt_s
         (local.get $3)
         (i32.const 0)
        )
        (unreachable)
       )
       (call $~lib/array/ensureCapacity
        (local.get $2)
        (local.tee $5
         (i32.add
          (local.get $3)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/rt/common/OBJECT#set:rtId
        (local.get $2)
        (local.get $5)
       )
      )
     )
     (call $~lib/array/Array<u8>#__uset
      (local.get $2)
      (local.get $3)
      (local.get $4)
     )
     (local.set $0
      (select
       (i64.shr_u
        (local.get $0)
        (i64.const 5)
       )
       (i64.shr_u
        (local.get $0)
        (i64.const 4)
       )
       (local.get $1)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $1
   (i32.sub
    (i32.load offset=12
     (local.get $2)
    )
    (i32.const 1)
   )
  )
  (loop $for-loop|1
   (if
    (i32.ge_s
     (local.get $1)
     (i32.const 0)
    )
    (if
     (i32.eq
      (call $~lib/array/Array<u8>#__get
       (local.get $2)
       (local.get $1)
      )
      (i32.const 46)
     )
     (block
      (local.set $1
       (i32.sub
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $for-loop|1)
     )
    )
   )
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (call $~lib/array/Array<u8>#slice
     (local.get $2)
     (i32.const 0)
     (i32.add
      (local.get $1)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/name/Name#toString (param $0 i32) (result i32)
  (call $~lib/as-chain/name/N2S
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.eqz
    (i32.load8_u
     (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
      (i32.load offset=28
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 3616)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 3616)
   )
  )
 )
 (func $~lib/as-chain/action/isAccount (param $0 i32) (result i32)
  (call $~lib/as-chain/env/is_account
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/time/Microseconds#constructor (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 57)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/system/currentTimePoint (result i32)
  (local $0 i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/env/current_time)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 56)
    )
   )
   (call $~lib/as-chain/time/Microseconds#constructor
    (i64.const 0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/time/Microseconds#constructor
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/time/TimePoint#secSinceEpoch (param $0 i32) (result i32)
  (i32.wrap_i64
   (i64.div_s
    (i64.load
     (i32.load
      (local.get $0)
     )
    )
    (i64.const 1000000)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 58)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=4
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/balance/balance.tables/Balance#unpack
    (local.tee $0
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load
      (i32.add
       (i32.load offset=4
        (local.get $0)
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
    )
   )
   (unreachable)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/asset/Asset#isValid (param $0 i32) (result i32)
  (if (result i32)
   (if (result i32)
    (i64.ge_s
     (i64.load
      (local.get $0)
     )
     (i64.const -4611686018427387903)
    )
    (i64.le_s
     (i64.load
      (local.get $0)
     )
     (i64.const 4611686018427387903)
    )
    (i32.const 0)
   )
   (call $~lib/as-chain/asset/Symbol#isValid
    (i32.load offset=8
     (local.get $0)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol (param $0 i32) (result i32)
  (call $~lib/as-chain/asset/ExtendedSymbol#constructor
   (i32.load offset=8
    (i32.load
     (local.get $0)
    )
   )
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $3
   (i32.const -1)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $0)
     )
    )
    (block $for-break0
     (local.set $4
      (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
     (local.set $5
      (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
       (local.get $1)
      )
     )
     (if
      (if (result i32)
       (i64.eq
        (i64.load
         (i32.load
          (local.get $4)
         )
        )
        (i64.load
         (i32.load
          (local.get $5)
         )
        )
       )
       (i64.eq
        (i64.load
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i64.load
         (i32.load offset=4
          (local.get $5)
         )
        )
       )
       (i32.const 0)
      )
      (block
       (local.set $3
        (local.get $2)
       )
       (br $for-break0)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.get $3)
 )
 (func $~lib/as-chain/asset/Symbol.fromU64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 2448)
     (i32.const 0)
    )
   )
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/balance/balance.utils/substractToken (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (i32.load
     (local.get $1)
    )
   )
   (i32.const 4064)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (i32.load
      (local.get $1)
     )
    )
    (i64.const 0)
   )
   (i32.const 4112)
  )
  (call $~lib/as-chain/system/check
   (i32.ne
    (local.tee $2
     (call $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset
      (local.get $0)
      (local.get $1)
     )
    )
    (i32.const -1)
   )
   (i32.const 4192)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=4
      (local.tee $3
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (i32.const 4304)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $3
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 4368)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (i64.load
     (local.get $3)
    )
    (i64.load
     (local.get $4)
    )
   )
   (i32.const 4432)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=4
      (local.tee $3
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (local.get $0)
        (local.get $2)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=4
      (local.get $1)
     )
    )
   )
   (i32.const 4304)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=8
      (local.tee $4
       (i32.load
        (local.get $3)
       )
      )
     )
    )
    (i64.load
     (i32.load offset=8
      (local.tee $1
       (i32.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 4368)
  )
  (call $~lib/as-chain/system/check
   (i64.ge_s
    (local.tee $5
     (i64.sub
      (i64.load
       (local.get $4)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (i64.const -4611686018427387903)
   )
   (i32.const 4496)
  )
  (call $~lib/as-chain/system/check
   (i64.le_s
    (local.get $5)
    (i64.const 4611686018427387903)
   )
   (i32.const 4560)
  )
  (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
   (local.get $0)
   (local.get $2)
   (call $~lib/as-chain/asset/ExtendedAsset#constructor
    (call $~lib/as-chain/asset/Asset#constructor
     (local.get $5)
     (call $~lib/as-chain/asset/Symbol.fromU64
      (i64.load
       (i32.load offset=8
        (local.get $4)
       )
      )
     )
    )
    (i32.load offset=4
     (local.get $3)
    )
   )
  )
  (if
   (i64.eqz
    (i64.load
     (i32.load
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $0)
       (local.get $2)
      )
     )
    )
   )
   (block
    (call $~lib/memory/memory.copy
     (i32.load offset=4
      (call $~lib/rt/__newArray
       (local.tee $2
        (select
         (local.tee $2
          (select
           (i32.const 1)
           (local.tee $2
            (i32.sub
             (local.tee $3
              (i32.load offset=12
               (local.get $0)
              )
             )
             (local.tee $1
              (if (result i32)
               (i32.lt_s
                (local.get $2)
                (i32.const 0)
               )
               (select
                (local.tee $1
                 (i32.add
                  (local.get $2)
                  (local.get $3)
                 )
                )
                (i32.const 0)
                (i32.gt_s
                 (local.get $1)
                 (i32.const 0)
                )
               )
               (select
                (local.get $2)
                (local.get $3)
                (i32.lt_s
                 (local.get $2)
                 (local.get $3)
                )
               )
              )
             )
            )
           )
           (i32.gt_s
            (local.get $2)
            (i32.const 1)
           )
          )
         )
         (i32.const 0)
         (i32.gt_s
          (local.get $2)
          (i32.const 0)
         )
        )
       )
       (i32.const 2)
       (i32.const 39)
       (i32.const 0)
      )
     )
     (local.tee $6
      (i32.add
       (local.tee $4
        (i32.load offset=4
         (local.get $0)
        )
       )
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
     )
     (i32.shl
      (local.get $2)
      (i32.const 2)
     )
    )
    (if
     (i32.ne
      (local.get $3)
      (local.tee $1
       (i32.add
        (local.get $1)
        (local.get $2)
       )
      )
     )
     (call $~lib/memory/memory.copy
      (local.get $6)
      (i32.add
       (local.get $4)
       (i32.shl
        (local.get $1)
        (i32.const 2)
       )
      )
      (i32.shl
       (i32.sub
        (local.get $3)
        (local.get $1)
       )
       (i32.const 2)
      )
     )
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (i32.sub
      (local.get $3)
      (local.get $2)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<u64>#__get (param $0 i32) (param $1 i32) (result i64)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (i64.load
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  (select
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 10)
     )
     (i32.const 1)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 10000)
      )
      (i32.const 3)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 1000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 100)
    )
   )
   (select
    (i32.add
     (i32.ge_u
      (local.get $0)
      (i32.const 1000000)
     )
     (i32.const 6)
    )
    (i32.add
     (i32.add
      (i32.ge_u
       (local.get $0)
       (i32.const 1000000000)
      )
      (i32.const 8)
     )
     (i32.ge_u
      (local.get $0)
      (i32.const 100000000)
     )
    )
    (i32.lt_u
     (local.get $0)
     (i32.const 10000000)
    )
   )
   (i32.lt_u
    (local.get $0)
    (i32.const 100000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u32> (param $0 i32) (param $1 i32) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.rem_u
      (local.get $1)
      (i32.const 10)
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (local.tee $1
     (i32.div_u
      (local.get $1)
      (i32.const 10)
     )
    )
   )
  )
 )
 (func $~lib/util/number/decimalCount64High (param $0 i64) (result i32)
  (select
   (select
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000)
      )
      (i32.const 10)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000)
     )
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const 100000000000000)
      )
      (i32.const 13)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 1000000000000)
    )
   )
   (select
    (i32.add
     (i64.ge_u
      (local.get $0)
      (i64.const 10000000000000000)
     )
     (i32.const 16)
    )
    (i32.add
     (i32.add
      (i64.ge_u
       (local.get $0)
       (i64.const -8446744073709551616)
      )
      (i32.const 18)
     )
     (i64.ge_u
      (local.get $0)
      (i64.const 1000000000000000000)
     )
    )
    (i64.lt_u
     (local.get $0)
     (i64.const 100000000000000000)
    )
   )
   (i64.lt_u
    (local.get $0)
    (i64.const 1000000000000000)
   )
  )
 )
 (func $~lib/util/number/utoa_dec_simple<u64> (param $0 i32) (param $1 i64) (param $2 i32)
  (loop $do-continue|0
   (i32.store16
    (i32.add
     (local.get $0)
     (i32.shl
      (local.tee $2
       (i32.sub
        (local.get $2)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.add
     (i32.wrap_i64
      (i64.rem_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i32.const 48)
    )
   )
   (br_if $do-continue|0
    (i64.ne
     (local.tee $1
      (i64.div_u
       (local.get $1)
       (i64.const 10)
      )
     )
     (i64.const 0)
    )
   )
  )
 )
 (func $~lib/number/U64#toString (param $0 i64) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/util/number/utoa64
   (if
    (i64.eqz
     (local.get $0)
    )
    (block
     (local.set $1
      (i32.const 4784)
     )
     (br $__inlined_func$~lib/util/number/utoa64)
    )
   )
   (if
    (i64.le_u
     (local.get $0)
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $3
         (call $~lib/util/number/decimalCount32
          (local.tee $2
           (i32.wrap_i64
            (local.get $0)
           )
          )
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $3)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $2
         (call $~lib/util/number/decimalCount64High
          (local.get $0)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $0)
     (local.get $2)
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/proton-tsc/balance/balance.utils/substractNfts (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (block
     (local.set $3
      (i32.load offset=8
       (local.get $0)
      )
     )
     (local.set $7
      (call $~lib/array/Array<u64>#__get
       (local.get $1)
       (local.get $5)
      )
     )
     (local.set $2
      (i32.const 0)
     )
     (block $__inlined_func$~lib/array/Array<u64>#indexOf
      (if
       (select
        (i32.le_s
         (local.tee $4
          (i32.load offset=12
           (local.get $3)
          )
         )
         (i32.const 0)
        )
        (i32.const 1)
        (local.get $4)
       )
       (block
        (local.set $2
         (i32.const -1)
        )
        (br $__inlined_func$~lib/array/Array<u64>#indexOf)
       )
      )
      (local.set $3
       (i32.load offset=4
        (local.get $3)
       )
      )
      (loop $while-continue|0
       (if
        (i32.lt_s
         (local.get $2)
         (local.get $4)
        )
        (block
         (br_if $__inlined_func$~lib/array/Array<u64>#indexOf
          (i64.eq
           (local.get $7)
           (i64.load
            (i32.add
             (local.get $3)
             (i32.shl
              (local.get $2)
              (i32.const 3)
             )
            )
           )
          )
         )
         (local.set $2
          (i32.add
           (local.get $2)
           (i32.const 1)
          )
         )
         (br $while-continue|0)
        )
       )
      )
      (local.set $2
       (i32.const -1)
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4736)
      (i32.const 1)
      (call $~lib/number/U64#toString
       (call $~lib/array/Array<u64>#__get
        (local.get $1)
        (local.get $5)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 4736)
      (i32.const 3)
      (call $~lib/as-chain/name/Name#toString
       (i32.load
        (local.get $0)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (i32.ne
       (local.get $2)
       (i32.const -1)
      )
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 4736)
      )
     )
     (call $~lib/memory/memory.copy
      (i32.load offset=4
       (call $~lib/rt/__newArray
        (local.tee $4
         (select
          (local.tee $4
           (select
            (i32.const 1)
            (local.tee $4
             (i32.sub
              (local.tee $3
               (i32.load offset=12
                (local.tee $6
                 (i32.load offset=8
                  (local.get $0)
                 )
                )
               )
              )
              (local.tee $2
               (if (result i32)
                (i32.lt_s
                 (local.get $2)
                 (i32.const 0)
                )
                (select
                 (local.tee $2
                  (i32.add
                   (local.get $2)
                   (local.get $3)
                  )
                 )
                 (i32.const 0)
                 (i32.gt_s
                  (local.get $2)
                  (i32.const 0)
                 )
                )
                (select
                 (local.get $2)
                 (local.get $3)
                 (i32.lt_s
                  (local.get $2)
                  (local.get $3)
                 )
                )
               )
              )
             )
            )
            (i32.gt_s
             (local.get $4)
             (i32.const 1)
            )
           )
          )
          (i32.const 0)
          (i32.gt_s
           (local.get $4)
           (i32.const 0)
          )
         )
        )
        (i32.const 3)
        (i32.const 40)
        (i32.const 0)
       )
      )
      (local.tee $9
       (i32.add
        (local.tee $8
         (i32.load offset=4
          (local.get $6)
         )
        )
        (i32.shl
         (local.get $2)
         (i32.const 3)
        )
       )
      )
      (i32.shl
       (local.get $4)
       (i32.const 3)
      )
     )
     (if
      (i32.ne
       (local.get $3)
       (local.tee $2
        (i32.add
         (local.get $2)
         (local.get $4)
        )
       )
      )
      (call $~lib/memory/memory.copy
       (local.get $9)
       (i32.add
        (local.get $8)
        (i32.shl
         (local.get $2)
         (i32.const 3)
        )
       )
       (i32.shl
        (i32.sub
         (local.get $3)
         (local.get $2)
        )
        (i32.const 3)
       )
      )
     )
     (call $~lib/rt/common/OBJECT#set:rtId
      (local.get $6)
      (i32.sub
       (local.get $3)
       (local.get $4)
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue (param $0 i32) (result i64)
  (i64.load
   (i32.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#remove (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/env/db_remove_i64
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#isOk (param $0 i32) (result i32)
  (i32.ge_s
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 62)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (call $~lib/array/Array<u8>#constructor
    (local.get $0)
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/varint/calcPackedVarUint32Length (param $0 i32) (result i32)
  (local $1 i32)
  (loop $while-continue|0
   (local.set $1
    (i32.add
     (local.get $1)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.tee $0
     (i32.shr_u
      (local.get $0)
      (i32.const 7)
     )
    )
   )
  )
  (local.get $1)
 )
 (func $~lib/as-chain/serializer/Encoder#incPos (param $0 i32) (param $1 i32)
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (i32.add
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (if
   (i32.gt_u
    (i32.load offset=4
     (local.get $0)
    )
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 5328)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#pack (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $2
     (call $~lib/as-chain/serializer/Packer#pack@virtual
      (local.get $1)
     )
    )
   )
  )
  (if
   (i32.lt_u
    (i32.load offset=12
     (i32.load
      (local.get $0)
     )
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
   (call $~lib/as-chain/system/check
    (i32.const 0)
    (i32.const 5248)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $2)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u8> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 1)
  )
  (i32.store8
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packLength (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (loop $while-continue|0
   (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
    (local.get $0)
    (select
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $1)
        (i32.const 127)
       )
      )
      (i32.const 128)
     )
     (local.get $2)
     (local.tee $1
      (i32.shr_u
       (local.get $1)
       (i32.const 7)
      )
     )
    )
   )
   (local.set $3
    (i32.add
     (local.get $3)
     (i32.const 1)
    )
   )
   (br_if $while-continue|0
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (local.get $1)
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $0)
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $1)
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumberArray<u64> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (i32.load offset=12
    (local.get $1)
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $1)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (local.tee $1
    (i32.shl
     (i32.load offset=12
      (local.get $1)
     )
     (i32.const 3)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
    )
    (local.get $2)
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#getBytes (param $0 i32) (result i32)
  (call $~lib/array/Array<u8>#slice
   (i32.load
    (local.get $0)
   )
   (i32.const 0)
   (i32.load offset=4
    (local.get $0)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (i32.const 8)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (i32.load offset=4
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=8
          (local.get $0)
         )
        )
       )
       (local.get $2)
      )
      (i32.shl
       (i32.load offset=12
        (i32.load offset=8
         (local.get $0)
        )
       )
       (i32.const 3)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 61)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue (result i32)
  (call $~lib/as-chain/system/check
   (i32.const 0)
   (i32.const 5408)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $4)
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $3
   (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
    (local.get $1)
   )
  )
  (local.set $4
   (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.get $3)
    (i32.const 1424)
   )
  )
  (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#update
   (i32.load
    (local.get $0)
   )
   (local.get $4)
   (local.get $1)
   (local.get $2)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local.set $4
   (i32.load offset=32
    (local.get $0)
   )
  )
  (local.set $5
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 4032)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (local.get $1)
   )
  )
  (local.set $1
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 4032)
   )
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $6
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
      (i32.load
       (local.get $4)
      )
      (local.get $5)
     )
    )
   )
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get
      (i32.load
       (i32.load
        (local.get $4)
       )
      )
      (local.get $6)
     )
    )
   )
   (local.set $1
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
   )
  )
  (local.set $4
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (call $~lib/proton-tsc/balance/balance.utils/substractToken
      (i32.load offset=4
       (local.get $1)
      )
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $2)
       (local.get $4)
      )
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/proton-tsc/balance/balance.utils/substractNfts
   (local.get $1)
   (local.get $3)
  )
  (if
   (if (result i32)
    (i32.load offset=12
     (i32.load offset=8
      (local.get $1)
     )
    )
    (i32.const 0)
    (i32.eqz
     (i32.load offset=12
      (i32.load offset=4
       (local.get $1)
      )
     )
    )
   )
   (block
    (local.set $2
     (i32.load offset=32
      (local.get $0)
     )
    )
    (local.set $5
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (drop
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#requireFind
      (i32.load
       (local.get $2)
      )
      (local.get $5)
      (i32.const 1648)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (local.get $5)
       )
      )
     )
     (i32.const 4912)
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#remove
     (i32.load
      (local.get $1)
     )
     (local.get $3)
    )
    (loop $for-loop|00
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $3
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $0)
            )
            (local.get $5)
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $0)
         )
         (i32.load
          (local.get $3)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|00)
      )
     )
    )
    (if
     (i64.eq
      (local.get $5)
      (i64.sub
       (i64.load offset=8
        (local.get $2)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (i64.const -1)
     )
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update
    (i32.load offset=32
     (local.get $0)
    )
    (local.get $1)
    (global.get $~lib/as-chain/mi/SAME_PAYER)
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 63)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackNumber<u64> (param $0 i32) (result i64)
  (local $1 i64)
  (local.set $1
   (i64.load
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $0)
      )
     )
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (local.get $1)
 )
 (func $escrow.tables/EscrowGlobal#unpack (param $0 i32) (param $1 i32) (result i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $0
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (i32.load offset=4
   (local.get $0)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#getEx (result i32)
   (drop
    (i32.load
     (local.get $0)
    )
   )
   (drop
    (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/EscrowGlobal>#getEx
     (i32.const 0)
     (i32.eqz
      (local.tee $1
       (call $~lib/as-chain/env/db_get_i64
        (local.tee $0
         (i32.load offset=4
          (local.get $0)
         )
        )
        (i32.const 0)
        (i32.const 0)
       )
      )
     )
    )
   )
   (drop
    (call $~lib/as-chain/env/db_get_i64
     (local.get $0)
     (i32.load offset=4
      (local.tee $0
       (call $~lib/array/Array<u8>#constructor
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
   )
   (drop
    (call $escrow.tables/EscrowGlobal#unpack
     (local.tee $1
      (call $escrow.tables/EscrowGlobal#constructor)
     )
     (local.get $0)
    )
   )
   (local.get $1)
  )
 )
 (func $escrow.tables/EscrowGlobal#getPrimaryValue (result i64)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 6201872790059076880)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u64> (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 8)
  )
  (i64.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $escrow.tables/EscrowGlobal#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 8)
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $escrow.tables/EscrowGlobal#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (call $escrow.tables/EscrowGlobal#getPrimaryValue)
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i32.load offset=12
    (local.tee $2
     (call $escrow.tables/EscrowGlobal#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $6)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $7)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 64)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $escrow.tables/Escrow#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (drop
   (i32.load offset=12
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=16
    (local.get $0)
   )
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (i32.const 28)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (i32.load offset=20
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.add
     (i32.add
      (call $~lib/as-chain/varint/calcPackedVarUint32Length
       (i32.load offset=12
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
      (local.get $2)
     )
     (i32.shl
      (i32.load offset=12
       (i32.load offset=24
        (local.get $0)
       )
      )
      (i32.const 3)
     )
    )
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (i32.load offset=28
       (local.get $0)
      )
     )
    )
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=28
       (local.get $0)
      )
     )
    )
    (block
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (i32.load offset=28
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (i32.add
   (i32.add
    (i32.add
     (call $~lib/as-chain/varint/calcPackedVarUint32Length
      (i32.load offset=12
       (i32.load offset=32
        (local.get $0)
       )
      )
     )
     (local.get $2)
    )
    (i32.shl
     (i32.load offset=12
      (i32.load offset=32
       (local.get $0)
      )
     )
     (i32.const 3)
    )
   )
   (i32.const 8)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packNumber<u32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (i32.const 4)
  )
  (i32.store
   (i32.add
    (local.get $2)
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
   )
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $escrow.tables/Escrow#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=16
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=20
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=24
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $1)
   (i32.load offset=28
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=32
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $1)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/array/Array<u64>#__set (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (if
   (i32.ge_u
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (if
     (i32.lt_s
      (local.get $1)
      (i32.const 0)
     )
     (unreachable)
    )
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $3
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (i32.const 3)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $3)
    )
   )
  )
  (i64.store
   (i32.add
    (i32.load offset=4
     (local.get $0)
    )
    (i32.shl
     (local.get $1)
     (i32.const 3)
    )
   )
   (local.get $2)
  )
 )
 (func $~lib/as-chain/idxdb/newSecondaryValue_u64 (param $0 i64) (result i32)
  (local $1 i32)
  (call $~lib/array/Array<u64>#__set
   (local.tee $1
    (call $~lib/array/Array<u64>#constructor
     (i32.const 1)
    )
   )
   (i32.const 0)
   (local.get $0)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (block $case2|0
   (block $case1|0
    (if
     (local.get $1)
     (block
      (br_if $case1|0
       (i32.eq
        (local.get $1)
        (i32.const 1)
       )
      )
      (br $case2|0)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/newSecondaryValue_u64
      (i64.load
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (return
    (call $~lib/as-chain/idxdb/newSecondaryValue_u64
     (i64.load
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5472)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (call $~lib/as-chain/system/check
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (i32.load
       (local.get $0)
      )
      (local.tee $6
       (i64.load
        (local.get $1)
       )
      )
     )
    )
   )
   (i32.const 1200)
  )
  (local.set $7
   (i32.load
    (local.tee $5
     (i32.load
      (local.get $0)
     )
    )
   )
  )
  (local.set $4
   (i64.load
    (local.get $1)
   )
  )
  (local.set $8
   (i64.load
    (local.get $2)
   )
  )
  (local.set $10
   (i32.load offset=12
    (local.tee $9
     (call $escrow.tables/Escrow#pack
      (local.get $1)
     )
    )
   )
  )
  (drop
   (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#constructor
    (local.get $7)
    (call $~lib/as-chain/env/db_store_i64
     (i64.load offset=8
      (local.get $7)
     )
     (i64.load offset=16
      (local.get $7)
     )
     (local.get $8)
     (local.get $4)
     (i32.load offset=4
      (local.get $9)
     )
     (local.get $10)
    )
    (local.get $4)
    (i32.const 1)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $5)
      )
     )
    )
    (block
     (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (i32.load offset=4
        (local.get $5)
       )
       (local.get $3)
      )
      (i64.load
       (local.get $1)
      )
      (call $escrow.tables/Escrow#getSecondaryValue
       (local.get $1)
       (local.get $3)
      )
      (i64.load
       (local.get $2)
      )
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.tee $4
     (i64.load
      (local.get $1)
     )
    )
    (i64.load offset=8
     (local.get $5)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $5)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $easyescrow.contract/GetMsgInterface (result i32)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const -1267475983267528704)
  )
  (call $~lib/as-chain/asset/ExtendedAsset#constructor
   (call $~lib/as-chain/asset/Asset#constructor
    (i64.const 1)
    (call $~lib/as-chain/asset/Symbol#constructor
     (i32.const 5520)
     (i32.const 6)
    )
   )
   (local.get $0)
  )
 )
 (func $~lib/string/String#padStart (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local.set $4
   (i32.shl
    (call $~lib/string/String#get:length
     (local.get $0)
    )
    (i32.const 1)
   )
  )
  (if
   (select
    (i32.const 1)
    (i32.eqz
     (local.tee $3
      (i32.shl
       (call $~lib/string/String#get:length
        (i32.const 4784)
       )
       (i32.const 1)
      )
     )
    )
    (i32.gt_u
     (local.get $4)
     (local.tee $2
      (i32.shl
       (local.get $1)
       (i32.const 1)
      )
     )
    )
   )
   (return
    (local.get $0)
   )
  )
  (local.set $1
   (call $~lib/rt/stub/__new
    (local.get $2)
    (i32.const 1)
   )
  )
  (if
   (i32.gt_u
    (local.tee $2
     (i32.sub
      (local.get $2)
      (local.get $4)
     )
    )
    (local.get $3)
   )
   (block
    (local.set $7
     (i32.mul
      (local.tee $5
       (i32.div_u
        (i32.sub
         (local.get $2)
         (i32.const 2)
        )
        (local.get $3)
       )
      )
      (local.get $3)
     )
    )
    (local.set $5
     (i32.mul
      (local.get $3)
      (local.get $5)
     )
    )
    (loop $while-continue|0
     (if
      (i32.gt_u
       (local.get $5)
       (local.get $6)
      )
      (block
       (call $~lib/memory/memory.copy
        (i32.add
         (local.get $1)
         (local.get $6)
        )
        (i32.const 4784)
        (local.get $3)
       )
       (local.set $6
        (i32.add
         (local.get $3)
         (local.get $6)
        )
       )
       (br $while-continue|0)
      )
     )
    )
    (call $~lib/memory/memory.copy
     (i32.add
      (local.get $1)
      (local.get $7)
     )
     (i32.const 4784)
     (i32.sub
      (local.get $2)
      (local.get $7)
     )
    )
   )
   (call $~lib/memory/memory.copy
    (local.get $1)
    (i32.const 4784)
    (local.get $2)
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $1)
    (local.get $2)
   )
   (local.get $0)
   (local.get $4)
  )
  (local.get $1)
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local.set $3
   (call $~lib/string/String#get:length
    (local.get $0)
   )
  )
  (local.set $1
   (if (result i32)
    (i32.lt_s
     (local.get $1)
     (i32.const 0)
    )
    (select
     (local.tee $1
      (i32.add
       (local.get $1)
       (local.get $3)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (local.get $1)
      (i32.const 0)
     )
    )
    (select
     (local.get $1)
     (local.get $3)
     (i32.lt_s
      (local.get $1)
      (local.get $3)
     )
    )
   )
  )
  (if
   (i32.le_s
    (local.tee $2
     (i32.sub
      (if (result i32)
       (i32.lt_s
        (local.get $2)
        (i32.const 0)
       )
       (select
        (local.tee $2
         (i32.add
          (local.get $2)
          (local.get $3)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $2)
         (i32.const 0)
        )
       )
       (select
        (local.get $2)
        (local.get $3)
        (i32.lt_s
         (local.get $2)
         (local.get $3)
        )
       )
      )
      (local.get $1)
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 2448)
   )
  )
  (call $~lib/memory/memory.copy
   (local.tee $3
    (call $~lib/rt/stub/__new
     (local.tee $2
      (i32.shl
       (local.get $2)
       (i32.const 1)
      )
     )
     (i32.const 1)
    )
   )
   (i32.add
    (local.get $0)
    (i32.shl
     (local.get $1)
     (i32.const 1)
    )
   )
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (block (result i32)
    (if
     (i32.eqz
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 65)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 2)
      )
     )
    )
    (local.get $1)
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $0)
    (i32.const 1073741820)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $2
    (call $~lib/rt/stub/__new
     (local.get $0)
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $0)
  )
  (local.get $1)
 )
 (func $~lib/as-chain/asset/Symbol#getSymbolString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local.set $2
   (call $~lib/typedarray/Uint8Array#constructor
    (i32.const 7)
   )
  )
  (local.set $3
   (i64.load
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (i64.eqz
      (local.tee $3
       (i64.shr_u
        (local.get $3)
        (i64.const 8)
       )
      )
     )
    )
    (block
     (local.set $0
      (i32.wrap_i64
       (i64.and
        (local.get $3)
        (i64.const 255)
       )
      )
     )
     (if
      (i32.ge_u
       (local.get $1)
       (i32.load offset=8
        (local.get $2)
       )
      )
      (unreachable)
     )
     (i32.store8
      (i32.add
       (local.get $1)
       (i32.load offset=4
        (local.get $2)
       )
      )
      (local.get $0)
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $4
   (select
    (i32.const 0)
    (local.tee $0
     (i32.load offset=8
      (local.get $2)
     )
    )
    (i32.gt_s
     (local.get $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.load offset=4
    (local.tee $1
     (call $~lib/typedarray/Uint8Array#constructor
      (local.tee $0
       (select
        (local.tee $0
         (i32.sub
          (if (result i32)
           (i32.lt_s
            (local.get $1)
            (i32.const 0)
           )
           (select
            (local.tee $0
             (i32.add
              (local.get $0)
              (local.get $1)
             )
            )
            (i32.const 0)
            (i32.gt_s
             (local.get $0)
             (i32.const 0)
            )
           )
           (select
            (local.get $1)
            (local.get $0)
            (i32.gt_s
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 0)
        (i32.gt_s
         (local.get $0)
         (i32.const 0)
        )
       )
      )
     )
    )
   )
   (i32.add
    (local.get $4)
    (i32.load offset=4
     (local.get $2)
    )
   )
   (local.get $0)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/asset/Asset#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $3
   (i32.wrap_i64
    (i64.and
     (i64.load
      (i32.load offset=8
       (local.get $0)
      )
     )
     (i64.const 255)
    )
   )
  )
  (block $__inlined_func$~lib/util/number/itoa64
   (if
    (i64.eqz
     (local.tee $2
      (i64.load
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (i32.const 4784)
     )
     (br $__inlined_func$~lib/util/number/itoa64)
    )
   )
   (if
    (i64.le_u
     (local.tee $2
      (select
       (i64.sub
        (i64.const 0)
        (local.get $2)
       )
       (local.get $2)
       (local.tee $4
        (i32.wrap_i64
         (i64.shr_u
          (local.get $2)
          (i64.const 63)
         )
        )
       )
      )
     )
     (i64.const 4294967295)
    )
    (call $~lib/util/number/utoa_dec_simple<u32>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount32
           (local.tee $6
            (i32.wrap_i64
             (local.get $2)
            )
           )
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $6)
     (local.get $5)
    )
    (call $~lib/util/number/utoa_dec_simple<u64>
     (local.tee $1
      (call $~lib/rt/stub/__new
       (i32.shl
        (local.tee $5
         (i32.add
          (call $~lib/util/number/decimalCount64High
           (local.get $2)
          )
          (local.get $4)
         )
        )
        (i32.const 1)
       )
       (i32.const 1)
      )
     )
     (local.get $2)
     (local.get $5)
    )
   )
   (if
    (local.get $4)
    (i32.store16
     (local.get $1)
     (i32.const 45)
    )
   )
  )
  (local.set $1
   (call $~lib/string/String#padStart
    (local.get $1)
    (i32.and
     (i32.add
      (local.get $3)
      (i32.const 1)
     )
     (i32.const 255)
    )
   )
  )
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (if (result i32)
     (local.get $3)
     (call $~lib/string/String.__concat
      (call $~lib/string/String.__concat
       (call $~lib/string/String#slice
        (local.get $1)
        (i32.const 0)
        (i32.sub
         (call $~lib/string/String#get:length
          (local.get $1)
         )
         (local.get $3)
        )
       )
       (i32.const 5936)
      )
      (call $~lib/string/String#slice
       (local.get $1)
       (i32.sub
        (call $~lib/string/String#get:length
         (local.get $1)
        )
        (local.get $3)
       )
       (call $~lib/string/String#get:length
        (local.get $1)
       )
      )
     )
     (local.get $1)
    )
    (i32.const 5968)
   )
   (call $~lib/as-chain/asset/Symbol#getSymbolString
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/asset/ExtendedAsset#toString (param $0 i32) (result i32)
  (call $~lib/string/String.__concat
   (call $~lib/string/String.__concat
    (call $~lib/as-chain/asset/Asset#toString
     (i32.load
      (local.get $0)
     )
    )
    (i32.const 6000)
   )
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 68)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/action/PermissionLevel#constructor@varargs (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i64)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $outOfRange
      (br_table $0of2 $1of2 $2of2 $outOfRange
       (global.get $~argumentsLength)
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 8)
       (i32.const 5)
      )
     )
     (i64.const 0)
    )
    (call $~lib/as-chain/name/Name#set:N
     (local.get $0)
     (i64.const 0)
    )
   )
   (local.set $2
    (call $~lib/as-chain/name/S2N
     (i32.const 6656)
    )
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.tee $1
     (call $~lib/rt/stub/__new
      (i32.const 8)
      (i32.const 5)
     )
    )
    (i64.const 0)
   )
   (call $~lib/as-chain/name/Name#set:N
    (local.get $1)
    (local.get $2)
   )
  )
  (call $~lib/as-chain/action/PermissionLevel#constructor
   (local.get $0)
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 66)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/action/Action#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 71)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/utils/Utils.calcPackedStringLength (param $0 i32) (result i32)
  (i32.add
   (call $~lib/as-chain/varint/calcPackedVarUint32Length
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.tee $0
      (call $~lib/string/String.UTF8.encode
       (local.get $0)
       (i32.const 0)
      )
     )
    )
   )
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packString (param $0 i32) (param $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.tee $1
     (call $~lib/string/String.UTF8.encode
      (local.get $1)
      (i32.const 0)
     )
    )
   )
  )
  (local.set $2
   (i32.add
    (i32.load offset=4
     (i32.load
      (local.get $0)
     )
    )
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $0)
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (local.get $2)
    (local.get $1)
    (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     (local.get $1)
    )
   )
  )
  (drop
   (call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=4
        (local.get $0)
       )
      )
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.add
       (call $~lib/as-chain/utils/Utils.calcPackedStringLength
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 32)
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Encoder#packName (param $0 i32) (param $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $0)
   (i64.load
    (local.get $1)
   )
  )
 )
 (func $~lib/as-chain/action/Action#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (i32.add
         (call $~lib/as-chain/varint/calcPackedVarUint32Length
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
         )
         (i32.shl
          (i32.load offset=12
           (i32.load offset=8
            (local.get $0)
           )
          )
          (i32.const 4)
         )
        )
        (i32.const 16)
       )
       (call $~lib/as-chain/varint/calcPackedVarUint32Length
        (i32.load offset=12
         (i32.load offset=12
          (local.get $0)
         )
        )
       )
      )
      (i32.load offset=12
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packName
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (i32.load offset=8
     (local.get $0)
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $2)
     (i32.load offset=12
      (i32.load offset=8
       (local.get $0)
      )
     )
    )
    (block
     (call $~lib/as-chain/serializer/Encoder#pack
      (local.get $1)
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (i32.load offset=8
        (local.get $0)
       )
       (local.get $2)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packLength
   (local.get $1)
   (i32.load offset=12
    (local.tee $0
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
  (local.set $2
   (i32.load offset=4
    (local.get $0)
   )
  )
  (local.set $3
   (i32.load offset=4
    (local.get $1)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#incPos
   (local.get $1)
   (local.tee $0
    (i32.load offset=12
     (local.get $0)
    )
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.add
     (local.get $3)
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
    )
    (local.get $2)
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/Action#send (param $0 i32)
  (local $1 i32)
  (local.set $1
   (i32.load offset=12
    (local.tee $0
     (call $~lib/as-chain/action/Action#pack
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/env/send_inline
   (i32.load offset=4
    (local.get $0)
   )
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 72)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack (param $0 i32) (result i32)
  (local $1 i32)
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (drop
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (i32.add
       (i32.add
        (call $~lib/as-chain/varint/calcPackedVarUint32Length
         (i32.load offset=12
          (i32.load offset=8
           (local.get $0)
          )
         )
        )
        (i32.const 16)
       )
       (i32.shl
        (i32.load offset=12
         (i32.load offset=8
          (local.get $0)
         )
        )
        (i32.const 3)
       )
      )
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local.set $8
   (i32.load offset=12
    (local.get $0)
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $7)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (local.set $9
      (i32.load offset=4
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (local.get $2)
        (local.get $7)
       )
      )
     )
     (local.set $11
      (i32.load
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (local.get $2)
        (local.get $7)
       )
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.const 4)
        (i32.const 67)
       )
      )
      (i32.const 0)
     )
     (local.set $10
      (call $~lib/as-chain/name/S2N
       (i32.const 6608)
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $6
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $6)
      (local.get $10)
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.get $5)
      (local.get $6)
     )
     (global.set $~argumentsLength
      (i32.const 1)
     )
     (local.set $6
      (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
       (local.get $8)
      )
     )
     (local.set $12
      (i32.load
       (local.get $5)
      )
     )
     (call $~lib/rt/common/BLOCK#set:mmInfo
      (local.tee $5
       (call $~lib/rt/stub/__new
        (i32.const 12)
        (i32.const 69)
       )
      )
      (local.get $12)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo
      (local.get $5)
      (local.get $9)
     )
     (call $~lib/rt/common/OBJECT#set:gcInfo2
      (local.get $5)
      (local.get $6)
     )
     (local.set $9
      (call $~lib/proton-tsc/token/token.inline/Transfer#constructor
       (local.get $8)
       (local.get $1)
       (local.get $11)
       (local.get $4)
      )
     )
     (drop
      (i32.load offset=4
       (local.tee $6
        (call $~lib/rt/__newArray
         (i32.const 1)
         (i32.const 2)
         (i32.const 70)
         (i32.const 0)
        )
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
      (local.get $6)
      (i32.const 0)
      (i32.load offset=8
       (local.get $5)
      )
     )
     (call $~lib/as-chain/action/Action#send
      (call $~lib/as-chain/action/Action#constructor
       (i32.load offset=4
        (local.get $5)
       )
       (i32.load
        (local.get $5)
       )
       (local.get $6)
       (call $~lib/proton-tsc/token/token.inline/Transfer#pack
        (local.get $9)
       )
      )
     )
     (local.set $7
      (i32.add
       (local.get $7)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (local.set $2
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 73)
    )
   )
   (i32.const 0)
  )
  (local.set $10
   (call $~lib/as-chain/name/S2N
    (i32.const 6608)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $5
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $5)
   (local.get $10)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $5)
  )
  (if
   (i32.gt_s
    (i32.load offset=12
     (local.get $3)
    )
    (i32.const 0)
   )
   (block
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $5
     (global.get $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT)
    )
    (local.set $7
     (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
      (local.get $2)
     )
    )
    (local.set $8
     (i32.load
      (local.get $0)
     )
    )
    (call $~lib/rt/common/BLOCK#set:mmInfo
     (local.tee $0
      (call $~lib/rt/stub/__new
       (i32.const 12)
       (i32.const 74)
      )
     )
     (local.get $8)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo
     (local.get $0)
     (local.get $5)
    )
    (call $~lib/rt/common/OBJECT#set:gcInfo2
     (local.get $0)
     (local.get $7)
    )
    (local.set $2
     (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor
      (local.get $2)
      (local.get $1)
      (local.get $3)
      (local.get $4)
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $1
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 70)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $1)
     (i32.const 0)
     (i32.load offset=8
      (local.get $0)
     )
    )
    (call $~lib/as-chain/action/Action#send
     (call $~lib/as-chain/action/Action#constructor
      (i32.load offset=4
       (local.get $0)
      )
      (i32.load
       (local.get $0)
      )
      (local.get $1)
      (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack
       (local.get $2)
      )
     )
    )
   )
  )
 )
 (func $escrow.inline/LogEscrow#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.add
      (call $escrow.tables/Escrow#getSize
       (i32.load
        (local.get $0)
       )
      )
      (call $~lib/as-chain/utils/Utils.calcPackedStringLength
       (i32.load offset=4
        (local.get $0)
       )
      )
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packString
   (local.get $1)
   (i32.load offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $escrow.inline/sendLogEscrow (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 4)
     (i32.const 76)
    )
   )
   (i32.const 0)
  )
  (local.set $5
   (call $~lib/as-chain/name/S2N
    (i32.const 6688)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $4)
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (local.set $4
   (call $~lib/as-chain/action/PermissionLevel#constructor@varargs
    (local.get $0)
   )
  )
  (local.set $6
   (i32.load
    (local.get $3)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 77)
    )
   )
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 75)
    )
   )
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (drop
   (i32.load offset=4
    (local.tee $1
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 70)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $1)
   (i32.const 0)
   (i32.load offset=8
    (local.get $3)
   )
  )
  (call $~lib/as-chain/action/Action#send
   (call $~lib/as-chain/action/Action#constructor
    (i32.load offset=4
     (local.get $3)
    )
    (i32.load
     (local.get $3)
    )
    (local.get $1)
    (call $escrow.inline/LogEscrow#pack
     (local.get $0)
    )
   )
  )
 )
 (func $easyescrow.contract/EscrowContract#startescrow (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i64)
  (local $18 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.eq
     (i64.load
      (local.get $3)
     )
     (i64.load
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (i32.const 1)
    (call $~lib/as-chain/action/isAccount
     (local.get $3)
    )
   )
   (i32.const 3648)
  )
  (if
   (i32.eq
    (local.get $1)
    (i32.const 2)
   )
   (call $~lib/as-chain/system/check
    (i32.lt_u
     (call $~lib/as-chain/time/TimePoint#secSinceEpoch
      (call $~lib/as-chain/system/currentTimePoint)
     )
     (local.get $9)
    )
    (i32.const 3744)
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (if (result i32)
     (if (result i32)
      (i32.load offset=12
       (local.get $4)
      )
      (i32.const 1)
      (i32.load offset=12
       (local.get $5)
      )
     )
     (i32.const 1)
     (i32.load offset=12
      (local.get $6)
     )
    )
    (i32.const 1)
    (i32.load offset=12
     (local.get $7)
    )
   )
   (i32.const 3824)
  )
  (if
   (select
    (i32.ne
     (local.get $1)
     (i32.const 4)
    )
    (i32.const 0)
    (i32.ne
     (local.get $1)
     (i32.const 3)
    )
   )
   (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
    (local.get $0)
    (local.get $2)
    (local.get $4)
    (local.get $5)
   )
  )
  (block $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<escrow.tables/EscrowGlobal>#get
   (if
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.tee $11
      (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find
       (i32.load offset=8
        (local.tee $11
         (i32.load offset=40
          (local.get $0)
         )
        )
       )
       (i64.load
        (local.get $11)
       )
      )
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $12
        (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#getValue
         (local.get $11)
        )
       )
      )
      (unreachable)
     )
     (br $__inlined_func$~lib/proton-tsc/modules/store/singleton/Singleton<escrow.tables/EscrowGlobal>#get)
    )
   )
   (local.set $12
    (call $escrow.tables/EscrowGlobal#constructor)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $12)
   (i64.add
    (local.tee $15
     (i64.load
      (local.get $12)
     )
    )
    (i64.const 1)
   )
  )
  (local.set $11
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $13
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#find
      (i32.load offset=8
       (local.tee $10
        (i32.load offset=40
         (local.get $0)
        )
       )
      )
      (i64.load
       (local.get $10)
      )
     )
    )
   )
   (call $~lib/as-chain/mi/MultiIndex<escrow.tables/EscrowGlobal>#update
    (i32.load offset=8
     (local.get $10)
    )
    (local.get $13)
    (local.get $12)
    (local.get $11)
   )
   (block
    (local.set $13
     (i32.const 0)
    )
    (local.set $16
     (i32.load
      (local.tee $10
       (i32.load offset=8
        (local.get $10)
       )
      )
     )
    )
    (local.set $14
     (call $escrow.tables/EscrowGlobal#getPrimaryValue)
    )
    (local.set $17
     (i64.load
      (local.get $11)
     )
    )
    (local.set $18
     (i32.load offset=12
      (local.tee $12
       (call $escrow.tables/EscrowGlobal#pack
        (local.get $12)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/EscrowGlobal>#constructor
      (local.get $16)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $16)
       )
       (i64.load offset=16
        (local.get $16)
       )
       (local.get $17)
       (local.get $14)
       (i32.load offset=4
        (local.get $12)
       )
       (local.get $18)
      )
      (local.get $14)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $13)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $10)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
         (i32.load offset=4
          (local.get $10)
         )
         (local.get $13)
        )
        (call $escrow.tables/EscrowGlobal#getPrimaryValue)
        (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
        (i64.load
         (local.get $11)
        )
       )
       (local.set $13
        (i32.add
         (local.get $13)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $14
       (call $escrow.tables/EscrowGlobal#getPrimaryValue)
      )
      (i64.load offset=8
       (local.get $10)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $10)
      (select
       (i64.const -2)
       (i64.add
        (local.get $14)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $14)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
  (local.set $5
   (call $escrow.tables/Escrow#constructor
    (local.get $15)
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
    (local.get $8)
    (local.get $9)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $5)
   (i32.load offset=12
    (local.get $0)
   )
  )
  (if
   (select
    (i32.const 1)
    (i32.eq
     (local.get $1)
     (i32.const 4)
    )
    (select
     (i32.const 1)
     (i32.eq
      (local.get $1)
      (i32.const 3)
     )
     (i32.eq
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (block
    (local.set $7
     (call $easyescrow.contract/GetMsgInterface)
    )
    (local.set $1
     (if (result i32)
      (i32.eq
       (local.get $1)
       (i32.const 1)
      )
      (block (result i32)
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5872)
        (i32.const 1)
        (call $~lib/as-chain/name/Name#toString
         (local.get $2)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5872)
        (i32.const 3)
        (call $~lib/as-chain/asset/ExtendedAsset#toString
         (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
          (local.get $4)
          (i32.const 0)
         )
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5872)
        (i32.const 5)
        (call $~lib/as-chain/asset/ExtendedAsset#toString
         (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
          (local.get $6)
          (i32.const 0)
         )
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5872)
        (i32.const 7)
        (call $~lib/number/U64#toString
         (local.get $15)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
        (i32.const 5872)
        (i32.const 9)
        (call $~lib/as-chain/name/Name#toString
         (local.get $2)
        )
       )
       (call $~lib/staticarray/StaticArray<~lib/string/String>#join
        (i32.const 5872)
       )
      )
      (if (result i32)
       (i32.eq
        (local.get $1)
        (i32.const 3)
       )
       (block (result i32)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         (i32.const 6256)
         (i32.const 1)
         (call $~lib/as-chain/name/Name#toString
          (local.get $2)
         )
        )
        (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
         (i32.const 6256)
         (i32.const 3)
         (call $~lib/number/U64#toString
          (local.get $15)
         )
        )
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 6256)
        )
       )
       (if (result i32)
        (i32.eq
         (local.get $1)
         (i32.const 4)
        )
        (block (result i32)
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 6528)
          (i32.const 1)
          (call $~lib/as-chain/name/Name#toString
           (local.get $2)
          )
         )
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 6528)
          (i32.const 3)
          (call $~lib/number/U64#toString
           (local.get $15)
          )
         )
         (call $~lib/staticarray/StaticArray<~lib/string/String>#join
          (i32.const 6528)
         )
        )
        (i32.const 2448)
       )
      )
     )
    )
    (drop
     (i32.load offset=4
      (local.tee $2
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 39)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $2)
     (i32.const 0)
     (local.get $7)
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
     (local.get $0)
     (local.get $3)
     (local.get $2)
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 3)
      (i32.const 40)
      (i32.const 6576)
     )
     (local.get $1)
    )
   )
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $5)
   (i32.const 3040)
  )
 )
 (func $easyescrow.contract/fillescrowAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $escrow.tables/Escrow#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=20
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=28
       (local.get $0)
      )
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $escrow.tables/Escrow#set:deliverType
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $escrow.tables/Escrow#set:expiry
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/Escrow#unpack
    (local.tee $0
     (call $escrow.tables/Escrow#constructor@varargs
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $3
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (i32.load
       (local.get $0)
      )
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#get (result i32)
   (if
    (local.tee $0
     (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
    (br $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#get
     (local.get $0)
    )
   )
   (global.set $~argumentsLength
    (i32.const 0)
   )
   (call $escrow.tables/Escrow#constructor@varargs
    (global.get $~lib/as-chain/name/EMPTY_NAME)
    (global.get $~lib/as-chain/name/EMPTY_NAME)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (drop
   (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind
    (i32.load
     (local.get $0)
    )
    (local.tee $3
     (i64.load
      (local.get $1)
     )
    )
    (i32.const 1648)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $4
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
      (local.get $3)
     )
    )
   )
   (i32.const 4912)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#remove
   (i32.load
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
    )
    (block
     (if
      (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
       (i32.load
        (local.tee $4
         (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
          (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
           (i32.load offset=4
            (local.get $2)
           )
           (local.get $1)
          )
          (local.get $3)
         )
        )
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i32.load
        (local.get $4)
       )
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.eq
    (local.get $3)
    (i64.sub
     (i64.load offset=8
      (local.get $0)
     )
     (i64.const 1)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (i64.const -1)
   )
  )
 )
 (func $easyescrow.contract/EscrowContract#fillescrow (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (local.set $3
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 6848)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (if
   (i64.eq
    (i64.load
     (i32.load offset=16
      (local.tee $3
       (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
        (local.get $3)
        (local.get $2)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 6848)
        )
       )
      )
     )
    )
    (i64.load
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
   (call $~lib/rt/common/OBJECT#set:rtSize
    (local.get $3)
    (local.get $1)
   )
  )
  (if
   (i32.eq
    (i32.load offset=8
     (local.get $3)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/as-chain/action/requireAuth
     (local.get $1)
    )
    (local.set $1
     (i64.eq
      (i64.load
       (i32.load offset=16
        (local.get $3)
       )
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 6976)
     (i32.const 1)
     (call $~lib/as-chain/name/Name#toString
      (i32.load offset=16
       (local.get $3)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $1)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 6976)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
     (local.get $0)
     (i32.load offset=16
      (local.get $3)
     )
     (i32.load offset=28
      (local.get $3)
     )
     (i32.load offset=32
      (local.get $3)
     )
    )
    (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
     (i32.load offset=36
      (local.get $0)
     )
     (local.get $3)
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 7104)
     (i32.const 1)
     (call $~lib/number/U64#toString
      (local.get $2)
     )
    )
    (local.set $1
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 7104)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
     (local.get $0)
     (i32.load offset=12
      (local.get $3)
     )
     (i32.load offset=28
      (local.get $3)
     )
     (i32.load offset=32
      (local.get $3)
     )
     (local.get $1)
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
     (local.get $0)
     (i32.load offset=16
      (local.get $3)
     )
     (i32.load offset=20
      (local.get $3)
     )
     (i32.load offset=24
      (local.get $3)
     )
     (local.get $1)
    )
   )
   (if
    (i32.eq
     (i32.load offset=8
      (local.get $3)
     )
     (i32.const 2)
    )
    (block
     (call $~lib/as-chain/action/requireAuth
      (i32.load
       (local.get $0)
      )
     )
     (call $~lib/as-chain/system/check
      (if (result i32)
       (i32.le_u
        (i32.sub
         (call $~lib/as-chain/time/TimePoint#secSinceEpoch
          (call $~lib/as-chain/system/currentTimePoint)
         )
         (i32.const 300)
        )
        (i32.load offset=40
         (local.get $3)
        )
       )
       (i32.le_u
        (i32.load offset=40
         (local.get $3)
        )
        (i32.add
         (call $~lib/as-chain/time/TimePoint#secSinceEpoch
          (call $~lib/as-chain/system/currentTimePoint)
         )
         (i32.const 300)
        )
       )
       (i32.const 0)
      )
      (i32.const 7136)
     )
     (local.set $1
      (i64.eq
       (i64.load
        (i32.load offset=12
         (local.get $3)
        )
       )
       (i64.load
        (local.get $1)
       )
      )
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 7248)
      (i32.const 1)
      (call $~lib/as-chain/name/Name#toString
       (i32.load offset=12
        (local.get $3)
       )
      )
     )
     (call $~lib/as-chain/system/check
      (local.get $1)
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 7248)
      )
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
      (i32.load offset=36
       (local.get $0)
      )
      (local.get $3)
     )
     (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
      (i32.const 7328)
      (i32.const 1)
      (call $~lib/as-chain/name/Name#toString
       (i32.load offset=12
        (local.get $3)
       )
      )
     )
     (local.set $1
      (call $~lib/staticarray/StaticArray<~lib/string/String>#join
       (i32.const 7328)
      )
     )
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
      (local.get $0)
      (i32.load offset=16
       (local.get $3)
      )
      (i32.load offset=20
       (local.get $3)
      )
      (i32.load offset=24
       (local.get $3)
      )
      (local.get $1)
     )
    )
    (if
     (if (result i32)
      (i32.eq
       (i32.load offset=8
        (local.get $3)
       )
       (i32.const 3)
      )
      (i32.const 1)
      (i32.eq
       (i32.load offset=8
        (local.get $3)
       )
       (i32.const 4)
      )
     )
     (block
      (call $~lib/as-chain/action/requireAuth
       (local.get $1)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
       (local.get $0)
       (i32.load offset=12
        (local.get $3)
       )
       (i32.load offset=20
        (local.get $3)
       )
       (i32.load offset=24
        (local.get $3)
       )
      )
      (local.set $1
       (i64.eq
        (i64.load
         (i32.load offset=12
          (local.get $3)
         )
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
       (i32.const 7360)
       (i32.const 1)
       (call $~lib/as-chain/name/Name#toString
        (i32.load offset=12
         (local.get $3)
        )
       )
      )
      (call $~lib/as-chain/system/check
       (local.get $1)
       (call $~lib/staticarray/StaticArray<~lib/string/String>#join
        (i32.const 7360)
       )
      )
      (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
       (i32.load offset=36
        (local.get $0)
       )
       (local.get $3)
      )
      (local.set $1
       (if (result i32)
        (i32.eq
         (i32.load offset=8
          (local.get $3)
         )
         (i32.const 3)
        )
        (block (result i32)
         (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
          (i32.const 7488)
          (i32.const 1)
          (call $~lib/number/U64#toString
           (i64.load
            (local.get $3)
           )
          )
         )
         (call $~lib/staticarray/StaticArray<~lib/string/String>#join
          (i32.const 7488)
         )
        )
        (if (result i32)
         (i32.eq
          (i32.load offset=8
           (local.get $3)
          )
          (i32.const 4)
         )
         (block (result i32)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
           (i32.const 7616)
           (i32.const 1)
           (call $~lib/number/U64#toString
            (i64.load
             (local.get $3)
            )
           )
          )
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 7616)
          )
         )
         (i32.const 2448)
        )
       )
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
       (local.get $0)
       (i32.load offset=16
        (local.get $3)
       )
       (i32.load offset=20
        (local.get $3)
       )
       (i32.load offset=24
        (local.get $3)
       )
       (local.get $1)
      )
     )
    )
   )
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.const 3072)
  )
 )
 (func $easyescrow.contract/EscrowContract#cancelescrow (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $1)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (local.set $3
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7648)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (local.set $3
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
    (local.get $3)
    (local.get $2)
    (call $~lib/staticarray/StaticArray<~lib/string/String>#join
     (i32.const 7648)
    )
   )
  )
  (local.set $1
   (if (result i32)
    (i64.eq
     (i64.load
      (local.get $1)
     )
     (i64.load
      (i32.load offset=12
       (local.get $3)
      )
     )
    )
    (i32.const 1)
    (i64.eq
     (i64.load
      (local.get $1)
     )
     (i64.load
      (i32.load offset=16
       (local.get $3)
      )
     )
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7792)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=12
     (local.get $3)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 7792)
   (i32.const 3)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=16
     (local.get $3)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $1)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 7792)
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (if (result i32)
     (i32.eq
      (i32.load offset=8
       (local.get $3)
      )
      (i32.const 1)
     )
     (i32.const 1)
     (i32.eq
      (i32.load offset=8
       (local.get $3)
      )
      (i32.const 2)
     )
    )
    (i32.const 1)
    (i32.eq
     (i32.load offset=8
      (local.get $3)
     )
     (i32.const 5)
    )
   )
   (i32.const 7840)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#remove
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $3)
  )
  (local.set $1
   (i32.load offset=12
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=20
    (local.get $3)
   )
  )
  (local.set $5
   (i32.load offset=24
    (local.get $3)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8016)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $2)
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (local.get $1)
   (local.get $4)
   (local.get $5)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 8016)
   )
  )
  (call $escrow.inline/sendLogEscrow
   (i32.load offset=12
    (local.get $0)
   )
   (local.get $3)
   (i32.const 3104)
  )
 )
 (func $easyescrow.contract/negopurchaseAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (local.set $3
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $escrow.tables/Escrow#set:deliverType
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (call $escrow.tables/Escrow#set:expiry
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u32>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/action/hasAuth (param $0 i32) (result i32)
  (call $~lib/as-chain/env/has_auth
   (i64.load
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<escrow.tables/Escrow>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $escrow.tables/Escrow#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $escrow.tables/Escrow#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $escrow.tables/Escrow#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (block $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#getByKey (result i32)
    (drop
     (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#getByKey
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $4
         (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#find
          (local.tee $3
           (i32.load
            (local.get $0)
           )
          )
          (i64.load
           (local.get $1)
          )
         )
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<escrow.tables/Escrow>#get
     (i32.load
      (local.get $3)
     )
     (local.get $4)
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#requireFind
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<escrow.tables/Escrow>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $1)
     (local.get $2)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#store
    (local.get $0)
    (local.get $1)
    (local.get $2)
   )
  )
 )
 (func $easyescrow.contract/EscrowContract#negopurchase (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.eq
     (i64.load
      (local.get $4)
     )
     (i64.load
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (i32.const 1)
    (call $~lib/as-chain/action/isAccount
     (local.get $4)
    )
   )
   (i32.const 8048)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.load offset=12
     (local.get $5)
    )
    (i32.const 1)
    (i32.load offset=12
     (local.get $6)
    )
   )
   (i32.const 8144)
  )
  (local.set $11
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8272)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $1)
   )
  )
  (local.set $12
   (if (result i32)
    (if (result i32)
     (if (result i32)
      (call $~lib/as-chain/action/hasAuth
       (i32.load offset=12
        (local.tee $11
         (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
          (local.get $11)
          (local.get $1)
          (call $~lib/staticarray/StaticArray<~lib/string/String>#join
           (i32.const 8272)
          )
         )
        )
       )
      )
      (i32.const 1)
      (call $~lib/as-chain/action/hasAuth
       (i32.load offset=16
        (local.get $11)
       )
      )
     )
     (i64.eq
      (i64.load
       (i32.load offset=12
        (local.get $11)
       )
      )
      (i64.load
       (local.get $3)
      )
     )
     (i32.const 0)
    )
    (i64.eq
     (i64.load
      (i32.load offset=16
       (local.get $11)
      )
     )
     (i64.load
      (local.get $4)
     )
    )
    (i32.const 0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8464)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=12
     (local.get $11)
    )
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8464)
   (i32.const 3)
   (call $~lib/as-chain/name/Name#toString
    (i32.load offset=16
     (local.get $11)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (local.get $12)
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 8464)
   )
  )
  (local.set $12
   (select
    (local.get $3)
    (local.get $4)
    (call $~lib/as-chain/action/hasAuth
     (local.get $3)
    )
   )
  )
  (local.set $13
   (select
    (local.get $4)
    (local.get $3)
    (call $~lib/as-chain/action/hasAuth
     (local.get $3)
    )
   )
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.eq
     (i32.load offset=8
      (local.get $11)
     )
     (i32.const 3)
    )
    (i32.const 1)
    (i32.eq
     (i32.load offset=8
      (local.get $11)
     )
     (i32.const 4)
    )
   )
   (i32.const 8512)
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8816)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (local.get $12)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8816)
   (i32.const 3)
   (call $~lib/number/U64#toString
    (local.get $1)
   )
  )
  (local.set $12
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 8816)
   )
  )
  (local.set $14
   (call $easyescrow.contract/GetMsgInterface)
  )
  (drop
   (i32.load offset=4
    (local.tee $11
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 39)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $11)
   (i32.const 0)
   (local.get $14)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (local.get $13)
   (local.get $11)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 3)
    (i32.const 40)
    (i32.const 8864)
   )
   (local.get $12)
  )
  (local.set $2
   (call $escrow.tables/Escrow#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
    (local.get $8)
    (local.get $9)
    (local.get $10)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $2)
   (i32.load offset=12
    (local.get $0)
   )
  )
 )
 (func $easyescrow.contract/EscrowContract#user2nego (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (param $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (call $~lib/as-chain/action/requireAuth
   (local.get $4)
  )
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i64.eq
     (i64.load
      (local.get $4)
     )
     (i64.load
      (global.get $~lib/as-chain/name/EMPTY_NAME)
     )
    )
    (i32.const 1)
    (call $~lib/as-chain/action/isAccount
     (local.get $4)
    )
   )
   (i32.const 8048)
  )
  (call $~lib/as-chain/system/check
   (if (result i32)
    (i32.load offset=12
     (local.get $5)
    )
    (i32.const 1)
    (i32.load offset=12
     (local.get $6)
    )
   )
   (i32.const 3824)
  )
  (local.set $11
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 8896)
   (i32.const 1)
   (call $~lib/number/U64#toString
    (local.get $1)
   )
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (i64.load
     (i32.load offset=12
      (local.tee $11
       (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#requireGet
        (local.get $11)
        (local.get $1)
        (call $~lib/staticarray/StaticArray<~lib/string/String>#join
         (i32.const 8896)
        )
       )
      )
     )
    )
    (i64.load
     (local.get $3)
    )
   )
   (i32.const 8928)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (i32.load offset=12
    (local.get $11)
   )
   (i32.load offset=20
    (local.get $11)
   )
   (i32.load offset=24
    (local.get $11)
   )
   (i32.const 8976)
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 9040)
   (i32.const 1)
   (call $~lib/as-chain/name/Name#toString
    (local.get $4)
   )
  )
  (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
   (i32.const 9040)
   (i32.const 3)
   (call $~lib/number/U64#toString
    (local.get $1)
   )
  )
  (local.set $12
   (call $~lib/staticarray/StaticArray<~lib/string/String>#join
    (i32.const 9040)
   )
  )
  (local.set $13
   (call $easyescrow.contract/GetMsgInterface)
  )
  (drop
   (i32.load offset=4
    (local.tee $11
     (call $~lib/rt/__newArray
      (i32.const 1)
      (i32.const 2)
      (i32.const 39)
      (i32.const 0)
     )
    )
   )
  )
  (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
   (local.get $11)
   (i32.const 0)
   (local.get $13)
  )
  (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
   (local.get $0)
   (local.get $3)
   (local.get $11)
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 3)
    (i32.const 40)
    (i32.const 9088)
   )
   (local.get $12)
  )
  (local.set $2
   (call $escrow.tables/Escrow#constructor
    (local.get $1)
    (local.get $2)
    (local.get $3)
    (local.get $4)
    (local.get $5)
    (local.get $6)
    (local.get $7)
    (local.get $8)
    (local.get $9)
    (local.get $10)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#set
   (i32.load offset=36
    (local.get $0)
   )
   (local.get $2)
   (i32.load offset=12
    (local.get $0)
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackLength
    (local.get $0)
   )
  )
  (local.set $2
   (call $~lib/array/Array<u8>#slice
    (i32.load
     (local.get $0)
    )
    (i32.load offset=4
     (local.get $0)
    )
    (i32.add
     (local.get $1)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $0)
   (local.get $1)
  )
  (call $~lib/string/String.UTF8.decode
   (i32.load
    (local.get $2)
   )
  )
 )
 (func $easyescrow.contract/logescrowAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $escrow.tables/Escrow#constructor@varargs
     (global.get $~lib/as-chain/name/EMPTY_NAME)
     (global.get $~lib/as-chain/name/EMPTY_NAME)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $easyescrow.contract/withdrawAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#constructor
    (local.tee $4
     (call $~lib/as-chain/serializer/Decoder#unpackLength
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $3)
     (local.get $4)
    )
    (block
     (global.set $~argumentsLength
      (i32.const 0)
     )
     (local.set $2
      (call $~lib/as-chain/asset/ExtendedAsset#constructor@varargs)
     )
     (if
      (i32.eqz
       (local.tee $5
        (i32.load offset=4
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (local.get $5)
      (local.get $3)
      (local.get $2)
     )
     (call $~lib/as-chain/serializer/Decoder#unpack
      (local.get $1)
      (local.get $2)
     )
     (local.set $3
      (i32.add
       (local.get $3)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue (result i64)
  (local $0 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (i64.const 3774946890198131584)
  )
  (i64.load
   (local.get $0)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (i32.const 6)
    )
   )
   (i32.load8_u
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=1
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=2
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=3
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=5
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $4
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#getValue
        (local.get $1)
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $6
   (i64.load
    (local.get $3)
   )
  )
  (local.set $7
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $6)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $7)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $4)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $4)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $4)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $4)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $easyescrow.contract/settokenAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryIterator#constructor (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 20)
     (i32.const 60)
    )
   )
   (local.get $0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (local.get $1)
  )
  (call $~lib/rt/common/OBJECT#set:rtSize
   (local.get $3)
   (local.get $2)
  )
  (local.get $3)
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 86)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/ExtendedSymbol#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (drop
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack
    (local.tee $0
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
     (local.get $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx
   (local.get $0)
   (i32.load offset=4
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getBySecondaryU128 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (block $__inlined_func$~lib/rt/__instanceof (result i32)
     (if
      (i32.le_u
       (local.tee $2
        (i32.load offset=12
         (i32.sub
          (local.tee $3
           (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
            (i32.load offset=4
             (i32.load
              (local.get $0)
             )
            )
            (i32.const 0)
           )
          )
          (i32.const 20)
         )
        )
       )
       (i32.load
        (i32.const 10800)
       )
      )
      (loop $do-continue|0
       (drop
        (br_if $__inlined_func$~lib/rt/__instanceof
         (i32.const 1)
         (i32.eq
          (local.get $2)
          (i32.const 52)
         )
        )
       )
       (br_if $do-continue|0
        (local.tee $2
         (i32.load offset=4
          (i32.add
           (i32.shl
            (local.get $2)
            (i32.const 3)
           )
           (i32.const 10804)
          )
         )
        )
       )
      )
     )
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (local.set $2
   (call $~lib/rt/stub/__alloc
    (i32.const 8)
   )
  )
  (call $~lib/array/Array<u64>#__set
   (local.tee $4
    (call $~lib/array/Array<u64>#constructor
     (i32.const 2)
    )
   )
   (i32.const 0)
   (i64.load
    (local.get $1)
   )
  )
  (call $~lib/array/Array<u64>#__set
   (local.get $4)
   (i32.const 1)
   (i64.load offset=8
    (local.get $1)
   )
  )
  (local.set $5
   (call $~lib/as-chain/env/db_idx128_lowerbound
    (i64.load
     (local.get $3)
    )
    (i64.load offset=8
     (local.get $3)
    )
    (i64.load offset=16
     (local.get $3)
    )
    (i32.load offset=4
     (local.get $4)
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
     (local.tee $1
      (if (result i32)
       (if (result i32)
        (i64.eq
         (i64.load
          (local.get $1)
         )
         (call $~lib/array/Array<u64>#__get
          (local.get $4)
          (i32.const 0)
         )
        )
        (i64.eq
         (i64.load offset=8
          (local.get $1)
         )
         (call $~lib/array/Array<u64>#__get
          (local.get $4)
          (i32.const 1)
         )
        )
        (i32.const 0)
       )
       (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
        (local.get $5)
        (i64.load
         (local.get $2)
        )
        (i32.load offset=24
         (local.get $3)
        )
       )
       (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
        (i32.const -1)
        (i64.const 0)
        (i32.load offset=24
         (local.get $3)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
   (local.get $0)
   (i64.load offset=8
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken (param $0 i32) (param $1 i32) (result i32)
  (local.set $0
   (i32.load offset=24
    (local.get $0)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getBySecondaryU128
   (local.get $0)
   (call_indirect (type $i32_=>_i32)
    (local.get $1)
    (i32.load
     (i32.const 2288)
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end (param $0 i32) (result i32)
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
   (local.tee $0
    (i32.load
     (local.get $0)
    )
   )
   (call $~lib/as-chain/env/db_end_i64
    (i64.load
     (local.get $0)
    )
    (i64.load offset=8
     (local.get $0)
    )
    (i64.load offset=16
     (local.get $0)
    )
   )
   (i64.const 0)
   (i32.const 0)
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:availablePrimaryKey (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (if
   (i64.eq
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -1)
   )
   (if
    (i32.eq
     (i32.load offset=4
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
       (local.tee $1
        (i32.load
         (i32.load
          (local.get $0)
         )
        )
       )
       (call $~lib/as-chain/env/db_lowerbound_i64
        (i64.load
         (local.get $1)
        )
        (i64.load offset=8
         (local.get $1)
        )
        (i64.load offset=16
         (local.get $1)
        )
        (i64.const 0)
       )
       (i64.const 0)
       (i32.const 0)
      )
     )
     (i32.load offset=4
      (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
     (local.get $0)
     (i64.const 0)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#end
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $3
      (i32.load
       (i32.load
        (local.get $0)
       )
      )
     )
     (local.set $1
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.set $1
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
       (local.get $3)
       (call $~lib/as-chain/env/db_previous_i64
        (i32.load offset=4
         (local.get $2)
        )
        (local.get $1)
       )
       (i64.load
        (local.get $1)
       )
       (i32.const 1)
      )
     )
     (local.set $5
      (local.tee $4
       (i64.load
        (if (result i32)
         (local.tee $1
          (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
           (i32.load
            (i32.load
             (local.get $0)
            )
           )
           (local.get $1)
          )
         )
         (local.get $1)
         (block (result i32)
          (global.set $~argumentsLength
           (i32.const 0)
          )
          (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor@varargs)
         )
        )
       )
      )
     )
     (if
      (i64.ge_u
       (local.get $4)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $0)
       (i64.const -2)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $0)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
      )
     )
    )
   )
  )
  (call $~lib/as-chain/system/check
   (i64.lt_u
    (i64.load offset=8
     (local.get $0)
    )
    (i64.const -2)
   )
   (i32.const 2160)
  )
  (i64.load offset=8
   (local.get $0)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load offset=8
        (local.get $0)
       )
      )
      (i32.const 26)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=13
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (local.get $1)
   )
   (block
    (local.set $0
     (i32.load offset=8
      (local.get $0)
     )
    )
    (global.set $~argumentsLength
     (i32.const 1)
    )
    (local.set $0
     (call_indirect (type $i32_=>_i32)
      (local.get $0)
      (i32.load
       (i32.const 2288)
      )
     )
    )
    (i64.store
     (local.tee $2
      (i32.load offset=4
       (local.tee $1
        (call $~lib/array/Array<u64>#constructor
         (i32.const 2)
        )
       )
      )
     )
     (i64.load
      (local.get $0)
     )
    )
    (i64.store offset=8
     (local.get $2)
     (i64.load offset=8
      (local.get $0)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 1)
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/as-chain/system/assert
   (i32.const 0)
   (i32.const 5472)
  )
  (call $~lib/as-chain/idxdb/SecondaryValue#constructor
   (i32.const 0)
   (call $~lib/array/Array<u64>#constructor
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $6
     (i64.load
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.get $1)
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $1)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:primary
       (i64.load offset=16
        (local.get $1)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $4
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $1)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedToken>#getEx
          (i32.load
           (local.get $1)
          )
          (i32.load offset=4
           (local.get $1)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $1)
      (i64.load
       (local.get $4)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $1)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $1)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $7
   (i64.load
    (local.get $3)
   )
  )
  (local.set $8
   (i32.load offset=12
    (local.tee $4
     (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $7)
   (i32.load offset=4
    (local.get $4)
   )
   (local.get $8)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $5)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (local.get $6)
      )
     )
     (local.set $4
      (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
       (local.get $2)
       (local.get $5)
      )
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $4)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $4)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $5)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
        (local.get $2)
        (local.get $5)
       )
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $5
      (i32.add
       (local.get $5)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $6)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $6)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $6)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get
    (local.get $0)
    (i64.load
     (local.get $1)
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind
      (i32.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#update
     (i32.load
      (local.get $0)
     )
     (local.get $3)
     (local.get $1)
     (local.get $2)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
        (i32.load
         (local.get $0)
        )
        (local.tee $6
         (i64.load
          (local.get $1)
         )
        )
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $5
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $4
     (i64.load
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $2)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedToken>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $4)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $4)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $3)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $5)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
         (i32.load offset=4
          (local.get $5)
         )
         (local.get $3)
        )
        (i64.load
         (local.get $1)
        )
        (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#getSecondaryValue
         (local.get $1)
         (local.get $3)
        )
        (i64.load
         (local.get $2)
        )
       )
       (local.set $3
        (i32.add
         (local.get $3)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $4
       (i64.load
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $5)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $5)
      (select
       (i64.const -2)
       (i64.add
        (local.get $4)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $4)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $6)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $6)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $6)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/allow/allow.contract/AllowContract#settoken (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i32)
  (call $~lib/as-chain/action/requireAuth
   (i32.load offset=12
    (local.get $0)
   )
  )
  (call $~lib/as-chain/system/check
   (i32.eqz
    (select
     (local.get $3)
     (i32.const 0)
     (local.get $2)
    )
   )
   (i32.const 9168)
  )
  (local.set $1
   (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#constructor
    (if (result i64)
     (local.tee $5
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken
       (local.get $0)
       (local.get $1)
      )
     )
     (i64.load
      (local.get $5)
     )
     (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#get:availablePrimaryKey
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (local.get $1)
    (local.get $2)
    (local.get $3)
   )
  )
  (if
   (select
    (i32.const 1)
    (local.get $3)
    (local.get $2)
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedToken>#set
    (i32.load offset=24
     (local.get $0)
    )
    (local.get $1)
    (i32.load offset=12
     (local.get $0)
    )
   )
   (block
    (drop
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#requireFind
      (i32.load
       (local.tee $2
        (i32.load offset=24
         (local.get $0)
        )
       )
      )
      (local.tee $4
       (i64.load
        (local.get $1)
       )
      )
      (i32.const 1648)
     )
    )
    (local.set $0
     (i32.const 0)
    )
    (call $~lib/as-chain/system/check
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
      (local.tee $3
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedToken>#find
        (local.tee $1
         (i32.load
          (local.get $2)
         )
        )
        (local.get $4)
       )
      )
     )
     (i32.const 4912)
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#remove
     (i32.load
      (local.get $1)
     )
     (local.get $3)
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $0)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $1)
        )
       )
      )
      (block
       (if
        (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
         (i32.load
          (local.tee $3
           (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
            (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
             (i32.load offset=4
              (local.get $1)
             )
             (local.get $0)
            )
            (local.get $4)
           )
          )
         )
        )
        (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
         (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
          (i32.load offset=4
           (local.get $1)
          )
          (local.get $0)
         )
         (i32.load
          (local.get $3)
         )
        )
       )
       (local.set $0
        (i32.add
         (local.get $0)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.eq
      (local.get $4)
      (i64.sub
       (i64.load offset=8
        (local.get $2)
       )
       (i64.const 1)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $2)
      (i64.const -1)
     )
    )
   )
  )
 )
 (func $easyescrow.contract/setactorAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u8>
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 88)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (i32.const 0)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (i64.const 0)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $4)
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $4)
   (local.get $1)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $2)
  )
  (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
   (local.get $4)
   (local.get $3)
  )
  (local.get $4)
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find (result i32)
   (if
    (i32.ge_s
     (local.tee $2
      (call $~lib/as-chain/env/db_find_i64
       (i64.load
        (local.tee $0
         (i32.load
          (local.get $0)
         )
        )
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $1)
      )
     )
     (i32.const 0)
    )
    (br $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
      (local.get $0)
      (local.get $2)
      (local.get $1)
      (i32.const 1)
     )
    )
   )
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
    (local.get $0)
    (local.get $2)
    (i64.const 0)
    (i32.const 0)
   )
  )
 )
 (func $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (local.tee $0
     (call $~lib/as-chain/env/db_get_i64
      (local.get $1)
      (i32.const 0)
      (i32.const 0)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/as-chain/env/db_get_i64
    (local.get $1)
    (i32.load offset=4
     (local.tee $1
      (call $~lib/array/Array<u8>#constructor
       (local.get $0)
      )
     )
    )
    (local.get $0)
   )
  )
  (drop
   (call $easyescrow.contract/setactorAction#unpack
    (local.tee $0
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
      (global.get $~lib/as-chain/name/EMPTY_NAME)
      (i32.const 0)
      (i32.const 0)
     )
    )
    (local.get $1)
   )
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (block $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get (result i32)
    (local.set $3
     (i32.load
      (local.get $0)
     )
    )
    (drop
     (br_if $__inlined_func$~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
      (i32.const 0)
      (i32.eqz
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $0
         (local.get $2)
        )
       )
      )
     )
    )
    (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx
     (local.get $3)
     (i32.load offset=4
      (local.get $0)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.tee $0
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (local.get $2)
  )
  (local.get $0)
 )
 (func $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack (param $0 i32) (result i32)
  (local $1 i32)
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.tee $1
    (call $~lib/as-chain/serializer/Encoder#constructor
     (block (result i32)
      (drop
       (i32.load
        (local.get $0)
       )
      )
      (i32.const 10)
     )
    )
   )
   (i32.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=4
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
   (local.get $1)
   (i32.load8_u offset=5
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#update (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
    (local.get $1)
   )
   (i32.const 4992)
  )
  (call $~lib/as-chain/system/check
   (i64.eq
    (local.tee $5
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $2)
     )
    )
    (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get:primary (result i64)
     (call $~lib/as-chain/system/check
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $4
        (local.get $1)
       )
      )
      (i32.const 5056)
     )
     (if
      (i32.load8_u offset=8
       (local.get $4)
      )
      (br $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get:primary
       (i64.load offset=16
        (local.get $4)
       )
      )
     )
     (if
      (i32.eqz
       (local.tee $7
        (block $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getValue (result i32)
         (drop
          (br_if $__inlined_func$~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getValue
           (i32.const 0)
           (i32.eqz
            (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
             (local.get $4)
            )
           )
          )
         )
         (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#getEx
          (i32.load
           (local.get $4)
          )
          (i32.load offset=4
           (local.get $4)
          )
         )
        )
       )
      )
      (unreachable)
     )
     (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
      (local.get $4)
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
       (local.get $7)
      )
     )
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#set:validPrimary
      (local.get $4)
      (i32.const 1)
     )
     (i64.load offset=16
      (local.get $4)
     )
    )
   )
   (i32.const 5136)
  )
  (drop
   (i32.load
    (local.get $0)
   )
  )
  (local.set $8
   (i64.load
    (local.get $3)
   )
  )
  (local.set $4
   (i32.load offset=12
    (local.tee $2
     (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
      (local.get $2)
     )
    )
   )
  )
  (call $~lib/as-chain/env/db_update_i64
   (i32.load offset=4
    (local.get $1)
   )
   (local.get $8)
   (i32.load offset=4
    (local.get $2)
   )
   (local.get $4)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
    (block
     (local.set $1
      (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (local.get $5)
      )
     )
     (local.set $2
      (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
     )
     (if
      (i32.eqz
       (if (result i32)
        (i32.eq
         (i32.load
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load
          (local.get $2)
         )
        )
        (i32.eq
         (i32.load offset=4
          (i32.load offset=4
           (local.get $1)
          )
         )
         (i32.load offset=4
          (local.get $2)
         )
        )
        (i32.const 0)
       )
      )
      (call $~lib/as-chain/idxdb/IDXDB#updateEx@virtual
       (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
        (i32.load offset=4
         (local.get $0)
        )
        (local.get $6)
       )
       (i32.load
        (local.get $1)
       )
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
       (i64.load
        (local.get $3)
       )
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i64.ge_u
    (local.get $5)
    (i64.load offset=8
     (local.get $0)
    )
   )
   (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
    (local.get $0)
    (select
     (i64.const -2)
     (i64.add
      (local.get $5)
      (i64.const 1)
     )
     (i64.ge_u
      (local.get $5)
      (i64.const -2)
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
    (local.get $0)
    (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
     (local.get $1)
    )
   )
   (block
    (local.set $3
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $4
     (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind
      (i32.load
       (local.get $0)
      )
      (local.get $3)
      (i32.const 1424)
     )
    )
    (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#update
     (i32.load
      (local.get $0)
     )
     (local.get $4)
     (local.get $1)
     (local.get $2)
    )
   )
   (block
    (local.set $3
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
        (i32.load
         (local.get $0)
        )
        (local.get $3)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $7
     (i32.load
      (local.tee $6
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $5
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $8
     (i64.load
      (local.get $2)
     )
    )
    (local.set $10
     (i32.load offset=12
      (local.tee $9
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowedActor>#constructor
      (local.get $7)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $7)
       )
       (i64.load offset=16
        (local.get $7)
       )
       (local.get $8)
       (local.get $5)
       (i32.load offset=4
        (local.get $9)
       )
       (local.get $10)
      )
      (local.get $5)
      (i32.const 1)
     )
    )
    (loop $for-loop|0
     (if
      (i32.lt_s
       (local.get $4)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $6)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
         (i32.load offset=4
          (local.get $6)
         )
         (local.get $4)
        )
        (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
         (local.get $1)
        )
        (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
        (i64.load
         (local.get $2)
        )
       )
       (local.set $4
        (i32.add
         (local.get $4)
         (i32.const 1)
        )
       )
       (br $for-loop|0)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $5
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $6)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $6)
      (select
       (i64.const -2)
       (i64.add
        (local.get $5)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $5)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $3)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $3)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $3)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $easyescrow.contract/transferAction#unpack (param $0 i32) (param $1 i32) (result i32)
  (i32.load offset=4
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
 )
 (func $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackNumberArray<u64>
    (local.get $1)
   )
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/skipDepositFrom (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (if
   (i64.eq
    (i64.load
     (local.get $0)
    )
    (i64.load
     (local.get $1)
    )
   )
   (return
    (i32.const 1)
   )
  )
  (local.set $2
   (call $~lib/as-chain/name/S2N
    (i32.const 9552)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $1
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $1)
   (local.get $2)
  )
  (if
   (if (result i32)
    (if (result i32)
     (i64.eq
      (i64.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
     (i32.const 1)
     (block (result i32)
      (local.set $2
       (call $~lib/as-chain/name/S2N
        (i32.const 9600)
       )
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $1
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 5)
        )
       )
       (i64.const 0)
      )
      (call $~lib/as-chain/name/Name#set:N
       (local.get $1)
       (local.get $2)
      )
      (i64.eq
       (i64.load
        (local.get $0)
       )
       (i64.load
        (local.get $1)
       )
      )
     )
    )
    (i32.const 1)
    (block (result i32)
     (local.set $2
      (call $~lib/as-chain/name/S2N
       (i32.const 9648)
      )
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.tee $1
       (call $~lib/rt/stub/__new
        (i32.const 8)
        (i32.const 5)
       )
      )
      (i64.const 0)
     )
     (call $~lib/as-chain/name/Name#set:N
      (local.get $1)
      (local.get $2)
     )
     (i64.eq
      (i64.load
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
 (func $~lib/string/String.__not (result i32)
  (i32.eqz
   (call $~lib/string/String#get:length
    (i32.const 2448)
   )
  )
 )
 (func $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (block $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#getByKey (result i32)
   (drop
    (br_if $__inlined_func$~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#getByKey
     (i32.const 0)
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (local.tee $2
        (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
         (local.tee $0
          (i32.load
           (local.get $0)
          )
         )
         (local.get $1)
        )
       )
      )
     )
    )
   )
   (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#get
    (i32.load
     (local.get $0)
    )
    (local.get $2)
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.utils/addToken (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (call $~lib/as-chain/system/check
   (call $~lib/as-chain/asset/Asset#isValid
    (i32.load
     (local.get $1)
    )
   )
   (i32.const 4064)
  )
  (call $~lib/as-chain/system/check
   (i64.gt_s
    (i64.load
     (i32.load
      (local.get $1)
     )
    )
    (i64.const 0)
   )
   (i32.const 9840)
  )
  (if
   (i32.eq
    (local.tee $2
     (call $~lib/proton-tsc/balance/balance.utils/findIndexOfExtendedAsset
      (local.get $0)
      (local.get $1)
     )
    )
    (i32.const -1)
   )
   (block
    (call $~lib/array/ensureCapacity
     (local.get $0)
     (local.tee $4
      (i32.add
       (local.tee $3
        (i32.load offset=12
         (local.get $0)
        )
       )
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.store
     (i32.add
      (i32.load offset=4
       (local.get $0)
      )
      (i32.shl
       (local.get $3)
       (i32.const 2)
      )
     )
     (local.get $1)
    )
    (call $~lib/rt/common/OBJECT#set:rtId
     (local.get $0)
     (local.get $4)
    )
   )
   (block
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.tee $0
         (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
          (local.tee $3
           (local.get $0)
          )
          (local.tee $4
           (local.get $2)
          )
         )
        )
       )
      )
      (i64.load
       (i32.load offset=4
        (local.get $1)
       )
      )
     )
     (i32.const 4304)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=8
        (local.tee $2
         (i32.load
          (local.get $0)
         )
        )
       )
      )
      (i64.load
       (i32.load offset=8
        (local.tee $1
         (i32.load
          (local.get $1)
         )
        )
       )
      )
     )
     (i32.const 4368)
    )
    (call $~lib/as-chain/system/check
     (i64.ge_s
      (local.tee $5
       (i64.add
        (i64.load
         (local.get $2)
        )
        (i64.load
         (local.get $1)
        )
       )
      )
      (i64.const -4611686018427387903)
     )
     (i32.const 9920)
    )
    (call $~lib/as-chain/system/check
     (i64.le_s
      (local.get $5)
      (i64.const 4611686018427387903)
     )
     (i32.const 9984)
    )
    (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
     (local.get $3)
     (local.get $4)
     (call $~lib/as-chain/asset/ExtendedAsset#constructor
      (call $~lib/as-chain/asset/Asset#constructor
       (local.get $5)
       (call $~lib/as-chain/asset/Symbol.fromU64
        (i64.load
         (i32.load offset=8
          (local.get $2)
         )
        )
       )
      )
      (i32.load offset=4
       (local.get $0)
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i64)
  (local.set $1
   (if (result i32)
    (local.tee $5
     (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get
      (i32.load offset=32
       (local.get $0)
      )
      (i64.load
       (local.get $1)
      )
     )
    )
    (local.get $5)
    (block (result i32)
     (global.set $~argumentsLength
      (i32.const 1)
     )
     (call $~lib/proton-tsc/balance/balance.tables/Balance#constructor@varargs
      (local.get $1)
     )
    )
   )
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $6)
     (i32.load offset=12
      (local.get $2)
     )
    )
    (block
     (call $~lib/proton-tsc/balance/balance.utils/addToken
      (i32.load offset=4
       (local.get $1)
      )
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $2)
       (local.get $6)
      )
     )
     (local.set $6
      (i32.add
       (local.get $6)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.gt_u
    (local.tee $7
     (i32.add
      (local.tee $2
       (select
        (i32.load offset=12
         (local.get $3)
        )
        (i32.const 0)
        (local.get $3)
       )
      )
      (local.tee $6
       (i32.load offset=12
        (local.tee $5
         (i32.load offset=8
          (local.get $1)
         )
        )
       )
      )
     )
    )
    (i32.const 134217727)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.copy
   (local.tee $10
    (i32.load offset=4
     (local.tee $7
      (call $~lib/rt/__newArray
       (local.get $7)
       (i32.const 3)
       (i32.const 40)
       (i32.const 0)
      )
     )
    )
   )
   (i32.load offset=4
    (local.get $5)
   )
   (local.tee $5
    (i32.shl
     (local.get $6)
     (i32.const 3)
    )
   )
  )
  (call $~lib/memory/memory.copy
   (i32.add
    (local.get $5)
    (local.get $10)
   )
   (i32.load offset=4
    (local.get $3)
   )
   (i32.shl
    (local.get $2)
    (i32.const 3)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $1)
   (local.get $7)
  )
  (if
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#get
    (local.tee $0
     (i32.load offset=32
      (local.get $0)
     )
    )
    (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
     (local.get $1)
    )
   )
   (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/balance/balance.tables/Balance>#update
    (local.get $0)
    (local.get $1)
    (local.get $4)
   )
   (block
    (local.set $9
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.eqz
      (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/balance/balance.tables/Balance>#find
        (i32.load
         (local.get $0)
        )
        (local.get $9)
       )
      )
     )
     (i32.const 1200)
    )
    (local.set $2
     (i32.const 0)
    )
    (local.set $5
     (i32.load
      (local.tee $3
       (i32.load
        (local.get $0)
       )
      )
     )
    )
    (local.set $8
     (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
      (local.get $1)
     )
    )
    (local.set $11
     (i64.load
      (local.get $4)
     )
    )
    (local.set $7
     (i32.load offset=12
      (local.tee $6
       (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
        (local.get $1)
       )
      )
     )
    )
    (drop
     (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/balance/balance.tables/Balance>#constructor
      (local.get $5)
      (call $~lib/as-chain/env/db_store_i64
       (i64.load offset=8
        (local.get $5)
       )
       (i64.load offset=16
        (local.get $5)
       )
       (local.get $11)
       (local.get $8)
       (i32.load offset=4
        (local.get $6)
       )
       (local.get $7)
      )
      (local.get $8)
      (i32.const 1)
     )
    )
    (loop $for-loop|00
     (if
      (i32.lt_s
       (local.get $2)
       (i32.load offset=12
        (i32.load offset=4
         (local.get $3)
        )
       )
      )
      (block
       (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
        (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
         (i32.load offset=4
          (local.get $3)
         )
         (local.get $2)
        )
        (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
         (local.get $1)
        )
        (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
        (i64.load
         (local.get $4)
        )
       )
       (local.set $2
        (i32.add
         (local.get $2)
         (i32.const 1)
        )
       )
       (br $for-loop|00)
      )
     )
    )
    (if
     (i64.ge_u
      (local.tee $8
       (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
        (local.get $1)
       )
      )
      (i64.load offset=8
       (local.get $3)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $3)
      (select
       (i64.const -2)
       (i64.add
        (local.get $8)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $8)
        (i64.const -2)
       )
      )
     )
    )
    (if
     (i64.ge_u
      (local.get $9)
      (i64.load offset=8
       (local.get $0)
      )
     )
     (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
      (local.get $0)
      (select
       (i64.const -2)
       (i64.add
        (local.get $9)
        (i64.const 1)
       )
       (i64.ge_u
        (local.get $9)
        (i64.const -2)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/proton-tsc/token/token.inline/Transfer#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#constructor
    (local.get $1)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $2)
   (i64.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (local.get $2)
  )
  (global.set $~argumentsLength
   (i32.const 0)
  )
  (call $~lib/as-chain/serializer/Decoder#unpack
   (local.get $1)
   (local.tee $2
    (call $~lib/as-chain/asset/Asset#constructor@varargs)
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackString
    (local.get $1)
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/proton-tsc/balance/balance.contract/BalanceContract#transfer (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
   (local.get $0)
  )
  (if
   (i64.eq
    (i64.load
     (i32.load offset=16
      (local.get $0)
     )
    )
    (i64.load
     (global.get $~lib/proton-tsc/atomicassets/atomicassets.constants/ATOMICASSETS_CONTRACT)
    )
   )
   (block
    (local.set $3
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack
      (local.tee $1
       (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#constructor
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (call $~lib/rt/__newArray
         (i32.const 0)
         (i32.const 3)
         (i32.const 40)
         (i32.const 9520)
        )
        (i32.const 2448)
       )
      )
      (local.get $3)
     )
    )
    (if
     (call $~lib/proton-tsc/balance/balance.utils/skipDepositFrom
      (i32.load
       (local.get $1)
      )
      (i32.load offset=12
       (local.get $0)
      )
     )
     (return)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.get $1)
       )
      )
      (i64.load
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (i32.const 9680)
    )
    (local.set $3
     (select
      (i32.const 9744)
      (i32.const 2448)
      (call $~lib/string/String.__not)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.load8_u offset=4
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
       (i32.load offset=28
        (local.get $0)
       )
      )
     )
     (local.get $3)
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance
     (local.get $0)
     (i32.load
      (local.get $1)
     )
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 2)
      (i32.const 39)
      (i32.const 9808)
     )
     (i32.load offset=8
      (local.get $1)
     )
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (block
    (local.set $1
     (call $~lib/as-chain/action/readActionData)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (global.set $~argumentsLength
     (i32.const 0)
    )
    (drop
     (call $~lib/proton-tsc/token/token.inline/Transfer#unpack
      (local.tee $3
       (call $~lib/proton-tsc/token/token.inline/Transfer#constructor
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (global.get $~lib/as-chain/name/EMPTY_NAME)
        (call $~lib/as-chain/asset/Asset#constructor@varargs)
        (i32.const 2448)
       )
      )
      (local.get $1)
     )
    )
    (if
     (call $~lib/proton-tsc/balance/balance.utils/skipDepositFrom
      (i32.load
       (local.get $3)
      )
      (i32.load offset=12
       (local.get $0)
      )
     )
     (return)
    )
    (call $~lib/as-chain/system/check
     (i64.eq
      (i64.load
       (i32.load offset=4
        (local.get $3)
       )
      )
      (i64.load
       (i32.load offset=12
        (local.get $0)
       )
      )
     )
     (i32.const 9680)
    )
    (drop
     (i32.load offset=4
      (local.tee $4
       (call $~lib/rt/__newArray
        (i32.const 1)
        (i32.const 2)
        (i32.const 39)
        (i32.const 0)
       )
      )
     )
    )
    (call $~lib/array/Array<~lib/as-chain/idxdb/IDXDB>#__uset
     (local.get $4)
     (i32.const 0)
     (call $~lib/as-chain/asset/ExtendedAsset#constructor
      (i32.load offset=8
       (local.get $3)
      )
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (local.set $1
     (select
      (i32.const 10048)
      (i32.const 2448)
      (call $~lib/string/String.__not)
     )
    )
    (call $~lib/as-chain/system/check
     (i32.load8_u offset=3
      (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
       (i32.load offset=28
        (local.get $0)
       )
      )
     )
     (local.get $1)
    )
    (local.set $1
     (block $__inlined_func$~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed (result i32)
      (local.set $2
       (i32.load offset=16
        (local.get $0)
       )
      )
      (drop
       (br_if $__inlined_func$~lib/proton-tsc/allow/allow.contract/AllowContract#isActorAllowed
        (i32.eqz
         (local.tee $1
          (i32.load8_u offset=1
           (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
            (i32.load offset=28
             (local.get $0)
            )
           )
          )
         )
        )
        (i32.eqz
         (local.tee $2
          (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#get
           (i32.load offset=20
            (local.get $0)
           )
           (i64.load
            (local.get $2)
           )
          )
         )
        )
       )
      )
      (if (result i32)
       (i32.load8_u offset=4
        (local.get $2)
       )
       (i32.const 1)
       (if (result i32)
        (local.get $1)
        (i32.const 0)
        (i32.eqz
         (i32.load8_u offset=5
          (local.get $2)
         )
        )
       )
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10256)
     (i32.const 1)
     (call $~lib/as-chain/name/Name#toString
      (i32.load offset=16
       (local.get $0)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $1)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 10256)
     )
    )
    (local.set $2
     (call $~lib/as-chain/asset/ExtendedAsset#getExtendedSymbol
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $4)
       (i32.const 0)
      )
     )
    )
    (local.set $1
     (i32.eqz
      (local.tee $5
       (i32.load8_u offset=2
        (call $~lib/proton-tsc/modules/store/singleton/Singleton<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#get
         (i32.load offset=28
          (local.get $0)
         )
        )
       )
      )
     )
    )
    (if
     (local.tee $2
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#findAllowedToken
       (local.get $0)
       (local.get $2)
      )
     )
     (local.set $1
      (if (result i32)
       (i32.load8_u offset=12
        (local.get $2)
       )
       (i32.const 1)
       (if (result i32)
        (local.get $5)
        (i32.const 0)
        (i32.eqz
         (i32.load8_u offset=13
          (local.get $2)
         )
        )
       )
      )
     )
    )
    (call $~lib/staticarray/StaticArray<~lib/string/String>#__uset
     (i32.const 10400)
     (i32.const 1)
     (call $~lib/as-chain/asset/ExtendedAsset#toString
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $4)
       (i32.const 0)
      )
     )
    )
    (call $~lib/as-chain/system/check
     (local.get $1)
     (call $~lib/staticarray/StaticArray<~lib/string/String>#join
      (i32.const 10400)
     )
    )
    (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#addBalance
     (local.get $0)
     (i32.load
      (local.get $3)
     )
     (local.get $4)
     (call $~lib/rt/__newArray
      (i32.const 0)
      (i32.const 3)
      (i32.const 40)
      (i32.const 10432)
     )
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
  )
 )
 (func $easyescrow.contract/apply (param $0 i64) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i64)
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $3)
   (local.get $0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $6
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $6)
   (local.get $1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (local.get $2)
  )
  (local.set $3
   (i32.load
    (local.tee $6
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#constructor
      (call $~lib/rt/stub/__new
       (i32.const 44)
       (i32.const 16)
      )
      (local.get $3)
      (local.get $6)
      (local.get $7)
     )
    )
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (i32.store offset=36
   (local.get $6)
   (call $~lib/proton-tsc/modules/store/store/TableStore<escrow.tables/Escrow>#constructor
    (local.get $3)
    (local.get $3)
   )
  )
  (local.set $5
   (i32.load
    (local.get $6)
   )
  )
  (global.set $~argumentsLength
   (i32.const 1)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $7
    (call $~lib/rt/stub/__new
     (i32.const 12)
     (i32.const 49)
    )
   )
   (i64.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $7)
   (i32.const 0)
  )
  (drop
   (call $escrow.tables/EscrowGlobal#constructor)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $4)
   (i64.const 6201872790059076880)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $7)
   (i64.load
    (local.get $4)
   )
  )
  (global.set $~argumentsLength
   (i32.const 3)
  )
  (local.set $8
   (call $~lib/rt/__newArray
    (i32.const 0)
    (i32.const 2)
    (i32.const 27)
    (i32.const 3424)
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $3
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 50)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (i32.const 0)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $3)
   (i64.const -1)
  )
  (local.set $9
   (i64.load
    (local.get $5)
   )
  )
  (local.set $14
   (i64.load
    (local.get $5)
   )
  )
  (local.set $15
   (i64.load
    (local.get $4)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $4
    (call $~lib/rt/stub/__new
     (i32.const 24)
     (i32.const 51)
    )
   )
   (local.get $9)
  )
  (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
   (local.get $4)
   (local.get $14)
  )
  (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set:table
   (local.get $4)
   (local.get $15)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $3)
   (local.get $4)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $3)
   (local.get $8)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $7)
   (local.get $3)
  )
  (i32.store offset=40
   (local.get $6)
   (local.get $7)
  )
  (local.set $7
   (call $~lib/as-chain/action/readActionData)
  )
  (if
   (i64.eq
    (local.get $0)
    (local.get $1)
   )
   (block
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4157529806965229568)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 36)
         (i32.const 54)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/startescrowAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $4
       (i32.load
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $11
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $12
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $13
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $easyescrow.contract/EscrowContract#startescrow
       (local.get $6)
       (local.get $4)
       (local.get $5)
       (local.get $8)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (i32.load offset=28
        (local.get $3)
       )
       (i32.load offset=32
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 6603144985408110592)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 78)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $3)
       (i64.const 0)
      )
      (drop
       (call $easyescrow.contract/fillescrowAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $easyescrow.contract/EscrowContract#fillescrow
       (local.get $6)
       (local.get $4)
       (i64.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const 4730614991479499200)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 16)
         (i32.const 79)
        )
       )
       (i32.const 0)
      )
      (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
       (local.get $3)
       (i64.const 0)
      )
      (drop
       (call $easyescrow.contract/fillescrowAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $easyescrow.contract/EscrowContract#cancelescrow
       (local.get $6)
       (local.get $4)
       (i64.load offset=8
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -7306726547649875808)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 44)
         (i32.const 80)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
       (local.get $3)
       (i32.const 0)
      )
      (call $escrow.tables/Escrow#set:deliverType
       (local.get $3)
       (i32.const 0)
      )
      (call $escrow.tables/Escrow#set:expiry
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/negopurchaseAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $9
       (i64.load
        (local.get $3)
       )
      )
      (local.set $4
       (i32.load offset=8
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $11
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $12
         (i32.load offset=28
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $13
         (i32.load offset=32
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $easyescrow.contract/EscrowContract#negopurchase
       (local.get $6)
       (local.get $9)
       (local.get $4)
       (local.get $5)
       (local.get $8)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (i32.load offset=36
        (local.get $3)
       )
       (i32.load offset=40
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -3020383398270074880)
     )
     (block
      (call $~lib/as-chain/name/Name#set:N
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 44)
         (i32.const 81)
        )
       )
       (i64.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtId
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:rtSize
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedActorTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowedTokenTable
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#set:allowGlobalsSingleton
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#set:balancesTable
       (local.get $3)
       (i32.const 0)
      )
      (call $escrow.tables/Escrow#set:deliverType
       (local.get $3)
       (i32.const 0)
      )
      (call $escrow.tables/Escrow#set:expiry
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/negopurchaseAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $9
       (i64.load
        (local.get $3)
       )
      )
      (local.set $4
       (i32.load offset=8
        (local.get $3)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=12
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $8
         (i32.load offset=16
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $10
         (i32.load offset=20
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $11
         (i32.load offset=24
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $12
         (i32.load offset=28
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $13
         (i32.load offset=32
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $easyescrow.contract/EscrowContract#user2nego
       (local.get $6)
       (local.get $9)
       (local.get $4)
       (local.get $5)
       (local.get $8)
       (local.get $10)
       (local.get $11)
       (local.get $12)
       (local.get $13)
       (i32.load offset=36
        (local.get $3)
       )
       (i32.load offset=40
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -8279678648783470592)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 8)
         (i32.const 82)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 2448)
      )
      (drop
       (call $easyescrow.contract/logescrowAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (i32.load
         (local.get $3)
        )
       )
       (unreachable)
      )
      (drop
       (i32.load offset=4
        (local.get $3)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load offset=12
        (local.get $6)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -2039333636196532224)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 12)
         (i32.const 83)
        )
       )
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/rt/common/OBJECT#set:gcInfo2
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/withdrawAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load offset=4
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (if
       (i32.eqz
        (local.tee $3
         (i32.load offset=8
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/as-chain/action/requireAuth
       (local.get $4)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#checkContractIsNotPaused
       (local.get $6)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#substractBalance
       (local.get $6)
       (local.get $4)
       (local.get $5)
       (local.get $3)
      )
      (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#withdrawAdmin
       (local.get $6)
       (local.get $4)
       (local.get $5)
       (local.get $3)
       (i32.const 9120)
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417247484950216704)
     )
     (block
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isPaused
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 6)
         (i32.const 84)
        )
       )
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isActorStrict
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokenStrict
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#set:isTokensEnabled
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (local.set $4
       (i32.load8_u
        (local.get $3)
       )
      )
      (local.set $5
       (i32.load8_u offset=1
        (local.get $3)
       )
      )
      (local.set $8
       (i32.load8_u offset=2
        (local.get $3)
       )
      )
      (local.set $10
       (i32.load8_u offset=3
        (local.get $3)
       )
      )
      (local.set $11
       (i32.load8_u offset=4
        (local.get $3)
       )
      )
      (local.set $3
       (i32.load8_u offset=5
        (local.get $3)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load offset=12
        (local.get $6)
       )
      )
      (local.set $10
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#constructor
        (local.get $4)
        (local.get $5)
        (local.get $8)
        (local.get $10)
        (local.get $11)
        (local.get $3)
       )
      )
      (local.set $3
       (i32.load offset=12
        (local.get $6)
       )
      )
      (if
       (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
        (local.tee $4
         (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#find
          (i32.load offset=8
           (local.tee $5
            (i32.load offset=28
             (local.get $6)
            )
           )
          )
          (i64.load
           (local.get $5)
          )
         )
        )
       )
       (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#update
        (i32.load offset=8
         (local.get $5)
        )
        (local.get $4)
        (local.get $10)
        (local.get $3)
       )
       (block
        (local.set $4
         (i32.const 0)
        )
        (local.set $8
         (i32.load
          (local.tee $5
           (i32.load offset=8
            (local.get $5)
           )
          )
         )
        )
        (local.set $9
         (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
        )
        (local.set $14
         (i64.load
          (local.get $3)
         )
        )
        (local.set $11
         (i32.load offset=12
          (local.tee $10
           (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
            (local.get $10)
           )
          )
         )
        )
        (drop
         (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#constructor
          (local.get $8)
          (call $~lib/as-chain/env/db_store_i64
           (i64.load offset=8
            (local.get $8)
           )
           (i64.load offset=16
            (local.get $8)
           )
           (local.get $14)
           (local.get $9)
           (i32.load offset=4
            (local.get $10)
           )
           (local.get $11)
          )
          (local.get $9)
          (i32.const 1)
         )
        )
        (loop $for-loop|0
         (if
          (i32.lt_s
           (local.get $4)
           (i32.load offset=12
            (i32.load offset=4
             (local.get $5)
            )
           )
          )
          (block
           (call $~lib/as-chain/idxdb/IDXDB#storeEx@virtual
            (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
             (i32.load offset=4
              (local.get $5)
             )
             (local.get $4)
            )
            (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
            (call $~lib/proton-tsc/balance/balance.tables/Balance#getSecondaryValue)
            (i64.load
             (local.get $3)
            )
           )
           (local.set $4
            (i32.add
             (local.get $4)
             (i32.const 1)
            )
           )
           (br $for-loop|0)
          )
         )
        )
        (if
         (i64.ge_u
          (local.tee $9
           (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#getPrimaryValue)
          )
          (i64.load offset=8
           (local.get $5)
          )
         )
         (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
          (local.get $5)
          (select
           (i64.const -2)
           (i64.add
            (local.get $9)
            (i64.const 1)
           )
           (i64.ge_u
            (local.get $9)
            (i64.const -2)
           )
          )
         )
        )
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417017204164263936)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 6)
         (i32.const 85)
        )
       )
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/settokenAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $4
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (call $~lib/proton-tsc/allow/allow.contract/AllowContract#settoken
       (local.get $6)
       (local.get $4)
       (i32.load8_u offset=4
        (local.get $3)
       )
       (i32.load8_u offset=5
        (local.get $3)
       )
      )
     )
    )
    (if
     (i64.eq
      (local.get $2)
      (i64.const -4417357892714233856)
     )
     (block
      (call $~lib/rt/common/BLOCK#set:mmInfo
       (local.tee $3
        (call $~lib/rt/stub/__new
         (i32.const 6)
         (i32.const 87)
        )
       )
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isAllowed
       (local.get $3)
       (i32.const 0)
      )
      (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#set:isBlocked
       (local.get $3)
       (i32.const 0)
      )
      (drop
       (call $easyescrow.contract/setactorAction#unpack
        (local.get $3)
        (local.get $7)
       )
      )
      (if
       (i32.eqz
        (local.tee $5
         (i32.load
          (local.get $3)
         )
        )
       )
       (unreachable)
      )
      (local.set $4
       (i32.load8_u offset=4
        (local.get $3)
       )
      )
      (local.set $3
       (i32.load8_u offset=5
        (local.get $3)
       )
      )
      (call $~lib/as-chain/action/requireAuth
       (i32.load offset=12
        (local.get $6)
       )
      )
      (call $~lib/as-chain/system/check
       (i32.eqz
        (select
         (local.get $3)
         (i32.const 0)
         (local.get $4)
        )
       )
       (i32.const 9376)
      )
      (local.set $5
       (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#constructor
        (local.get $5)
        (local.get $4)
        (local.get $3)
       )
      )
      (if
       (select
        (i32.const 1)
        (local.get $3)
        (local.get $4)
       )
       (call $~lib/proton-tsc/modules/store/store/TableStore<~lib/proton-tsc/allow/allow.tables/AllowedActor>#set
        (i32.load offset=20
         (local.get $6)
        )
        (local.get $5)
        (i32.load offset=12
         (local.get $6)
        )
       )
       (block
        (local.set $4
         (i32.load offset=20
          (local.get $6)
         )
        )
        (local.set $9
         (call $~lib/proton-tsc/balance/balance.tables/Balance#getPrimaryValue
          (local.get $5)
         )
        )
        (drop
         (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#requireFind
          (i32.load
           (local.get $4)
          )
          (local.get $9)
          (i32.const 1648)
         )
        )
        (local.set $3
         (i32.const 0)
        )
        (call $~lib/as-chain/system/check
         (call $~lib/as-chain/dbi64/PrimaryIterator<~lib/proton-tsc/allow/allow.tables/AllowGlobals>#isOk
          (local.tee $8
           (call $~lib/as-chain/mi/MultiIndex<~lib/proton-tsc/allow/allow.tables/AllowedActor>#find
            (local.tee $5
             (i32.load
              (local.get $4)
             )
            )
            (local.get $9)
           )
          )
         )
         (i32.const 4912)
        )
        (call $~lib/as-chain/dbi64/DBI64<~lib/proton-tsc/balance/balance.tables/Balance>#remove
         (i32.load
          (local.get $5)
         )
         (local.get $8)
        )
        (loop $for-loop|00
         (if
          (i32.lt_s
           (local.get $3)
           (i32.load offset=12
            (i32.load offset=4
             (local.get $5)
            )
           )
          )
          (block
           (if
            (call $~lib/as-chain/idxdb/SecondaryIterator#isOk
             (i32.load
              (local.tee $8
               (call $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual
                (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
                 (i32.load offset=4
                  (local.get $5)
                 )
                 (local.get $3)
                )
                (local.get $9)
               )
              )
             )
            )
            (call $~lib/as-chain/idxdb/IDXDB#remove@virtual
             (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
              (i32.load offset=4
               (local.get $5)
              )
              (local.get $3)
             )
             (i32.load
              (local.get $8)
             )
            )
           )
           (local.set $3
            (i32.add
             (local.get $3)
             (i32.const 1)
            )
           )
           (br $for-loop|00)
          )
         )
        )
        (if
         (i64.eq
          (local.get $9)
          (i64.sub
           (i64.load offset=8
            (local.get $4)
           )
           (i64.const 1)
          )
         )
         (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
          (local.get $4)
          (i64.const -1)
         )
        )
       )
      )
     )
    )
   )
  )
  (if
   (i64.ne
    (local.get $0)
    (local.get $1)
   )
   (if
    (i64.eq
     (local.get $2)
     (i64.const -3617168760277827584)
    )
    (block
     (drop
      (call $easyescrow.contract/transferAction#unpack
       (call $~lib/rt/stub/__new
        (i32.const 0)
        (i32.const 89)
       )
       (local.get $7)
      )
     )
     (call $~lib/proton-tsc/balance/balance.contract/BalanceContract#transfer
      (local.get $6)
     )
    )
   )
  )
 )
 (func $~lib/as-chain/serializer/Decoder#unpackName (param $0 i32) (result i32)
  (local $1 i64)
  (local.set $1
   (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
    (local.get $0)
   )
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.tee $0
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 5)
    )
   )
   (i64.const 0)
  )
  (call $~lib/as-chain/name/Name#set:N
   (local.get $0)
   (local.get $1)
  )
  (local.get $0)
 )
 (func $~lib/as-chain/action/Action#unpack (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.tee $1
     (call $~lib/as-chain/serializer/Decoder#constructor
      (local.get $1)
     )
    )
   )
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $0)
   (call $~lib/as-chain/serializer/Decoder#unpackName
    (local.get $1)
   )
  )
  (local.set $3
   (local.tee $7
    (call $~lib/as-chain/serializer/Decoder#unpackLength
     (local.get $1)
    )
   )
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 16)
     (i32.const 70)
    )
   )
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (i32.const 0)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (i32.const 0)
  )
  (if
   (i32.gt_u
    (local.get $3)
    (i32.const 268435455)
   )
   (unreachable)
  )
  (call $~lib/memory/memory.fill
   (local.tee $6
    (call $~lib/rt/stub/__new
     (local.tee $5
      (i32.shl
       (select
        (local.get $3)
        (i32.const 8)
        (i32.gt_u
         (local.get $3)
         (i32.const 8)
        )
       )
       (i32.const 2)
      )
     )
     (i32.const 0)
    )
   )
   (i32.const 0)
   (local.get $5)
  )
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $6)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $2)
   (local.get $5)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $2)
   (local.get $3)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo2
   (local.get $0)
   (local.get $2)
  )
  (loop $for-loop|0
   (if
    (i32.lt_s
     (local.get $4)
     (local.get $7)
    )
    (block
     (local.set $2
      (call $~lib/as-chain/action/PermissionLevel#constructor
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
       (call $~lib/as-chain/serializer/Decoder#unpackName
        (local.get $1)
       )
      )
     )
     (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__set
      (i32.load offset=8
       (local.get $0)
      )
      (local.get $4)
      (local.get $2)
     )
     (local.set $4
      (i32.add
       (local.get $4)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (drop
   (i32.load offset=4
    (local.get $1)
   )
  )
  (drop
   (call $~lib/as-chain/env/memcpy
    (i32.load offset=4
     (local.tee $3
      (call $~lib/array/Array<u8>#constructor
       (local.tee $2
        (call $~lib/as-chain/serializer/Decoder#unpackLength
         (local.get $1)
        )
       )
      )
     )
    )
    (i32.add
     (i32.load offset=4
      (i32.load
       (local.get $1)
      )
     )
     (i32.load offset=4
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (call $~lib/as-chain/serializer/Decoder#incPos
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/rt/common/OBJECT#set:rtId
   (local.get $0)
   (local.get $3)
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/serializer/Packer#unpack@virtual (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (block $folding-inner7
   (block $folding-inner6
    (block $folding-inner5
     (block $folding-inner4
      (block $folding-inner3
       (block $folding-inner2
        (block $folding-inner1
         (block $folding-inner0
          (block $default
           (block $case29
            (block $case28
             (block $case25
              (block $case24
               (block $case23
                (block $case22
                 (block $case21
                  (block $case20
                   (block $case19
                    (block $case18
                     (block $case17
                      (block $case16
                       (block $case15
                        (block $case12
                         (block $case9
                          (block $case7
                           (block $case6
                            (block $case0
                             (br_table $case18 $default $case20 $case19 $case25 $default $default $default $default $default $default $default $default $default $default $folding-inner4 $default $default $default $default $default $default $default $case28 $default $default $default $folding-inner3 $default $default $default $case23 $case22 $case21 $default $default $default $default $default $case12 $default $default $default $folding-inner5 $default $default $default $default $default $case0 $default $case15 $folding-inner5 $default $default $default $default $default $default $default $default $case24 $default $case16 $default $default $case17 $case29 $default $default $folding-inner2 $default $default $folding-inner0 $folding-inner0 $folding-inner1 $folding-inner1 $folding-inner2 $case7 $folding-inner3 $case9 $default $folding-inner4 $default $case6 $default
                              (i32.sub
                               (i32.load
                                (i32.sub
                                 (local.get $0)
                                 (i32.const 8)
                                )
                               )
                               (i32.const 5)
                              )
                             )
                            )
                            (return
                             (call $easyescrow.contract/startescrowAction#unpack
                              (local.get $0)
                              (local.get $1)
                             )
                            )
                           )
                           (return
                            (call $easyescrow.contract/transferAction#unpack
                             (local.get $0)
                             (local.get $1)
                            )
                           )
                          )
                          (return
                           (call $easyescrow.contract/withdrawAction#unpack
                            (local.get $0)
                            (local.get $1)
                           )
                          )
                         )
                         (return
                          (call $easyescrow.contract/settokenAction#unpack
                           (local.get $0)
                           (local.get $1)
                          )
                         )
                        )
                        (return
                         (call $escrow.tables/Escrow#unpack
                          (local.get $0)
                          (local.get $1)
                         )
                        )
                       )
                       (call $~lib/as-chain/serializer/Decoder#unpack
                        (local.tee $1
                         (call $~lib/as-chain/serializer/Decoder#constructor
                          (local.get $1)
                         )
                        )
                        (i32.load
                         (local.get $0)
                        )
                       )
                       (br $folding-inner7)
                      )
                      (call $~lib/rt/common/BLOCK#set:mmInfo
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackName
                        (local.tee $1
                         (call $~lib/as-chain/serializer/Decoder#constructor
                          (local.get $1)
                         )
                        )
                       )
                      )
                      (call $~lib/rt/common/OBJECT#set:gcInfo
                       (local.get $0)
                       (call $~lib/as-chain/serializer/Decoder#unpackName
                        (local.get $1)
                       )
                      )
                      (br $folding-inner7)
                     )
                     (return
                      (call $~lib/as-chain/action/Action#unpack
                       (local.get $0)
                       (local.get $1)
                      )
                     )
                    )
                    (call $~lib/as-chain/name/Name#set:N
                     (local.get $0)
                     (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                      (call $~lib/as-chain/serializer/Decoder#constructor
                       (local.get $1)
                      )
                     )
                    )
                    (return
                     (i32.const 8)
                    )
                   )
                   (call $~lib/as-chain/name/Name#set:N
                    (local.get $0)
                    (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Decoder#constructor
                       (local.get $1)
                      )
                     )
                    )
                   )
                   (call $~lib/as-chain/system/check
                    (call $~lib/as-chain/asset/Symbol#isValid
                     (local.get $0)
                    )
                    (i32.const 10464)
                   )
                   (br $folding-inner7)
                  )
                  (call $~lib/as-chain/serializer/Decoder#unpack
                   (local.tee $1
                    (call $~lib/as-chain/serializer/Decoder#constructor
                     (local.get $1)
                    )
                   )
                   (i32.load
                    (local.get $0)
                   )
                  )
                  (call $~lib/as-chain/system/check
                   (call $~lib/as-chain/asset/Symbol#isValid
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (i32.const 2576)
                  )
                  (br $folding-inner6)
                 )
                 (local.set $2
                  (i64.load
                   (i32.add
                    (i32.load offset=4
                     (i32.load
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Decoder#constructor
                        (local.get $1)
                       )
                      )
                     )
                    )
                    (i32.load offset=4
                     (local.get $1)
                    )
                   )
                  )
                 )
                 (call $~lib/as-chain/serializer/Decoder#incPos
                  (local.get $1)
                  (i32.const 8)
                 )
                 (call $~lib/as-chain/name/Name#set:N
                  (local.get $0)
                  (local.get $2)
                 )
                 (call $~lib/as-chain/serializer/Decoder#unpack
                  (local.get $1)
                  (i32.load offset=8
                   (local.get $0)
                  )
                 )
                 (call $~lib/as-chain/system/check
                  (call $~lib/as-chain/asset/Asset#isValid
                   (local.get $0)
                  )
                  (i32.const 10512)
                 )
                 (return
                  (i32.load offset=4
                   (local.get $1)
                  )
                 )
                )
                (call $~lib/as-chain/serializer/Decoder#unpack
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Decoder#constructor
                   (local.get $1)
                  )
                 )
                 (i32.load
                  (local.get $0)
                 )
                )
                (call $~lib/as-chain/system/check
                 (call $~lib/as-chain/asset/Asset#isValid
                  (i32.load
                   (local.get $0)
                  )
                 )
                 (i32.const 10512)
                )
                (br $folding-inner6)
               )
               (return
                (call $~lib/proton-tsc/balance/balance.tables/Balance#unpack
                 (local.get $0)
                 (local.get $1)
                )
               )
              )
              (return
               (call $~lib/proton-tsc/token/token.inline/Transfer#unpack
                (local.get $0)
                (local.get $1)
               )
              )
             )
             (call $~lib/as-chain/name/Name#set:N
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Decoder#constructor
                 (local.get $1)
                )
               )
              )
             )
             (call $~lib/as-chain/bignum/integer/u128/u128#set:hi
              (local.get $0)
              (call $~lib/as-chain/serializer/Decoder#unpackNumber<u64>
               (local.get $1)
              )
             )
             (return
              (i32.const 16)
             )
            )
            (return
             (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#unpack
              (local.get $0)
              (local.get $1)
             )
            )
           )
           (return
            (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#unpack
             (local.get $0)
             (local.get $1)
            )
           )
          )
          (unreachable)
         )
         (return
          (call $easyescrow.contract/fillescrowAction#unpack
           (local.get $0)
           (local.get $1)
          )
         )
        )
        (return
         (call $easyescrow.contract/negopurchaseAction#unpack
          (local.get $0)
          (local.get $1)
         )
        )
       )
       (return
        (call $easyescrow.contract/logescrowAction#unpack
         (local.get $0)
         (local.get $1)
        )
       )
      )
      (return
       (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#unpack
        (local.get $0)
        (local.get $1)
       )
      )
     )
     (return
      (call $easyescrow.contract/setactorAction#unpack
       (local.get $0)
       (local.get $1)
      )
     )
    )
    (return
     (call $escrow.tables/EscrowGlobal#unpack
      (local.get $0)
      (local.get $1)
     )
    )
   )
   (call $~lib/as-chain/serializer/Decoder#unpack
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (i32.load offset=4
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/SecondaryReturnValue#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (call $~lib/rt/common/BLOCK#set:mmInfo
   (local.tee $2
    (call $~lib/rt/stub/__new
     (i32.const 8)
     (i32.const 59)
    )
   )
   (local.get $0)
  )
  (call $~lib/rt/common/OBJECT#set:gcInfo
   (local.get $2)
   (local.get $1)
  )
  (local.get $2)
 )
 (func $~lib/as-chain/idxdb/IDXDB#findPrimaryEx@virtual (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $2
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 53)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $2)
        (i32.const 52)
       )
      )
      (br $default)
     )
    )
    (local.set $2
     (call $~lib/rt/stub/__alloc
      (i32.const 8)
     )
    )
    (local.set $0
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_find_primary
       (i64.load
        (local.get $0)
       )
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $2)
       (local.get $1)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (call $~lib/array/Array<u64>#__set
     (local.tee $3
      (call $~lib/array/Array<u64>#constructor
       (i32.const 1)
      )
     )
     (i32.const 0)
     (i64.load
      (local.get $2)
     )
    )
    (return
     (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
      (local.get $0)
      (call $~lib/as-chain/idxdb/SecondaryValue#constructor
       (i32.const 0)
       (local.get $3)
      )
     )
    )
   )
   (local.set $2
    (call $~lib/rt/stub/__alloc
     (i32.const 16)
    )
   )
   (local.set $3
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_find_primary
      (i64.load
       (local.get $0)
      )
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $2)
      (local.get $1)
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.tee $0
     (call $~lib/array/Array<u64>#constructor
      (i32.const 2)
     )
    )
    (i32.const 0)
    (i64.load
     (local.get $2)
    )
   )
   (call $~lib/array/Array<u64>#__set
    (local.get $0)
    (i32.const 1)
    (i64.load offset=8
     (local.get $2)
    )
   )
   (return
    (call $~lib/as-chain/idxdb/SecondaryReturnValue#constructor
     (local.get $3)
     (call $~lib/as-chain/idxdb/SecondaryValue#constructor
      (i32.const 1)
      (local.get $0)
     )
    )
   )
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#remove@virtual (param $0 i32) (param $1 i32)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 53)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 52)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/env/db_idx64_remove
     (i32.load
      (local.get $1)
     )
    )
    (return)
   )
   (call $~lib/as-chain/env/db_idx128_remove
    (i32.load
     (local.get $1)
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $easyescrow.contract/startescrowAction#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load offset=4
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=8
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (i32.const 20)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=12
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=12
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.shl
     (i32.load offset=12
      (local.get $2)
     )
     (i32.const 3)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $2)
     )
    )
    (local.get $1)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i32.add
   (i32.add
    (local.get $1)
    (i32.shl
     (i32.load offset=12
      (local.get $0)
     )
     (i32.const 3)
    )
   )
   (i32.const 8)
  )
 )
 (func $easyescrow.contract/fillescrowAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local.set $1
   (call $~lib/as-chain/serializer/Encoder#constructor
    (block (result i32)
     (if
      (i32.eqz
       (i32.load
        (local.get $0)
       )
      )
      (unreachable)
     )
     (i32.const 16)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $1)
   (local.get $2)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.get $1)
   (i64.load offset=8
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $easyescrow.contract/negopurchaseAction#getSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (i32.load offset=12
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.load offset=16
     (local.get $0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (i32.const 28)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|0
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=20
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=20
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|0)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (local.get $1)
    (i32.shl
     (i32.load offset=12
      (local.get $2)
     )
     (i32.const 3)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $2
     (i32.load offset=28
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $2
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $2)
     )
    )
    (local.get $1)
   )
  )
  (local.set $1
   (i32.const 0)
  )
  (loop $for-loop|1
   (if
    (i32.eqz
     (local.tee $3
      (i32.load offset=28
       (local.get $0)
      )
     )
    )
    (unreachable)
   )
   (if
    (i32.lt_s
     (local.get $1)
     (i32.load offset=12
      (local.get $3)
     )
    )
    (block
     (if
      (i32.eqz
       (local.tee $3
        (i32.load offset=28
         (local.get $0)
        )
       )
      )
      (unreachable)
     )
     (drop
      (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
       (local.get $3)
       (local.get $1)
      )
     )
     (local.set $2
      (i32.add
       (local.get $2)
       (i32.const 24)
      )
     )
     (local.set $1
      (i32.add
       (local.get $1)
       (i32.const 1)
      )
     )
     (br $for-loop|1)
    )
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=32
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (local.set $1
   (i32.add
    (call $~lib/as-chain/varint/calcPackedVarUint32Length
     (i32.load offset=12
      (local.get $1)
     )
    )
    (local.get $2)
   )
  )
  (if
   (i32.eqz
    (local.tee $0
     (i32.load offset=32
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (i32.add
   (i32.add
    (local.get $1)
    (i32.shl
     (i32.load offset=12
      (local.get $0)
     )
     (i32.const 3)
    )
   )
   (i32.const 8)
  )
 )
 (func $easyescrow.contract/negopurchaseAction#pack (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
   (local.tee $2
    (call $~lib/as-chain/serializer/Encoder#constructor
     (call $easyescrow.contract/negopurchaseAction#getSize
      (local.get $0)
     )
    )
   )
   (i64.load
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $2)
   (i32.load offset=8
    (local.get $0)
   )
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=12
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=16
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#pack
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=20
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=28
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
   (local.get $2)
   (local.get $1)
  )
  (if
   (i32.eqz
    (local.tee $1
     (i32.load offset=32
      (local.get $0)
     )
    )
   )
   (unreachable)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
   (local.get $2)
   (local.get $1)
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $2)
   (i32.load offset=36
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
   (local.get $2)
   (i32.load offset=40
    (local.get $0)
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $2)
  )
 )
 (func $~lib/as-chain/serializer/Packer#pack@virtual (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $folding-inner2
   (block $folding-inner1
    (block $folding-inner0
     (block $default
      (block $case29
       (block $case28
        (block $case27
         (block $case26
          (block $case25
           (block $case24
            (block $case23
             (block $case22
              (block $case21
               (block $case20
                (block $case19
                 (block $case18
                  (block $case17
                   (block $case16
                    (block $case15
                     (block $case14
                      (block $case13
                       (block $case12
                        (block $case11
                         (block $case10
                          (block $case9
                           (block $case8
                            (block $case7
                             (block $case6
                              (block $case5
                               (block $case4
                                (block $case3
                                 (block $case2
                                  (block $case1
                                   (block $case0
                                    (br_table $case18 $default $case20 $case19 $case25 $default $default $default $default $default $default $default $default $default $default $case27 $default $default $default $default $default $default $default $case28 $default $default $default $case26 $default $default $default $case23 $case22 $case21 $default $default $default $default $default $case12 $default $default $default $case11 $default $default $default $default $default $case0 $default $case15 $case14 $default $default $default $default $default $default $default $default $case24 $default $case16 $default $default $case17 $case29 $default $default $case13 $default $default $case1 $case2 $case3 $case4 $case5 $case7 $case8 $case9 $default $case10 $default $case6 $default
                                     (i32.sub
                                      (i32.load
                                       (i32.sub
                                        (local.get $0)
                                        (i32.const 8)
                                       )
                                      )
                                      (i32.const 5)
                                     )
                                    )
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                                    (local.tee $1
                                     (call $~lib/as-chain/serializer/Encoder#constructor
                                      (call $easyescrow.contract/startescrowAction#getSize
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (i32.load
                                     (local.get $0)
                                    )
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=4
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#pack
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=8
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#pack
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=12
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=16
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=20
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (if
                                    (i32.eqz
                                     (local.tee $2
                                      (i32.load offset=24
                                       (local.get $0)
                                      )
                                     )
                                    )
                                    (unreachable)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                                    (local.get $1)
                                    (local.get $2)
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                                    (local.get $1)
                                    (i32.load offset=28
                                     (local.get $0)
                                    )
                                   )
                                   (call $~lib/as-chain/serializer/Encoder#packNumber<u32>
                                    (local.get $1)
                                    (i32.load offset=32
                                     (local.get $0)
                                    )
                                   )
                                   (br $folding-inner2)
                                  )
                                  (return
                                   (call $easyescrow.contract/fillescrowAction#pack
                                    (local.get $0)
                                   )
                                  )
                                 )
                                 (return
                                  (call $easyescrow.contract/fillescrowAction#pack
                                   (local.get $0)
                                  )
                                 )
                                )
                                (return
                                 (call $easyescrow.contract/negopurchaseAction#pack
                                  (local.get $0)
                                 )
                                )
                               )
                               (return
                                (call $easyescrow.contract/negopurchaseAction#pack
                                 (local.get $0)
                                )
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $1
                                 (i32.load
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (local.set $1
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (i32.add
                                 (call $escrow.tables/Escrow#getSize
                                  (local.get $1)
                                 )
                                 (call $~lib/as-chain/utils/Utils.calcPackedStringLength
                                  (i32.load offset=4
                                   (local.get $0)
                                  )
                                 )
                                )
                               )
                              )
                              (if
                               (i32.eqz
                                (local.tee $2
                                 (i32.load
                                  (local.get $0)
                                 )
                                )
                               )
                               (unreachable)
                              )
                              (call $~lib/as-chain/serializer/Encoder#pack
                               (local.get $1)
                               (local.get $2)
                              )
                              (call $~lib/as-chain/serializer/Encoder#packString
                               (local.get $1)
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                              (br $folding-inner2)
                             )
                             (return
                              (call $~lib/as-chain/serializer/Encoder#getBytes
                               (call $~lib/as-chain/serializer/Encoder#constructor
                                (i32.const 0)
                               )
                              )
                             )
                            )
                            (if
                             (i32.eqz
                              (i32.load
                               (local.get $0)
                              )
                             )
                             (unreachable)
                            )
                            (if
                             (i32.eqz
                              (local.tee $1
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (local.set $2
                             (i32.add
                              (call $~lib/as-chain/varint/calcPackedVarUint32Length
                               (i32.load offset=12
                                (local.get $1)
                               )
                              )
                              (i32.const 8)
                             )
                            )
                            (local.set $1
                             (i32.const 0)
                            )
                            (loop $for-loop|0
                             (if
                              (i32.eqz
                               (local.tee $3
                                (i32.load offset=4
                                 (local.get $0)
                                )
                               )
                              )
                              (unreachable)
                             )
                             (if
                              (i32.lt_s
                               (local.get $1)
                               (i32.load offset=12
                                (local.get $3)
                               )
                              )
                              (block
                               (if
                                (i32.eqz
                                 (local.tee $3
                                  (i32.load offset=4
                                   (local.get $0)
                                  )
                                 )
                                )
                                (unreachable)
                               )
                               (drop
                                (call $~lib/array/Array<~lib/as-chain/asset/ExtendedAsset>#__get
                                 (local.get $3)
                                 (local.get $1)
                                )
                               )
                               (local.set $2
                                (i32.add
                                 (local.get $2)
                                 (i32.const 24)
                                )
                               )
                               (local.set $1
                                (i32.add
                                 (local.get $1)
                                 (i32.const 1)
                                )
                               )
                               (br $for-loop|0)
                              )
                             )
                            )
                            (if
                             (i32.eqz
                              (local.tee $1
                               (i32.load offset=8
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (local.set $1
                             (i32.add
                              (call $~lib/as-chain/varint/calcPackedVarUint32Length
                               (i32.load offset=12
                                (local.get $1)
                               )
                              )
                              (local.get $2)
                             )
                            )
                            (if
                             (i32.eqz
                              (local.tee $2
                               (i32.load offset=8
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (local.set $1
                             (call $~lib/as-chain/serializer/Encoder#constructor
                              (i32.add
                               (local.get $1)
                               (i32.shl
                                (i32.load offset=12
                                 (local.get $2)
                                )
                                (i32.const 3)
                               )
                              )
                             )
                            )
                            (if
                             (i32.eqz
                              (local.tee $2
                               (i32.load
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (call $~lib/as-chain/serializer/Encoder#pack
                             (local.get $1)
                             (local.get $2)
                            )
                            (if
                             (i32.eqz
                              (local.tee $2
                               (i32.load offset=4
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (call $~lib/as-chain/serializer/Encoder#packObjectArray<~lib/as-chain/asset/ExtendedAsset>
                             (local.get $1)
                             (local.get $2)
                            )
                            (if
                             (i32.eqz
                              (local.tee $0
                               (i32.load offset=8
                                (local.get $0)
                               )
                              )
                             )
                             (unreachable)
                            )
                            (call $~lib/as-chain/serializer/Encoder#packNumberArray<u64>
                             (local.get $1)
                             (local.get $0)
                            )
                            (br $folding-inner2)
                           )
                           (return
                            (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
                             (local.get $0)
                            )
                           )
                          )
                          (if
                           (i32.eqz
                            (i32.load
                             (local.get $0)
                            )
                           )
                           (unreachable)
                          )
                          (local.set $1
                           (call $~lib/as-chain/serializer/Encoder#constructor
                            (i32.const 18)
                           )
                          )
                          (br $folding-inner0)
                         )
                         (if
                          (i32.eqz
                           (i32.load
                            (local.get $0)
                           )
                          )
                          (unreachable)
                         )
                         (local.set $1
                          (call $~lib/as-chain/serializer/Encoder#constructor
                           (i32.const 10)
                          )
                         )
                         (br $folding-inner0)
                        )
                        (return
                         (call $escrow.tables/EscrowGlobal#pack
                          (local.get $0)
                         )
                        )
                       )
                       (return
                        (call $escrow.tables/Escrow#pack
                         (local.get $0)
                        )
                       )
                      )
                      (return
                       (call $escrow.inline/LogEscrow#pack
                        (local.get $0)
                       )
                      )
                     )
                     (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                      (local.tee $1
                       (call $~lib/as-chain/serializer/Encoder#constructor
                        (i32.const 8)
                       )
                      )
                      (i64.load
                       (local.get $0)
                      )
                     )
                     (br $folding-inner2)
                    )
                    (call $~lib/as-chain/serializer/Encoder#pack
                     (local.tee $1
                      (call $~lib/as-chain/serializer/Encoder#constructor
                       (i32.const 8)
                      )
                     )
                     (i32.load
                      (local.get $0)
                     )
                    )
                    (br $folding-inner2)
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.tee $1
                     (call $~lib/as-chain/serializer/Encoder#constructor
                      (i32.const 16)
                     )
                    )
                    (i32.load
                     (local.get $0)
                    )
                   )
                   (call $~lib/as-chain/serializer/Encoder#packName
                    (local.get $1)
                    (i32.load offset=4
                     (local.get $0)
                    )
                   )
                   (br $folding-inner2)
                  )
                  (return
                   (call $~lib/as-chain/action/Action#pack
                    (local.get $0)
                   )
                  )
                 )
                 (i64.store
                  (i32.load offset=4
                   (local.tee $1
                    (call $~lib/array/Array<u8>#constructor
                     (i32.const 8)
                    )
                   )
                  )
                  (i64.load
                   (local.get $0)
                  )
                 )
                 (return
                  (local.get $1)
                 )
                )
                (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
                 (local.tee $1
                  (call $~lib/as-chain/serializer/Encoder#constructor
                   (i32.const 8)
                  )
                 )
                 (i64.load
                  (local.get $0)
                 )
                )
                (br $folding-inner2)
               )
               (call $~lib/as-chain/serializer/Encoder#pack
                (local.tee $1
                 (call $~lib/as-chain/serializer/Encoder#constructor
                  (i32.const 16)
                 )
                )
                (i32.load
                 (local.get $0)
                )
               )
               (br $folding-inner1)
              )
              (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
               (local.tee $1
                (call $~lib/as-chain/serializer/Encoder#constructor
                 (i32.const 16)
                )
               )
               (i64.load
                (local.get $0)
               )
              )
              (call $~lib/as-chain/serializer/Encoder#pack
               (local.get $1)
               (i32.load offset=8
                (local.get $0)
               )
              )
              (br $folding-inner2)
             )
             (call $~lib/as-chain/serializer/Encoder#pack
              (local.tee $1
               (call $~lib/as-chain/serializer/Encoder#constructor
                (i32.const 24)
               )
              )
              (i32.load
               (local.get $0)
              )
             )
             (br $folding-inner1)
            )
            (return
             (call $~lib/proton-tsc/balance/balance.tables/Balance#pack
              (local.get $0)
             )
            )
           )
           (return
            (call $~lib/proton-tsc/token/token.inline/Transfer#pack
             (local.get $0)
            )
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
           (local.tee $1
            (call $~lib/as-chain/serializer/Encoder#constructor
             (i32.const 16)
            )
           )
           (i64.load
            (local.get $0)
           )
          )
          (call $~lib/as-chain/serializer/Encoder#packNumber<u64>
           (local.get $1)
           (i64.load offset=8
            (local.get $0)
           )
          )
          (br $folding-inner2)
         )
         (return
          (call $~lib/proton-tsc/allow/allow.tables/AllowGlobals#pack
           (local.get $0)
          )
         )
        )
        (return
         (call $~lib/proton-tsc/allow/allow.tables/AllowedActor#pack
          (local.get $0)
         )
        )
       )
       (return
        (call $~lib/proton-tsc/allow/allow.tables/AllowedToken#pack
         (local.get $0)
        )
       )
      )
      (return
       (call $~lib/proton-tsc/atomicassets/atomicassets.inline/TransferNfts#pack
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (if
     (i32.eqz
      (local.tee $2
       (i32.load
        (local.get $0)
       )
      )
     )
     (unreachable)
    )
    (call $~lib/as-chain/serializer/Encoder#pack
     (local.get $1)
     (local.get $2)
    )
    (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
     (local.get $1)
     (i32.load8_u offset=4
      (local.get $0)
     )
    )
    (call $~lib/as-chain/serializer/Encoder#packNumber<u8>
     (local.get $1)
     (i32.load8_u offset=5
      (local.get $0)
     )
    )
    (br $folding-inner2)
   )
   (call $~lib/as-chain/serializer/Encoder#pack
    (local.get $1)
    (i32.load offset=4
     (local.get $0)
    )
   )
  )
  (call $~lib/as-chain/serializer/Encoder#getBytes
   (local.get $1)
  )
 )
 (func $~lib/as-chain/idxdb/IDXDB#updateEx@virtual (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64)
  (local $4 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $0
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 53)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $0)
        (i32.const 52)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 10560)
    )
    (local.set $4
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $0
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $4)
    )
    (call $~lib/as-chain/env/db_idx64_update
     (i32.load
      (local.get $1)
     )
     (local.get $3)
     (local.get $0)
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 10624)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 10624)
   )
   (call $~lib/as-chain/env/db_idx128_update
    (i32.load
     (local.get $1)
    )
    (local.get $3)
    (i32.load offset=4
     (i32.load offset=4
      (local.get $2)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~lib/as-chain/idxdb/IDXDB#storeEx@virtual (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i64)
  (local $4 i32)
  (local $5 i64)
  (block $default
   (block $case1
    (if
     (i32.ne
      (local.tee $4
       (i32.load
        (i32.sub
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 53)
     )
     (block
      (br_if $case1
       (i32.eq
        (local.get $4)
        (i32.const 52)
       )
      )
      (br $default)
     )
    )
    (call $~lib/as-chain/system/assert
     (i32.eqz
      (i32.load
       (local.get $2)
      )
     )
     (i32.const 10688)
    )
    (local.set $5
     (call $~lib/array/Array<u64>#__get
      (i32.load offset=4
       (local.get $2)
      )
      (i32.const 0)
     )
    )
    (i64.store
     (local.tee $2
      (call $~lib/rt/stub/__alloc
       (i32.const 8)
      )
     )
     (local.get $5)
    )
    (drop
     (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
      (call $~lib/as-chain/env/db_idx64_store
       (i64.load offset=8
        (local.get $0)
       )
       (i64.load offset=16
        (local.get $0)
       )
       (local.get $3)
       (local.get $1)
       (local.get $2)
      )
      (local.get $1)
      (i32.load offset=24
       (local.get $0)
      )
     )
    )
    (return)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load
      (local.get $2)
     )
     (i32.const 1)
    )
    (i32.const 10752)
   )
   (call $~lib/as-chain/system/check
    (i32.eq
     (i32.load offset=12
      (i32.load offset=4
       (local.get $2)
      )
     )
     (i32.const 2)
    )
    (i32.const 10624)
   )
   (drop
    (call $~lib/as-chain/idxdb/SecondaryIterator#constructor
     (call $~lib/as-chain/env/db_idx128_store
      (i64.load offset=8
       (local.get $0)
      )
      (i64.load offset=16
       (local.get $0)
      )
      (local.get $3)
      (local.get $1)
      (i32.load offset=4
       (i32.load offset=4
        (local.get $2)
       )
      )
     )
     (local.get $1)
     (i32.load offset=24
      (local.get $0)
     )
    )
   )
   (return)
  )
  (unreachable)
 )
 (func $~start
  (call $start:easyescrow.contract)
 )
)
