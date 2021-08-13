; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dim_str = type { i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.box_str = type { i32, i32, i32, i32, i64, i32, [26 x %struct.nei_str] }
%struct.nei_str = type { i32, i32, i32, i32, i64 }
%struct.FOUR_VECTOR = type { double, double, double, double }
%struct.par_str = type { double }
%struct.THREE_VECTOR = type { double, double, double }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Time spent in different stages of CPU/MCPU KERNEL:\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: VARIABLES\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : MCPU: SET DEVICE\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: INPUTS\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: KERNEL\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-boxes1d\00", align 1
@.str.1.7 = private unnamed_addr constant [57 x i8] c"ERROR: Wrong value to -boxes1d parameter, cannot be <=0\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [52 x i8] c"ERROR: Value to -boxes1d parameter in not a number\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [44 x i8] c"ERROR: Missing value to -boxes1d parameter\0A\00", align 1
@.str.4.10 = private unnamed_addr constant [26 x i8] c"ERROR: Unknown parameter\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [34 x i8] c"Configuration used: boxes1d = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @kernel_cpu(double %0, %struct.dim_str* byval(%struct.dim_str) align 8 %1, %struct.box_str* %2, %struct.FOUR_VECTOR* %3, double* %4, %struct.FOUR_VECTOR* %5) #0 {
  %7 = alloca %struct.par_str, align 8
  %8 = alloca %struct.box_str*, align 8
  %9 = alloca %struct.FOUR_VECTOR*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.FOUR_VECTOR*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.FOUR_VECTOR*, align 8
  %25 = alloca %struct.FOUR_VECTOR*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca %struct.FOUR_VECTOR*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  %35 = alloca double, align 8
  %36 = alloca double, align 8
  %37 = alloca %struct.THREE_VECTOR, align 8
  %38 = getelementptr inbounds %struct.par_str, %struct.par_str* %7, i32 0, i32 0
  store double %0, double* %38, align 8
  store %struct.box_str* %2, %struct.box_str** %8, align 8
  store %struct.FOUR_VECTOR* %3, %struct.FOUR_VECTOR** %9, align 8
  store double* %4, double** %10, align 8
  store %struct.FOUR_VECTOR* %5, %struct.FOUR_VECTOR** %11, align 8
  %39 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %39, i64* %12, align 8
  %40 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %40, i64* %13, align 8
  %41 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %41, i64* %14, align 8
  %42 = getelementptr inbounds %struct.par_str, %struct.par_str* %7, i32 0, i32 0
  %43 = load double, double* %42, align 8
  store double %43, double* %17, align 8
  %44 = load double, double* %17, align 8
  %45 = fmul double 2.000000e+00, %44
  %46 = load double, double* %17, align 8
  %47 = fmul double %45, %46
  store double %47, double* %18, align 8
  %48 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %48, i64* %15, align 8
  store i32 0, i32* %22, align 4
  br label %49

49:                                               ; preds = %301, %6
  %50 = load i32, i32* %22, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %1, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %51, %53
  br i1 %54, label %55, label %304

55:                                               ; preds = %49
  %56 = load %struct.box_str*, %struct.box_str** %8, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.box_str, %struct.box_str* %56, i64 %58
  %60 = getelementptr inbounds %struct.box_str, %struct.box_str* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %23, align 8
  %62 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %9, align 8
  %63 = load i64, i64* %23, align 8
  %64 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %62, i64 %63
  store %struct.FOUR_VECTOR* %64, %struct.FOUR_VECTOR** %24, align 8
  %65 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %11, align 8
  %66 = load i64, i64* %23, align 8
  %67 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %65, i64 %66
  store %struct.FOUR_VECTOR* %67, %struct.FOUR_VECTOR** %25, align 8
  store i32 0, i32* %21, align 4
  br label %68

68:                                               ; preds = %297, %55
  %69 = load i32, i32* %21, align 4
  %70 = load %struct.box_str*, %struct.box_str** %8, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.box_str, %struct.box_str* %70, i64 %72
  %74 = getelementptr inbounds %struct.box_str, %struct.box_str* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 1, %75
  %77 = icmp slt i32 %69, %76
  br i1 %77, label %78, label %300

78:                                               ; preds = %68
  %79 = load i32, i32* %21, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %22, align 4
  store i32 %82, i32* %26, align 4
  br label %95

83:                                               ; preds = %78
  %84 = load %struct.box_str*, %struct.box_str** %8, align 8
  %85 = load i32, i32* %22, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.box_str, %struct.box_str* %84, i64 %86
  %88 = getelementptr inbounds %struct.box_str, %struct.box_str* %87, i32 0, i32 6
  %89 = load i32, i32* %21, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %88, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %26, align 4
  br label %95

95:                                               ; preds = %83, %81
  %96 = load %struct.box_str*, %struct.box_str** %8, align 8
  %97 = load i32, i32* %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.box_str, %struct.box_str* %96, i64 %98
  %100 = getelementptr inbounds %struct.box_str, %struct.box_str* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %27, align 8
  %102 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %9, align 8
  %103 = load i64, i64* %27, align 8
  %104 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %102, i64 %103
  store %struct.FOUR_VECTOR* %104, %struct.FOUR_VECTOR** %28, align 8
  %105 = load double*, double** %10, align 8
  %106 = load i64, i64* %27, align 8
  %107 = getelementptr inbounds double, double* %105, i64 %106
  store double* %107, double** %29, align 8
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %293, %95
  %109 = load i32, i32* %19, align 4
  %110 = icmp slt i32 %109, 100
  br i1 %110, label %111, label %296

111:                                              ; preds = %108
  store i32 0, i32* %20, align 4
  br label %112

112:                                              ; preds = %289, %111
  %113 = load i32, i32* %20, align 4
  %114 = icmp slt i32 %113, 100
  br i1 %114, label %115, label %292

115:                                              ; preds = %112
  %116 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %117 = load i32, i32* %19, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %116, i64 %118
  %120 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %119, i32 0, i32 0
  %121 = load double, double* %120, align 8
  %122 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %122, i64 %124
  %126 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %125, i32 0, i32 0
  %127 = load double, double* %126, align 8
  %128 = fadd double %121, %127
  %129 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %129, i64 %131
  %133 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %132, i32 0, i32 1
  %134 = load double, double* %133, align 8
  %135 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %135, i64 %137
  %139 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %138, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = fmul double %134, %140
  %142 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %142, i64 %144
  %146 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %145, i32 0, i32 2
  %147 = load double, double* %146, align 8
  %148 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %149 = load i32, i32* %20, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %148, i64 %150
  %152 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %151, i32 0, i32 2
  %153 = load double, double* %152, align 8
  %154 = fmul double %147, %153
  %155 = fadd double %141, %154
  %156 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %157 = load i32, i32* %19, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %156, i64 %158
  %160 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %159, i32 0, i32 3
  %161 = load double, double* %160, align 8
  %162 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %163 = load i32, i32* %20, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %162, i64 %164
  %166 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %165, i32 0, i32 3
  %167 = load double, double* %166, align 8
  %168 = fmul double %161, %167
  %169 = fadd double %155, %168
  %170 = fsub double %128, %169
  store double %170, double* %30, align 8
  %171 = load double, double* %18, align 8
  %172 = load double, double* %30, align 8
  %173 = fmul double %171, %172
  store double %173, double* %31, align 8
  %174 = load double, double* %31, align 8
  %175 = fneg double %174
  %176 = call double @exp(double %175) #4
  store double %176, double* %33, align 8
  %177 = load double, double* %33, align 8
  %178 = fmul double 2.000000e+00, %177
  store double %178, double* %32, align 8
  %179 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %180 = load i32, i32* %19, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %179, i64 %181
  %183 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %182, i32 0, i32 1
  %184 = load double, double* %183, align 8
  %185 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %186 = load i32, i32* %20, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %185, i64 %187
  %189 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %188, i32 0, i32 1
  %190 = load double, double* %189, align 8
  %191 = fsub double %184, %190
  %192 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 0
  store double %191, double* %192, align 8
  %193 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %194 = load i32, i32* %19, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %193, i64 %195
  %197 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %196, i32 0, i32 2
  %198 = load double, double* %197, align 8
  %199 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %199, i64 %201
  %203 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %202, i32 0, i32 2
  %204 = load double, double* %203, align 8
  %205 = fsub double %198, %204
  %206 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 1
  store double %205, double* %206, align 8
  %207 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %24, align 8
  %208 = load i32, i32* %19, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %207, i64 %209
  %211 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %210, i32 0, i32 3
  %212 = load double, double* %211, align 8
  %213 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %28, align 8
  %214 = load i32, i32* %20, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %213, i64 %215
  %217 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %216, i32 0, i32 3
  %218 = load double, double* %217, align 8
  %219 = fsub double %212, %218
  %220 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 2
  store double %219, double* %220, align 8
  %221 = load double, double* %32, align 8
  %222 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 0
  %223 = load double, double* %222, align 8
  %224 = fmul double %221, %223
  store double %224, double* %34, align 8
  %225 = load double, double* %32, align 8
  %226 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 1
  %227 = load double, double* %226, align 8
  %228 = fmul double %225, %227
  store double %228, double* %35, align 8
  %229 = load double, double* %32, align 8
  %230 = getelementptr inbounds %struct.THREE_VECTOR, %struct.THREE_VECTOR* %37, i32 0, i32 2
  %231 = load double, double* %230, align 8
  %232 = fmul double %229, %231
  store double %232, double* %36, align 8
  %233 = load double*, double** %29, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds double, double* %233, i64 %235
  %237 = load double, double* %236, align 8
  %238 = load double, double* %33, align 8
  %239 = fmul double %237, %238
  %240 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %240, i64 %242
  %244 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %243, i32 0, i32 0
  %245 = load double, double* %244, align 8
  %246 = fadd double %245, %239
  store double %246, double* %244, align 8
  %247 = load double*, double** %29, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds double, double* %247, i64 %249
  %251 = load double, double* %250, align 8
  %252 = load double, double* %34, align 8
  %253 = fmul double %251, %252
  %254 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %255 = load i32, i32* %19, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %254, i64 %256
  %258 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %257, i32 0, i32 1
  %259 = load double, double* %258, align 8
  %260 = fadd double %259, %253
  store double %260, double* %258, align 8
  %261 = load double*, double** %29, align 8
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds double, double* %261, i64 %263
  %265 = load double, double* %264, align 8
  %266 = load double, double* %35, align 8
  %267 = fmul double %265, %266
  %268 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %269 = load i32, i32* %19, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %268, i64 %270
  %272 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %271, i32 0, i32 2
  %273 = load double, double* %272, align 8
  %274 = fadd double %273, %267
  store double %274, double* %272, align 8
  %275 = load double*, double** %29, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = load double, double* %278, align 8
  %280 = load double, double* %36, align 8
  %281 = fmul double %279, %280
  %282 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %283 = load i32, i32* %19, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %282, i64 %284
  %286 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %285, i32 0, i32 3
  %287 = load double, double* %286, align 8
  %288 = fadd double %287, %281
  store double %288, double* %286, align 8
  br label %289

289:                                              ; preds = %115
  %290 = load i32, i32* %20, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %20, align 4
  br label %112

292:                                              ; preds = %112
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %19, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %19, align 4
  br label %108

296:                                              ; preds = %108
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %21, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %21, align 4
  br label %68

300:                                              ; preds = %68
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %22, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %22, align 4
  br label %49

304:                                              ; preds = %49
  %305 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %305, i64* %16, align 8
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %307 = load i64, i64* %13, align 8
  %308 = load i64, i64* %12, align 8
  %309 = sub nsw i64 %307, %308
  %310 = sitofp i64 %309 to float
  %311 = fdiv float %310, 1.000000e+06
  %312 = fpext float %311 to double
  %313 = load i64, i64* %13, align 8
  %314 = load i64, i64* %12, align 8
  %315 = sub nsw i64 %313, %314
  %316 = sitofp i64 %315 to float
  %317 = load i64, i64* %16, align 8
  %318 = load i64, i64* %12, align 8
  %319 = sub nsw i64 %317, %318
  %320 = sitofp i64 %319 to float
  %321 = fdiv float %316, %320
  %322 = fmul float %321, 1.000000e+02
  %323 = fpext float %322 to double
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), double %312, double %323)
  %325 = load i64, i64* %14, align 8
  %326 = load i64, i64* %13, align 8
  %327 = sub nsw i64 %325, %326
  %328 = sitofp i64 %327 to float
  %329 = fdiv float %328, 1.000000e+06
  %330 = fpext float %329 to double
  %331 = load i64, i64* %14, align 8
  %332 = load i64, i64* %13, align 8
  %333 = sub nsw i64 %331, %332
  %334 = sitofp i64 %333 to float
  %335 = load i64, i64* %16, align 8
  %336 = load i64, i64* %12, align 8
  %337 = sub nsw i64 %335, %336
  %338 = sitofp i64 %337 to float
  %339 = fdiv float %334, %338
  %340 = fmul float %339, 1.000000e+02
  %341 = fpext float %340 to double
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), double %330, double %341)
  %343 = load i64, i64* %15, align 8
  %344 = load i64, i64* %14, align 8
  %345 = sub nsw i64 %343, %344
  %346 = sitofp i64 %345 to float
  %347 = fdiv float %346, 1.000000e+06
  %348 = fpext float %347 to double
  %349 = load i64, i64* %15, align 8
  %350 = load i64, i64* %14, align 8
  %351 = sub nsw i64 %349, %350
  %352 = sitofp i64 %351 to float
  %353 = load i64, i64* %16, align 8
  %354 = load i64, i64* %12, align 8
  %355 = sub nsw i64 %353, %354
  %356 = sitofp i64 %355 to float
  %357 = fdiv float %352, %356
  %358 = fmul float %357, 1.000000e+02
  %359 = fpext float %358 to double
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), double %348, double %359)
  %361 = load i64, i64* %16, align 8
  %362 = load i64, i64* %15, align 8
  %363 = sub nsw i64 %361, %362
  %364 = sitofp i64 %363 to float
  %365 = fdiv float %364, 1.000000e+06
  %366 = fpext float %365 to double
  %367 = load i64, i64* %16, align 8
  %368 = load i64, i64* %15, align 8
  %369 = sub nsw i64 %367, %368
  %370 = sitofp i64 %369 to float
  %371 = load i64, i64* %16, align 8
  %372 = load i64, i64* %12, align 8
  %373 = sub nsw i64 %371, %372
  %374 = sitofp i64 %373 to float
  %375 = fdiv float %370, %374
  %376 = fmul float %375, 1.000000e+02
  %377 = fpext float %376 to double
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), double %366, double %377)
  %379 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.par_str, align 8
  %21 = alloca %struct.dim_str, align 8
  %22 = alloca %struct.box_str*, align 8
  %23 = alloca %struct.FOUR_VECTOR*, align 8
  %24 = alloca double*, align 8
  %25 = alloca %struct.FOUR_VECTOR*, align 8
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %27, i64* %6, align 8
  %28 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %28, i64* %7, align 8
  %29 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 2
  store i32 1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  store i32 1, i32* %30, align 4
  %31 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %91, %2
  %33 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %95

