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
@.str.2 = private unnamed_addr constant [7 x i8] c"imgOut\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%0.2f \00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca [64 x [64 x float]]*, align 8
  %10 = alloca [64 x [64 x float]]*, align 8
  %11 = alloca [64 x [64 x float]]*, align 8
  %12 = alloca [64 x [64 x float]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 64, i32* %6, align 4
  store i32 64, i32* %7, align 4
  %13 = call i8* @polybench_alloc_data(i64 4096, i32 4)
  %14 = bitcast i8* %13 to [64 x [64 x float]]*
  store [64 x [64 x float]]* %14, [64 x [64 x float]]** %9, align 8
  %15 = call i8* @polybench_alloc_data(i64 4096, i32 4)
  %16 = bitcast i8* %15 to [64 x [64 x float]]*
  store [64 x [64 x float]]* %16, [64 x [64 x float]]** %10, align 8
  %17 = call i8* @polybench_alloc_data(i64 4096, i32 4)
  %18 = bitcast i8* %17 to [64 x [64 x float]]*
  store [64 x [64 x float]]* %18, [64 x [64 x float]]** %11, align 8
  %19 = call i8* @polybench_alloc_data(i64 4096, i32 4)
  %20 = bitcast i8* %19 to [64 x [64 x float]]*
  store [64 x [64 x float]]* %20, [64 x [64 x float]]** %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load [64 x [64 x float]]*, [64 x [64 x float]]** %9, align 8
  %24 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %23, i64 0, i64 0
  %25 = load [64 x [64 x float]]*, [64 x [64 x float]]** %10, align 8
  %26 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %25, i64 0, i64 0
  call void @init_array(i32 %21, i32 %22, float* %8, [64 x float]* %24, [64 x float]* %26)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load float, float* %8, align 4
  %30 = load [64 x [64 x float]]*, [64 x [64 x float]]** %9, align 8
  %31 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %30, i64 0, i64 0
  %32 = load [64 x [64 x float]]*, [64 x [64 x float]]** %10, align 8
  %33 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %32, i64 0, i64 0
  %34 = load [64 x [64 x float]]*, [64 x [64 x float]]** %11, align 8
  %35 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %34, i64 0, i64 0
  %36 = load [64 x [64 x float]]*, [64 x [64 x float]]** %12, align 8
  %37 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %36, i64 0, i64 0
  call void @kernel_deriche(i32 %27, i32 %28, float %29, [64 x float]* %31, [64 x float]* %33, [64 x float]* %35, [64 x float]* %37)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load [64 x [64 x float]]*, [64 x [64 x float]]** %10, align 8
  %41 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* %40, i64 0, i64 0
  call void @print_array(i32 %38, i32 %39, [64 x float]* %41)
  %42 = load [64 x [64 x float]]*, [64 x [64 x float]]** %9, align 8
  %43 = bitcast [64 x [64 x float]]* %42 to i8*
  call void @free(i8* %43) #4
  %44 = load [64 x [64 x float]]*, [64 x [64 x float]]** %10, align 8
  %45 = bitcast [64 x [64 x float]]* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load [64 x [64 x float]]*, [64 x [64 x float]]** %11, align 8
  %47 = bitcast [64 x [64 x float]]* %46 to i8*
  call void @free(i8* %47) #4
  %48 = load [64 x [64 x float]]*, [64 x [64 x float]]** %12, align 8
  %49 = bitcast [64 x [64 x float]]* %48 to i8*
  call void @free(i8* %49) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, i32 %1, float* %2, [64 x float]* %3, [64 x float]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca [64 x float]*, align 8
  %10 = alloca [64 x float]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store [64 x float]* %3, [64 x float]** %9, align 8
  store [64 x float]* %4, [64 x float]** %10, align 8
  %13 = load float*, float** %8, align 8
  store float 2.500000e-01, float* %13, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %43, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = mul nsw i32 313, %24
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 991, %26
  %28 = add nsw i32 %25, %27
  %29 = srem i32 %28, 65536
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %30, 6.553500e+04
  %32 = load [64 x float]*, [64 x float]** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x float], [64 x float]* %32, i64 %34
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [64 x float], [64 x float]* %35, i64 0, i64 %37
  store float %31, float* %38, align 4
  br label %39

