; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.des_context = type { [32 x i64], [32 x i64] }
%struct.des3_context = type { [96 x i64], [96 x i64] }

@SB1 = dso_local global [64 x i64] [i64 16843776, i64 0, i64 65536, i64 16843780, i64 16842756, i64 66564, i64 4, i64 65536, i64 1024, i64 16843776, i64 16843780, i64 1024, i64 16778244, i64 16842756, i64 16777216, i64 4, i64 1028, i64 16778240, i64 16778240, i64 66560, i64 66560, i64 16842752, i64 16842752, i64 16778244, i64 65540, i64 16777220, i64 16777220, i64 65540, i64 0, i64 1028, i64 66564, i64 16777216, i64 65536, i64 16843780, i64 4, i64 16842752, i64 16843776, i64 16777216, i64 16777216, i64 1024, i64 16842756, i64 65536, i64 66560, i64 16777220, i64 1024, i64 4, i64 16778244, i64 66564, i64 16843780, i64 65540, i64 16842752, i64 16778244, i64 16777220, i64 1028, i64 66564, i64 16843776, i64 1028, i64 16778240, i64 16778240, i64 0, i64 65540, i64 66560, i64 0, i64 16842756], align 16
@LHs = internal global [16 x i64] [i64 0, i64 1, i64 256, i64 257, i64 65536, i64 65537, i64 65792, i64 65793, i64 16777216, i64 16777217, i64 16777472, i64 16777473, i64 16842752, i64 16842753, i64 16843008, i64 16843009], align 16
@RHs = internal global [16 x i64] [i64 0, i64 16777216, i64 65536, i64 16842752, i64 256, i64 16777472, i64 65792, i64 16843008, i64 1, i64 16777217, i64 65537, i64 16842753, i64 257, i64 16777473, i64 65793, i64 16843009], align 16
@SB8 = internal global [64 x i64] [i64 268439616, i64 4096, i64 262144, i64 268701760, i64 268435456, i64 268439616, i64 64, i64 268435456, i64 262208, i64 268697600, i64 268701760, i64 266240, i64 268701696, i64 266304, i64 4096, i64 64, i64 268697600, i64 268435520, i64 268439552, i64 4160, i64 266240, i64 262208, i64 268697664, i64 268701696, i64 4160, i64 0, i64 0, i64 268697664, i64 268435520, i64 268439552, i64 266304, i64 262144, i64 266304, i64 262144, i64 268701696, i64 4096, i64 64, i64 268697664, i64 4096, i64 266304, i64 268439552, i64 64, i64 268435520, i64 268697600, i64 268697664, i64 268435456, i64 262144, i64 268439616, i64 0, i64 268701760, i64 262208, i64 268435520, i64 268697600, i64 268439552, i64 268439616, i64 0, i64 268701760, i64 266240, i64 266240, i64 4160, i64 4160, i64 262208, i64 268435456, i64 268701696], align 16
@SB6 = internal global [64 x i64] [i64 536870928, i64 541065216, i64 16384, i64 541081616, i64 541065216, i64 16, i64 541081616, i64 4194304, i64 536887296, i64 4210704, i64 4194304, i64 536870928, i64 4194320, i64 536887296, i64 536870912, i64 16400, i64 0, i64 4194320, i64 536887312, i64 16384, i64 4210688, i64 536887312, i64 16, i64 541065232, i64 541065232, i64 0, i64 4210704, i64 541081600, i64 16400, i64 4210688, i64 541081600, i64 536870912, i64 536887296, i64 16, i64 541065232, i64 4210688, i64 541081616, i64 4194304, i64 16400, i64 536870928, i64 4194304, i64 536887296, i64 536870912, i64 16400, i64 536870928, i64 541081616, i64 4210688, i64 541065216, i64 4210704, i64 541081600, i64 0, i64 541065232, i64 16, i64 16384, i64 541065216, i64 4210704, i64 16384, i64 4194320, i64 536887312, i64 0, i64 541081600, i64 536870912, i64 4194320, i64 536887312], align 16
@SB4 = internal global [64 x i64] [i64 8396801, i64 8321, i64 8321, i64 128, i64 8396928, i64 8388737, i64 8388609, i64 8193, i64 0, i64 8396800, i64 8396800, i64 8396929, i64 129, i64 0, i64 8388736, i64 8388609, i64 1, i64 8192, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8193, i64 8320, i64 8388737, i64 1, i64 8320, i64 8388736, i64 8192, i64 8396928, i64 8396929, i64 129, i64 8388736, i64 8388609, i64 8396800, i64 8396929, i64 129, i64 0, i64 0, i64 8396800, i64 8320, i64 8388736, i64 8388737, i64 1, i64 8396801, i64 8321, i64 8321, i64 128, i64 8396929, i64 129, i64 1, i64 8192, i64 8388609, i64 8193, i64 8396928, i64 8388737, i64 8193, i64 8320, i64 8388608, i64 8396801, i64 128, i64 8388608, i64 8192, i64 8396928], align 16
@SB2 = internal global [64 x i64] [i64 2148565024, i64 2147516416, i64 32768, i64 1081376, i64 1048576, i64 32, i64 2148532256, i64 2147516448, i64 2147483680, i64 2148565024, i64 2148564992, i64 2147483648, i64 2147516416, i64 1048576, i64 32, i64 2148532256, i64 1081344, i64 1048608, i64 2147516448, i64 0, i64 2147483648, i64 32768, i64 1081376, i64 2148532224, i64 1048608, i64 2147483680, i64 0, i64 1081344, i64 32800, i64 2148564992, i64 2148532224, i64 32800, i64 0, i64 1081376, i64 2148532256, i64 1048576, i64 2147516448, i64 2148532224, i64 2148564992, i64 32768, i64 2148532224, i64 2147516416, i64 32, i64 2148565024, i64 1081376, i64 32, i64 32768, i64 2147483648, i64 32800, i64 2148564992, i64 1048576, i64 2147483680, i64 1048608, i64 2147516448, i64 2147483680, i64 1048608, i64 1081344, i64 0, i64 2147516416, i64 32800, i64 2147483648, i64 2148532256, i64 2148565024, i64 1081344], align 16
@SB7 = internal global [64 x i64] [i64 2097152, i64 69206018, i64 67110914, i64 0, i64 2048, i64 67110914, i64 2099202, i64 69208064, i64 69208066, i64 2097152, i64 0, i64 67108866, i64 2, i64 67108864, i64 69206018, i64 2050, i64 67110912, i64 2099202, i64 2097154, i64 67110912, i64 67108866, i64 69206016, i64 69208064, i64 2097154, i64 69206016, i64 2048, i64 2050, i64 69208066, i64 2099200, i64 2, i64 67108864, i64 2099200, i64 67108864, i64 2099200, i64 2097152, i64 67110914, i64 67110914, i64 69206018, i64 69206018, i64 2, i64 2097154, i64 67108864, i64 67110912, i64 2097152, i64 69208064, i64 2050, i64 2099202, i64 69208064, i64 2050, i64 67108866, i64 69208066, i64 69206016, i64 2099200, i64 0, i64 2, i64 69208066, i64 0, i64 2099202, i64 69206016, i64 2048, i64 67108866, i64 67110912, i64 2048, i64 2097154], align 16
@SB5 = internal global [64 x i64] [i64 256, i64 34078976, i64 34078720, i64 1107296512, i64 524288, i64 256, i64 1073741824, i64 34078720, i64 1074266368, i64 524288, i64 33554688, i64 1074266368, i64 1107296512, i64 1107820544, i64 524544, i64 1073741824, i64 33554432, i64 1074266112, i64 1074266112, i64 0, i64 1073742080, i64 1107820800, i64 1107820800, i64 33554688, i64 1107820544, i64 1073742080, i64 0, i64 1107296256, i64 34078976, i64 33554432, i64 1107296256, i64 524544, i64 524288, i64 1107296512, i64 256, i64 33554432, i64 1073741824, i64 34078720, i64 1107296512, i64 1074266368, i64 33554688, i64 1073741824, i64 1107820544, i64 34078976, i64 1074266368, i64 256, i64 33554432, i64 1107820544, i64 1107820800, i64 524544, i64 1107296256, i64 1107820800, i64 34078720, i64 0, i64 1074266112, i64 1107296256, i64 524544, i64 33554688, i64 1073742080, i64 524288, i64 0, i64 1074266112, i64 34078976, i64 1073742080], align 16
@SB3 = internal global [64 x i64] [i64 520, i64 134349312, i64 0, i64 134348808, i64 134218240, i64 0, i64 131592, i64 134218240, i64 131080, i64 134217736, i64 134217736, i64 131072, i64 134349320, i64 131080, i64 134348800, i64 520, i64 134217728, i64 8, i64 134349312, i64 512, i64 131584, i64 134348800, i64 134348808, i64 131592, i64 134218248, i64 131584, i64 131072, i64 134218248, i64 8, i64 134349320, i64 512, i64 134217728, i64 134349312, i64 134217728, i64 131080, i64 520, i64 131072, i64 134349312, i64 134218240, i64 0, i64 512, i64 131080, i64 134349320, i64 134218240, i64 134217736, i64 512, i64 0, i64 134348808, i64 134218248, i64 131072, i64 134217728, i64 134349320, i64 8, i64 131592, i64 131584, i64 134217736, i64 134348800, i64 134218248, i64 520, i64 134348800, i64 131592, i64 8, i64 134348808, i64 131584], align 16
@.str = private unnamed_addr constant [44 x i8] c"\0A Triple-DES Monte Carlo Test (ECB mode) - \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"encryption\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"decryption\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c" Test %d, key size = %3d bits: \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@DES3_init = internal global [8 x i8] c"Now is t", align 1
@DES3_keys = internal global [3 x [8 x i8]] [[8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"#Eg\89\AB\CD\EF\01", [8 x i8] c"Eg\89\AB\CD\EF\01#"], align 16
@DES3_enc_test = internal global [3 x [8 x i8]] [[8 x i8] c"j*\19\F4\1E\CA\85K", [8 x i8] c"\03\E6\9F[\FAX\EBB", [8 x i8] c"\DD\17\E8\B8\B47\D22"], align 16
@DES3_dec_test = internal global [3 x [8 x i8]] [[8 x i8] c"\CD\D6O/\94'\C1]", [8 x i8] c"i\96\C8\FAG\A2\AB\EB", [8 x i8] c"\83%9vD\09\1A\0A"], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"passed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_main_ks(i64* %0, i8* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  %13 = shl i64 %12, 24
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i64
  %18 = shl i64 %17, 16
  %19 = or i64 %13, %18
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i64
  %24 = shl i64 %23, 8
  %25 = or i64 %19, %24
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  %30 = or i64 %25, %29
  store i64 %30, i64* %6, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 4
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = shl i64 %34, 24
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i64
  %40 = shl i64 %39, 16
  %41 = or i64 %35, %40
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i64
  %46 = shl i64 %45, 8
  %47 = or i64 %41, %46
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i64
  %52 = or i64 %47, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %7, align 8
  %54 = lshr i64 %53, 4
  %55 = load i64, i64* %6, align 8
  %56 = xor i64 %54, %55
  %57 = and i64 %56, 252645135
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = xor i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %8, align 8
  %62 = shl i64 %61, 4
  %63 = load i64, i64* %7, align 8
  %64 = xor i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %6, align 8
  %67 = xor i64 %65, %66
  %68 = and i64 %67, 269488144
  store i64 %68, i64* %8, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %6, align 8
  %71 = xor i64 %70, %69
  store i64 %71, i64* %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %7, align 8
  %74 = xor i64 %73, %72
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %6, align 8
  %76 = and i64 %75, 15
  %77 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = shl i64 %78, 3
  %80 = load i64, i64* %6, align 8
  %81 = lshr i64 %80, 8
  %82 = and i64 %81, 15
  %83 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = shl i64 %84, 2
  %86 = or i64 %79, %85
  %87 = load i64, i64* %6, align 8
  %88 = lshr i64 %87, 16
  %89 = and i64 %88, 15
  %90 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = shl i64 %91, 1
  %93 = or i64 %86, %92
  %94 = load i64, i64* %6, align 8
  %95 = lshr i64 %94, 24
  %96 = and i64 %95, 15
  %97 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %93, %98
  %100 = load i64, i64* %6, align 8
  %101 = lshr i64 %100, 5
  %102 = and i64 %101, 15
  %103 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = shl i64 %104, 7
  %106 = or i64 %99, %105
  %107 = load i64, i64* %6, align 8
  %108 = lshr i64 %107, 13
  %109 = and i64 %108, 15
  %110 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = shl i64 %111, 6
  %113 = or i64 %106, %112
  %114 = load i64, i64* %6, align 8
  %115 = lshr i64 %114, 21
  %116 = and i64 %115, 15
  %117 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = shl i64 %118, 5
  %120 = or i64 %113, %119
  %121 = load i64, i64* %6, align 8
  %122 = lshr i64 %121, 29
  %123 = and i64 %122, 15
  %124 = getelementptr inbounds [16 x i64], [16 x i64]* @LHs, i64 0, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = shl i64 %125, 4
  %127 = or i64 %120, %126
  store i64 %127, i64* %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = lshr i64 %128, 1
  %130 = and i64 %129, 15
  %131 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = shl i64 %132, 3
  %134 = load i64, i64* %7, align 8
  %135 = lshr i64 %134, 9
  %136 = and i64 %135, 15
  %137 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = shl i64 %138, 2
  %140 = or i64 %133, %139
  %141 = load i64, i64* %7, align 8
  %142 = lshr i64 %141, 17
  %143 = and i64 %142, 15
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = shl i64 %145, 1
  %147 = or i64 %140, %146
  %148 = load i64, i64* %7, align 8
  %149 = lshr i64 %148, 25
  %150 = and i64 %149, 15
  %151 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %147, %152
  %154 = load i64, i64* %7, align 8
  %155 = lshr i64 %154, 4
  %156 = and i64 %155, 15
  %157 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = shl i64 %158, 7
  %160 = or i64 %153, %159
  %161 = load i64, i64* %7, align 8
  %162 = lshr i64 %161, 12
  %163 = and i64 %162, 15
  %164 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = shl i64 %165, 6
  %167 = or i64 %160, %166
  %168 = load i64, i64* %7, align 8
  %169 = lshr i64 %168, 20
  %170 = and i64 %169, 15
  %171 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = shl i64 %172, 5
  %174 = or i64 %167, %173
  %175 = load i64, i64* %7, align 8
  %176 = lshr i64 %175, 28
  %177 = and i64 %176, 15
  %178 = getelementptr inbounds [16 x i64], [16 x i64]* @RHs, i64 0, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = shl i64 %179, 4
  %181 = or i64 %174, %180
  store i64 %181, i64* %7, align 8
  %182 = load i64, i64* %6, align 8
  %183 = and i64 %182, 268435455
  store i64 %183, i64* %6, align 8
  %184 = load i64, i64* %7, align 8
  %185 = and i64 %184, 268435455
  store i64 %185, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %401, %2
  %187 = load i32, i32* %5, align 4
  %188 = icmp slt i32 %187, 16
  br i1 %188, label %189, label %404

189:                                              ; preds = %186
  %190 = load i32, i32* %5, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %198, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %5, align 4
  %194 = icmp eq i32 %193, 8
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %5, align 4
  %197 = icmp eq i32 %196, 15
  br i1 %197, label %198, label %211

198:                                              ; preds = %195, %192, %189
  %199 = load i64, i64* %6, align 8
  %200 = shl i64 %199, 1
  %201 = load i64, i64* %6, align 8
  %202 = lshr i64 %201, 27
  %203 = or i64 %200, %202
  %204 = and i64 %203, 268435455
  store i64 %204, i64* %6, align 8
  %205 = load i64, i64* %7, align 8
  %206 = shl i64 %205, 1
  %207 = load i64, i64* %7, align 8
  %208 = lshr i64 %207, 27
  %209 = or i64 %206, %208
  %210 = and i64 %209, 268435455
  store i64 %210, i64* %7, align 8
  br label %224

211:                                              ; preds = %195
  %212 = load i64, i64* %6, align 8
  %213 = shl i64 %212, 2
  %214 = load i64, i64* %6, align 8
  %215 = lshr i64 %214, 26
  %216 = or i64 %213, %215
  %217 = and i64 %216, 268435455
  store i64 %217, i64* %6, align 8
  %218 = load i64, i64* %7, align 8
  %219 = shl i64 %218, 2
  %220 = load i64, i64* %7, align 8
  %221 = lshr i64 %220, 26
  %222 = or i64 %219, %221
  %223 = and i64 %222, 268435455
  store i64 %223, i64* %7, align 8
  br label %224

224:                                              ; preds = %211, %198
  %225 = load i64, i64* %6, align 8
  %226 = shl i64 %225, 4
  %227 = and i64 %226, 603979776
  %228 = load i64, i64* %6, align 8
  %229 = shl i64 %228, 28
  %230 = and i64 %229, 268435456
  %231 = or i64 %227, %230
  %232 = load i64, i64* %6, align 8
  %233 = shl i64 %232, 14
  %234 = and i64 %233, 134217728
  %235 = or i64 %231, %234
  %236 = load i64, i64* %6, align 8
  %237 = shl i64 %236, 18
  %238 = and i64 %237, 34078720
  %239 = or i64 %235, %238
  %240 = load i64, i64* %6, align 8
  %241 = shl i64 %240, 6
  %242 = and i64 %241, 16777216
  %243 = or i64 %239, %242
  %244 = load i64, i64* %6, align 8
  %245 = shl i64 %244, 9
  %246 = and i64 %245, 2097152
  %247 = or i64 %243, %246
  %248 = load i64, i64* %6, align 8
  %249 = lshr i64 %248, 1
  %250 = and i64 %249, 1048576
  %251 = or i64 %247, %250
  %252 = load i64, i64* %6, align 8
  %253 = shl i64 %252, 10
  %254 = and i64 %253, 262144
  %255 = or i64 %251, %254
  %256 = load i64, i64* %6, align 8
  %257 = shl i64 %256, 2
  %258 = and i64 %257, 131072
  %259 = or i64 %255, %258
  %260 = load i64, i64* %6, align 8
  %261 = lshr i64 %260, 10
  %262 = and i64 %261, 65536
  %263 = or i64 %259, %262
  %264 = load i64, i64* %7, align 8
  %265 = lshr i64 %264, 13
  %266 = and i64 %265, 8192
  %267 = or i64 %263, %266
  %268 = load i64, i64* %7, align 8
  %269 = lshr i64 %268, 4
  %270 = and i64 %269, 4096
  %271 = or i64 %267, %270
  %272 = load i64, i64* %7, align 8
  %273 = shl i64 %272, 6
  %274 = and i64 %273, 2048
  %275 = or i64 %271, %274
  %276 = load i64, i64* %7, align 8
  %277 = lshr i64 %276, 1
  %278 = and i64 %277, 1024
  %279 = or i64 %275, %278
  %280 = load i64, i64* %7, align 8
  %281 = lshr i64 %280, 14
  %282 = and i64 %281, 512
  %283 = or i64 %279, %282
  %284 = load i64, i64* %7, align 8
  %285 = and i64 %284, 256
  %286 = or i64 %283, %285
  %287 = load i64, i64* %7, align 8
  %288 = lshr i64 %287, 5
  %289 = and i64 %288, 32
  %290 = or i64 %286, %289
  %291 = load i64, i64* %7, align 8
  %292 = lshr i64 %291, 10
  %293 = and i64 %292, 16
  %294 = or i64 %290, %293
  %295 = load i64, i64* %7, align 8
  %296 = lshr i64 %295, 3
  %297 = and i64 %296, 8
  %298 = or i64 %294, %297
  %299 = load i64, i64* %7, align 8
  %300 = lshr i64 %299, 18
  %301 = and i64 %300, 4
  %302 = or i64 %298, %301
  %303 = load i64, i64* %7, align 8
  %304 = lshr i64 %303, 26
  %305 = and i64 %304, 2
  %306 = or i64 %302, %305
  %307 = load i64, i64* %7, align 8
  %308 = lshr i64 %307, 24
  %309 = and i64 %308, 1
  %310 = or i64 %306, %309
  %311 = load i64*, i64** %3, align 8
  %312 = getelementptr inbounds i64, i64* %311, i32 1
  store i64* %312, i64** %3, align 8
  store i64 %310, i64* %311, align 8
  %313 = load i64, i64* %6, align 8
  %314 = shl i64 %313, 15
  %315 = and i64 %314, 536870912
  %316 = load i64, i64* %6, align 8
  %317 = shl i64 %316, 17
  %318 = and i64 %317, 268435456
  %319 = or i64 %315, %318
  %320 = load i64, i64* %6, align 8
  %321 = shl i64 %320, 10
  %322 = and i64 %321, 134217728
  %323 = or i64 %319, %322
  %324 = load i64, i64* %6, align 8
  %325 = shl i64 %324, 22
  %326 = and i64 %325, 67108864
  %327 = or i64 %323, %326
  %328 = load i64, i64* %6, align 8
  %329 = lshr i64 %328, 2
  %330 = and i64 %329, 33554432
  %331 = or i64 %327, %330
  %332 = load i64, i64* %6, align 8
  %333 = shl i64 %332, 1
  %334 = and i64 %333, 16777216
  %335 = or i64 %331, %334
  %336 = load i64, i64* %6, align 8
  %337 = shl i64 %336, 16
  %338 = and i64 %337, 2097152
  %339 = or i64 %335, %338
  %340 = load i64, i64* %6, align 8
  %341 = shl i64 %340, 11
  %342 = and i64 %341, 1048576
  %343 = or i64 %339, %342
  %344 = load i64, i64* %6, align 8
  %345 = shl i64 %344, 3
  %346 = and i64 %345, 524288
  %347 = or i64 %343, %346
  %348 = load i64, i64* %6, align 8
  %349 = lshr i64 %348, 6
  %350 = and i64 %349, 262144
  %351 = or i64 %347, %350
  %352 = load i64, i64* %6, align 8
  %353 = shl i64 %352, 15
  %354 = and i64 %353, 131072
  %355 = or i64 %351, %354
  %356 = load i64, i64* %6, align 8
  %357 = lshr i64 %356, 4
  %358 = and i64 %357, 65536
  %359 = or i64 %355, %358
  %360 = load i64, i64* %7, align 8
  %361 = lshr i64 %360, 2
  %362 = and i64 %361, 8192
  %363 = or i64 %359, %362
  %364 = load i64, i64* %7, align 8
  %365 = shl i64 %364, 8
  %366 = and i64 %365, 4096
  %367 = or i64 %363, %366
  %368 = load i64, i64* %7, align 8
  %369 = lshr i64 %368, 14
  %370 = and i64 %369, 2056
  %371 = or i64 %367, %370
  %372 = load i64, i64* %7, align 8
  %373 = lshr i64 %372, 9
  %374 = and i64 %373, 1024
  %375 = or i64 %371, %374
  %376 = load i64, i64* %7, align 8
  %377 = and i64 %376, 512
  %378 = or i64 %375, %377
  %379 = load i64, i64* %7, align 8
  %380 = shl i64 %379, 7
  %381 = and i64 %380, 256
  %382 = or i64 %378, %381
  %383 = load i64, i64* %7, align 8
  %384 = lshr i64 %383, 7
  %385 = and i64 %384, 32
  %386 = or i64 %382, %385
  %387 = load i64, i64* %7, align 8
  %388 = lshr i64 %387, 3
  %389 = and i64 %388, 17
  %390 = or i64 %386, %389
  %391 = load i64, i64* %7, align 8
  %392 = shl i64 %391, 2
  %393 = and i64 %392, 4
  %394 = or i64 %390, %393
  %395 = load i64, i64* %7, align 8
  %396 = lshr i64 %395, 21
  %397 = and i64 %396, 2
  %398 = or i64 %394, %397
  %399 = load i64*, i64** %3, align 8
  %400 = getelementptr inbounds i64, i64* %399, i32 1
  store i64* %400, i64** %3, align 8
  store i64 %398, i64* %399, align 8
  br label %401

401:                                              ; preds = %224
  %402 = load i32, i32* %5, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %5, align 4
  br label %186

404:                                              ; preds = %186
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des_set_key(%struct.des_context* %0, i8* %1) #0 {
  %3 = alloca %struct.des_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.des_context* %0, %struct.des_context** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.des_context*, %struct.des_context** %3, align 8
  %7 = getelementptr inbounds %struct.des_context, %struct.des_context* %6, i32 0, i32 0
  %8 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @des_main_ks(i64* %8, i8* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load %struct.des_context*, %struct.des_context** %3, align 8
  %16 = getelementptr inbounds %struct.des_context, %struct.des_context* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 30, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x i64], [32 x i64]* %16, i64 0, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.des_context*, %struct.des_context** %3, align 8
  %23 = getelementptr inbounds %struct.des_context, %struct.des_context* %22, i32 0, i32 1
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [32 x i64], [32 x i64]* %23, i64 0, i64 %25
  store i64 %21, i64* %26, align 8
  %27 = load %struct.des_context*, %struct.des_context** %3, align 8
  %28 = getelementptr inbounds %struct.des_context, %struct.des_context* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = sub nsw i32 31, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [32 x i64], [32 x i64]* %28, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.des_context*, %struct.des_context** %3, align 8
  %35 = getelementptr inbounds %struct.des_context, %struct.des_context* %34, i32 0, i32 1
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x i64], [32 x i64]* %35, i64 0, i64 %38
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %14
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %5, align 4
  br label %11

