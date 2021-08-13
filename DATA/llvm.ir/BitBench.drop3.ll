; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@__const.main.postfix = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Usage: drop_0XX [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @drop_0xx(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  store i16 0, i16* %8, align 2
  store i16 0, i16* %9, align 2
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %349, %3
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 %15, 3
  store i32 %16, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %354

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %4, align 8
  %22 = load i8, i8* %20, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i16, i16* %8, align 2
  %26 = zext i16 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %8, align 2
  %29 = load i16, i16* %8, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 13
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %10, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp sge i32 %33, 4
  br i1 %34, label %35, label %58

35:                                               ; preds = %19
  %36 = load i16, i16* %9, align 2
  %37 = zext i16 %36 to i32
  %38 = shl i32 %37, 3
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %9, align 2
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 3
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, 7
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load i16, i16* %9, align 2
  %50 = zext i16 %49 to i32
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 7
  %53 = ashr i32 %50, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  store i8 %54, i8* %55, align 1
  br label %57

57:                                               ; preds = %48, %35
  br label %58

58:                                               ; preds = %57, %19
  %59 = load i16, i16* %8, align 2
  %60 = zext i16 %59 to i32
  %61 = shl i32 %60, 3
  %62 = trunc i32 %61 to i16
  store i16 %62, i16* %8, align 2
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 %63, 3
  store i32 %64, i32* %7, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %354

67:                                               ; preds = %58
  %68 = load i16, i16* %8, align 2
  %69 = zext i16 %68 to i32
  %70 = ashr i32 %69, 13
  %71 = trunc i32 %70 to i8
  store i8 %71, i8* %10, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp sge i32 %72, 4
  br i1 %73, label %74, label %97

74:                                               ; preds = %67
  %75 = load i16, i16* %9, align 2
  %76 = zext i16 %75 to i32
  %77 = shl i32 %76, 3
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %77, %79
  %81 = trunc i32 %80 to i16
  store i16 %81, i16* %9, align 2
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 3
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, 7
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %96

87:                                               ; preds = %74
  %88 = load i16, i16* %9, align 2
  %89 = zext i16 %88 to i32
  %90 = load i32, i32* %11, align 4
  %91 = and i32 %90, 7
  %92 = ashr i32 %89, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  store i8 %93, i8* %94, align 1
  br label %96

96:                                               ; preds = %87, %74
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i16, i16* %8, align 2
  %99 = zext i16 %98 to i32
  %100 = shl i32 %99, 3
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %8, align 2
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %102, 3
  store i32 %103, i32* %7, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %354

106:                                              ; preds = %97
  %107 = load i8*, i8** %4, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %4, align 8
  %109 = load i8, i8* %107, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 6
  %112 = load i16, i16* %8, align 2
  %113 = zext i16 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i16
  store i16 %115, i16* %8, align 2
  %116 = load i16, i16* %8, align 2
  %117 = zext i16 %116 to i32
  %118 = ashr i32 %117, 13
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %10, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sge i32 %120, 4
  br i1 %121, label %122, label %145

122:                                              ; preds = %106
  %123 = load i16, i16* %9, align 2
  %124 = zext i16 %123 to i32
  %125 = shl i32 %124, 3
  %126 = load i8, i8* %10, align 1
  %127 = zext i8 %126 to i32
  %128 = or i32 %125, %127
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %9, align 2
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 3
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = and i32 %132, 7
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %144

135:                                              ; preds = %122
  %136 = load i16, i16* %9, align 2
  %137 = zext i16 %136 to i32
  %138 = load i32, i32* %11, align 4
  %139 = and i32 %138, 7
  %140 = ashr i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  store i8 %141, i8* %142, align 1
  br label %144

144:                                              ; preds = %135, %122
  br label %145

145:                                              ; preds = %144, %106
  %146 = load i16, i16* %8, align 2
  %147 = zext i16 %146 to i32
  %148 = shl i32 %147, 3
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %8, align 2
  %150 = load i32, i32* %7, align 4
  %151 = sub nsw i32 %150, 3
  store i32 %151, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %354

154:                                              ; preds = %145
  %155 = load i16, i16* %8, align 2
  %156 = zext i16 %155 to i32
  %157 = ashr i32 %156, 13
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %10, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp sge i32 %159, 4
  br i1 %160, label %161, label %184

161:                                              ; preds = %154
  %162 = load i16, i16* %9, align 2
  %163 = zext i16 %162 to i32
  %164 = shl i32 %163, 3
  %165 = load i8, i8* %10, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %164, %166
  %168 = trunc i32 %167 to i16
  store i16 %168, i16* %9, align 2
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 3
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %171, 7
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %183

174:                                              ; preds = %161
  %175 = load i16, i16* %9, align 2
  %176 = zext i16 %175 to i32
  %177 = load i32, i32* %11, align 4
  %178 = and i32 %177, 7
  %179 = ashr i32 %176, %178
  %180 = trunc i32 %179 to i8
  %181 = load i8*, i8** %5, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %5, align 8
  store i8 %180, i8* %181, align 1
  br label %183

183:                                              ; preds = %174, %161
  br label %184

184:                                              ; preds = %183, %154
  %185 = load i16, i16* %8, align 2
  %186 = zext i16 %185 to i32
  %187 = shl i32 %186, 3
  %188 = trunc i32 %187 to i16
  store i16 %188, i16* %8, align 2
  %189 = load i32, i32* %7, align 4
  %190 = sub nsw i32 %189, 3
  store i32 %190, i32* %7, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %354

193:                                              ; preds = %184
  %194 = load i16, i16* %8, align 2
  %195 = zext i16 %194 to i32
  %196 = ashr i32 %195, 13
  %197 = trunc i32 %196 to i8
  store i8 %197, i8* %10, align 1
  %198 = zext i8 %197 to i32
  %199 = icmp sge i32 %198, 4
  br i1 %199, label %200, label %223

200:                                              ; preds = %193
  %201 = load i16, i16* %9, align 2
  %202 = zext i16 %201 to i32
  %203 = shl i32 %202, 3
  %204 = load i8, i8* %10, align 1
  %205 = zext i8 %204 to i32
  %206 = or i32 %203, %205
  %207 = trunc i32 %206 to i16
  store i16 %207, i16* %9, align 2
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 3
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = and i32 %210, 7
  %212 = icmp slt i32 %211, 3
  br i1 %212, label %213, label %222

213:                                              ; preds = %200
  %214 = load i16, i16* %9, align 2
  %215 = zext i16 %214 to i32
  %216 = load i32, i32* %11, align 4
  %217 = and i32 %216, 7
  %218 = ashr i32 %215, %217
  %219 = trunc i32 %218 to i8
  %220 = load i8*, i8** %5, align 8
  %221 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %221, i8** %5, align 8
  store i8 %219, i8* %220, align 1
  br label %222

222:                                              ; preds = %213, %200
  br label %223

223:                                              ; preds = %222, %193
  %224 = load i16, i16* %8, align 2
  %225 = zext i16 %224 to i32
  %226 = shl i32 %225, 3
  %227 = trunc i32 %226 to i16
  store i16 %227, i16* %8, align 2
  %228 = load i32, i32* %7, align 4
  %229 = sub nsw i32 %228, 3
  store i32 %229, i32* %7, align 4
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %354

232:                                              ; preds = %223
  %233 = load i8*, i8** %4, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %4, align 8
  %235 = load i8, i8* %233, align 1
  %236 = zext i8 %235 to i32
  %237 = shl i32 %236, 7
  %238 = load i16, i16* %8, align 2
  %239 = zext i16 %238 to i32
  %240 = or i32 %239, %237
  %241 = trunc i32 %240 to i16
  store i16 %241, i16* %8, align 2
  %242 = load i16, i16* %8, align 2
  %243 = zext i16 %242 to i32
  %244 = ashr i32 %243, 13
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %10, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp sge i32 %246, 4
  br i1 %247, label %248, label %271

248:                                              ; preds = %232
  %249 = load i16, i16* %9, align 2
  %250 = zext i16 %249 to i32
  %251 = shl i32 %250, 3
  %252 = load i8, i8* %10, align 1
  %253 = zext i8 %252 to i32
  %254 = or i32 %251, %253
  %255 = trunc i32 %254 to i16
  store i16 %255, i16* %9, align 2
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 3
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %11, align 4
  %259 = and i32 %258, 7
  %260 = icmp slt i32 %259, 3
  br i1 %260, label %261, label %270

261:                                              ; preds = %248
  %262 = load i16, i16* %9, align 2
  %263 = zext i16 %262 to i32
  %264 = load i32, i32* %11, align 4
  %265 = and i32 %264, 7
  %266 = ashr i32 %263, %265
  %267 = trunc i32 %266 to i8
  %268 = load i8*, i8** %5, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %5, align 8
  store i8 %267, i8* %268, align 1
  br label %270

270:                                              ; preds = %261, %248
  br label %271

271:                                              ; preds = %270, %232
  %272 = load i16, i16* %8, align 2
  %273 = zext i16 %272 to i32
  %274 = shl i32 %273, 3
  %275 = trunc i32 %274 to i16
  store i16 %275, i16* %8, align 2
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 %276, 3
  store i32 %277, i32* %7, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %271
  br label %354

280:                                              ; preds = %271
  %281 = load i16, i16* %8, align 2
  %282 = zext i16 %281 to i32
  %283 = ashr i32 %282, 13
  %284 = trunc i32 %283 to i8
  store i8 %284, i8* %10, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp sge i32 %285, 4
  br i1 %286, label %287, label %310

287:                                              ; preds = %280
  %288 = load i16, i16* %9, align 2
  %289 = zext i16 %288 to i32
  %290 = shl i32 %289, 3
  %291 = load i8, i8* %10, align 1
  %292 = zext i8 %291 to i32
  %293 = or i32 %290, %292
  %294 = trunc i32 %293 to i16
  store i16 %294, i16* %9, align 2
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 3
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %11, align 4
  %298 = and i32 %297, 7
  %299 = icmp slt i32 %298, 3
  br i1 %299, label %300, label %309

300:                                              ; preds = %287
  %301 = load i16, i16* %9, align 2
  %302 = zext i16 %301 to i32
  %303 = load i32, i32* %11, align 4
  %304 = and i32 %303, 7
  %305 = ashr i32 %302, %304
  %306 = trunc i32 %305 to i8
  %307 = load i8*, i8** %5, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %5, align 8
  store i8 %306, i8* %307, align 1
  br label %309

309:                                              ; preds = %300, %287
  br label %310

310:                                              ; preds = %309, %280
  %311 = load i16, i16* %8, align 2
  %312 = zext i16 %311 to i32
  %313 = shl i32 %312, 3
  %314 = trunc i32 %313 to i16
  store i16 %314, i16* %8, align 2
  %315 = load i32, i32* %7, align 4
  %316 = sub nsw i32 %315, 3
  store i32 %316, i32* %7, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %310
  br label %354

319:                                              ; preds = %310
  %320 = load i16, i16* %8, align 2
  %321 = zext i16 %320 to i32
  %322 = ashr i32 %321, 13
  %323 = trunc i32 %322 to i8
  store i8 %323, i8* %10, align 1
  %324 = zext i8 %323 to i32
  %325 = icmp sge i32 %324, 4
  br i1 %325, label %326, label %349

326:                                              ; preds = %319
  %327 = load i16, i16* %9, align 2
  %328 = zext i16 %327 to i32
  %329 = shl i32 %328, 3
  %330 = load i8, i8* %10, align 1
  %331 = zext i8 %330 to i32
  %332 = or i32 %329, %331
  %333 = trunc i32 %332 to i16
  store i16 %333, i16* %9, align 2
  %334 = load i32, i32* %11, align 4
  %335 = add nsw i32 %334, 3
  store i32 %335, i32* %11, align 4
  %336 = load i32, i32* %11, align 4
  %337 = and i32 %336, 7
  %338 = icmp slt i32 %337, 3
  br i1 %338, label %339, label %348

339:                                              ; preds = %326
  %340 = load i16, i16* %9, align 2
  %341 = zext i16 %340 to i32
  %342 = load i32, i32* %11, align 4
  %343 = and i32 %342, 7
  %344 = ashr i32 %341, %343
  %345 = trunc i32 %344 to i8
  %346 = load i8*, i8** %5, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %5, align 8
  store i8 %345, i8* %346, align 1
  br label %348

348:                                              ; preds = %339, %326
  br label %349

349:                                              ; preds = %348, %319
  %350 = load i16, i16* %8, align 2
  %351 = zext i16 %350 to i32
  %352 = shl i32 %351, 3
  %353 = trunc i32 %352 to i16
  store i16 %353, i16* %8, align 2
  br label %14

354:                                              ; preds = %318, %279, %231, %192, %153, %105, %66, %18
  %355 = load i32, i32* %11, align 4
  %356 = and i32 %355, 7
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %368

358:                                              ; preds = %354
  %359 = load i16, i16* %9, align 2
  %360 = zext i16 %359 to i32
  %361 = load i32, i32* %11, align 4
  %362 = and i32 %361, 7
  %363 = sub nsw i32 8, %362
  %364 = shl i32 %360, %363
  %365 = trunc i32 %364 to i8
  %366 = load i8*, i8** %5, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %5, align 8
  store i8 %365, i8* %366, align 1
  br label %368

368:                                              ; preds = %358, %354
  %369 = load i32, i32* %11, align 4
  %370 = ashr i32 %369, 3
  ret i32 %370
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca [3 x i8], align 1
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %19 = bitcast [3 x i8]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.main.postfix, i32 0, i32 0), i64 3, i1 false)
  %20 = call noalias i8* @malloc(i64 4000000) #6
  store i8* %20, i8** %12, align 8
  %21 = call noalias i8* @malloc(i64 4000000) #6
  store i8* %21, i8** %13, align 8
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %57

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** %6, align 8
  %29 = icmp eq %struct._IO_FILE* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  call void @perror(i8* %33)
  call void @exit(i32 1) #7
  unreachable