39:                                               ; preds = %23
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  br label %19

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %14

46:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_deriche(i32 %0, i32 %1, float %2, [64 x float]* %3, [64 x float]* %4, [64 x float]* %5, [64 x float]* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca [64 x float]*, align 8
  %12 = alloca [64 x float]*, align 8
  %13 = alloca [64 x float]*, align 8
  %14 = alloca [64 x float]*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store float %2, float* %10, align 4
  store [64 x float]* %3, [64 x float]** %11, align 8
  store [64 x float]* %4, [64 x float]** %12, align 8
  store [64 x float]* %5, [64 x float]** %13, align 8
  store [64 x float]* %6, [64 x float]** %14, align 8
  %40 = load float, float* %10, align 4
  %41 = fneg float %40
  %42 = call float @expf(float %41) #4
  %43 = fsub float 1.000000e+00, %42
  %44 = load float, float* %10, align 4
  %45 = fneg float %44
  %46 = call float @expf(float %45) #4
  %47 = fsub float 1.000000e+00, %46
  %48 = fmul float %43, %47
  %49 = load float, float* %10, align 4
  %50 = fmul float 2.000000e+00, %49
  %51 = load float, float* %10, align 4
  %52 = fneg float %51
  %53 = call float @expf(float %52) #4
  %54 = fmul float %50, %53
  %55 = fadd float 1.000000e+00, %54
  %56 = load float, float* %10, align 4
  %57 = fmul float 2.000000e+00, %56
  %58 = call float @expf(float %57) #4
  %59 = fsub float %55, %58
  %60 = fdiv float %48, %59
  store float %60, float* %27, align 4
  %61 = load float, float* %27, align 4
  store float %61, float* %32, align 4
  store float %61, float* %28, align 4
  %62 = load float, float* %27, align 4
  %63 = load float, float* %10, align 4
  %64 = fneg float %63
  %65 = call float @expf(float %64) #4
  %66 = fmul float %62, %65
  %67 = load float, float* %10, align 4
  %68 = fsub float %67, 1.000000e+00
  %69 = fmul float %66, %68
  store float %69, float* %33, align 4
  store float %69, float* %29, align 4
  %70 = load float, float* %27, align 4
  %71 = load float, float* %10, align 4
  %72 = fneg float %71
  %73 = call float @expf(float %72) #4
  %74 = fmul float %70, %73
  %75 = load float, float* %10, align 4
  %76 = fadd float %75, 1.000000e+00
  %77 = fmul float %74, %76
  store float %77, float* %34, align 4
  store float %77, float* %30, align 4
  %78 = load float, float* %27, align 4
  %79 = fneg float %78
  %80 = load float, float* %10, align 4
  %81 = fmul float -2.000000e+00, %80
  %82 = call float @expf(float %81) #4
  %83 = fmul float %79, %82
  store float %83, float* %35, align 4
  store float %83, float* %31, align 4
  %84 = load float, float* %10, align 4
  %85 = fneg float %84
  %86 = call float @powf(float 2.000000e+00, float %85) #4
  store float %86, float* %36, align 4
  %87 = load float, float* %10, align 4
  %88 = fmul float -2.000000e+00, %87
  %89 = call float @expf(float %88) #4
  %90 = fneg float %89
  store float %90, float* %37, align 4
  store float 1.000000e+00, float* %39, align 4
  store float 1.000000e+00, float* %38, align 4
  store i32 0, i32* %15, align 4
  br label %91

91:                                               ; preds = %151, %7
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %154

95:                                               ; preds = %91
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %17, align 4
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %147, %95
  %97 = load i32, i32* %16, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %150

100:                                              ; preds = %96
  %101 = load float, float* %28, align 4
  %102 = load [64 x float]*, [64 x float]** %11, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [64 x float], [64 x float]* %102, i64 %104
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [64 x float], [64 x float]* %105, i64 0, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fmul float %101, %109
  %111 = load float, float* %29, align 4
  %112 = load float, float* %17, align 4
  %113 = fmul float %111, %112
  %114 = fadd float %110, %113
  %115 = load float, float* %36, align 4
  %116 = load float, float* %19, align 4
  %117 = fmul float %115, %116
  %118 = fadd float %114, %117
  %119 = load float, float* %37, align 4
  %120 = load float, float* %20, align 4
  %121 = fmul float %119, %120
  %122 = fadd float %118, %121
  %123 = load [64 x float]*, [64 x float]** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [64 x float], [64 x float]* %123, i64 %125
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [64 x float], [64 x float]* %126, i64 0, i64 %128
  store float %122, float* %129, align 4
  %130 = load [64 x float]*, [64 x float]** %11, align 8
  %131 = load i32, i32* %15, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [64 x float], [64 x float]* %130, i64 %132
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [64 x float], [64 x float]* %133, i64 0, i64 %135
  %137 = load float, float* %136, align 4
  store float %137, float* %17, align 4
  %138 = load float, float* %19, align 4
  store float %138, float* %20, align 4
  %139 = load [64 x float]*, [64 x float]** %13, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [64 x float], [64 x float]* %139, i64 %141
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [64 x float], [64 x float]* %142, i64 0, i64 %144
  %146 = load float, float* %145, align 4
  store float %146, float* %19, align 4
  br label %147

147:                                              ; preds = %100
  %148 = load i32, i32* %16, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %16, align 4
  br label %96

150:                                              ; preds = %96
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %15, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %15, align 4
  br label %91

154:                                              ; preds = %91
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %210, %154
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %213

159:                                              ; preds = %155
  store float 0.000000e+00, float* %25, align 4
  store float 0.000000e+00, float* %26, align 4
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %16, align 4
  br label %162

162:                                              ; preds = %206, %159
  %163 = load i32, i32* %16, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %162
  %166 = load float, float* %30, align 4
  %167 = load float, float* %21, align 4
  %168 = fmul float %166, %167
  %169 = load float, float* %31, align 4
  %170 = load float, float* %22, align 4
  %171 = fmul float %169, %170
  %172 = fadd float %168, %171
  %173 = load float, float* %36, align 4
  %174 = load float, float* %25, align 4
  %175 = fmul float %173, %174
  %176 = fadd float %172, %175
  %177 = load float, float* %37, align 4
  %178 = load float, float* %26, align 4
  %179 = fmul float %177, %178
  %180 = fadd float %176, %179
  %181 = load [64 x float]*, [64 x float]** %14, align 8
  %182 = load i32, i32* %15, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [64 x float], [64 x float]* %181, i64 %183
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [64 x float], [64 x float]* %184, i64 0, i64 %186
  store float %180, float* %187, align 4
  %188 = load float, float* %21, align 4
  store float %188, float* %22, align 4
  %189 = load [64 x float]*, [64 x float]** %11, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [64 x float], [64 x float]* %189, i64 %191
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [64 x float], [64 x float]* %192, i64 0, i64 %194
  %196 = load float, float* %195, align 4
  store float %196, float* %21, align 4
  %197 = load float, float* %25, align 4
  store float %197, float* %26, align 4
  %198 = load [64 x float]*, [64 x float]** %14, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [64 x float], [64 x float]* %198, i64 %200
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [64 x float], [64 x float]* %201, i64 0, i64 %203
  %205 = load float, float* %204, align 4
  store float %205, float* %25, align 4
  br label %206

206:                                              ; preds = %165
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %16, align 4
  br label %162

209:                                              ; preds = %162
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %15, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %15, align 4
  br label %155

213:                                              ; preds = %155
  store i32 0, i32* %15, align 4
  br label %214

214:                                              ; preds = %254, %213
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %257

218:                                              ; preds = %214
  store i32 0, i32* %16, align 4
  br label %219

219:                                              ; preds = %250, %218
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %219
  %224 = load float, float* %38, align 4
  %225 = load [64 x float]*, [64 x float]** %13, align 8
  %226 = load i32, i32* %15, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [64 x float], [64 x float]* %225, i64 %227
  %229 = load i32, i32* %16, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [64 x float], [64 x float]* %228, i64 0, i64 %230
  %232 = load float, float* %231, align 4
  %233 = load [64 x float]*, [64 x float]** %14, align 8
  %234 = load i32, i32* %15, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [64 x float], [64 x float]* %233, i64 %235
  %237 = load i32, i32* %16, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [64 x float], [64 x float]* %236, i64 0, i64 %238
  %240 = load float, float* %239, align 4
  %241 = fadd float %232, %240
  %242 = fmul float %224, %241
  %243 = load [64 x float]*, [64 x float]** %12, align 8
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [64 x float], [64 x float]* %243, i64 %245
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [64 x float], [64 x float]* %246, i64 0, i64 %248
  store float %242, float* %249, align 4
  br label %250

250:                                              ; preds = %223
  %251 = load i32, i32* %16, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %16, align 4
  br label %219

253:                                              ; preds = %219
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %15, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %15, align 4
  br label %214

257:                                              ; preds = %214
  store i32 0, i32* %16, align 4
  br label %258

258:                                              ; preds = %318, %257
  %259 = load i32, i32* %16, align 4
  %260 = load i32, i32* %9, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %321

262:                                              ; preds = %258
  store float 0.000000e+00, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %15, align 4
  br label %263

263:                                              ; preds = %314, %262
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* %8, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %317

267:                                              ; preds = %263
  %268 = load float, float* %32, align 4
  %269 = load [64 x float]*, [64 x float]** %12, align 8
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [64 x float], [64 x float]* %269, i64 %271
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [64 x float], [64 x float]* %272, i64 0, i64 %274
  %276 = load float, float* %275, align 4
  %277 = fmul float %268, %276
  %278 = load float, float* %33, align 4
  %279 = load float, float* %18, align 4
  %280 = fmul float %278, %279
  %281 = fadd float %277, %280
  %282 = load float, float* %36, align 4
  %283 = load float, float* %19, align 4
  %284 = fmul float %282, %283
  %285 = fadd float %281, %284
  %286 = load float, float* %37, align 4
  %287 = load float, float* %20, align 4
  %288 = fmul float %286, %287
  %289 = fadd float %285, %288
  %290 = load [64 x float]*, [64 x float]** %13, align 8
  %291 = load i32, i32* %15, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [64 x float], [64 x float]* %290, i64 %292
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [64 x float], [64 x float]* %293, i64 0, i64 %295
  store float %289, float* %296, align 4
  %297 = load [64 x float]*, [64 x float]** %12, align 8
  %298 = load i32, i32* %15, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [64 x float], [64 x float]* %297, i64 %299
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [64 x float], [64 x float]* %300, i64 0, i64 %302
  %304 = load float, float* %303, align 4
  store float %304, float* %18, align 4
  %305 = load float, float* %19, align 4
  store float %305, float* %20, align 4
  %306 = load [64 x float]*, [64 x float]** %13, align 8
  %307 = load i32, i32* %15, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [64 x float], [64 x float]* %306, i64 %308
  %310 = load i32, i32* %16, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [64 x float], [64 x float]* %309, i64 0, i64 %311
  %313 = load float, float* %312, align 4
  store float %313, float* %19, align 4
  br label %314

314:                                              ; preds = %267
  %315 = load i32, i32* %15, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %15, align 4
  br label %263

317:                                              ; preds = %263
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %16, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %16, align 4
  br label %258

321:                                              ; preds = %258
  store i32 0, i32* %16, align 4
  br label %322

322:                                              ; preds = %377, %321
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %9, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %380

326:                                              ; preds = %322
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  store float 0.000000e+00, float* %25, align 4
  store float 0.000000e+00, float* %26, align 4
  %327 = load i32, i32* %8, align 4
  %328 = sub nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  br label %329

329:                                              ; preds = %373, %326
  %330 = load i32, i32* %15, align 4
  %331 = icmp sge i32 %330, 0
  br i1 %331, label %332, label %376

332:                                              ; preds = %329
  %333 = load float, float* %34, align 4
  %334 = load float, float* %23, align 4
  %335 = fmul float %333, %334
  %336 = load float, float* %35, align 4
  %337 = load float, float* %24, align 4
  %338 = fmul float %336, %337
  %339 = fadd float %335, %338
  %340 = load float, float* %36, align 4
  %341 = load float, float* %25, align 4
  %342 = fmul float %340, %341
  %343 = fadd float %339, %342
  %344 = load float, float* %37, align 4
  %345 = load float, float* %26, align 4
  %346 = fmul float %344, %345
  %347 = fadd float %343, %346
  %348 = load [64 x float]*, [64 x float]** %14, align 8
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [64 x float], [64 x float]* %348, i64 %350
  %352 = load i32, i32* %16, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [64 x float], [64 x float]* %351, i64 0, i64 %353
  store float %347, float* %354, align 4
  %355 = load float, float* %23, align 4
  store float %355, float* %24, align 4
  %356 = load [64 x float]*, [64 x float]** %12, align 8
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [64 x float], [64 x float]* %356, i64 %358
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [64 x float], [64 x float]* %359, i64 0, i64 %361
  %363 = load float, float* %362, align 4
  store float %363, float* %23, align 4
  %364 = load float, float* %25, align 4
  store float %364, float* %26, align 4
  %365 = load [64 x float]*, [64 x float]** %14, align 8
  %366 = load i32, i32* %15, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [64 x float], [64 x float]* %365, i64 %367
  %369 = load i32, i32* %16, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [64 x float], [64 x float]* %368, i64 0, i64 %370
  %372 = load float, float* %371, align 4
  store float %372, float* %25, align 4
  br label %373

373:                                              ; preds = %332
  %374 = load i32, i32* %15, align 4
  %375 = add nsw i32 %374, -1
  store i32 %375, i32* %15, align 4
  br label %329

376:                                              ; preds = %329
  br label %377

377:                                              ; preds = %376
  %378 = load i32, i32* %16, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %16, align 4
  br label %322

380:                                              ; preds = %322
  store i32 0, i32* %15, align 4
  br label %381

381:                                              ; preds = %421, %380
  %382 = load i32, i32* %15, align 4
  %383 = load i32, i32* %8, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %424

385:                                              ; preds = %381
  store i32 0, i32* %16, align 4
  br label %386

386:                                              ; preds = %417, %385
  %387 = load i32, i32* %16, align 4
  %388 = load i32, i32* %9, align 4
  %389 = icmp slt i32 %387, %388
  br i1 %389, label %390, label %420

390:                                              ; preds = %386
  %391 = load float, float* %39, align 4
  %392 = load [64 x float]*, [64 x float]** %13, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [64 x float], [64 x float]* %392, i64 %394
  %396 = load i32, i32* %16, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [64 x float], [64 x float]* %395, i64 0, i64 %397
  %399 = load float, float* %398, align 4
  %400 = load [64 x float]*, [64 x float]** %14, align 8
  %401 = load i32, i32* %15, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [64 x float], [64 x float]* %400, i64 %402
  %404 = load i32, i32* %16, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [64 x float], [64 x float]* %403, i64 0, i64 %405
  %407 = load float, float* %406, align 4
  %408 = fadd float %399, %407
  %409 = fmul float %391, %408
  %410 = load [64 x float]*, [64 x float]** %12, align 8
  %411 = load i32, i32* %15, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [64 x float], [64 x float]* %410, i64 %412
  %414 = load i32, i32* %16, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [64 x float], [64 x float]* %413, i64 0, i64 %415
  store float %409, float* %416, align 4
  br label %417

417:                                              ; preds = %390
  %418 = load i32, i32* %16, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %16, align 4
  br label %386

420:                                              ; preds = %386
  br label %421

421:                                              ; preds = %420
  %422 = load i32, i32* %15, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %15, align 4
  br label %381

424:                                              ; preds = %381
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %0, i32 %1, [64 x float]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [64 x float]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [64 x float]* %2, [64 x float]** %6, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %49, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %48

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = srem i32 %27, 20
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %22
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = load [64 x float]*, [64 x float]** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [64 x float], [64 x float]* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [64 x float], [64 x float]* %38, i64 0, i64 %40
  %42 = load float, float* %41, align 4
  %43 = fpext float %42 to double
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), double %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %13

52:                                               ; preds = %13
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local float @expf(float) #1

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

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
