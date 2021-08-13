; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"\0ASequoia benchmark version 1.0\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"\0A***** results \0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"returnVal = %f \0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"i = %5d j = %5d    dtcdgd[i][j]   = %e \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Crystal_Cholesky(i32 %0, [12 x double]* %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [12 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store [12 x double]* %1, [12 x double]** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %27, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load double*, double** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double*, double** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  store double %22, double* %26, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %13

30:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %52, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %31
  %36 = load [12 x double]*, [12 x double]** %6, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [12 x double], [12 x double]* %36, i64 %38
  %40 = getelementptr inbounds [12 x double], [12 x double]* %39, i64 0, i64 0
  %41 = load double, double* %40, align 8
  %42 = load [12 x double]*, [12 x double]** %6, align 8
  %43 = getelementptr inbounds [12 x double], [12 x double]* %42, i64 0
  %44 = getelementptr inbounds [12 x double], [12 x double]* %43, i64 0, i64 0
  %45 = load double, double* %44, align 8
  %46 = fdiv double %41, %45
  %47 = load [12 x double]*, [12 x double]** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [12 x double], [12 x double]* %47, i64 %49
  %51 = getelementptr inbounds [12 x double], [12 x double]* %50, i64 0, i64 0
  store double %46, double* %51, align 8
  br label %52

52:                                               ; preds = %35
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %31

55:                                               ; preds = %31
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %216, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %219

60:                                               ; preds = %56
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load [12 x double]*, [12 x double]** %6, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [12 x double], [12 x double]* %66, i64 %68
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [12 x double], [12 x double]* %69, i64 0, i64 %71
  %73 = load double, double* %72, align 8
  %74 = load [12 x double]*, [12 x double]** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [12 x double], [12 x double]* %74, i64 %76
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [12 x double], [12 x double]* %77, i64 0, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %73, %81
  %83 = load double, double* %12, align 8
  %84 = fadd double %83, %82
  store double %84, double* %12, align 8
  br label %85

85:                                               ; preds = %65
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %61

88:                                               ; preds = %61
  %89 = load [12 x double]*, [12 x double]** %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [12 x double], [12 x double]* %89, i64 %91
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [12 x double], [12 x double]* %92, i64 0, i64 %94
  %96 = load double, double* %95, align 8
  %97 = load double, double* %12, align 8
  %98 = fsub double %96, %97
  %99 = load [12 x double]*, [12 x double]** %6, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [12 x double], [12 x double]* %99, i64 %101
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [12 x double], [12 x double]* %102, i64 0, i64 %104
  store double %98, double* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %212, %88
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %215

112:                                              ; preds = %108
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %137, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %113
  %118 = load [12 x double]*, [12 x double]** %6, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [12 x double], [12 x double]* %118, i64 %120
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [12 x double], [12 x double]* %121, i64 0, i64 %123
  %125 = load double, double* %124, align 8
  %126 = load [12 x double]*, [12 x double]** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [12 x double], [12 x double]* %126, i64 %128
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [12 x double], [12 x double]* %129, i64 0, i64 %131
  %133 = load double, double* %132, align 8
  %134 = fmul double %125, %133
  %135 = load double, double* %12, align 8
  %136 = fadd double %135, %134
  store double %136, double* %12, align 8
  br label %137

137:                                              ; preds = %117
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %113

140:                                              ; preds = %113
  %141 = load [12 x double]*, [12 x double]** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [12 x double], [12 x double]* %141, i64 %143
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [12 x double], [12 x double]* %144, i64 0, i64 %146
  %148 = load double, double* %147, align 8
  %149 = load double, double* %12, align 8
  %150 = fsub double %148, %149
  %151 = load [12 x double]*, [12 x double]** %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [12 x double], [12 x double]* %151, i64 %153
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [12 x double], [12 x double]* %154, i64 0, i64 %156
  store double %150, double* %157, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %182, %140
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %158
  %163 = load [12 x double]*, [12 x double]** %6, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [12 x double], [12 x double]* %163, i64 %165
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [12 x double], [12 x double]* %166, i64 0, i64 %168
  %170 = load double, double* %169, align 8
  %171 = load [12 x double]*, [12 x double]** %6, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [12 x double], [12 x double]* %171, i64 %173
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [12 x double], [12 x double]* %174, i64 0, i64 %176
  %178 = load double, double* %177, align 8
  %179 = fmul double %170, %178
  %180 = load double, double* %12, align 8
  %181 = fadd double %180, %179
  store double %181, double* %12, align 8
  br label %182

182:                                              ; preds = %162
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %158

185:                                              ; preds = %158
  %186 = load [12 x double]*, [12 x double]** %6, align 8
  %187 = load i32, i32* %10, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [12 x double], [12 x double]* %186, i64 %188
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [12 x double], [12 x double]* %189, i64 0, i64 %191
  %193 = load double, double* %192, align 8
  %194 = load double, double* %12, align 8
  %195 = fsub double %193, %194
  %196 = load [12 x double]*, [12 x double]** %6, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [12 x double], [12 x double]* %196, i64 %198
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [12 x double], [12 x double]* %199, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fdiv double %195, %203
  %205 = load [12 x double]*, [12 x double]** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [12 x double], [12 x double]* %205, i64 %207
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [12 x double], [12 x double]* %208, i64 0, i64 %210
  store double %204, double* %211, align 8
  br label %212

212:                                              ; preds = %185
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %108

215:                                              ; preds = %108
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %56

219:                                              ; preds = %56
  store i32 1, i32* %9, align 4
  br label %220

220:                                              ; preds = %258, %219
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %5, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %261

224:                                              ; preds = %220
  store i32 0, i32* %11, align 4
  br label %225

225:                                              ; preds = %254, %224
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %257

229:                                              ; preds = %225
  %230 = load double*, double** %8, align 8
  %231 = load i32, i32* %9, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %230, i64 %232
  %234 = load double, double* %233, align 8
  %235 = load [12 x double]*, [12 x double]** %6, align 8
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [12 x double], [12 x double]* %235, i64 %237
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [12 x double], [12 x double]* %238, i64 0, i64 %240
  %242 = load double, double* %241, align 8
  %243 = load double*, double** %8, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  %247 = load double, double* %246, align 8
  %248 = fmul double %242, %247
  %249 = fsub double %234, %248
  %250 = load double*, double** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds double, double* %250, i64 %252
  store double %249, double* %253, align 8
  br label %254

254:                                              ; preds = %229
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %11, align 4
  br label %225

257:                                              ; preds = %225
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %9, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %9, align 4
  br label %220

261:                                              ; preds = %220
  %262 = load double*, double** %8, align 8
  %263 = load i32, i32* %5, align 4
  %264 = sub nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds double, double* %262, i64 %265
  %267 = load double, double* %266, align 8
  %268 = load [12 x double]*, [12 x double]** %6, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sub nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [12 x double], [12 x double]* %268, i64 %271
  %273 = load i32, i32* %5, align 4
  %274 = sub nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [12 x double], [12 x double]* %272, i64 0, i64 %275
  %277 = load double, double* %276, align 8
  %278 = fdiv double %267, %277
  %279 = load double*, double** %8, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds double, double* %279, i64 %282
  store double %278, double* %283, align 8
  %284 = load i32, i32* %5, align 4
  %285 = sub nsw i32 %284, 2
  store i32 %285, i32* %9, align 4
  br label %286

286:                                              ; preds = %343, %261
  %287 = load i32, i32* %9, align 4
  %288 = icmp sge i32 %287, 0
  br i1 %288, label %289, label %346

289:                                              ; preds = %286
  %290 = load i32, i32* %9, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %11, align 4
  br label %292

292:                                              ; preds = %321, %289
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* %5, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %324

296:                                              ; preds = %292
  %297 = load double*, double** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double, double* %297, i64 %299
  %301 = load double, double* %300, align 8
  %302 = load [12 x double]*, [12 x double]** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [12 x double], [12 x double]* %302, i64 %304
  %306 = load i32, i32* %11, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [12 x double], [12 x double]* %305, i64 0, i64 %307
  %309 = load double, double* %308, align 8
  %310 = load double*, double** %8, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds double, double* %310, i64 %312
  %314 = load double, double* %313, align 8
  %315 = fmul double %309, %314
  %316 = fsub double %301, %315
  %317 = load double*, double** %8, align 8
  %318 = load i32, i32* %9, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds double, double* %317, i64 %319
  store double %316, double* %320, align 8
  br label %321

321:                                              ; preds = %296
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %11, align 4
  br label %292

324:                                              ; preds = %292
  %325 = load double*, double** %8, align 8
  %326 = load i32, i32* %9, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds double, double* %325, i64 %327
  %329 = load double, double* %328, align 8
  %330 = load [12 x double]*, [12 x double]** %6, align 8
  %331 = load i32, i32* %9, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [12 x double], [12 x double]* %330, i64 %332
  %334 = load i32, i32* %9, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [12 x double], [12 x double]* %333, i64 0, i64 %335
  %337 = load double, double* %336, align 8
  %338 = fdiv double %329, %337
  %339 = load double*, double** %8, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds double, double* %339, i64 %341
  store double %338, double* %342, align 8
  br label %343

343:                                              ; preds = %324
  %344 = load i32, i32* %9, align 4
  %345 = sub nsw i32 %344, 1
  store i32 %345, i32* %9, align 4
  br label %286

346:                                              ; preds = %286
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Crystal_div(i32 %0, double %1, double* %2, double* %3, double* %4, double* %5, double* %6, [12 x double]* %7, [12 x double]* %8, [12 x double]* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca [12 x double]*, align 8
  %19 = alloca [12 x double]*, align 8
  %20 = alloca [12 x double]*, align 8
  %21 = alloca [12 x double], align 16
  %22 = alloca [12 x double], align 16
  %23 = alloca [12 x double], align 16
  %24 = alloca [12 x double], align 16
  %25 = alloca [12 x double], align 16
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store double %1, double* %12, align 8
  store double* %2, double** %13, align 8
  store double* %3, double** %14, align 8
  store double* %4, double** %15, align 8
  store double* %5, double** %16, align 8
  store double* %6, double** %17, align 8
  store [12 x double]* %7, [12 x double]** %18, align 8
  store [12 x double]* %8, [12 x double]** %19, align 8
  store [12 x double]* %9, [12 x double]** %20, align 8
  store double 0x3EB0C6F7A0B5ED8D, double* %26, align 8
  store double 3.000000e+01, double* %27, align 8
  store double 1.200000e+00, double* %28, align 8
  store double 1.000000e-02, double* %29, align 8
  store double 0.000000e+00, double* %30, align 8
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %33

33:                                               ; preds = %49, %10
  %34 = load i32, i32* %31, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i32, i32* %31, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [12 x double], [12 x double]* %22, i64 0, i64 %39
  store double 1.000000e+00, double* %40, align 8
  %41 = load i32, i32* %31, align 4
  %42 = sitofp i32 %41 to double
  %43 = fmul double 2.000000e-01, %42
  %44 = fdiv double %43, 1.200000e+01
  %45 = fadd double 9.000000e-01, %44
  %46 = load i32, i32* %31, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [12 x double], [12 x double]* %23, i64 0, i64 %47
  store double %45, double* %48, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %31, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %31, align 4
  br label %33

52:                                               ; preds = %33
  store i32 0, i32* %31, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %31, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load double*, double** %13, align 8
  %59 = load i32, i32* %31, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = load i32, i32* %31, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [12 x double], [12 x double]* %22, i64 0, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fmul double %62, %66
  %68 = load double, double* %26, align 8
  %69 = fadd double %67, %68
  %70 = fdiv double 1.000000e+00, %69
  %71 = load i32, i32* %31, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 0, i64 %72
  store double %70, double* %73, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %31, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %31, align 4
  br label %53

77:                                               ; preds = %53
  store i32 0, i32* %31, align 4
  br label %78

78:                                               ; preds = %148, %77
  %79 = load i32, i32* %31, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %151

82:                                               ; preds = %78
  %83 = load double, double* %27, align 8
  %84 = load i32, i32* %31, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [12 x double], [12 x double]* %23, i64 0, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fmul double %83, %87
  %89 = load i32, i32* %31, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [12 x double], [12 x double]* %22, i64 0, i64 %90
  %92 = load double, double* %91, align 8
  %93 = fmul double %88, %92
  %94 = load double*, double** %15, align 8
  %95 = load i32, i32* %31, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  store double %93, double* %97, align 8
  store i32 0, i32* %32, align 4
  br label %98

98:                                               ; preds = %118, %82
  %99 = load i32, i32* %32, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load double, double* %28, align 8
  %104 = load double, double* %12, align 8
  %105 = fmul double %103, %104
  %106 = load i32, i32* %31, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [12 x double], [12 x double]* %23, i64 0, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %105, %109
  %111 = load [12 x double]*, [12 x double]** %18, align 8
  %112 = load i32, i32* %31, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [12 x double], [12 x double]* %111, i64 %113
  %115 = load i32, i32* %32, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [12 x double], [12 x double]* %114, i64 0, i64 %116
  store double %110, double* %117, align 8
  br label %118

118:                                              ; preds = %102
  %119 = load i32, i32* %32, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %32, align 4
  br label %98

121:                                              ; preds = %98
  %122 = load double*, double** %15, align 8
  %123 = load i32, i32* %31, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %122, i64 %124
  %126 = load double, double* %125, align 8
  %127 = load double, double* %29, align 8
  %128 = fmul double %126, %127
  %129 = load i32, i32* %31, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [12 x double], [12 x double]* %22, i64 0, i64 %130
  %132 = load double, double* %131, align 8
  %133 = fmul double %128, %132
  %134 = load i32, i32* %31, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 0, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fmul double %133, %137
  %139 = load [12 x double]*, [12 x double]** %18, align 8
  %140 = load i32, i32* %31, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [12 x double], [12 x double]* %139, i64 %141
  %143 = load i32, i32* %31, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [12 x double], [12 x double]* %142, i64 0, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fadd double %146, %138
  store double %147, double* %145, align 8
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* %31, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %31, align 4
  br label %78

151:                                              ; preds = %78
  store i32 0, i32* %31, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %31, align 4
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load [12 x double]*, [12 x double]** %18, align 8
  %158 = load i32, i32* %31, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [12 x double], [12 x double]* %157, i64 %159
  %161 = load i32, i32* %31, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [12 x double], [12 x double]* %160, i64 0, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fdiv double 1.000000e+00, %164
  %166 = load i32, i32* %31, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 0, i64 %167
  store double %165, double* %168, align 8
  br label %169

169:                                              ; preds = %156
  %170 = load i32, i32* %31, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %31, align 4
  br label %152

172:                                              ; preds = %152
  store i32 0, i32* %31, align 4
  br label %173

173:                                              ; preds = %266, %172
  %174 = load i32, i32* %31, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %269

177:                                              ; preds = %173
  %178 = load double*, double** %15, align 8
  %179 = load i32, i32* %31, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  %183 = load i32, i32* %31, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [12 x double], [12 x double]* %24, i64 0, i64 %184
  store double %182, double* %185, align 8
  store i32 0, i32* %32, align 4
  br label %186

186:                                              ; preds = %236, %177
  %187 = load i32, i32* %32, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %239

190:                                              ; preds = %186
  %191 = load [12 x double]*, [12 x double]** %19, align 8
  %192 = load i32, i32* %31, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [12 x double], [12 x double]* %191, i64 %193
  %195 = load i32, i32* %32, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [12 x double], [12 x double]* %194, i64 0, i64 %196
  %198 = load double, double* %197, align 8
  %199 = load double, double* %12, align 8
  %200 = fmul double %198, %199
  store double %200, double* %30, align 8
  %201 = load double, double* %30, align 8
  %202 = load double*, double** %14, align 8
  %203 = load i32, i32* %32, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, double* %202, i64 %204
  %206 = load double, double* %205, align 8
  %207 = fmul double %201, %206
  %208 = load i32, i32* %31, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [12 x double], [12 x double]* %24, i64 0, i64 %209
  %211 = load double, double* %210, align 8
  %212 = fadd double %211, %207
  store double %212, double* %210, align 8
  %213 = load double, double* %30, align 8
  %214 = fneg double %213
  %215 = load [12 x double]*, [12 x double]** %18, align 8
  %216 = load i32, i32* %31, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [12 x double], [12 x double]* %215, i64 %217
  %219 = load i32, i32* %32, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [12 x double], [12 x double]* %218, i64 0, i64 %220
  %222 = load double, double* %221, align 8
  %223 = fadd double %214, %222
  %224 = load i32, i32* %31, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 0, i64 %225
  %227 = load double, double* %226, align 8
  %228 = fmul double %223, %227
  %229 = load [12 x double]*, [12 x double]** %20, align 8
  %230 = load i32, i32* %31, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [12 x double], [12 x double]* %229, i64 %231
  %233 = load i32, i32* %32, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [12 x double], [12 x double]* %232, i64 0, i64 %234
  store double %228, double* %235, align 8
  br label %236

236:                                              ; preds = %190
  %237 = load i32, i32* %32, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %32, align 4
  br label %186

239:                                              ; preds = %186
  %240 = load i32, i32* %31, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [12 x double], [12 x double]* %24, i64 0, i64 %241
  %243 = load double, double* %242, align 8
  %244 = load double*, double** %16, align 8
  %245 = load i32, i32* %31, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds double, double* %244, i64 %246
  %248 = load double, double* %247, align 8
  %249 = fsub double %243, %248
  %250 = load i32, i32* %31, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [12 x double], [12 x double]* %25, i64 0, i64 %251
  store double %249, double* %252, align 8
  %253 = load i32, i32* %31, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [12 x double], [12 x double]* %25, i64 0, i64 %254
  %256 = load double, double* %255, align 8
  %257 = load i32, i32* %31, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [12 x double], [12 x double]* %21, i64 0, i64 %258
  %260 = load double, double* %259, align 8
  %261 = fmul double %256, %260
  %262 = load double*, double** %17, align 8
  %263 = load i32, i32* %31, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds double, double* %262, i64 %264
  store double %261, double* %265, align 8
  br label %266

266:                                              ; preds = %239
  %267 = load i32, i32* %31, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %31, align 4
  br label %173

269:                                              ; preds = %173
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Crystal_pow(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca [12 x double], align 16
  %6 = alloca [12 x double], align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  store double 6.000000e+04, double* %7, align 8
  store double 5.000000e+04, double* %8, align 8
  store double 0x3EB0C6F7A0B5ED8D, double* %9, align 8
  store double 2.000000e+00, double* %10, align 8
  store double 1.000000e-02, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %29, %2
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32, i32* %12, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [12 x double], [12 x double]* %6, i64 0, i64 %19
  store double 1.000000e+00, double* %20, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sitofp i32 %21 to double
  %23 = fmul double 2.000000e-01, %22
  %24 = fmul double 9.000000e-01, %23
  %25 = fdiv double %24, 1.200000e+01
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 %27
  store double %25, double* %28, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %13

32:                                               ; preds = %13
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %33
  %38 = load double, double* %7, align 8
  %39 = load double, double* %8, align 8
  %40 = fdiv double %38, %39
  %41 = load double*, double** %4, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [12 x double], [12 x double]* %6, i64 0, i64 %47
  %49 = load double, double* %48, align 8
  %50 = fmul double %45, %49
  %51 = load double, double* %9, align 8
  %52 = fadd double %50, %51
  %53 = load double, double* %10, align 8
  %54 = fdiv double %52, %53
  %55 = load double, double* %11, align 8
  %56 = call double @pow(double %54, double %55) #3
  %57 = fmul double %40, %56
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 %59
  store double %57, double* %60, align 8
  br label %61

61:                                               ; preds = %37
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %33

64:                                               ; preds = %33
  %65 = getelementptr inbounds [12 x double], [12 x double]* %5, i64 0, i64 3
  %66 = load double, double* %65, align 8
  ret double %66
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init(double* %0, double* %1, double* %2, double* %3, double* %4, [12 x double]* %5, [12 x double]* %6, [12 x double]* %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [12 x double]*, align 8
  %15 = alloca [12 x double]*, align 8
  %16 = alloca [12 x double]*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store double* %0, double** %9, align 8
  store double* %1, double** %10, align 8
  store double* %2, double** %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store [12 x double]* %5, [12 x double]** %14, align 8
  store [12 x double]* %6, [12 x double]** %15, align 8
  store [12 x double]* %7, [12 x double]** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %100, %8
  %20 = load i32, i32* %18, align 4
  %21 = icmp slt i32 %20, 12
  br i1 %21, label %22, label %103

22:                                               ; preds = %19
  %23 = load i32, i32* %18, align 4
  %24 = sitofp i32 %23 to double
  %25 = fmul double 2.000000e-01, %24
  %26 = fdiv double %25, 1.200000e+01
  %27 = fadd double 1.900000e+00, %26
  %28 = load double*, double** %9, align 8
  %29 = load i32, i32* %18, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  store double %27, double* %31, align 8
  %32 = load double*, double** %9, align 8
  %33 = load i32, i32* %18, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 1.000000e-03
  %38 = load double*, double** %10, align 8
  %39 = load i32, i32* %18, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  store double %37, double* %41, align 8
  %42 = load i32, i32* %18, align 4
  %43 = sitofp i32 %42 to double
  %44 = fadd double %43, 2.000000e+00
  %45 = load double*, double** %11, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  store double %44, double* %48, align 8
  %49 = load double*, double** %12, align 8
  %50 = load i32, i32* %18, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  store double 3.000000e+01, double* %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sitofp i32 %53 to double
  %55 = fadd double %54, 3.500000e+00
  %56 = load double*, double** %13, align 8
  %57 = load i32, i32* %18, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %96, %22
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 12
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = load i32, i32* %17, align 4
  %65 = sitofp i32 %64 to double
  %66 = fmul double 1.000000e-05, %65
  %67 = load i32, i32* %18, align 4
  %68 = sitofp i32 %67 to double
  %69 = fmul double %66, %68
  %70 = fadd double 1.000000e-02, %69
  %71 = load [12 x double]*, [12 x double]** %14, align 8
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x double], [12 x double]* %71, i64 %73
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [12 x double], [12 x double]* %74, i64 0, i64 %76
  store double %70, double* %77, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  %81 = sitofp i32 %80 to double
  %82 = load [12 x double]*, [12 x double]** %15, align 8
  %83 = load i32, i32* %18, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [12 x double], [12 x double]* %82, i64 %84
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [12 x double], [12 x double]* %85, i64 0, i64 %87
  store double %81, double* %88, align 8
  %89 = load [12 x double]*, [12 x double]** %16, align 8
  %90 = load i32, i32* %18, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [12 x double], [12 x double]* %89, i64 %91
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [12 x double], [12 x double]* %92, i64 0, i64 %94
  store double 0.000000e+00, double* %95, align 8
  br label %96

96:                                               ; preds = %63
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %17, align 4
  br label %60

99:                                               ; preds = %60
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %18, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  br label %19

103:                                              ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [12 x double], align 16
  %7 = alloca [12 x double], align 16
  %8 = alloca [12 x double], align 16
  %9 = alloca [12 x double], align 16
  %10 = alloca [12 x double], align 16
  %11 = alloca [12 x [12 x double]], align 16
  %12 = alloca [12 x [12 x double]], align 16
  %13 = alloca [12 x [12 x double]], align 16
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds [12 x double], [12 x double]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [12 x double], [12 x double]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [12 x double], [12 x double]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [12 x double], [12 x double]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [12 x double], [12 x double]* %10, i64 0, i64 0
  %24 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i64 0, i64 0
  %25 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i64 0, i64 0
  %26 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i64 0, i64 0
  call void @init(double* %19, double* %20, double* %21, double* %22, double* %23, [12 x double]* %24, [12 x double]* %25, [12 x double]* %26)
  %27 = getelementptr inbounds [12 x double], [12 x double]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [12 x double], [12 x double]* %7, i64 0, i64 0
  %29 = getelementptr inbounds [12 x double], [12 x double]* %8, i64 0, i64 0
  %30 = getelementptr inbounds [12 x double], [12 x double]* %9, i64 0, i64 0
  %31 = getelementptr inbounds [12 x double], [12 x double]* %10, i64 0, i64 0
  %32 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i64 0, i64 0
  %33 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %12, i64 0, i64 0
  %34 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %13, i64 0, i64 0
  %35 = call double @SPEdriver(double* %27, double* %28, double* %29, double* %30, double* %31, [12 x double]* %32, [12 x double]* %33, [12 x double]* %34)
  store double %35, double* %15, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %37 = load double, double* %15, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), double %37)
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %61, %0
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 12
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %57, %42
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 12
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %11, i64 0, i64 %50
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [12 x double], [12 x double]* %51, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 %48, double %55)
  br label %57

57:                                               ; preds = %46
  %58 = load i32, i32* %17, align 4
  %59 = add nsw i32 %58, 4
  store i32 %59, i32* %17, align 4
  br label %43

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %16, align 4
  br label %39

64:                                               ; preds = %39
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @SPEdriver(double* %0, double* %1, double* %2, double* %3, double* %4, [12 x double]* %5, [12 x double]* %6, [12 x double]* %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [12 x double]*, align 8
  %15 = alloca [12 x double]*, align 8
  %16 = alloca [12 x double]*, align 8
  %17 = alloca %struct.timeval, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store double* %0, double** %9, align 8
  store double* %1, double** %10, align 8
  store double* %2, double** %11, align 8
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store [12 x double]* %5, [12 x double]** %14, align 8
  store [12 x double]* %6, [12 x double]** %15, align 8
  store [12 x double]* %7, [12 x double]** %16, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store double 0.000000e+00, double* %21, align 8
  store i32 2000000, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %27 = call i32 @gettimeofday(%struct.timeval* %17, %struct.timezone* null) #3
  %28 = call i64 @clock() #3
  store i64 %28, i64* %19, align 8
  store i32 0, i32* %24, align 4
  br label %29

29:                                               ; preds = %41, %8
  %30 = load i32, i32* %24, align 4
  %31 = icmp slt i32 %30, 2000000
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load double*, double** %9, align 8
  %34 = load double*, double** %10, align 8
  %35 = load double*, double** %11, align 8
  %36 = load double*, double** %12, align 8
  %37 = load double*, double** %13, align 8
  %38 = load [12 x double]*, [12 x double]** %14, align 8
  %39 = load [12 x double]*, [12 x double]** %15, align 8
  %40 = load [12 x double]*, [12 x double]** %16, align 8
  call void @Crystal_div(i32 12, double 1.000000e-02, double* %33, double* %34, double* %35, double* %36, double* %37, [12 x double]* %38, [12 x double]* %39, [12 x double]* %40)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %24, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %24, align 4
  br label %29

44:                                               ; preds = %29
  store i32 0, i32* %24, align 4
  br label %45

45:                                               ; preds = %51, %44
  %46 = load i32, i32* %24, align 4
  %47 = icmp slt i32 %46, 2000000
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load double*, double** %9, align 8
  %50 = call double @Crystal_pow(i32 12, double* %49)
  store double %50, double* %22, align 8
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %24, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %24, align 4
  br label %45

54:                                               ; preds = %45
  store i32 0, i32* %24, align 4
  br label %55

55:                                               ; preds = %82, %54
  %56 = load i32, i32* %24, align 4
  %57 = icmp slt i32 %56, 12
  br i1 %57, label %58, label %85

58:                                               ; preds = %55
  store i32 0, i32* %25, align 4
  br label %59

59:                                               ; preds = %78, %58
  %60 = load i32, i32* %25, align 4
  %61 = icmp slt i32 %60, 12
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load [12 x double]*, [12 x double]** %14, align 8
  %64 = load i32, i32* %24, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [12 x double], [12 x double]* %63, i64 %65
  %67 = load i32, i32* %25, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [12 x double], [12 x double]* %66, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load [12 x double]*, [12 x double]** %16, align 8
  %72 = load i32, i32* %24, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x double], [12 x double]* %71, i64 %73
  %75 = load i32, i32* %25, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [12 x double], [12 x double]* %74, i64 0, i64 %76
  store double %70, double* %77, align 8
  br label %78

78:                                               ; preds = %62
  %79 = load i32, i32* %25, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %25, align 4
  br label %59

81:                                               ; preds = %59
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %24, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %24, align 4
  br label %55

85:                                               ; preds = %55
  store i32 0, i32* %24, align 4
  br label %86

86:                                               ; preds = %124, %85
  %87 = load i32, i32* %24, align 4
  %88 = icmp slt i32 %87, 2000000
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  store i32 0, i32* %25, align 4
  br label %90

90:                                               ; preds = %117, %89
  %91 = load i32, i32* %25, align 4
  %92 = icmp slt i32 %91, 12
  br i1 %92, label %93, label %120

93:                                               ; preds = %90
  store i32 0, i32* %26, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %26, align 4
  %96 = icmp slt i32 %95, 12
  br i1 %96, label %97, label %116

97:                                               ; preds = %94
  %98 = load [12 x double]*, [12 x double]** %16, align 8
  %99 = load i32, i32* %25, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [12 x double], [12 x double]* %98, i64 %100
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [12 x double], [12 x double]* %101, i64 0, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load [12 x double]*, [12 x double]** %14, align 8
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [12 x double], [12 x double]* %106, i64 %108
  %110 = load i32, i32* %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [12 x double], [12 x double]* %109, i64 0, i64 %111
  store double %105, double* %112, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %26, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %26, align 4
  br label %94

116:                                              ; preds = %94
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %25, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %25, align 4
  br label %90

120:                                              ; preds = %90
  %121 = load [12 x double]*, [12 x double]** %14, align 8
  %122 = load double*, double** %11, align 8
  %123 = load double*, double** %13, align 8
  call void @Crystal_Cholesky(i32 12, [12 x double]* %121, double* %122, double* %123)
  br label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %24, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %24, align 4
  br label %86

127:                                              ; preds = %86
  %128 = load double, double* %22, align 8
  ret double %128
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
