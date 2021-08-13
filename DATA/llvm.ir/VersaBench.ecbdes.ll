; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@key_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str = private unnamed_addr constant [15 x i8] c"Key %d error!\0A\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"sY\B2\16>N\DCX", [8 x i8] c"\95\8Enbz\05U{", [8 x i8] c"\F4\03y\AB\9E\0E\C53", [8 x i8] c"\17f\8D\FCr\92S-", [8 x i8] c"\8AZ\E1\F8\1A\B8\F2\DD", [8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"\ED9\D9P\FAt\BC\C4", [8 x i8] c"i\0F[\0D\9A&\93\9B", [8 x i8] c"z8\9D\105K\D2q", [8 x i8] c"\86\8E\BBQ\CA\B4Y\9A", [8 x i8] c"qx\87n\01\F1\9B*", [8 x i8] c"\AF7\FBB\1F\8C@\95", [8 x i8] c"\86\A5`\F1\0E\C6\D8[", [8 x i8] c"\0C\D3\DA\02\00!\DC\09", [8 x i8] c"\EAgk,\B7\DB+z", [8 x i8] c"\DF\D6J\81\\\AF\1A\0F", [8 x i8] c"\\Q<\9CH\86\C0\88", [8 x i8] c"\0A*\EE\AE?\F4\ABw", [8 x i8] c"\EF\1B\F0>]\FAWZ", [8 x i8] c"\88\BF\0D\B6\D7\0D\EEV", [8 x i8] c"\A1\F9\91UA\02\0BV", [8 x i8] c"o\BF\1C\AF\CF\FD\05V", [8 x i8] c"/\22\E4\9B\AB|\A1\AC", [8 x i8] c"Zka,\C2l\CEJ", [8 x i8] c"_L\03\8E\D1+.A", [8 x i8] c"c\FA\C0\D04\D9\F7\93", [8 x i8] c"a{:\0C\E8\F0q\00", [8 x i8] c"\DB\95\86\05\F8\C8\C6\06", [8 x i8] c"\ED\BF\D1\C6l)\CC\C7", [8 x i8] c"5UP\B2\15\0E$Q", [8 x i8] c"\CA\AA\AFM\EA\F1\DB\AE", [8 x i8] c"\D5\D4O\F7 h=\0D", [8 x i8] c"*+\B0\08\DF\97\C2\F2"], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"Encryption error.\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Encrypted correctly.\0A\00", align 1
@.str.3 = private unnamed_addr constant [147 x i8] c"Driver for Data Encryption Standard benchmark.\0A\0Ausage: %s <size> (where size <= 34)\0A\0Asize is the number of processing node for hardware version \0A\0A\00", align 1
@des_SPtrans = dso_local constant [8 x [64 x i64]] [[64 x i64] [i64 34080768, i64 524288, i64 33554434, i64 34080770, i64 33554432, i64 526338, i64 524290, i64 33554434, i64 526338, i64 34080768, i64 34078720, i64 2050, i64 33556482, i64 33554432, i64 0, i64 524290, i64 524288, i64 2, i64 33556480, i64 526336, i64 34080770, i64 34078720, i64 2050, i64 33556480, i64 2, i64 2048, i64 526336, i64 34078722, i64 2048, i64 33556482, i64 34078722, i64 0, i64 0, i64 34080770, i64 33556480, i64 524290, i64 34080768, i64 524288, i64 2050, i64 33556480, i64 34078722, i64 2048, i64 526336, i64 33554434, i64 526338, i64 2, i64 33554434, i64 34078720, i64 34080770, i64 526336, i64 34078720, i64 33556482, i64 33554432, i64 2050, i64 524290, i64 0, i64 524288, i64 33554432, i64 33556482, i64 34080768, i64 2, i64 34078722, i64 2048, i64 526338], [64 x i64] [i64 1074823184, i64 0, i64 1081344, i64 1074790400, i64 1073741840, i64 32784, i64 1073774592, i64 1081344, i64 32768, i64 1074790416, i64 16, i64 1073774592, i64 1048592, i64 1074823168, i64 1074790400, i64 16, i64 1048576, i64 1073774608, i64 1074790416, i64 32768, i64 1081360, i64 1073741824, i64 0, i64 1048592, i64 1073774608, i64 1081360, i64 1074823168, i64 1073741840, i64 1073741824, i64 1048576, i64 32784, i64 1074823184, i64 1048592, i64 1074823168, i64 1073774592, i64 1081360, i64 1074823184, i64 1048592, i64 1073741840, i64 0, i64 1073741824, i64 32784, i64 1048576, i64 1074790416, i64 32768, i64 1073741824, i64 1081360, i64 1073774608, i64 1074823168, i64 32768, i64 0, i64 1073741840, i64 16, i64 1074823184, i64 1081344, i64 1074790400, i64 1074790416, i64 1048576, i64 32784, i64 1073774592, i64 1073774608, i64 16, i64 1074790400, i64 1081344], [64 x i64] [i64 67108865, i64 67371264, i64 256, i64 67109121, i64 262145, i64 67108864, i64 67109121, i64 262400, i64 67109120, i64 262144, i64 67371008, i64 1, i64 67371265, i64 257, i64 1, i64 67371009, i64 0, i64 262145, i64 67371264, i64 256, i64 257, i64 67371265, i64 262144, i64 67108865, i64 67371009, i64 67109120, i64 262401, i64 67371008, i64 262400, i64 0, i64 67108864, i64 262401, i64 67371264, i64 256, i64 1, i64 262144, i64 257, i64 262145, i64 67371008, i64 67109121, i64 0, i64 67371264, i64 262400, i64 67371009, i64 262145, i64 67108864, i64 67371265, i64 1, i64 262401, i64 67108865, i64 67108864, i64 67371265, i64 262144, i64 67109120, i64 67109121, i64 262400, i64 67109120, i64 0, i64 67371009, i64 257, i64 67108865, i64 262401, i64 256, i64 67371008], [64 x i64] [i64 4198408, i64 268439552, i64 8, i64 272633864, i64 0, i64 272629760, i64 268439560, i64 4194312, i64 272633856, i64 268435464, i64 268435456, i64 4104, i64 268435464, i64 4198408, i64 4194304, i64 268435456, i64 272629768, i64 4198400, i64 4096, i64 8, i64 4198400, i64 268439560, i64 272629760, i64 4096, i64 4104, i64 0, i64 4194312, i64 272633856, i64 268439552, i64 272629768, i64 272633864, i64 4194304, i64 272629768, i64 4104, i64 4194304, i64 268435464, i64 4198400, i64 268439552, i64 8, i64 272629760, i64 268439560, i64 0, i64 4096, i64 4194312, i64 0, i64 272629768, i64 272633856, i64 4096, i64 268435456, i64 272633864, i64 4198408, i64 4194304, i64 272633864, i64 8, i64 268439552, i64 4198408, i64 4194312, i64 4198400, i64 272629760, i64 268439560, i64 4104, i64 268435456, i64 268435464, i64 272633856], [64 x i64] [i64 134217728, i64 65536, i64 1024, i64 134284320, i64 134283296, i64 134218752, i64 66592, i64 134283264, i64 65536, i64 32, i64 134217760, i64 66560, i64 134218784, i64 134283296, i64 134284288, i64 0, i64 66560, i64 134217728, i64 65568, i64 1056, i64 134218752, i64 66592, i64 0, i64 134217760, i64 32, i64 134218784, i64 134284320, i64 65568, i64 134283264, i64 1024, i64 1056, i64 134284288, i64 134284288, i64 134218784, i64 65568, i64 134283264, i64 65536, i64 32, i64 134217760, i64 134218752, i64 134217728, i64 66560, i64 134284320, i64 0, i64 66592, i64 134217728, i64 1024, i64 65568, i64 134218784, i64 1024, i64 0, i64 134284320, i64 134283296, i64 134284288, i64 1056, i64 65536, i64 66560, i64 134283296, i64 134218752, i64 1056, i64 32, i64 66592, i64 134283264, i64 134217760], [64 x i64] [i64 2147483712, i64 2097216, i64 0, i64 2149588992, i64 2097216, i64 8192, i64 2147491904, i64 2097152, i64 8256, i64 2149589056, i64 2105344, i64 2147483648, i64 2147491840, i64 2147483712, i64 2149580800, i64 2105408, i64 2097152, i64 2147491904, i64 2149580864, i64 0, i64 8192, i64 64, i64 2149588992, i64 2149580864, i64 2149589056, i64 2149580800, i64 2147483648, i64 8256, i64 64, i64 2105344, i64 2105408, i64 2147491840, i64 8256, i64 2147483648, i64 2147491840, i64 2105408, i64 2149588992, i64 2097216, i64 0, i64 2147491840, i64 2147483648, i64 8192, i64 2149580864, i64 2097152, i64 2097216, i64 2149589056, i64 2105344, i64 64, i64 2149589056, i64 2105344, i64 2097152, i64 2147491904, i64 2147483712, i64 2149580800, i64 2105408, i64 0, i64 8192, i64 2147483712, i64 2147491904, i64 2149588992, i64 2149580800, i64 8256, i64 64, i64 2149580864], [64 x i64] [i64 16384, i64 512, i64 16777728, i64 16777220, i64 16794116, i64 16388, i64 16896, i64 0, i64 16777216, i64 16777732, i64 516, i64 16793600, i64 4, i64 16794112, i64 16793600, i64 516, i64 16777732, i64 16384, i64 16388, i64 16794116, i64 0, i64 16777728, i64 16777220, i64 16896, i64 16793604, i64 16900, i64 16794112, i64 4, i64 16900, i64 16793604, i64 512, i64 16777216, i64 16900, i64 16793600, i64 16793604, i64 516, i64 16384, i64 512, i64 16777216, i64 16793604, i64 16777732, i64 16900, i64 16896, i64 0, i64 512, i64 16777220, i64 4, i64 16777728, i64 0, i64 16777732, i64 16777728, i64 16896, i64 516, i64 16384, i64 16794116, i64 16777216, i64 16794112, i64 4, i64 16388, i64 16794116, i64 16777220, i64 16794112, i64 16793600, i64 16388], [64 x i64] [i64 545259648, i64 545390592, i64 131200, i64 0, i64 537001984, i64 8388736, i64 545259520, i64 545390720, i64 128, i64 536870912, i64 8519680, i64 131200, i64 8519808, i64 537002112, i64 536871040, i64 545259520, i64 131072, i64 8519808, i64 8388736, i64 537001984, i64 545390720, i64 536871040, i64 0, i64 8519680, i64 536870912, i64 8388608, i64 537002112, i64 545259648, i64 8388608, i64 131072, i64 545390592, i64 128, i64 8388608, i64 131072, i64 536871040, i64 545390720, i64 131200, i64 536870912, i64 0, i64 8519680, i64 545259648, i64 537002112, i64 537001984, i64 8388736, i64 545390592, i64 128, i64 8388736, i64 537001984, i64 545390720, i64 8388608, i64 545259520, i64 536871040, i64 8519680, i64 131200, i64 537002112, i64 545259520, i64 128, i64 545390592, i64 8519808, i64 0, i64 536870912, i64 545259648, i64 131072, i64 8519808]], align 16
@libdes_version = dso_local global i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"libdes v 3.24 - 20-Apr-1996 - eay\00", align 1
@DES_version = dso_local global i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.5, i32 0, i32 0), align 8
@.str.1.5 = private unnamed_addr constant [37 x i8] c"DES part of SSLeay 0.6.6 06-Dec-1996\00", align 1
@des_options.init = internal global i32 1, align 4
@.str.2.6 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.3.7 = private unnamed_addr constant [5 x i8] c"cisc\00", align 1
@.str.4.8 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@des_options.buf = internal global [32 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [17 x i8] c"des(%s,%s,%s,%s)\00", align 1
@des_check_key = dso_local global i32 0, align 4
@odd_parity = internal constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal global [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\1F\1F\1F\1F", [8 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@des_set_key.shifts2 = internal global [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@des_skb = internal constant [8 x [64 x i64]] [[64 x i64] [i64 0, i64 16, i64 536870912, i64 536870928, i64 65536, i64 65552, i64 536936448, i64 536936464, i64 2048, i64 2064, i64 536872960, i64 536872976, i64 67584, i64 67600, i64 536938496, i64 536938512, i64 32, i64 48, i64 536870944, i64 536870960, i64 65568, i64 65584, i64 536936480, i64 536936496, i64 2080, i64 2096, i64 536872992, i64 536873008, i64 67616, i64 67632, i64 536938528, i64 536938544, i64 524288, i64 524304, i64 537395200, i64 537395216, i64 589824, i64 589840, i64 537460736, i64 537460752, i64 526336, i64 526352, i64 537397248, i64 537397264, i64 591872, i64 591888, i64 537462784, i64 537462800, i64 524320, i64 524336, i64 537395232, i64 537395248, i64 589856, i64 589872, i64 537460768, i64 537460784, i64 526368, i64 526384, i64 537397280, i64 537397296, i64 591904, i64 591920, i64 537462816, i64 537462832], [64 x i64] [i64 0, i64 33554432, i64 8192, i64 33562624, i64 2097152, i64 35651584, i64 2105344, i64 35659776, i64 4, i64 33554436, i64 8196, i64 33562628, i64 2097156, i64 35651588, i64 2105348, i64 35659780, i64 1024, i64 33555456, i64 9216, i64 33563648, i64 2098176, i64 35652608, i64 2106368, i64 35660800, i64 1028, i64 33555460, i64 9220, i64 33563652, i64 2098180, i64 35652612, i64 2106372, i64 35660804, i64 268435456, i64 301989888, i64 268443648, i64 301998080, i64 270532608, i64 304087040, i64 270540800, i64 304095232, i64 268435460, i64 301989892, i64 268443652, i64 301998084, i64 270532612, i64 304087044, i64 270540804, i64 304095236, i64 268436480, i64 301990912, i64 268444672, i64 301999104, i64 270533632, i64 304088064, i64 270541824, i64 304096256, i64 268436484, i64 301990916, i64 268444676, i64 301999108, i64 270533636, i64 304088068, i64 270541828, i64 304096260], [64 x i64] [i64 0, i64 1, i64 262144, i64 262145, i64 16777216, i64 16777217, i64 17039360, i64 17039361, i64 2, i64 3, i64 262146, i64 262147, i64 16777218, i64 16777219, i64 17039362, i64 17039363, i64 512, i64 513, i64 262656, i64 262657, i64 16777728, i64 16777729, i64 17039872, i64 17039873, i64 514, i64 515, i64 262658, i64 262659, i64 16777730, i64 16777731, i64 17039874, i64 17039875, i64 134217728, i64 134217729, i64 134479872, i64 134479873, i64 150994944, i64 150994945, i64 151257088, i64 151257089, i64 134217730, i64 134217731, i64 134479874, i64 134479875, i64 150994946, i64 150994947, i64 151257090, i64 151257091, i64 134218240, i64 134218241, i64 134480384, i64 134480385, i64 150995456, i64 150995457, i64 151257600, i64 151257601, i64 134218242, i64 134218243, i64 134480386, i64 134480387, i64 150995458, i64 150995459, i64 151257602, i64 151257603], [64 x i64] [i64 0, i64 1048576, i64 256, i64 1048832, i64 8, i64 1048584, i64 264, i64 1048840, i64 4096, i64 1052672, i64 4352, i64 1052928, i64 4104, i64 1052680, i64 4360, i64 1052936, i64 67108864, i64 68157440, i64 67109120, i64 68157696, i64 67108872, i64 68157448, i64 67109128, i64 68157704, i64 67112960, i64 68161536, i64 67113216, i64 68161792, i64 67112968, i64 68161544, i64 67113224, i64 68161800, i64 131072, i64 1179648, i64 131328, i64 1179904, i64 131080, i64 1179656, i64 131336, i64 1179912, i64 135168, i64 1183744, i64 135424, i64 1184000, i64 135176, i64 1183752, i64 135432, i64 1184008, i64 67239936, i64 68288512, i64 67240192, i64 68288768, i64 67239944, i64 68288520, i64 67240200, i64 68288776, i64 67244032, i64 68292608, i64 67244288, i64 68292864, i64 67244040, i64 68292616, i64 67244296, i64 68292872], [64 x i64] [i64 0, i64 268435456, i64 65536, i64 268500992, i64 4, i64 268435460, i64 65540, i64 268500996, i64 536870912, i64 805306368, i64 536936448, i64 805371904, i64 536870916, i64 805306372, i64 536936452, i64 805371908, i64 1048576, i64 269484032, i64 1114112, i64 269549568, i64 1048580, i64 269484036, i64 1114116, i64 269549572, i64 537919488, i64 806354944, i64 537985024, i64 806420480, i64 537919492, i64 806354948, i64 537985028, i64 806420484, i64 4096, i64 268439552, i64 69632, i64 268505088, i64 4100, i64 268439556, i64 69636, i64 268505092, i64 536875008, i64 805310464, i64 536940544, i64 805376000, i64 536875012, i64 805310468, i64 536940548, i64 805376004, i64 1052672, i64 269488128, i64 1118208, i64 269553664, i64 1052676, i64 269488132, i64 1118212, i64 269553668, i64 537923584, i64 806359040, i64 537989120, i64 806424576, i64 537923588, i64 806359044, i64 537989124, i64 806424580], [64 x i64] [i64 0, i64 134217728, i64 8, i64 134217736, i64 1024, i64 134218752, i64 1032, i64 134218760, i64 131072, i64 134348800, i64 131080, i64 134348808, i64 132096, i64 134349824, i64 132104, i64 134349832, i64 1, i64 134217729, i64 9, i64 134217737, i64 1025, i64 134218753, i64 1033, i64 134218761, i64 131073, i64 134348801, i64 131081, i64 134348809, i64 132097, i64 134349825, i64 132105, i64 134349833, i64 33554432, i64 167772160, i64 33554440, i64 167772168, i64 33555456, i64 167773184, i64 33555464, i64 167773192, i64 33685504, i64 167903232, i64 33685512, i64 167903240, i64 33686528, i64 167904256, i64 33686536, i64 167904264, i64 33554433, i64 167772161, i64 33554441, i64 167772169, i64 33555457, i64 167773185, i64 33555465, i64 167773193, i64 33685505, i64 167903233, i64 33685513, i64 167903241, i64 33686529, i64 167904257, i64 33686537, i64 167904265], [64 x i64] [i64 0, i64 256, i64 524288, i64 524544, i64 16777216, i64 16777472, i64 17301504, i64 17301760, i64 16, i64 272, i64 524304, i64 524560, i64 16777232, i64 16777488, i64 17301520, i64 17301776, i64 2097152, i64 2097408, i64 2621440, i64 2621696, i64 18874368, i64 18874624, i64 19398656, i64 19398912, i64 2097168, i64 2097424, i64 2621456, i64 2621712, i64 18874384, i64 18874640, i64 19398672, i64 19398928, i64 512, i64 768, i64 524800, i64 525056, i64 16777728, i64 16777984, i64 17302016, i64 17302272, i64 528, i64 784, i64 524816, i64 525072, i64 16777744, i64 16778000, i64 17302032, i64 17302288, i64 2097664, i64 2097920, i64 2621952, i64 2622208, i64 18874880, i64 18875136, i64 19399168, i64 19399424, i64 2097680, i64 2097936, i64 2621968, i64 2622224, i64 18874896, i64 18875152, i64 19399184, i64 19399440], [64 x i64] [i64 0, i64 67108864, i64 262144, i64 67371008, i64 2, i64 67108866, i64 262146, i64 67371010, i64 8192, i64 67117056, i64 270336, i64 67379200, i64 8194, i64 67117058, i64 270338, i64 67379202, i64 32, i64 67108896, i64 262176, i64 67371040, i64 34, i64 67108898, i64 262178, i64 67371042, i64 8224, i64 67117088, i64 270368, i64 67379232, i64 8226, i64 67117090, i64 270370, i64 67379234, i64 2048, i64 67110912, i64 264192, i64 67373056, i64 2050, i64 67110914, i64 264194, i64 67373058, i64 10240, i64 67119104, i64 272384, i64 67381248, i64 10242, i64 67119106, i64 272386, i64 67381250, i64 2080, i64 67110944, i64 264224, i64 67373088, i64 2082, i64 67110946, i64 264226, i64 67373090, i64 10272, i64 67119136, i64 272416, i64 67381280, i64 10274, i64 67119138, i64 272418, i64 67381282]], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_encrypt(i64* %0, %struct.des_ks_struct* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.des_ks_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load i64*, i64** %4, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = lshr i64 %21, 4
  %23 = load i64, i64* %8, align 8
  %24 = xor i64 %22, %23
  %25 = and i64 %24, 252645135
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %8, align 8
  %28 = xor i64 %27, %26
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = shl i64 %29, 4
  %31 = load i64, i64* %7, align 8
  %32 = xor i64 %31, %30
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = lshr i64 %33, 16
  %35 = load i64, i64* %7, align 8
  %36 = xor i64 %34, %35
  %37 = and i64 %36, 65535
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = xor i64 %39, %38
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = shl i64 %41, 16
  %43 = load i64, i64* %8, align 8
  %44 = xor i64 %43, %42
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = lshr i64 %45, 2
  %47 = load i64, i64* %8, align 8
  %48 = xor i64 %46, %47
  %49 = and i64 %48, 858993459
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %8, align 8
  %52 = xor i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = shl i64 %53, 2
  %55 = load i64, i64* %7, align 8
  %56 = xor i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = lshr i64 %57, 8
  %59 = load i64, i64* %7, align 8
  %60 = xor i64 %58, %59
  %61 = and i64 %60, 16711935
  store i64 %61, i64* %13, align 8
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %7, align 8
  %64 = xor i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %13, align 8
  %66 = shl i64 %65, 8
  %67 = load i64, i64* %8, align 8
  %68 = xor i64 %67, %66
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %7, align 8
  %70 = lshr i64 %69, 1
  %71 = load i64, i64* %8, align 8
  %72 = xor i64 %70, %71
  %73 = and i64 %72, 1431655765
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %8, align 8
  %76 = xor i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %13, align 8
  %78 = shl i64 %77, 1
  %79 = load i64, i64* %7, align 8
  %80 = xor i64 %79, %78
  store i64 %80, i64* %7, align 8
  %81 = load i64, i64* %8, align 8
  %82 = lshr i64 %81, 29
  %83 = load i64, i64* %8, align 8
  %84 = shl i64 %83, 3
  %85 = add i64 %82, %84
  %86 = and i64 %85, 4294967295
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %7, align 8
  %88 = lshr i64 %87, 29
  %89 = load i64, i64* %7, align 8
  %90 = shl i64 %89, 3
  %91 = add i64 %88, %90
  %92 = and i64 %91, 4294967295
  store i64 %92, i64* %7, align 8
  %93 = load %struct.des_ks_struct*, %struct.des_ks_struct** %5, align 8
  %94 = bitcast %struct.des_ks_struct* %93 to i64*
  store i64* %94, i64** %12, align 8
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %390

97:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %386, %97
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %101, label %389

101:                                              ; preds = %98
  %102 = load i64, i64* %8, align 8
  %103 = load i64*, i64** %12, align 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 0
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = xor i64 %102, %108
  store i64 %109, i64* %10, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64*, i64** %12, align 8
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 0
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %111, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = xor i64 %110, %117
  store i64 %118, i64* %9, align 8
  %119 = load i64, i64* %9, align 8
  %120 = lshr i64 %119, 4
  %121 = load i64, i64* %9, align 8
  %122 = shl i64 %121, 28
  %123 = add i64 %120, %122
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %10, align 8
  %125 = lshr i64 %124, 2
  %126 = and i64 %125, 63
  %127 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = lshr i64 %129, 10
  %131 = and i64 %130, 63
  %132 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = xor i64 %128, %133
  %135 = load i64, i64* %10, align 8
  %136 = lshr i64 %135, 18
  %137 = and i64 %136, 63
  %138 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = xor i64 %134, %139
  %141 = load i64, i64* %10, align 8
  %142 = lshr i64 %141, 26
  %143 = and i64 %142, 63
  %144 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = xor i64 %140, %145
  %147 = load i64, i64* %9, align 8
  %148 = lshr i64 %147, 2
  %149 = and i64 %148, 63
  %150 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = xor i64 %146, %151
  %153 = load i64, i64* %9, align 8
  %154 = lshr i64 %153, 10
  %155 = and i64 %154, 63
  %156 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = xor i64 %152, %157
  %159 = load i64, i64* %9, align 8
  %160 = lshr i64 %159, 18
  %161 = and i64 %160, 63
  %162 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = xor i64 %158, %163
  %165 = load i64, i64* %9, align 8
  %166 = lshr i64 %165, 26
  %167 = and i64 %166, 63
  %168 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = xor i64 %164, %169
  %171 = load i64, i64* %7, align 8
  %172 = xor i64 %171, %170
  store i64 %172, i64* %7, align 8
  %173 = load i64, i64* %7, align 8
  %174 = load i64*, i64** %12, align 8
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 2
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %174, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = xor i64 %173, %179
  store i64 %180, i64* %10, align 8
  %181 = load i64, i64* %7, align 8
  %182 = load i64*, i64** %12, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 2
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %182, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = xor i64 %181, %188
  store i64 %189, i64* %9, align 8
  %190 = load i64, i64* %9, align 8
  %191 = lshr i64 %190, 4
  %192 = load i64, i64* %9, align 8
  %193 = shl i64 %192, 28
  %194 = add i64 %191, %193
  store i64 %194, i64* %9, align 8
  %195 = load i64, i64* %10, align 8
  %196 = lshr i64 %195, 2
  %197 = and i64 %196, 63
  %198 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* %10, align 8
  %201 = lshr i64 %200, 10
  %202 = and i64 %201, 63
  %203 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %202
  %204 = load i64, i64* %203, align 8
  %205 = xor i64 %199, %204
  %206 = load i64, i64* %10, align 8
  %207 = lshr i64 %206, 18
  %208 = and i64 %207, 63
  %209 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = xor i64 %205, %210
  %212 = load i64, i64* %10, align 8
  %213 = lshr i64 %212, 26
  %214 = and i64 %213, 63
  %215 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = xor i64 %211, %216
  %218 = load i64, i64* %9, align 8
  %219 = lshr i64 %218, 2
  %220 = and i64 %219, 63
  %221 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = xor i64 %217, %222
  %224 = load i64, i64* %9, align 8
  %225 = lshr i64 %224, 10
  %226 = and i64 %225, 63
  %227 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = xor i64 %223, %228
  %230 = load i64, i64* %9, align 8
  %231 = lshr i64 %230, 18
  %232 = and i64 %231, 63
  %233 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %232
  %234 = load i64, i64* %233, align 8
  %235 = xor i64 %229, %234
  %236 = load i64, i64* %9, align 8
  %237 = lshr i64 %236, 26
  %238 = and i64 %237, 63
  %239 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = xor i64 %235, %240
  %242 = load i64, i64* %8, align 8
  %243 = xor i64 %242, %241
  store i64 %243, i64* %8, align 8
  %244 = load i64, i64* %8, align 8
  %245 = load i64*, i64** %12, align 8
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %245, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = xor i64 %244, %250
  store i64 %251, i64* %10, align 8
  %252 = load i64, i64* %8, align 8
  %253 = load i64*, i64** %12, align 8
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 %254, 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %253, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = xor i64 %252, %259
  store i64 %260, i64* %9, align 8
  %261 = load i64, i64* %9, align 8
  %262 = lshr i64 %261, 4
  %263 = load i64, i64* %9, align 8
  %264 = shl i64 %263, 28
  %265 = add i64 %262, %264
  store i64 %265, i64* %9, align 8
  %266 = load i64, i64* %10, align 8
  %267 = lshr i64 %266, 2
  %268 = and i64 %267, 63
  %269 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* %10, align 8
  %272 = lshr i64 %271, 10
  %273 = and i64 %272, 63
  %274 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = xor i64 %270, %275
  %277 = load i64, i64* %10, align 8
  %278 = lshr i64 %277, 18
  %279 = and i64 %278, 63
  %280 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %279
  %281 = load i64, i64* %280, align 8
  %282 = xor i64 %276, %281
  %283 = load i64, i64* %10, align 8
  %284 = lshr i64 %283, 26
  %285 = and i64 %284, 63
  %286 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = xor i64 %282, %287
  %289 = load i64, i64* %9, align 8
  %290 = lshr i64 %289, 2
  %291 = and i64 %290, 63
  %292 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %291
  %293 = load i64, i64* %292, align 8
  %294 = xor i64 %288, %293
  %295 = load i64, i64* %9, align 8
  %296 = lshr i64 %295, 10
  %297 = and i64 %296, 63
  %298 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = xor i64 %294, %299
  %301 = load i64, i64* %9, align 8
  %302 = lshr i64 %301, 18
  %303 = and i64 %302, 63
  %304 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = xor i64 %300, %305
  %307 = load i64, i64* %9, align 8
  %308 = lshr i64 %307, 26
  %309 = and i64 %308, 63
  %310 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %309
  %311 = load i64, i64* %310, align 8
  %312 = xor i64 %306, %311
  %313 = load i64, i64* %7, align 8
  %314 = xor i64 %313, %312
  store i64 %314, i64* %7, align 8
  %315 = load i64, i64* %7, align 8
  %316 = load i64*, i64** %12, align 8
  %317 = load i32, i32* %11, align 4
  %318 = add nsw i32 %317, 6
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i64, i64* %316, i64 %319
  %321 = load i64, i64* %320, align 8
  %322 = xor i64 %315, %321
  store i64 %322, i64* %10, align 8
  %323 = load i64, i64* %7, align 8
  %324 = load i64*, i64** %12, align 8
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 6
  %327 = add nsw i32 %326, 1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i64, i64* %324, i64 %328
  %330 = load i64, i64* %329, align 8
  %331 = xor i64 %323, %330
  store i64 %331, i64* %9, align 8
  %332 = load i64, i64* %9, align 8
  %333 = lshr i64 %332, 4
  %334 = load i64, i64* %9, align 8
  %335 = shl i64 %334, 28
  %336 = add i64 %333, %335
  store i64 %336, i64* %9, align 8
  %337 = load i64, i64* %10, align 8
  %338 = lshr i64 %337, 2
  %339 = and i64 %338, 63
  %340 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* %10, align 8
  %343 = lshr i64 %342, 10
  %344 = and i64 %343, 63
  %345 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %344
  %346 = load i64, i64* %345, align 8
  %347 = xor i64 %341, %346
  %348 = load i64, i64* %10, align 8
  %349 = lshr i64 %348, 18
  %350 = and i64 %349, 63
  %351 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = xor i64 %347, %352
  %354 = load i64, i64* %10, align 8
  %355 = lshr i64 %354, 26
  %356 = and i64 %355, 63
  %357 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = xor i64 %353, %358
  %360 = load i64, i64* %9, align 8
  %361 = lshr i64 %360, 2
  %362 = and i64 %361, 63
  %363 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = xor i64 %359, %364
  %366 = load i64, i64* %9, align 8
  %367 = lshr i64 %366, 10
  %368 = and i64 %367, 63
  %369 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = xor i64 %365, %370
  %372 = load i64, i64* %9, align 8
  %373 = lshr i64 %372, 18
  %374 = and i64 %373, 63
  %375 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = xor i64 %371, %376
  %378 = load i64, i64* %9, align 8
  %379 = lshr i64 %378, 26
  %380 = and i64 %379, 63
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = xor i64 %377, %382
  %384 = load i64, i64* %8, align 8
  %385 = xor i64 %384, %383
  store i64 %385, i64* %8, align 8
  br label %386

386:                                              ; preds = %101
  %387 = load i32, i32* %11, align 4
  %388 = add nsw i32 %387, 8
  store i32 %388, i32* %11, align 4
  br label %98

389:                                              ; preds = %98
  br label %683

390:                                              ; preds = %3
  store i32 30, i32* %11, align 4
  br label %391

391:                                              ; preds = %679, %390
  %392 = load i32, i32* %11, align 4
  %393 = icmp sgt i32 %392, 0
  br i1 %393, label %394, label %682

394:                                              ; preds = %391
  %395 = load i64, i64* %8, align 8
  %396 = load i64*, i64** %12, align 8
  %397 = load i32, i32* %11, align 4
  %398 = sub nsw i32 %397, 0
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %396, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = xor i64 %395, %401
  store i64 %402, i64* %10, align 8
  %403 = load i64, i64* %8, align 8
  %404 = load i64*, i64** %12, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sub nsw i32 %405, 0
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %404, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = xor i64 %403, %410
  store i64 %411, i64* %9, align 8
  %412 = load i64, i64* %9, align 8
  %413 = lshr i64 %412, 4
  %414 = load i64, i64* %9, align 8
  %415 = shl i64 %414, 28
  %416 = add i64 %413, %415
  store i64 %416, i64* %9, align 8
  %417 = load i64, i64* %10, align 8
  %418 = lshr i64 %417, 2
  %419 = and i64 %418, 63
  %420 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* %10, align 8
  %423 = lshr i64 %422, 10
  %424 = and i64 %423, 63
  %425 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %424
  %426 = load i64, i64* %425, align 8
  %427 = xor i64 %421, %426
  %428 = load i64, i64* %10, align 8
  %429 = lshr i64 %428, 18
  %430 = and i64 %429, 63
  %431 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %430
  %432 = load i64, i64* %431, align 8
  %433 = xor i64 %427, %432
  %434 = load i64, i64* %10, align 8
  %435 = lshr i64 %434, 26
  %436 = and i64 %435, 63
  %437 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %436
  %438 = load i64, i64* %437, align 8
  %439 = xor i64 %433, %438
  %440 = load i64, i64* %9, align 8
  %441 = lshr i64 %440, 2
  %442 = and i64 %441, 63
  %443 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %442
  %444 = load i64, i64* %443, align 8
  %445 = xor i64 %439, %444
  %446 = load i64, i64* %9, align 8
  %447 = lshr i64 %446, 10
  %448 = and i64 %447, 63
  %449 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %448
  %450 = load i64, i64* %449, align 8
  %451 = xor i64 %445, %450
  %452 = load i64, i64* %9, align 8
  %453 = lshr i64 %452, 18
  %454 = and i64 %453, 63
  %455 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %454
  %456 = load i64, i64* %455, align 8
  %457 = xor i64 %451, %456
  %458 = load i64, i64* %9, align 8
  %459 = lshr i64 %458, 26
  %460 = and i64 %459, 63
  %461 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %460
  %462 = load i64, i64* %461, align 8
  %463 = xor i64 %457, %462
  %464 = load i64, i64* %7, align 8
  %465 = xor i64 %464, %463
  store i64 %465, i64* %7, align 8
  %466 = load i64, i64* %7, align 8
  %467 = load i64*, i64** %12, align 8
  %468 = load i32, i32* %11, align 4
  %469 = sub nsw i32 %468, 2
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i64, i64* %467, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = xor i64 %466, %472
  store i64 %473, i64* %10, align 8
  %474 = load i64, i64* %7, align 8
  %475 = load i64*, i64** %12, align 8
  %476 = load i32, i32* %11, align 4
  %477 = sub nsw i32 %476, 2
  %478 = add nsw i32 %477, 1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i64, i64* %475, i64 %479
  %481 = load i64, i64* %480, align 8
  %482 = xor i64 %474, %481
  store i64 %482, i64* %9, align 8
  %483 = load i64, i64* %9, align 8
  %484 = lshr i64 %483, 4
  %485 = load i64, i64* %9, align 8
  %486 = shl i64 %485, 28
  %487 = add i64 %484, %486
  store i64 %487, i64* %9, align 8
  %488 = load i64, i64* %10, align 8
  %489 = lshr i64 %488, 2
  %490 = and i64 %489, 63
  %491 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* %10, align 8
  %494 = lshr i64 %493, 10
  %495 = and i64 %494, 63
  %496 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %495
  %497 = load i64, i64* %496, align 8
  %498 = xor i64 %492, %497
  %499 = load i64, i64* %10, align 8
  %500 = lshr i64 %499, 18
  %501 = and i64 %500, 63
  %502 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %501
  %503 = load i64, i64* %502, align 8
  %504 = xor i64 %498, %503
  %505 = load i64, i64* %10, align 8
  %506 = lshr i64 %505, 26
  %507 = and i64 %506, 63
  %508 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = xor i64 %504, %509
  %511 = load i64, i64* %9, align 8
  %512 = lshr i64 %511, 2
  %513 = and i64 %512, 63
  %514 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = xor i64 %510, %515
  %517 = load i64, i64* %9, align 8
  %518 = lshr i64 %517, 10
  %519 = and i64 %518, 63
  %520 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = xor i64 %516, %521
  %523 = load i64, i64* %9, align 8
  %524 = lshr i64 %523, 18
  %525 = and i64 %524, 63
  %526 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %525
  %527 = load i64, i64* %526, align 8
  %528 = xor i64 %522, %527
  %529 = load i64, i64* %9, align 8
  %530 = lshr i64 %529, 26
  %531 = and i64 %530, 63
  %532 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %531
  %533 = load i64, i64* %532, align 8
  %534 = xor i64 %528, %533
  %535 = load i64, i64* %8, align 8
  %536 = xor i64 %535, %534
  store i64 %536, i64* %8, align 8
  %537 = load i64, i64* %8, align 8
  %538 = load i64*, i64** %12, align 8
  %539 = load i32, i32* %11, align 4
  %540 = sub nsw i32 %539, 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i64, i64* %538, i64 %541
  %543 = load i64, i64* %542, align 8
  %544 = xor i64 %537, %543
  store i64 %544, i64* %10, align 8
  %545 = load i64, i64* %8, align 8
  %546 = load i64*, i64** %12, align 8
  %547 = load i32, i32* %11, align 4
  %548 = sub nsw i32 %547, 4
  %549 = add nsw i32 %548, 1
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %546, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = xor i64 %545, %552
  store i64 %553, i64* %9, align 8
  %554 = load i64, i64* %9, align 8
  %555 = lshr i64 %554, 4
  %556 = load i64, i64* %9, align 8
  %557 = shl i64 %556, 28
  %558 = add i64 %555, %557
  store i64 %558, i64* %9, align 8
  %559 = load i64, i64* %10, align 8
  %560 = lshr i64 %559, 2
  %561 = and i64 %560, 63
  %562 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %561
  %563 = load i64, i64* %562, align 8
  %564 = load i64, i64* %10, align 8
  %565 = lshr i64 %564, 10
  %566 = and i64 %565, 63
  %567 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %566
  %568 = load i64, i64* %567, align 8
  %569 = xor i64 %563, %568
  %570 = load i64, i64* %10, align 8
  %571 = lshr i64 %570, 18
  %572 = and i64 %571, 63
  %573 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %572
  %574 = load i64, i64* %573, align 8
  %575 = xor i64 %569, %574
  %576 = load i64, i64* %10, align 8
  %577 = lshr i64 %576, 26
  %578 = and i64 %577, 63
  %579 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %578
  %580 = load i64, i64* %579, align 8
  %581 = xor i64 %575, %580
  %582 = load i64, i64* %9, align 8
  %583 = lshr i64 %582, 2
  %584 = and i64 %583, 63
  %585 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %584
  %586 = load i64, i64* %585, align 8
  %587 = xor i64 %581, %586
  %588 = load i64, i64* %9, align 8
  %589 = lshr i64 %588, 10
  %590 = and i64 %589, 63
  %591 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %590
  %592 = load i64, i64* %591, align 8
  %593 = xor i64 %587, %592
  %594 = load i64, i64* %9, align 8
  %595 = lshr i64 %594, 18
  %596 = and i64 %595, 63
  %597 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %596
  %598 = load i64, i64* %597, align 8
  %599 = xor i64 %593, %598
  %600 = load i64, i64* %9, align 8
  %601 = lshr i64 %600, 26
  %602 = and i64 %601, 63
  %603 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %602
  %604 = load i64, i64* %603, align 8
  %605 = xor i64 %599, %604
  %606 = load i64, i64* %7, align 8
  %607 = xor i64 %606, %605
  store i64 %607, i64* %7, align 8
  %608 = load i64, i64* %7, align 8
  %609 = load i64*, i64** %12, align 8
  %610 = load i32, i32* %11, align 4
  %611 = sub nsw i32 %610, 6
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds i64, i64* %609, i64 %612
  %614 = load i64, i64* %613, align 8
  %615 = xor i64 %608, %614
  store i64 %615, i64* %10, align 8
  %616 = load i64, i64* %7, align 8
  %617 = load i64*, i64** %12, align 8
  %618 = load i32, i32* %11, align 4
  %619 = sub nsw i32 %618, 6
  %620 = add nsw i32 %619, 1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i64, i64* %617, i64 %621
  %623 = load i64, i64* %622, align 8
  %624 = xor i64 %616, %623
  store i64 %624, i64* %9, align 8
  %625 = load i64, i64* %9, align 8
  %626 = lshr i64 %625, 4
  %627 = load i64, i64* %9, align 8
  %628 = shl i64 %627, 28
  %629 = add i64 %626, %628
  store i64 %629, i64* %9, align 8
  %630 = load i64, i64* %10, align 8
  %631 = lshr i64 %630, 2
  %632 = and i64 %631, 63
  %633 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %632
  %634 = load i64, i64* %633, align 8
  %635 = load i64, i64* %10, align 8
  %636 = lshr i64 %635, 10
  %637 = and i64 %636, 63
  %638 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = xor i64 %634, %639
  %641 = load i64, i64* %10, align 8
  %642 = lshr i64 %641, 18
  %643 = and i64 %642, 63
  %644 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %643
  %645 = load i64, i64* %644, align 8
  %646 = xor i64 %640, %645
  %647 = load i64, i64* %10, align 8
  %648 = lshr i64 %647, 26
  %649 = and i64 %648, 63
  %650 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %649
  %651 = load i64, i64* %650, align 8
  %652 = xor i64 %646, %651
  %653 = load i64, i64* %9, align 8
  %654 = lshr i64 %653, 2
  %655 = and i64 %654, 63
  %656 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %655
  %657 = load i64, i64* %656, align 8
  %658 = xor i64 %652, %657
  %659 = load i64, i64* %9, align 8
  %660 = lshr i64 %659, 10
  %661 = and i64 %660, 63
  %662 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %661
  %663 = load i64, i64* %662, align 8
  %664 = xor i64 %658, %663
  %665 = load i64, i64* %9, align 8
  %666 = lshr i64 %665, 18
  %667 = and i64 %666, 63
  %668 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %667
  %669 = load i64, i64* %668, align 8
  %670 = xor i64 %664, %669
  %671 = load i64, i64* %9, align 8
  %672 = lshr i64 %671, 26
  %673 = and i64 %672, 63
  %674 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %673
  %675 = load i64, i64* %674, align 8
  %676 = xor i64 %670, %675
  %677 = load i64, i64* %8, align 8
  %678 = xor i64 %677, %676
  store i64 %678, i64* %8, align 8
  br label %679

679:                                              ; preds = %394
  %680 = load i32, i32* %11, align 4
  %681 = sub nsw i32 %680, 8
  store i32 %681, i32* %11, align 4
  br label %391

682:                                              ; preds = %391
  br label %683

683:                                              ; preds = %682, %389
  %684 = load i64, i64* %7, align 8
  %685 = lshr i64 %684, 3
  %686 = load i64, i64* %7, align 8
  %687 = shl i64 %686, 29
  %688 = add i64 %685, %687
  %689 = and i64 %688, 4294967295
  store i64 %689, i64* %7, align 8
  %690 = load i64, i64* %8, align 8
  %691 = lshr i64 %690, 3
  %692 = load i64, i64* %8, align 8
  %693 = shl i64 %692, 29
  %694 = add i64 %691, %693
  %695 = and i64 %694, 4294967295
  store i64 %695, i64* %8, align 8
  %696 = load i64, i64* %8, align 8
  %697 = lshr i64 %696, 1
  %698 = load i64, i64* %7, align 8
  %699 = xor i64 %697, %698
  %700 = and i64 %699, 1431655765
  store i64 %700, i64* %14, align 8
  %701 = load i64, i64* %14, align 8
  %702 = load i64, i64* %7, align 8
  %703 = xor i64 %702, %701
  store i64 %703, i64* %7, align 8
  %704 = load i64, i64* %14, align 8
  %705 = shl i64 %704, 1
  %706 = load i64, i64* %8, align 8
  %707 = xor i64 %706, %705
  store i64 %707, i64* %8, align 8
  %708 = load i64, i64* %7, align 8
  %709 = lshr i64 %708, 8
  %710 = load i64, i64* %8, align 8
  %711 = xor i64 %709, %710
  %712 = and i64 %711, 16711935
  store i64 %712, i64* %14, align 8
  %713 = load i64, i64* %14, align 8
  %714 = load i64, i64* %8, align 8
  %715 = xor i64 %714, %713
  store i64 %715, i64* %8, align 8
  %716 = load i64, i64* %14, align 8
  %717 = shl i64 %716, 8
  %718 = load i64, i64* %7, align 8
  %719 = xor i64 %718, %717
  store i64 %719, i64* %7, align 8
  %720 = load i64, i64* %8, align 8
  %721 = lshr i64 %720, 2
  %722 = load i64, i64* %7, align 8
  %723 = xor i64 %721, %722
  %724 = and i64 %723, 858993459
  store i64 %724, i64* %14, align 8
  %725 = load i64, i64* %14, align 8
  %726 = load i64, i64* %7, align 8
  %727 = xor i64 %726, %725
  store i64 %727, i64* %7, align 8
  %728 = load i64, i64* %14, align 8
  %729 = shl i64 %728, 2
  %730 = load i64, i64* %8, align 8
  %731 = xor i64 %730, %729
  store i64 %731, i64* %8, align 8
  %732 = load i64, i64* %7, align 8
  %733 = lshr i64 %732, 16
  %734 = load i64, i64* %8, align 8
  %735 = xor i64 %733, %734
  %736 = and i64 %735, 65535
  store i64 %736, i64* %14, align 8
  %737 = load i64, i64* %14, align 8
  %738 = load i64, i64* %8, align 8
  %739 = xor i64 %738, %737
  store i64 %739, i64* %8, align 8
  %740 = load i64, i64* %14, align 8
  %741 = shl i64 %740, 16
  %742 = load i64, i64* %7, align 8
  %743 = xor i64 %742, %741
  store i64 %743, i64* %7, align 8
  %744 = load i64, i64* %8, align 8
  %745 = lshr i64 %744, 4
  %746 = load i64, i64* %7, align 8
  %747 = xor i64 %745, %746
  %748 = and i64 %747, 252645135
  store i64 %748, i64* %14, align 8
  %749 = load i64, i64* %14, align 8
  %750 = load i64, i64* %7, align 8
  %751 = xor i64 %750, %749
  store i64 %751, i64* %7, align 8
  %752 = load i64, i64* %14, align 8
  %753 = shl i64 %752, 4
  %754 = load i64, i64* %8, align 8
  %755 = xor i64 %754, %753
  store i64 %755, i64* %8, align 8
  %756 = load i64, i64* %7, align 8
  %757 = load i64*, i64** %4, align 8
  %758 = getelementptr inbounds i64, i64* %757, i64 0
  store i64 %756, i64* %758, align 8
  %759 = load i64, i64* %8, align 8
  %760 = load i64*, i64** %4, align 8
  %761 = getelementptr inbounds i64, i64* %760, i64 1
  store i64 %759, i64* %761, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_encrypt2(i64* %0, %struct.des_ks_struct* %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca %struct.des_ks_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %4, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = lshr i64 %19, 29
  %21 = load i64, i64* %8, align 8
  %22 = shl i64 %21, 3
  %23 = add i64 %20, %22
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = lshr i64 %25, 29
  %27 = load i64, i64* %7, align 8
  %28 = shl i64 %27, 3
  %29 = add i64 %26, %28
  %30 = and i64 %29, 4294967295
  store i64 %30, i64* %7, align 8
  %31 = load %struct.des_ks_struct*, %struct.des_ks_struct** %5, align 8
  %32 = bitcast %struct.des_ks_struct* %31 to i64*
  store i64* %32, i64** %12, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %328

35:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %324, %35
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 32
  br i1 %38, label %39, label %327

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 0
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = xor i64 %40, %46
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64*, i64** %12, align 8
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 0
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %49, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %48, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = lshr i64 %57, 4
  %59 = load i64, i64* %9, align 8
  %60 = shl i64 %59, 28
  %61 = add i64 %58, %60
  store i64 %61, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = lshr i64 %62, 2
  %64 = and i64 %63, 63
  %65 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %10, align 8
  %68 = lshr i64 %67, 10
  %69 = and i64 %68, 63
  %70 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = xor i64 %66, %71
  %73 = load i64, i64* %10, align 8
  %74 = lshr i64 %73, 18
  %75 = and i64 %74, 63
  %76 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %72, %77
  %79 = load i64, i64* %10, align 8
  %80 = lshr i64 %79, 26
  %81 = and i64 %80, 63
  %82 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = xor i64 %78, %83
  %85 = load i64, i64* %9, align 8
  %86 = lshr i64 %85, 2
  %87 = and i64 %86, 63
  %88 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = xor i64 %84, %89
  %91 = load i64, i64* %9, align 8
  %92 = lshr i64 %91, 10
  %93 = and i64 %92, 63
  %94 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = xor i64 %90, %95
  %97 = load i64, i64* %9, align 8
  %98 = lshr i64 %97, 18
  %99 = and i64 %98, 63
  %100 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = xor i64 %96, %101
  %103 = load i64, i64* %9, align 8
  %104 = lshr i64 %103, 26
  %105 = and i64 %104, 63
  %106 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = xor i64 %102, %107
  %109 = load i64, i64* %7, align 8
  %110 = xor i64 %109, %108
  store i64 %110, i64* %7, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %112, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = xor i64 %111, %117
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i64*, i64** %12, align 8
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 2
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %120, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = xor i64 %119, %126
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = lshr i64 %128, 4
  %130 = load i64, i64* %9, align 8
  %131 = shl i64 %130, 28
  %132 = add i64 %129, %131
  store i64 %132, i64* %9, align 8
  %133 = load i64, i64* %10, align 8
  %134 = lshr i64 %133, 2
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = lshr i64 %138, 10
  %140 = and i64 %139, 63
  %141 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = xor i64 %137, %142
  %144 = load i64, i64* %10, align 8
  %145 = lshr i64 %144, 18
  %146 = and i64 %145, 63
  %147 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = xor i64 %143, %148
  %150 = load i64, i64* %10, align 8
  %151 = lshr i64 %150, 26
  %152 = and i64 %151, 63
  %153 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = xor i64 %149, %154
  %156 = load i64, i64* %9, align 8
  %157 = lshr i64 %156, 2
  %158 = and i64 %157, 63
  %159 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = xor i64 %155, %160
  %162 = load i64, i64* %9, align 8
  %163 = lshr i64 %162, 10
  %164 = and i64 %163, 63
  %165 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = xor i64 %161, %166
  %168 = load i64, i64* %9, align 8
  %169 = lshr i64 %168, 18
  %170 = and i64 %169, 63
  %171 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = xor i64 %167, %172
  %174 = load i64, i64* %9, align 8
  %175 = lshr i64 %174, 26
  %176 = and i64 %175, 63
  %177 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = xor i64 %173, %178
  %180 = load i64, i64* %8, align 8
  %181 = xor i64 %180, %179
  store i64 %181, i64* %8, align 8
  %182 = load i64, i64* %8, align 8
  %183 = load i64*, i64** %12, align 8
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %183, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = xor i64 %182, %188
  store i64 %189, i64* %10, align 8
  %190 = load i64, i64* %8, align 8
  %191 = load i64*, i64** %12, align 8
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 4
  %194 = add nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %191, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = xor i64 %190, %197
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = lshr i64 %199, 4
  %201 = load i64, i64* %9, align 8
  %202 = shl i64 %201, 28
  %203 = add i64 %200, %202
  store i64 %203, i64* %9, align 8
  %204 = load i64, i64* %10, align 8
  %205 = lshr i64 %204, 2
  %206 = and i64 %205, 63
  %207 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %10, align 8
  %210 = lshr i64 %209, 10
  %211 = and i64 %210, 63
  %212 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %211
  %213 = load i64, i64* %212, align 8
  %214 = xor i64 %208, %213
  %215 = load i64, i64* %10, align 8
  %216 = lshr i64 %215, 18
  %217 = and i64 %216, 63
  %218 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = xor i64 %214, %219
  %221 = load i64, i64* %10, align 8
  %222 = lshr i64 %221, 26
  %223 = and i64 %222, 63
  %224 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = xor i64 %220, %225
  %227 = load i64, i64* %9, align 8
  %228 = lshr i64 %227, 2
  %229 = and i64 %228, 63
  %230 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %229
  %231 = load i64, i64* %230, align 8
  %232 = xor i64 %226, %231
  %233 = load i64, i64* %9, align 8
  %234 = lshr i64 %233, 10
  %235 = and i64 %234, 63
  %236 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = xor i64 %232, %237
  %239 = load i64, i64* %9, align 8
  %240 = lshr i64 %239, 18
  %241 = and i64 %240, 63
  %242 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %241
  %243 = load i64, i64* %242, align 8
  %244 = xor i64 %238, %243
  %245 = load i64, i64* %9, align 8
  %246 = lshr i64 %245, 26
  %247 = and i64 %246, 63
  %248 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %247
  %249 = load i64, i64* %248, align 8
  %250 = xor i64 %244, %249
  %251 = load i64, i64* %7, align 8
  %252 = xor i64 %251, %250
  store i64 %252, i64* %7, align 8
  %253 = load i64, i64* %7, align 8
  %254 = load i64*, i64** %12, align 8
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 6
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %254, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = xor i64 %253, %259
  store i64 %260, i64* %10, align 8
  %261 = load i64, i64* %7, align 8
  %262 = load i64*, i64** %12, align 8
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 6
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %262, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = xor i64 %261, %268
  store i64 %269, i64* %9, align 8
  %270 = load i64, i64* %9, align 8
  %271 = lshr i64 %270, 4
  %272 = load i64, i64* %9, align 8
  %273 = shl i64 %272, 28
  %274 = add i64 %271, %273
  store i64 %274, i64* %9, align 8
  %275 = load i64, i64* %10, align 8
  %276 = lshr i64 %275, 2
  %277 = and i64 %276, 63
  %278 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %277
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %10, align 8
  %281 = lshr i64 %280, 10
  %282 = and i64 %281, 63
  %283 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %282
  %284 = load i64, i64* %283, align 8
  %285 = xor i64 %279, %284
  %286 = load i64, i64* %10, align 8
  %287 = lshr i64 %286, 18
  %288 = and i64 %287, 63
  %289 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = xor i64 %285, %290
  %292 = load i64, i64* %10, align 8
  %293 = lshr i64 %292, 26
  %294 = and i64 %293, 63
  %295 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = xor i64 %291, %296
  %298 = load i64, i64* %9, align 8
  %299 = lshr i64 %298, 2
  %300 = and i64 %299, 63
  %301 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = xor i64 %297, %302
  %304 = load i64, i64* %9, align 8
  %305 = lshr i64 %304, 10
  %306 = and i64 %305, 63
  %307 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = xor i64 %303, %308
  %310 = load i64, i64* %9, align 8
  %311 = lshr i64 %310, 18
  %312 = and i64 %311, 63
  %313 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %312
  %314 = load i64, i64* %313, align 8
  %315 = xor i64 %309, %314
  %316 = load i64, i64* %9, align 8
  %317 = lshr i64 %316, 26
  %318 = and i64 %317, 63
  %319 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %318
  %320 = load i64, i64* %319, align 8
  %321 = xor i64 %315, %320
  %322 = load i64, i64* %8, align 8
  %323 = xor i64 %322, %321
  store i64 %323, i64* %8, align 8
  br label %324

324:                                              ; preds = %39
  %325 = load i32, i32* %11, align 4
  %326 = add nsw i32 %325, 8
  store i32 %326, i32* %11, align 4
  br label %36

327:                                              ; preds = %36
  br label %621

328:                                              ; preds = %3
  store i32 30, i32* %11, align 4
  br label %329

329:                                              ; preds = %617, %328
  %330 = load i32, i32* %11, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %620

332:                                              ; preds = %329
  %333 = load i64, i64* %8, align 8
  %334 = load i64*, i64** %12, align 8
  %335 = load i32, i32* %11, align 4
  %336 = sub nsw i32 %335, 0
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %334, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = xor i64 %333, %339
  store i64 %340, i64* %10, align 8
  %341 = load i64, i64* %8, align 8
  %342 = load i64*, i64** %12, align 8
  %343 = load i32, i32* %11, align 4
  %344 = sub nsw i32 %343, 0
  %345 = add nsw i32 %344, 1
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %342, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = xor i64 %341, %348
  store i64 %349, i64* %9, align 8
  %350 = load i64, i64* %9, align 8
  %351 = lshr i64 %350, 4
  %352 = load i64, i64* %9, align 8
  %353 = shl i64 %352, 28
  %354 = add i64 %351, %353
  store i64 %354, i64* %9, align 8
  %355 = load i64, i64* %10, align 8
  %356 = lshr i64 %355, 2
  %357 = and i64 %356, 63
  %358 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %357
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* %10, align 8
  %361 = lshr i64 %360, 10
  %362 = and i64 %361, 63
  %363 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = xor i64 %359, %364
  %366 = load i64, i64* %10, align 8
  %367 = lshr i64 %366, 18
  %368 = and i64 %367, 63
  %369 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = xor i64 %365, %370
  %372 = load i64, i64* %10, align 8
  %373 = lshr i64 %372, 26
  %374 = and i64 %373, 63
  %375 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %374
  %376 = load i64, i64* %375, align 8
  %377 = xor i64 %371, %376
  %378 = load i64, i64* %9, align 8
  %379 = lshr i64 %378, 2
  %380 = and i64 %379, 63
  %381 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %380
  %382 = load i64, i64* %381, align 8
  %383 = xor i64 %377, %382
  %384 = load i64, i64* %9, align 8
  %385 = lshr i64 %384, 10
  %386 = and i64 %385, 63
  %387 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %386
  %388 = load i64, i64* %387, align 8
  %389 = xor i64 %383, %388
  %390 = load i64, i64* %9, align 8
  %391 = lshr i64 %390, 18
  %392 = and i64 %391, 63
  %393 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %392
  %394 = load i64, i64* %393, align 8
  %395 = xor i64 %389, %394
  %396 = load i64, i64* %9, align 8
  %397 = lshr i64 %396, 26
  %398 = and i64 %397, 63
  %399 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %398
  %400 = load i64, i64* %399, align 8
  %401 = xor i64 %395, %400
  %402 = load i64, i64* %7, align 8
  %403 = xor i64 %402, %401
  store i64 %403, i64* %7, align 8
  %404 = load i64, i64* %7, align 8
  %405 = load i64*, i64** %12, align 8
  %406 = load i32, i32* %11, align 4
  %407 = sub nsw i32 %406, 2
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i64, i64* %405, i64 %408
  %410 = load i64, i64* %409, align 8
  %411 = xor i64 %404, %410
  store i64 %411, i64* %10, align 8
  %412 = load i64, i64* %7, align 8
  %413 = load i64*, i64** %12, align 8
  %414 = load i32, i32* %11, align 4
  %415 = sub nsw i32 %414, 2
  %416 = add nsw i32 %415, 1
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64, i64* %413, i64 %417
  %419 = load i64, i64* %418, align 8
  %420 = xor i64 %412, %419
  store i64 %420, i64* %9, align 8
  %421 = load i64, i64* %9, align 8
  %422 = lshr i64 %421, 4
  %423 = load i64, i64* %9, align 8
  %424 = shl i64 %423, 28
  %425 = add i64 %422, %424
  store i64 %425, i64* %9, align 8
  %426 = load i64, i64* %10, align 8
  %427 = lshr i64 %426, 2
  %428 = and i64 %427, 63
  %429 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %428
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* %10, align 8
  %432 = lshr i64 %431, 10
  %433 = and i64 %432, 63
  %434 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = xor i64 %430, %435
  %437 = load i64, i64* %10, align 8
  %438 = lshr i64 %437, 18
  %439 = and i64 %438, 63
  %440 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %439
  %441 = load i64, i64* %440, align 8
  %442 = xor i64 %436, %441
  %443 = load i64, i64* %10, align 8
  %444 = lshr i64 %443, 26
  %445 = and i64 %444, 63
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = xor i64 %442, %447
  %449 = load i64, i64* %9, align 8
  %450 = lshr i64 %449, 2
  %451 = and i64 %450, 63
  %452 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = xor i64 %448, %453
  %455 = load i64, i64* %9, align 8
  %456 = lshr i64 %455, 10
  %457 = and i64 %456, 63
  %458 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = xor i64 %454, %459
  %461 = load i64, i64* %9, align 8
  %462 = lshr i64 %461, 18
  %463 = and i64 %462, 63
  %464 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %463
  %465 = load i64, i64* %464, align 8
  %466 = xor i64 %460, %465
  %467 = load i64, i64* %9, align 8
  %468 = lshr i64 %467, 26
  %469 = and i64 %468, 63
  %470 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %469
  %471 = load i64, i64* %470, align 8
  %472 = xor i64 %466, %471
  %473 = load i64, i64* %8, align 8
  %474 = xor i64 %473, %472
  store i64 %474, i64* %8, align 8
  %475 = load i64, i64* %8, align 8
  %476 = load i64*, i64** %12, align 8
  %477 = load i32, i32* %11, align 4
  %478 = sub nsw i32 %477, 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i64, i64* %476, i64 %479
  %481 = load i64, i64* %480, align 8
  %482 = xor i64 %475, %481
  store i64 %482, i64* %10, align 8
  %483 = load i64, i64* %8, align 8
  %484 = load i64*, i64** %12, align 8
  %485 = load i32, i32* %11, align 4
  %486 = sub nsw i32 %485, 4
  %487 = add nsw i32 %486, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i64, i64* %484, i64 %488
  %490 = load i64, i64* %489, align 8
  %491 = xor i64 %483, %490
  store i64 %491, i64* %9, align 8
  %492 = load i64, i64* %9, align 8
  %493 = lshr i64 %492, 4
  %494 = load i64, i64* %9, align 8
  %495 = shl i64 %494, 28
  %496 = add i64 %493, %495
  store i64 %496, i64* %9, align 8
  %497 = load i64, i64* %10, align 8
  %498 = lshr i64 %497, 2
  %499 = and i64 %498, 63
  %500 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %499
  %501 = load i64, i64* %500, align 8
  %502 = load i64, i64* %10, align 8
  %503 = lshr i64 %502, 10
  %504 = and i64 %503, 63
  %505 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %504
  %506 = load i64, i64* %505, align 8
  %507 = xor i64 %501, %506
  %508 = load i64, i64* %10, align 8
  %509 = lshr i64 %508, 18
  %510 = and i64 %509, 63
  %511 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %510
  %512 = load i64, i64* %511, align 8
  %513 = xor i64 %507, %512
  %514 = load i64, i64* %10, align 8
  %515 = lshr i64 %514, 26
  %516 = and i64 %515, 63
  %517 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %516
  %518 = load i64, i64* %517, align 8
  %519 = xor i64 %513, %518
  %520 = load i64, i64* %9, align 8
  %521 = lshr i64 %520, 2
  %522 = and i64 %521, 63
  %523 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %522
  %524 = load i64, i64* %523, align 8
  %525 = xor i64 %519, %524
  %526 = load i64, i64* %9, align 8
  %527 = lshr i64 %526, 10
  %528 = and i64 %527, 63
  %529 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = xor i64 %525, %530
  %532 = load i64, i64* %9, align 8
  %533 = lshr i64 %532, 18
  %534 = and i64 %533, 63
  %535 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %534
  %536 = load i64, i64* %535, align 8
  %537 = xor i64 %531, %536
  %538 = load i64, i64* %9, align 8
  %539 = lshr i64 %538, 26
  %540 = and i64 %539, 63
  %541 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = xor i64 %537, %542
  %544 = load i64, i64* %7, align 8
  %545 = xor i64 %544, %543
  store i64 %545, i64* %7, align 8
  %546 = load i64, i64* %7, align 8
  %547 = load i64*, i64** %12, align 8
  %548 = load i32, i32* %11, align 4
  %549 = sub nsw i32 %548, 6
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %547, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = xor i64 %546, %552
  store i64 %553, i64* %10, align 8
  %554 = load i64, i64* %7, align 8
  %555 = load i64*, i64** %12, align 8
  %556 = load i32, i32* %11, align 4
  %557 = sub nsw i32 %556, 6
  %558 = add nsw i32 %557, 1
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds i64, i64* %555, i64 %559
  %561 = load i64, i64* %560, align 8
  %562 = xor i64 %554, %561
  store i64 %562, i64* %9, align 8
  %563 = load i64, i64* %9, align 8
  %564 = lshr i64 %563, 4
  %565 = load i64, i64* %9, align 8
  %566 = shl i64 %565, 28
  %567 = add i64 %564, %566
  store i64 %567, i64* %9, align 8
  %568 = load i64, i64* %10, align 8
  %569 = lshr i64 %568, 2
  %570 = and i64 %569, 63
  %571 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 0), i64 0, i64 %570
  %572 = load i64, i64* %571, align 8
  %573 = load i64, i64* %10, align 8
  %574 = lshr i64 %573, 10
  %575 = and i64 %574, 63
  %576 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 2), i64 0, i64 %575
  %577 = load i64, i64* %576, align 8
  %578 = xor i64 %572, %577
  %579 = load i64, i64* %10, align 8
  %580 = lshr i64 %579, 18
  %581 = and i64 %580, 63
  %582 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 4), i64 0, i64 %581
  %583 = load i64, i64* %582, align 8
  %584 = xor i64 %578, %583
  %585 = load i64, i64* %10, align 8
  %586 = lshr i64 %585, 26
  %587 = and i64 %586, 63
  %588 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 6), i64 0, i64 %587
  %589 = load i64, i64* %588, align 8
  %590 = xor i64 %584, %589
  %591 = load i64, i64* %9, align 8
  %592 = lshr i64 %591, 2
  %593 = and i64 %592, 63
  %594 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 1), i64 0, i64 %593
  %595 = load i64, i64* %594, align 8
  %596 = xor i64 %590, %595
  %597 = load i64, i64* %9, align 8
  %598 = lshr i64 %597, 10
  %599 = and i64 %598, 63
  %600 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 3), i64 0, i64 %599
  %601 = load i64, i64* %600, align 8
  %602 = xor i64 %596, %601
  %603 = load i64, i64* %9, align 8
  %604 = lshr i64 %603, 18
  %605 = and i64 %604, 63
  %606 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 5), i64 0, i64 %605
  %607 = load i64, i64* %606, align 8
  %608 = xor i64 %602, %607
  %609 = load i64, i64* %9, align 8
  %610 = lshr i64 %609, 26
  %611 = and i64 %610, 63
  %612 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_SPtrans, i64 0, i64 7), i64 0, i64 %611
  %613 = load i64, i64* %612, align 8
  %614 = xor i64 %608, %613
  %615 = load i64, i64* %8, align 8
  %616 = xor i64 %615, %614
  store i64 %616, i64* %8, align 8
  br label %617

617:                                              ; preds = %332
  %618 = load i32, i32* %11, align 4
  %619 = sub nsw i32 %618, 8
  store i32 %619, i32* %11, align 4
  br label %329

620:                                              ; preds = %329
  br label %621

621:                                              ; preds = %620, %327
  %622 = load i64, i64* %7, align 8
  %623 = lshr i64 %622, 3
  %624 = load i64, i64* %7, align 8
  %625 = shl i64 %624, 29
  %626 = add i64 %623, %625
  %627 = and i64 %626, 4294967295
  %628 = load i64*, i64** %4, align 8
  %629 = getelementptr inbounds i64, i64* %628, i64 0
  store i64 %627, i64* %629, align 8
  %630 = load i64, i64* %8, align 8
  %631 = lshr i64 %630, 3
  %632 = load i64, i64* %8, align 8
  %633 = shl i64 %632, 29
  %634 = add i64 %631, %633
  %635 = and i64 %634, 4294967295
  %636 = load i64*, i64** %4, align 8
  %637 = getelementptr inbounds i64, i64* %636, i64 1
  store i64 %635, i64* %637, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %7, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_encrypt3(i64* %0, %struct.des_ks_struct* %1, %struct.des_ks_struct* %2, %struct.des_ks_struct* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.des_ks_struct*, align 8
  %7 = alloca %struct.des_ks_struct*, align 8
  %8 = alloca %struct.des_ks_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %6, align 8
  store %struct.des_ks_struct* %2, %struct.des_ks_struct** %7, align 8
  store %struct.des_ks_struct* %3, %struct.des_ks_struct** %8, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = lshr i64 %19, 4
  %21 = load i64, i64* %9, align 8
  %22 = xor i64 %20, %21
  %23 = and i64 %22, 252645135
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = xor i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = shl i64 %27, 4
  %29 = load i64, i64* %10, align 8
  %30 = xor i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = lshr i64 %31, 16
  %33 = load i64, i64* %10, align 8
  %34 = xor i64 %32, %33
  %35 = and i64 %34, 65535
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = xor i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = shl i64 %39, 16
  %41 = load i64, i64* %9, align 8
  %42 = xor i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = lshr i64 %43, 2
  %45 = load i64, i64* %9, align 8
  %46 = xor i64 %44, %45
  %47 = and i64 %46, 858993459
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = xor i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = shl i64 %51, 2
  %53 = load i64, i64* %10, align 8
  %54 = xor i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = lshr i64 %55, 8
  %57 = load i64, i64* %10, align 8
  %58 = xor i64 %56, %57
  %59 = and i64 %58, 16711935
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = xor i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = shl i64 %63, 8
  %65 = load i64, i64* %9, align 8
  %66 = xor i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = lshr i64 %67, 1
  %69 = load i64, i64* %9, align 8
  %70 = xor i64 %68, %69
  %71 = and i64 %70, 1431655765
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = xor i64 %73, %72
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = shl i64 %75, 1
  %77 = load i64, i64* %10, align 8
  %78 = xor i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 %82, i64* %84, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load %struct.des_ks_struct*, %struct.des_ks_struct** %6, align 8
  call void @des_encrypt2(i64* %85, %struct.des_ks_struct* %86, i32 1)
  %87 = load i64*, i64** %5, align 8
  %88 = load %struct.des_ks_struct*, %struct.des_ks_struct** %7, align 8
  call void @des_encrypt2(i64* %87, %struct.des_ks_struct* %88, i32 0)
  %89 = load i64*, i64** %5, align 8
  %90 = load %struct.des_ks_struct*, %struct.des_ks_struct** %8, align 8
  call void @des_encrypt2(i64* %89, %struct.des_ks_struct* %90, i32 1)
  %91 = load i64*, i64** %5, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = lshr i64 %97, 1
  %99 = load i64, i64* %9, align 8
  %100 = xor i64 %98, %99
  %101 = and i64 %100, 1431655765
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %9, align 8
  %104 = xor i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = shl i64 %105, 1
  %107 = load i64, i64* %10, align 8
  %108 = xor i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = lshr i64 %109, 8
  %111 = load i64, i64* %10, align 8
  %112 = xor i64 %110, %111
  %113 = and i64 %112, 16711935
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = xor i64 %115, %114
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %12, align 8
  %118 = shl i64 %117, 8
  %119 = load i64, i64* %9, align 8
  %120 = xor i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = lshr i64 %121, 2
  %123 = load i64, i64* %9, align 8
  %124 = xor i64 %122, %123
  %125 = and i64 %124, 858993459
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %9, align 8
  %128 = xor i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %12, align 8
  %130 = shl i64 %129, 2
  %131 = load i64, i64* %10, align 8
  %132 = xor i64 %131, %130
  store i64 %132, i64* %10, align 8
  %133 = load i64, i64* %9, align 8
  %134 = lshr i64 %133, 16
  %135 = load i64, i64* %10, align 8
  %136 = xor i64 %134, %135
  %137 = and i64 %136, 65535
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %10, align 8
  %140 = xor i64 %139, %138
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = shl i64 %141, 16
  %143 = load i64, i64* %9, align 8
  %144 = xor i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = lshr i64 %145, 4
  %147 = load i64, i64* %9, align 8
  %148 = xor i64 %146, %147
  %149 = and i64 %148, 252645135
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %9, align 8
  %152 = xor i64 %151, %150
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = shl i64 %153, 4
  %155 = load i64, i64* %10, align 8
  %156 = xor i64 %155, %154
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64*, i64** %5, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64*, i64** %5, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %160, i64* %162, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_decrypt3(i64* %0, %struct.des_ks_struct* %1, %struct.des_ks_struct* %2, %struct.des_ks_struct* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca %struct.des_ks_struct*, align 8
  %7 = alloca %struct.des_ks_struct*, align 8
  %8 = alloca %struct.des_ks_struct*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %6, align 8
  store %struct.des_ks_struct* %2, %struct.des_ks_struct** %7, align 8
  store %struct.des_ks_struct* %3, %struct.des_ks_struct** %8, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = lshr i64 %19, 4
  %21 = load i64, i64* %9, align 8
  %22 = xor i64 %20, %21
  %23 = and i64 %22, 252645135
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %9, align 8
  %26 = xor i64 %25, %24
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = shl i64 %27, 4
  %29 = load i64, i64* %10, align 8
  %30 = xor i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = lshr i64 %31, 16
  %33 = load i64, i64* %10, align 8
  %34 = xor i64 %32, %33
  %35 = and i64 %34, 65535
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %10, align 8
  %38 = xor i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = shl i64 %39, 16
  %41 = load i64, i64* %9, align 8
  %42 = xor i64 %41, %40
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = lshr i64 %43, 2
  %45 = load i64, i64* %9, align 8
  %46 = xor i64 %44, %45
  %47 = and i64 %46, 858993459
  store i64 %47, i64* %11, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %9, align 8
  %50 = xor i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %11, align 8
  %52 = shl i64 %51, 2
  %53 = load i64, i64* %10, align 8
  %54 = xor i64 %53, %52
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = lshr i64 %55, 8
  %57 = load i64, i64* %10, align 8
  %58 = xor i64 %56, %57
  %59 = and i64 %58, 16711935
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = xor i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = shl i64 %63, 8
  %65 = load i64, i64* %9, align 8
  %66 = xor i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = lshr i64 %67, 1
  %69 = load i64, i64* %9, align 8
  %70 = xor i64 %68, %69
  %71 = and i64 %70, 1431655765
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %9, align 8
  %74 = xor i64 %73, %72
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = shl i64 %75, 1
  %77 = load i64, i64* %10, align 8
  %78 = xor i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64*, i64** %5, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64*, i64** %5, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  store i64 %82, i64* %84, align 8
  %85 = load i64*, i64** %5, align 8
  %86 = load %struct.des_ks_struct*, %struct.des_ks_struct** %8, align 8
  call void @des_encrypt2(i64* %85, %struct.des_ks_struct* %86, i32 0)
  %87 = load i64*, i64** %5, align 8
  %88 = load %struct.des_ks_struct*, %struct.des_ks_struct** %7, align 8
  call void @des_encrypt2(i64* %87, %struct.des_ks_struct* %88, i32 1)
  %89 = load i64*, i64** %5, align 8
  %90 = load %struct.des_ks_struct*, %struct.des_ks_struct** %6, align 8
  call void @des_encrypt2(i64* %89, %struct.des_ks_struct* %90, i32 0)
  %91 = load i64*, i64** %5, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %9, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = lshr i64 %97, 1
  %99 = load i64, i64* %9, align 8
  %100 = xor i64 %98, %99
  %101 = and i64 %100, 1431655765
  store i64 %101, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %9, align 8
  %104 = xor i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %12, align 8
  %106 = shl i64 %105, 1
  %107 = load i64, i64* %10, align 8
  %108 = xor i64 %107, %106
  store i64 %108, i64* %10, align 8
  %109 = load i64, i64* %9, align 8
  %110 = lshr i64 %109, 8
  %111 = load i64, i64* %10, align 8
  %112 = xor i64 %110, %111
  %113 = and i64 %112, 16711935
  store i64 %113, i64* %12, align 8
  %114 = load i64, i64* %12, align 8
  %115 = load i64, i64* %10, align 8
  %116 = xor i64 %115, %114
  store i64 %116, i64* %10, align 8
  %117 = load i64, i64* %12, align 8
  %118 = shl i64 %117, 8
  %119 = load i64, i64* %9, align 8
  %120 = xor i64 %119, %118
  store i64 %120, i64* %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = lshr i64 %121, 2
  %123 = load i64, i64* %9, align 8
  %124 = xor i64 %122, %123
  %125 = and i64 %124, 858993459
  store i64 %125, i64* %12, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* %9, align 8
  %128 = xor i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %12, align 8
  %130 = shl i64 %129, 2
  %131 = load i64, i64* %10, align 8
  %132 = xor i64 %131, %130
  store i64 %132, i64* %10, align 8
  %133 = load i64, i64* %9, align 8
  %134 = lshr i64 %133, 16
  %135 = load i64, i64* %10, align 8
  %136 = xor i64 %134, %135
  %137 = and i64 %136, 65535
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = load i64, i64* %10, align 8
  %140 = xor i64 %139, %138
  store i64 %140, i64* %10, align 8
  %141 = load i64, i64* %12, align 8
  %142 = shl i64 %141, 16
  %143 = load i64, i64* %9, align 8
  %144 = xor i64 %143, %142
  store i64 %144, i64* %9, align 8
  %145 = load i64, i64* %10, align 8
  %146 = lshr i64 %145, 4
  %147 = load i64, i64* %9, align 8
  %148 = xor i64 %146, %147
  %149 = and i64 %148, 252645135
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %12, align 8
  %151 = load i64, i64* %9, align 8
  %152 = xor i64 %151, %150
  store i64 %152, i64* %9, align 8
  %153 = load i64, i64* %12, align 8
  %154 = shl i64 %153, 4
  %155 = load i64, i64* %10, align 8
  %156 = xor i64 %155, %154
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64*, i64** %5, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 0
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load i64*, i64** %5, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 1
  store i64 %160, i64* %162, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @driver(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [34 x [8 x i8]], align 16
  %6 = alloca [34 x [16 x %struct.des_ks_struct]], align 16
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 34
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @key_data, i64 0, i64 %12
  %14 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 0
  %15 = bitcast i8* %14 to [8 x i8]*
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], [34 x [16 x %struct.des_ks_struct]]* %6, i64 0, i64 %17
  %19 = getelementptr inbounds [16 x %struct.des_ks_struct], [16 x %struct.des_ks_struct]* %18, i64 0, i64 0
  %20 = call i32 @des_key_sched([8 x i8]* %15, %struct.des_ks_struct* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %10
  %23 = load i32, i32* %3, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  call void @exit(i32 -1) #5
  unreachable

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

29:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 1000000
  br i1 %32, label %33, label %60

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* @plain_data, i64 0, i64 %40
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %41, i64 0, i64 0
  %43 = bitcast i8* %42 to [8 x i8]*
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* %5, i64 0, i64 %45
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 0
  %48 = bitcast i8* %47 to [8 x i8]*
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], [34 x [16 x %struct.des_ks_struct]]* %6, i64 0, i64 %50
  %52 = getelementptr inbounds [16 x %struct.des_ks_struct], [16 x %struct.des_ks_struct]* %51, i64 0, i64 0
  call void @des_ecb_encrypt([8 x i8]* %43, [8 x i8]* %48, %struct.des_ks_struct* %52, i32 1)
  br label %53

53:                                               ; preds = %38
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %34

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %30

60:                                               ; preds = %30
  %61 = getelementptr inbounds [34 x [8 x i8]], [34 x [8 x i8]]* %5, i64 0, i64 0
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %61, i64 0, i64 0
  %63 = load i32, i32* %2, align 4
  %64 = mul nsw i32 8, %63
  %65 = sext i32 %64 to i64
  %66 = call i32 @memcmp(i8* getelementptr inbounds ([34 x [8 x i8]], [34 x [8 x i8]]* @cipher_data, i64 0, i64 0, i64 0), i8* %62, i64 %65) #6
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %72

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %68
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i8* %12)
  call void @exit(i32 -1) #5
  unreachable

14:                                               ; preds = %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @atoi(i8* %17) #6
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sgt i32 %19, 34
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  call void @exit(i32 -1) #5
  unreachable

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  call void @driver(i32 %27)
  call void @exit(i32 0) #5
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @des_options() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @des_options.init, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %0
  store i32 0, i32* @des_options.init, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.6, i64 0, i64 0), i8** %1, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.7, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.8, i64 0, i64 0), i8** %2, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %8 = load i8*, i8** %1, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %8, i8* %9, i8* %10, i8* %11) #7
  br label %13

13:                                               ; preds = %7, %0
  ret i8* getelementptr inbounds ([32 x i8], [32 x i8]* @des_options.buf, i64 0, i64 0)
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_ecb_encrypt([8 x i8]* %0, [8 x i8]* %1, %struct.des_ks_struct* %2, i32 %3) #0 {
  %5 = alloca [8 x i8]*, align 8
  %6 = alloca [8 x i8]*, align 8
  %7 = alloca %struct.des_ks_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [2 x i64], align 16
  store [8 x i8]* %0, [8 x i8]** %5, align 8
  store [8 x i8]* %1, [8 x i8]** %6, align 8
  store %struct.des_ks_struct* %2, %struct.des_ks_struct** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load [8 x i8]*, [8 x i8]** %5, align 8
  %14 = bitcast [8 x i8]* %13 to i8*
  store i8* %14, i8** %10, align 8
  %15 = load [8 x i8]*, [8 x i8]** %6, align 8
  %16 = bitcast [8 x i8]* %15 to i8*
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %10, align 8
  %19 = load i8, i8* %17, align 1
  %20 = zext i8 %19 to i64
  store i64 %20, i64* %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %10, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 8
  %26 = load i64, i64* %9, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %10, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i64
  %32 = shl i64 %31, 16
  %33 = load i64, i64* %9, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i64
  %39 = shl i64 %38, 24
  %40 = load i64, i64* %9, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 %42, i64* %43, align 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %10, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %10, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i64
  %52 = shl i64 %51, 8
  %53 = load i64, i64* %9, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %10, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i64
  %59 = shl i64 %58, 16
  %60 = load i64, i64* %9, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = shl i64 %65, 24
  %67 = load i64, i64* %9, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %72 = load %struct.des_ks_struct*, %struct.des_ks_struct** %7, align 8
  %73 = load i32, i32* %8, align 4
  call void @des_encrypt(i64* %71, %struct.des_ks_struct* %72, i32 %73)
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %75 = load i64, i64* %74, align 16
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = and i64 %76, 255
  %78 = trunc i64 %77 to i8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  store i8 %78, i8* %79, align 1
  %81 = load i64, i64* %9, align 8
  %82 = lshr i64 %81, 8
  %83 = and i64 %82, 255
  %84 = trunc i64 %83 to i8
  %85 = load i8*, i8** %11, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %11, align 8
  store i8 %84, i8* %85, align 1
  %87 = load i64, i64* %9, align 8
  %88 = lshr i64 %87, 16
  %89 = and i64 %88, 255
  %90 = trunc i64 %89 to i8
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %11, align 8
  store i8 %90, i8* %91, align 1
  %93 = load i64, i64* %9, align 8
  %94 = lshr i64 %93, 24
  %95 = and i64 %94, 255
  %96 = trunc i64 %95 to i8
  %97 = load i8*, i8** %11, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %11, align 8
  store i8 %96, i8* %97, align 1
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = and i64 %101, 255
  %103 = trunc i64 %102 to i8
  %104 = load i8*, i8** %11, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %11, align 8
  store i8 %103, i8* %104, align 1
  %106 = load i64, i64* %9, align 8
  %107 = lshr i64 %106, 8
  %108 = and i64 %107, 255
  %109 = trunc i64 %108 to i8
  %110 = load i8*, i8** %11, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %11, align 8
  store i8 %109, i8* %110, align 1
  %112 = load i64, i64* %9, align 8
  %113 = lshr i64 %112, 16
  %114 = and i64 %113, 255
  %115 = trunc i64 %114 to i8
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  store i8 %115, i8* %116, align 1
  %118 = load i64, i64* %9, align 8
  %119 = lshr i64 %118, 24
  %120 = and i64 %119, 255
  %121 = trunc i64 %120 to i8
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8 %121, i8* %122, align 1
  %124 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  store i64 0, i64* %124, align 8
  %125 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  store i64 0, i64* %125, align 16
  store i64 0, i64* %9, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_set_odd_parity([8 x i8]* %0) #0 {
  %2 = alloca [8 x i8]*, align 8
  %3 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %4
  %9 = load [8 x i8]*, [8 x i8]** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = load [8 x i8]*, [8 x i8]** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %17, i64 0, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %8
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_is_weak_key([8 x i8]* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 %10
  %12 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %13 = load [8 x i8]*, [8 x i8]** %3, align 8
  %14 = bitcast [8 x i8]* %13 to i8*
  %15 = call i32 @memcmp(i8* %12, i8* %14, i64 8) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %23

18:                                               ; preds = %8
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

22:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_set_key([8 x i8]* %0, %struct.des_ks_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [8 x i8]*, align 8
  %5 = alloca %struct.des_ks_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %4, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %5, align 8
  %14 = load i32, i32* @des_check_key, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load [8 x i8]*, [8 x i8]** %4, align 8
  %18 = call i32 @check_parity([8 x i8]* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %303

21:                                               ; preds = %16
  %22 = load [8 x i8]*, [8 x i8]** %4, align 8
  %23 = call i32 @des_is_weak_key([8 x i8]* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -2, i32* %3, align 4
  br label %303

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.des_ks_struct*, %struct.des_ks_struct** %5, align 8
  %29 = bitcast %struct.des_ks_struct* %28 to i64*
  store i64* %29, i64** %12, align 8
  %30 = load [8 x i8]*, [8 x i8]** %4, align 8
  %31 = bitcast [8 x i8]* %30 to i8*
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  %34 = load i8, i8* %32, align 1
  %35 = zext i8 %34 to i64
  store i64 %35, i64* %6, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  %38 = load i8, i8* %36, align 1
  %39 = zext i8 %38 to i64
  %40 = shl i64 %39, 8
  %41 = load i64, i64* %6, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %11, align 8
  %45 = load i8, i8* %43, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 16
  %48 = load i64, i64* %6, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %11, align 8
  %52 = load i8, i8* %50, align 1
  %53 = zext i8 %52 to i64
  %54 = shl i64 %53, 24
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %11, align 8
  %63 = load i8, i8* %61, align 1
  %64 = zext i8 %63 to i64
  %65 = shl i64 %64, 8
  %66 = load i64, i64* %7, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %11, align 8
  %70 = load i8, i8* %68, align 1
  %71 = zext i8 %70 to i64
  %72 = shl i64 %71, 16
  %73 = load i64, i64* %7, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %11, align 8
  %77 = load i8, i8* %75, align 1
  %78 = zext i8 %77 to i64
  %79 = shl i64 %78, 24
  %80 = load i64, i64* %7, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %7, align 8
  %82 = load i64, i64* %7, align 8
  %83 = lshr i64 %82, 4
  %84 = load i64, i64* %6, align 8
  %85 = xor i64 %83, %84
  %86 = and i64 %85, 252645135
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %6, align 8
  %89 = xor i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = shl i64 %90, 4
  %92 = load i64, i64* %7, align 8
  %93 = xor i64 %92, %91
  store i64 %93, i64* %7, align 8
  %94 = load i64, i64* %6, align 8
  %95 = shl i64 %94, 18
  %96 = load i64, i64* %6, align 8
  %97 = xor i64 %95, %96
  %98 = and i64 %97, 3435921408
  store i64 %98, i64* %8, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %8, align 8
  %101 = xor i64 %99, %100
  %102 = load i64, i64* %8, align 8
  %103 = lshr i64 %102, 18
  %104 = xor i64 %101, %103
  store i64 %104, i64* %6, align 8
  %105 = load i64, i64* %7, align 8
  %106 = shl i64 %105, 18
  %107 = load i64, i64* %7, align 8
  %108 = xor i64 %106, %107
  %109 = and i64 %108, 3435921408
  store i64 %109, i64* %8, align 8
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = xor i64 %110, %111
  %113 = load i64, i64* %8, align 8
  %114 = lshr i64 %113, 18
  %115 = xor i64 %112, %114
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = lshr i64 %116, 1
  %118 = load i64, i64* %6, align 8
  %119 = xor i64 %117, %118
  %120 = and i64 %119, 1431655765
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %6, align 8
  %123 = xor i64 %122, %121
  store i64 %123, i64* %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = shl i64 %124, 1
  %126 = load i64, i64* %7, align 8
  %127 = xor i64 %126, %125
  store i64 %127, i64* %7, align 8
  %128 = load i64, i64* %6, align 8
  %129 = lshr i64 %128, 8
  %130 = load i64, i64* %7, align 8
  %131 = xor i64 %129, %130
  %132 = and i64 %131, 16711935
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* %7, align 8
  %135 = xor i64 %134, %133
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %8, align 8
  %137 = shl i64 %136, 8
  %138 = load i64, i64* %6, align 8
  %139 = xor i64 %138, %137
  store i64 %139, i64* %6, align 8
  %140 = load i64, i64* %7, align 8
  %141 = lshr i64 %140, 1
  %142 = load i64, i64* %6, align 8
  %143 = xor i64 %141, %142
  %144 = and i64 %143, 1431655765
  store i64 %144, i64* %8, align 8
  %145 = load i64, i64* %8, align 8
  %146 = load i64, i64* %6, align 8
  %147 = xor i64 %146, %145
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = shl i64 %148, 1
  %150 = load i64, i64* %7, align 8
  %151 = xor i64 %150, %149
  store i64 %151, i64* %7, align 8
  %152 = load i64, i64* %7, align 8
  %153 = and i64 %152, 255
  %154 = shl i64 %153, 16
  %155 = load i64, i64* %7, align 8
  %156 = and i64 %155, 65280
  %157 = or i64 %154, %156
  %158 = load i64, i64* %7, align 8
  %159 = and i64 %158, 16711680
  %160 = lshr i64 %159, 16
  %161 = or i64 %157, %160
  %162 = load i64, i64* %6, align 8
  %163 = and i64 %162, 4026531840
  %164 = lshr i64 %163, 4
  %165 = or i64 %161, %164
  store i64 %165, i64* %7, align 8
  %166 = load i64, i64* %6, align 8
  %167 = and i64 %166, 268435455
  store i64 %167, i64* %6, align 8
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %299, %27
  %169 = load i32, i32* %13, align 4
  %170 = icmp slt i32 %169, 16
  br i1 %170, label %171, label %302

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [16 x i32], [16 x i32]* @des_set_key.shifts2, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %171
  %178 = load i64, i64* %6, align 8
  %179 = lshr i64 %178, 2
  %180 = load i64, i64* %6, align 8
  %181 = shl i64 %180, 26
  %182 = or i64 %179, %181
  store i64 %182, i64* %6, align 8
  %183 = load i64, i64* %7, align 8
  %184 = lshr i64 %183, 2
  %185 = load i64, i64* %7, align 8
  %186 = shl i64 %185, 26
  %187 = or i64 %184, %186
  store i64 %187, i64* %7, align 8
  br label %199

188:                                              ; preds = %171
  %189 = load i64, i64* %6, align 8
  %190 = lshr i64 %189, 1
  %191 = load i64, i64* %6, align 8
  %192 = shl i64 %191, 27
  %193 = or i64 %190, %192
  store i64 %193, i64* %6, align 8
  %194 = load i64, i64* %7, align 8
  %195 = lshr i64 %194, 1
  %196 = load i64, i64* %7, align 8
  %197 = shl i64 %196, 27
  %198 = or i64 %195, %197
  store i64 %198, i64* %7, align 8
  br label %199

199:                                              ; preds = %188, %177
  %200 = load i64, i64* %6, align 8
  %201 = and i64 %200, 268435455
  store i64 %201, i64* %6, align 8
  %202 = load i64, i64* %7, align 8
  %203 = and i64 %202, 268435455
  store i64 %203, i64* %7, align 8
  %204 = load i64, i64* %6, align 8
  %205 = and i64 %204, 63
  %206 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 0), i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = lshr i64 %208, 6
  %210 = and i64 %209, 3
  %211 = load i64, i64* %6, align 8
  %212 = lshr i64 %211, 7
  %213 = and i64 %212, 60
  %214 = or i64 %210, %213
  %215 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 1), i64 0, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = or i64 %207, %216
  %218 = load i64, i64* %6, align 8
  %219 = lshr i64 %218, 13
  %220 = and i64 %219, 15
  %221 = load i64, i64* %6, align 8
  %222 = lshr i64 %221, 14
  %223 = and i64 %222, 48
  %224 = or i64 %220, %223
  %225 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 2), i64 0, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = or i64 %217, %226
  %228 = load i64, i64* %6, align 8
  %229 = lshr i64 %228, 20
  %230 = and i64 %229, 1
  %231 = load i64, i64* %6, align 8
  %232 = lshr i64 %231, 21
  %233 = and i64 %232, 6
  %234 = or i64 %230, %233
  %235 = load i64, i64* %6, align 8
  %236 = lshr i64 %235, 22
  %237 = and i64 %236, 56
  %238 = or i64 %234, %237
  %239 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 3), i64 0, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = or i64 %227, %240
  store i64 %241, i64* %9, align 8
  %242 = load i64, i64* %7, align 8
  %243 = and i64 %242, 63
  %244 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 4), i64 0, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* %7, align 8
  %247 = lshr i64 %246, 7
  %248 = and i64 %247, 3
  %249 = load i64, i64* %7, align 8
  %250 = lshr i64 %249, 8
  %251 = and i64 %250, 60
  %252 = or i64 %248, %251
  %253 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 5), i64 0, i64 %252
  %254 = load i64, i64* %253, align 8
  %255 = or i64 %245, %254
  %256 = load i64, i64* %7, align 8
  %257 = lshr i64 %256, 15
  %258 = and i64 %257, 63
  %259 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 6), i64 0, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = or i64 %255, %260
  %262 = load i64, i64* %7, align 8
  %263 = lshr i64 %262, 21
  %264 = and i64 %263, 15
  %265 = load i64, i64* %7, align 8
  %266 = lshr i64 %265, 22
  %267 = and i64 %266, 48
  %268 = or i64 %264, %267
  %269 = getelementptr inbounds [64 x i64], [64 x i64]* getelementptr inbounds ([8 x [64 x i64]], [8 x [64 x i64]]* @des_skb, i64 0, i64 7), i64 0, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = or i64 %261, %270
  store i64 %271, i64* %8, align 8
  %272 = load i64, i64* %8, align 8
  %273 = shl i64 %272, 16
  %274 = load i64, i64* %9, align 8
  %275 = and i64 %274, 65535
  %276 = or i64 %273, %275
  %277 = and i64 %276, 4294967295
  store i64 %277, i64* %10, align 8
  %278 = load i64, i64* %10, align 8
  %279 = shl i64 %278, 2
  %280 = load i64, i64* %10, align 8
  %281 = lshr i64 %280, 30
  %282 = or i64 %279, %281
  %283 = and i64 %282, 4294967295
  %284 = load i64*, i64** %12, align 8
  %285 = getelementptr inbounds i64, i64* %284, i32 1
  store i64* %285, i64** %12, align 8
  store i64 %283, i64* %284, align 8
  %286 = load i64, i64* %9, align 8
  %287 = lshr i64 %286, 16
  %288 = load i64, i64* %8, align 8
  %289 = and i64 %288, 4294901760
  %290 = or i64 %287, %289
  store i64 %290, i64* %10, align 8
  %291 = load i64, i64* %10, align 8
  %292 = shl i64 %291, 6
  %293 = load i64, i64* %10, align 8
  %294 = lshr i64 %293, 26
  %295 = or i64 %292, %294
  %296 = and i64 %295, 4294967295
  %297 = load i64*, i64** %12, align 8
  %298 = getelementptr inbounds i64, i64* %297, i32 1
  store i64* %298, i64** %12, align 8
  store i64 %296, i64* %297, align 8
  br label %299

299:                                              ; preds = %199
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  br label %168

302:                                              ; preds = %168
  store i32 0, i32* %3, align 4
  br label %303

303:                                              ; preds = %302, %25, %20
  %304 = load i32, i32* %3, align 4
  ret i32 %304
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_parity([8 x i8]* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca i32, align 4
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 8
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load [8 x i8]*, [8 x i8]** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = load [8 x i8]*, [8 x i8]** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %15, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %32

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_key_sched([8 x i8]* %0, %struct.des_ks_struct* %1) #0 {
  %3 = alloca [8 x i8]*, align 8
  %4 = alloca %struct.des_ks_struct*, align 8
  store [8 x i8]* %0, [8 x i8]** %3, align 8
  store %struct.des_ks_struct* %1, %struct.des_ks_struct** %4, align 8
  %5 = load [8 x i8]*, [8 x i8]** %3, align 8
  %6 = load %struct.des_ks_struct*, %struct.des_ks_struct** %4, align 8
  %7 = call i32 @des_set_key([8 x i8]* %5, %struct.des_ks_struct* %6)
  ret i32 %7
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
