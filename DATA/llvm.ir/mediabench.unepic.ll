; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.node = type { i32, %struct.node*, %struct.node*, %struct.node*, i16, i8* }
%struct.code_node = type { %struct.code_node*, %struct.code_node*, i16 }

@.str = private unnamed_addr constant [32 x i8] c"Error reading byte image file.\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c"ReadMatrixFromPGMStream(): File not P2 Or P5 PGM image\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"ReadMatrixFromPGMStream():  File is not a 255-shade PGM image\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"ReadMatrixFromPGMStream():  Unable to alocate enough memory\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Error writing byte image file.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"# CREATOR: UNEPIC, Version %.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.1.1 = private unnamed_addr constant [40 x i8] c"Error in histogram.  Unable to encode.\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Error reading Huffman Tree!\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [20 x i8] c"Symbol Histogram: \0A\00", align 1
@.str.3.14 = private unnamed_addr constant [11 x i8] c"%04x: %d  \00", align 1
@.str.4.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.17 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.2.18 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3.19 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.4.20 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.5.21 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.6.22 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.7.23 = private unnamed_addr constant [27 x i8] c"Unrecognized argument: %s\0A\00", align 1
@.str.8.24 = private unnamed_addr constant [42 x i8] c"Error: num_levels must be greater than 0\0A\00", align 1
@.str.9.25 = private unnamed_addr constant [53 x i8] c"Error: cannot build pyramid to more than %d levels.\0A\00", align 1
@.str.10.26 = private unnamed_addr constant [36 x i8] c"Error: dimensions too big (%d,%d).\0A\00", align 1
@.str.11.27 = private unnamed_addr constant [78 x i8] c"Error: dimensions (%d,%d) are not divisible by 2^num_levels (num_levels=%d).\0A\00", align 1
@.str.12.28 = private unnamed_addr constant [76 x i8] c"Error: dimensions (%d,%d) divided by 2^num_levels must be greater than %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"Usage: \0Aepic infile [-o outfile] [-x xdim] [-y ydim] [-l levels] [-b binsize]\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Usage:  unepic epicfile [outfile]\0A\00", align 1
@.str.16.29 = private unnamed_addr constant [34 x i8] c"The file %s is not an EPIC file!\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c".U\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"QUANTIZE: bin_size %d is too small. Changed to %d.\0A\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"Zero length overflow error in run_length_encode_zeros!\0A\00", align 1
@.str.1.32 = private unnamed_addr constant [50 x i8] c"Value overflow error in run_length_encode_zeros!\0A\00", align 1
@.str.33 = private unnamed_addr constant [23 x i8] c"Read %ld byte header.\0A\00", align 1
@.str.1.34 = private unnamed_addr constant [53 x i8] c"num_levels: %d, x_size: %d, y_size: %d, scale: %8lf\0A\00", align 1
@.str.2.35 = private unnamed_addr constant [33 x i8] c"Read %ld bytes of Binsize Info.\0A\00", align 1
@.str.3.36 = private unnamed_addr constant [29 x i8] c"Read %ld bytes of Raw data.\0A\00", align 1
@.str.4.37 = private unnamed_addr constant [29 x i8] c"Read %ld byte huffman tree.\0A\00", align 1
@.str.5.38 = private unnamed_addr constant [33 x i8] c"Read %ld bytes of encoded data.\0A\00", align 1
@.str.6.39 = private unnamed_addr constant [35 x i8] c"ERROR: Bad data tag in file: %02x\0A\00", align 1
@.str.7.40 = private unnamed_addr constant [28 x i8] c"Read a total of %ld bytes.\0A\00", align 1
@.str.8.41 = private unnamed_addr constant [26 x i8] c"Unquantizing pyramid ...\0A\00", align 1
@.str.9.42 = private unnamed_addr constant [25 x i8] c"Collapsing pyramid ... \0A\00", align 1
@.str.10.43 = private unnamed_addr constant [32 x i8] c"UNEPIC time = %ld milliseconds\0A\00", align 1
@.str.11.44 = private unnamed_addr constant [26 x i8] c"Writing output file ... \0A\00", align 1
@temp_byte = common dso_local global i8 0, align 1
@temp_short = common dso_local global i16 0, align 2
@temp_int = common dso_local global i32 0, align 4
@.str.53 = private unnamed_addr constant [47 x i8] c"\0AERROR: unable to allocate sufficient memory!\0A\00", align 1
@.str.1.58 = private unnamed_addr constant [30 x i8] c"\0AError opening file %s (%s).\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @collapse_pyr(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %2071, %5
  %28 = load i32, i32* %24, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %2074

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %24, align 4
  %33 = ashr i32 %31, %32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %24, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %16, align 4
  %38 = shl i32 %37, 1
  store i32 %38, i32* %23, align 4
  %39 = load i32, i32* %16, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %17, align 4
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %54, %30
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = mul nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %43

57:                                               ; preds = %43
  %58 = load i32*, i32** %7, align 8
  store i32* %58, i32** %15, align 8
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %23, align 4
  %62 = add nsw i32 %61, 2
  store i32 %62, i32* %13, align 4
  store i32 1, i32* %22, align 4
  br label %63

63:                                               ; preds = %165, %57
  %64 = load i32, i32* %22, align 4
  %65 = load i32, i32* %19, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %174

67:                                               ; preds = %63
  store i32 1, i32* %21, align 4
  br label %68

68:                                               ; preds = %157, %67
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %18, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %164

72:                                               ; preds = %68
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %156

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %80
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %12, align 4
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %12, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %88
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %96
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %105, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, %104
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %12, align 4
  %114 = ashr i32 %113, 1
  store i32 %114, i32* %12, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %114
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %122
  store i32 %129, i32* %127, align 4
  %130 = load i32, i32* %12, align 4
  %131 = shl i32 %130, 1
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %16, align 4
  %135 = add nsw i32 %133, %134
  store i32 %135, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %132, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %131
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* %14, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %140
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %148
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %79, %72
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %20, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 2
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %21, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %21, align 4
  br label %68

164:                                              ; preds = %68
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 %168, 2
  %170 = load i32, i32* %13, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %22, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %22, align 4
  br label %63

174:                                              ; preds = %63
  store i32 1, i32* %20, align 4
  store i32 2, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %175

175:                                              ; preds = %238, %174
  %176 = load i32, i32* %21, align 4
  %177 = load i32, i32* %18, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %245

179:                                              ; preds = %175
  %180 = load i32*, i32** %15, align 8
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %12, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %237

186:                                              ; preds = %179
  %187 = load i32, i32* %12, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, %187
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* %12, align 4
  %195 = ashr i32 %194, 1
  store i32 %195, i32* %12, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, %195
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32*, i32** %8, align 8
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, %203
  store i32 %210, i32* %208, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load i32*, i32** %8, align 8
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %213, %214
  store i32 %215, i32* %14, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, %211
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %12, align 4
  %221 = ashr i32 %220, 1
  store i32 %221, i32* %12, align 4
  %222 = load i32*, i32** %8, align 8
  %223 = load i32, i32* %14, align 4
  %224 = sub nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %221
  store i32 %228, i32* %226, align 4
  %229 = load i32, i32* %12, align 4
  %230 = load i32*, i32** %8, align 8
  %231 = load i32, i32* %14, align 4
  %232 = add nsw i32 %231, 1
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %230, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, %229
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %186, %179
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %20, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %20, align 4
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 2
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %21, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %21, align 4
  br label %175

245:                                              ; preds = %175
  %246 = load i32, i32* %18, align 4
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %23, align 4
  store i32 %247, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %248

248:                                              ; preds = %313, %245
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %19, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %322

252:                                              ; preds = %248
  %253 = load i32*, i32** %15, align 8
  %254 = load i32, i32* %20, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  store i32 %257, i32* %12, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %312

259:                                              ; preds = %252
  %260 = load i32, i32* %12, align 4
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, %260
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %12, align 4
  %268 = ashr i32 %267, 1
  store i32 %268, i32* %12, align 4
  %269 = load i32*, i32** %8, align 8
  %270 = load i32, i32* %13, align 4
  %271 = add nsw i32 %270, 1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %269, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, %268
  store i32 %275, i32* %273, align 4
  %276 = load i32, i32* %12, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %16, align 4
  %280 = sub nsw i32 %278, %279
  store i32 %280, i32* %14, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %276
  store i32 %284, i32* %282, align 4
  %285 = load i32, i32* %12, align 4
  %286 = ashr i32 %285, 1
  %287 = load i32*, i32** %8, align 8
  %288 = load i32, i32* %14, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, %286
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* %12, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = load i32, i32* %13, align 4
  %297 = load i32, i32* %16, align 4
  %298 = add nsw i32 %296, %297
  store i32 %298, i32* %14, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %295, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, %294
  store i32 %302, i32* %300, align 4
  %303 = load i32, i32* %12, align 4
  %304 = ashr i32 %303, 1
  %305 = load i32*, i32** %8, align 8
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %304
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %259, %252
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %18, align 4
  %315 = load i32, i32* %20, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %20, align 4
  %317 = load i32, i32* %23, align 4
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* %13, align 4
  %320 = load i32, i32* %21, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %21, align 4
  br label %248

322:                                              ; preds = %248
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %19, align 4
  %325 = sub nsw i32 %324, 1
  %326 = mul nsw i32 %323, %325
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %20, align 4
  %328 = load i32, i32* %16, align 4
  %329 = load i32, i32* %17, align 4
  %330 = sub nsw i32 %329, 1
  %331 = mul nsw i32 %328, %330
  %332 = add nsw i32 %331, 2
  store i32 %332, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %333

333:                                              ; preds = %371, %322
  %334 = load i32, i32* %21, align 4
  %335 = load i32, i32* %18, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %378

337:                                              ; preds = %333
  %338 = load i32*, i32** %15, align 8
  %339 = load i32, i32* %20, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 1
  store i32 %343, i32* %12, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %370

345:                                              ; preds = %337
  %346 = load i32, i32* %12, align 4
  %347 = load i32*, i32** %8, align 8
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, %346
  store i32 %352, i32* %350, align 4
  %353 = load i32, i32* %12, align 4
  %354 = ashr i32 %353, 1
  store i32 %354, i32* %12, align 4
  %355 = load i32*, i32** %8, align 8
  %356 = load i32, i32* %13, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, %354
  store i32 %361, i32* %359, align 4
  %362 = load i32, i32* %12, align 4
  %363 = load i32*, i32** %8, align 8
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %363, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %368, %362
  store i32 %369, i32* %367, align 4
  br label %370

370:                                              ; preds = %345, %337
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %20, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %20, align 4
  %374 = load i32, i32* %13, align 4
  %375 = add nsw i32 %374, 2
  store i32 %375, i32* %13, align 4
  %376 = load i32, i32* %21, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %21, align 4
  br label %333

378:                                              ; preds = %333
  %379 = load i32, i32* %18, align 4
  %380 = shl i32 %379, 1
  %381 = sub nsw i32 %380, 1
  store i32 %381, i32* %20, align 4
  %382 = load i32, i32* %23, align 4
  %383 = load i32, i32* %16, align 4
  %384 = add nsw i32 %382, %383
  %385 = sub nsw i32 %384, 1
  store i32 %385, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %386

386:                                              ; preds = %426, %378
  %387 = load i32, i32* %21, align 4
  %388 = load i32, i32* %19, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %435

390:                                              ; preds = %386
  %391 = load i32*, i32** %15, align 8
  %392 = load i32, i32* %20, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i32, i32* %391, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = ashr i32 %395, 1
  store i32 %396, i32* %12, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %425

398:                                              ; preds = %390
  %399 = load i32, i32* %12, align 4
  %400 = load i32*, i32** %8, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %400, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %399
  store i32 %405, i32* %403, align 4
  %406 = load i32, i32* %12, align 4
  %407 = ashr i32 %406, 1
  store i32 %407, i32* %12, align 4
  %408 = load i32*, i32** %8, align 8
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* %16, align 4
  %411 = sub nsw i32 %409, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %408, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, %407
  store i32 %415, i32* %413, align 4
  %416 = load i32, i32* %12, align 4
  %417 = load i32*, i32** %8, align 8
  %418 = load i32, i32* %13, align 4
  %419 = load i32, i32* %16, align 4
  %420 = add nsw i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i32, i32* %417, i64 %421
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, %416
  store i32 %424, i32* %422, align 4
  br label %425

425:                                              ; preds = %398, %390
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %18, align 4
  %428 = load i32, i32* %20, align 4
  %429 = add nsw i32 %428, %427
  store i32 %429, i32* %20, align 4
  %430 = load i32, i32* %23, align 4
  %431 = load i32, i32* %13, align 4
  %432 = add nsw i32 %431, %430
  store i32 %432, i32* %13, align 4
  %433 = load i32, i32* %21, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %21, align 4
  br label %386

435:                                              ; preds = %386
  %436 = load i32*, i32** %15, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  store i32 %438, i32* %12, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %468

440:                                              ; preds = %435
  %441 = load i32, i32* %12, align 4
  %442 = load i32*, i32** %8, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 0
  %444 = load i32, i32* %443, align 4
  %445 = add nsw i32 %444, %441
  store i32 %445, i32* %443, align 4
  %446 = load i32, i32* %12, align 4
  %447 = ashr i32 %446, 1
  store i32 %447, i32* %12, align 4
  %448 = load i32*, i32** %8, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 1
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, %447
  store i32 %451, i32* %449, align 4
  %452 = load i32, i32* %12, align 4
  %453 = load i32*, i32** %8, align 8
  %454 = load i32, i32* %16, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, %452
  store i32 %458, i32* %456, align 4
  %459 = load i32, i32* %12, align 4
  %460 = ashr i32 %459, 1
  %461 = load i32*, i32** %8, align 8
  %462 = load i32, i32* %16, align 4
  %463 = add nsw i32 %462, 1
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %461, i64 %464
  %466 = load i32, i32* %465, align 4
  %467 = add nsw i32 %466, %460
  store i32 %467, i32* %465, align 4
  br label %468

468:                                              ; preds = %440, %435
  %469 = load i32*, i32** %15, align 8
  %470 = load i32, i32* %18, align 4
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = ashr i32 %474, 1
  store i32 %475, i32* %12, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %495

477:                                              ; preds = %468
  %478 = load i32, i32* %12, align 4
  %479 = load i32*, i32** %8, align 8
  %480 = load i32, i32* %16, align 4
  %481 = sub nsw i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %479, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = add nsw i32 %484, %478
  store i32 %485, i32* %483, align 4
  %486 = load i32, i32* %12, align 4
  %487 = ashr i32 %486, 1
  %488 = load i32*, i32** %8, align 8
  %489 = load i32, i32* %23, align 4
  %490 = sub nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i32, i32* %488, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = add nsw i32 %493, %487
  store i32 %494, i32* %492, align 4
  br label %495

495:                                              ; preds = %477, %468
  %496 = load i32*, i32** %15, align 8
  %497 = load i32, i32* %18, align 4
  %498 = load i32, i32* %19, align 4
  %499 = sub nsw i32 %498, 1
  %500 = mul nsw i32 %497, %499
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds i32, i32* %496, i64 %501
  %503 = load i32, i32* %502, align 4
  %504 = ashr i32 %503, 1
  store i32 %504, i32* %12, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %529

506:                                              ; preds = %495
  %507 = load i32, i32* %12, align 4
  %508 = load i32*, i32** %8, align 8
  %509 = load i32, i32* %16, align 4
  %510 = load i32, i32* %17, align 4
  %511 = sub nsw i32 %510, 1
  %512 = mul nsw i32 %509, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i32, i32* %508, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = add nsw i32 %515, %507
  store i32 %516, i32* %514, align 4
  %517 = load i32, i32* %12, align 4
  %518 = ashr i32 %517, 1
  %519 = load i32*, i32** %8, align 8
  %520 = load i32, i32* %16, align 4
  %521 = load i32, i32* %17, align 4
  %522 = sub nsw i32 %521, 1
  %523 = mul nsw i32 %520, %522
  %524 = add nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %519, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = add nsw i32 %527, %518
  store i32 %528, i32* %526, align 4
  br label %529

529:                                              ; preds = %506, %495
  %530 = load i32*, i32** %15, align 8
  %531 = load i32, i32* %18, align 4
  %532 = load i32, i32* %19, align 4
  %533 = mul nsw i32 %531, %532
  %534 = sub nsw i32 %533, 1
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32, i32* %530, i64 %535
  %537 = load i32, i32* %536, align 4
  %538 = ashr i32 %537, 2
  %539 = load i32*, i32** %8, align 8
  %540 = load i32, i32* %16, align 4
  %541 = load i32, i32* %17, align 4
  %542 = mul nsw i32 %540, %541
  %543 = sub nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %539, i64 %544
  %546 = load i32, i32* %545, align 4
  %547 = add nsw i32 %546, %538
  store i32 %547, i32* %545, align 4
  %548 = load i32*, i32** %7, align 8
  %549 = load i32, i32* %18, align 4
  %550 = mul nsw i32 2, %549
  %551 = load i32, i32* %19, align 4
  %552 = mul nsw i32 %550, %551
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds i32, i32* %548, i64 %553
  store i32* %554, i32** %15, align 8
  %555 = load i32*, i32** %15, align 8
  %556 = load i32, i32* %18, align 4
  %557 = load i32, i32* %19, align 4
  %558 = call i32 @internal_int_transpose(i32* %555, i32 %556, i32 %557)
  %559 = load i32, i32* %18, align 4
  store i32 %559, i32* %20, align 4
  %560 = load i32, i32* %23, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %13, align 4
  store i32 1, i32* %22, align 4
  br label %562

562:                                              ; preds = %664, %529
  %563 = load i32, i32* %22, align 4
  %564 = load i32, i32* %19, align 4
  %565 = icmp slt i32 %563, %564
  br i1 %565, label %566, label %673

566:                                              ; preds = %562
  store i32 1, i32* %21, align 4
  br label %567

567:                                              ; preds = %656, %566
  %568 = load i32, i32* %21, align 4
  %569 = load i32, i32* %18, align 4
  %570 = icmp slt i32 %568, %569
  br i1 %570, label %571, label %663

571:                                              ; preds = %567
  %572 = load i32*, i32** %15, align 8
  %573 = load i32, i32* %20, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  store i32 %576, i32* %12, align 4
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %655