43:                                               ; preds = %11
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_crypt(i64* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = shl i64 %13, 24
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = shl i64 %18, 16
  %20 = or i64 %14, %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 8
  %26 = or i64 %20, %25
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = or i64 %26, %30
  store i64 %31, i64* %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 24
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = shl i64 %40, 16
  %42 = or i64 %36, %41
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 6
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 8
  %48 = or i64 %42, %47
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = or i64 %48, %52
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = lshr i64 %54, 4
  %56 = load i64, i64* %8, align 8
  %57 = xor i64 %55, %56
  %58 = and i64 %57, 252645135
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = xor i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = shl i64 %62, 4
  %64 = load i64, i64* %7, align 8
  %65 = xor i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = lshr i64 %66, 16
  %68 = load i64, i64* %8, align 8
  %69 = xor i64 %67, %68
  %70 = and i64 %69, 65535
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = xor i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = shl i64 %74, 16
  %76 = load i64, i64* %7, align 8
  %77 = xor i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = lshr i64 %78, 2
  %80 = load i64, i64* %7, align 8
  %81 = xor i64 %79, %80
  %82 = and i64 %81, 858993459
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %7, align 8
  %85 = xor i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = shl i64 %86, 2
  %88 = load i64, i64* %8, align 8
  %89 = xor i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = lshr i64 %90, 8
  %92 = load i64, i64* %7, align 8
  %93 = xor i64 %91, %92
  %94 = and i64 %93, 16711935
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = xor i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = shl i64 %98, 8
  %100 = load i64, i64* %8, align 8
  %101 = xor i64 %100, %99
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = shl i64 %102, 1
  %104 = load i64, i64* %8, align 8
  %105 = lshr i64 %104, 31
  %106 = or i64 %103, %105
  %107 = and i64 %106, 4294967295
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = xor i64 %108, %109
  %111 = and i64 %110, 2863311530
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = xor i64 %113, %112
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %7, align 8
  %117 = xor i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load i64, i64* %7, align 8
  %119 = shl i64 %118, 1
  %120 = load i64, i64* %7, align 8
  %121 = lshr i64 %120, 31
  %122 = or i64 %119, %121
  %123 = and i64 %122, 4294967295
  store i64 %123, i64* %7, align 8
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %4, align 8
  %126 = load i64, i64* %124, align 8
  %127 = load i64, i64* %8, align 8
  %128 = xor i64 %126, %127
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = and i64 %129, 63
  %131 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = lshr i64 %133, 8
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = xor i64 %132, %137
  %139 = load i64, i64* %9, align 8
  %140 = lshr i64 %139, 16
  %141 = and i64 %140, 63
  %142 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = xor i64 %138, %143
  %145 = load i64, i64* %9, align 8
  %146 = lshr i64 %145, 24
  %147 = and i64 %146, 63
  %148 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = xor i64 %144, %149
  %151 = load i64, i64* %7, align 8
  %152 = xor i64 %151, %150
  store i64 %152, i64* %7, align 8
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %4, align 8
  %155 = load i64, i64* %153, align 8
  %156 = load i64, i64* %8, align 8
  %157 = shl i64 %156, 28
  %158 = load i64, i64* %8, align 8
  %159 = lshr i64 %158, 4
  %160 = or i64 %157, %159
  %161 = xor i64 %155, %160
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %9, align 8
  %163 = and i64 %162, 63
  %164 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = lshr i64 %166, 8
  %168 = and i64 %167, 63
  %169 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = xor i64 %165, %170
  %172 = load i64, i64* %9, align 8
  %173 = lshr i64 %172, 16
  %174 = and i64 %173, 63
  %175 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = xor i64 %171, %176
  %178 = load i64, i64* %9, align 8
  %179 = lshr i64 %178, 24
  %180 = and i64 %179, 63
  %181 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = xor i64 %177, %182
  %184 = load i64, i64* %7, align 8
  %185 = xor i64 %184, %183
  store i64 %185, i64* %7, align 8
  %186 = load i64*, i64** %4, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %4, align 8
  %188 = load i64, i64* %186, align 8
  %189 = load i64, i64* %7, align 8
  %190 = xor i64 %188, %189
  store i64 %190, i64* %9, align 8
  %191 = load i64, i64* %9, align 8
  %192 = and i64 %191, 63
  %193 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = lshr i64 %195, 8
  %197 = and i64 %196, 63
  %198 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = xor i64 %194, %199
  %201 = load i64, i64* %9, align 8
  %202 = lshr i64 %201, 16
  %203 = and i64 %202, 63
  %204 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = xor i64 %200, %205
  %207 = load i64, i64* %9, align 8
  %208 = lshr i64 %207, 24
  %209 = and i64 %208, 63
  %210 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = xor i64 %206, %211
  %213 = load i64, i64* %8, align 8
  %214 = xor i64 %213, %212
  store i64 %214, i64* %8, align 8
  %215 = load i64*, i64** %4, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %4, align 8
  %217 = load i64, i64* %215, align 8
  %218 = load i64, i64* %7, align 8
  %219 = shl i64 %218, 28
  %220 = load i64, i64* %7, align 8
  %221 = lshr i64 %220, 4
  %222 = or i64 %219, %221
  %223 = xor i64 %217, %222
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %9, align 8
  %225 = and i64 %224, 63
  %226 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = lshr i64 %228, 8
  %230 = and i64 %229, 63
  %231 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = xor i64 %227, %232
  %234 = load i64, i64* %9, align 8
  %235 = lshr i64 %234, 16
  %236 = and i64 %235, 63
  %237 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = xor i64 %233, %238
  %240 = load i64, i64* %9, align 8
  %241 = lshr i64 %240, 24
  %242 = and i64 %241, 63
  %243 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = xor i64 %239, %244
  %246 = load i64, i64* %8, align 8
  %247 = xor i64 %246, %245
  store i64 %247, i64* %8, align 8
  %248 = load i64*, i64** %4, align 8
  %249 = getelementptr inbounds i64, i64* %248, i32 1
  store i64* %249, i64** %4, align 8
  %250 = load i64, i64* %248, align 8
  %251 = load i64, i64* %8, align 8
  %252 = xor i64 %250, %251
  store i64 %252, i64* %9, align 8
  %253 = load i64, i64* %9, align 8
  %254 = and i64 %253, 63
  %255 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %9, align 8
  %258 = lshr i64 %257, 8
  %259 = and i64 %258, 63
  %260 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = xor i64 %256, %261
  %263 = load i64, i64* %9, align 8
  %264 = lshr i64 %263, 16
  %265 = and i64 %264, 63
  %266 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = xor i64 %262, %267
  %269 = load i64, i64* %9, align 8
  %270 = lshr i64 %269, 24
  %271 = and i64 %270, 63
  %272 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = xor i64 %268, %273
  %275 = load i64, i64* %7, align 8
  %276 = xor i64 %275, %274
  store i64 %276, i64* %7, align 8
  %277 = load i64*, i64** %4, align 8
  %278 = getelementptr inbounds i64, i64* %277, i32 1
  store i64* %278, i64** %4, align 8
  %279 = load i64, i64* %277, align 8
  %280 = load i64, i64* %8, align 8
  %281 = shl i64 %280, 28
  %282 = load i64, i64* %8, align 8
  %283 = lshr i64 %282, 4
  %284 = or i64 %281, %283
  %285 = xor i64 %279, %284
  store i64 %285, i64* %9, align 8
  %286 = load i64, i64* %9, align 8
  %287 = and i64 %286, 63
  %288 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %9, align 8
  %291 = lshr i64 %290, 8
  %292 = and i64 %291, 63
  %293 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = xor i64 %289, %294
  %296 = load i64, i64* %9, align 8
  %297 = lshr i64 %296, 16
  %298 = and i64 %297, 63
  %299 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = xor i64 %295, %300
  %302 = load i64, i64* %9, align 8
  %303 = lshr i64 %302, 24
  %304 = and i64 %303, 63
  %305 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = xor i64 %301, %306
  %308 = load i64, i64* %7, align 8
  %309 = xor i64 %308, %307
  store i64 %309, i64* %7, align 8
  %310 = load i64*, i64** %4, align 8
  %311 = getelementptr inbounds i64, i64* %310, i32 1
  store i64* %311, i64** %4, align 8
  %312 = load i64, i64* %310, align 8
  %313 = load i64, i64* %7, align 8
  %314 = xor i64 %312, %313
  store i64 %314, i64* %9, align 8
  %315 = load i64, i64* %9, align 8
  %316 = and i64 %315, 63
  %317 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %9, align 8
  %320 = lshr i64 %319, 8
  %321 = and i64 %320, 63
  %322 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = xor i64 %318, %323
  %325 = load i64, i64* %9, align 8
  %326 = lshr i64 %325, 16
  %327 = and i64 %326, 63
  %328 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = xor i64 %324, %329
  %331 = load i64, i64* %9, align 8
  %332 = lshr i64 %331, 24
  %333 = and i64 %332, 63
  %334 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = xor i64 %330, %335
  %337 = load i64, i64* %8, align 8
  %338 = xor i64 %337, %336
  store i64 %338, i64* %8, align 8
  %339 = load i64*, i64** %4, align 8
  %340 = getelementptr inbounds i64, i64* %339, i32 1
  store i64* %340, i64** %4, align 8
  %341 = load i64, i64* %339, align 8
  %342 = load i64, i64* %7, align 8
  %343 = shl i64 %342, 28
  %344 = load i64, i64* %7, align 8
  %345 = lshr i64 %344, 4
  %346 = or i64 %343, %345
  %347 = xor i64 %341, %346
  store i64 %347, i64* %9, align 8
  %348 = load i64, i64* %9, align 8
  %349 = and i64 %348, 63
  %350 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %9, align 8
  %353 = lshr i64 %352, 8
  %354 = and i64 %353, 63
  %355 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = xor i64 %351, %356
  %358 = load i64, i64* %9, align 8
  %359 = lshr i64 %358, 16
  %360 = and i64 %359, 63
  %361 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = xor i64 %357, %362
  %364 = load i64, i64* %9, align 8
  %365 = lshr i64 %364, 24
  %366 = and i64 %365, 63
  %367 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = xor i64 %363, %368
  %370 = load i64, i64* %8, align 8
  %371 = xor i64 %370, %369
  store i64 %371, i64* %8, align 8
  %372 = load i64*, i64** %4, align 8
  %373 = getelementptr inbounds i64, i64* %372, i32 1
  store i64* %373, i64** %4, align 8
  %374 = load i64, i64* %372, align 8
  %375 = load i64, i64* %8, align 8
  %376 = xor i64 %374, %375
  store i64 %376, i64* %9, align 8
  %377 = load i64, i64* %9, align 8
  %378 = and i64 %377, 63
  %379 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %9, align 8
  %382 = lshr i64 %381, 8
  %383 = and i64 %382, 63
  %384 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = xor i64 %380, %385
  %387 = load i64, i64* %9, align 8
  %388 = lshr i64 %387, 16
  %389 = and i64 %388, 63
  %390 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = xor i64 %386, %391
  %393 = load i64, i64* %9, align 8
  %394 = lshr i64 %393, 24
  %395 = and i64 %394, 63
  %396 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = xor i64 %392, %397
  %399 = load i64, i64* %7, align 8
  %400 = xor i64 %399, %398
  store i64 %400, i64* %7, align 8
  %401 = load i64*, i64** %4, align 8
  %402 = getelementptr inbounds i64, i64* %401, i32 1
  store i64* %402, i64** %4, align 8
  %403 = load i64, i64* %401, align 8
  %404 = load i64, i64* %8, align 8
  %405 = shl i64 %404, 28
  %406 = load i64, i64* %8, align 8
  %407 = lshr i64 %406, 4
  %408 = or i64 %405, %407
  %409 = xor i64 %403, %408
  store i64 %409, i64* %9, align 8
  %410 = load i64, i64* %9, align 8
  %411 = and i64 %410, 63
  %412 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* %9, align 8
  %415 = lshr i64 %414, 8
  %416 = and i64 %415, 63
  %417 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = xor i64 %413, %418
  %420 = load i64, i64* %9, align 8
  %421 = lshr i64 %420, 16
  %422 = and i64 %421, 63
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = xor i64 %419, %424
  %426 = load i64, i64* %9, align 8
  %427 = lshr i64 %426, 24
  %428 = and i64 %427, 63
  %429 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %428
  %430 = load i64, i64* %429, align 8
  %431 = xor i64 %425, %430
  %432 = load i64, i64* %7, align 8
  %433 = xor i64 %432, %431
  store i64 %433, i64* %7, align 8
  %434 = load i64*, i64** %4, align 8
  %435 = getelementptr inbounds i64, i64* %434, i32 1
  store i64* %435, i64** %4, align 8
  %436 = load i64, i64* %434, align 8
  %437 = load i64, i64* %7, align 8
  %438 = xor i64 %436, %437
  store i64 %438, i64* %9, align 8
  %439 = load i64, i64* %9, align 8
  %440 = and i64 %439, 63
  %441 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* %9, align 8
  %444 = lshr i64 %443, 8
  %445 = and i64 %444, 63
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = xor i64 %442, %447
  %449 = load i64, i64* %9, align 8
  %450 = lshr i64 %449, 16
  %451 = and i64 %450, 63
  %452 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = xor i64 %448, %453
  %455 = load i64, i64* %9, align 8
  %456 = lshr i64 %455, 24
  %457 = and i64 %456, 63
  %458 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = xor i64 %454, %459
  %461 = load i64, i64* %8, align 8
  %462 = xor i64 %461, %460
  store i64 %462, i64* %8, align 8
  %463 = load i64*, i64** %4, align 8
  %464 = getelementptr inbounds i64, i64* %463, i32 1
  store i64* %464, i64** %4, align 8
  %465 = load i64, i64* %463, align 8
  %466 = load i64, i64* %7, align 8
  %467 = shl i64 %466, 28
  %468 = load i64, i64* %7, align 8
  %469 = lshr i64 %468, 4
  %470 = or i64 %467, %469
  %471 = xor i64 %465, %470
  store i64 %471, i64* %9, align 8
  %472 = load i64, i64* %9, align 8
  %473 = and i64 %472, 63
  %474 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* %9, align 8
  %477 = lshr i64 %476, 8
  %478 = and i64 %477, 63
  %479 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = xor i64 %475, %480
  %482 = load i64, i64* %9, align 8
  %483 = lshr i64 %482, 16
  %484 = and i64 %483, 63
  %485 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = xor i64 %481, %486
  %488 = load i64, i64* %9, align 8
  %489 = lshr i64 %488, 24
  %490 = and i64 %489, 63
  %491 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = xor i64 %487, %492
  %494 = load i64, i64* %8, align 8
  %495 = xor i64 %494, %493
  store i64 %495, i64* %8, align 8
  %496 = load i64*, i64** %4, align 8
  %497 = getelementptr inbounds i64, i64* %496, i32 1
  store i64* %497, i64** %4, align 8
  %498 = load i64, i64* %496, align 8
  %499 = load i64, i64* %8, align 8
  %500 = xor i64 %498, %499
  store i64 %500, i64* %9, align 8
  %501 = load i64, i64* %9, align 8
  %502 = and i64 %501, 63
  %503 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* %9, align 8
  %506 = lshr i64 %505, 8
  %507 = and i64 %506, 63
  %508 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = xor i64 %504, %509
  %511 = load i64, i64* %9, align 8
  %512 = lshr i64 %511, 16
  %513 = and i64 %512, 63
  %514 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = xor i64 %510, %515
  %517 = load i64, i64* %9, align 8
  %518 = lshr i64 %517, 24
  %519 = and i64 %518, 63
  %520 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = xor i64 %516, %521
  %523 = load i64, i64* %7, align 8
  %524 = xor i64 %523, %522
  store i64 %524, i64* %7, align 8
  %525 = load i64*, i64** %4, align 8
  %526 = getelementptr inbounds i64, i64* %525, i32 1
  store i64* %526, i64** %4, align 8
  %527 = load i64, i64* %525, align 8
  %528 = load i64, i64* %8, align 8
  %529 = shl i64 %528, 28
  %530 = load i64, i64* %8, align 8
  %531 = lshr i64 %530, 4
  %532 = or i64 %529, %531
  %533 = xor i64 %527, %532
  store i64 %533, i64* %9, align 8
  %534 = load i64, i64* %9, align 8
  %535 = and i64 %534, 63
  %536 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %535
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* %9, align 8
  %539 = lshr i64 %538, 8
  %540 = and i64 %539, 63
  %541 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = xor i64 %537, %542
  %544 = load i64, i64* %9, align 8
  %545 = lshr i64 %544, 16
  %546 = and i64 %545, 63
  %547 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = xor i64 %543, %548
  %550 = load i64, i64* %9, align 8
  %551 = lshr i64 %550, 24
  %552 = and i64 %551, 63
  %553 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = xor i64 %549, %554
  %556 = load i64, i64* %7, align 8
  %557 = xor i64 %556, %555
  store i64 %557, i64* %7, align 8
  %558 = load i64*, i64** %4, align 8
  %559 = getelementptr inbounds i64, i64* %558, i32 1
  store i64* %559, i64** %4, align 8
  %560 = load i64, i64* %558, align 8
  %561 = load i64, i64* %7, align 8
  %562 = xor i64 %560, %561
  store i64 %562, i64* %9, align 8
  %563 = load i64, i64* %9, align 8
  %564 = and i64 %563, 63
  %565 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %564
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* %9, align 8
  %568 = lshr i64 %567, 8
  %569 = and i64 %568, 63
  %570 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %569
  %571 = load i64, i64* %570, align 8
  %572 = xor i64 %566, %571
  %573 = load i64, i64* %9, align 8
  %574 = lshr i64 %573, 16
  %575 = and i64 %574, 63
  %576 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %575
  %577 = load i64, i64* %576, align 8
  %578 = xor i64 %572, %577
  %579 = load i64, i64* %9, align 8
  %580 = lshr i64 %579, 24
  %581 = and i64 %580, 63
  %582 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %581
  %583 = load i64, i64* %582, align 8
  %584 = xor i64 %578, %583
  %585 = load i64, i64* %8, align 8
  %586 = xor i64 %585, %584
  store i64 %586, i64* %8, align 8
  %587 = load i64*, i64** %4, align 8
  %588 = getelementptr inbounds i64, i64* %587, i32 1
  store i64* %588, i64** %4, align 8
  %589 = load i64, i64* %587, align 8
  %590 = load i64, i64* %7, align 8
  %591 = shl i64 %590, 28
  %592 = load i64, i64* %7, align 8
  %593 = lshr i64 %592, 4
  %594 = or i64 %591, %593
  %595 = xor i64 %589, %594
  store i64 %595, i64* %9, align 8
  %596 = load i64, i64* %9, align 8
  %597 = and i64 %596, 63
  %598 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = load i64, i64* %9, align 8
  %601 = lshr i64 %600, 8
  %602 = and i64 %601, 63
  %603 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %602
  %604 = load i64, i64* %603, align 8
  %605 = xor i64 %599, %604
  %606 = load i64, i64* %9, align 8
  %607 = lshr i64 %606, 16
  %608 = and i64 %607, 63
  %609 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %608
  %610 = load i64, i64* %609, align 8
  %611 = xor i64 %605, %610
  %612 = load i64, i64* %9, align 8
  %613 = lshr i64 %612, 24
  %614 = and i64 %613, 63
  %615 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %614
  %616 = load i64, i64* %615, align 8
  %617 = xor i64 %611, %616
  %618 = load i64, i64* %8, align 8
  %619 = xor i64 %618, %617
  store i64 %619, i64* %8, align 8
  %620 = load i64*, i64** %4, align 8
  %621 = getelementptr inbounds i64, i64* %620, i32 1
  store i64* %621, i64** %4, align 8
  %622 = load i64, i64* %620, align 8
  %623 = load i64, i64* %8, align 8
  %624 = xor i64 %622, %623
  store i64 %624, i64* %9, align 8
  %625 = load i64, i64* %9, align 8
  %626 = and i64 %625, 63
  %627 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* %9, align 8
  %630 = lshr i64 %629, 8
  %631 = and i64 %630, 63
  %632 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %631
  %633 = load i64, i64* %632, align 8
  %634 = xor i64 %628, %633
  %635 = load i64, i64* %9, align 8
  %636 = lshr i64 %635, 16
  %637 = and i64 %636, 63
  %638 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = xor i64 %634, %639
  %641 = load i64, i64* %9, align 8
  %642 = lshr i64 %641, 24
  %643 = and i64 %642, 63
  %644 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %643
  %645 = load i64, i64* %644, align 8
  %646 = xor i64 %640, %645
  %647 = load i64, i64* %7, align 8
  %648 = xor i64 %647, %646
  store i64 %648, i64* %7, align 8
  %649 = load i64*, i64** %4, align 8
  %650 = getelementptr inbounds i64, i64* %649, i32 1
  store i64* %650, i64** %4, align 8
  %651 = load i64, i64* %649, align 8
  %652 = load i64, i64* %8, align 8
  %653 = shl i64 %652, 28
  %654 = load i64, i64* %8, align 8
  %655 = lshr i64 %654, 4
  %656 = or i64 %653, %655
  %657 = xor i64 %651, %656
  store i64 %657, i64* %9, align 8
  %658 = load i64, i64* %9, align 8
  %659 = and i64 %658, 63
  %660 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %659
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* %9, align 8
  %663 = lshr i64 %662, 8
  %664 = and i64 %663, 63
  %665 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %664
  %666 = load i64, i64* %665, align 8
  %667 = xor i64 %661, %666
  %668 = load i64, i64* %9, align 8
  %669 = lshr i64 %668, 16
  %670 = and i64 %669, 63
  %671 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %670
  %672 = load i64, i64* %671, align 8
  %673 = xor i64 %667, %672
  %674 = load i64, i64* %9, align 8
  %675 = lshr i64 %674, 24
  %676 = and i64 %675, 63
  %677 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %676
  %678 = load i64, i64* %677, align 8
  %679 = xor i64 %673, %678
  %680 = load i64, i64* %7, align 8
  %681 = xor i64 %680, %679
  store i64 %681, i64* %7, align 8
  %682 = load i64*, i64** %4, align 8
  %683 = getelementptr inbounds i64, i64* %682, i32 1
  store i64* %683, i64** %4, align 8
  %684 = load i64, i64* %682, align 8
  %685 = load i64, i64* %7, align 8
  %686 = xor i64 %684, %685
  store i64 %686, i64* %9, align 8
  %687 = load i64, i64* %9, align 8
  %688 = and i64 %687, 63
  %689 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %688
  %690 = load i64, i64* %689, align 8
  %691 = load i64, i64* %9, align 8
  %692 = lshr i64 %691, 8
  %693 = and i64 %692, 63
  %694 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %693
  %695 = load i64, i64* %694, align 8
  %696 = xor i64 %690, %695
  %697 = load i64, i64* %9, align 8
  %698 = lshr i64 %697, 16
  %699 = and i64 %698, 63
  %700 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %699
  %701 = load i64, i64* %700, align 8
  %702 = xor i64 %696, %701
  %703 = load i64, i64* %9, align 8
  %704 = lshr i64 %703, 24
  %705 = and i64 %704, 63
  %706 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %705
  %707 = load i64, i64* %706, align 8
  %708 = xor i64 %702, %707
  %709 = load i64, i64* %8, align 8
  %710 = xor i64 %709, %708
  store i64 %710, i64* %8, align 8
  %711 = load i64*, i64** %4, align 8
  %712 = getelementptr inbounds i64, i64* %711, i32 1
  store i64* %712, i64** %4, align 8
  %713 = load i64, i64* %711, align 8
  %714 = load i64, i64* %7, align 8
  %715 = shl i64 %714, 28
  %716 = load i64, i64* %7, align 8
  %717 = lshr i64 %716, 4
  %718 = or i64 %715, %717
  %719 = xor i64 %713, %718
  store i64 %719, i64* %9, align 8
  %720 = load i64, i64* %9, align 8
  %721 = and i64 %720, 63
  %722 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %721
  %723 = load i64, i64* %722, align 8
  %724 = load i64, i64* %9, align 8
  %725 = lshr i64 %724, 8
  %726 = and i64 %725, 63
  %727 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %726
  %728 = load i64, i64* %727, align 8
  %729 = xor i64 %723, %728
  %730 = load i64, i64* %9, align 8
  %731 = lshr i64 %730, 16
  %732 = and i64 %731, 63
  %733 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %732
  %734 = load i64, i64* %733, align 8
  %735 = xor i64 %729, %734
  %736 = load i64, i64* %9, align 8
  %737 = lshr i64 %736, 24
  %738 = and i64 %737, 63
  %739 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %738
  %740 = load i64, i64* %739, align 8
  %741 = xor i64 %735, %740
  %742 = load i64, i64* %8, align 8
  %743 = xor i64 %742, %741
  store i64 %743, i64* %8, align 8
  %744 = load i64*, i64** %4, align 8
  %745 = getelementptr inbounds i64, i64* %744, i32 1
  store i64* %745, i64** %4, align 8
  %746 = load i64, i64* %744, align 8
  %747 = load i64, i64* %8, align 8
  %748 = xor i64 %746, %747
  store i64 %748, i64* %9, align 8
  %749 = load i64, i64* %9, align 8
  %750 = and i64 %749, 63
  %751 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %750
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* %9, align 8
  %754 = lshr i64 %753, 8
  %755 = and i64 %754, 63
  %756 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %755
  %757 = load i64, i64* %756, align 8
  %758 = xor i64 %752, %757
  %759 = load i64, i64* %9, align 8
  %760 = lshr i64 %759, 16
  %761 = and i64 %760, 63
  %762 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %761
  %763 = load i64, i64* %762, align 8
  %764 = xor i64 %758, %763
  %765 = load i64, i64* %9, align 8
  %766 = lshr i64 %765, 24
  %767 = and i64 %766, 63
  %768 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %767
  %769 = load i64, i64* %768, align 8
  %770 = xor i64 %764, %769
  %771 = load i64, i64* %7, align 8
  %772 = xor i64 %771, %770
  store i64 %772, i64* %7, align 8
  %773 = load i64*, i64** %4, align 8
  %774 = getelementptr inbounds i64, i64* %773, i32 1
  store i64* %774, i64** %4, align 8
  %775 = load i64, i64* %773, align 8
  %776 = load i64, i64* %8, align 8
  %777 = shl i64 %776, 28
  %778 = load i64, i64* %8, align 8
  %779 = lshr i64 %778, 4
  %780 = or i64 %777, %779
  %781 = xor i64 %775, %780
  store i64 %781, i64* %9, align 8
  %782 = load i64, i64* %9, align 8
  %783 = and i64 %782, 63
  %784 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %783
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* %9, align 8
  %787 = lshr i64 %786, 8
  %788 = and i64 %787, 63
  %789 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %788
  %790 = load i64, i64* %789, align 8
  %791 = xor i64 %785, %790
  %792 = load i64, i64* %9, align 8
  %793 = lshr i64 %792, 16
  %794 = and i64 %793, 63
  %795 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %794
  %796 = load i64, i64* %795, align 8
  %797 = xor i64 %791, %796
  %798 = load i64, i64* %9, align 8
  %799 = lshr i64 %798, 24
  %800 = and i64 %799, 63
  %801 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %800
  %802 = load i64, i64* %801, align 8
  %803 = xor i64 %797, %802
  %804 = load i64, i64* %7, align 8
  %805 = xor i64 %804, %803
  store i64 %805, i64* %7, align 8
  %806 = load i64*, i64** %4, align 8
  %807 = getelementptr inbounds i64, i64* %806, i32 1
  store i64* %807, i64** %4, align 8
  %808 = load i64, i64* %806, align 8
  %809 = load i64, i64* %7, align 8
  %810 = xor i64 %808, %809
  store i64 %810, i64* %9, align 8
  %811 = load i64, i64* %9, align 8
  %812 = and i64 %811, 63
  %813 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %812
  %814 = load i64, i64* %813, align 8
  %815 = load i64, i64* %9, align 8
  %816 = lshr i64 %815, 8
  %817 = and i64 %816, 63
  %818 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %817
  %819 = load i64, i64* %818, align 8
  %820 = xor i64 %814, %819
  %821 = load i64, i64* %9, align 8
  %822 = lshr i64 %821, 16
  %823 = and i64 %822, 63
  %824 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %823
  %825 = load i64, i64* %824, align 8
  %826 = xor i64 %820, %825
  %827 = load i64, i64* %9, align 8
  %828 = lshr i64 %827, 24
  %829 = and i64 %828, 63
  %830 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %829
  %831 = load i64, i64* %830, align 8
  %832 = xor i64 %826, %831
  %833 = load i64, i64* %8, align 8
  %834 = xor i64 %833, %832
  store i64 %834, i64* %8, align 8
  %835 = load i64*, i64** %4, align 8
  %836 = getelementptr inbounds i64, i64* %835, i32 1
  store i64* %836, i64** %4, align 8
  %837 = load i64, i64* %835, align 8
  %838 = load i64, i64* %7, align 8
  %839 = shl i64 %838, 28
  %840 = load i64, i64* %7, align 8
  %841 = lshr i64 %840, 4
  %842 = or i64 %839, %841
  %843 = xor i64 %837, %842
  store i64 %843, i64* %9, align 8
  %844 = load i64, i64* %9, align 8
  %845 = and i64 %844, 63
  %846 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %845
  %847 = load i64, i64* %846, align 8
  %848 = load i64, i64* %9, align 8
  %849 = lshr i64 %848, 8
  %850 = and i64 %849, 63
  %851 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %850
  %852 = load i64, i64* %851, align 8
  %853 = xor i64 %847, %852
  %854 = load i64, i64* %9, align 8
  %855 = lshr i64 %854, 16
  %856 = and i64 %855, 63
  %857 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %856
  %858 = load i64, i64* %857, align 8
  %859 = xor i64 %853, %858
  %860 = load i64, i64* %9, align 8
  %861 = lshr i64 %860, 24
  %862 = and i64 %861, 63
  %863 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %862
  %864 = load i64, i64* %863, align 8
  %865 = xor i64 %859, %864
  %866 = load i64, i64* %8, align 8
  %867 = xor i64 %866, %865
  store i64 %867, i64* %8, align 8
  %868 = load i64*, i64** %4, align 8
  %869 = getelementptr inbounds i64, i64* %868, i32 1
  store i64* %869, i64** %4, align 8
  %870 = load i64, i64* %868, align 8
  %871 = load i64, i64* %8, align 8
  %872 = xor i64 %870, %871
  store i64 %872, i64* %9, align 8
  %873 = load i64, i64* %9, align 8
  %874 = and i64 %873, 63
  %875 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %874
  %876 = load i64, i64* %875, align 8
  %877 = load i64, i64* %9, align 8
  %878 = lshr i64 %877, 8
  %879 = and i64 %878, 63
  %880 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %879
  %881 = load i64, i64* %880, align 8
  %882 = xor i64 %876, %881
  %883 = load i64, i64* %9, align 8
  %884 = lshr i64 %883, 16
  %885 = and i64 %884, 63
  %886 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %885
  %887 = load i64, i64* %886, align 8
  %888 = xor i64 %882, %887
  %889 = load i64, i64* %9, align 8
  %890 = lshr i64 %889, 24
  %891 = and i64 %890, 63
  %892 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %891
  %893 = load i64, i64* %892, align 8
  %894 = xor i64 %888, %893
  %895 = load i64, i64* %7, align 8
  %896 = xor i64 %895, %894
  store i64 %896, i64* %7, align 8
  %897 = load i64*, i64** %4, align 8
  %898 = getelementptr inbounds i64, i64* %897, i32 1
  store i64* %898, i64** %4, align 8
  %899 = load i64, i64* %897, align 8
  %900 = load i64, i64* %8, align 8
  %901 = shl i64 %900, 28
  %902 = load i64, i64* %8, align 8
  %903 = lshr i64 %902, 4
  %904 = or i64 %901, %903
  %905 = xor i64 %899, %904
  store i64 %905, i64* %9, align 8
  %906 = load i64, i64* %9, align 8
  %907 = and i64 %906, 63
  %908 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %907
  %909 = load i64, i64* %908, align 8
  %910 = load i64, i64* %9, align 8
  %911 = lshr i64 %910, 8
  %912 = and i64 %911, 63
  %913 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %912
  %914 = load i64, i64* %913, align 8
  %915 = xor i64 %909, %914
  %916 = load i64, i64* %9, align 8
  %917 = lshr i64 %916, 16
  %918 = and i64 %917, 63
  %919 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %918
  %920 = load i64, i64* %919, align 8
  %921 = xor i64 %915, %920
  %922 = load i64, i64* %9, align 8
  %923 = lshr i64 %922, 24
  %924 = and i64 %923, 63
  %925 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %924
  %926 = load i64, i64* %925, align 8
  %927 = xor i64 %921, %926
  %928 = load i64, i64* %7, align 8
  %929 = xor i64 %928, %927
  store i64 %929, i64* %7, align 8
  %930 = load i64*, i64** %4, align 8
  %931 = getelementptr inbounds i64, i64* %930, i32 1
  store i64* %931, i64** %4, align 8
  %932 = load i64, i64* %930, align 8
  %933 = load i64, i64* %7, align 8
  %934 = xor i64 %932, %933
  store i64 %934, i64* %9, align 8
  %935 = load i64, i64* %9, align 8
  %936 = and i64 %935, 63
  %937 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %936
  %938 = load i64, i64* %937, align 8
  %939 = load i64, i64* %9, align 8
  %940 = lshr i64 %939, 8
  %941 = and i64 %940, 63
  %942 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %941
  %943 = load i64, i64* %942, align 8
  %944 = xor i64 %938, %943
  %945 = load i64, i64* %9, align 8
  %946 = lshr i64 %945, 16
  %947 = and i64 %946, 63
  %948 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %947
  %949 = load i64, i64* %948, align 8
  %950 = xor i64 %944, %949
  %951 = load i64, i64* %9, align 8
  %952 = lshr i64 %951, 24
  %953 = and i64 %952, 63
  %954 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %953
  %955 = load i64, i64* %954, align 8
  %956 = xor i64 %950, %955
  %957 = load i64, i64* %8, align 8
  %958 = xor i64 %957, %956
  store i64 %958, i64* %8, align 8
  %959 = load i64*, i64** %4, align 8
  %960 = getelementptr inbounds i64, i64* %959, i32 1
  store i64* %960, i64** %4, align 8
  %961 = load i64, i64* %959, align 8
  %962 = load i64, i64* %7, align 8
  %963 = shl i64 %962, 28
  %964 = load i64, i64* %7, align 8
  %965 = lshr i64 %964, 4
  %966 = or i64 %963, %965
  %967 = xor i64 %961, %966
  store i64 %967, i64* %9, align 8
  %968 = load i64, i64* %9, align 8
  %969 = and i64 %968, 63
  %970 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %969
  %971 = load i64, i64* %970, align 8
  %972 = load i64, i64* %9, align 8
  %973 = lshr i64 %972, 8
  %974 = and i64 %973, 63
  %975 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %974
  %976 = load i64, i64* %975, align 8
  %977 = xor i64 %971, %976
  %978 = load i64, i64* %9, align 8
  %979 = lshr i64 %978, 16
  %980 = and i64 %979, 63
  %981 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %980
  %982 = load i64, i64* %981, align 8
  %983 = xor i64 %977, %982
  %984 = load i64, i64* %9, align 8
  %985 = lshr i64 %984, 24
  %986 = and i64 %985, 63
  %987 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %986
  %988 = load i64, i64* %987, align 8
  %989 = xor i64 %983, %988
  %990 = load i64, i64* %8, align 8
  %991 = xor i64 %990, %989
  store i64 %991, i64* %8, align 8
  %992 = load i64*, i64** %4, align 8
  %993 = getelementptr inbounds i64, i64* %992, i32 1
  store i64* %993, i64** %4, align 8
  %994 = load i64, i64* %992, align 8
  %995 = load i64, i64* %8, align 8
  %996 = xor i64 %994, %995
  store i64 %996, i64* %9, align 8
  %997 = load i64, i64* %9, align 8
  %998 = and i64 %997, 63
  %999 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %998
  %1000 = load i64, i64* %999, align 8
  %1001 = load i64, i64* %9, align 8
  %1002 = lshr i64 %1001, 8
  %1003 = and i64 %1002, 63
  %1004 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1003
  %1005 = load i64, i64* %1004, align 8
  %1006 = xor i64 %1000, %1005
  %1007 = load i64, i64* %9, align 8
  %1008 = lshr i64 %1007, 16
  %1009 = and i64 %1008, 63
  %1010 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1009
  %1011 = load i64, i64* %1010, align 8
  %1012 = xor i64 %1006, %1011
  %1013 = load i64, i64* %9, align 8
  %1014 = lshr i64 %1013, 24
  %1015 = and i64 %1014, 63
  %1016 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1015
  %1017 = load i64, i64* %1016, align 8
  %1018 = xor i64 %1012, %1017
  %1019 = load i64, i64* %7, align 8
  %1020 = xor i64 %1019, %1018
  store i64 %1020, i64* %7, align 8
  %1021 = load i64*, i64** %4, align 8
  %1022 = getelementptr inbounds i64, i64* %1021, i32 1
  store i64* %1022, i64** %4, align 8
  %1023 = load i64, i64* %1021, align 8
  %1024 = load i64, i64* %8, align 8
  %1025 = shl i64 %1024, 28
  %1026 = load i64, i64* %8, align 8
  %1027 = lshr i64 %1026, 4
  %1028 = or i64 %1025, %1027
  %1029 = xor i64 %1023, %1028
  store i64 %1029, i64* %9, align 8
  %1030 = load i64, i64* %9, align 8
  %1031 = and i64 %1030, 63
  %1032 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1031
  %1033 = load i64, i64* %1032, align 8
  %1034 = load i64, i64* %9, align 8
  %1035 = lshr i64 %1034, 8
  %1036 = and i64 %1035, 63
  %1037 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1036
  %1038 = load i64, i64* %1037, align 8
  %1039 = xor i64 %1033, %1038
  %1040 = load i64, i64* %9, align 8
  %1041 = lshr i64 %1040, 16
  %1042 = and i64 %1041, 63
  %1043 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1042
  %1044 = load i64, i64* %1043, align 8
  %1045 = xor i64 %1039, %1044
  %1046 = load i64, i64* %9, align 8
  %1047 = lshr i64 %1046, 24
  %1048 = and i64 %1047, 63
  %1049 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1048
  %1050 = load i64, i64* %1049, align 8
  %1051 = xor i64 %1045, %1050
  %1052 = load i64, i64* %7, align 8
  %1053 = xor i64 %1052, %1051
  store i64 %1053, i64* %7, align 8
  %1054 = load i64*, i64** %4, align 8
  %1055 = getelementptr inbounds i64, i64* %1054, i32 1
  store i64* %1055, i64** %4, align 8
  %1056 = load i64, i64* %1054, align 8
  %1057 = load i64, i64* %7, align 8
  %1058 = xor i64 %1056, %1057
  store i64 %1058, i64* %9, align 8
  %1059 = load i64, i64* %9, align 8
  %1060 = and i64 %1059, 63
  %1061 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1060
  %1062 = load i64, i64* %1061, align 8
  %1063 = load i64, i64* %9, align 8
  %1064 = lshr i64 %1063, 8
  %1065 = and i64 %1064, 63
  %1066 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1065
  %1067 = load i64, i64* %1066, align 8
  %1068 = xor i64 %1062, %1067
  %1069 = load i64, i64* %9, align 8
  %1070 = lshr i64 %1069, 16
  %1071 = and i64 %1070, 63
  %1072 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1071
  %1073 = load i64, i64* %1072, align 8
  %1074 = xor i64 %1068, %1073
  %1075 = load i64, i64* %9, align 8
  %1076 = lshr i64 %1075, 24
  %1077 = and i64 %1076, 63
  %1078 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1077
  %1079 = load i64, i64* %1078, align 8
  %1080 = xor i64 %1074, %1079
  %1081 = load i64, i64* %8, align 8
  %1082 = xor i64 %1081, %1080
  store i64 %1082, i64* %8, align 8
  %1083 = load i64*, i64** %4, align 8
  %1084 = getelementptr inbounds i64, i64* %1083, i32 1
  store i64* %1084, i64** %4, align 8
  %1085 = load i64, i64* %1083, align 8
  %1086 = load i64, i64* %7, align 8
  %1087 = shl i64 %1086, 28
  %1088 = load i64, i64* %7, align 8
  %1089 = lshr i64 %1088, 4
  %1090 = or i64 %1087, %1089
  %1091 = xor i64 %1085, %1090
  store i64 %1091, i64* %9, align 8
  %1092 = load i64, i64* %9, align 8
  %1093 = and i64 %1092, 63
  %1094 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1093
  %1095 = load i64, i64* %1094, align 8
  %1096 = load i64, i64* %9, align 8
  %1097 = lshr i64 %1096, 8
  %1098 = and i64 %1097, 63
  %1099 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1098
  %1100 = load i64, i64* %1099, align 8
  %1101 = xor i64 %1095, %1100
  %1102 = load i64, i64* %9, align 8
  %1103 = lshr i64 %1102, 16
  %1104 = and i64 %1103, 63
  %1105 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1104
  %1106 = load i64, i64* %1105, align 8
  %1107 = xor i64 %1101, %1106
  %1108 = load i64, i64* %9, align 8
  %1109 = lshr i64 %1108, 24
  %1110 = and i64 %1109, 63
  %1111 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1110
  %1112 = load i64, i64* %1111, align 8
  %1113 = xor i64 %1107, %1112
  %1114 = load i64, i64* %8, align 8
  %1115 = xor i64 %1114, %1113
  store i64 %1115, i64* %8, align 8
  %1116 = load i64, i64* %8, align 8
  %1117 = shl i64 %1116, 31
  %1118 = load i64, i64* %8, align 8
  %1119 = lshr i64 %1118, 1
  %1120 = or i64 %1117, %1119
  %1121 = and i64 %1120, 4294967295
  store i64 %1121, i64* %8, align 8
  %1122 = load i64, i64* %8, align 8
  %1123 = load i64, i64* %7, align 8
  %1124 = xor i64 %1122, %1123
  %1125 = and i64 %1124, 2863311530
  store i64 %1125, i64* %9, align 8
  %1126 = load i64, i64* %9, align 8
  %1127 = load i64, i64* %8, align 8
  %1128 = xor i64 %1127, %1126
  store i64 %1128, i64* %8, align 8
  %1129 = load i64, i64* %9, align 8
  %1130 = load i64, i64* %7, align 8
  %1131 = xor i64 %1130, %1129
  store i64 %1131, i64* %7, align 8
  %1132 = load i64, i64* %7, align 8
  %1133 = shl i64 %1132, 31
  %1134 = load i64, i64* %7, align 8
  %1135 = lshr i64 %1134, 1
  %1136 = or i64 %1133, %1135
  %1137 = and i64 %1136, 4294967295
  store i64 %1137, i64* %7, align 8
  %1138 = load i64, i64* %7, align 8
  %1139 = lshr i64 %1138, 8
  %1140 = load i64, i64* %8, align 8
  %1141 = xor i64 %1139, %1140
  %1142 = and i64 %1141, 16711935
  store i64 %1142, i64* %9, align 8
  %1143 = load i64, i64* %9, align 8
  %1144 = load i64, i64* %8, align 8
  %1145 = xor i64 %1144, %1143
  store i64 %1145, i64* %8, align 8
  %1146 = load i64, i64* %9, align 8
  %1147 = shl i64 %1146, 8
  %1148 = load i64, i64* %7, align 8
  %1149 = xor i64 %1148, %1147
  store i64 %1149, i64* %7, align 8
  %1150 = load i64, i64* %7, align 8
  %1151 = lshr i64 %1150, 2
  %1152 = load i64, i64* %8, align 8
  %1153 = xor i64 %1151, %1152
  %1154 = and i64 %1153, 858993459
  store i64 %1154, i64* %9, align 8
  %1155 = load i64, i64* %9, align 8
  %1156 = load i64, i64* %8, align 8
  %1157 = xor i64 %1156, %1155
  store i64 %1157, i64* %8, align 8
  %1158 = load i64, i64* %9, align 8
  %1159 = shl i64 %1158, 2
  %1160 = load i64, i64* %7, align 8
  %1161 = xor i64 %1160, %1159
  store i64 %1161, i64* %7, align 8
  %1162 = load i64, i64* %8, align 8
  %1163 = lshr i64 %1162, 16
  %1164 = load i64, i64* %7, align 8
  %1165 = xor i64 %1163, %1164
  %1166 = and i64 %1165, 65535
  store i64 %1166, i64* %9, align 8
  %1167 = load i64, i64* %9, align 8
  %1168 = load i64, i64* %7, align 8
  %1169 = xor i64 %1168, %1167
  store i64 %1169, i64* %7, align 8
  %1170 = load i64, i64* %9, align 8
  %1171 = shl i64 %1170, 16
  %1172 = load i64, i64* %8, align 8
  %1173 = xor i64 %1172, %1171
  store i64 %1173, i64* %8, align 8
  %1174 = load i64, i64* %8, align 8
  %1175 = lshr i64 %1174, 4
  %1176 = load i64, i64* %7, align 8
  %1177 = xor i64 %1175, %1176
  %1178 = and i64 %1177, 252645135
  store i64 %1178, i64* %9, align 8
  %1179 = load i64, i64* %9, align 8
  %1180 = load i64, i64* %7, align 8
  %1181 = xor i64 %1180, %1179
  store i64 %1181, i64* %7, align 8
  %1182 = load i64, i64* %9, align 8
  %1183 = shl i64 %1182, 4
  %1184 = load i64, i64* %8, align 8
  %1185 = xor i64 %1184, %1183
  store i64 %1185, i64* %8, align 8
  %1186 = load i64, i64* %8, align 8
  %1187 = lshr i64 %1186, 24
  %1188 = trunc i64 %1187 to i8
  %1189 = load i8*, i8** %6, align 8
  %1190 = getelementptr inbounds i8, i8* %1189, i64 0
  store i8 %1188, i8* %1190, align 1
  %1191 = load i64, i64* %8, align 8
  %1192 = lshr i64 %1191, 16
  %1193 = trunc i64 %1192 to i8
  %1194 = load i8*, i8** %6, align 8
  %1195 = getelementptr inbounds i8, i8* %1194, i64 1
  store i8 %1193, i8* %1195, align 1
  %1196 = load i64, i64* %8, align 8
  %1197 = lshr i64 %1196, 8
  %1198 = trunc i64 %1197 to i8
  %1199 = load i8*, i8** %6, align 8
  %1200 = getelementptr inbounds i8, i8* %1199, i64 2
  store i8 %1198, i8* %1200, align 1
  %1201 = load i64, i64* %8, align 8
  %1202 = trunc i64 %1201 to i8
  %1203 = load i8*, i8** %6, align 8
  %1204 = getelementptr inbounds i8, i8* %1203, i64 3
  store i8 %1202, i8* %1204, align 1
  %1205 = load i64, i64* %7, align 8
  %1206 = lshr i64 %1205, 24
  %1207 = trunc i64 %1206 to i8
  %1208 = load i8*, i8** %6, align 8
  %1209 = getelementptr inbounds i8, i8* %1208, i64 4
  store i8 %1207, i8* %1209, align 1
  %1210 = load i64, i64* %7, align 8
  %1211 = lshr i64 %1210, 16
  %1212 = trunc i64 %1211 to i8
  %1213 = load i8*, i8** %6, align 8
  %1214 = getelementptr inbounds i8, i8* %1213, i64 5
  store i8 %1212, i8* %1214, align 1
  %1215 = load i64, i64* %7, align 8
  %1216 = lshr i64 %1215, 8
  %1217 = trunc i64 %1216 to i8
  %1218 = load i8*, i8** %6, align 8
  %1219 = getelementptr inbounds i8, i8* %1218, i64 6
  store i8 %1217, i8* %1219, align 1
  %1220 = load i64, i64* %7, align 8
  %1221 = trunc i64 %1220 to i8
  %1222 = load i8*, i8** %6, align 8
  %1223 = getelementptr inbounds i8, i8* %1222, i64 7
  store i8 %1221, i8* %1223, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_encrypt(%struct.des_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.des_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.des_context* %0, %struct.des_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.des_context*, %struct.des_context** %4, align 8
  %8 = getelementptr inbounds %struct.des_context, %struct.des_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  call void @des_crypt(i64* %9, i8* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des_decrypt(%struct.des_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.des_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.des_context* %0, %struct.des_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.des_context*, %struct.des_context** %4, align 8
  %8 = getelementptr inbounds %struct.des_context, %struct.des_context* %7, i32 0, i32 1
  %9 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  call void @des_crypt(i64* %9, i8* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des3_set_2keys(%struct.des3_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.des3_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.des3_context* %0, %struct.des3_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %9 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %8, i32 0, i32 0
  %10 = getelementptr inbounds [96 x i64], [96 x i64]* %9, i64 0, i64 0
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @des_main_ks(i64* %10, i8* %11)
  %13 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %14 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %13, i32 0, i32 1
  %15 = getelementptr inbounds [96 x i64], [96 x i64]* %14, i64 0, i64 0
  %16 = getelementptr inbounds i64, i64* %15, i64 32
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @des_main_ks(i64* %16, i8* %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %124, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 32
  br i1 %21, label %22, label %127

22:                                               ; preds = %19
  %23 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %24 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 30, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [96 x i64], [96 x i64]* %24, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %31 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %30, i32 0, i32 1
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [96 x i64], [96 x i64]* %31, i64 0, i64 %33
  store i64 %29, i64* %34, align 8
  %35 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %36 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = sub nsw i32 31, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [96 x i64], [96 x i64]* %36, i64 0, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %43 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %42, i32 0, i32 1
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [96 x i64], [96 x i64]* %43, i64 0, i64 %46
  store i64 %41, i64* %47, align 8
  %48 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %49 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %48, i32 0, i32 1
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 62, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [96 x i64], [96 x i64]* %49, i64 0, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %56 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [96 x i64], [96 x i64]* %56, i64 0, i64 %59
  store i64 %54, i64* %60, align 8
  %61 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %62 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %61, i32 0, i32 1
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 63, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [96 x i64], [96 x i64]* %62, i64 0, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %69 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %68, i32 0, i32 0
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 33
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [96 x i64], [96 x i64]* %69, i64 0, i64 %72
  store i64 %67, i64* %73, align 8
  %74 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %75 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %74, i32 0, i32 0
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [96 x i64], [96 x i64]* %75, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %81 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %80, i32 0, i32 0
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 64
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [96 x i64], [96 x i64]* %81, i64 0, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %87 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 1, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [96 x i64], [96 x i64]* %87, i64 0, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %94 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %93, i32 0, i32 0
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 65
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [96 x i64], [96 x i64]* %94, i64 0, i64 %97
  store i64 %92, i64* %98, align 8
  %99 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %100 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %99, i32 0, i32 1
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [96 x i64], [96 x i64]* %100, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %106 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %105, i32 0, i32 1
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 64
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [96 x i64], [96 x i64]* %106, i64 0, i64 %109
  store i64 %104, i64* %110, align 8
  %111 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %112 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %111, i32 0, i32 1
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 1, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [96 x i64], [96 x i64]* %112, i64 0, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %119 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %118, i32 0, i32 1
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 65
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [96 x i64], [96 x i64]* %119, i64 0, i64 %122
  store i64 %117, i64* %123, align 8
  br label %124

124:                                              ; preds = %22
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 2
  store i32 %126, i32* %7, align 4
  br label %19

127:                                              ; preds = %19
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @des3_set_3keys(%struct.des3_context* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.des3_context*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.des3_context* %0, %struct.des3_context** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %11 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds [96 x i64], [96 x i64]* %11, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @des_main_ks(i64* %12, i8* %13)
  %15 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %16 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %15, i32 0, i32 1
  %17 = getelementptr inbounds [96 x i64], [96 x i64]* %16, i64 0, i64 0
  %18 = getelementptr inbounds i64, i64* %17, i64 32
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @des_main_ks(i64* %18, i8* %19)
  %21 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %22 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %21, i32 0, i32 0
  %23 = getelementptr inbounds [96 x i64], [96 x i64]* %22, i64 0, i64 0
  %24 = getelementptr inbounds i64, i64* %23, i64 64
  %25 = load i8*, i8** %8, align 8
  %26 = call i32 @des_main_ks(i64* %24, i8* %25)
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %108, %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %111

30:                                               ; preds = %27
  %31 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %32 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = sub nsw i32 94, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [96 x i64], [96 x i64]* %32, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %39 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %38, i32 0, i32 1
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [96 x i64], [96 x i64]* %39, i64 0, i64 %41
  store i64 %37, i64* %42, align 8
  %43 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %44 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %43, i32 0, i32 0
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 95, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [96 x i64], [96 x i64]* %44, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %51 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %50, i32 0, i32 1
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [96 x i64], [96 x i64]* %51, i64 0, i64 %54
  store i64 %49, i64* %55, align 8
  %56 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %57 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %56, i32 0, i32 1
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 62, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [96 x i64], [96 x i64]* %57, i64 0, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %64 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %63, i32 0, i32 0
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 32
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [96 x i64], [96 x i64]* %64, i64 0, i64 %67
  store i64 %62, i64* %68, align 8
  %69 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %70 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %69, i32 0, i32 1
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 63, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [96 x i64], [96 x i64]* %70, i64 0, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %77 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %76, i32 0, i32 0
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 33
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [96 x i64], [96 x i64]* %77, i64 0, i64 %80
  store i64 %75, i64* %81, align 8
  %82 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %83 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %82, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  %85 = sub nsw i32 30, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [96 x i64], [96 x i64]* %83, i64 0, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %90 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %89, i32 0, i32 1
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 64
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [96 x i64], [96 x i64]* %90, i64 0, i64 %93
  store i64 %88, i64* %94, align 8
  %95 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %96 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %95, i32 0, i32 0
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 31, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [96 x i64], [96 x i64]* %96, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.des3_context*, %struct.des3_context** %5, align 8
  %103 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %102, i32 0, i32 1
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 65
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [96 x i64], [96 x i64]* %103, i64 0, i64 %106
  store i64 %101, i64* %107, align 8
  br label %108

108:                                              ; preds = %30
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %9, align 4
  br label %27

111:                                              ; preds = %27
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des3_crypt(i64* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = shl i64 %13, 24
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i64
  %19 = shl i64 %18, 16
  %20 = or i64 %14, %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 2
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i64
  %25 = shl i64 %24, 8
  %26 = or i64 %20, %25
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 3
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = or i64 %26, %30
  store i64 %31, i64* %7, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i64
  %36 = shl i64 %35, 24
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 5
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = shl i64 %40, 16
  %42 = or i64 %36, %41
  %43 = load i8*, i8** %5, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 6
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i64
  %47 = shl i64 %46, 8
  %48 = or i64 %42, %47
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = or i64 %48, %52
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = lshr i64 %54, 4
  %56 = load i64, i64* %8, align 8
  %57 = xor i64 %55, %56
  %58 = and i64 %57, 252645135
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %8, align 8
  %61 = xor i64 %60, %59
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = shl i64 %62, 4
  %64 = load i64, i64* %7, align 8
  %65 = xor i64 %64, %63
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = lshr i64 %66, 16
  %68 = load i64, i64* %8, align 8
  %69 = xor i64 %67, %68
  %70 = and i64 %69, 65535
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %8, align 8
  %73 = xor i64 %72, %71
  store i64 %73, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = shl i64 %74, 16
  %76 = load i64, i64* %7, align 8
  %77 = xor i64 %76, %75
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = lshr i64 %78, 2
  %80 = load i64, i64* %7, align 8
  %81 = xor i64 %79, %80
  %82 = and i64 %81, 858993459
  store i64 %82, i64* %9, align 8
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %7, align 8
  %85 = xor i64 %84, %83
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = shl i64 %86, 2
  %88 = load i64, i64* %8, align 8
  %89 = xor i64 %88, %87
  store i64 %89, i64* %8, align 8
  %90 = load i64, i64* %8, align 8
  %91 = lshr i64 %90, 8
  %92 = load i64, i64* %7, align 8
  %93 = xor i64 %91, %92
  %94 = and i64 %93, 16711935
  store i64 %94, i64* %9, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = xor i64 %96, %95
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %9, align 8
  %99 = shl i64 %98, 8
  %100 = load i64, i64* %8, align 8
  %101 = xor i64 %100, %99
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = shl i64 %102, 1
  %104 = load i64, i64* %8, align 8
  %105 = lshr i64 %104, 31
  %106 = or i64 %103, %105
  %107 = and i64 %106, 4294967295
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %8, align 8
  %110 = xor i64 %108, %109
  %111 = and i64 %110, 2863311530
  store i64 %111, i64* %9, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %8, align 8
  %114 = xor i64 %113, %112
  store i64 %114, i64* %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %7, align 8
  %117 = xor i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load i64, i64* %7, align 8
  %119 = shl i64 %118, 1
  %120 = load i64, i64* %7, align 8
  %121 = lshr i64 %120, 31
  %122 = or i64 %119, %121
  %123 = and i64 %122, 4294967295
  store i64 %123, i64* %7, align 8
  %124 = load i64*, i64** %4, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 1
  store i64* %125, i64** %4, align 8
  %126 = load i64, i64* %124, align 8
  %127 = load i64, i64* %8, align 8
  %128 = xor i64 %126, %127
  store i64 %128, i64* %9, align 8
  %129 = load i64, i64* %9, align 8
  %130 = and i64 %129, 63
  %131 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %9, align 8
  %134 = lshr i64 %133, 8
  %135 = and i64 %134, 63
  %136 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = xor i64 %132, %137
  %139 = load i64, i64* %9, align 8
  %140 = lshr i64 %139, 16
  %141 = and i64 %140, 63
  %142 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = xor i64 %138, %143
  %145 = load i64, i64* %9, align 8
  %146 = lshr i64 %145, 24
  %147 = and i64 %146, 63
  %148 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = xor i64 %144, %149
  %151 = load i64, i64* %7, align 8
  %152 = xor i64 %151, %150
  store i64 %152, i64* %7, align 8
  %153 = load i64*, i64** %4, align 8
  %154 = getelementptr inbounds i64, i64* %153, i32 1
  store i64* %154, i64** %4, align 8
  %155 = load i64, i64* %153, align 8
  %156 = load i64, i64* %8, align 8
  %157 = shl i64 %156, 28
  %158 = load i64, i64* %8, align 8
  %159 = lshr i64 %158, 4
  %160 = or i64 %157, %159
  %161 = xor i64 %155, %160
  store i64 %161, i64* %9, align 8
  %162 = load i64, i64* %9, align 8
  %163 = and i64 %162, 63
  %164 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = lshr i64 %166, 8
  %168 = and i64 %167, 63
  %169 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = xor i64 %165, %170
  %172 = load i64, i64* %9, align 8
  %173 = lshr i64 %172, 16
  %174 = and i64 %173, 63
  %175 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = xor i64 %171, %176
  %178 = load i64, i64* %9, align 8
  %179 = lshr i64 %178, 24
  %180 = and i64 %179, 63
  %181 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = xor i64 %177, %182
  %184 = load i64, i64* %7, align 8
  %185 = xor i64 %184, %183
  store i64 %185, i64* %7, align 8
  %186 = load i64*, i64** %4, align 8
  %187 = getelementptr inbounds i64, i64* %186, i32 1
  store i64* %187, i64** %4, align 8
  %188 = load i64, i64* %186, align 8
  %189 = load i64, i64* %7, align 8
  %190 = xor i64 %188, %189
  store i64 %190, i64* %9, align 8
  %191 = load i64, i64* %9, align 8
  %192 = and i64 %191, 63
  %193 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %9, align 8
  %196 = lshr i64 %195, 8
  %197 = and i64 %196, 63
  %198 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = xor i64 %194, %199
  %201 = load i64, i64* %9, align 8
  %202 = lshr i64 %201, 16
  %203 = and i64 %202, 63
  %204 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = xor i64 %200, %205
  %207 = load i64, i64* %9, align 8
  %208 = lshr i64 %207, 24
  %209 = and i64 %208, 63
  %210 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = xor i64 %206, %211
  %213 = load i64, i64* %8, align 8
  %214 = xor i64 %213, %212
  store i64 %214, i64* %8, align 8
  %215 = load i64*, i64** %4, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %4, align 8
  %217 = load i64, i64* %215, align 8
  %218 = load i64, i64* %7, align 8
  %219 = shl i64 %218, 28
  %220 = load i64, i64* %7, align 8
  %221 = lshr i64 %220, 4
  %222 = or i64 %219, %221
  %223 = xor i64 %217, %222
  store i64 %223, i64* %9, align 8
  %224 = load i64, i64* %9, align 8
  %225 = and i64 %224, 63
  %226 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %9, align 8
  %229 = lshr i64 %228, 8
  %230 = and i64 %229, 63
  %231 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = xor i64 %227, %232
  %234 = load i64, i64* %9, align 8
  %235 = lshr i64 %234, 16
  %236 = and i64 %235, 63
  %237 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = xor i64 %233, %238
  %240 = load i64, i64* %9, align 8
  %241 = lshr i64 %240, 24
  %242 = and i64 %241, 63
  %243 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = xor i64 %239, %244
  %246 = load i64, i64* %8, align 8
  %247 = xor i64 %246, %245
  store i64 %247, i64* %8, align 8
  %248 = load i64*, i64** %4, align 8
  %249 = getelementptr inbounds i64, i64* %248, i32 1
  store i64* %249, i64** %4, align 8
  %250 = load i64, i64* %248, align 8
  %251 = load i64, i64* %8, align 8
  %252 = xor i64 %250, %251
  store i64 %252, i64* %9, align 8
  %253 = load i64, i64* %9, align 8
  %254 = and i64 %253, 63
  %255 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %9, align 8
  %258 = lshr i64 %257, 8
  %259 = and i64 %258, 63
  %260 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = xor i64 %256, %261
  %263 = load i64, i64* %9, align 8
  %264 = lshr i64 %263, 16
  %265 = and i64 %264, 63
  %266 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = xor i64 %262, %267
  %269 = load i64, i64* %9, align 8
  %270 = lshr i64 %269, 24
  %271 = and i64 %270, 63
  %272 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = xor i64 %268, %273
  %275 = load i64, i64* %7, align 8
  %276 = xor i64 %275, %274
  store i64 %276, i64* %7, align 8
  %277 = load i64*, i64** %4, align 8
  %278 = getelementptr inbounds i64, i64* %277, i32 1
  store i64* %278, i64** %4, align 8
  %279 = load i64, i64* %277, align 8
  %280 = load i64, i64* %8, align 8
  %281 = shl i64 %280, 28
  %282 = load i64, i64* %8, align 8
  %283 = lshr i64 %282, 4
  %284 = or i64 %281, %283
  %285 = xor i64 %279, %284
  store i64 %285, i64* %9, align 8
  %286 = load i64, i64* %9, align 8
  %287 = and i64 %286, 63
  %288 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* %9, align 8
  %291 = lshr i64 %290, 8
  %292 = and i64 %291, 63
  %293 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = xor i64 %289, %294
  %296 = load i64, i64* %9, align 8
  %297 = lshr i64 %296, 16
  %298 = and i64 %297, 63
  %299 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = xor i64 %295, %300
  %302 = load i64, i64* %9, align 8
  %303 = lshr i64 %302, 24
  %304 = and i64 %303, 63
  %305 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = xor i64 %301, %306
  %308 = load i64, i64* %7, align 8
  %309 = xor i64 %308, %307
  store i64 %309, i64* %7, align 8
  %310 = load i64*, i64** %4, align 8
  %311 = getelementptr inbounds i64, i64* %310, i32 1
  store i64* %311, i64** %4, align 8
  %312 = load i64, i64* %310, align 8
  %313 = load i64, i64* %7, align 8
  %314 = xor i64 %312, %313
  store i64 %314, i64* %9, align 8
  %315 = load i64, i64* %9, align 8
  %316 = and i64 %315, 63
  %317 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %316
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* %9, align 8
  %320 = lshr i64 %319, 8
  %321 = and i64 %320, 63
  %322 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = xor i64 %318, %323
  %325 = load i64, i64* %9, align 8
  %326 = lshr i64 %325, 16
  %327 = and i64 %326, 63
  %328 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %327
  %329 = load i64, i64* %328, align 8
  %330 = xor i64 %324, %329
  %331 = load i64, i64* %9, align 8
  %332 = lshr i64 %331, 24
  %333 = and i64 %332, 63
  %334 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %333
  %335 = load i64, i64* %334, align 8
  %336 = xor i64 %330, %335
  %337 = load i64, i64* %8, align 8
  %338 = xor i64 %337, %336
  store i64 %338, i64* %8, align 8
  %339 = load i64*, i64** %4, align 8
  %340 = getelementptr inbounds i64, i64* %339, i32 1
  store i64* %340, i64** %4, align 8
  %341 = load i64, i64* %339, align 8
  %342 = load i64, i64* %7, align 8
  %343 = shl i64 %342, 28
  %344 = load i64, i64* %7, align 8
  %345 = lshr i64 %344, 4
  %346 = or i64 %343, %345
  %347 = xor i64 %341, %346
  store i64 %347, i64* %9, align 8
  %348 = load i64, i64* %9, align 8
  %349 = and i64 %348, 63
  %350 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* %9, align 8
  %353 = lshr i64 %352, 8
  %354 = and i64 %353, 63
  %355 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = xor i64 %351, %356
  %358 = load i64, i64* %9, align 8
  %359 = lshr i64 %358, 16
  %360 = and i64 %359, 63
  %361 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %360
  %362 = load i64, i64* %361, align 8
  %363 = xor i64 %357, %362
  %364 = load i64, i64* %9, align 8
  %365 = lshr i64 %364, 24
  %366 = and i64 %365, 63
  %367 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %366
  %368 = load i64, i64* %367, align 8
  %369 = xor i64 %363, %368
  %370 = load i64, i64* %8, align 8
  %371 = xor i64 %370, %369
  store i64 %371, i64* %8, align 8
  %372 = load i64*, i64** %4, align 8
  %373 = getelementptr inbounds i64, i64* %372, i32 1
  store i64* %373, i64** %4, align 8
  %374 = load i64, i64* %372, align 8
  %375 = load i64, i64* %8, align 8
  %376 = xor i64 %374, %375
  store i64 %376, i64* %9, align 8
  %377 = load i64, i64* %9, align 8
  %378 = and i64 %377, 63
  %379 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %378
  %380 = load i64, i64* %379, align 8
  %381 = load i64, i64* %9, align 8
  %382 = lshr i64 %381, 8
  %383 = and i64 %382, 63
  %384 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %383
  %385 = load i64, i64* %384, align 8
  %386 = xor i64 %380, %385
  %387 = load i64, i64* %9, align 8
  %388 = lshr i64 %387, 16
  %389 = and i64 %388, 63
  %390 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = xor i64 %386, %391
  %393 = load i64, i64* %9, align 8
  %394 = lshr i64 %393, 24
  %395 = and i64 %394, 63
  %396 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %395
  %397 = load i64, i64* %396, align 8
  %398 = xor i64 %392, %397
  %399 = load i64, i64* %7, align 8
  %400 = xor i64 %399, %398
  store i64 %400, i64* %7, align 8
  %401 = load i64*, i64** %4, align 8
  %402 = getelementptr inbounds i64, i64* %401, i32 1
  store i64* %402, i64** %4, align 8
  %403 = load i64, i64* %401, align 8
  %404 = load i64, i64* %8, align 8
  %405 = shl i64 %404, 28
  %406 = load i64, i64* %8, align 8
  %407 = lshr i64 %406, 4
  %408 = or i64 %405, %407
  %409 = xor i64 %403, %408
  store i64 %409, i64* %9, align 8
  %410 = load i64, i64* %9, align 8
  %411 = and i64 %410, 63
  %412 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %411
  %413 = load i64, i64* %412, align 8
  %414 = load i64, i64* %9, align 8
  %415 = lshr i64 %414, 8
  %416 = and i64 %415, 63
  %417 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %416
  %418 = load i64, i64* %417, align 8
  %419 = xor i64 %413, %418
  %420 = load i64, i64* %9, align 8
  %421 = lshr i64 %420, 16
  %422 = and i64 %421, 63
  %423 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %422
  %424 = load i64, i64* %423, align 8
  %425 = xor i64 %419, %424
  %426 = load i64, i64* %9, align 8
  %427 = lshr i64 %426, 24
  %428 = and i64 %427, 63
  %429 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %428
  %430 = load i64, i64* %429, align 8
  %431 = xor i64 %425, %430
  %432 = load i64, i64* %7, align 8
  %433 = xor i64 %432, %431
  store i64 %433, i64* %7, align 8
  %434 = load i64*, i64** %4, align 8
  %435 = getelementptr inbounds i64, i64* %434, i32 1
  store i64* %435, i64** %4, align 8
  %436 = load i64, i64* %434, align 8
  %437 = load i64, i64* %7, align 8
  %438 = xor i64 %436, %437
  store i64 %438, i64* %9, align 8
  %439 = load i64, i64* %9, align 8
  %440 = and i64 %439, 63
  %441 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %440
  %442 = load i64, i64* %441, align 8
  %443 = load i64, i64* %9, align 8
  %444 = lshr i64 %443, 8
  %445 = and i64 %444, 63
  %446 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = xor i64 %442, %447
  %449 = load i64, i64* %9, align 8
  %450 = lshr i64 %449, 16
  %451 = and i64 %450, 63
  %452 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %451
  %453 = load i64, i64* %452, align 8
  %454 = xor i64 %448, %453
  %455 = load i64, i64* %9, align 8
  %456 = lshr i64 %455, 24
  %457 = and i64 %456, 63
  %458 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %457
  %459 = load i64, i64* %458, align 8
  %460 = xor i64 %454, %459
  %461 = load i64, i64* %8, align 8
  %462 = xor i64 %461, %460
  store i64 %462, i64* %8, align 8
  %463 = load i64*, i64** %4, align 8
  %464 = getelementptr inbounds i64, i64* %463, i32 1
  store i64* %464, i64** %4, align 8
  %465 = load i64, i64* %463, align 8
  %466 = load i64, i64* %7, align 8
  %467 = shl i64 %466, 28
  %468 = load i64, i64* %7, align 8
  %469 = lshr i64 %468, 4
  %470 = or i64 %467, %469
  %471 = xor i64 %465, %470
  store i64 %471, i64* %9, align 8
  %472 = load i64, i64* %9, align 8
  %473 = and i64 %472, 63
  %474 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %473
  %475 = load i64, i64* %474, align 8
  %476 = load i64, i64* %9, align 8
  %477 = lshr i64 %476, 8
  %478 = and i64 %477, 63
  %479 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %478
  %480 = load i64, i64* %479, align 8
  %481 = xor i64 %475, %480
  %482 = load i64, i64* %9, align 8
  %483 = lshr i64 %482, 16
  %484 = and i64 %483, 63
  %485 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %484
  %486 = load i64, i64* %485, align 8
  %487 = xor i64 %481, %486
  %488 = load i64, i64* %9, align 8
  %489 = lshr i64 %488, 24
  %490 = and i64 %489, 63
  %491 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %490
  %492 = load i64, i64* %491, align 8
  %493 = xor i64 %487, %492
  %494 = load i64, i64* %8, align 8
  %495 = xor i64 %494, %493
  store i64 %495, i64* %8, align 8
  %496 = load i64*, i64** %4, align 8
  %497 = getelementptr inbounds i64, i64* %496, i32 1
  store i64* %497, i64** %4, align 8
  %498 = load i64, i64* %496, align 8
  %499 = load i64, i64* %8, align 8
  %500 = xor i64 %498, %499
  store i64 %500, i64* %9, align 8
  %501 = load i64, i64* %9, align 8
  %502 = and i64 %501, 63
  %503 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %502
  %504 = load i64, i64* %503, align 8
  %505 = load i64, i64* %9, align 8
  %506 = lshr i64 %505, 8
  %507 = and i64 %506, 63
  %508 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %507
  %509 = load i64, i64* %508, align 8
  %510 = xor i64 %504, %509
  %511 = load i64, i64* %9, align 8
  %512 = lshr i64 %511, 16
  %513 = and i64 %512, 63
  %514 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = xor i64 %510, %515
  %517 = load i64, i64* %9, align 8
  %518 = lshr i64 %517, 24
  %519 = and i64 %518, 63
  %520 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %519
  %521 = load i64, i64* %520, align 8
  %522 = xor i64 %516, %521
  %523 = load i64, i64* %7, align 8
  %524 = xor i64 %523, %522
  store i64 %524, i64* %7, align 8
  %525 = load i64*, i64** %4, align 8
  %526 = getelementptr inbounds i64, i64* %525, i32 1
  store i64* %526, i64** %4, align 8
  %527 = load i64, i64* %525, align 8
  %528 = load i64, i64* %8, align 8
  %529 = shl i64 %528, 28
  %530 = load i64, i64* %8, align 8
  %531 = lshr i64 %530, 4
  %532 = or i64 %529, %531
  %533 = xor i64 %527, %532
  store i64 %533, i64* %9, align 8
  %534 = load i64, i64* %9, align 8
  %535 = and i64 %534, 63
  %536 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %535
  %537 = load i64, i64* %536, align 8
  %538 = load i64, i64* %9, align 8
  %539 = lshr i64 %538, 8
  %540 = and i64 %539, 63
  %541 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %540
  %542 = load i64, i64* %541, align 8
  %543 = xor i64 %537, %542
  %544 = load i64, i64* %9, align 8
  %545 = lshr i64 %544, 16
  %546 = and i64 %545, 63
  %547 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %546
  %548 = load i64, i64* %547, align 8
  %549 = xor i64 %543, %548
  %550 = load i64, i64* %9, align 8
  %551 = lshr i64 %550, 24
  %552 = and i64 %551, 63
  %553 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %552
  %554 = load i64, i64* %553, align 8
  %555 = xor i64 %549, %554
  %556 = load i64, i64* %7, align 8
  %557 = xor i64 %556, %555
  store i64 %557, i64* %7, align 8
  %558 = load i64*, i64** %4, align 8
  %559 = getelementptr inbounds i64, i64* %558, i32 1
  store i64* %559, i64** %4, align 8
  %560 = load i64, i64* %558, align 8
  %561 = load i64, i64* %7, align 8
  %562 = xor i64 %560, %561
  store i64 %562, i64* %9, align 8
  %563 = load i64, i64* %9, align 8
  %564 = and i64 %563, 63
  %565 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %564
  %566 = load i64, i64* %565, align 8
  %567 = load i64, i64* %9, align 8
  %568 = lshr i64 %567, 8
  %569 = and i64 %568, 63
  %570 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %569
  %571 = load i64, i64* %570, align 8
  %572 = xor i64 %566, %571
  %573 = load i64, i64* %9, align 8
  %574 = lshr i64 %573, 16
  %575 = and i64 %574, 63
  %576 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %575
  %577 = load i64, i64* %576, align 8
  %578 = xor i64 %572, %577
  %579 = load i64, i64* %9, align 8
  %580 = lshr i64 %579, 24
  %581 = and i64 %580, 63
  %582 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %581
  %583 = load i64, i64* %582, align 8
  %584 = xor i64 %578, %583
  %585 = load i64, i64* %8, align 8
  %586 = xor i64 %585, %584
  store i64 %586, i64* %8, align 8
  %587 = load i64*, i64** %4, align 8
  %588 = getelementptr inbounds i64, i64* %587, i32 1
  store i64* %588, i64** %4, align 8
  %589 = load i64, i64* %587, align 8
  %590 = load i64, i64* %7, align 8
  %591 = shl i64 %590, 28
  %592 = load i64, i64* %7, align 8
  %593 = lshr i64 %592, 4
  %594 = or i64 %591, %593
  %595 = xor i64 %589, %594
  store i64 %595, i64* %9, align 8
  %596 = load i64, i64* %9, align 8
  %597 = and i64 %596, 63
  %598 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %597
  %599 = load i64, i64* %598, align 8
  %600 = load i64, i64* %9, align 8
  %601 = lshr i64 %600, 8
  %602 = and i64 %601, 63
  %603 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %602
  %604 = load i64, i64* %603, align 8
  %605 = xor i64 %599, %604
  %606 = load i64, i64* %9, align 8
  %607 = lshr i64 %606, 16
  %608 = and i64 %607, 63
  %609 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %608
  %610 = load i64, i64* %609, align 8
  %611 = xor i64 %605, %610
  %612 = load i64, i64* %9, align 8
  %613 = lshr i64 %612, 24
  %614 = and i64 %613, 63
  %615 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %614
  %616 = load i64, i64* %615, align 8
  %617 = xor i64 %611, %616
  %618 = load i64, i64* %8, align 8
  %619 = xor i64 %618, %617
  store i64 %619, i64* %8, align 8
  %620 = load i64*, i64** %4, align 8
  %621 = getelementptr inbounds i64, i64* %620, i32 1
  store i64* %621, i64** %4, align 8
  %622 = load i64, i64* %620, align 8
  %623 = load i64, i64* %8, align 8
  %624 = xor i64 %622, %623
  store i64 %624, i64* %9, align 8
  %625 = load i64, i64* %9, align 8
  %626 = and i64 %625, 63
  %627 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %626
  %628 = load i64, i64* %627, align 8
  %629 = load i64, i64* %9, align 8
  %630 = lshr i64 %629, 8
  %631 = and i64 %630, 63
  %632 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %631
  %633 = load i64, i64* %632, align 8
  %634 = xor i64 %628, %633
  %635 = load i64, i64* %9, align 8
  %636 = lshr i64 %635, 16
  %637 = and i64 %636, 63
  %638 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %637
  %639 = load i64, i64* %638, align 8
  %640 = xor i64 %634, %639
  %641 = load i64, i64* %9, align 8
  %642 = lshr i64 %641, 24
  %643 = and i64 %642, 63
  %644 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %643
  %645 = load i64, i64* %644, align 8
  %646 = xor i64 %640, %645
  %647 = load i64, i64* %7, align 8
  %648 = xor i64 %647, %646
  store i64 %648, i64* %7, align 8
  %649 = load i64*, i64** %4, align 8
  %650 = getelementptr inbounds i64, i64* %649, i32 1
  store i64* %650, i64** %4, align 8
  %651 = load i64, i64* %649, align 8
  %652 = load i64, i64* %8, align 8
  %653 = shl i64 %652, 28
  %654 = load i64, i64* %8, align 8
  %655 = lshr i64 %654, 4
  %656 = or i64 %653, %655
  %657 = xor i64 %651, %656
  store i64 %657, i64* %9, align 8
  %658 = load i64, i64* %9, align 8
  %659 = and i64 %658, 63
  %660 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %659
  %661 = load i64, i64* %660, align 8
  %662 = load i64, i64* %9, align 8
  %663 = lshr i64 %662, 8
  %664 = and i64 %663, 63
  %665 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %664
  %666 = load i64, i64* %665, align 8
  %667 = xor i64 %661, %666
  %668 = load i64, i64* %9, align 8
  %669 = lshr i64 %668, 16
  %670 = and i64 %669, 63
  %671 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %670
  %672 = load i64, i64* %671, align 8
  %673 = xor i64 %667, %672
  %674 = load i64, i64* %9, align 8
  %675 = lshr i64 %674, 24
  %676 = and i64 %675, 63
  %677 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %676
  %678 = load i64, i64* %677, align 8
  %679 = xor i64 %673, %678
  %680 = load i64, i64* %7, align 8
  %681 = xor i64 %680, %679
  store i64 %681, i64* %7, align 8
  %682 = load i64*, i64** %4, align 8
  %683 = getelementptr inbounds i64, i64* %682, i32 1
  store i64* %683, i64** %4, align 8
  %684 = load i64, i64* %682, align 8
  %685 = load i64, i64* %7, align 8
  %686 = xor i64 %684, %685
  store i64 %686, i64* %9, align 8
  %687 = load i64, i64* %9, align 8
  %688 = and i64 %687, 63
  %689 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %688
  %690 = load i64, i64* %689, align 8
  %691 = load i64, i64* %9, align 8
  %692 = lshr i64 %691, 8
  %693 = and i64 %692, 63
  %694 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %693
  %695 = load i64, i64* %694, align 8
  %696 = xor i64 %690, %695
  %697 = load i64, i64* %9, align 8
  %698 = lshr i64 %697, 16
  %699 = and i64 %698, 63
  %700 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %699
  %701 = load i64, i64* %700, align 8
  %702 = xor i64 %696, %701
  %703 = load i64, i64* %9, align 8
  %704 = lshr i64 %703, 24
  %705 = and i64 %704, 63
  %706 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %705
  %707 = load i64, i64* %706, align 8
  %708 = xor i64 %702, %707
  %709 = load i64, i64* %8, align 8
  %710 = xor i64 %709, %708
  store i64 %710, i64* %8, align 8
  %711 = load i64*, i64** %4, align 8
  %712 = getelementptr inbounds i64, i64* %711, i32 1
  store i64* %712, i64** %4, align 8
  %713 = load i64, i64* %711, align 8
  %714 = load i64, i64* %7, align 8
  %715 = shl i64 %714, 28
  %716 = load i64, i64* %7, align 8
  %717 = lshr i64 %716, 4
  %718 = or i64 %715, %717
  %719 = xor i64 %713, %718
  store i64 %719, i64* %9, align 8
  %720 = load i64, i64* %9, align 8
  %721 = and i64 %720, 63
  %722 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %721
  %723 = load i64, i64* %722, align 8
  %724 = load i64, i64* %9, align 8
  %725 = lshr i64 %724, 8
  %726 = and i64 %725, 63
  %727 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %726
  %728 = load i64, i64* %727, align 8
  %729 = xor i64 %723, %728
  %730 = load i64, i64* %9, align 8
  %731 = lshr i64 %730, 16
  %732 = and i64 %731, 63
  %733 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %732
  %734 = load i64, i64* %733, align 8
  %735 = xor i64 %729, %734
  %736 = load i64, i64* %9, align 8
  %737 = lshr i64 %736, 24
  %738 = and i64 %737, 63
  %739 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %738
  %740 = load i64, i64* %739, align 8
  %741 = xor i64 %735, %740
  %742 = load i64, i64* %8, align 8
  %743 = xor i64 %742, %741
  store i64 %743, i64* %8, align 8
  %744 = load i64*, i64** %4, align 8
  %745 = getelementptr inbounds i64, i64* %744, i32 1
  store i64* %745, i64** %4, align 8
  %746 = load i64, i64* %744, align 8
  %747 = load i64, i64* %8, align 8
  %748 = xor i64 %746, %747
  store i64 %748, i64* %9, align 8
  %749 = load i64, i64* %9, align 8
  %750 = and i64 %749, 63
  %751 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %750
  %752 = load i64, i64* %751, align 8
  %753 = load i64, i64* %9, align 8
  %754 = lshr i64 %753, 8
  %755 = and i64 %754, 63
  %756 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %755
  %757 = load i64, i64* %756, align 8
  %758 = xor i64 %752, %757
  %759 = load i64, i64* %9, align 8
  %760 = lshr i64 %759, 16
  %761 = and i64 %760, 63
  %762 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %761
  %763 = load i64, i64* %762, align 8
  %764 = xor i64 %758, %763
  %765 = load i64, i64* %9, align 8
  %766 = lshr i64 %765, 24
  %767 = and i64 %766, 63
  %768 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %767
  %769 = load i64, i64* %768, align 8
  %770 = xor i64 %764, %769
  %771 = load i64, i64* %7, align 8
  %772 = xor i64 %771, %770
  store i64 %772, i64* %7, align 8
  %773 = load i64*, i64** %4, align 8
  %774 = getelementptr inbounds i64, i64* %773, i32 1
  store i64* %774, i64** %4, align 8
  %775 = load i64, i64* %773, align 8
  %776 = load i64, i64* %8, align 8
  %777 = shl i64 %776, 28
  %778 = load i64, i64* %8, align 8
  %779 = lshr i64 %778, 4
  %780 = or i64 %777, %779
  %781 = xor i64 %775, %780
  store i64 %781, i64* %9, align 8
  %782 = load i64, i64* %9, align 8
  %783 = and i64 %782, 63
  %784 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %783
  %785 = load i64, i64* %784, align 8
  %786 = load i64, i64* %9, align 8
  %787 = lshr i64 %786, 8
  %788 = and i64 %787, 63
  %789 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %788
  %790 = load i64, i64* %789, align 8
  %791 = xor i64 %785, %790
  %792 = load i64, i64* %9, align 8
  %793 = lshr i64 %792, 16
  %794 = and i64 %793, 63
  %795 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %794
  %796 = load i64, i64* %795, align 8
  %797 = xor i64 %791, %796
  %798 = load i64, i64* %9, align 8
  %799 = lshr i64 %798, 24
  %800 = and i64 %799, 63
  %801 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %800
  %802 = load i64, i64* %801, align 8
  %803 = xor i64 %797, %802
  %804 = load i64, i64* %7, align 8
  %805 = xor i64 %804, %803
  store i64 %805, i64* %7, align 8
  %806 = load i64*, i64** %4, align 8
  %807 = getelementptr inbounds i64, i64* %806, i32 1
  store i64* %807, i64** %4, align 8
  %808 = load i64, i64* %806, align 8
  %809 = load i64, i64* %7, align 8
  %810 = xor i64 %808, %809
  store i64 %810, i64* %9, align 8
  %811 = load i64, i64* %9, align 8
  %812 = and i64 %811, 63
  %813 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %812
  %814 = load i64, i64* %813, align 8
  %815 = load i64, i64* %9, align 8
  %816 = lshr i64 %815, 8
  %817 = and i64 %816, 63
  %818 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %817
  %819 = load i64, i64* %818, align 8
  %820 = xor i64 %814, %819
  %821 = load i64, i64* %9, align 8
  %822 = lshr i64 %821, 16
  %823 = and i64 %822, 63
  %824 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %823
  %825 = load i64, i64* %824, align 8
  %826 = xor i64 %820, %825
  %827 = load i64, i64* %9, align 8
  %828 = lshr i64 %827, 24
  %829 = and i64 %828, 63
  %830 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %829
  %831 = load i64, i64* %830, align 8
  %832 = xor i64 %826, %831
  %833 = load i64, i64* %8, align 8
  %834 = xor i64 %833, %832
  store i64 %834, i64* %8, align 8
  %835 = load i64*, i64** %4, align 8
  %836 = getelementptr inbounds i64, i64* %835, i32 1
  store i64* %836, i64** %4, align 8
  %837 = load i64, i64* %835, align 8
  %838 = load i64, i64* %7, align 8
  %839 = shl i64 %838, 28
  %840 = load i64, i64* %7, align 8
  %841 = lshr i64 %840, 4
  %842 = or i64 %839, %841
  %843 = xor i64 %837, %842
  store i64 %843, i64* %9, align 8
  %844 = load i64, i64* %9, align 8
  %845 = and i64 %844, 63
  %846 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %845
  %847 = load i64, i64* %846, align 8
  %848 = load i64, i64* %9, align 8
  %849 = lshr i64 %848, 8
  %850 = and i64 %849, 63
  %851 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %850
  %852 = load i64, i64* %851, align 8
  %853 = xor i64 %847, %852
  %854 = load i64, i64* %9, align 8
  %855 = lshr i64 %854, 16
  %856 = and i64 %855, 63
  %857 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %856
  %858 = load i64, i64* %857, align 8
  %859 = xor i64 %853, %858
  %860 = load i64, i64* %9, align 8
  %861 = lshr i64 %860, 24
  %862 = and i64 %861, 63
  %863 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %862
  %864 = load i64, i64* %863, align 8
  %865 = xor i64 %859, %864
  %866 = load i64, i64* %8, align 8
  %867 = xor i64 %866, %865
  store i64 %867, i64* %8, align 8
  %868 = load i64*, i64** %4, align 8
  %869 = getelementptr inbounds i64, i64* %868, i32 1
  store i64* %869, i64** %4, align 8
  %870 = load i64, i64* %868, align 8
  %871 = load i64, i64* %8, align 8
  %872 = xor i64 %870, %871
  store i64 %872, i64* %9, align 8
  %873 = load i64, i64* %9, align 8
  %874 = and i64 %873, 63
  %875 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %874
  %876 = load i64, i64* %875, align 8
  %877 = load i64, i64* %9, align 8
  %878 = lshr i64 %877, 8
  %879 = and i64 %878, 63
  %880 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %879
  %881 = load i64, i64* %880, align 8
  %882 = xor i64 %876, %881
  %883 = load i64, i64* %9, align 8
  %884 = lshr i64 %883, 16
  %885 = and i64 %884, 63
  %886 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %885
  %887 = load i64, i64* %886, align 8
  %888 = xor i64 %882, %887
  %889 = load i64, i64* %9, align 8
  %890 = lshr i64 %889, 24
  %891 = and i64 %890, 63
  %892 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %891
  %893 = load i64, i64* %892, align 8
  %894 = xor i64 %888, %893
  %895 = load i64, i64* %7, align 8
  %896 = xor i64 %895, %894
  store i64 %896, i64* %7, align 8
  %897 = load i64*, i64** %4, align 8
  %898 = getelementptr inbounds i64, i64* %897, i32 1
  store i64* %898, i64** %4, align 8
  %899 = load i64, i64* %897, align 8
  %900 = load i64, i64* %8, align 8
  %901 = shl i64 %900, 28
  %902 = load i64, i64* %8, align 8
  %903 = lshr i64 %902, 4
  %904 = or i64 %901, %903
  %905 = xor i64 %899, %904
  store i64 %905, i64* %9, align 8
  %906 = load i64, i64* %9, align 8
  %907 = and i64 %906, 63
  %908 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %907
  %909 = load i64, i64* %908, align 8
  %910 = load i64, i64* %9, align 8
  %911 = lshr i64 %910, 8
  %912 = and i64 %911, 63
  %913 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %912
  %914 = load i64, i64* %913, align 8
  %915 = xor i64 %909, %914
  %916 = load i64, i64* %9, align 8
  %917 = lshr i64 %916, 16
  %918 = and i64 %917, 63
  %919 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %918
  %920 = load i64, i64* %919, align 8
  %921 = xor i64 %915, %920
  %922 = load i64, i64* %9, align 8
  %923 = lshr i64 %922, 24
  %924 = and i64 %923, 63
  %925 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %924
  %926 = load i64, i64* %925, align 8
  %927 = xor i64 %921, %926
  %928 = load i64, i64* %7, align 8
  %929 = xor i64 %928, %927
  store i64 %929, i64* %7, align 8
  %930 = load i64*, i64** %4, align 8
  %931 = getelementptr inbounds i64, i64* %930, i32 1
  store i64* %931, i64** %4, align 8
  %932 = load i64, i64* %930, align 8
  %933 = load i64, i64* %7, align 8
  %934 = xor i64 %932, %933
  store i64 %934, i64* %9, align 8
  %935 = load i64, i64* %9, align 8
  %936 = and i64 %935, 63
  %937 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %936
  %938 = load i64, i64* %937, align 8
  %939 = load i64, i64* %9, align 8
  %940 = lshr i64 %939, 8
  %941 = and i64 %940, 63
  %942 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %941
  %943 = load i64, i64* %942, align 8
  %944 = xor i64 %938, %943
  %945 = load i64, i64* %9, align 8
  %946 = lshr i64 %945, 16
  %947 = and i64 %946, 63
  %948 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %947
  %949 = load i64, i64* %948, align 8
  %950 = xor i64 %944, %949
  %951 = load i64, i64* %9, align 8
  %952 = lshr i64 %951, 24
  %953 = and i64 %952, 63
  %954 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %953
  %955 = load i64, i64* %954, align 8
  %956 = xor i64 %950, %955
  %957 = load i64, i64* %8, align 8
  %958 = xor i64 %957, %956
  store i64 %958, i64* %8, align 8
  %959 = load i64*, i64** %4, align 8
  %960 = getelementptr inbounds i64, i64* %959, i32 1
  store i64* %960, i64** %4, align 8
  %961 = load i64, i64* %959, align 8
  %962 = load i64, i64* %7, align 8
  %963 = shl i64 %962, 28
  %964 = load i64, i64* %7, align 8
  %965 = lshr i64 %964, 4
  %966 = or i64 %963, %965
  %967 = xor i64 %961, %966
  store i64 %967, i64* %9, align 8
  %968 = load i64, i64* %9, align 8
  %969 = and i64 %968, 63
  %970 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %969
  %971 = load i64, i64* %970, align 8
  %972 = load i64, i64* %9, align 8
  %973 = lshr i64 %972, 8
  %974 = and i64 %973, 63
  %975 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %974
  %976 = load i64, i64* %975, align 8
  %977 = xor i64 %971, %976
  %978 = load i64, i64* %9, align 8
  %979 = lshr i64 %978, 16
  %980 = and i64 %979, 63
  %981 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %980
  %982 = load i64, i64* %981, align 8
  %983 = xor i64 %977, %982
  %984 = load i64, i64* %9, align 8
  %985 = lshr i64 %984, 24
  %986 = and i64 %985, 63
  %987 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %986
  %988 = load i64, i64* %987, align 8
  %989 = xor i64 %983, %988
  %990 = load i64, i64* %8, align 8
  %991 = xor i64 %990, %989
  store i64 %991, i64* %8, align 8
  %992 = load i64*, i64** %4, align 8
  %993 = getelementptr inbounds i64, i64* %992, i32 1
  store i64* %993, i64** %4, align 8
  %994 = load i64, i64* %992, align 8
  %995 = load i64, i64* %8, align 8
  %996 = xor i64 %994, %995
  store i64 %996, i64* %9, align 8
  %997 = load i64, i64* %9, align 8
  %998 = and i64 %997, 63
  %999 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %998
  %1000 = load i64, i64* %999, align 8
  %1001 = load i64, i64* %9, align 8
  %1002 = lshr i64 %1001, 8
  %1003 = and i64 %1002, 63
  %1004 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1003
  %1005 = load i64, i64* %1004, align 8
  %1006 = xor i64 %1000, %1005
  %1007 = load i64, i64* %9, align 8
  %1008 = lshr i64 %1007, 16
  %1009 = and i64 %1008, 63
  %1010 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1009
  %1011 = load i64, i64* %1010, align 8
  %1012 = xor i64 %1006, %1011
  %1013 = load i64, i64* %9, align 8
  %1014 = lshr i64 %1013, 24
  %1015 = and i64 %1014, 63
  %1016 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1015
  %1017 = load i64, i64* %1016, align 8
  %1018 = xor i64 %1012, %1017
  %1019 = load i64, i64* %7, align 8
  %1020 = xor i64 %1019, %1018
  store i64 %1020, i64* %7, align 8
  %1021 = load i64*, i64** %4, align 8
  %1022 = getelementptr inbounds i64, i64* %1021, i32 1
  store i64* %1022, i64** %4, align 8
  %1023 = load i64, i64* %1021, align 8
  %1024 = load i64, i64* %8, align 8
  %1025 = shl i64 %1024, 28
  %1026 = load i64, i64* %8, align 8
  %1027 = lshr i64 %1026, 4
  %1028 = or i64 %1025, %1027
  %1029 = xor i64 %1023, %1028
  store i64 %1029, i64* %9, align 8
  %1030 = load i64, i64* %9, align 8
  %1031 = and i64 %1030, 63
  %1032 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1031
  %1033 = load i64, i64* %1032, align 8
  %1034 = load i64, i64* %9, align 8
  %1035 = lshr i64 %1034, 8
  %1036 = and i64 %1035, 63
  %1037 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1036
  %1038 = load i64, i64* %1037, align 8
  %1039 = xor i64 %1033, %1038
  %1040 = load i64, i64* %9, align 8
  %1041 = lshr i64 %1040, 16
  %1042 = and i64 %1041, 63
  %1043 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1042
  %1044 = load i64, i64* %1043, align 8
  %1045 = xor i64 %1039, %1044
  %1046 = load i64, i64* %9, align 8
  %1047 = lshr i64 %1046, 24
  %1048 = and i64 %1047, 63
  %1049 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1048
  %1050 = load i64, i64* %1049, align 8
  %1051 = xor i64 %1045, %1050
  %1052 = load i64, i64* %7, align 8
  %1053 = xor i64 %1052, %1051
  store i64 %1053, i64* %7, align 8
  %1054 = load i64*, i64** %4, align 8
  %1055 = getelementptr inbounds i64, i64* %1054, i32 1
  store i64* %1055, i64** %4, align 8
  %1056 = load i64, i64* %1054, align 8
  %1057 = load i64, i64* %7, align 8
  %1058 = xor i64 %1056, %1057
  store i64 %1058, i64* %9, align 8
  %1059 = load i64, i64* %9, align 8
  %1060 = and i64 %1059, 63
  %1061 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1060
  %1062 = load i64, i64* %1061, align 8
  %1063 = load i64, i64* %9, align 8
  %1064 = lshr i64 %1063, 8
  %1065 = and i64 %1064, 63
  %1066 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1065
  %1067 = load i64, i64* %1066, align 8
  %1068 = xor i64 %1062, %1067
  %1069 = load i64, i64* %9, align 8
  %1070 = lshr i64 %1069, 16
  %1071 = and i64 %1070, 63
  %1072 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1071
  %1073 = load i64, i64* %1072, align 8
  %1074 = xor i64 %1068, %1073
  %1075 = load i64, i64* %9, align 8
  %1076 = lshr i64 %1075, 24
  %1077 = and i64 %1076, 63
  %1078 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1077
  %1079 = load i64, i64* %1078, align 8
  %1080 = xor i64 %1074, %1079
  %1081 = load i64, i64* %8, align 8
  %1082 = xor i64 %1081, %1080
  store i64 %1082, i64* %8, align 8
  %1083 = load i64*, i64** %4, align 8
  %1084 = getelementptr inbounds i64, i64* %1083, i32 1
  store i64* %1084, i64** %4, align 8
  %1085 = load i64, i64* %1083, align 8
  %1086 = load i64, i64* %7, align 8
  %1087 = shl i64 %1086, 28
  %1088 = load i64, i64* %7, align 8
  %1089 = lshr i64 %1088, 4
  %1090 = or i64 %1087, %1089
  %1091 = xor i64 %1085, %1090
  store i64 %1091, i64* %9, align 8
  %1092 = load i64, i64* %9, align 8
  %1093 = and i64 %1092, 63
  %1094 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1093
  %1095 = load i64, i64* %1094, align 8
  %1096 = load i64, i64* %9, align 8
  %1097 = lshr i64 %1096, 8
  %1098 = and i64 %1097, 63
  %1099 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1098
  %1100 = load i64, i64* %1099, align 8
  %1101 = xor i64 %1095, %1100
  %1102 = load i64, i64* %9, align 8
  %1103 = lshr i64 %1102, 16
  %1104 = and i64 %1103, 63
  %1105 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1104
  %1106 = load i64, i64* %1105, align 8
  %1107 = xor i64 %1101, %1106
  %1108 = load i64, i64* %9, align 8
  %1109 = lshr i64 %1108, 24
  %1110 = and i64 %1109, 63
  %1111 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1110
  %1112 = load i64, i64* %1111, align 8
  %1113 = xor i64 %1107, %1112
  %1114 = load i64, i64* %8, align 8
  %1115 = xor i64 %1114, %1113
  store i64 %1115, i64* %8, align 8
  %1116 = load i64*, i64** %4, align 8
  %1117 = getelementptr inbounds i64, i64* %1116, i32 1
  store i64* %1117, i64** %4, align 8
  %1118 = load i64, i64* %1116, align 8
  %1119 = load i64, i64* %7, align 8
  %1120 = xor i64 %1118, %1119
  store i64 %1120, i64* %9, align 8
  %1121 = load i64, i64* %9, align 8
  %1122 = and i64 %1121, 63
  %1123 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1122
  %1124 = load i64, i64* %1123, align 8
  %1125 = load i64, i64* %9, align 8
  %1126 = lshr i64 %1125, 8
  %1127 = and i64 %1126, 63
  %1128 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1127
  %1129 = load i64, i64* %1128, align 8
  %1130 = xor i64 %1124, %1129
  %1131 = load i64, i64* %9, align 8
  %1132 = lshr i64 %1131, 16
  %1133 = and i64 %1132, 63
  %1134 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1133
  %1135 = load i64, i64* %1134, align 8
  %1136 = xor i64 %1130, %1135
  %1137 = load i64, i64* %9, align 8
  %1138 = lshr i64 %1137, 24
  %1139 = and i64 %1138, 63
  %1140 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1139
  %1141 = load i64, i64* %1140, align 8
  %1142 = xor i64 %1136, %1141
  %1143 = load i64, i64* %8, align 8
  %1144 = xor i64 %1143, %1142
  store i64 %1144, i64* %8, align 8
  %1145 = load i64*, i64** %4, align 8
  %1146 = getelementptr inbounds i64, i64* %1145, i32 1
  store i64* %1146, i64** %4, align 8
  %1147 = load i64, i64* %1145, align 8
  %1148 = load i64, i64* %7, align 8
  %1149 = shl i64 %1148, 28
  %1150 = load i64, i64* %7, align 8
  %1151 = lshr i64 %1150, 4
  %1152 = or i64 %1149, %1151
  %1153 = xor i64 %1147, %1152
  store i64 %1153, i64* %9, align 8
  %1154 = load i64, i64* %9, align 8
  %1155 = and i64 %1154, 63
  %1156 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1155
  %1157 = load i64, i64* %1156, align 8
  %1158 = load i64, i64* %9, align 8
  %1159 = lshr i64 %1158, 8
  %1160 = and i64 %1159, 63
  %1161 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1160
  %1162 = load i64, i64* %1161, align 8
  %1163 = xor i64 %1157, %1162
  %1164 = load i64, i64* %9, align 8
  %1165 = lshr i64 %1164, 16
  %1166 = and i64 %1165, 63
  %1167 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1166
  %1168 = load i64, i64* %1167, align 8
  %1169 = xor i64 %1163, %1168
  %1170 = load i64, i64* %9, align 8
  %1171 = lshr i64 %1170, 24
  %1172 = and i64 %1171, 63
  %1173 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1172
  %1174 = load i64, i64* %1173, align 8
  %1175 = xor i64 %1169, %1174
  %1176 = load i64, i64* %8, align 8
  %1177 = xor i64 %1176, %1175
  store i64 %1177, i64* %8, align 8
  %1178 = load i64*, i64** %4, align 8
  %1179 = getelementptr inbounds i64, i64* %1178, i32 1
  store i64* %1179, i64** %4, align 8
  %1180 = load i64, i64* %1178, align 8
  %1181 = load i64, i64* %8, align 8
  %1182 = xor i64 %1180, %1181
  store i64 %1182, i64* %9, align 8
  %1183 = load i64, i64* %9, align 8
  %1184 = and i64 %1183, 63
  %1185 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1184
  %1186 = load i64, i64* %1185, align 8
  %1187 = load i64, i64* %9, align 8
  %1188 = lshr i64 %1187, 8
  %1189 = and i64 %1188, 63
  %1190 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1189
  %1191 = load i64, i64* %1190, align 8
  %1192 = xor i64 %1186, %1191
  %1193 = load i64, i64* %9, align 8
  %1194 = lshr i64 %1193, 16
  %1195 = and i64 %1194, 63
  %1196 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1195
  %1197 = load i64, i64* %1196, align 8
  %1198 = xor i64 %1192, %1197
  %1199 = load i64, i64* %9, align 8
  %1200 = lshr i64 %1199, 24
  %1201 = and i64 %1200, 63
  %1202 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1201
  %1203 = load i64, i64* %1202, align 8
  %1204 = xor i64 %1198, %1203
  %1205 = load i64, i64* %7, align 8
  %1206 = xor i64 %1205, %1204
  store i64 %1206, i64* %7, align 8
  %1207 = load i64*, i64** %4, align 8
  %1208 = getelementptr inbounds i64, i64* %1207, i32 1
  store i64* %1208, i64** %4, align 8
  %1209 = load i64, i64* %1207, align 8
  %1210 = load i64, i64* %8, align 8
  %1211 = shl i64 %1210, 28
  %1212 = load i64, i64* %8, align 8
  %1213 = lshr i64 %1212, 4
  %1214 = or i64 %1211, %1213
  %1215 = xor i64 %1209, %1214
  store i64 %1215, i64* %9, align 8
  %1216 = load i64, i64* %9, align 8
  %1217 = and i64 %1216, 63
  %1218 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1217
  %1219 = load i64, i64* %1218, align 8
  %1220 = load i64, i64* %9, align 8
  %1221 = lshr i64 %1220, 8
  %1222 = and i64 %1221, 63
  %1223 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1222
  %1224 = load i64, i64* %1223, align 8
  %1225 = xor i64 %1219, %1224
  %1226 = load i64, i64* %9, align 8
  %1227 = lshr i64 %1226, 16
  %1228 = and i64 %1227, 63
  %1229 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1228
  %1230 = load i64, i64* %1229, align 8
  %1231 = xor i64 %1225, %1230
  %1232 = load i64, i64* %9, align 8
  %1233 = lshr i64 %1232, 24
  %1234 = and i64 %1233, 63
  %1235 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1234
  %1236 = load i64, i64* %1235, align 8
  %1237 = xor i64 %1231, %1236
  %1238 = load i64, i64* %7, align 8
  %1239 = xor i64 %1238, %1237
  store i64 %1239, i64* %7, align 8
  %1240 = load i64*, i64** %4, align 8
  %1241 = getelementptr inbounds i64, i64* %1240, i32 1
  store i64* %1241, i64** %4, align 8
  %1242 = load i64, i64* %1240, align 8
  %1243 = load i64, i64* %7, align 8
  %1244 = xor i64 %1242, %1243
  store i64 %1244, i64* %9, align 8
  %1245 = load i64, i64* %9, align 8
  %1246 = and i64 %1245, 63
  %1247 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1246
  %1248 = load i64, i64* %1247, align 8
  %1249 = load i64, i64* %9, align 8
  %1250 = lshr i64 %1249, 8
  %1251 = and i64 %1250, 63
  %1252 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1251
  %1253 = load i64, i64* %1252, align 8
  %1254 = xor i64 %1248, %1253
  %1255 = load i64, i64* %9, align 8
  %1256 = lshr i64 %1255, 16
  %1257 = and i64 %1256, 63
  %1258 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1257
  %1259 = load i64, i64* %1258, align 8
  %1260 = xor i64 %1254, %1259
  %1261 = load i64, i64* %9, align 8
  %1262 = lshr i64 %1261, 24
  %1263 = and i64 %1262, 63
  %1264 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1263
  %1265 = load i64, i64* %1264, align 8
  %1266 = xor i64 %1260, %1265
  %1267 = load i64, i64* %8, align 8
  %1268 = xor i64 %1267, %1266
  store i64 %1268, i64* %8, align 8
  %1269 = load i64*, i64** %4, align 8
  %1270 = getelementptr inbounds i64, i64* %1269, i32 1
  store i64* %1270, i64** %4, align 8
  %1271 = load i64, i64* %1269, align 8
  %1272 = load i64, i64* %7, align 8
  %1273 = shl i64 %1272, 28
  %1274 = load i64, i64* %7, align 8
  %1275 = lshr i64 %1274, 4
  %1276 = or i64 %1273, %1275
  %1277 = xor i64 %1271, %1276
  store i64 %1277, i64* %9, align 8
  %1278 = load i64, i64* %9, align 8
  %1279 = and i64 %1278, 63
  %1280 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1279
  %1281 = load i64, i64* %1280, align 8
  %1282 = load i64, i64* %9, align 8
  %1283 = lshr i64 %1282, 8
  %1284 = and i64 %1283, 63
  %1285 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1284
  %1286 = load i64, i64* %1285, align 8
  %1287 = xor i64 %1281, %1286
  %1288 = load i64, i64* %9, align 8
  %1289 = lshr i64 %1288, 16
  %1290 = and i64 %1289, 63
  %1291 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1290
  %1292 = load i64, i64* %1291, align 8
  %1293 = xor i64 %1287, %1292
  %1294 = load i64, i64* %9, align 8
  %1295 = lshr i64 %1294, 24
  %1296 = and i64 %1295, 63
  %1297 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1296
  %1298 = load i64, i64* %1297, align 8
  %1299 = xor i64 %1293, %1298
  %1300 = load i64, i64* %8, align 8
  %1301 = xor i64 %1300, %1299
  store i64 %1301, i64* %8, align 8
  %1302 = load i64*, i64** %4, align 8
  %1303 = getelementptr inbounds i64, i64* %1302, i32 1
  store i64* %1303, i64** %4, align 8
  %1304 = load i64, i64* %1302, align 8
  %1305 = load i64, i64* %8, align 8
  %1306 = xor i64 %1304, %1305
  store i64 %1306, i64* %9, align 8
  %1307 = load i64, i64* %9, align 8
  %1308 = and i64 %1307, 63
  %1309 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1308
  %1310 = load i64, i64* %1309, align 8
  %1311 = load i64, i64* %9, align 8
  %1312 = lshr i64 %1311, 8
  %1313 = and i64 %1312, 63
  %1314 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1313
  %1315 = load i64, i64* %1314, align 8
  %1316 = xor i64 %1310, %1315
  %1317 = load i64, i64* %9, align 8
  %1318 = lshr i64 %1317, 16
  %1319 = and i64 %1318, 63
  %1320 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1319
  %1321 = load i64, i64* %1320, align 8
  %1322 = xor i64 %1316, %1321
  %1323 = load i64, i64* %9, align 8
  %1324 = lshr i64 %1323, 24
  %1325 = and i64 %1324, 63
  %1326 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1325
  %1327 = load i64, i64* %1326, align 8
  %1328 = xor i64 %1322, %1327
  %1329 = load i64, i64* %7, align 8
  %1330 = xor i64 %1329, %1328
  store i64 %1330, i64* %7, align 8
  %1331 = load i64*, i64** %4, align 8
  %1332 = getelementptr inbounds i64, i64* %1331, i32 1
  store i64* %1332, i64** %4, align 8
  %1333 = load i64, i64* %1331, align 8
  %1334 = load i64, i64* %8, align 8
  %1335 = shl i64 %1334, 28
  %1336 = load i64, i64* %8, align 8
  %1337 = lshr i64 %1336, 4
  %1338 = or i64 %1335, %1337
  %1339 = xor i64 %1333, %1338
  store i64 %1339, i64* %9, align 8
  %1340 = load i64, i64* %9, align 8
  %1341 = and i64 %1340, 63
  %1342 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1341
  %1343 = load i64, i64* %1342, align 8
  %1344 = load i64, i64* %9, align 8
  %1345 = lshr i64 %1344, 8
  %1346 = and i64 %1345, 63
  %1347 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1346
  %1348 = load i64, i64* %1347, align 8
  %1349 = xor i64 %1343, %1348
  %1350 = load i64, i64* %9, align 8
  %1351 = lshr i64 %1350, 16
  %1352 = and i64 %1351, 63
  %1353 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1352
  %1354 = load i64, i64* %1353, align 8
  %1355 = xor i64 %1349, %1354
  %1356 = load i64, i64* %9, align 8
  %1357 = lshr i64 %1356, 24
  %1358 = and i64 %1357, 63
  %1359 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1358
  %1360 = load i64, i64* %1359, align 8
  %1361 = xor i64 %1355, %1360
  %1362 = load i64, i64* %7, align 8
  %1363 = xor i64 %1362, %1361
  store i64 %1363, i64* %7, align 8
  %1364 = load i64*, i64** %4, align 8
  %1365 = getelementptr inbounds i64, i64* %1364, i32 1
  store i64* %1365, i64** %4, align 8
  %1366 = load i64, i64* %1364, align 8
  %1367 = load i64, i64* %7, align 8
  %1368 = xor i64 %1366, %1367
  store i64 %1368, i64* %9, align 8
  %1369 = load i64, i64* %9, align 8
  %1370 = and i64 %1369, 63
  %1371 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1370
  %1372 = load i64, i64* %1371, align 8
  %1373 = load i64, i64* %9, align 8
  %1374 = lshr i64 %1373, 8
  %1375 = and i64 %1374, 63
  %1376 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1375
  %1377 = load i64, i64* %1376, align 8
  %1378 = xor i64 %1372, %1377
  %1379 = load i64, i64* %9, align 8
  %1380 = lshr i64 %1379, 16
  %1381 = and i64 %1380, 63
  %1382 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1381
  %1383 = load i64, i64* %1382, align 8
  %1384 = xor i64 %1378, %1383
  %1385 = load i64, i64* %9, align 8
  %1386 = lshr i64 %1385, 24
  %1387 = and i64 %1386, 63
  %1388 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1387
  %1389 = load i64, i64* %1388, align 8
  %1390 = xor i64 %1384, %1389
  %1391 = load i64, i64* %8, align 8
  %1392 = xor i64 %1391, %1390
  store i64 %1392, i64* %8, align 8
  %1393 = load i64*, i64** %4, align 8
  %1394 = getelementptr inbounds i64, i64* %1393, i32 1
  store i64* %1394, i64** %4, align 8
  %1395 = load i64, i64* %1393, align 8
  %1396 = load i64, i64* %7, align 8
  %1397 = shl i64 %1396, 28
  %1398 = load i64, i64* %7, align 8
  %1399 = lshr i64 %1398, 4
  %1400 = or i64 %1397, %1399
  %1401 = xor i64 %1395, %1400
  store i64 %1401, i64* %9, align 8
  %1402 = load i64, i64* %9, align 8
  %1403 = and i64 %1402, 63
  %1404 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1403
  %1405 = load i64, i64* %1404, align 8
  %1406 = load i64, i64* %9, align 8
  %1407 = lshr i64 %1406, 8
  %1408 = and i64 %1407, 63
  %1409 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1408
  %1410 = load i64, i64* %1409, align 8
  %1411 = xor i64 %1405, %1410
  %1412 = load i64, i64* %9, align 8
  %1413 = lshr i64 %1412, 16
  %1414 = and i64 %1413, 63
  %1415 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1414
  %1416 = load i64, i64* %1415, align 8
  %1417 = xor i64 %1411, %1416
  %1418 = load i64, i64* %9, align 8
  %1419 = lshr i64 %1418, 24
  %1420 = and i64 %1419, 63
  %1421 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1420
  %1422 = load i64, i64* %1421, align 8
  %1423 = xor i64 %1417, %1422
  %1424 = load i64, i64* %8, align 8
  %1425 = xor i64 %1424, %1423
  store i64 %1425, i64* %8, align 8
  %1426 = load i64*, i64** %4, align 8
  %1427 = getelementptr inbounds i64, i64* %1426, i32 1
  store i64* %1427, i64** %4, align 8
  %1428 = load i64, i64* %1426, align 8
  %1429 = load i64, i64* %8, align 8
  %1430 = xor i64 %1428, %1429
  store i64 %1430, i64* %9, align 8
  %1431 = load i64, i64* %9, align 8
  %1432 = and i64 %1431, 63
  %1433 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1432
  %1434 = load i64, i64* %1433, align 8
  %1435 = load i64, i64* %9, align 8
  %1436 = lshr i64 %1435, 8
  %1437 = and i64 %1436, 63
  %1438 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1437
  %1439 = load i64, i64* %1438, align 8
  %1440 = xor i64 %1434, %1439
  %1441 = load i64, i64* %9, align 8
  %1442 = lshr i64 %1441, 16
  %1443 = and i64 %1442, 63
  %1444 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1443
  %1445 = load i64, i64* %1444, align 8
  %1446 = xor i64 %1440, %1445
  %1447 = load i64, i64* %9, align 8
  %1448 = lshr i64 %1447, 24
  %1449 = and i64 %1448, 63
  %1450 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1449
  %1451 = load i64, i64* %1450, align 8
  %1452 = xor i64 %1446, %1451
  %1453 = load i64, i64* %7, align 8
  %1454 = xor i64 %1453, %1452
  store i64 %1454, i64* %7, align 8
  %1455 = load i64*, i64** %4, align 8
  %1456 = getelementptr inbounds i64, i64* %1455, i32 1
  store i64* %1456, i64** %4, align 8
  %1457 = load i64, i64* %1455, align 8
  %1458 = load i64, i64* %8, align 8
  %1459 = shl i64 %1458, 28
  %1460 = load i64, i64* %8, align 8
  %1461 = lshr i64 %1460, 4
  %1462 = or i64 %1459, %1461
  %1463 = xor i64 %1457, %1462
  store i64 %1463, i64* %9, align 8
  %1464 = load i64, i64* %9, align 8
  %1465 = and i64 %1464, 63
  %1466 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1465
  %1467 = load i64, i64* %1466, align 8
  %1468 = load i64, i64* %9, align 8
  %1469 = lshr i64 %1468, 8
  %1470 = and i64 %1469, 63
  %1471 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1470
  %1472 = load i64, i64* %1471, align 8
  %1473 = xor i64 %1467, %1472
  %1474 = load i64, i64* %9, align 8
  %1475 = lshr i64 %1474, 16
  %1476 = and i64 %1475, 63
  %1477 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1476
  %1478 = load i64, i64* %1477, align 8
  %1479 = xor i64 %1473, %1478
  %1480 = load i64, i64* %9, align 8
  %1481 = lshr i64 %1480, 24
  %1482 = and i64 %1481, 63
  %1483 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1482
  %1484 = load i64, i64* %1483, align 8
  %1485 = xor i64 %1479, %1484
  %1486 = load i64, i64* %7, align 8
  %1487 = xor i64 %1486, %1485
  store i64 %1487, i64* %7, align 8
  %1488 = load i64*, i64** %4, align 8
  %1489 = getelementptr inbounds i64, i64* %1488, i32 1
  store i64* %1489, i64** %4, align 8
  %1490 = load i64, i64* %1488, align 8
  %1491 = load i64, i64* %7, align 8
  %1492 = xor i64 %1490, %1491
  store i64 %1492, i64* %9, align 8
  %1493 = load i64, i64* %9, align 8
  %1494 = and i64 %1493, 63
  %1495 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1494
  %1496 = load i64, i64* %1495, align 8
  %1497 = load i64, i64* %9, align 8
  %1498 = lshr i64 %1497, 8
  %1499 = and i64 %1498, 63
  %1500 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1499
  %1501 = load i64, i64* %1500, align 8
  %1502 = xor i64 %1496, %1501
  %1503 = load i64, i64* %9, align 8
  %1504 = lshr i64 %1503, 16
  %1505 = and i64 %1504, 63
  %1506 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1505
  %1507 = load i64, i64* %1506, align 8
  %1508 = xor i64 %1502, %1507
  %1509 = load i64, i64* %9, align 8
  %1510 = lshr i64 %1509, 24
  %1511 = and i64 %1510, 63
  %1512 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1511
  %1513 = load i64, i64* %1512, align 8
  %1514 = xor i64 %1508, %1513
  %1515 = load i64, i64* %8, align 8
  %1516 = xor i64 %1515, %1514
  store i64 %1516, i64* %8, align 8
  %1517 = load i64*, i64** %4, align 8
  %1518 = getelementptr inbounds i64, i64* %1517, i32 1
  store i64* %1518, i64** %4, align 8
  %1519 = load i64, i64* %1517, align 8
  %1520 = load i64, i64* %7, align 8
  %1521 = shl i64 %1520, 28
  %1522 = load i64, i64* %7, align 8
  %1523 = lshr i64 %1522, 4
  %1524 = or i64 %1521, %1523
  %1525 = xor i64 %1519, %1524
  store i64 %1525, i64* %9, align 8
  %1526 = load i64, i64* %9, align 8
  %1527 = and i64 %1526, 63
  %1528 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1527
  %1529 = load i64, i64* %1528, align 8
  %1530 = load i64, i64* %9, align 8
  %1531 = lshr i64 %1530, 8
  %1532 = and i64 %1531, 63
  %1533 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1532
  %1534 = load i64, i64* %1533, align 8
  %1535 = xor i64 %1529, %1534
  %1536 = load i64, i64* %9, align 8
  %1537 = lshr i64 %1536, 16
  %1538 = and i64 %1537, 63
  %1539 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1538
  %1540 = load i64, i64* %1539, align 8
  %1541 = xor i64 %1535, %1540
  %1542 = load i64, i64* %9, align 8
  %1543 = lshr i64 %1542, 24
  %1544 = and i64 %1543, 63
  %1545 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1544
  %1546 = load i64, i64* %1545, align 8
  %1547 = xor i64 %1541, %1546
  %1548 = load i64, i64* %8, align 8
  %1549 = xor i64 %1548, %1547
  store i64 %1549, i64* %8, align 8
  %1550 = load i64*, i64** %4, align 8
  %1551 = getelementptr inbounds i64, i64* %1550, i32 1
  store i64* %1551, i64** %4, align 8
  %1552 = load i64, i64* %1550, align 8
  %1553 = load i64, i64* %8, align 8
  %1554 = xor i64 %1552, %1553
  store i64 %1554, i64* %9, align 8
  %1555 = load i64, i64* %9, align 8
  %1556 = and i64 %1555, 63
  %1557 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1556
  %1558 = load i64, i64* %1557, align 8
  %1559 = load i64, i64* %9, align 8
  %1560 = lshr i64 %1559, 8
  %1561 = and i64 %1560, 63
  %1562 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1561
  %1563 = load i64, i64* %1562, align 8
  %1564 = xor i64 %1558, %1563
  %1565 = load i64, i64* %9, align 8
  %1566 = lshr i64 %1565, 16
  %1567 = and i64 %1566, 63
  %1568 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1567
  %1569 = load i64, i64* %1568, align 8
  %1570 = xor i64 %1564, %1569
  %1571 = load i64, i64* %9, align 8
  %1572 = lshr i64 %1571, 24
  %1573 = and i64 %1572, 63
  %1574 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1573
  %1575 = load i64, i64* %1574, align 8
  %1576 = xor i64 %1570, %1575
  %1577 = load i64, i64* %7, align 8
  %1578 = xor i64 %1577, %1576
  store i64 %1578, i64* %7, align 8
  %1579 = load i64*, i64** %4, align 8
  %1580 = getelementptr inbounds i64, i64* %1579, i32 1
  store i64* %1580, i64** %4, align 8
  %1581 = load i64, i64* %1579, align 8
  %1582 = load i64, i64* %8, align 8
  %1583 = shl i64 %1582, 28
  %1584 = load i64, i64* %8, align 8
  %1585 = lshr i64 %1584, 4
  %1586 = or i64 %1583, %1585
  %1587 = xor i64 %1581, %1586
  store i64 %1587, i64* %9, align 8
  %1588 = load i64, i64* %9, align 8
  %1589 = and i64 %1588, 63
  %1590 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1589
  %1591 = load i64, i64* %1590, align 8
  %1592 = load i64, i64* %9, align 8
  %1593 = lshr i64 %1592, 8
  %1594 = and i64 %1593, 63
  %1595 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1594
  %1596 = load i64, i64* %1595, align 8
  %1597 = xor i64 %1591, %1596
  %1598 = load i64, i64* %9, align 8
  %1599 = lshr i64 %1598, 16
  %1600 = and i64 %1599, 63
  %1601 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1600
  %1602 = load i64, i64* %1601, align 8
  %1603 = xor i64 %1597, %1602
  %1604 = load i64, i64* %9, align 8
  %1605 = lshr i64 %1604, 24
  %1606 = and i64 %1605, 63
  %1607 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1606
  %1608 = load i64, i64* %1607, align 8
  %1609 = xor i64 %1603, %1608
  %1610 = load i64, i64* %7, align 8
  %1611 = xor i64 %1610, %1609
  store i64 %1611, i64* %7, align 8
  %1612 = load i64*, i64** %4, align 8
  %1613 = getelementptr inbounds i64, i64* %1612, i32 1
  store i64* %1613, i64** %4, align 8
  %1614 = load i64, i64* %1612, align 8
  %1615 = load i64, i64* %7, align 8
  %1616 = xor i64 %1614, %1615
  store i64 %1616, i64* %9, align 8
  %1617 = load i64, i64* %9, align 8
  %1618 = and i64 %1617, 63
  %1619 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1618
  %1620 = load i64, i64* %1619, align 8
  %1621 = load i64, i64* %9, align 8
  %1622 = lshr i64 %1621, 8
  %1623 = and i64 %1622, 63
  %1624 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1623
  %1625 = load i64, i64* %1624, align 8
  %1626 = xor i64 %1620, %1625
  %1627 = load i64, i64* %9, align 8
  %1628 = lshr i64 %1627, 16
  %1629 = and i64 %1628, 63
  %1630 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1629
  %1631 = load i64, i64* %1630, align 8
  %1632 = xor i64 %1626, %1631
  %1633 = load i64, i64* %9, align 8
  %1634 = lshr i64 %1633, 24
  %1635 = and i64 %1634, 63
  %1636 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1635
  %1637 = load i64, i64* %1636, align 8
  %1638 = xor i64 %1632, %1637
  %1639 = load i64, i64* %8, align 8
  %1640 = xor i64 %1639, %1638
  store i64 %1640, i64* %8, align 8
  %1641 = load i64*, i64** %4, align 8
  %1642 = getelementptr inbounds i64, i64* %1641, i32 1
  store i64* %1642, i64** %4, align 8
  %1643 = load i64, i64* %1641, align 8
  %1644 = load i64, i64* %7, align 8
  %1645 = shl i64 %1644, 28
  %1646 = load i64, i64* %7, align 8
  %1647 = lshr i64 %1646, 4
  %1648 = or i64 %1645, %1647
  %1649 = xor i64 %1643, %1648
  store i64 %1649, i64* %9, align 8
  %1650 = load i64, i64* %9, align 8
  %1651 = and i64 %1650, 63
  %1652 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1651
  %1653 = load i64, i64* %1652, align 8
  %1654 = load i64, i64* %9, align 8
  %1655 = lshr i64 %1654, 8
  %1656 = and i64 %1655, 63
  %1657 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1656
  %1658 = load i64, i64* %1657, align 8
  %1659 = xor i64 %1653, %1658
  %1660 = load i64, i64* %9, align 8
  %1661 = lshr i64 %1660, 16
  %1662 = and i64 %1661, 63
  %1663 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1662
  %1664 = load i64, i64* %1663, align 8
  %1665 = xor i64 %1659, %1664
  %1666 = load i64, i64* %9, align 8
  %1667 = lshr i64 %1666, 24
  %1668 = and i64 %1667, 63
  %1669 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1668
  %1670 = load i64, i64* %1669, align 8
  %1671 = xor i64 %1665, %1670
  %1672 = load i64, i64* %8, align 8
  %1673 = xor i64 %1672, %1671
  store i64 %1673, i64* %8, align 8
  %1674 = load i64*, i64** %4, align 8
  %1675 = getelementptr inbounds i64, i64* %1674, i32 1
  store i64* %1675, i64** %4, align 8
  %1676 = load i64, i64* %1674, align 8
  %1677 = load i64, i64* %8, align 8
  %1678 = xor i64 %1676, %1677
  store i64 %1678, i64* %9, align 8
  %1679 = load i64, i64* %9, align 8
  %1680 = and i64 %1679, 63
  %1681 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1680
  %1682 = load i64, i64* %1681, align 8
  %1683 = load i64, i64* %9, align 8
  %1684 = lshr i64 %1683, 8
  %1685 = and i64 %1684, 63
  %1686 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1685
  %1687 = load i64, i64* %1686, align 8
  %1688 = xor i64 %1682, %1687
  %1689 = load i64, i64* %9, align 8
  %1690 = lshr i64 %1689, 16
  %1691 = and i64 %1690, 63
  %1692 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1691
  %1693 = load i64, i64* %1692, align 8
  %1694 = xor i64 %1688, %1693
  %1695 = load i64, i64* %9, align 8
  %1696 = lshr i64 %1695, 24
  %1697 = and i64 %1696, 63
  %1698 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1697
  %1699 = load i64, i64* %1698, align 8
  %1700 = xor i64 %1694, %1699
  %1701 = load i64, i64* %7, align 8
  %1702 = xor i64 %1701, %1700
  store i64 %1702, i64* %7, align 8
  %1703 = load i64*, i64** %4, align 8
  %1704 = getelementptr inbounds i64, i64* %1703, i32 1
  store i64* %1704, i64** %4, align 8
  %1705 = load i64, i64* %1703, align 8
  %1706 = load i64, i64* %8, align 8
  %1707 = shl i64 %1706, 28
  %1708 = load i64, i64* %8, align 8
  %1709 = lshr i64 %1708, 4
  %1710 = or i64 %1707, %1709
  %1711 = xor i64 %1705, %1710
  store i64 %1711, i64* %9, align 8
  %1712 = load i64, i64* %9, align 8
  %1713 = and i64 %1712, 63
  %1714 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1713
  %1715 = load i64, i64* %1714, align 8
  %1716 = load i64, i64* %9, align 8
  %1717 = lshr i64 %1716, 8
  %1718 = and i64 %1717, 63
  %1719 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1718
  %1720 = load i64, i64* %1719, align 8
  %1721 = xor i64 %1715, %1720
  %1722 = load i64, i64* %9, align 8
  %1723 = lshr i64 %1722, 16
  %1724 = and i64 %1723, 63
  %1725 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1724
  %1726 = load i64, i64* %1725, align 8
  %1727 = xor i64 %1721, %1726
  %1728 = load i64, i64* %9, align 8
  %1729 = lshr i64 %1728, 24
  %1730 = and i64 %1729, 63
  %1731 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1730
  %1732 = load i64, i64* %1731, align 8
  %1733 = xor i64 %1727, %1732
  %1734 = load i64, i64* %7, align 8
  %1735 = xor i64 %1734, %1733
  store i64 %1735, i64* %7, align 8
  %1736 = load i64*, i64** %4, align 8
  %1737 = getelementptr inbounds i64, i64* %1736, i32 1
  store i64* %1737, i64** %4, align 8
  %1738 = load i64, i64* %1736, align 8
  %1739 = load i64, i64* %7, align 8
  %1740 = xor i64 %1738, %1739
  store i64 %1740, i64* %9, align 8
  %1741 = load i64, i64* %9, align 8
  %1742 = and i64 %1741, 63
  %1743 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1742
  %1744 = load i64, i64* %1743, align 8
  %1745 = load i64, i64* %9, align 8
  %1746 = lshr i64 %1745, 8
  %1747 = and i64 %1746, 63
  %1748 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1747
  %1749 = load i64, i64* %1748, align 8
  %1750 = xor i64 %1744, %1749
  %1751 = load i64, i64* %9, align 8
  %1752 = lshr i64 %1751, 16
  %1753 = and i64 %1752, 63
  %1754 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1753
  %1755 = load i64, i64* %1754, align 8
  %1756 = xor i64 %1750, %1755
  %1757 = load i64, i64* %9, align 8
  %1758 = lshr i64 %1757, 24
  %1759 = and i64 %1758, 63
  %1760 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1759
  %1761 = load i64, i64* %1760, align 8
  %1762 = xor i64 %1756, %1761
  %1763 = load i64, i64* %8, align 8
  %1764 = xor i64 %1763, %1762
  store i64 %1764, i64* %8, align 8
  %1765 = load i64*, i64** %4, align 8
  %1766 = getelementptr inbounds i64, i64* %1765, i32 1
  store i64* %1766, i64** %4, align 8
  %1767 = load i64, i64* %1765, align 8
  %1768 = load i64, i64* %7, align 8
  %1769 = shl i64 %1768, 28
  %1770 = load i64, i64* %7, align 8
  %1771 = lshr i64 %1770, 4
  %1772 = or i64 %1769, %1771
  %1773 = xor i64 %1767, %1772
  store i64 %1773, i64* %9, align 8
  %1774 = load i64, i64* %9, align 8
  %1775 = and i64 %1774, 63
  %1776 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1775
  %1777 = load i64, i64* %1776, align 8
  %1778 = load i64, i64* %9, align 8
  %1779 = lshr i64 %1778, 8
  %1780 = and i64 %1779, 63
  %1781 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1780
  %1782 = load i64, i64* %1781, align 8
  %1783 = xor i64 %1777, %1782
  %1784 = load i64, i64* %9, align 8
  %1785 = lshr i64 %1784, 16
  %1786 = and i64 %1785, 63
  %1787 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1786
  %1788 = load i64, i64* %1787, align 8
  %1789 = xor i64 %1783, %1788
  %1790 = load i64, i64* %9, align 8
  %1791 = lshr i64 %1790, 24
  %1792 = and i64 %1791, 63
  %1793 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1792
  %1794 = load i64, i64* %1793, align 8
  %1795 = xor i64 %1789, %1794
  %1796 = load i64, i64* %8, align 8
  %1797 = xor i64 %1796, %1795
  store i64 %1797, i64* %8, align 8
  %1798 = load i64*, i64** %4, align 8
  %1799 = getelementptr inbounds i64, i64* %1798, i32 1
  store i64* %1799, i64** %4, align 8
  %1800 = load i64, i64* %1798, align 8
  %1801 = load i64, i64* %8, align 8
  %1802 = xor i64 %1800, %1801
  store i64 %1802, i64* %9, align 8
  %1803 = load i64, i64* %9, align 8
  %1804 = and i64 %1803, 63
  %1805 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1804
  %1806 = load i64, i64* %1805, align 8
  %1807 = load i64, i64* %9, align 8
  %1808 = lshr i64 %1807, 8
  %1809 = and i64 %1808, 63
  %1810 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1809
  %1811 = load i64, i64* %1810, align 8
  %1812 = xor i64 %1806, %1811
  %1813 = load i64, i64* %9, align 8
  %1814 = lshr i64 %1813, 16
  %1815 = and i64 %1814, 63
  %1816 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1815
  %1817 = load i64, i64* %1816, align 8
  %1818 = xor i64 %1812, %1817
  %1819 = load i64, i64* %9, align 8
  %1820 = lshr i64 %1819, 24
  %1821 = and i64 %1820, 63
  %1822 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1821
  %1823 = load i64, i64* %1822, align 8
  %1824 = xor i64 %1818, %1823
  %1825 = load i64, i64* %7, align 8
  %1826 = xor i64 %1825, %1824
  store i64 %1826, i64* %7, align 8
  %1827 = load i64*, i64** %4, align 8
  %1828 = getelementptr inbounds i64, i64* %1827, i32 1
  store i64* %1828, i64** %4, align 8
  %1829 = load i64, i64* %1827, align 8
  %1830 = load i64, i64* %8, align 8
  %1831 = shl i64 %1830, 28
  %1832 = load i64, i64* %8, align 8
  %1833 = lshr i64 %1832, 4
  %1834 = or i64 %1831, %1833
  %1835 = xor i64 %1829, %1834
  store i64 %1835, i64* %9, align 8
  %1836 = load i64, i64* %9, align 8
  %1837 = and i64 %1836, 63
  %1838 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1837
  %1839 = load i64, i64* %1838, align 8
  %1840 = load i64, i64* %9, align 8
  %1841 = lshr i64 %1840, 8
  %1842 = and i64 %1841, 63
  %1843 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1842
  %1844 = load i64, i64* %1843, align 8
  %1845 = xor i64 %1839, %1844
  %1846 = load i64, i64* %9, align 8
  %1847 = lshr i64 %1846, 16
  %1848 = and i64 %1847, 63
  %1849 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1848
  %1850 = load i64, i64* %1849, align 8
  %1851 = xor i64 %1845, %1850
  %1852 = load i64, i64* %9, align 8
  %1853 = lshr i64 %1852, 24
  %1854 = and i64 %1853, 63
  %1855 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1854
  %1856 = load i64, i64* %1855, align 8
  %1857 = xor i64 %1851, %1856
  %1858 = load i64, i64* %7, align 8
  %1859 = xor i64 %1858, %1857
  store i64 %1859, i64* %7, align 8
  %1860 = load i64*, i64** %4, align 8
  %1861 = getelementptr inbounds i64, i64* %1860, i32 1
  store i64* %1861, i64** %4, align 8
  %1862 = load i64, i64* %1860, align 8
  %1863 = load i64, i64* %7, align 8
  %1864 = xor i64 %1862, %1863
  store i64 %1864, i64* %9, align 8
  %1865 = load i64, i64* %9, align 8
  %1866 = and i64 %1865, 63
  %1867 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1866
  %1868 = load i64, i64* %1867, align 8
  %1869 = load i64, i64* %9, align 8
  %1870 = lshr i64 %1869, 8
  %1871 = and i64 %1870, 63
  %1872 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1871
  %1873 = load i64, i64* %1872, align 8
  %1874 = xor i64 %1868, %1873
  %1875 = load i64, i64* %9, align 8
  %1876 = lshr i64 %1875, 16
  %1877 = and i64 %1876, 63
  %1878 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1877
  %1879 = load i64, i64* %1878, align 8
  %1880 = xor i64 %1874, %1879
  %1881 = load i64, i64* %9, align 8
  %1882 = lshr i64 %1881, 24
  %1883 = and i64 %1882, 63
  %1884 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1883
  %1885 = load i64, i64* %1884, align 8
  %1886 = xor i64 %1880, %1885
  %1887 = load i64, i64* %8, align 8
  %1888 = xor i64 %1887, %1886
  store i64 %1888, i64* %8, align 8
  %1889 = load i64*, i64** %4, align 8
  %1890 = getelementptr inbounds i64, i64* %1889, i32 1
  store i64* %1890, i64** %4, align 8
  %1891 = load i64, i64* %1889, align 8
  %1892 = load i64, i64* %7, align 8
  %1893 = shl i64 %1892, 28
  %1894 = load i64, i64* %7, align 8
  %1895 = lshr i64 %1894, 4
  %1896 = or i64 %1893, %1895
  %1897 = xor i64 %1891, %1896
  store i64 %1897, i64* %9, align 8
  %1898 = load i64, i64* %9, align 8
  %1899 = and i64 %1898, 63
  %1900 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1899
  %1901 = load i64, i64* %1900, align 8
  %1902 = load i64, i64* %9, align 8
  %1903 = lshr i64 %1902, 8
  %1904 = and i64 %1903, 63
  %1905 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1904
  %1906 = load i64, i64* %1905, align 8
  %1907 = xor i64 %1901, %1906
  %1908 = load i64, i64* %9, align 8
  %1909 = lshr i64 %1908, 16
  %1910 = and i64 %1909, 63
  %1911 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1910
  %1912 = load i64, i64* %1911, align 8
  %1913 = xor i64 %1907, %1912
  %1914 = load i64, i64* %9, align 8
  %1915 = lshr i64 %1914, 24
  %1916 = and i64 %1915, 63
  %1917 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1916
  %1918 = load i64, i64* %1917, align 8
  %1919 = xor i64 %1913, %1918
  %1920 = load i64, i64* %8, align 8
  %1921 = xor i64 %1920, %1919
  store i64 %1921, i64* %8, align 8
  %1922 = load i64*, i64** %4, align 8
  %1923 = getelementptr inbounds i64, i64* %1922, i32 1
  store i64* %1923, i64** %4, align 8
  %1924 = load i64, i64* %1922, align 8
  %1925 = load i64, i64* %8, align 8
  %1926 = xor i64 %1924, %1925
  store i64 %1926, i64* %9, align 8
  %1927 = load i64, i64* %9, align 8
  %1928 = and i64 %1927, 63
  %1929 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1928
  %1930 = load i64, i64* %1929, align 8
  %1931 = load i64, i64* %9, align 8
  %1932 = lshr i64 %1931, 8
  %1933 = and i64 %1932, 63
  %1934 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1933
  %1935 = load i64, i64* %1934, align 8
  %1936 = xor i64 %1930, %1935
  %1937 = load i64, i64* %9, align 8
  %1938 = lshr i64 %1937, 16
  %1939 = and i64 %1938, 63
  %1940 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %1939
  %1941 = load i64, i64* %1940, align 8
  %1942 = xor i64 %1936, %1941
  %1943 = load i64, i64* %9, align 8
  %1944 = lshr i64 %1943, 24
  %1945 = and i64 %1944, 63
  %1946 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %1945
  %1947 = load i64, i64* %1946, align 8
  %1948 = xor i64 %1942, %1947
  %1949 = load i64, i64* %7, align 8
  %1950 = xor i64 %1949, %1948
  store i64 %1950, i64* %7, align 8
  %1951 = load i64*, i64** %4, align 8
  %1952 = getelementptr inbounds i64, i64* %1951, i32 1
  store i64* %1952, i64** %4, align 8
  %1953 = load i64, i64* %1951, align 8
  %1954 = load i64, i64* %8, align 8
  %1955 = shl i64 %1954, 28
  %1956 = load i64, i64* %8, align 8
  %1957 = lshr i64 %1956, 4
  %1958 = or i64 %1955, %1957
  %1959 = xor i64 %1953, %1958
  store i64 %1959, i64* %9, align 8
  %1960 = load i64, i64* %9, align 8
  %1961 = and i64 %1960, 63
  %1962 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %1961
  %1963 = load i64, i64* %1962, align 8
  %1964 = load i64, i64* %9, align 8
  %1965 = lshr i64 %1964, 8
  %1966 = and i64 %1965, 63
  %1967 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %1966
  %1968 = load i64, i64* %1967, align 8
  %1969 = xor i64 %1963, %1968
  %1970 = load i64, i64* %9, align 8
  %1971 = lshr i64 %1970, 16
  %1972 = and i64 %1971, 63
  %1973 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %1972
  %1974 = load i64, i64* %1973, align 8
  %1975 = xor i64 %1969, %1974
  %1976 = load i64, i64* %9, align 8
  %1977 = lshr i64 %1976, 24
  %1978 = and i64 %1977, 63
  %1979 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %1978
  %1980 = load i64, i64* %1979, align 8
  %1981 = xor i64 %1975, %1980
  %1982 = load i64, i64* %7, align 8
  %1983 = xor i64 %1982, %1981
  store i64 %1983, i64* %7, align 8
  %1984 = load i64*, i64** %4, align 8
  %1985 = getelementptr inbounds i64, i64* %1984, i32 1
  store i64* %1985, i64** %4, align 8
  %1986 = load i64, i64* %1984, align 8
  %1987 = load i64, i64* %7, align 8
  %1988 = xor i64 %1986, %1987
  store i64 %1988, i64* %9, align 8
  %1989 = load i64, i64* %9, align 8
  %1990 = and i64 %1989, 63
  %1991 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %1990
  %1992 = load i64, i64* %1991, align 8
  %1993 = load i64, i64* %9, align 8
  %1994 = lshr i64 %1993, 8
  %1995 = and i64 %1994, 63
  %1996 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %1995
  %1997 = load i64, i64* %1996, align 8
  %1998 = xor i64 %1992, %1997
  %1999 = load i64, i64* %9, align 8
  %2000 = lshr i64 %1999, 16
  %2001 = and i64 %2000, 63
  %2002 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2001
  %2003 = load i64, i64* %2002, align 8
  %2004 = xor i64 %1998, %2003
  %2005 = load i64, i64* %9, align 8
  %2006 = lshr i64 %2005, 24
  %2007 = and i64 %2006, 63
  %2008 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2007
  %2009 = load i64, i64* %2008, align 8
  %2010 = xor i64 %2004, %2009
  %2011 = load i64, i64* %8, align 8
  %2012 = xor i64 %2011, %2010
  store i64 %2012, i64* %8, align 8
  %2013 = load i64*, i64** %4, align 8
  %2014 = getelementptr inbounds i64, i64* %2013, i32 1
  store i64* %2014, i64** %4, align 8
  %2015 = load i64, i64* %2013, align 8
  %2016 = load i64, i64* %7, align 8
  %2017 = shl i64 %2016, 28
  %2018 = load i64, i64* %7, align 8
  %2019 = lshr i64 %2018, 4
  %2020 = or i64 %2017, %2019
  %2021 = xor i64 %2015, %2020
  store i64 %2021, i64* %9, align 8
  %2022 = load i64, i64* %9, align 8
  %2023 = and i64 %2022, 63
  %2024 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2023
  %2025 = load i64, i64* %2024, align 8
  %2026 = load i64, i64* %9, align 8
  %2027 = lshr i64 %2026, 8
  %2028 = and i64 %2027, 63
  %2029 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2028
  %2030 = load i64, i64* %2029, align 8
  %2031 = xor i64 %2025, %2030
  %2032 = load i64, i64* %9, align 8
  %2033 = lshr i64 %2032, 16
  %2034 = and i64 %2033, 63
  %2035 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2034
  %2036 = load i64, i64* %2035, align 8
  %2037 = xor i64 %2031, %2036
  %2038 = load i64, i64* %9, align 8
  %2039 = lshr i64 %2038, 24
  %2040 = and i64 %2039, 63
  %2041 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2040
  %2042 = load i64, i64* %2041, align 8
  %2043 = xor i64 %2037, %2042
  %2044 = load i64, i64* %8, align 8
  %2045 = xor i64 %2044, %2043
  store i64 %2045, i64* %8, align 8
  %2046 = load i64*, i64** %4, align 8
  %2047 = getelementptr inbounds i64, i64* %2046, i32 1
  store i64* %2047, i64** %4, align 8
  %2048 = load i64, i64* %2046, align 8
  %2049 = load i64, i64* %8, align 8
  %2050 = xor i64 %2048, %2049
  store i64 %2050, i64* %9, align 8
  %2051 = load i64, i64* %9, align 8
  %2052 = and i64 %2051, 63
  %2053 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2052
  %2054 = load i64, i64* %2053, align 8
  %2055 = load i64, i64* %9, align 8
  %2056 = lshr i64 %2055, 8
  %2057 = and i64 %2056, 63
  %2058 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2057
  %2059 = load i64, i64* %2058, align 8
  %2060 = xor i64 %2054, %2059
  %2061 = load i64, i64* %9, align 8
  %2062 = lshr i64 %2061, 16
  %2063 = and i64 %2062, 63
  %2064 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2063
  %2065 = load i64, i64* %2064, align 8
  %2066 = xor i64 %2060, %2065
  %2067 = load i64, i64* %9, align 8
  %2068 = lshr i64 %2067, 24
  %2069 = and i64 %2068, 63
  %2070 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2069
  %2071 = load i64, i64* %2070, align 8
  %2072 = xor i64 %2066, %2071
  %2073 = load i64, i64* %7, align 8
  %2074 = xor i64 %2073, %2072
  store i64 %2074, i64* %7, align 8
  %2075 = load i64*, i64** %4, align 8
  %2076 = getelementptr inbounds i64, i64* %2075, i32 1
  store i64* %2076, i64** %4, align 8
  %2077 = load i64, i64* %2075, align 8
  %2078 = load i64, i64* %8, align 8
  %2079 = shl i64 %2078, 28
  %2080 = load i64, i64* %8, align 8
  %2081 = lshr i64 %2080, 4
  %2082 = or i64 %2079, %2081
  %2083 = xor i64 %2077, %2082
  store i64 %2083, i64* %9, align 8
  %2084 = load i64, i64* %9, align 8
  %2085 = and i64 %2084, 63
  %2086 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2085
  %2087 = load i64, i64* %2086, align 8
  %2088 = load i64, i64* %9, align 8
  %2089 = lshr i64 %2088, 8
  %2090 = and i64 %2089, 63
  %2091 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2090
  %2092 = load i64, i64* %2091, align 8
  %2093 = xor i64 %2087, %2092
  %2094 = load i64, i64* %9, align 8
  %2095 = lshr i64 %2094, 16
  %2096 = and i64 %2095, 63
  %2097 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2096
  %2098 = load i64, i64* %2097, align 8
  %2099 = xor i64 %2093, %2098
  %2100 = load i64, i64* %9, align 8
  %2101 = lshr i64 %2100, 24
  %2102 = and i64 %2101, 63
  %2103 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2102
  %2104 = load i64, i64* %2103, align 8
  %2105 = xor i64 %2099, %2104
  %2106 = load i64, i64* %7, align 8
  %2107 = xor i64 %2106, %2105
  store i64 %2107, i64* %7, align 8
  %2108 = load i64*, i64** %4, align 8
  %2109 = getelementptr inbounds i64, i64* %2108, i32 1
  store i64* %2109, i64** %4, align 8
  %2110 = load i64, i64* %2108, align 8
  %2111 = load i64, i64* %8, align 8
  %2112 = xor i64 %2110, %2111
  store i64 %2112, i64* %9, align 8
  %2113 = load i64, i64* %9, align 8
  %2114 = and i64 %2113, 63
  %2115 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2114
  %2116 = load i64, i64* %2115, align 8
  %2117 = load i64, i64* %9, align 8
  %2118 = lshr i64 %2117, 8
  %2119 = and i64 %2118, 63
  %2120 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2119
  %2121 = load i64, i64* %2120, align 8
  %2122 = xor i64 %2116, %2121
  %2123 = load i64, i64* %9, align 8
  %2124 = lshr i64 %2123, 16
  %2125 = and i64 %2124, 63
  %2126 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2125
  %2127 = load i64, i64* %2126, align 8
  %2128 = xor i64 %2122, %2127
  %2129 = load i64, i64* %9, align 8
  %2130 = lshr i64 %2129, 24
  %2131 = and i64 %2130, 63
  %2132 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2131
  %2133 = load i64, i64* %2132, align 8
  %2134 = xor i64 %2128, %2133
  %2135 = load i64, i64* %7, align 8
  %2136 = xor i64 %2135, %2134
  store i64 %2136, i64* %7, align 8
  %2137 = load i64*, i64** %4, align 8
  %2138 = getelementptr inbounds i64, i64* %2137, i32 1
  store i64* %2138, i64** %4, align 8
  %2139 = load i64, i64* %2137, align 8
  %2140 = load i64, i64* %8, align 8
  %2141 = shl i64 %2140, 28
  %2142 = load i64, i64* %8, align 8
  %2143 = lshr i64 %2142, 4
  %2144 = or i64 %2141, %2143
  %2145 = xor i64 %2139, %2144
  store i64 %2145, i64* %9, align 8
  %2146 = load i64, i64* %9, align 8
  %2147 = and i64 %2146, 63
  %2148 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2147
  %2149 = load i64, i64* %2148, align 8
  %2150 = load i64, i64* %9, align 8
  %2151 = lshr i64 %2150, 8
  %2152 = and i64 %2151, 63
  %2153 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2152
  %2154 = load i64, i64* %2153, align 8
  %2155 = xor i64 %2149, %2154
  %2156 = load i64, i64* %9, align 8
  %2157 = lshr i64 %2156, 16
  %2158 = and i64 %2157, 63
  %2159 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2158
  %2160 = load i64, i64* %2159, align 8
  %2161 = xor i64 %2155, %2160
  %2162 = load i64, i64* %9, align 8
  %2163 = lshr i64 %2162, 24
  %2164 = and i64 %2163, 63
  %2165 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2164
  %2166 = load i64, i64* %2165, align 8
  %2167 = xor i64 %2161, %2166
  %2168 = load i64, i64* %7, align 8
  %2169 = xor i64 %2168, %2167
  store i64 %2169, i64* %7, align 8
  %2170 = load i64*, i64** %4, align 8
  %2171 = getelementptr inbounds i64, i64* %2170, i32 1
  store i64* %2171, i64** %4, align 8
  %2172 = load i64, i64* %2170, align 8
  %2173 = load i64, i64* %7, align 8
  %2174 = xor i64 %2172, %2173
  store i64 %2174, i64* %9, align 8
  %2175 = load i64, i64* %9, align 8
  %2176 = and i64 %2175, 63
  %2177 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2176
  %2178 = load i64, i64* %2177, align 8
  %2179 = load i64, i64* %9, align 8
  %2180 = lshr i64 %2179, 8
  %2181 = and i64 %2180, 63
  %2182 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2181
  %2183 = load i64, i64* %2182, align 8
  %2184 = xor i64 %2178, %2183
  %2185 = load i64, i64* %9, align 8
  %2186 = lshr i64 %2185, 16
  %2187 = and i64 %2186, 63
  %2188 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2187
  %2189 = load i64, i64* %2188, align 8
  %2190 = xor i64 %2184, %2189
  %2191 = load i64, i64* %9, align 8
  %2192 = lshr i64 %2191, 24
  %2193 = and i64 %2192, 63
  %2194 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2193
  %2195 = load i64, i64* %2194, align 8
  %2196 = xor i64 %2190, %2195
  %2197 = load i64, i64* %8, align 8
  %2198 = xor i64 %2197, %2196
  store i64 %2198, i64* %8, align 8
  %2199 = load i64*, i64** %4, align 8
  %2200 = getelementptr inbounds i64, i64* %2199, i32 1
  store i64* %2200, i64** %4, align 8
  %2201 = load i64, i64* %2199, align 8
  %2202 = load i64, i64* %7, align 8
  %2203 = shl i64 %2202, 28
  %2204 = load i64, i64* %7, align 8
  %2205 = lshr i64 %2204, 4
  %2206 = or i64 %2203, %2205
  %2207 = xor i64 %2201, %2206
  store i64 %2207, i64* %9, align 8
  %2208 = load i64, i64* %9, align 8
  %2209 = and i64 %2208, 63
  %2210 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2209
  %2211 = load i64, i64* %2210, align 8
  %2212 = load i64, i64* %9, align 8
  %2213 = lshr i64 %2212, 8
  %2214 = and i64 %2213, 63
  %2215 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2214
  %2216 = load i64, i64* %2215, align 8
  %2217 = xor i64 %2211, %2216
  %2218 = load i64, i64* %9, align 8
  %2219 = lshr i64 %2218, 16
  %2220 = and i64 %2219, 63
  %2221 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2220
  %2222 = load i64, i64* %2221, align 8
  %2223 = xor i64 %2217, %2222
  %2224 = load i64, i64* %9, align 8
  %2225 = lshr i64 %2224, 24
  %2226 = and i64 %2225, 63
  %2227 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2226
  %2228 = load i64, i64* %2227, align 8
  %2229 = xor i64 %2223, %2228
  %2230 = load i64, i64* %8, align 8
  %2231 = xor i64 %2230, %2229
  store i64 %2231, i64* %8, align 8
  %2232 = load i64*, i64** %4, align 8
  %2233 = getelementptr inbounds i64, i64* %2232, i32 1
  store i64* %2233, i64** %4, align 8
  %2234 = load i64, i64* %2232, align 8
  %2235 = load i64, i64* %8, align 8
  %2236 = xor i64 %2234, %2235
  store i64 %2236, i64* %9, align 8
  %2237 = load i64, i64* %9, align 8
  %2238 = and i64 %2237, 63
  %2239 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2238
  %2240 = load i64, i64* %2239, align 8
  %2241 = load i64, i64* %9, align 8
  %2242 = lshr i64 %2241, 8
  %2243 = and i64 %2242, 63
  %2244 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2243
  %2245 = load i64, i64* %2244, align 8
  %2246 = xor i64 %2240, %2245
  %2247 = load i64, i64* %9, align 8
  %2248 = lshr i64 %2247, 16
  %2249 = and i64 %2248, 63
  %2250 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2249
  %2251 = load i64, i64* %2250, align 8
  %2252 = xor i64 %2246, %2251
  %2253 = load i64, i64* %9, align 8
  %2254 = lshr i64 %2253, 24
  %2255 = and i64 %2254, 63
  %2256 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2255
  %2257 = load i64, i64* %2256, align 8
  %2258 = xor i64 %2252, %2257
  %2259 = load i64, i64* %7, align 8
  %2260 = xor i64 %2259, %2258
  store i64 %2260, i64* %7, align 8
  %2261 = load i64*, i64** %4, align 8
  %2262 = getelementptr inbounds i64, i64* %2261, i32 1
  store i64* %2262, i64** %4, align 8
  %2263 = load i64, i64* %2261, align 8
  %2264 = load i64, i64* %8, align 8
  %2265 = shl i64 %2264, 28
  %2266 = load i64, i64* %8, align 8
  %2267 = lshr i64 %2266, 4
  %2268 = or i64 %2265, %2267
  %2269 = xor i64 %2263, %2268
  store i64 %2269, i64* %9, align 8
  %2270 = load i64, i64* %9, align 8
  %2271 = and i64 %2270, 63
  %2272 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2271
  %2273 = load i64, i64* %2272, align 8
  %2274 = load i64, i64* %9, align 8
  %2275 = lshr i64 %2274, 8
  %2276 = and i64 %2275, 63
  %2277 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2276
  %2278 = load i64, i64* %2277, align 8
  %2279 = xor i64 %2273, %2278
  %2280 = load i64, i64* %9, align 8
  %2281 = lshr i64 %2280, 16
  %2282 = and i64 %2281, 63
  %2283 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2282
  %2284 = load i64, i64* %2283, align 8
  %2285 = xor i64 %2279, %2284
  %2286 = load i64, i64* %9, align 8
  %2287 = lshr i64 %2286, 24
  %2288 = and i64 %2287, 63
  %2289 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2288
  %2290 = load i64, i64* %2289, align 8
  %2291 = xor i64 %2285, %2290
  %2292 = load i64, i64* %7, align 8
  %2293 = xor i64 %2292, %2291
  store i64 %2293, i64* %7, align 8
  %2294 = load i64*, i64** %4, align 8
  %2295 = getelementptr inbounds i64, i64* %2294, i32 1
  store i64* %2295, i64** %4, align 8
  %2296 = load i64, i64* %2294, align 8
  %2297 = load i64, i64* %7, align 8
  %2298 = xor i64 %2296, %2297
  store i64 %2298, i64* %9, align 8
  %2299 = load i64, i64* %9, align 8
  %2300 = and i64 %2299, 63
  %2301 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2300
  %2302 = load i64, i64* %2301, align 8
  %2303 = load i64, i64* %9, align 8
  %2304 = lshr i64 %2303, 8
  %2305 = and i64 %2304, 63
  %2306 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2305
  %2307 = load i64, i64* %2306, align 8
  %2308 = xor i64 %2302, %2307
  %2309 = load i64, i64* %9, align 8
  %2310 = lshr i64 %2309, 16
  %2311 = and i64 %2310, 63
  %2312 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2311
  %2313 = load i64, i64* %2312, align 8
  %2314 = xor i64 %2308, %2313
  %2315 = load i64, i64* %9, align 8
  %2316 = lshr i64 %2315, 24
  %2317 = and i64 %2316, 63
  %2318 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2317
  %2319 = load i64, i64* %2318, align 8
  %2320 = xor i64 %2314, %2319
  %2321 = load i64, i64* %8, align 8
  %2322 = xor i64 %2321, %2320
  store i64 %2322, i64* %8, align 8
  %2323 = load i64*, i64** %4, align 8
  %2324 = getelementptr inbounds i64, i64* %2323, i32 1
  store i64* %2324, i64** %4, align 8
  %2325 = load i64, i64* %2323, align 8
  %2326 = load i64, i64* %7, align 8
  %2327 = shl i64 %2326, 28
  %2328 = load i64, i64* %7, align 8
  %2329 = lshr i64 %2328, 4
  %2330 = or i64 %2327, %2329
  %2331 = xor i64 %2325, %2330
  store i64 %2331, i64* %9, align 8
  %2332 = load i64, i64* %9, align 8
  %2333 = and i64 %2332, 63
  %2334 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2333
  %2335 = load i64, i64* %2334, align 8
  %2336 = load i64, i64* %9, align 8
  %2337 = lshr i64 %2336, 8
  %2338 = and i64 %2337, 63
  %2339 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2338
  %2340 = load i64, i64* %2339, align 8
  %2341 = xor i64 %2335, %2340
  %2342 = load i64, i64* %9, align 8
  %2343 = lshr i64 %2342, 16
  %2344 = and i64 %2343, 63
  %2345 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2344
  %2346 = load i64, i64* %2345, align 8
  %2347 = xor i64 %2341, %2346
  %2348 = load i64, i64* %9, align 8
  %2349 = lshr i64 %2348, 24
  %2350 = and i64 %2349, 63
  %2351 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2350
  %2352 = load i64, i64* %2351, align 8
  %2353 = xor i64 %2347, %2352
  %2354 = load i64, i64* %8, align 8
  %2355 = xor i64 %2354, %2353
  store i64 %2355, i64* %8, align 8
  %2356 = load i64*, i64** %4, align 8
  %2357 = getelementptr inbounds i64, i64* %2356, i32 1
  store i64* %2357, i64** %4, align 8
  %2358 = load i64, i64* %2356, align 8
  %2359 = load i64, i64* %8, align 8
  %2360 = xor i64 %2358, %2359
  store i64 %2360, i64* %9, align 8
  %2361 = load i64, i64* %9, align 8
  %2362 = and i64 %2361, 63
  %2363 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2362
  %2364 = load i64, i64* %2363, align 8
  %2365 = load i64, i64* %9, align 8
  %2366 = lshr i64 %2365, 8
  %2367 = and i64 %2366, 63
  %2368 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2367
  %2369 = load i64, i64* %2368, align 8
  %2370 = xor i64 %2364, %2369
  %2371 = load i64, i64* %9, align 8
  %2372 = lshr i64 %2371, 16
  %2373 = and i64 %2372, 63
  %2374 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2373
  %2375 = load i64, i64* %2374, align 8
  %2376 = xor i64 %2370, %2375
  %2377 = load i64, i64* %9, align 8
  %2378 = lshr i64 %2377, 24
  %2379 = and i64 %2378, 63
  %2380 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2379
  %2381 = load i64, i64* %2380, align 8
  %2382 = xor i64 %2376, %2381
  %2383 = load i64, i64* %7, align 8
  %2384 = xor i64 %2383, %2382
  store i64 %2384, i64* %7, align 8
  %2385 = load i64*, i64** %4, align 8
  %2386 = getelementptr inbounds i64, i64* %2385, i32 1
  store i64* %2386, i64** %4, align 8
  %2387 = load i64, i64* %2385, align 8
  %2388 = load i64, i64* %8, align 8
  %2389 = shl i64 %2388, 28
  %2390 = load i64, i64* %8, align 8
  %2391 = lshr i64 %2390, 4
  %2392 = or i64 %2389, %2391
  %2393 = xor i64 %2387, %2392
  store i64 %2393, i64* %9, align 8
  %2394 = load i64, i64* %9, align 8
  %2395 = and i64 %2394, 63
  %2396 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2395
  %2397 = load i64, i64* %2396, align 8
  %2398 = load i64, i64* %9, align 8
  %2399 = lshr i64 %2398, 8
  %2400 = and i64 %2399, 63
  %2401 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2400
  %2402 = load i64, i64* %2401, align 8
  %2403 = xor i64 %2397, %2402
  %2404 = load i64, i64* %9, align 8
  %2405 = lshr i64 %2404, 16
  %2406 = and i64 %2405, 63
  %2407 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2406
  %2408 = load i64, i64* %2407, align 8
  %2409 = xor i64 %2403, %2408
  %2410 = load i64, i64* %9, align 8
  %2411 = lshr i64 %2410, 24
  %2412 = and i64 %2411, 63
  %2413 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2412
  %2414 = load i64, i64* %2413, align 8
  %2415 = xor i64 %2409, %2414
  %2416 = load i64, i64* %7, align 8
  %2417 = xor i64 %2416, %2415
  store i64 %2417, i64* %7, align 8
  %2418 = load i64*, i64** %4, align 8
  %2419 = getelementptr inbounds i64, i64* %2418, i32 1
  store i64* %2419, i64** %4, align 8
  %2420 = load i64, i64* %2418, align 8
  %2421 = load i64, i64* %7, align 8
  %2422 = xor i64 %2420, %2421
  store i64 %2422, i64* %9, align 8
  %2423 = load i64, i64* %9, align 8
  %2424 = and i64 %2423, 63
  %2425 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2424
  %2426 = load i64, i64* %2425, align 8
  %2427 = load i64, i64* %9, align 8
  %2428 = lshr i64 %2427, 8
  %2429 = and i64 %2428, 63
  %2430 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2429
  %2431 = load i64, i64* %2430, align 8
  %2432 = xor i64 %2426, %2431
  %2433 = load i64, i64* %9, align 8
  %2434 = lshr i64 %2433, 16
  %2435 = and i64 %2434, 63
  %2436 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2435
  %2437 = load i64, i64* %2436, align 8
  %2438 = xor i64 %2432, %2437
  %2439 = load i64, i64* %9, align 8
  %2440 = lshr i64 %2439, 24
  %2441 = and i64 %2440, 63
  %2442 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2441
  %2443 = load i64, i64* %2442, align 8
  %2444 = xor i64 %2438, %2443
  %2445 = load i64, i64* %8, align 8
  %2446 = xor i64 %2445, %2444
  store i64 %2446, i64* %8, align 8
  %2447 = load i64*, i64** %4, align 8
  %2448 = getelementptr inbounds i64, i64* %2447, i32 1
  store i64* %2448, i64** %4, align 8
  %2449 = load i64, i64* %2447, align 8
  %2450 = load i64, i64* %7, align 8
  %2451 = shl i64 %2450, 28
  %2452 = load i64, i64* %7, align 8
  %2453 = lshr i64 %2452, 4
  %2454 = or i64 %2451, %2453
  %2455 = xor i64 %2449, %2454
  store i64 %2455, i64* %9, align 8
  %2456 = load i64, i64* %9, align 8
  %2457 = and i64 %2456, 63
  %2458 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2457
  %2459 = load i64, i64* %2458, align 8
  %2460 = load i64, i64* %9, align 8
  %2461 = lshr i64 %2460, 8
  %2462 = and i64 %2461, 63
  %2463 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2462
  %2464 = load i64, i64* %2463, align 8
  %2465 = xor i64 %2459, %2464
  %2466 = load i64, i64* %9, align 8
  %2467 = lshr i64 %2466, 16
  %2468 = and i64 %2467, 63
  %2469 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2468
  %2470 = load i64, i64* %2469, align 8
  %2471 = xor i64 %2465, %2470
  %2472 = load i64, i64* %9, align 8
  %2473 = lshr i64 %2472, 24
  %2474 = and i64 %2473, 63
  %2475 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2474
  %2476 = load i64, i64* %2475, align 8
  %2477 = xor i64 %2471, %2476
  %2478 = load i64, i64* %8, align 8
  %2479 = xor i64 %2478, %2477
  store i64 %2479, i64* %8, align 8
  %2480 = load i64*, i64** %4, align 8
  %2481 = getelementptr inbounds i64, i64* %2480, i32 1
  store i64* %2481, i64** %4, align 8
  %2482 = load i64, i64* %2480, align 8
  %2483 = load i64, i64* %8, align 8
  %2484 = xor i64 %2482, %2483
  store i64 %2484, i64* %9, align 8
  %2485 = load i64, i64* %9, align 8
  %2486 = and i64 %2485, 63
  %2487 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2486
  %2488 = load i64, i64* %2487, align 8
  %2489 = load i64, i64* %9, align 8
  %2490 = lshr i64 %2489, 8
  %2491 = and i64 %2490, 63
  %2492 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2491
  %2493 = load i64, i64* %2492, align 8
  %2494 = xor i64 %2488, %2493
  %2495 = load i64, i64* %9, align 8
  %2496 = lshr i64 %2495, 16
  %2497 = and i64 %2496, 63
  %2498 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2497
  %2499 = load i64, i64* %2498, align 8
  %2500 = xor i64 %2494, %2499
  %2501 = load i64, i64* %9, align 8
  %2502 = lshr i64 %2501, 24
  %2503 = and i64 %2502, 63
  %2504 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2503
  %2505 = load i64, i64* %2504, align 8
  %2506 = xor i64 %2500, %2505
  %2507 = load i64, i64* %7, align 8
  %2508 = xor i64 %2507, %2506
  store i64 %2508, i64* %7, align 8
  %2509 = load i64*, i64** %4, align 8
  %2510 = getelementptr inbounds i64, i64* %2509, i32 1
  store i64* %2510, i64** %4, align 8
  %2511 = load i64, i64* %2509, align 8
  %2512 = load i64, i64* %8, align 8
  %2513 = shl i64 %2512, 28
  %2514 = load i64, i64* %8, align 8
  %2515 = lshr i64 %2514, 4
  %2516 = or i64 %2513, %2515
  %2517 = xor i64 %2511, %2516
  store i64 %2517, i64* %9, align 8
  %2518 = load i64, i64* %9, align 8
  %2519 = and i64 %2518, 63
  %2520 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2519
  %2521 = load i64, i64* %2520, align 8
  %2522 = load i64, i64* %9, align 8
  %2523 = lshr i64 %2522, 8
  %2524 = and i64 %2523, 63
  %2525 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2524
  %2526 = load i64, i64* %2525, align 8
  %2527 = xor i64 %2521, %2526
  %2528 = load i64, i64* %9, align 8
  %2529 = lshr i64 %2528, 16
  %2530 = and i64 %2529, 63
  %2531 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2530
  %2532 = load i64, i64* %2531, align 8
  %2533 = xor i64 %2527, %2532
  %2534 = load i64, i64* %9, align 8
  %2535 = lshr i64 %2534, 24
  %2536 = and i64 %2535, 63
  %2537 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2536
  %2538 = load i64, i64* %2537, align 8
  %2539 = xor i64 %2533, %2538
  %2540 = load i64, i64* %7, align 8
  %2541 = xor i64 %2540, %2539
  store i64 %2541, i64* %7, align 8
  %2542 = load i64*, i64** %4, align 8
  %2543 = getelementptr inbounds i64, i64* %2542, i32 1
  store i64* %2543, i64** %4, align 8
  %2544 = load i64, i64* %2542, align 8
  %2545 = load i64, i64* %7, align 8
  %2546 = xor i64 %2544, %2545
  store i64 %2546, i64* %9, align 8
  %2547 = load i64, i64* %9, align 8
  %2548 = and i64 %2547, 63
  %2549 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2548
  %2550 = load i64, i64* %2549, align 8
  %2551 = load i64, i64* %9, align 8
  %2552 = lshr i64 %2551, 8
  %2553 = and i64 %2552, 63
  %2554 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2553
  %2555 = load i64, i64* %2554, align 8
  %2556 = xor i64 %2550, %2555
  %2557 = load i64, i64* %9, align 8
  %2558 = lshr i64 %2557, 16
  %2559 = and i64 %2558, 63
  %2560 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2559
  %2561 = load i64, i64* %2560, align 8
  %2562 = xor i64 %2556, %2561
  %2563 = load i64, i64* %9, align 8
  %2564 = lshr i64 %2563, 24
  %2565 = and i64 %2564, 63
  %2566 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2565
  %2567 = load i64, i64* %2566, align 8
  %2568 = xor i64 %2562, %2567
  %2569 = load i64, i64* %8, align 8
  %2570 = xor i64 %2569, %2568
  store i64 %2570, i64* %8, align 8
  %2571 = load i64*, i64** %4, align 8
  %2572 = getelementptr inbounds i64, i64* %2571, i32 1
  store i64* %2572, i64** %4, align 8
  %2573 = load i64, i64* %2571, align 8
  %2574 = load i64, i64* %7, align 8
  %2575 = shl i64 %2574, 28
  %2576 = load i64, i64* %7, align 8
  %2577 = lshr i64 %2576, 4
  %2578 = or i64 %2575, %2577
  %2579 = xor i64 %2573, %2578
  store i64 %2579, i64* %9, align 8
  %2580 = load i64, i64* %9, align 8
  %2581 = and i64 %2580, 63
  %2582 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2581
  %2583 = load i64, i64* %2582, align 8
  %2584 = load i64, i64* %9, align 8
  %2585 = lshr i64 %2584, 8
  %2586 = and i64 %2585, 63
  %2587 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2586
  %2588 = load i64, i64* %2587, align 8
  %2589 = xor i64 %2583, %2588
  %2590 = load i64, i64* %9, align 8
  %2591 = lshr i64 %2590, 16
  %2592 = and i64 %2591, 63
  %2593 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2592
  %2594 = load i64, i64* %2593, align 8
  %2595 = xor i64 %2589, %2594
  %2596 = load i64, i64* %9, align 8
  %2597 = lshr i64 %2596, 24
  %2598 = and i64 %2597, 63
  %2599 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2598
  %2600 = load i64, i64* %2599, align 8
  %2601 = xor i64 %2595, %2600
  %2602 = load i64, i64* %8, align 8
  %2603 = xor i64 %2602, %2601
  store i64 %2603, i64* %8, align 8
  %2604 = load i64*, i64** %4, align 8
  %2605 = getelementptr inbounds i64, i64* %2604, i32 1
  store i64* %2605, i64** %4, align 8
  %2606 = load i64, i64* %2604, align 8
  %2607 = load i64, i64* %8, align 8
  %2608 = xor i64 %2606, %2607
  store i64 %2608, i64* %9, align 8
  %2609 = load i64, i64* %9, align 8
  %2610 = and i64 %2609, 63
  %2611 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2610
  %2612 = load i64, i64* %2611, align 8
  %2613 = load i64, i64* %9, align 8
  %2614 = lshr i64 %2613, 8
  %2615 = and i64 %2614, 63
  %2616 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2615
  %2617 = load i64, i64* %2616, align 8
  %2618 = xor i64 %2612, %2617
  %2619 = load i64, i64* %9, align 8
  %2620 = lshr i64 %2619, 16
  %2621 = and i64 %2620, 63
  %2622 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2621
  %2623 = load i64, i64* %2622, align 8
  %2624 = xor i64 %2618, %2623
  %2625 = load i64, i64* %9, align 8
  %2626 = lshr i64 %2625, 24
  %2627 = and i64 %2626, 63
  %2628 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2627
  %2629 = load i64, i64* %2628, align 8
  %2630 = xor i64 %2624, %2629
  %2631 = load i64, i64* %7, align 8
  %2632 = xor i64 %2631, %2630
  store i64 %2632, i64* %7, align 8
  %2633 = load i64*, i64** %4, align 8
  %2634 = getelementptr inbounds i64, i64* %2633, i32 1
  store i64* %2634, i64** %4, align 8
  %2635 = load i64, i64* %2633, align 8
  %2636 = load i64, i64* %8, align 8
  %2637 = shl i64 %2636, 28
  %2638 = load i64, i64* %8, align 8
  %2639 = lshr i64 %2638, 4
  %2640 = or i64 %2637, %2639
  %2641 = xor i64 %2635, %2640
  store i64 %2641, i64* %9, align 8
  %2642 = load i64, i64* %9, align 8
  %2643 = and i64 %2642, 63
  %2644 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2643
  %2645 = load i64, i64* %2644, align 8
  %2646 = load i64, i64* %9, align 8
  %2647 = lshr i64 %2646, 8
  %2648 = and i64 %2647, 63
  %2649 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2648
  %2650 = load i64, i64* %2649, align 8
  %2651 = xor i64 %2645, %2650
  %2652 = load i64, i64* %9, align 8
  %2653 = lshr i64 %2652, 16
  %2654 = and i64 %2653, 63
  %2655 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2654
  %2656 = load i64, i64* %2655, align 8
  %2657 = xor i64 %2651, %2656
  %2658 = load i64, i64* %9, align 8
  %2659 = lshr i64 %2658, 24
  %2660 = and i64 %2659, 63
  %2661 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2660
  %2662 = load i64, i64* %2661, align 8
  %2663 = xor i64 %2657, %2662
  %2664 = load i64, i64* %7, align 8
  %2665 = xor i64 %2664, %2663
  store i64 %2665, i64* %7, align 8
  %2666 = load i64*, i64** %4, align 8
  %2667 = getelementptr inbounds i64, i64* %2666, i32 1
  store i64* %2667, i64** %4, align 8
  %2668 = load i64, i64* %2666, align 8
  %2669 = load i64, i64* %7, align 8
  %2670 = xor i64 %2668, %2669
  store i64 %2670, i64* %9, align 8
  %2671 = load i64, i64* %9, align 8
  %2672 = and i64 %2671, 63
  %2673 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2672
  %2674 = load i64, i64* %2673, align 8
  %2675 = load i64, i64* %9, align 8
  %2676 = lshr i64 %2675, 8
  %2677 = and i64 %2676, 63
  %2678 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2677
  %2679 = load i64, i64* %2678, align 8
  %2680 = xor i64 %2674, %2679
  %2681 = load i64, i64* %9, align 8
  %2682 = lshr i64 %2681, 16
  %2683 = and i64 %2682, 63
  %2684 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2683
  %2685 = load i64, i64* %2684, align 8
  %2686 = xor i64 %2680, %2685
  %2687 = load i64, i64* %9, align 8
  %2688 = lshr i64 %2687, 24
  %2689 = and i64 %2688, 63
  %2690 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2689
  %2691 = load i64, i64* %2690, align 8
  %2692 = xor i64 %2686, %2691
  %2693 = load i64, i64* %8, align 8
  %2694 = xor i64 %2693, %2692
  store i64 %2694, i64* %8, align 8
  %2695 = load i64*, i64** %4, align 8
  %2696 = getelementptr inbounds i64, i64* %2695, i32 1
  store i64* %2696, i64** %4, align 8
  %2697 = load i64, i64* %2695, align 8
  %2698 = load i64, i64* %7, align 8
  %2699 = shl i64 %2698, 28
  %2700 = load i64, i64* %7, align 8
  %2701 = lshr i64 %2700, 4
  %2702 = or i64 %2699, %2701
  %2703 = xor i64 %2697, %2702
  store i64 %2703, i64* %9, align 8
  %2704 = load i64, i64* %9, align 8
  %2705 = and i64 %2704, 63
  %2706 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2705
  %2707 = load i64, i64* %2706, align 8
  %2708 = load i64, i64* %9, align 8
  %2709 = lshr i64 %2708, 8
  %2710 = and i64 %2709, 63
  %2711 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2710
  %2712 = load i64, i64* %2711, align 8
  %2713 = xor i64 %2707, %2712
  %2714 = load i64, i64* %9, align 8
  %2715 = lshr i64 %2714, 16
  %2716 = and i64 %2715, 63
  %2717 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2716
  %2718 = load i64, i64* %2717, align 8
  %2719 = xor i64 %2713, %2718
  %2720 = load i64, i64* %9, align 8
  %2721 = lshr i64 %2720, 24
  %2722 = and i64 %2721, 63
  %2723 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2722
  %2724 = load i64, i64* %2723, align 8
  %2725 = xor i64 %2719, %2724
  %2726 = load i64, i64* %8, align 8
  %2727 = xor i64 %2726, %2725
  store i64 %2727, i64* %8, align 8
  %2728 = load i64*, i64** %4, align 8
  %2729 = getelementptr inbounds i64, i64* %2728, i32 1
  store i64* %2729, i64** %4, align 8
  %2730 = load i64, i64* %2728, align 8
  %2731 = load i64, i64* %8, align 8
  %2732 = xor i64 %2730, %2731
  store i64 %2732, i64* %9, align 8
  %2733 = load i64, i64* %9, align 8
  %2734 = and i64 %2733, 63
  %2735 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2734
  %2736 = load i64, i64* %2735, align 8
  %2737 = load i64, i64* %9, align 8
  %2738 = lshr i64 %2737, 8
  %2739 = and i64 %2738, 63
  %2740 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2739
  %2741 = load i64, i64* %2740, align 8
  %2742 = xor i64 %2736, %2741
  %2743 = load i64, i64* %9, align 8
  %2744 = lshr i64 %2743, 16
  %2745 = and i64 %2744, 63
  %2746 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2745
  %2747 = load i64, i64* %2746, align 8
  %2748 = xor i64 %2742, %2747
  %2749 = load i64, i64* %9, align 8
  %2750 = lshr i64 %2749, 24
  %2751 = and i64 %2750, 63
  %2752 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2751
  %2753 = load i64, i64* %2752, align 8
  %2754 = xor i64 %2748, %2753
  %2755 = load i64, i64* %7, align 8
  %2756 = xor i64 %2755, %2754
  store i64 %2756, i64* %7, align 8
  %2757 = load i64*, i64** %4, align 8
  %2758 = getelementptr inbounds i64, i64* %2757, i32 1
  store i64* %2758, i64** %4, align 8
  %2759 = load i64, i64* %2757, align 8
  %2760 = load i64, i64* %8, align 8
  %2761 = shl i64 %2760, 28
  %2762 = load i64, i64* %8, align 8
  %2763 = lshr i64 %2762, 4
  %2764 = or i64 %2761, %2763
  %2765 = xor i64 %2759, %2764
  store i64 %2765, i64* %9, align 8
  %2766 = load i64, i64* %9, align 8
  %2767 = and i64 %2766, 63
  %2768 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2767
  %2769 = load i64, i64* %2768, align 8
  %2770 = load i64, i64* %9, align 8
  %2771 = lshr i64 %2770, 8
  %2772 = and i64 %2771, 63
  %2773 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2772
  %2774 = load i64, i64* %2773, align 8
  %2775 = xor i64 %2769, %2774
  %2776 = load i64, i64* %9, align 8
  %2777 = lshr i64 %2776, 16
  %2778 = and i64 %2777, 63
  %2779 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2778
  %2780 = load i64, i64* %2779, align 8
  %2781 = xor i64 %2775, %2780
  %2782 = load i64, i64* %9, align 8
  %2783 = lshr i64 %2782, 24
  %2784 = and i64 %2783, 63
  %2785 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2784
  %2786 = load i64, i64* %2785, align 8
  %2787 = xor i64 %2781, %2786
  %2788 = load i64, i64* %7, align 8
  %2789 = xor i64 %2788, %2787
  store i64 %2789, i64* %7, align 8
  %2790 = load i64*, i64** %4, align 8
  %2791 = getelementptr inbounds i64, i64* %2790, i32 1
  store i64* %2791, i64** %4, align 8
  %2792 = load i64, i64* %2790, align 8
  %2793 = load i64, i64* %7, align 8
  %2794 = xor i64 %2792, %2793
  store i64 %2794, i64* %9, align 8
  %2795 = load i64, i64* %9, align 8
  %2796 = and i64 %2795, 63
  %2797 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2796
  %2798 = load i64, i64* %2797, align 8
  %2799 = load i64, i64* %9, align 8
  %2800 = lshr i64 %2799, 8
  %2801 = and i64 %2800, 63
  %2802 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2801
  %2803 = load i64, i64* %2802, align 8
  %2804 = xor i64 %2798, %2803
  %2805 = load i64, i64* %9, align 8
  %2806 = lshr i64 %2805, 16
  %2807 = and i64 %2806, 63
  %2808 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2807
  %2809 = load i64, i64* %2808, align 8
  %2810 = xor i64 %2804, %2809
  %2811 = load i64, i64* %9, align 8
  %2812 = lshr i64 %2811, 24
  %2813 = and i64 %2812, 63
  %2814 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2813
  %2815 = load i64, i64* %2814, align 8
  %2816 = xor i64 %2810, %2815
  %2817 = load i64, i64* %8, align 8
  %2818 = xor i64 %2817, %2816
  store i64 %2818, i64* %8, align 8
  %2819 = load i64*, i64** %4, align 8
  %2820 = getelementptr inbounds i64, i64* %2819, i32 1
  store i64* %2820, i64** %4, align 8
  %2821 = load i64, i64* %2819, align 8
  %2822 = load i64, i64* %7, align 8
  %2823 = shl i64 %2822, 28
  %2824 = load i64, i64* %7, align 8
  %2825 = lshr i64 %2824, 4
  %2826 = or i64 %2823, %2825
  %2827 = xor i64 %2821, %2826
  store i64 %2827, i64* %9, align 8
  %2828 = load i64, i64* %9, align 8
  %2829 = and i64 %2828, 63
  %2830 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2829
  %2831 = load i64, i64* %2830, align 8
  %2832 = load i64, i64* %9, align 8
  %2833 = lshr i64 %2832, 8
  %2834 = and i64 %2833, 63
  %2835 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2834
  %2836 = load i64, i64* %2835, align 8
  %2837 = xor i64 %2831, %2836
  %2838 = load i64, i64* %9, align 8
  %2839 = lshr i64 %2838, 16
  %2840 = and i64 %2839, 63
  %2841 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2840
  %2842 = load i64, i64* %2841, align 8
  %2843 = xor i64 %2837, %2842
  %2844 = load i64, i64* %9, align 8
  %2845 = lshr i64 %2844, 24
  %2846 = and i64 %2845, 63
  %2847 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2846
  %2848 = load i64, i64* %2847, align 8
  %2849 = xor i64 %2843, %2848
  %2850 = load i64, i64* %8, align 8
  %2851 = xor i64 %2850, %2849
  store i64 %2851, i64* %8, align 8
  %2852 = load i64*, i64** %4, align 8
  %2853 = getelementptr inbounds i64, i64* %2852, i32 1
  store i64* %2853, i64** %4, align 8
  %2854 = load i64, i64* %2852, align 8
  %2855 = load i64, i64* %8, align 8
  %2856 = xor i64 %2854, %2855
  store i64 %2856, i64* %9, align 8
  %2857 = load i64, i64* %9, align 8
  %2858 = and i64 %2857, 63
  %2859 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2858
  %2860 = load i64, i64* %2859, align 8
  %2861 = load i64, i64* %9, align 8
  %2862 = lshr i64 %2861, 8
  %2863 = and i64 %2862, 63
  %2864 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2863
  %2865 = load i64, i64* %2864, align 8
  %2866 = xor i64 %2860, %2865
  %2867 = load i64, i64* %9, align 8
  %2868 = lshr i64 %2867, 16
  %2869 = and i64 %2868, 63
  %2870 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2869
  %2871 = load i64, i64* %2870, align 8
  %2872 = xor i64 %2866, %2871
  %2873 = load i64, i64* %9, align 8
  %2874 = lshr i64 %2873, 24
  %2875 = and i64 %2874, 63
  %2876 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2875
  %2877 = load i64, i64* %2876, align 8
  %2878 = xor i64 %2872, %2877
  %2879 = load i64, i64* %7, align 8
  %2880 = xor i64 %2879, %2878
  store i64 %2880, i64* %7, align 8
  %2881 = load i64*, i64** %4, align 8
  %2882 = getelementptr inbounds i64, i64* %2881, i32 1
  store i64* %2882, i64** %4, align 8
  %2883 = load i64, i64* %2881, align 8
  %2884 = load i64, i64* %8, align 8
  %2885 = shl i64 %2884, 28
  %2886 = load i64, i64* %8, align 8
  %2887 = lshr i64 %2886, 4
  %2888 = or i64 %2885, %2887
  %2889 = xor i64 %2883, %2888
  store i64 %2889, i64* %9, align 8
  %2890 = load i64, i64* %9, align 8
  %2891 = and i64 %2890, 63
  %2892 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2891
  %2893 = load i64, i64* %2892, align 8
  %2894 = load i64, i64* %9, align 8
  %2895 = lshr i64 %2894, 8
  %2896 = and i64 %2895, 63
  %2897 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2896
  %2898 = load i64, i64* %2897, align 8
  %2899 = xor i64 %2893, %2898
  %2900 = load i64, i64* %9, align 8
  %2901 = lshr i64 %2900, 16
  %2902 = and i64 %2901, 63
  %2903 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2902
  %2904 = load i64, i64* %2903, align 8
  %2905 = xor i64 %2899, %2904
  %2906 = load i64, i64* %9, align 8
  %2907 = lshr i64 %2906, 24
  %2908 = and i64 %2907, 63
  %2909 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2908
  %2910 = load i64, i64* %2909, align 8
  %2911 = xor i64 %2905, %2910
  %2912 = load i64, i64* %7, align 8
  %2913 = xor i64 %2912, %2911
  store i64 %2913, i64* %7, align 8
  %2914 = load i64*, i64** %4, align 8
  %2915 = getelementptr inbounds i64, i64* %2914, i32 1
  store i64* %2915, i64** %4, align 8
  %2916 = load i64, i64* %2914, align 8
  %2917 = load i64, i64* %7, align 8
  %2918 = xor i64 %2916, %2917
  store i64 %2918, i64* %9, align 8
  %2919 = load i64, i64* %9, align 8
  %2920 = and i64 %2919, 63
  %2921 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2920
  %2922 = load i64, i64* %2921, align 8
  %2923 = load i64, i64* %9, align 8
  %2924 = lshr i64 %2923, 8
  %2925 = and i64 %2924, 63
  %2926 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2925
  %2927 = load i64, i64* %2926, align 8
  %2928 = xor i64 %2922, %2927
  %2929 = load i64, i64* %9, align 8
  %2930 = lshr i64 %2929, 16
  %2931 = and i64 %2930, 63
  %2932 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2931
  %2933 = load i64, i64* %2932, align 8
  %2934 = xor i64 %2928, %2933
  %2935 = load i64, i64* %9, align 8
  %2936 = lshr i64 %2935, 24
  %2937 = and i64 %2936, 63
  %2938 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2937
  %2939 = load i64, i64* %2938, align 8
  %2940 = xor i64 %2934, %2939
  %2941 = load i64, i64* %8, align 8
  %2942 = xor i64 %2941, %2940
  store i64 %2942, i64* %8, align 8
  %2943 = load i64*, i64** %4, align 8
  %2944 = getelementptr inbounds i64, i64* %2943, i32 1
  store i64* %2944, i64** %4, align 8
  %2945 = load i64, i64* %2943, align 8
  %2946 = load i64, i64* %7, align 8
  %2947 = shl i64 %2946, 28
  %2948 = load i64, i64* %7, align 8
  %2949 = lshr i64 %2948, 4
  %2950 = or i64 %2947, %2949
  %2951 = xor i64 %2945, %2950
  store i64 %2951, i64* %9, align 8
  %2952 = load i64, i64* %9, align 8
  %2953 = and i64 %2952, 63
  %2954 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %2953
  %2955 = load i64, i64* %2954, align 8
  %2956 = load i64, i64* %9, align 8
  %2957 = lshr i64 %2956, 8
  %2958 = and i64 %2957, 63
  %2959 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %2958
  %2960 = load i64, i64* %2959, align 8
  %2961 = xor i64 %2955, %2960
  %2962 = load i64, i64* %9, align 8
  %2963 = lshr i64 %2962, 16
  %2964 = and i64 %2963, 63
  %2965 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %2964
  %2966 = load i64, i64* %2965, align 8
  %2967 = xor i64 %2961, %2966
  %2968 = load i64, i64* %9, align 8
  %2969 = lshr i64 %2968, 24
  %2970 = and i64 %2969, 63
  %2971 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %2970
  %2972 = load i64, i64* %2971, align 8
  %2973 = xor i64 %2967, %2972
  %2974 = load i64, i64* %8, align 8
  %2975 = xor i64 %2974, %2973
  store i64 %2975, i64* %8, align 8
  %2976 = load i64*, i64** %4, align 8
  %2977 = getelementptr inbounds i64, i64* %2976, i32 1
  store i64* %2977, i64** %4, align 8
  %2978 = load i64, i64* %2976, align 8
  %2979 = load i64, i64* %8, align 8
  %2980 = xor i64 %2978, %2979
  store i64 %2980, i64* %9, align 8
  %2981 = load i64, i64* %9, align 8
  %2982 = and i64 %2981, 63
  %2983 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %2982
  %2984 = load i64, i64* %2983, align 8
  %2985 = load i64, i64* %9, align 8
  %2986 = lshr i64 %2985, 8
  %2987 = and i64 %2986, 63
  %2988 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %2987
  %2989 = load i64, i64* %2988, align 8
  %2990 = xor i64 %2984, %2989
  %2991 = load i64, i64* %9, align 8
  %2992 = lshr i64 %2991, 16
  %2993 = and i64 %2992, 63
  %2994 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %2993
  %2995 = load i64, i64* %2994, align 8
  %2996 = xor i64 %2990, %2995
  %2997 = load i64, i64* %9, align 8
  %2998 = lshr i64 %2997, 24
  %2999 = and i64 %2998, 63
  %3000 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %2999
  %3001 = load i64, i64* %3000, align 8
  %3002 = xor i64 %2996, %3001
  %3003 = load i64, i64* %7, align 8
  %3004 = xor i64 %3003, %3002
  store i64 %3004, i64* %7, align 8
  %3005 = load i64*, i64** %4, align 8
  %3006 = getelementptr inbounds i64, i64* %3005, i32 1
  store i64* %3006, i64** %4, align 8
  %3007 = load i64, i64* %3005, align 8
  %3008 = load i64, i64* %8, align 8
  %3009 = shl i64 %3008, 28
  %3010 = load i64, i64* %8, align 8
  %3011 = lshr i64 %3010, 4
  %3012 = or i64 %3009, %3011
  %3013 = xor i64 %3007, %3012
  store i64 %3013, i64* %9, align 8
  %3014 = load i64, i64* %9, align 8
  %3015 = and i64 %3014, 63
  %3016 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %3015
  %3017 = load i64, i64* %3016, align 8
  %3018 = load i64, i64* %9, align 8
  %3019 = lshr i64 %3018, 8
  %3020 = and i64 %3019, 63
  %3021 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %3020
  %3022 = load i64, i64* %3021, align 8
  %3023 = xor i64 %3017, %3022
  %3024 = load i64, i64* %9, align 8
  %3025 = lshr i64 %3024, 16
  %3026 = and i64 %3025, 63
  %3027 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %3026
  %3028 = load i64, i64* %3027, align 8
  %3029 = xor i64 %3023, %3028
  %3030 = load i64, i64* %9, align 8
  %3031 = lshr i64 %3030, 24
  %3032 = and i64 %3031, 63
  %3033 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %3032
  %3034 = load i64, i64* %3033, align 8
  %3035 = xor i64 %3029, %3034
  %3036 = load i64, i64* %7, align 8
  %3037 = xor i64 %3036, %3035
  store i64 %3037, i64* %7, align 8
  %3038 = load i64*, i64** %4, align 8
  %3039 = getelementptr inbounds i64, i64* %3038, i32 1
  store i64* %3039, i64** %4, align 8
  %3040 = load i64, i64* %3038, align 8
  %3041 = load i64, i64* %7, align 8
  %3042 = xor i64 %3040, %3041
  store i64 %3042, i64* %9, align 8
  %3043 = load i64, i64* %9, align 8
  %3044 = and i64 %3043, 63
  %3045 = getelementptr inbounds [64 x i64], [64 x i64]* @SB8, i64 0, i64 %3044
  %3046 = load i64, i64* %3045, align 8
  %3047 = load i64, i64* %9, align 8
  %3048 = lshr i64 %3047, 8
  %3049 = and i64 %3048, 63
  %3050 = getelementptr inbounds [64 x i64], [64 x i64]* @SB6, i64 0, i64 %3049
  %3051 = load i64, i64* %3050, align 8
  %3052 = xor i64 %3046, %3051
  %3053 = load i64, i64* %9, align 8
  %3054 = lshr i64 %3053, 16
  %3055 = and i64 %3054, 63
  %3056 = getelementptr inbounds [64 x i64], [64 x i64]* @SB4, i64 0, i64 %3055
  %3057 = load i64, i64* %3056, align 8
  %3058 = xor i64 %3052, %3057
  %3059 = load i64, i64* %9, align 8
  %3060 = lshr i64 %3059, 24
  %3061 = and i64 %3060, 63
  %3062 = getelementptr inbounds [64 x i64], [64 x i64]* @SB2, i64 0, i64 %3061
  %3063 = load i64, i64* %3062, align 8
  %3064 = xor i64 %3058, %3063
  %3065 = load i64, i64* %8, align 8
  %3066 = xor i64 %3065, %3064
  store i64 %3066, i64* %8, align 8
  %3067 = load i64*, i64** %4, align 8
  %3068 = getelementptr inbounds i64, i64* %3067, i32 1
  store i64* %3068, i64** %4, align 8
  %3069 = load i64, i64* %3067, align 8
  %3070 = load i64, i64* %7, align 8
  %3071 = shl i64 %3070, 28
  %3072 = load i64, i64* %7, align 8
  %3073 = lshr i64 %3072, 4
  %3074 = or i64 %3071, %3073
  %3075 = xor i64 %3069, %3074
  store i64 %3075, i64* %9, align 8
  %3076 = load i64, i64* %9, align 8
  %3077 = and i64 %3076, 63
  %3078 = getelementptr inbounds [64 x i64], [64 x i64]* @SB7, i64 0, i64 %3077
  %3079 = load i64, i64* %3078, align 8
  %3080 = load i64, i64* %9, align 8
  %3081 = lshr i64 %3080, 8
  %3082 = and i64 %3081, 63
  %3083 = getelementptr inbounds [64 x i64], [64 x i64]* @SB5, i64 0, i64 %3082
  %3084 = load i64, i64* %3083, align 8
  %3085 = xor i64 %3079, %3084
  %3086 = load i64, i64* %9, align 8
  %3087 = lshr i64 %3086, 16
  %3088 = and i64 %3087, 63
  %3089 = getelementptr inbounds [64 x i64], [64 x i64]* @SB3, i64 0, i64 %3088
  %3090 = load i64, i64* %3089, align 8
  %3091 = xor i64 %3085, %3090
  %3092 = load i64, i64* %9, align 8
  %3093 = lshr i64 %3092, 24
  %3094 = and i64 %3093, 63
  %3095 = getelementptr inbounds [64 x i64], [64 x i64]* @SB1, i64 0, i64 %3094
  %3096 = load i64, i64* %3095, align 8
  %3097 = xor i64 %3091, %3096
  %3098 = load i64, i64* %8, align 8
  %3099 = xor i64 %3098, %3097
  store i64 %3099, i64* %8, align 8
  %3100 = load i64, i64* %8, align 8
  %3101 = shl i64 %3100, 31
  %3102 = load i64, i64* %8, align 8
  %3103 = lshr i64 %3102, 1
  %3104 = or i64 %3101, %3103
  %3105 = and i64 %3104, 4294967295
  store i64 %3105, i64* %8, align 8
  %3106 = load i64, i64* %8, align 8
  %3107 = load i64, i64* %7, align 8
  %3108 = xor i64 %3106, %3107
  %3109 = and i64 %3108, 2863311530
  store i64 %3109, i64* %9, align 8
  %3110 = load i64, i64* %9, align 8
  %3111 = load i64, i64* %8, align 8
  %3112 = xor i64 %3111, %3110
  store i64 %3112, i64* %8, align 8
  %3113 = load i64, i64* %9, align 8
  %3114 = load i64, i64* %7, align 8
  %3115 = xor i64 %3114, %3113
  store i64 %3115, i64* %7, align 8
  %3116 = load i64, i64* %7, align 8
  %3117 = shl i64 %3116, 31
  %3118 = load i64, i64* %7, align 8
  %3119 = lshr i64 %3118, 1
  %3120 = or i64 %3117, %3119
  %3121 = and i64 %3120, 4294967295
  store i64 %3121, i64* %7, align 8
  %3122 = load i64, i64* %7, align 8
  %3123 = lshr i64 %3122, 8
  %3124 = load i64, i64* %8, align 8
  %3125 = xor i64 %3123, %3124
  %3126 = and i64 %3125, 16711935
  store i64 %3126, i64* %9, align 8
  %3127 = load i64, i64* %9, align 8
  %3128 = load i64, i64* %8, align 8
  %3129 = xor i64 %3128, %3127
  store i64 %3129, i64* %8, align 8
  %3130 = load i64, i64* %9, align 8
  %3131 = shl i64 %3130, 8
  %3132 = load i64, i64* %7, align 8
  %3133 = xor i64 %3132, %3131
  store i64 %3133, i64* %7, align 8
  %3134 = load i64, i64* %7, align 8
  %3135 = lshr i64 %3134, 2
  %3136 = load i64, i64* %8, align 8
  %3137 = xor i64 %3135, %3136
  %3138 = and i64 %3137, 858993459
  store i64 %3138, i64* %9, align 8
  %3139 = load i64, i64* %9, align 8
  %3140 = load i64, i64* %8, align 8
  %3141 = xor i64 %3140, %3139
  store i64 %3141, i64* %8, align 8
  %3142 = load i64, i64* %9, align 8
  %3143 = shl i64 %3142, 2
  %3144 = load i64, i64* %7, align 8
  %3145 = xor i64 %3144, %3143
  store i64 %3145, i64* %7, align 8
  %3146 = load i64, i64* %8, align 8
  %3147 = lshr i64 %3146, 16
  %3148 = load i64, i64* %7, align 8
  %3149 = xor i64 %3147, %3148
  %3150 = and i64 %3149, 65535
  store i64 %3150, i64* %9, align 8
  %3151 = load i64, i64* %9, align 8
  %3152 = load i64, i64* %7, align 8
  %3153 = xor i64 %3152, %3151
  store i64 %3153, i64* %7, align 8
  %3154 = load i64, i64* %9, align 8
  %3155 = shl i64 %3154, 16
  %3156 = load i64, i64* %8, align 8
  %3157 = xor i64 %3156, %3155
  store i64 %3157, i64* %8, align 8
  %3158 = load i64, i64* %8, align 8
  %3159 = lshr i64 %3158, 4
  %3160 = load i64, i64* %7, align 8
  %3161 = xor i64 %3159, %3160
  %3162 = and i64 %3161, 252645135
  store i64 %3162, i64* %9, align 8
  %3163 = load i64, i64* %9, align 8
  %3164 = load i64, i64* %7, align 8
  %3165 = xor i64 %3164, %3163
  store i64 %3165, i64* %7, align 8
  %3166 = load i64, i64* %9, align 8
  %3167 = shl i64 %3166, 4
  %3168 = load i64, i64* %8, align 8
  %3169 = xor i64 %3168, %3167
  store i64 %3169, i64* %8, align 8
  %3170 = load i64, i64* %8, align 8
  %3171 = lshr i64 %3170, 24
  %3172 = trunc i64 %3171 to i8
  %3173 = load i8*, i8** %6, align 8
  %3174 = getelementptr inbounds i8, i8* %3173, i64 0
  store i8 %3172, i8* %3174, align 1
  %3175 = load i64, i64* %8, align 8
  %3176 = lshr i64 %3175, 16
  %3177 = trunc i64 %3176 to i8
  %3178 = load i8*, i8** %6, align 8
  %3179 = getelementptr inbounds i8, i8* %3178, i64 1
  store i8 %3177, i8* %3179, align 1
  %3180 = load i64, i64* %8, align 8
  %3181 = lshr i64 %3180, 8
  %3182 = trunc i64 %3181 to i8
  %3183 = load i8*, i8** %6, align 8
  %3184 = getelementptr inbounds i8, i8* %3183, i64 2
  store i8 %3182, i8* %3184, align 1
  %3185 = load i64, i64* %8, align 8
  %3186 = trunc i64 %3185 to i8
  %3187 = load i8*, i8** %6, align 8
  %3188 = getelementptr inbounds i8, i8* %3187, i64 3
  store i8 %3186, i8* %3188, align 1
  %3189 = load i64, i64* %7, align 8
  %3190 = lshr i64 %3189, 24
  %3191 = trunc i64 %3190 to i8
  %3192 = load i8*, i8** %6, align 8
  %3193 = getelementptr inbounds i8, i8* %3192, i64 4
  store i8 %3191, i8* %3193, align 1
  %3194 = load i64, i64* %7, align 8
  %3195 = lshr i64 %3194, 16
  %3196 = trunc i64 %3195 to i8
  %3197 = load i8*, i8** %6, align 8
  %3198 = getelementptr inbounds i8, i8* %3197, i64 5
  store i8 %3196, i8* %3198, align 1
  %3199 = load i64, i64* %7, align 8
  %3200 = lshr i64 %3199, 8
  %3201 = trunc i64 %3200 to i8
  %3202 = load i8*, i8** %6, align 8
  %3203 = getelementptr inbounds i8, i8* %3202, i64 6
  store i8 %3201, i8* %3203, align 1
  %3204 = load i64, i64* %7, align 8
  %3205 = trunc i64 %3204 to i8
  %3206 = load i8*, i8** %6, align 8
  %3207 = getelementptr inbounds i8, i8* %3206, i64 7
  store i8 %3205, i8* %3207, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des3_encrypt(%struct.des3_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.des3_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.des3_context* %0, %struct.des3_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %8 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %7, i32 0, i32 0
  %9 = getelementptr inbounds [96 x i64], [96 x i64]* %8, i64 0, i64 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  call void @des3_crypt(i64* %9, i8* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @des3_decrypt(%struct.des3_context* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.des3_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.des3_context* %0, %struct.des3_context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.des3_context*, %struct.des3_context** %4, align 8
  %8 = getelementptr inbounds %struct.des3_context, %struct.des3_context* %7, i32 0, i32 1
  %9 = getelementptr inbounds [96 x i64], [96 x i64]* %8, i64 0, i64 0
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  call void @des3_crypt(i64* %9, i8* %10, i8* %11)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.des_context, align 8
  %10 = alloca %struct.des3_context, align 8
  %11 = alloca [8 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @atoi(i8* %19) #4
  store i32 %20, i32* %13, align 4
  br label %21

21:                                               ; preds = %16, %2
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %133, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 2
  br i1 %24, label %25, label %136

25:                                               ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %129, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %40, label %132

40:                                               ; preds = %37
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = mul nsw i32 %43, 64
  %45 = add nsw i32 64, %44
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @fflush(%struct._IO_FILE* %47)
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %124, %40
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %127

53:                                               ; preds = %49
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @DES3_init, i64 0, i64 0), i64 8, i1 false)
  %55 = load i32, i32* %7, align 4
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 1, label %58
    i32 2, label %60
  ]

56:                                               ; preds = %53
  %57 = call i32 @des_set_key(%struct.des_context* %9, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 0, i64 0))
  br label %62

58:                                               ; preds = %53
  %59 = call i32 @des3_set_2keys(%struct.des3_context* %10, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 1, i64 0))
  br label %62

60:                                               ; preds = %53
  %61 = call i32 @des3_set_3keys(%struct.des3_context* %10, i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 0, i64 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 1, i64 0), i8* getelementptr inbounds ([3 x [8 x i8]], [3 x [8 x i8]]* @DES3_keys, i64 0, i64 2, i64 0))
  br label %62

62:                                               ; preds = %60, %58, %56, %53
  store i32 0, i32* %8, align 4
  br label %63

63:                                               ; preds = %96, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 10000
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  call void @des_encrypt(%struct.des_context* %9, i8* %73, i8* %74)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  call void @des_decrypt(%struct.des_context* %9, i8* %79, i8* %80)
  br label %81

81:                                               ; preds = %78, %75
  br label %95

82:                                               ; preds = %66
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %87 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  call void @des3_encrypt(%struct.des3_context* %10, i8* %86, i8* %87)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  call void @des3_decrypt(%struct.des3_context* %10, i8* %92, i8* %93)
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %63

99:                                               ; preds = %63
  %100 = load i32, i32* %6, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @DES3_enc_test, i64 0, i64 %105
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %106, i64 0, i64 0
  %108 = call i32 @memcmp(i8* %103, i8* %107, i64 8) #4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %102, %99
  %111 = load i32, i32* %6, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = getelementptr inbounds [8 x i8], [8 x i8]* %11, i64 0, i64 0
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [3 x [8 x i8]], [3 x [8 x i8]]* @DES3_dec_test, i64 0, i64 %116
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %117, i64 0, i64 0
  %119 = call i32 @memcmp(i8* %114, i8* %118, i64 8) #4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %113, %102
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %138

123:                                              ; preds = %113, %110
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  br label %49

127:                                              ; preds = %49
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %37

132:                                              ; preds = %37
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %22

136:                                              ; preds = %22
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %121
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