37:                                               ; preds = %32
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %38, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  %51 = icmp sge i32 %47, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %46
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %53, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @isInteger(i8* %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %82

62:                                               ; preds = %52
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %63, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @atoi(i8* %69) #5
  %71 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %580

77:                                               ; preds = %62
  %78 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  br label %84

82:                                               ; preds = %52
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %580

84:                                               ; preds = %77
  br label %87

85:                                               ; preds = %46
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3.9, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %580

87:                                               ; preds = %84
  br label %90

88:                                               ; preds = %37
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.10, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %580

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %32

95:                                               ; preds = %32
  %96 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.11, i64 0, i64 0), i32 %97)
  %99 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %99, i64* %8, align 8
  %100 = getelementptr inbounds %struct.par_str, %struct.par_str* %20, i32 0, i32 0
  store double 5.000000e-01, double* %100, align 8
  %101 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %101, i64* %9, align 8
  %102 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %103, %105
  %107 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %106, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 4
  store i64 %110, i64* %111, align 8
  %112 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = mul nsw i64 %113, 100
  %115 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  store i64 %114, i64* %115, align 8
  %116 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = mul i64 %117, 32
  %119 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 7
  store i64 %118, i64* %119, align 8
  %120 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = mul i64 %121, 8
  %123 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 8
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = mul i64 %125, 656
  %127 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 5
  store i64 %126, i64* %127, align 8
  %128 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %128, i64* %10, align 8
  %129 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = call noalias i8* @malloc(i64 %130) #4
  %132 = bitcast i8* %131 to %struct.box_str*
  store %struct.box_str* %132, %struct.box_str** %22, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %444, %95
  %134 = load i32, i32* %14, align 4
  %135 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %447