578:                                              ; preds = %571
  %579 = load i32, i32* %12, align 4
  %580 = load i32*, i32** %8, align 8
  %581 = load i32, i32* %13, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds i32, i32* %580, i64 %582
  %584 = load i32, i32* %583, align 4
  %585 = add nsw i32 %584, %579
  store i32 %585, i32* %583, align 4
  %586 = load i32, i32* %12, align 4
  %587 = ashr i32 %586, 1
  store i32 %587, i32* %12, align 4
  %588 = load i32*, i32** %8, align 8
  %589 = load i32, i32* %13, align 4
  %590 = sub nsw i32 %589, 1
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, i32* %588, i64 %591
  %593 = load i32, i32* %592, align 4
  %594 = sub nsw i32 %593, %587
  store i32 %594, i32* %592, align 4
  %595 = load i32, i32* %12, align 4
  %596 = load i32*, i32** %8, align 8
  %597 = load i32, i32* %13, align 4
  %598 = add nsw i32 %597, 1
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %596, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = sub nsw i32 %601, %595
  store i32 %602, i32* %600, align 4
  %603 = load i32, i32* %12, align 4
  %604 = load i32*, i32** %8, align 8
  %605 = load i32, i32* %13, align 4
  %606 = load i32, i32* %16, align 4
  %607 = sub nsw i32 %605, %606
  store i32 %607, i32* %14, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %604, i64 %608
  %610 = load i32, i32* %609, align 4
  %611 = add nsw i32 %610, %603
  store i32 %611, i32* %609, align 4
  %612 = load i32, i32* %12, align 4
  %613 = ashr i32 %612, 1
  store i32 %613, i32* %12, align 4
  %614 = load i32*, i32** %8, align 8
  %615 = load i32, i32* %14, align 4
  %616 = sub nsw i32 %615, 1
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %614, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = sub nsw i32 %619, %613
  store i32 %620, i32* %618, align 4
  %621 = load i32, i32* %12, align 4
  %622 = load i32*, i32** %8, align 8
  %623 = load i32, i32* %14, align 4
  %624 = add nsw i32 %623, 1
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, i32* %622, i64 %625
  %627 = load i32, i32* %626, align 4
  %628 = sub nsw i32 %627, %621
  store i32 %628, i32* %626, align 4
  %629 = load i32, i32* %12, align 4
  %630 = shl i32 %629, 1
  %631 = load i32*, i32** %8, align 8
  %632 = load i32, i32* %13, align 4
  %633 = load i32, i32* %16, align 4
  %634 = add nsw i32 %632, %633
  store i32 %634, i32* %14, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %631, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = add nsw i32 %637, %630
  store i32 %638, i32* %636, align 4
  %639 = load i32, i32* %12, align 4
  %640 = load i32*, i32** %8, align 8
  %641 = load i32, i32* %14, align 4
  %642 = sub nsw i32 %641, 1
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %640, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = sub nsw i32 %645, %639
  store i32 %646, i32* %644, align 4
  %647 = load i32, i32* %12, align 4
  %648 = load i32*, i32** %8, align 8
  %649 = load i32, i32* %14, align 4
  %650 = add nsw i32 %649, 1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds i32, i32* %648, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = sub nsw i32 %653, %647
  store i32 %654, i32* %652, align 4
  br label %655

655:                                              ; preds = %578, %571
  br label %656

656:                                              ; preds = %655
  %657 = load i32, i32* %20, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %20, align 4
  %659 = load i32, i32* %13, align 4
  %660 = add nsw i32 %659, 2
  store i32 %660, i32* %13, align 4
  %661 = load i32, i32* %21, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %21, align 4
  br label %567

663:                                              ; preds = %567
  br label %664

664:                                              ; preds = %663
  %665 = load i32, i32* %20, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %20, align 4
  %667 = load i32, i32* %16, align 4
  %668 = add nsw i32 %667, 2
  %669 = load i32, i32* %13, align 4
  %670 = add nsw i32 %669, %668
  store i32 %670, i32* %13, align 4
  %671 = load i32, i32* %22, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %22, align 4
  br label %562

673:                                              ; preds = %562
  store i32 0, i32* %20, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %674

674:                                              ; preds = %737, %673
  %675 = load i32, i32* %21, align 4
  %676 = load i32, i32* %18, align 4
  %677 = icmp slt i32 %675, %676
  br i1 %677, label %678, label %744

678:                                              ; preds = %674
  %679 = load i32*, i32** %15, align 8
  %680 = load i32, i32* %20, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds i32, i32* %679, i64 %681
  %683 = load i32, i32* %682, align 4
  store i32 %683, i32* %12, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %736

685:                                              ; preds = %678
  %686 = load i32, i32* %12, align 4
  %687 = load i32*, i32** %8, align 8
  %688 = load i32, i32* %13, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds i32, i32* %687, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = add nsw i32 %691, %686
  store i32 %692, i32* %690, align 4
  %693 = load i32, i32* %12, align 4
  %694 = ashr i32 %693, 1
  store i32 %694, i32* %12, align 4
  %695 = load i32*, i32** %8, align 8
  %696 = load i32, i32* %13, align 4
  %697 = sub nsw i32 %696, 1
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds i32, i32* %695, i64 %698
  %700 = load i32, i32* %699, align 4
  %701 = sub nsw i32 %700, %694
  store i32 %701, i32* %699, align 4
  %702 = load i32, i32* %12, align 4
  %703 = load i32*, i32** %8, align 8
  %704 = load i32, i32* %13, align 4
  %705 = add nsw i32 %704, 1
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %703, i64 %706
  %708 = load i32, i32* %707, align 4
  %709 = sub nsw i32 %708, %702
  store i32 %709, i32* %707, align 4
  %710 = load i32, i32* %12, align 4
  %711 = load i32*, i32** %8, align 8
  %712 = load i32, i32* %13, align 4
  %713 = load i32, i32* %16, align 4
  %714 = add nsw i32 %712, %713
  store i32 %714, i32* %14, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds i32, i32* %711, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = add nsw i32 %717, %710
  store i32 %718, i32* %716, align 4
  %719 = load i32, i32* %12, align 4
  %720 = ashr i32 %719, 1
  store i32 %720, i32* %12, align 4
  %721 = load i32*, i32** %8, align 8
  %722 = load i32, i32* %14, align 4
  %723 = sub nsw i32 %722, 1
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds i32, i32* %721, i64 %724
  %726 = load i32, i32* %725, align 4
  %727 = sub nsw i32 %726, %720
  store i32 %727, i32* %725, align 4
  %728 = load i32, i32* %12, align 4
  %729 = load i32*, i32** %8, align 8
  %730 = load i32, i32* %14, align 4
  %731 = add nsw i32 %730, 1
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds i32, i32* %729, i64 %732
  %734 = load i32, i32* %733, align 4
  %735 = sub nsw i32 %734, %728
  store i32 %735, i32* %733, align 4
  br label %736

736:                                              ; preds = %685, %678
  br label %737

737:                                              ; preds = %736
  %738 = load i32, i32* %20, align 4
  %739 = add nsw i32 %738, 1
  store i32 %739, i32* %20, align 4
  %740 = load i32, i32* %13, align 4
  %741 = add nsw i32 %740, 2
  store i32 %741, i32* %13, align 4
  %742 = load i32, i32* %21, align 4
  %743 = add nsw i32 %742, 1
  store i32 %743, i32* %21, align 4
  br label %674

744:                                              ; preds = %674
  %745 = load i32, i32* %18, align 4
  %746 = shl i32 %745, 1
  %747 = sub nsw i32 %746, 1
  store i32 %747, i32* %20, align 4
  %748 = load i32, i32* %23, align 4
  %749 = load i32, i32* %16, align 4
  %750 = add nsw i32 %748, %749
  %751 = sub nsw i32 %750, 1
  store i32 %751, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %752

752:                                              ; preds = %817, %744
  %753 = load i32, i32* %21, align 4
  %754 = load i32, i32* %19, align 4
  %755 = icmp slt i32 %753, %754
  br i1 %755, label %756, label %826

756:                                              ; preds = %752
  %757 = load i32*, i32** %15, align 8
  %758 = load i32, i32* %20, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32, i32* %757, i64 %759
  %761 = load i32, i32* %760, align 4
  store i32 %761, i32* %12, align 4
  %762 = icmp ne i32 %761, 0
  br i1 %762, label %763, label %816

763:                                              ; preds = %756
  %764 = load i32, i32* %12, align 4
  %765 = load i32*, i32** %8, align 8
  %766 = load i32, i32* %13, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds i32, i32* %765, i64 %767
  %769 = load i32, i32* %768, align 4
  %770 = add nsw i32 %769, %764
  store i32 %770, i32* %768, align 4
  %771 = load i32, i32* %12, align 4
  %772 = ashr i32 %771, 1
  store i32 %772, i32* %12, align 4
  %773 = load i32*, i32** %8, align 8
  %774 = load i32, i32* %13, align 4
  %775 = sub nsw i32 %774, 1
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i32, i32* %773, i64 %776
  %778 = load i32, i32* %777, align 4
  %779 = sub nsw i32 %778, %772
  store i32 %779, i32* %777, align 4
  %780 = load i32, i32* %12, align 4
  %781 = load i32*, i32** %8, align 8
  %782 = load i32, i32* %13, align 4
  %783 = load i32, i32* %16, align 4
  %784 = sub nsw i32 %782, %783
  store i32 %784, i32* %14, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i32, i32* %781, i64 %785
  %787 = load i32, i32* %786, align 4
  %788 = add nsw i32 %787, %780
  store i32 %788, i32* %786, align 4
  %789 = load i32, i32* %12, align 4
  %790 = ashr i32 %789, 1
  %791 = load i32*, i32** %8, align 8
  %792 = load i32, i32* %14, align 4
  %793 = sub nsw i32 %792, 1
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i32, i32* %791, i64 %794
  %796 = load i32, i32* %795, align 4
  %797 = sub nsw i32 %796, %790
  store i32 %797, i32* %795, align 4
  %798 = load i32, i32* %12, align 4
  %799 = load i32*, i32** %8, align 8
  %800 = load i32, i32* %13, align 4
  %801 = load i32, i32* %16, align 4
  %802 = add nsw i32 %800, %801
  store i32 %802, i32* %14, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i32, i32* %799, i64 %803
  %805 = load i32, i32* %804, align 4
  %806 = add nsw i32 %805, %798
  store i32 %806, i32* %804, align 4
  %807 = load i32, i32* %12, align 4
  %808 = ashr i32 %807, 1
  %809 = load i32*, i32** %8, align 8
  %810 = load i32, i32* %14, align 4
  %811 = sub nsw i32 %810, 1
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, i32* %809, i64 %812
  %814 = load i32, i32* %813, align 4
  %815 = sub nsw i32 %814, %808
  store i32 %815, i32* %813, align 4
  br label %816

816:                                              ; preds = %763, %756
  br label %817

817:                                              ; preds = %816
  %818 = load i32, i32* %18, align 4
  %819 = load i32, i32* %20, align 4
  %820 = add nsw i32 %819, %818
  store i32 %820, i32* %20, align 4
  %821 = load i32, i32* %23, align 4
  %822 = load i32, i32* %13, align 4
  %823 = add nsw i32 %822, %821
  store i32 %823, i32* %13, align 4
  %824 = load i32, i32* %21, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, i32* %21, align 4
  br label %752

826:                                              ; preds = %752
  %827 = load i32, i32* %18, align 4
  %828 = load i32, i32* %19, align 4
  %829 = sub nsw i32 %828, 1
  %830 = mul nsw i32 %827, %829
  store i32 %830, i32* %20, align 4
  %831 = load i32, i32* %16, align 4
  %832 = load i32, i32* %17, align 4
  %833 = sub nsw i32 %832, 1
  %834 = mul nsw i32 %831, %833
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %836

836:                                              ; preds = %874, %826
  %837 = load i32, i32* %21, align 4
  %838 = load i32, i32* %18, align 4
  %839 = icmp slt i32 %837, %838
  br i1 %839, label %840, label %881

840:                                              ; preds = %836
  %841 = load i32*, i32** %15, align 8
  %842 = load i32, i32* %20, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds i32, i32* %841, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = ashr i32 %845, 1
  store i32 %846, i32* %12, align 4
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %873

848:                                              ; preds = %840
  %849 = load i32, i32* %12, align 4
  %850 = load i32*, i32** %8, align 8
  %851 = load i32, i32* %13, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32, i32* %850, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = add nsw i32 %854, %849
  store i32 %855, i32* %853, align 4
  %856 = load i32, i32* %12, align 4
  %857 = ashr i32 %856, 1
  store i32 %857, i32* %12, align 4
  %858 = load i32*, i32** %8, align 8
  %859 = load i32, i32* %13, align 4
  %860 = sub nsw i32 %859, 1
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i32, i32* %858, i64 %861
  %863 = load i32, i32* %862, align 4
  %864 = sub nsw i32 %863, %857
  store i32 %864, i32* %862, align 4
  %865 = load i32, i32* %12, align 4
  %866 = load i32*, i32** %8, align 8
  %867 = load i32, i32* %13, align 4
  %868 = add nsw i32 %867, 1
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i32, i32* %866, i64 %869
  %871 = load i32, i32* %870, align 4
  %872 = sub nsw i32 %871, %865
  store i32 %872, i32* %870, align 4
  br label %873

873:                                              ; preds = %848, %840
  br label %874

874:                                              ; preds = %873
  %875 = load i32, i32* %20, align 4
  %876 = add nsw i32 %875, 1
  store i32 %876, i32* %20, align 4
  %877 = load i32, i32* %13, align 4
  %878 = add nsw i32 %877, 2
  store i32 %878, i32* %13, align 4
  %879 = load i32, i32* %21, align 4
  %880 = add nsw i32 %879, 1
  store i32 %880, i32* %21, align 4
  br label %836

881:                                              ; preds = %836
  %882 = load i32, i32* %18, align 4
  store i32 %882, i32* %20, align 4
  %883 = load i32, i32* %23, align 4
  store i32 %883, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %884

884:                                              ; preds = %926, %881
  %885 = load i32, i32* %21, align 4
  %886 = load i32, i32* %19, align 4
  %887 = icmp slt i32 %885, %886
  br i1 %887, label %888, label %935

888:                                              ; preds = %884
  %889 = load i32*, i32** %15, align 8
  %890 = load i32, i32* %20, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds i32, i32* %889, i64 %891
  %893 = load i32, i32* %892, align 4
  %894 = ashr i32 %893, 1
  %895 = sub nsw i32 0, %894
  store i32 %895, i32* %12, align 4
  %896 = load i32, i32* %12, align 4
  %897 = icmp ne i32 %896, 0
  br i1 %897, label %898, label %925

898:                                              ; preds = %888
  %899 = load i32, i32* %12, align 4
  %900 = load i32*, i32** %8, align 8
  %901 = load i32, i32* %13, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i32, i32* %900, i64 %902
  %904 = load i32, i32* %903, align 4
  %905 = add nsw i32 %904, %899
  store i32 %905, i32* %903, align 4
  %906 = load i32, i32* %12, align 4
  %907 = ashr i32 %906, 1
  store i32 %907, i32* %12, align 4
  %908 = load i32*, i32** %8, align 8
  %909 = load i32, i32* %13, align 4
  %910 = load i32, i32* %16, align 4
  %911 = sub nsw i32 %909, %910
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds i32, i32* %908, i64 %912
  %914 = load i32, i32* %913, align 4
  %915 = add nsw i32 %914, %907
  store i32 %915, i32* %913, align 4
  %916 = load i32, i32* %12, align 4
  %917 = load i32*, i32** %8, align 8
  %918 = load i32, i32* %13, align 4
  %919 = load i32, i32* %16, align 4
  %920 = add nsw i32 %918, %919
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds i32, i32* %917, i64 %921
  %923 = load i32, i32* %922, align 4
  %924 = add nsw i32 %923, %916
  store i32 %924, i32* %922, align 4
  br label %925

925:                                              ; preds = %898, %888
  br label %926

926:                                              ; preds = %925
  %927 = load i32, i32* %18, align 4
  %928 = load i32, i32* %20, align 4
  %929 = add nsw i32 %928, %927
  store i32 %929, i32* %20, align 4
  %930 = load i32, i32* %23, align 4
  %931 = load i32, i32* %13, align 4
  %932 = add nsw i32 %931, %930
  store i32 %932, i32* %13, align 4
  %933 = load i32, i32* %21, align 4
  %934 = add nsw i32 %933, 1
  store i32 %934, i32* %21, align 4
  br label %884

935:                                              ; preds = %884
  %936 = load i32*, i32** %15, align 8
  %937 = getelementptr inbounds i32, i32* %936, i64 0
  %938 = load i32, i32* %937, align 4
  %939 = ashr i32 %938, 1
  %940 = sub nsw i32 0, %939
  store i32 %940, i32* %12, align 4
  %941 = icmp ne i32 %940, 0
  br i1 %941, label %942, label %956

942:                                              ; preds = %935
  %943 = load i32, i32* %12, align 4
  %944 = load i32*, i32** %8, align 8
  %945 = getelementptr inbounds i32, i32* %944, i64 0
  %946 = load i32, i32* %945, align 4
  %947 = add nsw i32 %946, %943
  store i32 %947, i32* %945, align 4
  %948 = load i32, i32* %12, align 4
  %949 = ashr i32 %948, 1
  %950 = load i32*, i32** %8, align 8
  %951 = load i32, i32* %16, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds i32, i32* %950, i64 %952
  %954 = load i32, i32* %953, align 4
  %955 = add nsw i32 %954, %949
  store i32 %955, i32* %953, align 4
  br label %956

956:                                              ; preds = %942, %935
  %957 = load i32*, i32** %15, align 8
  %958 = load i32, i32* %18, align 4
  %959 = sub nsw i32 %958, 1
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds i32, i32* %957, i64 %960
  %962 = load i32, i32* %961, align 4
  store i32 %962, i32* %12, align 4
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %964, label %999

964:                                              ; preds = %956
  %965 = load i32, i32* %12, align 4
  %966 = load i32*, i32** %8, align 8
  %967 = load i32, i32* %16, align 4
  %968 = sub nsw i32 %967, 1
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds i32, i32* %966, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = add nsw i32 %971, %965
  store i32 %972, i32* %970, align 4
  %973 = load i32, i32* %12, align 4
  %974 = ashr i32 %973, 1
  store i32 %974, i32* %12, align 4
  %975 = load i32*, i32** %8, align 8
  %976 = load i32, i32* %16, align 4
  %977 = sub nsw i32 %976, 2
  %978 = sext i32 %977 to i64
  %979 = getelementptr inbounds i32, i32* %975, i64 %978
  %980 = load i32, i32* %979, align 4
  %981 = sub nsw i32 %980, %974
  store i32 %981, i32* %979, align 4
  %982 = load i32, i32* %12, align 4
  %983 = load i32*, i32** %8, align 8
  %984 = load i32, i32* %23, align 4
  %985 = sub nsw i32 %984, 1
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds i32, i32* %983, i64 %986
  %988 = load i32, i32* %987, align 4
  %989 = add nsw i32 %988, %982
  store i32 %989, i32* %987, align 4
  %990 = load i32, i32* %12, align 4
  %991 = ashr i32 %990, 1
  %992 = load i32*, i32** %8, align 8
  %993 = load i32, i32* %23, align 4
  %994 = sub nsw i32 %993, 2
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds i32, i32* %992, i64 %995
  %997 = load i32, i32* %996, align 4
  %998 = sub nsw i32 %997, %991
  store i32 %998, i32* %996, align 4
  br label %999

