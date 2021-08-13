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

@num_omp_threads = dso_local global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"The file was not opened\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"file could not be opened for reading\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"Usage: %s <grid_rows> <grid_cols> <sim_time> <temp_file> <power_file>\0A\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"\09<grid_rows>  - number of rows in the grid (positive integer)\0A\00", align 1
@.str.11 = private unnamed_addr constant [66 x i8] c"\09<grid_cols>  - number of columns in the grid (positive integer)\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\09<sim_time>   - number of iterations\0A\00", align 1
@.str.13 = private unnamed_addr constant [89 x i8] c"\09<temp_file>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.14 = private unnamed_addr constant [86 x i8] c"\09<power_file> - name of the file containing the dissipated power values of each cell\0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"\09<output_file> - name of the output file\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"unable to allocate memory\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Start computing the transient temperature\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @_Z8get_timev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #7
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z16single_iterationPfS_S_iifffff(float* %0, float* %1, float* %2, i32 %3, i32 %4, float %5, float %6, float %7, float %8, float %9) #0 {
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store float* %0, float** %11, align 8
  store float* %1, float** %12, align 8
  store float* %2, float** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store float %5, float* %16, align 4
  store float %6, float* %17, align 4
  store float %7, float* %18, align 4
  store float %8, float* %19, align 4
  store float %9, float* %20, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sdiv i32 %34, 256
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sdiv i32 %36, 16
  store i32 %37, i32* %26, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sdiv i32 %38, 16
  store i32 %39, i32* %27, align 4
  store i32 0, i32* %24, align 4
  br label %40

40:                                               ; preds = %856, %10
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* %25, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %859

44:                                               ; preds = %40
  %45 = load i32, i32* %24, align 4
  %46 = load i32, i32* %27, align 4
  %47 = sdiv i32 %45, %46
  %48 = mul nsw i32 16, %47
  store i32 %48, i32* %28, align 4
  %49 = load i32, i32* %24, align 4
  %50 = load i32, i32* %26, align 4
  %51 = srem i32 %49, %50
  %52 = mul nsw i32 16, %51
  store i32 %52, i32* %29, align 4
  %53 = load i32, i32* %28, align 4
  %54 = add nsw i32 %53, 16
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  br label %62

59:                                               ; preds = %44
  %60 = load i32, i32* %28, align 4
  %61 = add nsw i32 %60, 16
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %30, align 4
  %64 = load i32, i32* %29, align 4
  %65 = add nsw i32 %64, 16
  %66 = load i32, i32* %15, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  br label %73

70:                                               ; preds = %62
  %71 = load i32, i32* %29, align 4
  %72 = add nsw i32 %71, 16
  br label %73

73:                                               ; preds = %70, %68
  %74 = phi i32 [ %69, %68 ], [ %72, %70 ]
  store i32 %74, i32* %31, align 4
  %75 = load i32, i32* %28, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %29, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %30, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %31, align 4
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %721

88:                                               ; preds = %84, %80, %77, %73
  %89 = load i32, i32* %28, align 4
  store i32 %89, i32* %22, align 4
  br label %90

90:                                               ; preds = %717, %88
  %91 = load i32, i32* %22, align 4
  %92 = load i32, i32* %28, align 4
  %93 = add nsw i32 %92, 16
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %720

95:                                               ; preds = %90
  %96 = load i32, i32* %29, align 4
  store i32 %96, i32* %23, align 4
  br label %97

97:                                               ; preds = %713, %95
  %98 = load i32, i32* %23, align 4
  %99 = load i32, i32* %29, align 4
  %100 = add nsw i32 %99, 16
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %716

102:                                              ; preds = %97
  %103 = load i32, i32* %22, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %102
  %106 = load i32, i32* %23, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %105
  %109 = load float, float* %16, align 4
  %110 = load float*, float** %13, align 8
  %111 = getelementptr inbounds float, float* %110, i64 0
  %112 = load float, float* %111, align 4
  %113 = load float*, float** %12, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load float, float* %114, align 4
  %116 = load float*, float** %12, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = fsub float %115, %118
  %120 = load float, float* %17, align 4
  %121 = fmul float %119, %120
  %122 = fadd float %112, %121
  %123 = load float*, float** %12, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %123, i64 %125
  %127 = load float, float* %126, align 4
  %128 = load float*, float** %12, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = fsub float %127, %130
  %132 = load float, float* %18, align 4
  %133 = fmul float %131, %132
  %134 = fadd float %122, %133
  %135 = load float*, float** %12, align 8
  %136 = getelementptr inbounds float, float* %135, i64 0
  %137 = load float, float* %136, align 4
  %138 = fsub float 8.000000e+01, %137
  %139 = load float, float* %19, align 4
  %140 = fmul float %138, %139
  %141 = fadd float %134, %140
  %142 = fmul float %109, %141
  store float %142, float* %21, align 4
  br label %693

143:                                              ; preds = %105, %102
  %144 = load i32, i32* %22, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %199