138:                                              ; preds = %133
  store i32 0, i32* %15, align 4
  br label %139

139:                                              ; preds = %440, %138
  %140 = load i32, i32* %15, align 4
  %141 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %140, %142
  br i1 %143, label %144, label %443

144:                                              ; preds = %139
  store i32 0, i32* %16, align 4
  br label %145

145:                                              ; preds = %436, %144
  %146 = load i32, i32* %16, align 4
  %147 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %439

150:                                              ; preds = %145
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.box_str*, %struct.box_str** %22, align 8
  %153 = load i32, i32* %26, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.box_str, %struct.box_str* %152, i64 %154
  %156 = getelementptr inbounds %struct.box_str, %struct.box_str* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load i32, i32* %15, align 4
  %158 = load %struct.box_str*, %struct.box_str** %22, align 8
  %159 = load i32, i32* %26, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.box_str, %struct.box_str* %158, i64 %160
  %162 = getelementptr inbounds %struct.box_str, %struct.box_str* %161, i32 0, i32 1
  store i32 %157, i32* %162, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.box_str*, %struct.box_str** %22, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.box_str, %struct.box_str* %164, i64 %166
  %168 = getelementptr inbounds %struct.box_str, %struct.box_str* %167, i32 0, i32 2
  store i32 %163, i32* %168, align 8
  %169 = load i32, i32* %26, align 4
  %170 = load %struct.box_str*, %struct.box_str** %22, align 8
  %171 = load i32, i32* %26, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.box_str, %struct.box_str* %170, i64 %172
  %174 = getelementptr inbounds %struct.box_str, %struct.box_str* %173, i32 0, i32 3
  store i32 %169, i32* %174, align 4
  %175 = load i32, i32* %26, align 4
  %176 = mul nsw i32 %175, 100
  %177 = sext i32 %176 to i64
  %178 = load %struct.box_str*, %struct.box_str** %22, align 8
  %179 = load i32, i32* %26, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.box_str, %struct.box_str* %178, i64 %180
  %182 = getelementptr inbounds %struct.box_str, %struct.box_str* %181, i32 0, i32 4
  store i64 %177, i64* %182, align 8
  %183 = load %struct.box_str*, %struct.box_str** %22, align 8
  %184 = load i32, i32* %26, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.box_str, %struct.box_str* %183, i64 %185
  %187 = getelementptr inbounds %struct.box_str, %struct.box_str* %186, i32 0, i32 5
  store i32 0, i32* %187, align 8
  store i32 -1, i32* %17, align 4
  br label %188