999:                                              ; preds = %964, %956
  %1000 = load i32*, i32** %15, align 8
  %1001 = load i32, i32* %18, align 4
  %1002 = load i32, i32* %19, align 4
  %1003 = sub nsw i32 %1002, 1
  %1004 = mul nsw i32 %1001, %1003
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds i32, i32* %1000, i64 %1005
  %1007 = load i32, i32* %1006, align 4
  %1008 = ashr i32 %1007, 2
  %1009 = load i32*, i32** %8, align 8
  %1010 = load i32, i32* %16, align 4
  %1011 = load i32, i32* %17, align 4
  %1012 = sub nsw i32 %1011, 1
  %1013 = mul nsw i32 %1010, %1012
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i32, i32* %1009, i64 %1014
  %1016 = load i32, i32* %1015, align 4
  %1017 = sub nsw i32 %1016, %1008
  store i32 %1017, i32* %1015, align 4
  %1018 = load i32*, i32** %15, align 8
  %1019 = load i32, i32* %18, align 4
  %1020 = load i32, i32* %19, align 4
  %1021 = mul nsw i32 %1019, %1020
  %1022 = sub nsw i32 %1021, 1
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds i32, i32* %1018, i64 %1023
  %1025 = load i32, i32* %1024, align 4
  %1026 = ashr i32 %1025, 1
  store i32 %1026, i32* %12, align 4
  %1027 = icmp ne i32 %1026, 0
  br i1 %1027, label %1028, label %1050

1028:                                             ; preds = %999
  %1029 = load i32, i32* %12, align 4
  %1030 = load i32*, i32** %8, align 8
  %1031 = load i32, i32* %16, align 4
  %1032 = load i32, i32* %17, align 4
  %1033 = mul nsw i32 %1031, %1032
  %1034 = sub nsw i32 %1033, 1
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds i32, i32* %1030, i64 %1035
  %1037 = load i32, i32* %1036, align 4
  %1038 = add nsw i32 %1037, %1029
  store i32 %1038, i32* %1036, align 4
  %1039 = load i32, i32* %12, align 4
  %1040 = ashr i32 %1039, 1
  %1041 = load i32*, i32** %8, align 8
  %1042 = load i32, i32* %16, align 4
  %1043 = load i32, i32* %17, align 4
  %1044 = mul nsw i32 %1042, %1043
  %1045 = sub nsw i32 %1044, 2
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds i32, i32* %1041, i64 %1046
  %1048 = load i32, i32* %1047, align 4
  %1049 = sub nsw i32 %1048, %1040
  store i32 %1049, i32* %1047, align 4
  br label %1050

1050:                                             ; preds = %1028, %999
  %1051 = load i32*, i32** %7, align 8
  %1052 = load i32, i32* %18, align 4
  %1053 = load i32, i32* %19, align 4
  %1054 = mul nsw i32 %1052, %1053
  %1055 = sext i32 %1054 to i64
  %1056 = getelementptr inbounds i32, i32* %1051, i64 %1055
  store i32* %1056, i32** %15, align 8
  store i32 1, i32* %20, align 4
  %1057 = load i32, i32* %16, align 4
  %1058 = add nsw i32 %1057, 2
  store i32 %1058, i32* %13, align 4
  store i32 1, i32* %22, align 4
  br label %1059

1059:                                             ; preds = %1161, %1050
  %1060 = load i32, i32* %22, align 4
  %1061 = load i32, i32* %19, align 4
  %1062 = icmp slt i32 %1060, %1061
  br i1 %1062, label %1063, label %1170

1063:                                             ; preds = %1059
  store i32 1, i32* %21, align 4
  br label %1064

1064:                                             ; preds = %1153, %1063
  %1065 = load i32, i32* %21, align 4
  %1066 = load i32, i32* %18, align 4
  %1067 = icmp slt i32 %1065, %1066
  br i1 %1067, label %1068, label %1160

1068:                                             ; preds = %1064
  %1069 = load i32*, i32** %15, align 8
  %1070 = load i32, i32* %20, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i32, i32* %1069, i64 %1071
  %1073 = load i32, i32* %1072, align 4
  store i32 %1073, i32* %12, align 4
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1075, label %1152

1075:                                             ; preds = %1068
  %1076 = load i32, i32* %12, align 4
  %1077 = load i32*, i32** %8, align 8
  %1078 = load i32, i32* %13, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds i32, i32* %1077, i64 %1079
  %1081 = load i32, i32* %1080, align 4
  %1082 = add nsw i32 %1081, %1076
  store i32 %1082, i32* %1080, align 4
  %1083 = load i32, i32* %12, align 4
  %1084 = ashr i32 %1083, 1
  store i32 %1084, i32* %12, align 4
  %1085 = load i32*, i32** %8, align 8
  %1086 = load i32, i32* %13, align 4
  %1087 = sub nsw i32 %1086, 1
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds i32, i32* %1085, i64 %1088
  %1090 = load i32, i32* %1089, align 4
  %1091 = add nsw i32 %1090, %1084
  store i32 %1091, i32* %1089, align 4
  %1092 = load i32, i32* %12, align 4
  %1093 = load i32*, i32** %8, align 8
  %1094 = load i32, i32* %13, align 4
  %1095 = add nsw i32 %1094, 1
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32, i32* %1093, i64 %1096
  %1098 = load i32, i32* %1097, align 4
  %1099 = add nsw i32 %1098, %1092
  store i32 %1099, i32* %1097, align 4
  %1100 = load i32, i32* %12, align 4
  %1101 = load i32*, i32** %8, align 8
  %1102 = load i32, i32* %13, align 4
  %1103 = load i32, i32* %16, align 4
  %1104 = sub nsw i32 %1102, %1103
  store i32 %1104, i32* %14, align 4
  %1105 = sext i32 %1104 to i64
  %1106 = getelementptr inbounds i32, i32* %1101, i64 %1105
  %1107 = load i32, i32* %1106, align 4
  %1108 = sub nsw i32 %1107, %1100
  store i32 %1108, i32* %1106, align 4
  %1109 = load i32, i32* %12, align 4
  %1110 = ashr i32 %1109, 1
  store i32 %1110, i32* %12, align 4
  %1111 = load i32*, i32** %8, align 8
  %1112 = load i32, i32* %14, align 4
  %1113 = sub nsw i32 %1112, 1
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds i32, i32* %1111, i64 %1114
  %1116 = load i32, i32* %1115, align 4
  %1117 = sub nsw i32 %1116, %1110
  store i32 %1117, i32* %1115, align 4
  %1118 = load i32, i32* %12, align 4
  %1119 = load i32*, i32** %8, align 8
  %1120 = load i32, i32* %14, align 4
  %1121 = add nsw i32 %1120, 1
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds i32, i32* %1119, i64 %1122
  %1124 = load i32, i32* %1123, align 4
  %1125 = sub nsw i32 %1124, %1118
  store i32 %1125, i32* %1123, align 4
  %1126 = load i32, i32* %12, align 4
  %1127 = shl i32 %1126, 1
  %1128 = load i32*, i32** %8, align 8
  %1129 = load i32, i32* %13, align 4
  %1130 = load i32, i32* %16, align 4
  %1131 = add nsw i32 %1129, %1130
  store i32 %1131, i32* %14, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds i32, i32* %1128, i64 %1132
  %1134 = load i32, i32* %1133, align 4
  %1135 = sub nsw i32 %1134, %1127
  store i32 %1135, i32* %1133, align 4
  %1136 = load i32, i32* %12, align 4
  %1137 = load i32*, i32** %8, align 8
  %1138 = load i32, i32* %14, align 4
  %1139 = sub nsw i32 %1138, 1
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds i32, i32* %1137, i64 %1140
  %1142 = load i32, i32* %1141, align 4
  %1143 = sub nsw i32 %1142, %1136
  store i32 %1143, i32* %1141, align 4
  %1144 = load i32, i32* %12, align 4
  %1145 = load i32*, i32** %8, align 8
  %1146 = load i32, i32* %14, align 4
  %1147 = add nsw i32 %1146, 1
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds i32, i32* %1145, i64 %1148
  %1150 = load i32, i32* %1149, align 4
  %1151 = sub nsw i32 %1150, %1144
  store i32 %1151, i32* %1149, align 4
  br label %1152

1152:                                             ; preds = %1075, %1068
  br label %1153

1153:                                             ; preds = %1152
  %1154 = load i32, i32* %20, align 4
  %1155 = add nsw i32 %1154, 1
  store i32 %1155, i32* %20, align 4
  %1156 = load i32, i32* %13, align 4
  %1157 = add nsw i32 %1156, 2
  store i32 %1157, i32* %13, align 4
  %1158 = load i32, i32* %21, align 4
  %1159 = add nsw i32 %1158, 1
  store i32 %1159, i32* %21, align 4
  br label %1064

1160:                                             ; preds = %1064
  br label %1161

1161:                                             ; preds = %1160
  %1162 = load i32, i32* %20, align 4
  %1163 = add nsw i32 %1162, 1
  store i32 %1163, i32* %20, align 4
  %1164 = load i32, i32* %16, align 4
  %1165 = add nsw i32 %1164, 2
  %1166 = load i32, i32* %13, align 4
  %1167 = add nsw i32 %1166, %1165
  store i32 %1167, i32* %13, align 4
  %1168 = load i32, i32* %22, align 4
  %1169 = add nsw i32 %1168, 1
  store i32 %1169, i32* %22, align 4
  br label %1059

1170:                                             ; preds = %1059
  store i32 1, i32* %20, align 4
  store i32 2, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1171

1171:                                             ; preds = %1210, %1170
  %1172 = load i32, i32* %21, align 4
  %1173 = load i32, i32* %18, align 4
  %1174 = icmp slt i32 %1172, %1173
  br i1 %1174, label %1175, label %1217

1175:                                             ; preds = %1171
  %1176 = load i32*, i32** %15, align 8
  %1177 = load i32, i32* %20, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds i32, i32* %1176, i64 %1178
  %1180 = load i32, i32* %1179, align 4
  %1181 = ashr i32 %1180, 1
  %1182 = sub nsw i32 0, %1181
  store i32 %1182, i32* %12, align 4
  %1183 = icmp ne i32 %1182, 0
  br i1 %1183, label %1184, label %1209

1184:                                             ; preds = %1175
  %1185 = load i32, i32* %12, align 4
  %1186 = load i32*, i32** %8, align 8
  %1187 = load i32, i32* %13, align 4
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds i32, i32* %1186, i64 %1188
  %1190 = load i32, i32* %1189, align 4
  %1191 = add nsw i32 %1190, %1185
  store i32 %1191, i32* %1189, align 4
  %1192 = load i32, i32* %12, align 4
  %1193 = ashr i32 %1192, 1
  store i32 %1193, i32* %12, align 4
  %1194 = load i32*, i32** %8, align 8
  %1195 = load i32, i32* %13, align 4
  %1196 = sub nsw i32 %1195, 1
  %1197 = sext i32 %1196 to i64
  %1198 = getelementptr inbounds i32, i32* %1194, i64 %1197
  %1199 = load i32, i32* %1198, align 4
  %1200 = add nsw i32 %1199, %1193
  store i32 %1200, i32* %1198, align 4
  %1201 = load i32, i32* %12, align 4
  %1202 = load i32*, i32** %8, align 8
  %1203 = load i32, i32* %13, align 4
  %1204 = add nsw i32 %1203, 1
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds i32, i32* %1202, i64 %1205
  %1207 = load i32, i32* %1206, align 4
  %1208 = add nsw i32 %1207, %1201
  store i32 %1208, i32* %1206, align 4
  br label %1209

1209:                                             ; preds = %1184, %1175
  br label %1210

1210:                                             ; preds = %1209
  %1211 = load i32, i32* %20, align 4
  %1212 = add nsw i32 %1211, 1
  store i32 %1212, i32* %20, align 4
  %1213 = load i32, i32* %13, align 4
  %1214 = add nsw i32 %1213, 2
  store i32 %1214, i32* %13, align 4
  %1215 = load i32, i32* %21, align 4
  %1216 = add nsw i32 %1215, 1
  store i32 %1216, i32* %21, align 4
  br label %1171

1217:                                             ; preds = %1171
  store i32 0, i32* %20, align 4
  %1218 = load i32, i32* %16, align 4
  store i32 %1218, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1219

1219:                                             ; preds = %1284, %1217
  %1220 = load i32, i32* %21, align 4
  %1221 = load i32, i32* %19, align 4
  %1222 = icmp slt i32 %1220, %1221
  br i1 %1222, label %1223, label %1293

1223:                                             ; preds = %1219
  %1224 = load i32*, i32** %15, align 8
  %1225 = load i32, i32* %20, align 4
  %1226 = sext i32 %1225 to i64
  %1227 = getelementptr inbounds i32, i32* %1224, i64 %1226
  %1228 = load i32, i32* %1227, align 4
  store i32 %1228, i32* %12, align 4
  %1229 = icmp ne i32 %1228, 0
  br i1 %1229, label %1230, label %1283

1230:                                             ; preds = %1223
  %1231 = load i32, i32* %12, align 4
  %1232 = load i32*, i32** %8, align 8
  %1233 = load i32, i32* %13, align 4
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds i32, i32* %1232, i64 %1234
  %1236 = load i32, i32* %1235, align 4
  %1237 = add nsw i32 %1236, %1231
  store i32 %1237, i32* %1235, align 4
  %1238 = load i32, i32* %12, align 4
  %1239 = ashr i32 %1238, 1
  store i32 %1239, i32* %12, align 4
  %1240 = load i32*, i32** %8, align 8
  %1241 = load i32, i32* %13, align 4
  %1242 = add nsw i32 %1241, 1
  %1243 = sext i32 %1242 to i64
  %1244 = getelementptr inbounds i32, i32* %1240, i64 %1243
  %1245 = load i32, i32* %1244, align 4
  %1246 = add nsw i32 %1245, %1239
  store i32 %1246, i32* %1244, align 4
  %1247 = load i32, i32* %12, align 4
  %1248 = load i32*, i32** %8, align 8
  %1249 = load i32, i32* %13, align 4
  %1250 = load i32, i32* %16, align 4
  %1251 = sub nsw i32 %1249, %1250
  store i32 %1251, i32* %14, align 4
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds i32, i32* %1248, i64 %1252
  %1254 = load i32, i32* %1253, align 4
  %1255 = sub nsw i32 %1254, %1247
  store i32 %1255, i32* %1253, align 4
  %1256 = load i32, i32* %12, align 4
  %1257 = ashr i32 %1256, 1
  %1258 = load i32*, i32** %8, align 8
  %1259 = load i32, i32* %14, align 4
  %1260 = add nsw i32 %1259, 1
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds i32, i32* %1258, i64 %1261
  %1263 = load i32, i32* %1262, align 4
  %1264 = sub nsw i32 %1263, %1257
  store i32 %1264, i32* %1262, align 4
  %1265 = load i32, i32* %12, align 4
  %1266 = load i32*, i32** %8, align 8
  %1267 = load i32, i32* %13, align 4
  %1268 = load i32, i32* %16, align 4
  %1269 = add nsw i32 %1267, %1268
  store i32 %1269, i32* %14, align 4
  %1270 = sext i32 %1269 to i64
  %1271 = getelementptr inbounds i32, i32* %1266, i64 %1270
  %1272 = load i32, i32* %1271, align 4
  %1273 = sub nsw i32 %1272, %1265
  store i32 %1273, i32* %1271, align 4
  %1274 = load i32, i32* %12, align 4
  %1275 = ashr i32 %1274, 1
  %1276 = load i32*, i32** %8, align 8
  %1277 = load i32, i32* %14, align 4
  %1278 = add nsw i32 %1277, 1
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds i32, i32* %1276, i64 %1279
  %1281 = load i32, i32* %1280, align 4
  %1282 = sub nsw i32 %1281, %1275
  store i32 %1282, i32* %1280, align 4
  br label %1283

1283:                                             ; preds = %1230, %1223
  br label %1284

1284:                                             ; preds = %1283
  %1285 = load i32, i32* %18, align 4
  %1286 = load i32, i32* %20, align 4
  %1287 = add nsw i32 %1286, %1285
  store i32 %1287, i32* %20, align 4
  %1288 = load i32, i32* %23, align 4
  %1289 = load i32, i32* %13, align 4
  %1290 = add nsw i32 %1289, %1288
  store i32 %1290, i32* %13, align 4
  %1291 = load i32, i32* %21, align 4
  %1292 = add nsw i32 %1291, 1
  store i32 %1292, i32* %21, align 4
  br label %1219

1293:                                             ; preds = %1219
  %1294 = load i32, i32* %18, align 4
  %1295 = load i32, i32* %19, align 4
  %1296 = sub nsw i32 %1295, 1
  %1297 = mul nsw i32 %1294, %1296
  %1298 = add nsw i32 %1297, 1
  store i32 %1298, i32* %20, align 4
  %1299 = load i32, i32* %16, align 4
  %1300 = load i32, i32* %17, align 4
  %1301 = sub nsw i32 %1300, 1
  %1302 = mul nsw i32 %1299, %1301
  %1303 = add nsw i32 %1302, 2
  store i32 %1303, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1304

1304:                                             ; preds = %1367, %1293
  %1305 = load i32, i32* %21, align 4
  %1306 = load i32, i32* %18, align 4
  %1307 = icmp slt i32 %1305, %1306
  br i1 %1307, label %1308, label %1374

1308:                                             ; preds = %1304
  %1309 = load i32*, i32** %15, align 8
  %1310 = load i32, i32* %20, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds i32, i32* %1309, i64 %1311
  %1313 = load i32, i32* %1312, align 4
  store i32 %1313, i32* %12, align 4
  %1314 = icmp ne i32 %1313, 0
  br i1 %1314, label %1315, label %1366