146:                                              ; preds = %143
  %147 = load i32, i32* %23, align 4
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 %148, 1
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %146
  %152 = load float, float* %16, align 4
  %153 = load float*, float** %13, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %12, align 8
  %159 = load i32, i32* %23, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds float, float* %158, i64 %161
  %163 = load float, float* %162, align 4
  %164 = load float*, float** %12, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %164, i64 %166
  %168 = load float, float* %167, align 4
  %169 = fsub float %163, %168
  %170 = load float, float* %17, align 4
  %171 = fmul float %169, %170
  %172 = fadd float %157, %171
  %173 = load float*, float** %12, align 8
  %174 = load i32, i32* %23, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %173, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load float*, float** %12, align 8
  %181 = load i32, i32* %23, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fsub float %179, %184
  %186 = load float, float* %18, align 4
  %187 = fmul float %185, %186
  %188 = fadd float %172, %187
  %189 = load float*, float** %12, align 8
  %190 = load i32, i32* %23, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds float, float* %189, i64 %191
  %193 = load float, float* %192, align 4
  %194 = fsub float 8.000000e+01, %193
  %195 = load float, float* %19, align 4
  %196 = fmul float %194, %195
  %197 = fadd float %188, %196
  %198 = fmul float %152, %197
  store float %198, float* %21, align 4
  br label %692

199:                                              ; preds = %146, %143
  %200 = load i32, i32* %22, align 4
  %201 = load i32, i32* %14, align 4
  %202 = sub nsw i32 %201, 1
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %280

204:                                              ; preds = %199
  %205 = load i32, i32* %23, align 4
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %206, 1
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %280

209:                                              ; preds = %204
  %210 = load float, float* %16, align 4
  %211 = load float*, float** %13, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load i32, i32* %15, align 4
  %214 = mul nsw i32 %212, %213
  %215 = load i32, i32* %23, align 4
  %216 = add nsw i32 %214, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %211, i64 %217
  %219 = load float, float* %218, align 4
  %220 = load float*, float** %12, align 8
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %15, align 4
  %223 = mul nsw i32 %221, %222
  %224 = load i32, i32* %23, align 4
  %225 = add nsw i32 %223, %224
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %220, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float*, float** %12, align 8
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* %15, align 4
  %233 = mul nsw i32 %231, %232
  %234 = load i32, i32* %23, align 4
  %235 = add nsw i32 %233, %234
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %230, i64 %236
  %238 = load float, float* %237, align 4
  %239 = fsub float %229, %238
  %240 = load float, float* %17, align 4
  %241 = fmul float %239, %240
  %242 = fadd float %219, %241
  %243 = load float*, float** %12, align 8
  %244 = load i32, i32* %22, align 4
  %245 = sub nsw i32 %244, 1
  %246 = load i32, i32* %15, align 4
  %247 = mul nsw i32 %245, %246
  %248 = load i32, i32* %23, align 4
  %249 = add nsw i32 %247, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %243, i64 %250
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %12, align 8
  %254 = load i32, i32* %22, align 4
  %255 = load i32, i32* %15, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %23, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %253, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fsub float %252, %261
  %263 = load float, float* %18, align 4
  %264 = fmul float %262, %263
  %265 = fadd float %242, %264
  %266 = load float*, float** %12, align 8
  %267 = load i32, i32* %22, align 4
  %268 = load i32, i32* %15, align 4
  %269 = mul nsw i32 %267, %268
  %270 = load i32, i32* %23, align 4
  %271 = add nsw i32 %269, %270
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds float, float* %266, i64 %272
  %274 = load float, float* %273, align 4
  %275 = fsub float 8.000000e+01, %274
  %276 = load float, float* %19, align 4
  %277 = fmul float %275, %276
  %278 = fadd float %265, %277
  %279 = fmul float %210, %278
  store float %279, float* %21, align 4
  br label %691

280:                                              ; preds = %204, %199
  %281 = load i32, i32* %22, align 4
  %282 = load i32, i32* %14, align 4
  %283 = sub nsw i32 %282, 1
  %284 = icmp eq i32 %281, %283
  br i1 %284, label %285, label %347

285:                                              ; preds = %280
  %286 = load i32, i32* %23, align 4
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %347