188:                                              ; preds = %430, %150
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 2
  br i1 %190, label %191, label %433

191:                                              ; preds = %188
  store i32 -1, i32* %18, align 4
  br label %192

192:                                              ; preds = %426, %191
  %193 = load i32, i32* %18, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %429

195:                                              ; preds = %192
  store i32 -1, i32* %19, align 4
  br label %196

196:                                              ; preds = %422, %195
  %197 = load i32, i32* %19, align 4
  %198 = icmp slt i32 %197, 2
  br i1 %198, label %199, label %425

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %200, %201
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %199
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %205, %206
  %208 = icmp sge i32 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %19, align 4
  %212 = add nsw i32 %210, %211
  %213 = icmp sge i32 %212, 0
  br label %214

214:                                              ; preds = %209, %204, %199
  %215 = phi i1 [ false, %204 ], [ false, %199 ], [ %213, %209 ]
  %216 = zext i1 %215 to i32
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %421

218:                                              ; preds = %214
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %17, align 4
  %221 = add nsw i32 %219, %220
  %222 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = icmp slt i32 %221, %223
  br i1 %224, label %225, label %239

225:                                              ; preds = %218
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %18, align 4
  %228 = add nsw i32 %226, %227
  %229 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %228, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %225
  %233 = load i32, i32* %16, align 4
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %233, %234
  %236 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %235, %237
  br label %239