1315:                                             ; preds = %1308
  %1316 = load i32, i32* %12, align 4
  %1317 = load i32*, i32** %8, align 8
  %1318 = load i32, i32* %13, align 4
  %1319 = sext i32 %1318 to i64
  %1320 = getelementptr inbounds i32, i32* %1317, i64 %1319
  %1321 = load i32, i32* %1320, align 4
  %1322 = add nsw i32 %1321, %1316
  store i32 %1322, i32* %1320, align 4
  %1323 = load i32, i32* %12, align 4
  %1324 = ashr i32 %1323, 1
  store i32 %1324, i32* %12, align 4
  %1325 = load i32*, i32** %8, align 8
  %1326 = load i32, i32* %13, align 4
  %1327 = sub nsw i32 %1326, 1
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds i32, i32* %1325, i64 %1328
  %1330 = load i32, i32* %1329, align 4
  %1331 = add nsw i32 %1330, %1324
  store i32 %1331, i32* %1329, align 4
  %1332 = load i32, i32* %12, align 4
  %1333 = load i32*, i32** %8, align 8
  %1334 = load i32, i32* %13, align 4
  %1335 = add nsw i32 %1334, 1
  %1336 = sext i32 %1335 to i64
  %1337 = getelementptr inbounds i32, i32* %1333, i64 %1336
  %1338 = load i32, i32* %1337, align 4
  %1339 = add nsw i32 %1338, %1332
  store i32 %1339, i32* %1337, align 4
  %1340 = load i32, i32* %12, align 4
  %1341 = load i32*, i32** %8, align 8
  %1342 = load i32, i32* %13, align 4
  %1343 = load i32, i32* %16, align 4
  %1344 = sub nsw i32 %1342, %1343
  store i32 %1344, i32* %14, align 4
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds i32, i32* %1341, i64 %1345
  %1347 = load i32, i32* %1346, align 4
  %1348 = sub nsw i32 %1347, %1340
  store i32 %1348, i32* %1346, align 4
  %1349 = load i32, i32* %12, align 4
  %1350 = ashr i32 %1349, 1
  store i32 %1350, i32* %12, align 4
  %1351 = load i32*, i32** %8, align 8
  %1352 = load i32, i32* %14, align 4
  %1353 = add nsw i32 %1352, 1
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds i32, i32* %1351, i64 %1354
  %1356 = load i32, i32* %1355, align 4
  %1357 = sub nsw i32 %1356, %1350
  store i32 %1357, i32* %1355, align 4
  %1358 = load i32, i32* %12, align 4
  %1359 = load i32*, i32** %8, align 8
  %1360 = load i32, i32* %14, align 4
  %1361 = sub nsw i32 %1360, 1
  %1362 = sext i32 %1361 to i64
  %1363 = getelementptr inbounds i32, i32* %1359, i64 %1362
  %1364 = load i32, i32* %1363, align 4
  %1365 = sub nsw i32 %1364, %1358
  store i32 %1365, i32* %1363, align 4
  br label %1366

1366:                                             ; preds = %1315, %1308
  br label %1367

1367:                                             ; preds = %1366
  %1368 = load i32, i32* %20, align 4
  %1369 = add nsw i32 %1368, 1
  store i32 %1369, i32* %20, align 4
  %1370 = load i32, i32* %13, align 4
  %1371 = add nsw i32 %1370, 2
  store i32 %1371, i32* %13, align 4
  %1372 = load i32, i32* %21, align 4
  %1373 = add nsw i32 %1372, 1
  store i32 %1373, i32* %21, align 4
  br label %1304

1374:                                             ; preds = %1304
  %1375 = load i32, i32* %18, align 4
  %1376 = sub nsw i32 %1375, 1
  store i32 %1376, i32* %20, align 4
  %1377 = load i32, i32* %23, align 4
  %1378 = sub nsw i32 %1377, 1
  store i32 %1378, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1379

1379:                                             ; preds = %1419, %1374
  %1380 = load i32, i32* %21, align 4
  %1381 = load i32, i32* %19, align 4
  %1382 = icmp slt i32 %1380, %1381
  br i1 %1382, label %1383, label %1428

1383:                                             ; preds = %1379
  %1384 = load i32*, i32** %15, align 8
  %1385 = load i32, i32* %20, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = getelementptr inbounds i32, i32* %1384, i64 %1386
  %1388 = load i32, i32* %1387, align 4
  %1389 = ashr i32 %1388, 1
  store i32 %1389, i32* %12, align 4
  %1390 = icmp ne i32 %1389, 0
  br i1 %1390, label %1391, label %1418

1391:                                             ; preds = %1383
  %1392 = load i32, i32* %12, align 4
  %1393 = load i32*, i32** %8, align 8
  %1394 = load i32, i32* %13, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = getelementptr inbounds i32, i32* %1393, i64 %1395
  %1397 = load i32, i32* %1396, align 4
  %1398 = add nsw i32 %1397, %1392
  store i32 %1398, i32* %1396, align 4
  %1399 = load i32, i32* %12, align 4
  %1400 = ashr i32 %1399, 1
  store i32 %1400, i32* %12, align 4
  %1401 = load i32*, i32** %8, align 8
  %1402 = load i32, i32* %13, align 4
  %1403 = load i32, i32* %16, align 4
  %1404 = sub nsw i32 %1402, %1403
  %1405 = sext i32 %1404 to i64
  %1406 = getelementptr inbounds i32, i32* %1401, i64 %1405
  %1407 = load i32, i32* %1406, align 4
  %1408 = sub nsw i32 %1407, %1400
  store i32 %1408, i32* %1406, align 4
  %1409 = load i32, i32* %12, align 4
  %1410 = load i32*, i32** %8, align 8
  %1411 = load i32, i32* %13, align 4
  %1412 = load i32, i32* %16, align 4
  %1413 = add nsw i32 %1411, %1412
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds i32, i32* %1410, i64 %1414
  %1416 = load i32, i32* %1415, align 4
  %1417 = sub nsw i32 %1416, %1409
  store i32 %1417, i32* %1415, align 4
  br label %1418

1418:                                             ; preds = %1391, %1383
  br label %1419

1419:                                             ; preds = %1418
  %1420 = load i32, i32* %18, align 4
  %1421 = load i32, i32* %20, align 4
  %1422 = add nsw i32 %1421, %1420
  store i32 %1422, i32* %20, align 4
  %1423 = load i32, i32* %23, align 4
  %1424 = load i32, i32* %13, align 4
  %1425 = add nsw i32 %1424, %1423
  store i32 %1425, i32* %13, align 4
  %1426 = load i32, i32* %21, align 4
  %1427 = add nsw i32 %1426, 1
  store i32 %1427, i32* %21, align 4
  br label %1379

1428:                                             ; preds = %1379
  %1429 = load i32*, i32** %15, align 8
  %1430 = getelementptr inbounds i32, i32* %1429, i64 0
  %1431 = load i32, i32* %1430, align 4
  %1432 = ashr i32 %1431, 1
  %1433 = sub nsw i32 0, %1432
  store i32 %1433, i32* %12, align 4
  %1434 = icmp ne i32 %1433, 0
  br i1 %1434, label %1435, label %1447

1435:                                             ; preds = %1428
  %1436 = load i32, i32* %12, align 4
  %1437 = load i32*, i32** %8, align 8
  %1438 = getelementptr inbounds i32, i32* %1437, i64 0
  %1439 = load i32, i32* %1438, align 4
  %1440 = add nsw i32 %1439, %1436
  store i32 %1440, i32* %1438, align 4
  %1441 = load i32, i32* %12, align 4
  %1442 = ashr i32 %1441, 1
  %1443 = load i32*, i32** %8, align 8
  %1444 = getelementptr inbounds i32, i32* %1443, i64 1
  %1445 = load i32, i32* %1444, align 4
  %1446 = add nsw i32 %1445, %1442
  store i32 %1446, i32* %1444, align 4
  br label %1447

1447:                                             ; preds = %1435, %1428
  %1448 = load i32*, i32** %15, align 8
  %1449 = load i32, i32* %18, align 4
  %1450 = sub nsw i32 %1449, 1
  %1451 = sext i32 %1450 to i64
  %1452 = getelementptr inbounds i32, i32* %1448, i64 %1451
  %1453 = load i32, i32* %1452, align 4
  %1454 = ashr i32 %1453, 2
  %1455 = load i32*, i32** %8, align 8
  %1456 = load i32, i32* %16, align 4
  %1457 = sub nsw i32 %1456, 1
  %1458 = sext i32 %1457 to i64
  %1459 = getelementptr inbounds i32, i32* %1455, i64 %1458
  %1460 = load i32, i32* %1459, align 4
  %1461 = sub nsw i32 %1460, %1454
  store i32 %1461, i32* %1459, align 4
  %1462 = load i32*, i32** %15, align 8
  %1463 = load i32, i32* %18, align 4
  %1464 = load i32, i32* %19, align 4
  %1465 = sub nsw i32 %1464, 1
  %1466 = mul nsw i32 %1463, %1465
  %1467 = sext i32 %1466 to i64
  %1468 = getelementptr inbounds i32, i32* %1462, i64 %1467
  %1469 = load i32, i32* %1468, align 4
  store i32 %1469, i32* %12, align 4
  %1470 = icmp ne i32 %1469, 0
  br i1 %1470, label %1471, label %1516

1471:                                             ; preds = %1447
  %1472 = load i32, i32* %12, align 4
  %1473 = load i32*, i32** %8, align 8
  %1474 = load i32, i32* %16, align 4
  %1475 = load i32, i32* %17, align 4
  %1476 = sub nsw i32 %1475, 1
  %1477 = mul nsw i32 %1474, %1476
  %1478 = sext i32 %1477 to i64
  %1479 = getelementptr inbounds i32, i32* %1473, i64 %1478
  %1480 = load i32, i32* %1479, align 4
  %1481 = add nsw i32 %1480, %1472
  store i32 %1481, i32* %1479, align 4
  %1482 = load i32, i32* %12, align 4
  %1483 = ashr i32 %1482, 1
  store i32 %1483, i32* %12, align 4
  %1484 = load i32*, i32** %8, align 8
  %1485 = load i32, i32* %16, align 4
  %1486 = load i32, i32* %17, align 4
  %1487 = sub nsw i32 %1486, 1
  %1488 = mul nsw i32 %1485, %1487
  %1489 = add nsw i32 %1488, 1
  %1490 = sext i32 %1489 to i64
  %1491 = getelementptr inbounds i32, i32* %1484, i64 %1490
  %1492 = load i32, i32* %1491, align 4
  %1493 = add nsw i32 %1492, %1483
  store i32 %1493, i32* %1491, align 4
  %1494 = load i32, i32* %12, align 4
  %1495 = load i32*, i32** %8, align 8
  %1496 = load i32, i32* %16, align 4
  %1497 = load i32, i32* %17, align 4
  %1498 = sub nsw i32 %1497, 2
  %1499 = mul nsw i32 %1496, %1498
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds i32, i32* %1495, i64 %1500
  %1502 = load i32, i32* %1501, align 4
  %1503 = sub nsw i32 %1502, %1494
  store i32 %1503, i32* %1501, align 4
  %1504 = load i32, i32* %12, align 4
  %1505 = ashr i32 %1504, 1
  %1506 = load i32*, i32** %8, align 8
  %1507 = load i32, i32* %16, align 4
  %1508 = load i32, i32* %17, align 4
  %1509 = sub nsw i32 %1508, 2
  %1510 = mul nsw i32 %1507, %1509
  %1511 = add nsw i32 %1510, 1
  %1512 = sext i32 %1511 to i64
  %1513 = getelementptr inbounds i32, i32* %1506, i64 %1512
  %1514 = load i32, i32* %1513, align 4
  %1515 = sub nsw i32 %1514, %1505
  store i32 %1515, i32* %1513, align 4
  br label %1516

1516:                                             ; preds = %1471, %1447
  %1517 = load i32*, i32** %15, align 8
  %1518 = load i32, i32* %18, align 4
  %1519 = load i32, i32* %19, align 4
  %1520 = mul nsw i32 %1518, %1519
  %1521 = sub nsw i32 %1520, 1
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds i32, i32* %1517, i64 %1522
  %1524 = load i32, i32* %1523, align 4
  %1525 = ashr i32 %1524, 1
  store i32 %1525, i32* %12, align 4
  %1526 = icmp ne i32 %1525, 0
  br i1 %1526, label %1527, label %1550

1527:                                             ; preds = %1516
  %1528 = load i32, i32* %12, align 4
  %1529 = load i32*, i32** %8, align 8
  %1530 = load i32, i32* %16, align 4
  %1531 = load i32, i32* %17, align 4
  %1532 = mul nsw i32 %1530, %1531
  %1533 = sub nsw i32 %1532, 1
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds i32, i32* %1529, i64 %1534
  %1536 = load i32, i32* %1535, align 4
  %1537 = add nsw i32 %1536, %1528
  store i32 %1537, i32* %1535, align 4
  %1538 = load i32, i32* %12, align 4
  %1539 = ashr i32 %1538, 1
  %1540 = load i32*, i32** %8, align 8
  %1541 = load i32, i32* %16, align 4
  %1542 = load i32, i32* %17, align 4
  %1543 = sub nsw i32 %1542, 1
  %1544 = mul nsw i32 %1541, %1543
  %1545 = sub nsw i32 %1544, 1
  %1546 = sext i32 %1545 to i64
  %1547 = getelementptr inbounds i32, i32* %1540, i64 %1546
  %1548 = load i32, i32* %1547, align 4
  %1549 = sub nsw i32 %1548, %1539
  store i32 %1549, i32* %1547, align 4
  br label %1550

1550:                                             ; preds = %1527, %1516
  %1551 = load i32*, i32** %7, align 8
  %1552 = load i32, i32* %18, align 4
  %1553 = mul nsw i32 3, %1552
  %1554 = load i32, i32* %19, align 4
  %1555 = mul nsw i32 %1553, %1554
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds i32, i32* %1551, i64 %1556
  store i32* %1557, i32** %15, align 8
  store i32 0, i32* %20, align 4
  %1558 = load i32, i32* %16, align 4
  %1559 = add nsw i32 %1558, 1
  store i32 %1559, i32* %13, align 4
  store i32 1, i32* %22, align 4
  br label %1560

1560:                                             ; preds = %1662, %1550
  %1561 = load i32, i32* %22, align 4
  %1562 = load i32, i32* %19, align 4
  %1563 = icmp slt i32 %1561, %1562
  br i1 %1563, label %1564, label %1671

1564:                                             ; preds = %1560
  store i32 1, i32* %21, align 4
  br label %1565

1565:                                             ; preds = %1654, %1564
  %1566 = load i32, i32* %21, align 4
  %1567 = load i32, i32* %18, align 4
  %1568 = icmp slt i32 %1566, %1567
  br i1 %1568, label %1569, label %1661

1569:                                             ; preds = %1565
  %1570 = load i32*, i32** %15, align 8
  %1571 = load i32, i32* %20, align 4
  %1572 = sext i32 %1571 to i64
  %1573 = getelementptr inbounds i32, i32* %1570, i64 %1572
  %1574 = load i32, i32* %1573, align 4
  store i32 %1574, i32* %12, align 4
  %1575 = icmp ne i32 %1574, 0
  br i1 %1575, label %1576, label %1653

1576:                                             ; preds = %1569
  %1577 = load i32, i32* %12, align 4
  %1578 = load i32*, i32** %8, align 8
  %1579 = load i32, i32* %13, align 4
  %1580 = sext i32 %1579 to i64
  %1581 = getelementptr inbounds i32, i32* %1578, i64 %1580
  %1582 = load i32, i32* %1581, align 4
  %1583 = add nsw i32 %1582, %1577
  store i32 %1583, i32* %1581, align 4
  %1584 = load i32, i32* %12, align 4
  %1585 = ashr i32 %1584, 1
  store i32 %1585, i32* %12, align 4
  %1586 = load i32*, i32** %8, align 8
  %1587 = load i32, i32* %13, align 4
  %1588 = sub nsw i32 %1587, 1
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds i32, i32* %1586, i64 %1589
  %1591 = load i32, i32* %1590, align 4
  %1592 = sub nsw i32 %1591, %1585
  store i32 %1592, i32* %1590, align 4
  %1593 = load i32, i32* %12, align 4
  %1594 = load i32*, i32** %8, align 8
  %1595 = load i32, i32* %13, align 4
  %1596 = add nsw i32 %1595, 1
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds i32, i32* %1594, i64 %1597
  %1599 = load i32, i32* %1598, align 4
  %1600 = sub nsw i32 %1599, %1593
  store i32 %1600, i32* %1598, align 4
  %1601 = load i32, i32* %12, align 4
  %1602 = load i32*, i32** %8, align 8
  %1603 = load i32, i32* %13, align 4
  %1604 = load i32, i32* %16, align 4
  %1605 = sub nsw i32 %1603, %1604
  store i32 %1605, i32* %14, align 4
  %1606 = sext i32 %1605 to i64
  %1607 = getelementptr inbounds i32, i32* %1602, i64 %1606
  %1608 = load i32, i32* %1607, align 4
  %1609 = sub nsw i32 %1608, %1601
  store i32 %1609, i32* %1607, align 4
  %1610 = load i32, i32* %12, align 4
  %1611 = ashr i32 %1610, 1
  store i32 %1611, i32* %12, align 4
  %1612 = load i32*, i32** %8, align 8
  %1613 = load i32, i32* %14, align 4
  %1614 = sub nsw i32 %1613, 1
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds i32, i32* %1612, i64 %1615
  %1617 = load i32, i32* %1616, align 4
  %1618 = add nsw i32 %1617, %1611
  store i32 %1618, i32* %1616, align 4
  %1619 = load i32, i32* %12, align 4
  %1620 = load i32*, i32** %8, align 8
  %1621 = load i32, i32* %14, align 4
  %1622 = add nsw i32 %1621, 1
  %1623 = sext i32 %1622 to i64
  %1624 = getelementptr inbounds i32, i32* %1620, i64 %1623
  %1625 = load i32, i32* %1624, align 4
  %1626 = add nsw i32 %1625, %1619
  store i32 %1626, i32* %1624, align 4
  %1627 = load i32, i32* %12, align 4
  %1628 = shl i32 %1627, 1
  %1629 = load i32*, i32** %8, align 8
  %1630 = load i32, i32* %13, align 4
  %1631 = load i32, i32* %16, align 4
  %1632 = add nsw i32 %1630, %1631
  store i32 %1632, i32* %14, align 4
  %1633 = sext i32 %1632 to i64
  %1634 = getelementptr inbounds i32, i32* %1629, i64 %1633
  %1635 = load i32, i32* %1634, align 4
  %1636 = sub nsw i32 %1635, %1628
  store i32 %1636, i32* %1634, align 4
  %1637 = load i32, i32* %12, align 4
  %1638 = load i32*, i32** %8, align 8
  %1639 = load i32, i32* %14, align 4
  %1640 = sub nsw i32 %1639, 1
  %1641 = sext i32 %1640 to i64
  %1642 = getelementptr inbounds i32, i32* %1638, i64 %1641
  %1643 = load i32, i32* %1642, align 4
  %1644 = add nsw i32 %1643, %1637
  store i32 %1644, i32* %1642, align 4
  %1645 = load i32, i32* %12, align 4
  %1646 = load i32*, i32** %8, align 8
  %1647 = load i32, i32* %14, align 4
  %1648 = add nsw i32 %1647, 1
  %1649 = sext i32 %1648 to i64
  %1650 = getelementptr inbounds i32, i32* %1646, i64 %1649
  %1651 = load i32, i32* %1650, align 4
  %1652 = add nsw i32 %1651, %1645
  store i32 %1652, i32* %1650, align 4
  br label %1653