34:                                               ; preds = %24
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @strlen(i8* %37) #8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %40 = call i64 @strlen(i8* %39) #8
  %41 = add i64 %38, %40
  %42 = add i64 %41, 1
  %43 = call noalias i8* @malloc(i64 %42) #6
  store i8* %43, i8** %15, align 8
  %44 = load i8*, i8** %15, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @strcpy(i8* %44, i8* %47) #6
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds [3 x i8], [3 x i8]* %16, i64 0, i64 0
  %51 = call i8* @strcat(i8* %49, i8* %50) #6
  %52 = load i8*, i8** %15, align 8
  call void @free(i8* %52) #6
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i32 1
  store i8** %54, i8*** %5, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  br label %59

57:                                               ; preds = %2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %58, %struct._IO_FILE** %6, align 8
  br label %59

59:                                               ; preds = %57, %34
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 2) #7
  unreachable

64:                                               ; preds = %59
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %66 = load i8*, i8** %12, align 8
  %67 = call i64 @read_data(%struct._IO_FILE* %65, i8* %66)
  store i64 %67, i64* %9, align 8
  %68 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #6
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %79, %64
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 20
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %14, align 8
  %74 = load i8*, i8** %14, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i64, i64* %9, align 8
  %77 = mul i64 %76, 8
  %78 = call i32 @drop_0xx(i8* %74, i8* %75, i64 %77)
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %69

82:                                               ; preds = %69
  %83 = call i32 @gettimeofday(%struct.timeval* %18, %struct.timezone* null) #6
  %84 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = mul nsw i64 %85, 1000000
  %87 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %86, %88
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = mul nsw i64 %91, 1000000
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %92, %94
  %96 = sub nsw i64 %89, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %0, i8* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = call i64 @fread(i8* %5, i64 1, i64 4000000, %struct._IO_FILE* %6)
  ret i64 %7
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