288:                                              ; preds = %285
  %289 = load float, float* %16, align 4
  %290 = load float*, float** %13, align 8
  %291 = load i32, i32* %22, align 4
  %292 = load i32, i32* %15, align 4
  %293 = mul nsw i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds float, float* %290, i64 %294
  %296 = load float, float* %295, align 4
  %297 = load float*, float** %12, align 8
  %298 = load i32, i32* %22, align 4
  %299 = load i32, i32* %15, align 4
  %300 = mul nsw i32 %298, %299
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %297, i64 %302
  %304 = load float, float* %303, align 4
  %305 = load float*, float** %12, align 8
  %306 = load i32, i32* %22, align 4
  %307 = load i32, i32* %15, align 4
  %308 = mul nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %305, i64 %309
  %311 = load float, float* %310, align 4
  %312 = fsub float %304, %311
  %313 = load float, float* %17, align 4
  %314 = fmul float %312, %313
  %315 = fadd float %296, %314
  %316 = load float*, float** %12, align 8
  %317 = load i32, i32* %22, align 4
  %318 = sub nsw i32 %317, 1
  %319 = load i32, i32* %15, align 4
  %320 = mul nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds float, float* %316, i64 %321
  %323 = load float, float* %322, align 4
  %324 = load float*, float** %12, align 8
  %325 = load i32, i32* %22, align 4
  %326 = load i32, i32* %15, align 4
  %327 = mul nsw i32 %325, %326
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, float* %324, i64 %328
  %330 = load float, float* %329, align 4
  %331 = fsub float %323, %330
  %332 = load float, float* %18, align 4
  %333 = fmul float %331, %332
  %334 = fadd float %315, %333
  %335 = load float*, float** %12, align 8
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %15, align 4
  %338 = mul nsw i32 %336, %337
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %335, i64 %339
  %341 = load float, float* %340, align 4
  %342 = fsub float 8.000000e+01, %341
  %343 = load float, float* %19, align 4
  %344 = fmul float %342, %343
  %345 = fadd float %334, %344
  %346 = fmul float %289, %345
  store float %346, float* %21, align 4
  br label %690

347:                                              ; preds = %285, %280
  %348 = load i32, i32* %22, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %414

350:                                              ; preds = %347
  %351 = load float, float* %16, align 4
  %352 = fpext float %351 to double
  %353 = load float*, float** %13, align 8
  %354 = load i32, i32* %23, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds float, float* %353, i64 %355
  %357 = load float, float* %356, align 4
  %358 = fpext float %357 to double
  %359 = load float*, float** %12, align 8
  %360 = load i32, i32* %23, align 4
  %361 = add nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %359, i64 %362
  %364 = load float, float* %363, align 4
  %365 = load float*, float** %12, align 8
  %366 = load i32, i32* %23, align 4
  %367 = sub nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds float, float* %365, i64 %368
  %370 = load float, float* %369, align 4
  %371 = fadd float %364, %370
  %372 = fpext float %371 to double
  %373 = load float*, float** %12, align 8
  %374 = load i32, i32* %23, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds float, float* %373, i64 %375
  %377 = load float, float* %376, align 4
  %378 = fpext float %377 to double
  %379 = fmul double 2.000000e+00, %378
  %380 = fsub double %372, %379
  %381 = load float, float* %17, align 4
  %382 = fpext float %381 to double
  %383 = fmul double %380, %382
  %384 = fadd double %358, %383
  %385 = load float*, float** %12, align 8
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* %23, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds float, float* %385, i64 %389
  %391 = load float, float* %390, align 4
  %392 = load float*, float** %12, align 8
  %393 = load i32, i32* %23, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %392, i64 %394
  %396 = load float, float* %395, align 4
  %397 = fsub float %391, %396
  %398 = load float, float* %18, align 4
  %399 = fmul float %397, %398
  %400 = fpext float %399 to double
  %401 = fadd double %384, %400
  %402 = load float*, float** %12, align 8
  %403 = load i32, i32* %23, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds float, float* %402, i64 %404
  %406 = load float, float* %405, align 4
  %407 = fsub float 8.000000e+01, %406
  %408 = load float, float* %19, align 4
  %409 = fmul float %407, %408
  %410 = fpext float %409 to double
  %411 = fadd double %401, %410
  %412 = fmul double %352, %411
  %413 = fptrunc double %412 to float
  store float %413, float* %21, align 4
  br label %689

414:                                              ; preds = %347
  %415 = load i32, i32* %23, align 4
  %416 = load i32, i32* %15, align 4
  %417 = sub nsw i32 %416, 1
  %418 = icmp eq i32 %415, %417
  br i1 %418, label %419, label %510