1653:                                             ; preds = %1576, %1569
  br label %1654

1654:                                             ; preds = %1653
  %1655 = load i32, i32* %20, align 4
  %1656 = add nsw i32 %1655, 1
  store i32 %1656, i32* %20, align 4
  %1657 = load i32, i32* %13, align 4
  %1658 = add nsw i32 %1657, 2
  store i32 %1658, i32* %13, align 4
  %1659 = load i32, i32* %21, align 4
  %1660 = add nsw i32 %1659, 1
  store i32 %1660, i32* %21, align 4
  br label %1565

1661:                                             ; preds = %1565
  br label %1662

1662:                                             ; preds = %1661
  %1663 = load i32, i32* %20, align 4
  %1664 = add nsw i32 %1663, 1
  store i32 %1664, i32* %20, align 4
  %1665 = load i32, i32* %16, align 4
  %1666 = add nsw i32 %1665, 2
  %1667 = load i32, i32* %13, align 4
  %1668 = add nsw i32 %1667, %1666
  store i32 %1668, i32* %13, align 4
  %1669 = load i32, i32* %22, align 4
  %1670 = add nsw i32 %1669, 1
  store i32 %1670, i32* %22, align 4
  br label %1560

1671:                                             ; preds = %1560
  store i32 0, i32* %20, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1672

1672:                                             ; preds = %1710, %1671
  %1673 = load i32, i32* %21, align 4
  %1674 = load i32, i32* %18, align 4
  %1675 = icmp slt i32 %1673, %1674
  br i1 %1675, label %1676, label %1717

1676:                                             ; preds = %1672
  %1677 = load i32*, i32** %15, align 8
  %1678 = load i32, i32* %20, align 4
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds i32, i32* %1677, i64 %1679
  %1681 = load i32, i32* %1680, align 4
  %1682 = ashr i32 %1681, 1
  store i32 %1682, i32* %12, align 4
  %1683 = icmp ne i32 %1682, 0
  br i1 %1683, label %1684, label %1709

1684:                                             ; preds = %1676
  %1685 = load i32, i32* %12, align 4
  %1686 = load i32*, i32** %8, align 8
  %1687 = load i32, i32* %13, align 4
  %1688 = sext i32 %1687 to i64
  %1689 = getelementptr inbounds i32, i32* %1686, i64 %1688
  %1690 = load i32, i32* %1689, align 4
  %1691 = sub nsw i32 %1690, %1685
  store i32 %1691, i32* %1689, align 4
  %1692 = load i32, i32* %12, align 4
  %1693 = ashr i32 %1692, 1
  store i32 %1693, i32* %12, align 4
  %1694 = load i32*, i32** %8, align 8
  %1695 = load i32, i32* %13, align 4
  %1696 = sub nsw i32 %1695, 1
  %1697 = sext i32 %1696 to i64
  %1698 = getelementptr inbounds i32, i32* %1694, i64 %1697
  %1699 = load i32, i32* %1698, align 4
  %1700 = add nsw i32 %1699, %1693
  store i32 %1700, i32* %1698, align 4
  %1701 = load i32, i32* %12, align 4
  %1702 = load i32*, i32** %8, align 8
  %1703 = load i32, i32* %13, align 4
  %1704 = add nsw i32 %1703, 1
  %1705 = sext i32 %1704 to i64
  %1706 = getelementptr inbounds i32, i32* %1702, i64 %1705
  %1707 = load i32, i32* %1706, align 4
  %1708 = add nsw i32 %1707, %1701
  store i32 %1708, i32* %1706, align 4
  br label %1709

1709:                                             ; preds = %1684, %1676
  br label %1710

1710:                                             ; preds = %1709
  %1711 = load i32, i32* %20, align 4
  %1712 = add nsw i32 %1711, 1
  store i32 %1712, i32* %20, align 4
  %1713 = load i32, i32* %13, align 4
  %1714 = add nsw i32 %1713, 2
  store i32 %1714, i32* %13, align 4
  %1715 = load i32, i32* %21, align 4
  %1716 = add nsw i32 %1715, 1
  store i32 %1716, i32* %21, align 4
  br label %1672

1717:                                             ; preds = %1672
  store i32 0, i32* %20, align 4
  %1718 = load i32, i32* %16, align 4
  store i32 %1718, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1719

1719:                                             ; preds = %1759, %1717
  %1720 = load i32, i32* %21, align 4
  %1721 = load i32, i32* %19, align 4
  %1722 = icmp slt i32 %1720, %1721
  br i1 %1722, label %1723, label %1768

1723:                                             ; preds = %1719
  %1724 = load i32*, i32** %15, align 8
  %1725 = load i32, i32* %20, align 4
  %1726 = sext i32 %1725 to i64
  %1727 = getelementptr inbounds i32, i32* %1724, i64 %1726
  %1728 = load i32, i32* %1727, align 4
  %1729 = ashr i32 %1728, 1
  store i32 %1729, i32* %12, align 4
  %1730 = icmp ne i32 %1729, 0
  br i1 %1730, label %1731, label %1758

1731:                                             ; preds = %1723
  %1732 = load i32, i32* %12, align 4
  %1733 = load i32*, i32** %8, align 8
  %1734 = load i32, i32* %13, align 4
  %1735 = sext i32 %1734 to i64
  %1736 = getelementptr inbounds i32, i32* %1733, i64 %1735
  %1737 = load i32, i32* %1736, align 4
  %1738 = sub nsw i32 %1737, %1732
  store i32 %1738, i32* %1736, align 4
  %1739 = load i32, i32* %12, align 4
  %1740 = ashr i32 %1739, 1
  store i32 %1740, i32* %12, align 4
  %1741 = load i32*, i32** %8, align 8
  %1742 = load i32, i32* %13, align 4
  %1743 = load i32, i32* %16, align 4
  %1744 = add nsw i32 %1742, %1743
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds i32, i32* %1741, i64 %1745
  %1747 = load i32, i32* %1746, align 4
  %1748 = add nsw i32 %1747, %1740
  store i32 %1748, i32* %1746, align 4
  %1749 = load i32, i32* %12, align 4
  %1750 = load i32*, i32** %8, align 8
  %1751 = load i32, i32* %13, align 4
  %1752 = load i32, i32* %16, align 4
  %1753 = sub nsw i32 %1751, %1752
  %1754 = sext i32 %1753 to i64
  %1755 = getelementptr inbounds i32, i32* %1750, i64 %1754
  %1756 = load i32, i32* %1755, align 4
  %1757 = add nsw i32 %1756, %1749
  store i32 %1757, i32* %1755, align 4
  br label %1758

1758:                                             ; preds = %1731, %1723
  br label %1759

1759:                                             ; preds = %1758
  %1760 = load i32, i32* %18, align 4
  %1761 = load i32, i32* %20, align 4
  %1762 = add nsw i32 %1761, %1760
  store i32 %1762, i32* %20, align 4
  %1763 = load i32, i32* %23, align 4
  %1764 = load i32, i32* %13, align 4
  %1765 = add nsw i32 %1764, %1763
  store i32 %1765, i32* %13, align 4
  %1766 = load i32, i32* %21, align 4
  %1767 = add nsw i32 %1766, 1
  store i32 %1767, i32* %21, align 4
  br label %1719

1768:                                             ; preds = %1719
  %1769 = load i32, i32* %18, align 4
  %1770 = load i32, i32* %19, align 4
  %1771 = sub nsw i32 %1770, 1
  %1772 = mul nsw i32 %1769, %1771
  store i32 %1772, i32* %20, align 4
  %1773 = load i32, i32* %16, align 4
  %1774 = load i32, i32* %17, align 4
  %1775 = sub nsw i32 %1774, 1
  %1776 = mul nsw i32 %1773, %1775
  %1777 = add nsw i32 %1776, 1
  store i32 %1777, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1778

1778:                                             ; preds = %1841, %1768
  %1779 = load i32, i32* %21, align 4
  %1780 = load i32, i32* %18, align 4
  %1781 = icmp slt i32 %1779, %1780
  br i1 %1781, label %1782, label %1848

1782:                                             ; preds = %1778
  %1783 = load i32*, i32** %15, align 8
  %1784 = load i32, i32* %20, align 4
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds i32, i32* %1783, i64 %1785
  %1787 = load i32, i32* %1786, align 4
  store i32 %1787, i32* %12, align 4
  %1788 = icmp ne i32 %1787, 0
  br i1 %1788, label %1789, label %1840

1789:                                             ; preds = %1782
  %1790 = load i32, i32* %12, align 4
  %1791 = load i32*, i32** %8, align 8
  %1792 = load i32, i32* %13, align 4
  %1793 = sext i32 %1792 to i64
  %1794 = getelementptr inbounds i32, i32* %1791, i64 %1793
  %1795 = load i32, i32* %1794, align 4
  %1796 = add nsw i32 %1795, %1790
  store i32 %1796, i32* %1794, align 4
  %1797 = load i32, i32* %12, align 4
  %1798 = ashr i32 %1797, 1
  store i32 %1798, i32* %12, align 4
  %1799 = load i32*, i32** %8, align 8
  %1800 = load i32, i32* %13, align 4
  %1801 = sub nsw i32 %1800, 1
  %1802 = sext i32 %1801 to i64
  %1803 = getelementptr inbounds i32, i32* %1799, i64 %1802
  %1804 = load i32, i32* %1803, align 4
  %1805 = sub nsw i32 %1804, %1798
  store i32 %1805, i32* %1803, align 4
  %1806 = load i32, i32* %12, align 4
  %1807 = load i32*, i32** %8, align 8
  %1808 = load i32, i32* %13, align 4
  %1809 = add nsw i32 %1808, 1
  %1810 = sext i32 %1809 to i64
  %1811 = getelementptr inbounds i32, i32* %1807, i64 %1810
  %1812 = load i32, i32* %1811, align 4
  %1813 = sub nsw i32 %1812, %1806
  store i32 %1813, i32* %1811, align 4
  %1814 = load i32, i32* %12, align 4
  %1815 = load i32*, i32** %8, align 8
  %1816 = load i32, i32* %13, align 4
  %1817 = load i32, i32* %16, align 4
  %1818 = sub nsw i32 %1816, %1817
  store i32 %1818, i32* %14, align 4
  %1819 = sext i32 %1818 to i64
  %1820 = getelementptr inbounds i32, i32* %1815, i64 %1819
  %1821 = load i32, i32* %1820, align 4
  %1822 = sub nsw i32 %1821, %1814
  store i32 %1822, i32* %1820, align 4
  %1823 = load i32, i32* %12, align 4
  %1824 = ashr i32 %1823, 1
  store i32 %1824, i32* %12, align 4
  %1825 = load i32*, i32** %8, align 8
  %1826 = load i32, i32* %14, align 4
  %1827 = add nsw i32 %1826, 1
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds i32, i32* %1825, i64 %1828
  %1830 = load i32, i32* %1829, align 4
  %1831 = add nsw i32 %1830, %1824
  store i32 %1831, i32* %1829, align 4
  %1832 = load i32, i32* %12, align 4
  %1833 = load i32*, i32** %8, align 8
  %1834 = load i32, i32* %14, align 4
  %1835 = sub nsw i32 %1834, 1
  %1836 = sext i32 %1835 to i64
  %1837 = getelementptr inbounds i32, i32* %1833, i64 %1836
  %1838 = load i32, i32* %1837, align 4
  %1839 = add nsw i32 %1838, %1832
  store i32 %1839, i32* %1837, align 4
  br label %1840

1840:                                             ; preds = %1789, %1782
  br label %1841

1841:                                             ; preds = %1840
  %1842 = load i32, i32* %20, align 4
  %1843 = add nsw i32 %1842, 1
  store i32 %1843, i32* %20, align 4
  %1844 = load i32, i32* %13, align 4
  %1845 = add nsw i32 %1844, 2
  store i32 %1845, i32* %13, align 4
  %1846 = load i32, i32* %21, align 4
  %1847 = add nsw i32 %1846, 1
  store i32 %1847, i32* %21, align 4
  br label %1778

1848:                                             ; preds = %1778
  %1849 = load i32, i32* %18, align 4
  %1850 = sub nsw i32 %1849, 1
  store i32 %1850, i32* %20, align 4
  %1851 = load i32, i32* %23, align 4
  %1852 = sub nsw i32 %1851, 1
  store i32 %1852, i32* %13, align 4
  store i32 1, i32* %21, align 4
  br label %1853

1853:                                             ; preds = %1918, %1848
  %1854 = load i32, i32* %21, align 4
  %1855 = load i32, i32* %19, align 4
  %1856 = icmp slt i32 %1854, %1855
  br i1 %1856, label %1857, label %1927

1857:                                             ; preds = %1853
  %1858 = load i32*, i32** %15, align 8
  %1859 = load i32, i32* %20, align 4
  %1860 = sext i32 %1859 to i64
  %1861 = getelementptr inbounds i32, i32* %1858, i64 %1860
  %1862 = load i32, i32* %1861, align 4
  store i32 %1862, i32* %12, align 4
  %1863 = icmp ne i32 %1862, 0
  br i1 %1863, label %1864, label %1917

1864:                                             ; preds = %1857
  %1865 = load i32, i32* %12, align 4
  %1866 = load i32*, i32** %8, align 8
  %1867 = load i32, i32* %13, align 4
  %1868 = sext i32 %1867 to i64
  %1869 = getelementptr inbounds i32, i32* %1866, i64 %1868
  %1870 = load i32, i32* %1869, align 4
  %1871 = add nsw i32 %1870, %1865
  store i32 %1871, i32* %1869, align 4
  %1872 = load i32, i32* %12, align 4
  %1873 = ashr i32 %1872, 1
  store i32 %1873, i32* %12, align 4
  %1874 = load i32*, i32** %8, align 8
  %1875 = load i32, i32* %13, align 4
  %1876 = sub nsw i32 %1875, 1
  %1877 = sext i32 %1876 to i64
  %1878 = getelementptr inbounds i32, i32* %1874, i64 %1877
  %1879 = load i32, i32* %1878, align 4
  %1880 = sub nsw i32 %1879, %1873
  store i32 %1880, i32* %1878, align 4
  %1881 = load i32, i32* %12, align 4
  %1882 = load i32*, i32** %8, align 8
  %1883 = load i32, i32* %13, align 4
  %1884 = load i32, i32* %16, align 4
  %1885 = sub nsw i32 %1883, %1884
  store i32 %1885, i32* %14, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = getelementptr inbounds i32, i32* %1882, i64 %1886
  %1888 = load i32, i32* %1887, align 4
  %1889 = sub nsw i32 %1888, %1881
  store i32 %1889, i32* %1887, align 4
  %1890 = load i32, i32* %12, align 4
  %1891 = ashr i32 %1890, 1
  %1892 = load i32*, i32** %8, align 8
  %1893 = load i32, i32* %14, align 4
  %1894 = sub nsw i32 %1893, 1
  %1895 = sext i32 %1894 to i64
  %1896 = getelementptr inbounds i32, i32* %1892, i64 %1895
  %1897 = load i32, i32* %1896, align 4
  %1898 = add nsw i32 %1897, %1891
  store i32 %1898, i32* %1896, align 4
  %1899 = load i32, i32* %12, align 4
  %1900 = load i32*, i32** %8, align 8
  %1901 = load i32, i32* %13, align 4
  %1902 = load i32, i32* %16, align 4
  %1903 = add nsw i32 %1901, %1902
  store i32 %1903, i32* %14, align 4
  %1904 = sext i32 %1903 to i64
  %1905 = getelementptr inbounds i32, i32* %1900, i64 %1904
  %1906 = load i32, i32* %1905, align 4
  %1907 = sub nsw i32 %1906, %1899
  store i32 %1907, i32* %1905, align 4
  %1908 = load i32, i32* %12, align 4
  %1909 = ashr i32 %1908, 1
  %1910 = load i32*, i32** %8, align 8
  %1911 = load i32, i32* %14, align 4
  %1912 = sub nsw i32 %1911, 1
  %1913 = sext i32 %1912 to i64
  %1914 = getelementptr inbounds i32, i32* %1910, i64 %1913
  %1915 = load i32, i32* %1914, align 4
  %1916 = add nsw i32 %1915, %1909
  store i32 %1916, i32* %1914, align 4
  br label %1917

1917:                                             ; preds = %1864, %1857
  br label %1918

1918:                                             ; preds = %1917
  %1919 = load i32, i32* %18, align 4
  %1920 = load i32, i32* %20, align 4
  %1921 = add nsw i32 %1920, %1919
  store i32 %1921, i32* %20, align 4
  %1922 = load i32, i32* %23, align 4
  %1923 = load i32, i32* %13, align 4
  %1924 = add nsw i32 %1923, %1922
  store i32 %1924, i32* %13, align 4
  %1925 = load i32, i32* %21, align 4
  %1926 = add nsw i32 %1925, 1
  store i32 %1926, i32* %21, align 4
  br label %1853

1927:                                             ; preds = %1853
  %1928 = load i32*, i32** %15, align 8
  %1929 = getelementptr inbounds i32, i32* %1928, i64 0
  %1930 = load i32, i32* %1929, align 4
  %1931 = ashr i32 %1930, 2
  %1932 = load i32*, i32** %8, align 8
  %1933 = getelementptr inbounds i32, i32* %1932, i64 0
  %1934 = load i32, i32* %1933, align 4
  %1935 = add nsw i32 %1934, %1931
  store i32 %1935, i32* %1933, align 4
  %1936 = load i32*, i32** %15, align 8
  %1937 = load i32, i32* %18, align 4
  %1938 = sub nsw i32 %1937, 1
  %1939 = sext i32 %1938 to i64
  %1940 = getelementptr inbounds i32, i32* %1936, i64 %1939
  %1941 = load i32, i32* %1940, align 4
  %1942 = ashr i32 %1941, 1
  store i32 %1942, i32* %12, align 4
  %1943 = icmp ne i32 %1942, 0
  br i1 %1943, label %1944, label %1962