239:                                              ; preds = %232, %225, %218
  %240 = phi i1 [ false, %225 ], [ false, %218 ], [ %238, %232 ]
  %241 = zext i1 %240 to i32
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %421

243:                                              ; preds = %239
  %244 = load i32, i32* %17, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load i32, i32* %18, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %19, align 4
  %251 = icmp eq i32 %250, 0
  br label %252

252:                                              ; preds = %249, %246, %243
  %253 = phi i1 [ false, %246 ], [ false, %243 ], [ %251, %249 ]
  %254 = zext i1 %253 to i32
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %421

256:                                              ; preds = %252
  %257 = load i32, i32* %16, align 4
  %258 = load i32, i32* %19, align 4
  %259 = add nsw i32 %257, %258
  %260 = load %struct.box_str*, %struct.box_str** %22, align 8
  %261 = load i32, i32* %26, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.box_str, %struct.box_str* %260, i64 %262
  %264 = getelementptr inbounds %struct.box_str, %struct.box_str* %263, i32 0, i32 6
  %265 = load %struct.box_str*, %struct.box_str** %22, align 8
  %266 = load i32, i32* %26, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.box_str, %struct.box_str* %265, i64 %267
  %269 = getelementptr inbounds %struct.box_str, %struct.box_str* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %264, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %272, i32 0, i32 0
  store i32 %259, i32* %273, align 8
  %274 = load i32, i32* %15, align 4
  %275 = load i32, i32* %18, align 4
  %276 = add nsw i32 %274, %275
  %277 = load %struct.box_str*, %struct.box_str** %22, align 8
  %278 = load i32, i32* %26, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.box_str, %struct.box_str* %277, i64 %279
  %281 = getelementptr inbounds %struct.box_str, %struct.box_str* %280, i32 0, i32 6
  %282 = load %struct.box_str*, %struct.box_str** %22, align 8
  %283 = load i32, i32* %26, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.box_str, %struct.box_str* %282, i64 %284
  %286 = getelementptr inbounds %struct.box_str, %struct.box_str* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %281, i64 0, i64 %288
  %290 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %289, i32 0, i32 1
  store i32 %276, i32* %290, align 4
  %291 = load i32, i32* %14, align 4
  %292 = load i32, i32* %17, align 4
  %293 = add nsw i32 %291, %292
  %294 = load %struct.box_str*, %struct.box_str** %22, align 8
  %295 = load i32, i32* %26, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.box_str, %struct.box_str* %294, i64 %296
  %298 = getelementptr inbounds %struct.box_str, %struct.box_str* %297, i32 0, i32 6
  %299 = load %struct.box_str*, %struct.box_str** %22, align 8
  %300 = load i32, i32* %26, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.box_str, %struct.box_str* %299, i64 %301
  %303 = getelementptr inbounds %struct.box_str, %struct.box_str* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %298, i64 0, i64 %305
  %307 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %306, i32 0, i32 2
  store i32 %293, i32* %307, align 8
  %308 = load %struct.box_str*, %struct.box_str** %22, align 8
  %309 = load i32, i32* %26, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.box_str, %struct.box_str* %308, i64 %310
  %312 = getelementptr inbounds %struct.box_str, %struct.box_str* %311, i32 0, i32 6
  %313 = load %struct.box_str*, %struct.box_str** %22, align 8
  %314 = load i32, i32* %26, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.box_str, %struct.box_str* %313, i64 %315
  %317 = getelementptr inbounds %struct.box_str, %struct.box_str* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %312, i64 0, i64 %319
  %321 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 8
  %323 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 %322, %324
  %326 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = mul nsw i32 %325, %327
  %329 = load %struct.box_str*, %struct.box_str** %22, align 8
  %330 = load i32, i32* %26, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.box_str, %struct.box_str* %329, i64 %331
  %333 = getelementptr inbounds %struct.box_str, %struct.box_str* %332, i32 0, i32 6
  %334 = load %struct.box_str*, %struct.box_str** %22, align 8
  %335 = load i32, i32* %26, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.box_str, %struct.box_str* %334, i64 %336
  %338 = getelementptr inbounds %struct.box_str, %struct.box_str* %337, i32 0, i32 5
  %339 = load i32, i32* %338, align 8
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %333, i64 0, i64 %340
  %342 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 3
  %345 = load i32, i32* %344, align 4
  %346 = mul nsw i32 %343, %345
  %347 = add nsw i32 %328, %346
  %348 = load %struct.box_str*, %struct.box_str** %22, align 8
  %349 = load i32, i32* %26, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.box_str, %struct.box_str* %348, i64 %350
  %352 = getelementptr inbounds %struct.box_str, %struct.box_str* %351, i32 0, i32 6
  %353 = load %struct.box_str*, %struct.box_str** %22, align 8
  %354 = load i32, i32* %26, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.box_str, %struct.box_str* %353, i64 %355
  %357 = getelementptr inbounds %struct.box_str, %struct.box_str* %356, i32 0, i32 5
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %352, i64 0, i64 %359
  %361 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = add nsw i32 %347, %362
  %364 = load %struct.box_str*, %struct.box_str** %22, align 8
  %365 = load i32, i32* %26, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.box_str, %struct.box_str* %364, i64 %366
  %368 = getelementptr inbounds %struct.box_str, %struct.box_str* %367, i32 0, i32 6
  %369 = load %struct.box_str*, %struct.box_str** %22, align 8
  %370 = load i32, i32* %26, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.box_str, %struct.box_str* %369, i64 %371
  %373 = getelementptr inbounds %struct.box_str, %struct.box_str* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 8
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %368, i64 0, i64 %375
  %377 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %376, i32 0, i32 3
  store i32 %363, i32* %377, align 4
  %378 = load %struct.box_str*, %struct.box_str** %22, align 8
  %379 = load i32, i32* %26, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.box_str, %struct.box_str* %378, i64 %380
  %382 = getelementptr inbounds %struct.box_str, %struct.box_str* %381, i32 0, i32 6
  %383 = load %struct.box_str*, %struct.box_str** %22, align 8
  %384 = load i32, i32* %26, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.box_str, %struct.box_str* %383, i64 %385
  %387 = getelementptr inbounds %struct.box_str, %struct.box_str* %386, i32 0, i32 5
  %388 = load i32, i32* %387, align 8
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %382, i64 0, i64 %389
  %391 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 4
  %393 = mul nsw i32 %392, 100
  %394 = sext i32 %393 to i64
  %395 = load %struct.box_str*, %struct.box_str** %22, align 8
  %396 = load i32, i32* %26, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.box_str, %struct.box_str* %395, i64 %397
  %399 = getelementptr inbounds %struct.box_str, %struct.box_str* %398, i32 0, i32 6
  %400 = load %struct.box_str*, %struct.box_str** %22, align 8
  %401 = load i32, i32* %26, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.box_str, %struct.box_str* %400, i64 %402
  %404 = getelementptr inbounds %struct.box_str, %struct.box_str* %403, i32 0, i32 5
  %405 = load i32, i32* %404, align 8
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [26 x %struct.nei_str], [26 x %struct.nei_str]* %399, i64 0, i64 %406
  %408 = getelementptr inbounds %struct.nei_str, %struct.nei_str* %407, i32 0, i32 4
  store i64 %394, i64* %408, align 8
  %409 = load %struct.box_str*, %struct.box_str** %22, align 8
  %410 = load i32, i32* %26, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.box_str, %struct.box_str* %409, i64 %411
  %413 = getelementptr inbounds %struct.box_str, %struct.box_str* %412, i32 0, i32 5
  %414 = load i32, i32* %413, align 8
  %415 = add nsw i32 %414, 1
  %416 = load %struct.box_str*, %struct.box_str** %22, align 8
  %417 = load i32, i32* %26, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.box_str, %struct.box_str* %416, i64 %418
  %420 = getelementptr inbounds %struct.box_str, %struct.box_str* %419, i32 0, i32 5
  store i32 %415, i32* %420, align 8
  br label %421