419:                                              ; preds = %414
  %420 = load float, float* %16, align 4
  %421 = fpext float %420 to double
  %422 = load float*, float** %13, align 8
  %423 = load i32, i32* %22, align 4
  %424 = load i32, i32* %15, align 4
  %425 = mul nsw i32 %423, %424
  %426 = load i32, i32* %23, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds float, float* %422, i64 %428
  %430 = load float, float* %429, align 4
  %431 = fpext float %430 to double
  %432 = load float*, float** %12, align 8
  %433 = load i32, i32* %22, align 4
  %434 = add nsw i32 %433, 1
  %435 = load i32, i32* %15, align 4
  %436 = mul nsw i32 %434, %435
  %437 = load i32, i32* %23, align 4
  %438 = add nsw i32 %436, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds float, float* %432, i64 %439
  %441 = load float, float* %440, align 4
  %442 = load float*, float** %12, align 8
  %443 = load i32, i32* %22, align 4
  %444 = sub nsw i32 %443, 1
  %445 = load i32, i32* %15, align 4
  %446 = mul nsw i32 %444, %445
  %447 = load i32, i32* %23, align 4
  %448 = add nsw i32 %446, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds float, float* %442, i64 %449
  %451 = load float, float* %450, align 4
  %452 = fadd float %441, %451
  %453 = fpext float %452 to double
  %454 = load float*, float** %12, align 8
  %455 = load i32, i32* %22, align 4
  %456 = load i32, i32* %15, align 4
  %457 = mul nsw i32 %455, %456
  %458 = load i32, i32* %23, align 4
  %459 = add nsw i32 %457, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds float, float* %454, i64 %460
  %462 = load float, float* %461, align 4
  %463 = fpext float %462 to double
  %464 = fmul double 2.000000e+00, %463
  %465 = fsub double %453, %464
  %466 = load float, float* %18, align 4
  %467 = fpext float %466 to double
  %468 = fmul double %465, %467
  %469 = fadd double %431, %468
  %470 = load float*, float** %12, align 8
  %471 = load i32, i32* %22, align 4
  %472 = load i32, i32* %15, align 4
  %473 = mul nsw i32 %471, %472
  %474 = load i32, i32* %23, align 4
  %475 = add nsw i32 %473, %474
  %476 = sub nsw i32 %475, 1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds float, float* %470, i64 %477
  %479 = load float, float* %478, align 4
  %480 = load float*, float** %12, align 8
  %481 = load i32, i32* %22, align 4
  %482 = load i32, i32* %15, align 4
  %483 = mul nsw i32 %481, %482
  %484 = load i32, i32* %23, align 4
  %485 = add nsw i32 %483, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds float, float* %480, i64 %486
  %488 = load float, float* %487, align 4
  %489 = fsub float %479, %488
  %490 = load float, float* %17, align 4
  %491 = fmul float %489, %490
  %492 = fpext float %491 to double
  %493 = fadd double %469, %492
  %494 = load float*, float** %12, align 8
  %495 = load i32, i32* %22, align 4
  %496 = load i32, i32* %15, align 4
  %497 = mul nsw i32 %495, %496
  %498 = load i32, i32* %23, align 4
  %499 = add nsw i32 %497, %498
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds float, float* %494, i64 %500
  %502 = load float, float* %501, align 4
  %503 = fsub float 8.000000e+01, %502
  %504 = load float, float* %19, align 4
  %505 = fmul float %503, %504
  %506 = fpext float %505 to double
  %507 = fadd double %493, %506
  %508 = fmul double %421, %507
  %509 = fptrunc double %508 to float
  store float %509, float* %21, align 4
  br label %688

510:                                              ; preds = %414
  %511 = load i32, i32* %22, align 4
  %512 = load i32, i32* %14, align 4
  %513 = sub nsw i32 %512, 1
  %514 = icmp eq i32 %511, %513
  br i1 %514, label %515, label %606

515:                                              ; preds = %510
  %516 = load float, float* %16, align 4
  %517 = fpext float %516 to double
  %518 = load float*, float** %13, align 8
  %519 = load i32, i32* %22, align 4
  %520 = load i32, i32* %15, align 4
  %521 = mul nsw i32 %519, %520
  %522 = load i32, i32* %23, align 4
  %523 = add nsw i32 %521, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds float, float* %518, i64 %524
  %526 = load float, float* %525, align 4
  %527 = fpext float %526 to double
  %528 = load float*, float** %12, align 8
  %529 = load i32, i32* %22, align 4
  %530 = load i32, i32* %15, align 4
  %531 = mul nsw i32 %529, %530
  %532 = load i32, i32* %23, align 4
  %533 = add nsw i32 %531, %532
  %534 = add nsw i32 %533, 1
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds float, float* %528, i64 %535
  %537 = load float, float* %536, align 4
  %538 = load float*, float** %12, align 8
  %539 = load i32, i32* %22, align 4
  %540 = load i32, i32* %15, align 4
  %541 = mul nsw i32 %539, %540
  %542 = load i32, i32* %23, align 4
  %543 = add nsw i32 %541, %542
  %544 = sub nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds float, float* %538, i64 %545
  %547 = load float, float* %546, align 4
  %548 = fadd float %537, %547
  %549 = fpext float %548 to double
  %550 = load float*, float** %12, align 8
  %551 = load i32, i32* %22, align 4
  %552 = load i32, i32* %15, align 4
  %553 = mul nsw i32 %551, %552
  %554 = load i32, i32* %23, align 4
  %555 = add nsw i32 %553, %554
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds float, float* %550, i64 %556
  %558 = load float, float* %557, align 4
  %559 = fpext float %558 to double
  %560 = fmul double 2.000000e+00, %559
  %561 = fsub double %549, %560
  %562 = load float, float* %17, align 4
  %563 = fpext float %562 to double
  %564 = fmul double %561, %563
  %565 = fadd double %527, %564
  %566 = load float*, float** %12, align 8
  %567 = load i32, i32* %22, align 4
  %568 = sub nsw i32 %567, 1
  %569 = load i32, i32* %15, align 4
  %570 = mul nsw i32 %568, %569
  %571 = load i32, i32* %23, align 4
  %572 = add nsw i32 %570, %571
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds float, float* %566, i64 %573
  %575 = load float, float* %574, align 4
  %576 = load float*, float** %12, align 8
  %577 = load i32, i32* %22, align 4
  %578 = load i32, i32* %15, align 4
  %579 = mul nsw i32 %577, %578
  %580 = load i32, i32* %23, align 4
  %581 = add nsw i32 %579, %580
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds float, float* %576, i64 %582
  %584 = load float, float* %583, align 4
  %585 = fsub float %575, %584
  %586 = load float, float* %18, align 4
  %587 = fmul float %585, %586
  %588 = fpext float %587 to double
  %589 = fadd double %565, %588
  %590 = load float*, float** %12, align 8
  %591 = load i32, i32* %22, align 4
  %592 = load i32, i32* %15, align 4
  %593 = mul nsw i32 %591, %592
  %594 = load i32, i32* %23, align 4
  %595 = add nsw i32 %593, %594
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds float, float* %590, i64 %596
  %598 = load float, float* %597, align 4
  %599 = fsub float 8.000000e+01, %598
  %600 = load float, float* %19, align 4
  %601 = fmul float %599, %600
  %602 = fpext float %601 to double
  %603 = fadd double %589, %602
  %604 = fmul double %517, %603
  %605 = fptrunc double %604 to float
  store float %605, float* %21, align 4
  br label %687