1944:                                             ; preds = %1927
  %1945 = load i32, i32* %12, align 4
  %1946 = load i32*, i32** %8, align 8
  %1947 = load i32, i32* %16, align 4
  %1948 = sub nsw i32 %1947, 1
  %1949 = sext i32 %1948 to i64
  %1950 = getelementptr inbounds i32, i32* %1946, i64 %1949
  %1951 = load i32, i32* %1950, align 4
  %1952 = sub nsw i32 %1951, %1945
  store i32 %1952, i32* %1950, align 4
  %1953 = load i32, i32* %12, align 4
  %1954 = ashr i32 %1953, 1
  %1955 = load i32*, i32** %8, align 8
  %1956 = load i32, i32* %16, align 4
  %1957 = sub nsw i32 %1956, 2
  %1958 = sext i32 %1957 to i64
  %1959 = getelementptr inbounds i32, i32* %1955, i64 %1958
  %1960 = load i32, i32* %1959, align 4
  %1961 = add nsw i32 %1960, %1954
  store i32 %1961, i32* %1959, align 4
  br label %1962

1962:                                             ; preds = %1944, %1927
  %1963 = load i32*, i32** %15, align 8
  %1964 = load i32, i32* %18, align 4
  %1965 = load i32, i32* %19, align 4
  %1966 = sub nsw i32 %1965, 1
  %1967 = mul nsw i32 %1964, %1966
  %1968 = sext i32 %1967 to i64
  %1969 = getelementptr inbounds i32, i32* %1963, i64 %1968
  %1970 = load i32, i32* %1969, align 4
  %1971 = ashr i32 %1970, 1
  store i32 %1971, i32* %12, align 4
  %1972 = icmp ne i32 %1971, 0
  br i1 %1972, label %1973, label %1995

1973:                                             ; preds = %1962
  %1974 = load i32, i32* %12, align 4
  %1975 = load i32*, i32** %8, align 8
  %1976 = load i32, i32* %16, align 4
  %1977 = load i32, i32* %17, align 4
  %1978 = sub nsw i32 %1977, 1
  %1979 = mul nsw i32 %1976, %1978
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds i32, i32* %1975, i64 %1980
  %1982 = load i32, i32* %1981, align 4
  %1983 = sub nsw i32 %1982, %1974
  store i32 %1983, i32* %1981, align 4
  %1984 = load i32, i32* %12, align 4
  %1985 = ashr i32 %1984, 1
  %1986 = load i32*, i32** %8, align 8
  %1987 = load i32, i32* %16, align 4
  %1988 = load i32, i32* %17, align 4
  %1989 = sub nsw i32 %1988, 2
  %1990 = mul nsw i32 %1987, %1989
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds i32, i32* %1986, i64 %1991
  %1993 = load i32, i32* %1992, align 4
  %1994 = add nsw i32 %1993, %1985
  store i32 %1994, i32* %1992, align 4
  br label %1995

1995:                                             ; preds = %1973, %1962
  %1996 = load i32*, i32** %15, align 8
  %1997 = load i32, i32* %18, align 4
  %1998 = load i32, i32* %19, align 4
  %1999 = mul nsw i32 %1997, %1998
  %2000 = sub nsw i32 %1999, 1
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds i32, i32* %1996, i64 %2001
  %2003 = load i32, i32* %2002, align 4
  store i32 %2003, i32* %12, align 4
  %2004 = icmp ne i32 %2003, 0
  br i1 %2004, label %2005, label %2045

2005:                                             ; preds = %1995
  %2006 = load i32, i32* %12, align 4
  %2007 = load i32*, i32** %8, align 8
  %2008 = load i32, i32* %16, align 4
  %2009 = load i32, i32* %17, align 4
  %2010 = mul nsw i32 %2008, %2009
  %2011 = sub nsw i32 %2010, 1
  store i32 %2011, i32* %14, align 4
  %2012 = sext i32 %2011 to i64
  %2013 = getelementptr inbounds i32, i32* %2007, i64 %2012
  %2014 = load i32, i32* %2013, align 4
  %2015 = add nsw i32 %2014, %2006
  store i32 %2015, i32* %2013, align 4
  %2016 = load i32, i32* %12, align 4
  %2017 = ashr i32 %2016, 1
  store i32 %2017, i32* %12, align 4
  %2018 = load i32*, i32** %8, align 8
  %2019 = load i32, i32* %14, align 4
  %2020 = sub nsw i32 %2019, 1
  %2021 = sext i32 %2020 to i64
  %2022 = getelementptr inbounds i32, i32* %2018, i64 %2021
  %2023 = load i32, i32* %2022, align 4
  %2024 = sub nsw i32 %2023, %2017
  store i32 %2024, i32* %2022, align 4
  %2025 = load i32, i32* %12, align 4
  %2026 = load i32*, i32** %8, align 8
  %2027 = load i32, i32* %14, align 4
  %2028 = load i32, i32* %16, align 4
  %2029 = sub nsw i32 %2027, %2028
  %2030 = sext i32 %2029 to i64
  %2031 = getelementptr inbounds i32, i32* %2026, i64 %2030
  %2032 = load i32, i32* %2031, align 4
  %2033 = sub nsw i32 %2032, %2025
  store i32 %2033, i32* %2031, align 4
  %2034 = load i32, i32* %12, align 4
  %2035 = ashr i32 %2034, 1
  %2036 = load i32*, i32** %8, align 8
  %2037 = load i32, i32* %14, align 4
  %2038 = load i32, i32* %16, align 4
  %2039 = sub nsw i32 %2037, %2038
  %2040 = sub nsw i32 %2039, 1
  %2041 = sext i32 %2040 to i64
  %2042 = getelementptr inbounds i32, i32* %2036, i64 %2041
  %2043 = load i32, i32* %2042, align 4
  %2044 = add nsw i32 %2043, %2035
  store i32 %2044, i32* %2042, align 4
  br label %2045

2045:                                             ; preds = %2005, %1995
  %2046 = load i32, i32* %24, align 4
  %2047 = icmp sgt i32 %2046, 0
  br i1 %2047, label %2048, label %2070

2048:                                             ; preds = %2045
  %2049 = load i32*, i32** %7, align 8
  store i32* %2049, i32** %15, align 8
  store i32 0, i32* %13, align 4
  br label %2050

2050:                                             ; preds = %2066, %2048
  %2051 = load i32, i32* %13, align 4
  %2052 = load i32, i32* %16, align 4
  %2053 = load i32, i32* %17, align 4
  %2054 = mul nsw i32 %2052, %2053
  %2055 = icmp slt i32 %2051, %2054
  br i1 %2055, label %2056, label %2069

2056:                                             ; preds = %2050
  %2057 = load i32*, i32** %8, align 8
  %2058 = load i32, i32* %13, align 4
  %2059 = sext i32 %2058 to i64
  %2060 = getelementptr inbounds i32, i32* %2057, i64 %2059
  %2061 = load i32, i32* %2060, align 4
  %2062 = load i32*, i32** %15, align 8
  %2063 = load i32, i32* %13, align 4
  %2064 = sext i32 %2063 to i64
  %2065 = getelementptr inbounds i32, i32* %2062, i64 %2064
  store i32 %2061, i32* %2065, align 4
  br label %2066

2066:                                             ; preds = %2056
  %2067 = load i32, i32* %13, align 4
  %2068 = add nsw i32 %2067, 1
  store i32 %2068, i32* %13, align 4
  br label %2050

2069:                                             ; preds = %2050
  br label %2070

2070:                                             ; preds = %2069, %2045
  br label %2071

2071:                                             ; preds = %2070
  %2072 = load i32, i32* %24, align 4
  %2073 = add nsw i32 %2072, -1
  store i32 %2073, i32* %24, align 4
  br label %27

2074:                                             ; preds = %27
  %2075 = load i32, i32* %6, align 4
  ret i32 %2075
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @internal_int_transpose(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %57, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %28, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %22, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %36, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_byte_image(%struct._IO_FILE* %0, float* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %25 = call i64 @fread(i8* %21, i64 1, i64 %23, %struct._IO_FILE* %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

32:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = uitofp i8 %42 to float
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGMStream(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* %4)
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @ungetc(i32 %8, %struct._IO_FILE* %9)
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 80
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @getc(%struct._IO_FILE*) #1

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float* @ReadMatrixFromPGMStream(%struct._IO_FILE* %0, i32* %1, i32* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store float* null, float** %4, align 8
  br label %108

18:                                               ; preds = %3
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = call i8* @fgets(i8* %19, i32 80, %struct._IO_FILE* %20)
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 50
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %14, align 4
  br label %37

27:                                               ; preds = %18
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 53
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %36

33:                                               ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %42, %37
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %41 = call i8* @fgets(i8* %39, i32 80, %struct._IO_FILE* %40)
  br label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %38, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %49, i32* %50) #6
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %54 = call i8* @fgets(i8* %52, i32 80, %struct._IO_FILE* %53)
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

61:                                               ; preds = %47
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = call i8* @malloc(i64 %68)
  %70 = bitcast i8* %69 to float*
  store float* %70, float** %8, align 8
  %71 = load float*, float** %8, align 8
  %72 = icmp eq float* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %77 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %76)
  call void @exit(i32 -1) #5
  unreachable

78:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %13)
  br label %96

93:                                               ; preds = %87
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %95 = call i32 @fgetc(%struct._IO_FILE* %94)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %13, align 4
  %98 = sitofp i32 %97 to float
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %79

106:                                              ; preds = %79
  %107 = load float*, float** %8, align 8
  store float* %107, float** %4, align 8
  br label %108

108:                                              ; preds = %106, %17
  %109 = load float*, float** %4, align 8
  ret float* %109
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @close(...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_byte_image(%struct._IO_FILE* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %44 = call i64 @fwrite(i8* %40, i64 1, i64 %42, %struct._IO_FILE* %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_pgm_image(%struct._IO_FILE* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), double 1.100000e+00)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %54 = call i64 @fwrite(i8* %50, i64 1, i64 %52, %struct._IO_FILE* %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %39
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @huffman_encode(i16* %0, i32 %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [65536 x %struct.node*], align 16
  %12 = alloca %struct.node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %22, %5
  %16 = load i32, i32* %14, align 4
  %17 = icmp slt i32 %16, 65536
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 %20
  store %struct.node* null, %struct.node** %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  br label %15

25:                                               ; preds = %15
  %26 = load i16*, i16** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %29 = call i32 @compute_histogram(i16* %26, i32 %27, %struct.node** %28)
  %30 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %31 = call i32 @build_huffman_tree(%struct.node** %30, %struct.node** %12)
  %32 = load i16*, i16** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @encode_stream(i16* %32, i32 %33, %struct.node** %34, i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.node*, %struct.node** %12, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = call i32 @pack_huffman_tree(%struct.node* %37, i8** %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.node*, %struct.node** %12, align 8
  %42 = call i32 @free_tree_nodes(%struct.node* %41)
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_histogram(i16* %0, i32 %1, %struct.node** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.node**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.node** %2, %struct.node*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.node**, %struct.node*** %7, align 8
  %16 = load i16*, i16** %5, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %struct.node*, %struct.node** %15, i64 %18
  %20 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %20, %struct.node** %9, align 8
  %21 = load %struct.node*, %struct.node** %9, align 8
  %22 = icmp eq %struct.node* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 48)
  %25 = bitcast i8* %24 to %struct.node*
  %26 = load %struct.node**, %struct.node*** %7, align 8
  %27 = load i16*, i16** %5, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds %struct.node*, %struct.node** %26, i64 %29
  store %struct.node* %25, %struct.node** %30, align 8
  store %struct.node* %25, %struct.node** %9, align 8
  %31 = load i16*, i16** %5, align 8
  %32 = load i16, i16* %31, align 2
  %33 = load %struct.node*, %struct.node** %9, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 4
  store i16 %32, i16* %34, align 8
  %35 = load %struct.node*, %struct.node** %9, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 3
  store %struct.node* null, %struct.node** %38, align 8
  %39 = load %struct.node*, %struct.node** %9, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  store %struct.node* null, %struct.node** %40, align 8
  br label %46

41:                                               ; preds = %14
  %42 = load %struct.node*, %struct.node** %9, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i16*, i16** %5, align 8
  %51 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %51, i16** %5, align 8
  br label %10

52:                                               ; preds = %10
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @build_huffman_tree(%struct.node** %0, %struct.node** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node**, align 8
  %5 = alloca %struct.node**, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca [65536 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.node** %0, %struct.node*** %4, align 8
  store %struct.node** %1, %struct.node*** %5, align 8
  store %struct.node* null, %struct.node** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 65536
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.node**, %struct.node*** %4, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.node*, %struct.node** %14, i64 %16
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.node**, %struct.node*** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.node*, %struct.node** %21, i64 %23
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = call i32 @insert_in_ordered_list(%struct.node* %25, %struct.node** %6)
  br label %27

27:                                               ; preds = %20, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %37, %31
  %33 = load %struct.node*, %struct.node** %6, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = icmp ne %struct.node* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 48)
  %39 = bitcast i8* %38 to %struct.node*
  store %struct.node* %39, %struct.node** %7, align 8
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = load %struct.node*, %struct.node** %7, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 2
  store %struct.node* %40, %struct.node** %42, align 8
  %43 = load %struct.node*, %struct.node** %6, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 1
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = load %struct.node*, %struct.node** %7, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 3
  store %struct.node* %45, %struct.node** %47, align 8
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 2
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.node*, %struct.node** %7, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %54, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %52, %57
  %59 = load %struct.node*, %struct.node** %7, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.node*, %struct.node** %6, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 1
  %63 = load %struct.node*, %struct.node** %62, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 1
  %65 = load %struct.node*, %struct.node** %64, align 8
  store %struct.node* %65, %struct.node** %6, align 8
  %66 = load %struct.node*, %struct.node** %7, align 8
  %67 = call i32 @insert_in_ordered_list(%struct.node* %66, %struct.node** %6)
  br label %32

68:                                               ; preds = %32
  %69 = load %struct.node*, %struct.node** %6, align 8
  %70 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %71 = call i32 @compute_code_strings(%struct.node* %69, i8* %70, i32 0)
  %72 = load %struct.node*, %struct.node** %6, align 8
  %73 = load %struct.node**, %struct.node*** %5, align 8
  store %struct.node* %72, %struct.node** %73, align 8
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encode_stream(i16* %0, i32 %1, %struct.node** %2, i8* %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.node**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.node** %2, %struct.node*** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  store i8 1, i8* %13, align 1
  %15 = load i8*, i8** %12, align 8
  store i8 0, i8* %15, align 1
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %68, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load %struct.node**, %struct.node*** %7, align 8
  %22 = load i16*, i16** %5, align 8
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.node*, %struct.node** %21, i64 %24
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %10, align 8
  %27 = load %struct.node*, %struct.node** %10, align 8
  %28 = icmp eq %struct.node* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1.1, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

31:                                               ; preds = %20
  %32 = load %struct.node*, %struct.node** %10, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  br label %35

35:                                               ; preds = %66, %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 49
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8, i8* %13, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  %55 = load i8, i8* %13, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 1
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %13, align 1
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  store i8 1, i8* %13, align 1
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %52
  br label %35

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i16*, i16** %5, align 8
  %72 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %72, i16** %5, align 8
  br label %16

73:                                               ; preds = %16
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = add nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_huffman_tree(%struct.node* %0, i8** %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = call i32 @count_leaves(%struct.node* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 2, %9
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 2, %13
  %15 = add i64 %11, %14
  %16 = sub i64 %15, 1
  %17 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %16)
  %18 = load i8**, i8*** %4, align 8
  store i8* %17, i8** %18, align 8
  store i8* %17, i8** %5, align 8
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = call i32 @pack_tree_iter(%struct.node* %19, i8** %5)
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @free_tree_nodes(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.node*, %struct.node** %3, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = call i32 @free_tree_nodes(%struct.node* %11)
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 3
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = call i32 @free_tree_nodes(%struct.node* %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = bitcast %struct.node* %23 to i8*
  %25 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %24)
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @count_leaves(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = call i32 @count_leaves(%struct.node* %12)
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = call i32 @count_leaves(%struct.node* %16)
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_tree_iter(%struct.node* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.node*, %struct.node** %4, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8 1, i8* %14, align 1
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 4
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %12
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  store i8 %29, i8* %31, align 1
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = ashr i32 %36, 8
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %21
  br label %59

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load %struct.node*, %struct.node** %4, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @pack_tree_iter(%struct.node* %51, i8** %52)
  %54 = load %struct.node*, %struct.node** %4, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %56 = load %struct.node*, %struct.node** %55, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @pack_tree_iter(%struct.node* %56, i8** %57)
  br label %59

59:                                               ; preds = %43, %42
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @insert_in_ordered_list(%struct.node* %0, %struct.node** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node**, align 8
  %6 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store %struct.node** %1, %struct.node*** %5, align 8
  %7 = load %struct.node**, %struct.node*** %5, align 8
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11, %2
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  store %struct.node* %20, %struct.node** %22, align 8
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = load %struct.node**, %struct.node*** %5, align 8
  store %struct.node* %23, %struct.node** %24, align 8
  br label %56

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = icmp ne %struct.node* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.node*, %struct.node** %6, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %34, %39
  br label %41

41:                                               ; preds = %31, %26
  %42 = phi i1 [ false, %26 ], [ %40, %31 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.node*, %struct.node** %6, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 1
  %46 = load %struct.node*, %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %6, align 8
  br label %26

47:                                               ; preds = %41
  %48 = load %struct.node*, %struct.node** %6, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = load %struct.node*, %struct.node** %4, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 1
  store %struct.node* %50, %struct.node** %52, align 8
  %53 = load %struct.node*, %struct.node** %4, align 8
  %54 = load %struct.node*, %struct.node** %6, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 1
  store %struct.node* %53, %struct.node** %55, align 8
  br label %56

56:                                               ; preds = %47, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_code_strings(%struct.node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.node*, %struct.node** %5, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* (i32, ...) bitcast (i8* (i32)* @check_malloc to i8* (i32, ...)*)(i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strcpy(i8* %19, i8* %20) #6
  %22 = load %struct.node*, %struct.node** %5, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  br label %47

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 48, i8* %28, align 1
  %29 = load %struct.node*, %struct.node** %5, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 2
  %31 = load %struct.node*, %struct.node** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @compute_code_strings(%struct.node* %31, i8* %32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 49, i8* %39, align 1
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 3
  %42 = load %struct.node*, %struct.node** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @compute_code_strings(%struct.node* %42, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %24, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.code_node*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %8 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 24)
  %9 = bitcast i8* %8 to %struct.code_node*
  store %struct.code_node* %9, %struct.code_node** %3, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %10)
  %12 = load i8, i8* @temp_byte, align 1
  store i8 %12, i8* %4, align 1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %18 = call %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %17)
  %19 = load %struct.code_node*, %struct.code_node** %3, align 8
  %20 = getelementptr inbounds %struct.code_node, %struct.code_node* %19, i32 0, i32 0
  store %struct.code_node* %18, %struct.code_node** %20, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = call %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %21)
  %23 = load %struct.code_node*, %struct.code_node** %3, align 8
  %24 = getelementptr inbounds %struct.code_node, %struct.code_node* %23, i32 0, i32 1
  store %struct.code_node* %22, %struct.code_node** %24, align 8
  br label %65

25:                                               ; preds = %1
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.code_node*, %struct.code_node** %3, align 8
  %31 = getelementptr inbounds %struct.code_node, %struct.code_node* %30, i32 0, i32 1
  store %struct.code_node* null, %struct.code_node** %31, align 8
  %32 = load %struct.code_node*, %struct.code_node** %3, align 8
  %33 = getelementptr inbounds %struct.code_node, %struct.code_node* %32, i32 0, i32 0
  store %struct.code_node* null, %struct.code_node** %33, align 8
  store i16 0, i16* %5, align 2
  store i32 0, i32* %7, align 4
  store i16 1, i16* %6, align 2
  br label %34

34:                                               ; preds = %51, %29
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 2
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %39)
  %41 = load i8, i8* @temp_byte, align 1
  store i8 %41, i8* %4, align 1
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %5, align 2
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i16, i16* %6, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, 8
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %6, align 2
  br label %34

58:                                               ; preds = %34
  %59 = load i16, i16* %5, align 2
  %60 = load %struct.code_node*, %struct.code_node** %3, align 8
  %61 = getelementptr inbounds %struct.code_node, %struct.code_node* %60, i32 0, i32 2
  store i16 %59, i16* %61, align 8
  br label %64

62:                                               ; preds = %25
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %16
  %66 = load %struct.code_node*, %struct.code_node** %3, align 8
  ret %struct.code_node* %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_and_huffman_decode(%struct._IO_FILE* %0, %struct.code_node* %1, i16* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.code_node*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.code_node*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store %struct.code_node* %1, %struct.code_node** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %11, align 1
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %61, %4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = load %struct.code_node*, %struct.code_node** %7, align 8
  store %struct.code_node* %19, %struct.code_node** %12, align 8
  br label %20

20:                                               ; preds = %48, %18
  %21 = load %struct.code_node*, %struct.code_node** %12, align 8
  %22 = getelementptr inbounds %struct.code_node, %struct.code_node* %21, i32 0, i32 0
  %23 = load %struct.code_node*, %struct.code_node** %22, align 8
  %24 = icmp ne %struct.code_node* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %30)
  %32 = load i8, i8* @temp_byte, align 1
  store i8 %32, i8* %10, align 1
  store i8 1, i8* %11, align 1
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.code_node*, %struct.code_node** %12, align 8
  %42 = getelementptr inbounds %struct.code_node, %struct.code_node* %41, i32 0, i32 1
  %43 = load %struct.code_node*, %struct.code_node** %42, align 8
  store %struct.code_node* %43, %struct.code_node** %12, align 8
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.code_node*, %struct.code_node** %12, align 8
  %46 = getelementptr inbounds %struct.code_node, %struct.code_node* %45, i32 0, i32 0
  %47 = load %struct.code_node*, %struct.code_node** %46, align 8
  store %struct.code_node* %47, %struct.code_node** %12, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 1
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %11, align 1
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.code_node*, %struct.code_node** %12, align 8
  %55 = getelementptr inbounds %struct.code_node, %struct.code_node* %54, i32 0, i32 2
  %56 = load i16, i16* %55, align 8
  %57 = load i16*, i16** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  store i16 %56, i16* %60, align 2
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_list_nodes(%struct.node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.13, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load %struct.node*, %struct.node** %4, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.14, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.node*, %struct.node** %4, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = icmp ne %struct.node* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.node*, %struct.node** %4, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = call i32 @print_list_nodes(%struct.node* %26, i32 0)
  br label %30

28:                                               ; preds = %10
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.15, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_epic_args(i32 %0, i8** %1, float** %2, i32* %3, i32* %4, i32* %5, double* %6, %struct._IO_FILE** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct._IO_FILE**, align 8
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store float** %2, float*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store double* %6, double** %16, align 8
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %17, align 8
  store i32 2, i32* %20, align 4
  %21 = load i32*, i32** %14, align 8
  store i32 256, i32* %21, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 256, i32* %22, align 4
  %23 = load i32*, i32** %15, align 8
  store i32 -1, i32* %23, align 4
  %24 = load double*, double** %16, align 8
  store double 2.000000e+01, double* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 @epic_usage()
  br label %29

29:                                               ; preds = %27, %8
  %30 = load i8**, i8*** %11, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %18, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* (i8*, i8*, ...) bitcast (i8* (i8*, i8*)* @concatenate to i8* (i8*, i8*, ...)*)(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.17, i64 0, i64 0))
  store i8* %38, i8** %19, align 8
  br label %39

39:                                               ; preds = %143, %29
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %39
  %44 = load i8**, i8*** %11, align 8
  %45 = load i32, i32* %20, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.18, i64 0, i64 0)) #7
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %20, align 4
  %54 = load i8**, i8*** %11, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %19, align 8
  br label %143

59:                                               ; preds = %43
  %60 = load i8**, i8*** %11, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.19, i64 0, i64 0)) #7
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %20, align 4
  %70 = load i8**, i8*** %11, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* %74) #7
  %76 = load i32*, i32** %15, align 8
  store i32 %75, i32* %76, align 4
  br label %142

77:                                               ; preds = %59
  %78 = load i8**, i8*** %11, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.20, i64 0, i64 0)) #7
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  %88 = load i8**, i8*** %11, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call double @atof(i8* %92) #7
  %94 = load double*, double** %16, align 8
  store double %93, double* %94, align 8
  br label %141

95:                                               ; preds = %77
  %96 = load i8**, i8*** %11, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.21, i64 0, i64 0)) #7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  %106 = load i8**, i8*** %11, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @atoi(i8* %110) #7
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %140

113:                                              ; preds = %95
  %114 = load i8**, i8*** %11, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.22, i64 0, i64 0)) #7
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @atoi(i8* %128) #7
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  br label %139

131:                                              ; preds = %113
  %132 = load i8**, i8*** %11, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7.23, i64 0, i64 0), i8* %136)
  %138 = call i32 @epic_usage()
  br label %139

139:                                              ; preds = %131, %121
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %85
  br label %142

142:                                              ; preds = %141, %67
  br label %143

143:                                              ; preds = %142, %51
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %39

146:                                              ; preds = %39
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %148 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (%struct._IO_FILE*)* @PGMStream to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call float* (%struct._IO_FILE*, i32*, i32*, ...) bitcast (float* (%struct._IO_FILE*, i32*, i32*)* @ReadMatrixFromPGMStream to float* (%struct._IO_FILE*, i32*, i32*, ...)*)(%struct._IO_FILE* %151, i32* %152, i32* %153)
  %155 = load float**, float*** %12, align 8
  store float* %154, float** %155, align 8
  br label %175

156:                                              ; preds = %146
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %163)
  %165 = bitcast i8* %164 to float*
  %166 = load float**, float*** %12, align 8
  store float* %165, float** %166, align 8
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %168 = load float**, float*** %12, align 8
  %169 = load float*, float** %168, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (%struct._IO_FILE*, float*, i32, i32, ...) bitcast (i32 (%struct._IO_FILE*, float*, i32, i32)* @read_byte_image to i32 (%struct._IO_FILE*, float*, i32, i32, ...)*)(%struct._IO_FILE* %167, float* %169, i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %156, %150
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %177 = call i32 @fclose(%struct._IO_FILE* %176)
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %225

181:                                              ; preds = %175
  %182 = load i32*, i32** %15, align 8
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %217, %181
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 1, %187
  %189 = srem i32 %185, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %183
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %15, align 8
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 1, %195
  %197 = srem i32 %193, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %191
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 1, %203
  %205 = sdiv i32 %201, %204
  %206 = icmp sge i32 %205, 15
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 1, %211
  %213 = sdiv i32 %209, %212
  %214 = icmp sge i32 %213, 15
  br label %215

215:                                              ; preds = %207, %199, %191, %183
  %216 = phi i1 [ false, %199 ], [ false, %191 ], [ false, %183 ], [ %214, %207 ]
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %183

221:                                              ; preds = %215
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %221, %175
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8.24, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

231:                                              ; preds = %225
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 10
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9.25, i64 0, i64 0), i32 10)
  call void @exit(i32 -1) #8
  unreachable