421:                                              ; preds = %256, %252, %239, %214
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %19, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %19, align 4
  br label %196

425:                                              ; preds = %196
  br label %426

426:                                              ; preds = %425
  %427 = load i32, i32* %18, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %18, align 4
  br label %192

429:                                              ; preds = %192
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %17, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %17, align 4
  br label %188

433:                                              ; preds = %188
  %434 = load i32, i32* %26, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %26, align 4
  br label %436

436:                                              ; preds = %433
  %437 = load i32, i32* %16, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %16, align 4
  br label %145

439:                                              ; preds = %145
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %15, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %15, align 4
  br label %139

443:                                              ; preds = %139
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %14, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %14, align 4
  br label %133

447:                                              ; preds = %133
  %448 = call i32 (i8*, ...) bitcast (i32 (...)* @time to i32 (i8*, ...)*)(i8* null)
  call void @srand(i32 %448) #4
  %449 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 7
  %450 = load i64, i64* %449, align 8
  %451 = call noalias i8* @malloc(i64 %450) #4
  %452 = bitcast i8* %451 to %struct.FOUR_VECTOR*
  store %struct.FOUR_VECTOR* %452, %struct.FOUR_VECTOR** %23, align 8
  store i32 0, i32* %14, align 4
  br label %453

453:                                              ; preds = %500, %447
  %454 = load i32, i32* %14, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  %457 = load i64, i64* %456, align 8
  %458 = icmp slt i64 %455, %457
  br i1 %458, label %459, label %503