606:                                              ; preds = %510
  %607 = load i32, i32* %23, align 4
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %609, label %686

609:                                              ; preds = %606
  %610 = load float, float* %16, align 4
  %611 = fpext float %610 to double
  %612 = load float*, float** %13, align 8
  %613 = load i32, i32* %22, align 4
  %614 = load i32, i32* %15, align 4
  %615 = mul nsw i32 %613, %614
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds float, float* %612, i64 %616
  %618 = load float, float* %617, align 4
  %619 = fpext float %618 to double
  %620 = load float*, float** %12, align 8
  %621 = load i32, i32* %22, align 4
  %622 = add nsw i32 %621, 1
  %623 = load i32, i32* %15, align 4
  %624 = mul nsw i32 %622, %623
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %620, i64 %625
  %627 = load float, float* %626, align 4
  %628 = load float*, float** %12, align 8
  %629 = load i32, i32* %22, align 4
  %630 = sub nsw i32 %629, 1
  %631 = load i32, i32* %15, align 4
  %632 = mul nsw i32 %630, %631
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds float, float* %628, i64 %633
  %635 = load float, float* %634, align 4
  %636 = fadd float %627, %635
  %637 = fpext float %636 to double
  %638 = load float*, float** %12, align 8
  %639 = load i32, i32* %22, align 4
  %640 = load i32, i32* %15, align 4
  %641 = mul nsw i32 %639, %640
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds float, float* %638, i64 %642
  %644 = load float, float* %643, align 4
  %645 = fpext float %644 to double
  %646 = fmul double 2.000000e+00, %645
  %647 = fsub double %637, %646
  %648 = load float, float* %18, align 4
  %649 = fpext float %648 to double
  %650 = fmul double %647, %649
  %651 = fadd double %619, %650
  %652 = load float*, float** %12, align 8
  %653 = load i32, i32* %22, align 4
  %654 = load i32, i32* %15, align 4
  %655 = mul nsw i32 %653, %654
  %656 = add nsw i32 %655, 1
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds float, float* %652, i64 %657
  %659 = load float, float* %658, align 4
  %660 = load float*, float** %12, align 8
  %661 = load i32, i32* %22, align 4
  %662 = load i32, i32* %15, align 4
  %663 = mul nsw i32 %661, %662
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds float, float* %660, i64 %664
  %666 = load float, float* %665, align 4
  %667 = fsub float %659, %666
  %668 = load float, float* %17, align 4
  %669 = fmul float %667, %668
  %670 = fpext float %669 to double
  %671 = fadd double %651, %670
  %672 = load float*, float** %12, align 8
  %673 = load i32, i32* %22, align 4
  %674 = load i32, i32* %15, align 4
  %675 = mul nsw i32 %673, %674
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds float, float* %672, i64 %676
  %678 = load float, float* %677, align 4
  %679 = fsub float 8.000000e+01, %678
  %680 = load float, float* %19, align 4
  %681 = fmul float %679, %680
  %682 = fpext float %681 to double
  %683 = fadd double %671, %682
  %684 = fmul double %611, %683
  %685 = fptrunc double %684 to float
  store float %685, float* %21, align 4
  br label %686

686:                                              ; preds = %609, %606
  br label %687

687:                                              ; preds = %686, %515
  br label %688

688:                                              ; preds = %687, %419
  br label %689

689:                                              ; preds = %688, %350
  br label %690

690:                                              ; preds = %689, %288
  br label %691

691:                                              ; preds = %690, %209
  br label %692

692:                                              ; preds = %691, %151
  br label %693

693:                                              ; preds = %692, %108
  %694 = load float*, float** %12, align 8
  %695 = load i32, i32* %22, align 4
  %696 = load i32, i32* %15, align 4
  %697 = mul nsw i32 %695, %696
  %698 = load i32, i32* %23, align 4
  %699 = add nsw i32 %697, %698
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds float, float* %694, i64 %700
  %702 = load float, float* %701, align 4
  %703 = load float, float* %21, align 4
  %704 = fadd float %702, %703
  %705 = load float*, float** %11, align 8
  %706 = load i32, i32* %22, align 4
  %707 = load i32, i32* %15, align 4
  %708 = mul nsw i32 %706, %707
  %709 = load i32, i32* %23, align 4
  %710 = add nsw i32 %708, %709
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds float, float* %705, i64 %711
  store float %704, float* %712, align 4
  br label %713