237:                                              ; preds = %231
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 65535
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %243, 65535
  br i1 %244, label %245, label %251

245:                                              ; preds = %241, %237
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.26, i64 0, i64 0), i32 %247, i32 %249)
  call void @exit(i32 -1) #8
  unreachable

251:                                              ; preds = %241
  %252 = load i32*, i32** %13, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 1, %255
  %257 = srem i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %251
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 1, %263
  %265 = srem i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %259, %251
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %14, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11.27, i64 0, i64 0), i32 %269, i32 %271, i32 %273)
  call void @exit(i32 -1) #8
  unreachable

275:                                              ; preds = %259
  %276 = load i32*, i32** %13, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %15, align 8
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 1, %279
  %281 = sdiv i32 %277, %280
  %282 = icmp slt i32 %281, 15
  br i1 %282, label %291, label %283

283:                                              ; preds = %275
  %284 = load i32*, i32** %14, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %15, align 8
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 1, %287
  %289 = sdiv i32 %285, %288
  %290 = icmp slt i32 %289, 15
  br i1 %290, label %291, label %297

291:                                              ; preds = %283, %275
  %292 = load i32*, i32** %13, align 8
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12.28, i64 0, i64 0), i32 %293, i32 %295, i32 15)
  call void @exit(i32 -1) #8
  unreachable

297:                                              ; preds = %283
  %298 = load i8*, i8** %19, align 8
  %299 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %300 = load %struct._IO_FILE**, %struct._IO_FILE*** %17, align 8
  store %struct._IO_FILE* %299, %struct._IO_FILE** %300, align 8
  %301 = load i32, i32* %9, align 4
  ret i32 %301
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @epic_usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_unepic_args(i32 %0, i8** %1, %struct._IO_FILE** %2, i32* %3, i32* %4, i32* %5, double* %6, %struct._IO_FILE** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct._IO_FILE**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct._IO_FILE**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store double* %6, double** %16, align 8
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

24:                                               ; preds = %8
  %25 = load i8**, i8*** %11, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %29 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  store %struct._IO_FILE* %28, %struct._IO_FILE** %29, align 8
  %30 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %31)
  %33 = load i8, i8* @temp_byte, align 1
  store i8 %33, i8* @temp_byte, align 1
  %34 = load i8, i8* @temp_byte, align 1
  %35 = zext i8 %34 to i32
  store i8 -1, i8* %19, align 1
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i8**, i8*** %11, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16.29, i64 0, i64 0), i8* %40)
  call void @exit(i32 -1) #8
  unreachable

42:                                               ; preds = %24
  %43 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %45 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %44)
  %46 = load i8, i8* @temp_byte, align 1
  store i8 %46, i8* @temp_byte, align 1
  %47 = load i8, i8* @temp_byte, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %51)
  %53 = load i8, i8* @temp_byte, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, i16* @temp_short, align 2
  %55 = load i16, i16* @temp_short, align 2
  %56 = sext i16 %55 to i32
  %57 = shl i32 %56, 8
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* @temp_short, align 2
  %59 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %59, align 8
  %61 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %60)
  %62 = load i8, i8* @temp_byte, align 1
  %63 = zext i8 %62 to i32
  %64 = load i16, i16* @temp_short, align 2
  %65 = sext i16 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* @temp_short, align 2
  %68 = load i16, i16* @temp_short, align 2
  store i16 %68, i16* @temp_short, align 2
  %69 = load i16, i16* @temp_short, align 2
  %70 = sext i16 %69 to i32
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %72, align 8
  %74 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %73)
  %75 = load i8, i8* @temp_byte, align 1
  %76 = zext i8 %75 to i16
  store i16 %76, i16* @temp_short, align 2
  %77 = load i16, i16* @temp_short, align 2
  %78 = sext i16 %77 to i32
  %79 = shl i32 %78, 8
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* @temp_short, align 2
  %81 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %81, align 8
  %83 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %82)
  %84 = load i8, i8* @temp_byte, align 1
  %85 = zext i8 %84 to i32
  %86 = load i16, i16* @temp_short, align 2
  %87 = sext i16 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* @temp_short, align 2
  %90 = load i16, i16* @temp_short, align 2
  store i16 %90, i16* @temp_short, align 2
  %91 = load i16, i16* @temp_short, align 2
  %92 = sext i16 %91 to i32
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %94, align 8
  %96 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %95)
  %97 = load i8, i8* @temp_byte, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, i16* @temp_short, align 2
  %99 = load i16, i16* @temp_short, align 2
  %100 = sext i16 %99 to i32
  %101 = shl i32 %100, 8
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* @temp_short, align 2
  %103 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %103, align 8
  %105 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %104)
  %106 = load i8, i8* @temp_byte, align 1
  %107 = zext i8 %106 to i32
  %108 = load i16, i16* @temp_short, align 2
  %109 = sext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* @temp_short, align 2
  %112 = load i16, i16* @temp_short, align 2
  store i16 %112, i16* @temp_short, align 2
  %113 = load i16, i16* @temp_short, align 2
  %114 = sitofp i16 %113 to double
  %115 = load double*, double** %16, align 8
  store double %114, double* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %122

118:                                              ; preds = %42
  %119 = load i8**, i8*** %11, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %18, align 8
  br label %127

