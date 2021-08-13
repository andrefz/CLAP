; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@polybench_papi_counters_threadid = dso_local global i32 0, align 4
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8
@polybench_t_start = common dso_local global double 0.000000e+00, align 8
@polybench_t_end = common dso_local global double 0.000000e+00, align 8
@polybench_c_start = common dso_local global i64 0, align 8
@polybench_c_end = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1.8 = private unnamed_addr constant [12 x i8] c"polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@.str.2.9 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_inter_array_padding_sz = internal global i64 0, align 8
@.str.3.12 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [40 x [40 x double]]*, align 8
  %8 = alloca [40 x double]*, align 8
  %9 = alloca [40 x double]*, align 8
  %10 = alloca [40 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 40, i32* %6, align 4
  %11 = call i8* @polybench_alloc_data(i64 1600, i32 8)
  %12 = bitcast i8* %11 to [40 x [40 x double]]*
  store [40 x [40 x double]]* %12, [40 x [40 x double]]** %7, align 8
  %13 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %14 = bitcast i8* %13 to [40 x double]*
  store [40 x double]* %14, [40 x double]** %8, align 8
  %15 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %16 = bitcast i8* %15 to [40 x double]*
  store [40 x double]* %16, [40 x double]** %9, align 8
  %17 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %18 = bitcast i8* %17 to [40 x double]*
  store [40 x double]* %18, [40 x double]** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load [40 x [40 x double]]*, [40 x [40 x double]]** %7, align 8
  %21 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %20, i64 0, i64 0
  %22 = load [40 x double]*, [40 x double]** %8, align 8
  %23 = getelementptr inbounds [40 x double], [40 x double]* %22, i64 0, i64 0
  %24 = load [40 x double]*, [40 x double]** %9, align 8
  %25 = getelementptr inbounds [40 x double], [40 x double]* %24, i64 0, i64 0
  %26 = load [40 x double]*, [40 x double]** %10, align 8
  %27 = getelementptr inbounds [40 x double], [40 x double]* %26, i64 0, i64 0
  call void @init_array(i32 %19, [40 x double]* %21, double* %23, double* %25, double* %27)
  %28 = load i32, i32* %6, align 4
  %29 = load [40 x [40 x double]]*, [40 x [40 x double]]** %7, align 8
  %30 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %29, i64 0, i64 0
  %31 = load [40 x double]*, [40 x double]** %8, align 8
  %32 = getelementptr inbounds [40 x double], [40 x double]* %31, i64 0, i64 0
  %33 = load [40 x double]*, [40 x double]** %9, align 8
  %34 = getelementptr inbounds [40 x double], [40 x double]* %33, i64 0, i64 0
  %35 = load [40 x double]*, [40 x double]** %10, align 8
  %36 = getelementptr inbounds [40 x double], [40 x double]* %35, i64 0, i64 0
  call void @kernel_ludcmp(i32 %28, [40 x double]* %30, double* %32, double* %34, double* %36)
  %37 = load i32, i32* %6, align 4
  %38 = load [40 x double]*, [40 x double]** %9, align 8
  %39 = getelementptr inbounds [40 x double], [40 x double]* %38, i64 0, i64 0
  call void @print_array(i32 %37, double* %39)
  %40 = load [40 x [40 x double]]*, [40 x [40 x double]]** %7, align 8
  %41 = bitcast [40 x [40 x double]]* %40 to i8*
  call void @free(i8* %41) #4
  %42 = load [40 x double]*, [40 x double]** %8, align 8
  %43 = bitcast [40 x double]* %42 to i8*
  call void @free(i8* %43) #4
  %44 = load [40 x double]*, [40 x double]** %9, align 8
  %45 = bitcast [40 x double]* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load [40 x double]*, [40 x double]** %10, align 8
  %47 = bitcast [40 x double]* %46 to i8*
  call void @free(i8* %47) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, [40 x double]* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca [40 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [40 x [40 x double]]*, align 8
  store i32 %0, i32* %6, align 4
  store [40 x double]* %1, [40 x double]** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sitofp i32 %18 to double
  store double %19, double* %13, align 8
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %44, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %20
  %25 = load double*, double** %9, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  store double 0.000000e+00, double* %28, align 8
  %29 = load double*, double** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  store double 0.000000e+00, double* %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = sitofp i32 %34 to double
  %36 = load double, double* %13, align 8
  %37 = fdiv double %35, %36
  %38 = fdiv double %37, 2.000000e+00
  %39 = fadd double %38, 4.000000e+00
  %40 = load double*, double** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  store double %39, double* %43, align 8
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %20

47:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %103, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %106

52:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %74, %52
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 0, %58
  %60 = load i32, i32* %6, align 4
  %61 = srem i32 %59, %60
  %62 = sitofp i32 %61 to double
  %63 = load i32, i32* %6, align 4
  %64 = sitofp i32 %63 to double
  %65 = fdiv double %62, %64
  %66 = fadd double %65, 1.000000e+00
  %67 = load [40 x double]*, [40 x double]** %7, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [40 x double], [40 x double]* %67, i64 %69
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [40 x double], [40 x double]* %70, i64 0, i64 %72
  store double %66, double* %73, align 8
  br label %74

74:                                               ; preds = %57
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %53

77:                                               ; preds = %53
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %92, %77
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load [40 x double]*, [40 x double]** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [40 x double], [40 x double]* %85, i64 %87
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [40 x double], [40 x double]* %88, i64 0, i64 %90
  store double 0.000000e+00, double* %91, align 8
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load [40 x double]*, [40 x double]** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [40 x double], [40 x double]* %96, i64 %98
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [40 x double], [40 x double]* %99, i64 0, i64 %101
  store double 1.000000e+00, double* %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %48

106:                                              ; preds = %48
  %107 = call i8* @polybench_alloc_data(i64 1600, i32 8)
  %108 = bitcast i8* %107 to [40 x [40 x double]]*
  store [40 x [40 x double]]* %108, [40 x [40 x double]]** %17, align 8
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %130, %106
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %133

113:                                              ; preds = %109
  store i32 0, i32* %15, align 4
  br label %114

114:                                              ; preds = %126, %113
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load [40 x [40 x double]]*, [40 x [40 x double]]** %17, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %119, i64 0, i64 %121
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [40 x double], [40 x double]* %122, i64 0, i64 %124
  store double 0.000000e+00, double* %125, align 8
  br label %126

126:                                              ; preds = %118
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %15, align 4
  br label %114

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %109

133:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %134

134:                                              ; preds = %183, %133
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %186

138:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %179, %138
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %182

143:                                              ; preds = %139
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %175, %143
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %178

148:                                              ; preds = %144
  %149 = load [40 x double]*, [40 x double]** %7, align 8
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [40 x double], [40 x double]* %149, i64 %151
  %153 = load i32, i32* %16, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [40 x double], [40 x double]* %152, i64 0, i64 %154
  %156 = load double, double* %155, align 8
  %157 = load [40 x double]*, [40 x double]** %7, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [40 x double], [40 x double]* %157, i64 %159
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [40 x double], [40 x double]* %160, i64 0, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fmul double %156, %164
  %166 = load [40 x [40 x double]]*, [40 x [40 x double]]** %17, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %166, i64 0, i64 %168
  %170 = load i32, i32* %15, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [40 x double], [40 x double]* %169, i64 0, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fadd double %173, %165
  store double %174, double* %172, align 8
  br label %175

175:                                              ; preds = %148
  %176 = load i32, i32* %15, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %15, align 4
  br label %144

178:                                              ; preds = %144
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %14, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %14, align 4
  br label %139

182:                                              ; preds = %139
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %16, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %16, align 4
  br label %134

186:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %187

187:                                              ; preds = %216, %186
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %219

191:                                              ; preds = %187
  store i32 0, i32* %15, align 4
  br label %192

192:                                              ; preds = %212, %191
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %215

196:                                              ; preds = %192
  %197 = load [40 x [40 x double]]*, [40 x [40 x double]]** %17, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %197, i64 0, i64 %199
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [40 x double], [40 x double]* %200, i64 0, i64 %202
  %204 = load double, double* %203, align 8
  %205 = load [40 x double]*, [40 x double]** %7, align 8
  %206 = load i32, i32* %14, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [40 x double], [40 x double]* %205, i64 %207
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [40 x double], [40 x double]* %208, i64 0, i64 %210
  store double %204, double* %211, align 8
  br label %212

212:                                              ; preds = %196
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %15, align 4
  br label %192

215:                                              ; preds = %192
  br label %216

216:                                              ; preds = %215
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %187

219:                                              ; preds = %187
  %220 = load [40 x [40 x double]]*, [40 x [40 x double]]** %17, align 8
  %221 = bitcast [40 x [40 x double]]* %220 to i8*
  call void @free(i8* %221) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_ludcmp(i32 %0, [40 x double]* %1, double* %2, double* %3, double* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca [40 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store [40 x double]* %1, [40 x double]** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double* %4, double** %10, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %136, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %139

19:                                               ; preds = %15
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %78, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %81

24:                                               ; preds = %20
  %25 = load [40 x double]*, [40 x double]** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [40 x double], [40 x double]* %25, i64 %27
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [40 x double], [40 x double]* %28, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  store double %32, double* %14, align 8
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %57, %24
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %33
  %38 = load [40 x double]*, [40 x double]** %7, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [40 x double], [40 x double]* %38, i64 %40
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [40 x double], [40 x double]* %41, i64 0, i64 %43
  %45 = load double, double* %44, align 8
  %46 = load [40 x double]*, [40 x double]** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [40 x double], [40 x double]* %46, i64 %48
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [40 x double], [40 x double]* %49, i64 0, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fmul double %45, %53
  %55 = load double, double* %14, align 8
  %56 = fsub double %55, %54
  store double %56, double* %14, align 8
  br label %57

57:                                               ; preds = %37
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %33

60:                                               ; preds = %33
  %61 = load double, double* %14, align 8
  %62 = load [40 x double]*, [40 x double]** %7, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [40 x double], [40 x double]* %62, i64 %64
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [40 x double], [40 x double]* %65, i64 0, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fdiv double %61, %69
  %71 = load [40 x double]*, [40 x double]** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [40 x double], [40 x double]* %71, i64 %73
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [40 x double], [40 x double]* %74, i64 0, i64 %76
  store double %70, double* %77, align 8
  br label %78

78:                                               ; preds = %60
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %20

81:                                               ; preds = %20
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %132, %81
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %135

87:                                               ; preds = %83
  %88 = load [40 x double]*, [40 x double]** %7, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [40 x double], [40 x double]* %88, i64 %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [40 x double], [40 x double]* %91, i64 0, i64 %93
  %95 = load double, double* %94, align 8
  store double %95, double* %14, align 8
  store i32 0, i32* %13, align 4
  br label %96

96:                                               ; preds = %120, %87
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load [40 x double]*, [40 x double]** %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [40 x double], [40 x double]* %101, i64 %103
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [40 x double], [40 x double]* %104, i64 0, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load [40 x double]*, [40 x double]** %7, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [40 x double], [40 x double]* %109, i64 %111
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [40 x double], [40 x double]* %112, i64 0, i64 %114
  %116 = load double, double* %115, align 8
  %117 = fmul double %108, %116
  %118 = load double, double* %14, align 8
  %119 = fsub double %118, %117
  store double %119, double* %14, align 8
  br label %120

120:                                              ; preds = %100
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %96

123:                                              ; preds = %96
  %124 = load double, double* %14, align 8
  %125 = load [40 x double]*, [40 x double]** %7, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [40 x double], [40 x double]* %125, i64 %127
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [40 x double], [40 x double]* %128, i64 0, i64 %130
  store double %124, double* %131, align 8
  br label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %83

135:                                              ; preds = %83
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %15

139:                                              ; preds = %15
  store i32 0, i32* %11, align 4
  br label %140

140:                                              ; preds = %180, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %183

144:                                              ; preds = %140
  %145 = load double*, double** %8, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, double* %145, i64 %147
  %149 = load double, double* %148, align 8
  store double %149, double* %14, align 8
  store i32 0, i32* %12, align 4
  br label %150

150:                                              ; preds = %171, %144
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %174

154:                                              ; preds = %150
  %155 = load [40 x double]*, [40 x double]** %7, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [40 x double], [40 x double]* %155, i64 %157
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [40 x double], [40 x double]* %158, i64 0, i64 %160
  %162 = load double, double* %161, align 8
  %163 = load double*, double** %10, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds double, double* %163, i64 %165
  %167 = load double, double* %166, align 8
  %168 = fmul double %162, %167
  %169 = load double, double* %14, align 8
  %170 = fsub double %169, %168
  store double %170, double* %14, align 8
  br label %171

171:                                              ; preds = %154
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %150

174:                                              ; preds = %150
  %175 = load double, double* %14, align 8
  %176 = load double*, double** %10, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  store double %175, double* %179, align 8
  br label %180

180:                                              ; preds = %174
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %11, align 4
  br label %140

183:                                              ; preds = %140
  %184 = load i32, i32* %6, align 4
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %186

186:                                              ; preds = %236, %183
  %187 = load i32, i32* %11, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %239

189:                                              ; preds = %186
  %190 = load double*, double** %10, align 8
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  store double %194, double* %14, align 8
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %218, %189
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %221

201:                                              ; preds = %197
  %202 = load [40 x double]*, [40 x double]** %7, align 8
  %203 = load i32, i32* %11, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [40 x double], [40 x double]* %202, i64 %204
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [40 x double], [40 x double]* %205, i64 0, i64 %207
  %209 = load double, double* %208, align 8
  %210 = load double*, double** %9, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds double, double* %210, i64 %212
  %214 = load double, double* %213, align 8
  %215 = fmul double %209, %214
  %216 = load double, double* %14, align 8
  %217 = fsub double %216, %215
  store double %217, double* %14, align 8
  br label %218

218:                                              ; preds = %201
  %219 = load i32, i32* %12, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %12, align 4
  br label %197

221:                                              ; preds = %197
  %222 = load double, double* %14, align 8
  %223 = load [40 x double]*, [40 x double]** %7, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [40 x double], [40 x double]* %223, i64 %225
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [40 x double], [40 x double]* %226, i64 0, i64 %228
  %230 = load double, double* %229, align 8
  %231 = fdiv double %222, %230
  %232 = load double*, double** %9, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %232, i64 %234
  store double %231, double* %235, align 8
  br label %236

236:                                              ; preds = %221
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, -1
  store i32 %238, i32* %11, align 4
  br label %186

239:                                              ; preds = %186
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %15, 20
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load double*, double** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_flush_cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 4194560, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = sext i32 %5 to i64
  %7 = call noalias i8* @calloc(i64 %6, i64 8) #4
  %8 = bitcast i8* %7 to double*
  store double* %8, double** %2, align 8
  store double 0.000000e+00, double* %4, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %21, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load double*, double** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double, double* %4, align 8
  %20 = fadd double %19, %18
  store double %20, double* %4, align 8
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %9

24:                                               ; preds = %9
  %25 = load double, double* %4, align 8
  %26 = fcmp ole double %25, 1.000000e+01
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %29

28:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.8, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #5
  unreachable

29:                                               ; preds = %27
  %30 = load double*, double** %2, align 8
  %31 = bitcast double* %30 to i8*
  call void @free(i8* %31) #4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_prepare_instruments() #0 {
  call void @polybench_flush_cache()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_timer_start() #0 {
  call void @polybench_prepare_instruments()
  %1 = call double @rtclock()
  store double %1, double* @polybench_t_start, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @rtclock() #0 {
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_timer_stop() #0 {
  %1 = call double @rtclock()
  store double %1, double* @polybench_t_end, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_timer_print() #0 {
  %1 = load double, double* @polybench_t_end, align 8
  %2 = load double, double* @polybench_t_start, align 8
  %3 = fsub double %1, %2
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.9, i64 0, i64 0), double %3)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @polybench_free_data(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  call void @free(i8* %3) #4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  store i64 %7, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* %5, align 8
  %11 = mul i64 %10, %9
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @xmalloc(i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @xmalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %6 = load i64, i64* @polybench_inter_array_padding_sz, align 8
  %7 = add i64 %6, 0
  store i64 %7, i64* @polybench_inter_array_padding_sz, align 8
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @polybench_inter_array_padding_sz, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @posix_memalign(i8** %3, i64 4096, i64 %11) #4
  store i32 %12, i32* %5, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %1
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.12, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