713:                                              ; preds = %693
  %714 = load i32, i32* %23, align 4
  %715 = add nsw i32 %714, 1
  store i32 %715, i32* %23, align 4
  br label %97

716:                                              ; preds = %97
  br label %717

717:                                              ; preds = %716
  %718 = load i32, i32* %22, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %22, align 4
  br label %90

720:                                              ; preds = %90
  br label %856

721:                                              ; preds = %84
  %722 = load i32, i32* %28, align 4
  store i32 %722, i32* %22, align 4
  br label %723

723:                                              ; preds = %852, %721
  %724 = load i32, i32* %22, align 4
  %725 = load i32, i32* %28, align 4
  %726 = add nsw i32 %725, 16
  %727 = icmp slt i32 %724, %726
  br i1 %727, label %728, label %855

728:                                              ; preds = %723
  %729 = load i32, i32* %29, align 4
  store i32 %729, i32* %23, align 4
  br label %730

730:                                              ; preds = %848, %728
  %731 = load i32, i32* %23, align 4
  %732 = load i32, i32* %29, align 4
  %733 = add nsw i32 %732, 16
  %734 = icmp slt i32 %731, %733
  br i1 %734, label %735, label %851

735:                                              ; preds = %730
  %736 = load float*, float** %12, align 8
  %737 = load i32, i32* %22, align 4
  %738 = load i32, i32* %15, align 4
  %739 = mul nsw i32 %737, %738
  %740 = load i32, i32* %23, align 4
  %741 = add nsw i32 %739, %740
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds float, float* %736, i64 %742
  %744 = load float, float* %743, align 4
  %745 = load float, float* %16, align 4
  %746 = load float*, float** %13, align 8
  %747 = load i32, i32* %22, align 4
  %748 = load i32, i32* %15, align 4
  %749 = mul nsw i32 %747, %748
  %750 = load i32, i32* %23, align 4
  %751 = add nsw i32 %749, %750
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds float, float* %746, i64 %752
  %754 = load float, float* %753, align 4
  %755 = load float*, float** %12, align 8
  %756 = load i32, i32* %22, align 4
  %757 = add nsw i32 %756, 1
  %758 = load i32, i32* %15, align 4
  %759 = mul nsw i32 %757, %758
  %760 = load i32, i32* %23, align 4
  %761 = add nsw i32 %759, %760
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds float, float* %755, i64 %762
  %764 = load float, float* %763, align 4
  %765 = load float*, float** %12, align 8
  %766 = load i32, i32* %22, align 4
  %767 = sub nsw i32 %766, 1
  %768 = load i32, i32* %15, align 4
  %769 = mul nsw i32 %767, %768
  %770 = load i32, i32* %23, align 4
  %771 = add nsw i32 %769, %770
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds float, float* %765, i64 %772
  %774 = load float, float* %773, align 4
  %775 = fadd float %764, %774
  %776 = load float*, float** %12, align 8
  %777 = load i32, i32* %22, align 4
  %778 = load i32, i32* %15, align 4
  %779 = mul nsw i32 %777, %778
  %780 = load i32, i32* %23, align 4
  %781 = add nsw i32 %779, %780
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds float, float* %776, i64 %782
  %784 = load float, float* %783, align 4
  %785 = fmul float 2.000000e+00, %784
  %786 = fsub float %775, %785
  %787 = load float, float* %18, align 4
  %788 = fmul float %786, %787
  %789 = fadd float %754, %788
  %790 = load float*, float** %12, align 8
  %791 = load i32, i32* %22, align 4
  %792 = load i32, i32* %15, align 4
  %793 = mul nsw i32 %791, %792
  %794 = load i32, i32* %23, align 4
  %795 = add nsw i32 %793, %794
  %796 = add nsw i32 %795, 1
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds float, float* %790, i64 %797
  %799 = load float, float* %798, align 4
  %800 = load float*, float** %12, align 8
  %801 = load i32, i32* %22, align 4
  %802 = load i32, i32* %15, align 4
  %803 = mul nsw i32 %801, %802
  %804 = load i32, i32* %23, align 4
  %805 = add nsw i32 %803, %804
  %806 = sub nsw i32 %805, 1
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds float, float* %800, i64 %807
  %809 = load float, float* %808, align 4
  %810 = fadd float %799, %809
  %811 = load float*, float** %12, align 8
  %812 = load i32, i32* %22, align 4
  %813 = load i32, i32* %15, align 4
  %814 = mul nsw i32 %812, %813
  %815 = load i32, i32* %23, align 4
  %816 = add nsw i32 %814, %815
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float* %811, i64 %817
  %819 = load float, float* %818, align 4
  %820 = fmul float 2.000000e+00, %819
  %821 = fsub float %810, %820
  %822 = load float, float* %17, align 4
  %823 = fmul float %821, %822
  %824 = fadd float %789, %823
  %825 = load float*, float** %12, align 8
  %826 = load i32, i32* %22, align 4
  %827 = load i32, i32* %15, align 4
  %828 = mul nsw i32 %826, %827
  %829 = load i32, i32* %23, align 4
  %830 = add nsw i32 %828, %829
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds float, float* %825, i64 %831
  %833 = load float, float* %832, align 4
  %834 = fsub float 8.000000e+01, %833
  %835 = load float, float* %19, align 4
  %836 = fmul float %834, %835
  %837 = fadd float %824, %836
  %838 = fmul float %745, %837
  %839 = fadd float %744, %838
  %840 = load float*, float** %11, align 8
  %841 = load i32, i32* %22, align 4
  %842 = load i32, i32* %15, align 4
  %843 = mul nsw i32 %841, %842
  %844 = load i32, i32* %23, align 4
  %845 = add nsw i32 %843, %844
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds float, float* %840, i64 %846
  store float %839, float* %847, align 4
  br label %848