122:                                              ; preds = %42
  %123 = load i8**, i8*** %11, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* (i8*, i8*, ...) bitcast (i8* (i8*, i8*)* @concatenate to i8* (i8*, i8*, ...)*)(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i8* %126, i8** %18, align 8
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i8*, i8** %18, align 8
  %129 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %130 = load %struct._IO_FILE**, %struct._IO_FILE*** %17, align 8
  store %struct._IO_FILE* %129, %struct._IO_FILE** %130, align 8
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantize_pyr(float* %0, i16* %1, i32 %2, i32 %3, double %4, i16* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i16, align 2
  store float* %0, float** %8, align 8
  store i16* %1, i16** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i16* %5, i16** %13, align 8
  %20 = load double, double* %12, align 8
  store double %20, double* %18, align 8
  store i16 0, i16* %19, align 2
  %21 = load i16, i16* %19, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %19, align 2
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %10, align 4
  store i32 1, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 3, %27
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %97, %6
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %104

33:                                               ; preds = %29
  store i32 3, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 3, %34
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %88, %33
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %36
  %45 = load double, double* %18, align 8
  %46 = fcmp olt double %45, 0.000000e+00
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i16*, i16** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  store i16 0, i16* %51, align 2
  br label %73

52:                                               ; preds = %44
  %53 = load double, double* %18, align 8
  %54 = load i16, i16* %19, align 2
  %55 = zext i16 %54 to i32
  %56 = sitofp i32 %55 to double
  %57 = fcmp ogt double %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i16, i16* %19, align 2
  %60 = load i16*, i16** %13, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  store i16 %59, i16* %63, align 2
  br label %72

64:                                               ; preds = %52
  %65 = load double, double* %18, align 8
  %66 = fadd double %65, 5.000000e-01
  %67 = fptoui double %66 to i16
  %68 = load i16*, i16** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  store i16 %67, i16* %71, align 2
  br label %72

72:                                               ; preds = %64, %58
  br label %73

73:                                               ; preds = %72, %47
  %74 = load float*, float** %8, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load i16*, i16** %9, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %78, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = load i16*, i16** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = call i32 @quantize_image(float* %77, i16* %81, i32 %82, i16* %86)
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %15, align 4
  br label %36

96:                                               ; preds = %36
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %100, 4
  store i32 %101, i32* %10, align 4
  %102 = load double, double* %18, align 8
  %103 = fdiv double %102, 2.000000e+00
  store double %103, double* %18, align 8
  br label %29

104:                                              ; preds = %29
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantize_image(float* %0, i16* %1, i32 %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store float* %0, float** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load float*, float** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  store double %24, double* %12, align 8
  %25 = load double, double* %12, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load double, double* %12, align 8
  %29 = fneg double %28
  store double %29, double* %12, align 8
  br label %30

30:                                               ; preds = %27, %18
  %31 = load double, double* %12, align 8
  %32 = load double, double* %13, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %12, align 8
  store double %35, double* %13, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load double, double* %13, align 8
  %42 = load i16*, i16** %9, align 8
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 509, %44
  %46 = sdiv i32 %45, 2
  %47 = sitofp i32 %46 to double
  %48 = fcmp oge double %41, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  %50 = load i16*, i16** %9, align 8
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load double, double* %13, align 8
  %54 = fmul double 2.000000e+00, %53
  %55 = fdiv double %54, 5.090000e+02
  %56 = fadd double %55, 5.000000e-01
  %57 = fptoui double %56 to i16
  %58 = load i16*, i16** %9, align 8
  store i16 %57, i16* %58, align 2
  %59 = load i32, i32* %10, align 4
  %60 = load i16*, i16** %9, align 8
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %49, %40
  %65 = load i16*, i16** %9, align 8
  %66 = load i16, i16* %65, align 2
  %67 = uitofp i16 %66 to double
  store double %67, double* %11, align 8
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %96, %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load float*, float** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = load double, double* %11, align 8
  %80 = fdiv double %78, %79
  store double %80, double* %12, align 8
  %81 = load double, double* %12, align 8
  %82 = fcmp olt double %81, 0.000000e+00
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load double, double* %12, align 8
  %85 = fsub double %84, 5.000000e-01
  br label %89

86:                                               ; preds = %72
  %87 = load double, double* %12, align 8
  %88 = fadd double %87, 5.000000e-01
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi double [ %85, %83 ], [ %88, %86 ]
  %91 = fptosi double %90 to i16
  %92 = load i16*, i16** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  store i16 %91, i16* %95, align 2
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %68

99:                                               ; preds = %68
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unquantize_pyr(i16* %0, i32* %1, i32 %2, i32 %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i16* %0, i16** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16* %4, i16** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %59, %5
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %50, %24
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i16*, i16** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = load i16*, i16** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 @unquantize_image(i16* %37, i32* %41, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %30

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unquantize_image(i16* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = trunc i32 %3 to i16
  store i16* %0, i16** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %12, i16* %9, align 2
  %13 = load i16, i16* %9, align 2
  %14 = zext i16 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 1.800000e-01
  %17 = fsub double %16, 5.000000e-01
  %18 = fptrunc double %17 to float
  store float %18, float* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %82, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %19
  %24 = load i16*, i16** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load i16*, i16** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = mul nsw i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %11, align 4
  %43 = fsub float %41, %42
  %44 = fptosi float %43 to i32
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %81

49:                                               ; preds = %23
  %50 = load i16*, i16** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp sle i32 %55, -1
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load i16*, i16** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = mul nsw i32 %63, %65
  %67 = sitofp i32 %66 to float
  %68 = load float, float* %11, align 4
  %69 = fadd float %67, %68
  %70 = fptosi float %69 to i32
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %80

75:                                               ; preds = %49
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %57
  br label %81

81:                                               ; preds = %80, %31
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %19

85:                                               ; preds = %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @run_length_encode_zeros(i16* %0, i32 %1, i16* %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16* %2, i16** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i16 16384, i16* %12, align 2
  %16 = load i16, i16* %12, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %13, align 2
  store i16 -32768, i16* %15, align 2
  br label %20

20:                                               ; preds = %136, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %20
  %26 = load i16*, i16** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %7, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i16*, i16** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i16, i16* %34, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %33

46:                                               ; preds = %33
  store i64 1, i64* %11, align 8
  store i16 0, i16* %14, align 2
  br label %47

47:                                               ; preds = %77, %46
  %48 = load i16, i16* %14, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i16, i16* %14, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.31, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i16, i16* %14, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* %15, align 2
  %68 = zext i16 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i16
  %71 = load i16*, i16** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i16, i16* %71, i64 %72
  store i16 %70, i16* %73, align 2
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %64, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i16, i16* %14, align 2
  %79 = add i16 %78, 1
  store i16 %79, i16* %14, align 2
  %80 = load i64, i64* %11, align 8
  %81 = shl i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %47

82:                                               ; preds = %47
  br label %136

83:                                               ; preds = %25
  %84 = load i16, i16* %7, align 2
  %85 = sext i16 %84 to i32
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i16, i16* %7, align 2
  %89 = sext i16 %88 to i32
  %90 = sub nsw i32 0, %89
  br label %94

91:                                               ; preds = %83
  %92 = load i16, i16* %7, align 2
  %93 = sext i16 %92 to i32
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i32 [ %90, %87 ], [ %93, %91 ]
  %96 = load i16, i16* %13, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1.32, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i16, i16* %7, align 2
  %103 = sext i16 %102 to i32
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i16, i16* %7, align 2
  %107 = sext i16 %106 to i32
  %108 = sub nsw i32 0, %107
  %109 = trunc i32 %108 to i16
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* %13, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = load i16, i16* %12, align 2
  %115 = zext i16 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  %118 = load i16*, i16** %6, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i16, i16* %118, i64 %119
  store i16 %117, i16* %120, align 2
  br label %131

121:                                              ; preds = %101
  %122 = load i16, i16* %7, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* %13, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %123, %125
  %127 = trunc i32 %126 to i16
  %128 = load i16*, i16** %6, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i16, i16* %128, i64 %129
  store i16 %127, i16* %130, align 2
  br label %131

131:                                              ; preds = %121, %105
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %131, %82
  br label %20

137:                                              ; preds = %20
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  ret i32 %139
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @run_length_decode_zeros(i16* %0, i32 %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16* %2, i16** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i16 16384, i16* %13, align 2
  %16 = load i16, i16* %13, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %14, align 2
  store i16 -32768, i16* %15, align 2
  br label %20

20:                                               ; preds = %91, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %20
  %25 = load i16*, i16** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %12, align 2
  %30 = load i16, i16* %12, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load i16, i16* %12, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %14, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = shl i32 1, %41
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %52, %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i16*, i16** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  store i16 0, i16* %51, align 2
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %43

57:                                               ; preds = %43
  br label %91

58:                                               ; preds = %24
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %13, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i16, i16* %12, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = sub nsw i32 0, %70
  %72 = trunc i32 %71 to i16
  %73 = load i16*, i16** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  store i16 %72, i16* %76, align 2
  br label %88

77:                                               ; preds = %58
  %78 = load i16, i16* %12, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* %14, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %79, %81
  %83 = trunc i32 %82 to i16
  %84 = load i16*, i16** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %84, i64 %86
  store i16 %83, i16* %87, align 2
  br label %88

88:                                               ; preds = %77, %65
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %57
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %20

94:                                               ; preds = %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  %27 = alloca %struct.code_node*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %21, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  %30 = call i32 (i32, i8**, %struct._IO_FILE**, i32*, i32*, i32*, double*, %struct._IO_FILE**, ...) bitcast (i32 (i32, i8**, %struct._IO_FILE**, i32*, i32*, i32*, double*, %struct._IO_FILE**)* @parse_unepic_args to i32 (i32, i8**, %struct._IO_FILE**, i32*, i32*, i32*, double*, %struct._IO_FILE**, ...)*)(i32 %28, i8** %29, %struct._IO_FILE** %6, i32* %13, i32* %11, i32* %12, double* %14, %struct._IO_FILE** %7)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %32 = call i64 @ftell(%struct._IO_FILE* %31)
  store i64 %32, i64* %18, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.33, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load double, double* %14, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1.34, i64 0, i64 0), i32 %34, i32 %35, i32 %36, double %37)
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 2
  %44 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %43)
  %45 = bitcast i8* %44 to i16*
  store i16* %45, i16** %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = mul nsw i32 3, %46
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 2
  %51 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %50)
  %52 = bitcast i8* %51 to i16*
  store i16* %52, i16** %16, align 8
  br label %53

53:                                               ; preds = %243, %2
  %54 = load i32, i32* %21, align 4
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 3, %55
  %57 = add nsw i32 %56, 1
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %244

59:                                               ; preds = %53
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %61 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %60)
  %62 = load i8, i8* @temp_byte, align 1
  store i8 %62, i8* %17, align 1
  store i32 1, i32* %24, align 4
  br label %63

63:                                               ; preds = %115, %59
  %64 = load i8, i8* %17, align 1
  %65 = zext i8 %64 to i32
  %66 = and i32 %65, -128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %142

68:                                               ; preds = %63
  %69 = load i8, i8* %17, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 127
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %24, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %68
  store i32 0, i32* %24, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 2, %81
  %83 = ashr i32 %80, %82
  store i32 %83, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %101

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %20, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sdiv i32 %90, 3
  %92 = sub nsw i32 %88, %91
  %93 = mul nsw i32 2, %92
  %94 = ashr i32 %87, %93
  store i32 %94, i32* %22, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load i32, i32* %20, align 4
  %97 = sub nsw i32 %96, 1
  %98 = srem i32 %97, 3
  %99 = add nsw i32 1, %98
  %100 = mul nsw i32 %95, %99
  store i32 %100, i32* %23, align 4
  br label %101

101:                                              ; preds = %84, %77
  br label %115

102:                                              ; preds = %68
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %20, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sdiv i32 %108, 3
  %110 = sub nsw i32 %106, %109
  %111 = mul nsw i32 2, %110
  %112 = ashr i32 %105, %111
  %113 = load i32, i32* %22, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %22, align 4
  br label %115

115:                                              ; preds = %102, %101
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %117 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %116)
  %118 = load i8, i8* @temp_byte, align 1
  %119 = zext i8 %118 to i16
  store i16 %119, i16* @temp_short, align 2
  %120 = load i16, i16* @temp_short, align 2
  %121 = sext i16 %120 to i32
  %122 = shl i32 %121, 8
  %123 = trunc i32 %122 to i16
  store i16 %123, i16* @temp_short, align 2
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %125 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %124)
  %126 = load i8, i8* @temp_byte, align 1
  %127 = zext i8 %126 to i32
  %128 = load i16, i16* @temp_short, align 2
  %129 = sext i16 %128 to i32
  %130 = or i32 %129, %127
  %131 = trunc i32 %130 to i16
  store i16 %131, i16* @temp_short, align 2
  %132 = load i16, i16* @temp_short, align 2
  %133 = load i16*, i16** %16, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i16, i16* %133, i64 %135
  store i16 %132, i16* %136, align 2
  %137 = load i32, i32* %21, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %21, align 4
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %140 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %139)
  %141 = load i8, i8* @temp_byte, align 1
  store i8 %141, i8* %17, align 1
  br label %63

142:                                              ; preds = %63
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %144 = call i64 @ftell(%struct._IO_FILE* %143)
  %145 = load i64, i64* %18, align 8
  %146 = sub nsw i64 %144, %145
  %147 = sub nsw i64 %146, 1
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.35, i64 0, i64 0), i64 %147)
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %150 = call i64 @ftell(%struct._IO_FILE* %149)
  %151 = sub nsw i64 %150, 1
  store i64 %151, i64* %18, align 8
  %152 = load i8, i8* %17, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %173

155:                                              ; preds = %142
  %156 = load i16*, i16** %10, align 8
  %157 = load i32, i32* %23, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i16, i16* %156, i64 %158
  %160 = bitcast i16* %159 to i8*
  %161 = load i32, i32* %22, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 2, %162
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %165 = call i64 @fread(i8* %160, i64 1, i64 %163, %struct._IO_FILE* %164)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %167 = call i64 @ftell(%struct._IO_FILE* %166)
  %168 = load i64, i64* %18, align 8
  %169 = sub nsw i64 %167, %168
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3.36, i64 0, i64 0), i64 %169)
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %172 = call i64 @ftell(%struct._IO_FILE* %171)
  store i64 %172, i64* %18, align 8
  br label %243

173:                                              ; preds = %142
  %174 = load i8, i8* %17, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %238

177:                                              ; preds = %173
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %179 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %178)
  %180 = load i8, i8* @temp_byte, align 1
  %181 = zext i8 %180 to i32
  store i32 %181, i32* @temp_int, align 4
  %182 = load i32, i32* @temp_int, align 4
  %183 = shl i32 %182, 8
  store i32 %183, i32* @temp_int, align 4
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %185 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %184)
  %186 = load i8, i8* @temp_byte, align 1
  %187 = zext i8 %186 to i32
  %188 = load i32, i32* @temp_int, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* @temp_int, align 4
  %190 = load i32, i32* @temp_int, align 4
  %191 = shl i32 %190, 8
  store i32 %191, i32* @temp_int, align 4
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %193 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %192)
  %194 = load i8, i8* @temp_byte, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* @temp_int, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* @temp_int, align 4
  %198 = load i32, i32* @temp_int, align 4
  %199 = shl i32 %198, 8
  store i32 %199, i32* @temp_int, align 4
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %201 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %200)
  %202 = load i8, i8* @temp_byte, align 1
  %203 = zext i8 %202 to i32
  %204 = load i32, i32* @temp_int, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* @temp_int, align 4
  %206 = load i32, i32* @temp_int, align 4
  store i32 %206, i32* %25, align 4
  %207 = load i32, i32* %25, align 4
  %208 = zext i32 %207 to i64
  %209 = mul i64 %208, 2
  %210 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %209)
  %211 = bitcast i8* %210 to i16*
  store i16* %211, i16** %26, align 8
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %213 = call %struct.code_node* (%struct._IO_FILE*, ...) bitcast (%struct.code_node* (%struct._IO_FILE*)* @read_huffman_tree to %struct.code_node* (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %212)
  store %struct.code_node* %213, %struct.code_node** %27, align 8
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %215 = call i64 @ftell(%struct._IO_FILE* %214)
  %216 = load i64, i64* %18, align 8
  %217 = sub nsw i64 %215, %216
  %218 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.37, i64 0, i64 0), i64 %217)
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %220 = call i64 @ftell(%struct._IO_FILE* %219)
  store i64 %220, i64* %18, align 8
  %221 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %222 = load %struct.code_node*, %struct.code_node** %27, align 8
  %223 = load i16*, i16** %26, align 8
  %224 = load i32, i32* %25, align 4
  %225 = call i32 (%struct._IO_FILE*, %struct.code_node*, i16*, i32, ...) bitcast (i32 (%struct._IO_FILE*, %struct.code_node*, i16*, i32)* @read_and_huffman_decode to i32 (%struct._IO_FILE*, %struct.code_node*, i16*, i32, ...)*)(%struct._IO_FILE* %221, %struct.code_node* %222, i16* %223, i32 %224)
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %227 = call i64 @ftell(%struct._IO_FILE* %226)
  %228 = load i64, i64* %18, align 8
  %229 = sub nsw i64 %227, %228
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5.38, i64 0, i64 0), i64 %229)
  %231 = load i16*, i16** %26, align 8
  %232 = load i32, i32* %22, align 4
  %233 = load i16*, i16** %10, align 8
  %234 = load i32, i32* %23, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i16, i16* %233, i64 %235
  %237 = call i32 (i16*, i32, i16*, ...) bitcast (i32 (i16*, i32, i16*)* @run_length_decode_zeros to i32 (i16*, i32, i16*, ...)*)(i16* %231, i32 %232, i16* %236)
  br label %242

238:                                              ; preds = %173
  %239 = load i8, i8* %17, align 1
  %240 = zext i8 %239 to i32
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6.39, i64 0, i64 0), i32 %240)
  call void @exit(i32 -1) #5
  unreachable

242:                                              ; preds = %177
  br label %243

243:                                              ; preds = %242, %155
  br label %53

244:                                              ; preds = %53
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %246 = call i64 @ftell(%struct._IO_FILE* %245)
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7.40, i64 0, i64 0), i64 %246)
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %249 = call i32 @fclose(%struct._IO_FILE* %248)
  %250 = call i32 (...) @clock()
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8.41, i64 0, i64 0))
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %12, align 4
  %254 = mul nsw i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = mul i64 %255, 4
  %257 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %256)
  %258 = bitcast i8* %257 to i32*
  store i32* %258, i32** %9, align 8
  %259 = load i16*, i16** %10, align 8
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* %12, align 4
  %263 = mul nsw i32 %261, %262
  %264 = load i32, i32* %13, align 4
  %265 = load i16*, i16** %16, align 8
  %266 = call i32 (i16*, i32*, i32, i32, i16*, ...) bitcast (i32 (i16*, i32*, i32, i32, i16*)* @unquantize_pyr to i32 (i16*, i32*, i32, i32, i16*, ...)*)(i16* %259, i32* %260, i32 %263, i32 %264, i16* %265)
  %267 = load i16*, i16** %10, align 8
  %268 = bitcast i16* %267 to i8*
  %269 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %268)
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.42, i64 0, i64 0))
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %12, align 4
  %273 = mul nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = mul i64 %274, 4
  %276 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %275)
  %277 = bitcast i8* %276 to i32*
  store i32* %277, i32** %8, align 8
  %278 = load i32*, i32** %9, align 8
  %279 = load i32*, i32** %8, align 8
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* %12, align 4
  %282 = load i32, i32* %13, align 4
  %283 = call i32 (i32*, i32*, i32, i32, i32, ...) bitcast (i32 (i32*, i32*, i32, i32, i32)* @collapse_pyr to i32 (i32*, i32*, i32, i32, i32, ...)*)(i32* %278, i32* %279, i32 %280, i32 %281, i32 %282)
  store i32 0, i32* %19, align 4
  br label %284

284:                                              ; preds = %324, %244
  %285 = load i32, i32* %19, align 4
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %12, align 4
  %288 = mul nsw i32 %286, %287
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %327

290:                                              ; preds = %284
  %291 = load i32*, i32** %8, align 8
  %292 = load i32, i32* %19, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = sitofp i32 %295 to double
  %297 = load double, double* %14, align 8
  %298 = fdiv double %296, %297
  store double %298, double* %15, align 8
  %299 = load double, double* %15, align 8
  %300 = fcmp olt double %299, 0.000000e+00
  br i1 %300, label %301, label %306

301:                                              ; preds = %290
  %302 = load i32*, i32** %8, align 8
  %303 = load i32, i32* %19, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  store i32 0, i32* %305, align 4
  br label %323

306:                                              ; preds = %290
  %307 = load double, double* %15, align 8
  %308 = fcmp ogt double %307, 2.550000e+02
  br i1 %308, label %309, label %314

309:                                              ; preds = %306
  %310 = load i32*, i32** %8, align 8
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 255, i32* %313, align 4
  br label %322

314:                                              ; preds = %306
  %315 = load double, double* %15, align 8
  %316 = fadd double %315, 5.000000e-01
  %317 = fptosi double %316 to i32
  %318 = load i32*, i32** %8, align 8
  %319 = load i32, i32* %19, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %317, i32* %321, align 4
  br label %322

322:                                              ; preds = %314, %309
  br label %323

323:                                              ; preds = %322, %301
  br label %324

324:                                              ; preds = %323
  %325 = load i32, i32* %19, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %19, align 4
  br label %284

327:                                              ; preds = %284
  %328 = call i32 (...) @clock()
  %329 = sdiv i32 %328, 1000
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.43, i64 0, i64 0), i32 %329)
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11.44, i64 0, i64 0))
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %333 = load i32*, i32** %8, align 8
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* %12, align 4
  %336 = call i32 (%struct._IO_FILE*, i32*, i32, i32, ...) bitcast (i32 (%struct._IO_FILE*, i32*, i32, i32)* @write_pgm_image to i32 (%struct._IO_FILE*, i32*, i32, i32, ...)*)(%struct._IO_FILE* %332, i32* %333, i32 %334, i32 %335)
  %337 = load i32*, i32** %9, align 8
  %338 = bitcast i32* %337 to i8*
  %339 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %338)
  %340 = load i32*, i32** %8, align 8
  %341 = bitcast i32* %340 to i8*
  %342 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %341)
  %343 = load i16*, i16** %16, align 8
  %344 = bitcast i16* %343 to i8*
  %345 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %344)
  %346 = load i16*, i16** %26, align 8
  %347 = bitcast i16* %346 to i8*
  %348 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %347)
  %349 = load i32, i32* %3, align 4
  ret i32 %349
}

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

declare dso_local i32 @clock(...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @check_malloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @malloc(i64 %5) #6
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.53, i64 0, i64 0))
  call void @exit(i32 -1) #5
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_free(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  call void @free(i8* %7) #6
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @check_fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* %6, i8* %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.58, i64 0, i64 0), i8* %12, i8* %13)
  call void @exit(i32 -1) #5
  unreachable

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %16
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @concatenate(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6) #7
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #7
  %10 = add i64 %7, %9
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i8* @check_malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strcpy(i8* %14, i8* %15) #6
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strcat(i8* %17, i8* %18) #6
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