459:                                              ; preds = %453
  %460 = call i32 @rand() #4
  %461 = srem i32 %460, 10
  %462 = add nsw i32 %461, 1
  %463 = sitofp i32 %462 to double
  %464 = fdiv double %463, 1.000000e+01
  %465 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %466 = load i32, i32* %14, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %465, i64 %467
  %469 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %468, i32 0, i32 0
  store double %464, double* %469, align 8
  %470 = call i32 @rand() #4
  %471 = srem i32 %470, 10
  %472 = add nsw i32 %471, 1
  %473 = sitofp i32 %472 to double
  %474 = fdiv double %473, 1.000000e+01
  %475 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %476 = load i32, i32* %14, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %475, i64 %477
  %479 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %478, i32 0, i32 1
  store double %474, double* %479, align 8
  %480 = call i32 @rand() #4
  %481 = srem i32 %480, 10
  %482 = add nsw i32 %481, 1
  %483 = sitofp i32 %482 to double
  %484 = fdiv double %483, 1.000000e+01
  %485 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %486 = load i32, i32* %14, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %485, i64 %487
  %489 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %488, i32 0, i32 2
  store double %484, double* %489, align 8
  %490 = call i32 @rand() #4
  %491 = srem i32 %490, 10
  %492 = add nsw i32 %491, 1
  %493 = sitofp i32 %492 to double
  %494 = fdiv double %493, 1.000000e+01
  %495 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %496 = load i32, i32* %14, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %495, i64 %497
  %499 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %498, i32 0, i32 3
  store double %494, double* %499, align 8
  br label %500