848:                                              ; preds = %735
  %849 = load i32, i32* %23, align 4
  %850 = add nsw i32 %849, 1
  store i32 %850, i32* %23, align 4
  br label %730

851:                                              ; preds = %730
  br label %852

852:                                              ; preds = %851
  %853 = load i32, i32* %22, align 4
  %854 = add nsw i32 %853, 1
  store i32 %854, i32* %22, align 4
  br label %723

855:                                              ; preds = %723
  br label %856

856:                                              ; preds = %855, %720
  %857 = load i32, i32* %24, align 4
  %858 = add nsw i32 %857, 1
  store i32 %858, i32* %24, align 4
  br label %40

859:                                              ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_Z17compute_tran_tempPfiS_S_ii(float* %0, i32 %1, float* %2, float* %3, i32 %4, i32 %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca i32, align 4
  %28 = alloca float*, align 8
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %29 = load i32, i32* %11, align 4
  %30 = sitofp i32 %29 to float
  %31 = fdiv float 0x3F90624DE0000000, %30
  store float %31, float* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sitofp i32 %32 to float
  %34 = fdiv float 0x3F90624DE0000000, %33
  store float %34, float* %14, align 4
  %35 = load float, float* %14, align 4
  %36 = fpext float %35 to double
  %37 = fmul double 0x407B580015CA2000, %36
  %38 = load float, float* %13, align 4
  %39 = fpext float %38 to double
  %40 = fmul double %37, %39
  %41 = fptrunc double %40 to float
  store float %41, float* %15, align 4
  %42 = load float, float* %14, align 4
  %43 = fpext float %42 to double
  %44 = load float, float* %13, align 4
  %45 = fpext float %44 to double
  %46 = fmul double 0x3FB99999AE000000, %45
  %47 = fdiv double %43, %46
  %48 = fptrunc double %47 to float
  store float %48, float* %16, align 4
  %49 = load float, float* %13, align 4
  %50 = fpext float %49 to double
  %51 = load float, float* %14, align 4
  %52 = fpext float %51 to double
  %53 = fmul double 0x3FB99999AE000000, %52
  %54 = fdiv double %50, %53
  %55 = fptrunc double %54 to float
  store float %55, float* %17, align 4
  %56 = load float, float* %13, align 4
  %57 = fmul float 1.000000e+02, %56
  %58 = load float, float* %14, align 4
  %59 = fmul float %57, %58
  %60 = fdiv float 0x3F40624DE0000000, %59
  store float %60, float* %18, align 4
  store float 0x40BAC92480000000, float* %19, align 4
  %61 = load float, float* %19, align 4
  %62 = fpext float %61 to double
  %63 = fdiv double 1.000000e-03, %62
  %64 = fdiv double %63, 1.000000e+03
  %65 = fptrunc double %64 to float
  store float %65, float* %20, align 4
  %66 = load float, float* %16, align 4
  %67 = fdiv float 1.000000e+00, %66
  store float %67, float* %21, align 4
  %68 = load float, float* %17, align 4
  %69 = fdiv float 1.000000e+00, %68
  store float %69, float* %22, align 4
  %70 = load float, float* %18, align 4
  %71 = fdiv float 1.000000e+00, %70
  store float %71, float* %23, align 4
  %72 = load float, float* %20, align 4
  %73 = load float, float* %15, align 4
  %74 = fdiv float %72, %73
  store float %74, float* %24, align 4
  %75 = load float*, float** %7, align 8
  store float* %75, float** %25, align 8
  %76 = load float*, float** %9, align 8
  store float* %76, float** %26, align 8
  store i32 0, i32* %27, align 4
  br label %77

77:                                               ; preds = %95, %6
  %78 = load i32, i32* %27, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %98

81:                                               ; preds = %77
  %82 = load float*, float** %25, align 8
  %83 = load float*, float** %26, align 8
  %84 = load float*, float** %10, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load float, float* %24, align 4
  %88 = load float, float* %21, align 4
  %89 = load float, float* %22, align 4
  %90 = load float, float* %23, align 4
  %91 = load float, float* %20, align 4
  call void @_Z16single_iterationPfS_S_iifffff(float* %82, float* %83, float* %84, i32 %85, i32 %86, float %87, float %88, float %89, float %90, float %91)
  %92 = load float*, float** %26, align 8
  store float* %92, float** %28, align 8
  %93 = load float*, float** %25, align 8
  store float* %93, float** %26, align 8
  %94 = load float*, float** %28, align 8
  store float* %94, float** %25, align 8
  br label %95

95:                                               ; preds = %81
  %96 = load i32, i32* %27, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %27, align 4
  br label %77

98:                                               ; preds = %77
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z5fatalPc(i8* %0) #2 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #8
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z11writeoutputPfiiPc(float* %0, i32 %1, i32 %2, i8* %3) #2 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca [256 x i8], align 16
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %12, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %52, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %25
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %31 = load i32, i32* %11, align 4
  %32 = load float*, float** %5, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, float* %32, i64 %38
  %40 = load float, float* %39, align 4
  %41 = fpext float %40 to double
  %42 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %31, double %41) #7
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %45 = call i32 @fputs(i8* %43, %struct._IO_FILE* %44)
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %25

51:                                               ; preds = %25
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %20

55:                                               ; preds = %20
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %57 = call i32 @fclose(%struct._IO_FILE* %56)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline uwtable
define dso_local void @_Z10read_inputPfiiPc(float* %0, i32 %1, i32 %2, i8* %3) #2 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca [256 x i8], align 16
  %13 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %11, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  call void @_Z5fatalPc(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %19

19:                                               ; preds = %18, %4
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %20
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %29 = call i8* @fgets(i8* %27, i32 256, %struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %31 = call i32 @feof(%struct._IO_FILE* %30) #7
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  call void @_Z5fatalPc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %34

34:                                               ; preds = %33, %26
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %36 = call i32 (i8*, i8*, ...) @sscanf(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), float* %13) #7
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @_Z5fatalPc(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %39

39:                                               ; preds = %38, %34
  %40 = load float, float* %13, align 4
  %41 = load float*, float** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %41, i64 %43
  store float %40, float* %44, align 4
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %20

48:                                               ; preds = %20
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %50 = call i32 @fclose(%struct._IO_FILE* %49)
  ret void
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @sscanf(i8*, i8*, ...) #1

; Function Attrs: noinline uwtable
define dso_local void @_Z5usageiPPc(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i64 0, i64 0), i8* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.11, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.13, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.14, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #5 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 7
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  call void @_Z5usageiPPc(i32 %21, i8** %22)
  br label %23

23:                                               ; preds = %20, %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26) #9
  store i32 %27, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 2
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @atoi(i8* %32) #9
  store i32 %33, i32* %7, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* %38) #9
  store i32 %39, i32* %8, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29, %23
  %42 = load i32, i32* %4, align 4
  %43 = load i8**, i8*** %5, align 8
  call void @_Z5usageiPPc(i32 %42, i8** %43)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = call noalias i8* @calloc(i64 %48, i64 4) #7
  %50 = bitcast i8* %49 to float*
  store float* %50, float** %10, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = call noalias i8* @calloc(i64 %54, i64 4) #7
  %56 = bitcast i8* %55 to float*
  store float* %56, float** %11, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = call noalias i8* @calloc(i64 %60, i64 4) #7
  %62 = bitcast i8* %61 to float*
  store float* %62, float** %12, align 8
  %63 = load float*, float** %10, align 8
  %64 = icmp ne float* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %44
  %66 = load float*, float** %11, align 8
  %67 = icmp ne float* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65, %44
  call void @_Z5fatalPc(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0))
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 4
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 5
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %14, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 6
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  %79 = load float*, float** %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %13, align 8
  call void @_Z10read_inputPfiiPc(float* %79, i32 %80, i32 %81, i8* %82)
  %83 = load float*, float** %11, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i8*, i8** %14, align 8
  call void @_Z10read_inputPfiiPc(float* %83, i32 %84, i32 %85, i8* %86)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  %88 = call i64 @_Z8get_timev()
  store i64 %88, i64* %16, align 8
  %89 = load float*, float** %12, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load float*, float** %10, align 8
  %92 = load float*, float** %11, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  call void @_Z17compute_tran_tempPfiS_S_ii(float* %89, i32 %90, float* %91, float* %92, i32 %93, i32 %94)
  %95 = call i64 @_Z8get_timev()
  store i64 %95, i64* %17, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %97 = load i32, i32* %8, align 4
  %98 = and i32 1, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %69
  %101 = load float*, float** %12, align 8
  br label %104

102:                                              ; preds = %69
  %103 = load float*, float** %10, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi float* [ %101, %100 ], [ %103, %102 ]
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i8*, i8** %15, align 8
  call void @_Z11writeoutputPfiiPc(float* %105, i32 %106, i32 %107, i8* %108)
  %109 = load float*, float** %10, align 8
  %110 = bitcast float* %109 to i8*
  call void @free(i8* %110) #7
  %111 = load float*, float** %11, align 8
  %112 = bitcast float* %111 to i8*
  call void @free(i8* %112) #7
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #6

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