500:                                              ; preds = %459
  %501 = load i32, i32* %14, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %14, align 4
  br label %453

503:                                              ; preds = %453
  %504 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 8
  %505 = load i64, i64* %504, align 8
  %506 = call noalias i8* @malloc(i64 %505) #4
  %507 = bitcast i8* %506 to double*
  store double* %507, double** %24, align 8
  store i32 0, i32* %14, align 4
  br label %508

508:                                              ; preds = %524, %503
  %509 = load i32, i32* %14, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  %512 = load i64, i64* %511, align 8
  %513 = icmp slt i64 %510, %512
  br i1 %513, label %514, label %527

514:                                              ; preds = %508
  %515 = call i32 @rand() #4
  %516 = srem i32 %515, 10
  %517 = add nsw i32 %516, 1
  %518 = sitofp i32 %517 to double
  %519 = fdiv double %518, 1.000000e+01
  %520 = load double*, double** %24, align 8
  %521 = load i32, i32* %14, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds double, double* %520, i64 %522
  store double %519, double* %523, align 8
  br label %524

524:                                              ; preds = %514
  %525 = load i32, i32* %14, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %14, align 4
  br label %508

527:                                              ; preds = %508
  %528 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 7
  %529 = load i64, i64* %528, align 8
  %530 = call noalias i8* @malloc(i64 %529) #4
  %531 = bitcast i8* %530 to %struct.FOUR_VECTOR*
  store %struct.FOUR_VECTOR* %531, %struct.FOUR_VECTOR** %25, align 8
  store i32 0, i32* %14, align 4
  br label %532

532:                                              ; preds = %559, %527
  %533 = load i32, i32* %14, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds %struct.dim_str, %struct.dim_str* %21, i32 0, i32 6
  %536 = load i64, i64* %535, align 8
  %537 = icmp slt i64 %534, %536
  br i1 %537, label %538, label %562

538:                                              ; preds = %532
  %539 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %540 = load i32, i32* %14, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %539, i64 %541
  %543 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %542, i32 0, i32 0
  store double 0.000000e+00, double* %543, align 8
  %544 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %545 = load i32, i32* %14, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %544, i64 %546
  %548 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %547, i32 0, i32 1
  store double 0.000000e+00, double* %548, align 8
  %549 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %550 = load i32, i32* %14, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %549, i64 %551
  %553 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %552, i32 0, i32 2
  store double 0.000000e+00, double* %553, align 8
  %554 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %555 = load i32, i32* %14, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %554, i64 %556
  %558 = getelementptr inbounds %struct.FOUR_VECTOR, %struct.FOUR_VECTOR* %557, i32 0, i32 3
  store double 0.000000e+00, double* %558, align 8
  br label %559

559:                                              ; preds = %538
  %560 = load i32, i32* %14, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %14, align 4
  br label %532

562:                                              ; preds = %532
  %563 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %563, i64* %11, align 8
  %564 = load %struct.box_str*, %struct.box_str** %22, align 8
  %565 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %566 = load double*, double** %24, align 8
  %567 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %568 = getelementptr inbounds %struct.par_str, %struct.par_str* %20, i32 0, i32 0
  %569 = load double, double* %568, align 8
  call void @kernel_cpu(double %569, %struct.dim_str* byval(%struct.dim_str) align 8 %21, %struct.box_str* %564, %struct.FOUR_VECTOR* %565, double* %566, %struct.FOUR_VECTOR* %567)
  %570 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %570, i64* %12, align 8
  %571 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %23, align 8
  %572 = bitcast %struct.FOUR_VECTOR* %571 to i8*
  call void @free(i8* %572) #4
  %573 = load double*, double** %24, align 8
  %574 = bitcast double* %573 to i8*
  call void @free(i8* %574) #4
  %575 = load %struct.FOUR_VECTOR*, %struct.FOUR_VECTOR** %25, align 8
  %576 = bitcast %struct.FOUR_VECTOR* %575 to i8*
  call void @free(i8* %576) #4
  %577 = load %struct.box_str*, %struct.box_str** %22, align 8
  %578 = bitcast %struct.box_str* %577 to i8*
  call void @free(i8* %578) #4
  %579 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %579, i64* %13, align 8
  store i32 0, i32* %3, align 4
  br label %580

580:                                              ; preds = %562, %88, %85, %82, %75
  %581 = load i32, i32* %3, align 4
  ret i32 %581
}

declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @time(...) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isInteger(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sgt i32 %23, 57
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  store i32 0, i32* %2, align 4
  br label %31

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %10

30:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @get_time() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %1, i8* null)
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

declare dso_local i32 @gettimeofday(...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
