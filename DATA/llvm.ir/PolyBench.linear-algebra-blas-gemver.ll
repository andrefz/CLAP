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
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
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
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca [40 x [40 x double]]*, align 8
  %10 = alloca [40 x double]*, align 8
  %11 = alloca [40 x double]*, align 8
  %12 = alloca [40 x double]*, align 8
  %13 = alloca [40 x double]*, align 8
  %14 = alloca [40 x double]*, align 8
  %15 = alloca [40 x double]*, align 8
  %16 = alloca [40 x double]*, align 8
  %17 = alloca [40 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 40, i32* %6, align 4
  %18 = call i8* @polybench_alloc_data(i64 1600, i32 8)
  %19 = bitcast i8* %18 to [40 x [40 x double]]*
  store [40 x [40 x double]]* %19, [40 x [40 x double]]** %9, align 8
  %20 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %21 = bitcast i8* %20 to [40 x double]*
  store [40 x double]* %21, [40 x double]** %10, align 8
  %22 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %23 = bitcast i8* %22 to [40 x double]*
  store [40 x double]* %23, [40 x double]** %11, align 8
  %24 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %25 = bitcast i8* %24 to [40 x double]*
  store [40 x double]* %25, [40 x double]** %12, align 8
  %26 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %27 = bitcast i8* %26 to [40 x double]*
  store [40 x double]* %27, [40 x double]** %13, align 8
  %28 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %29 = bitcast i8* %28 to [40 x double]*
  store [40 x double]* %29, [40 x double]** %14, align 8
  %30 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %31 = bitcast i8* %30 to [40 x double]*
  store [40 x double]* %31, [40 x double]** %15, align 8
  %32 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %33 = bitcast i8* %32 to [40 x double]*
  store [40 x double]* %33, [40 x double]** %16, align 8
  %34 = call i8* @polybench_alloc_data(i64 40, i32 8)
  %35 = bitcast i8* %34 to [40 x double]*
  store [40 x double]* %35, [40 x double]** %17, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load [40 x [40 x double]]*, [40 x [40 x double]]** %9, align 8
  %38 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %37, i64 0, i64 0
  %39 = load [40 x double]*, [40 x double]** %10, align 8
  %40 = getelementptr inbounds [40 x double], [40 x double]* %39, i64 0, i64 0
  %41 = load [40 x double]*, [40 x double]** %11, align 8
  %42 = getelementptr inbounds [40 x double], [40 x double]* %41, i64 0, i64 0
  %43 = load [40 x double]*, [40 x double]** %12, align 8
  %44 = getelementptr inbounds [40 x double], [40 x double]* %43, i64 0, i64 0
  %45 = load [40 x double]*, [40 x double]** %13, align 8
  %46 = getelementptr inbounds [40 x double], [40 x double]* %45, i64 0, i64 0
  %47 = load [40 x double]*, [40 x double]** %14, align 8
  %48 = getelementptr inbounds [40 x double], [40 x double]* %47, i64 0, i64 0
  %49 = load [40 x double]*, [40 x double]** %15, align 8
  %50 = getelementptr inbounds [40 x double], [40 x double]* %49, i64 0, i64 0
  %51 = load [40 x double]*, [40 x double]** %16, align 8
  %52 = getelementptr inbounds [40 x double], [40 x double]* %51, i64 0, i64 0
  %53 = load [40 x double]*, [40 x double]** %17, align 8
  %54 = getelementptr inbounds [40 x double], [40 x double]* %53, i64 0, i64 0
  call void @init_array(i32 %36, double* %7, double* %8, [40 x double]* %38, double* %40, double* %42, double* %44, double* %46, double* %48, double* %50, double* %52, double* %54)
  %55 = load i32, i32* %6, align 4
  %56 = load double, double* %7, align 8
  %57 = load double, double* %8, align 8
  %58 = load [40 x [40 x double]]*, [40 x [40 x double]]** %9, align 8
  %59 = getelementptr inbounds [40 x [40 x double]], [40 x [40 x double]]* %58, i64 0, i64 0
  %60 = load [40 x double]*, [40 x double]** %10, align 8
  %61 = getelementptr inbounds [40 x double], [40 x double]* %60, i64 0, i64 0
  %62 = load [40 x double]*, [40 x double]** %11, align 8
  %63 = getelementptr inbounds [40 x double], [40 x double]* %62, i64 0, i64 0
  %64 = load [40 x double]*, [40 x double]** %12, align 8
  %65 = getelementptr inbounds [40 x double], [40 x double]* %64, i64 0, i64 0
  %66 = load [40 x double]*, [40 x double]** %13, align 8
  %67 = getelementptr inbounds [40 x double], [40 x double]* %66, i64 0, i64 0
  %68 = load [40 x double]*, [40 x double]** %14, align 8
  %69 = getelementptr inbounds [40 x double], [40 x double]* %68, i64 0, i64 0
  %70 = load [40 x double]*, [40 x double]** %15, align 8
  %71 = getelementptr inbounds [40 x double], [40 x double]* %70, i64 0, i64 0
  %72 = load [40 x double]*, [40 x double]** %16, align 8
  %73 = getelementptr inbounds [40 x double], [40 x double]* %72, i64 0, i64 0
  %74 = load [40 x double]*, [40 x double]** %17, align 8
  %75 = getelementptr inbounds [40 x double], [40 x double]* %74, i64 0, i64 0
  call void @kernel_gemver(i32 %55, double %56, double %57, [40 x double]* %59, double* %61, double* %63, double* %65, double* %67, double* %69, double* %71, double* %73, double* %75)
  %76 = load i32, i32* %6, align 4
  %77 = load [40 x double]*, [40 x double]** %14, align 8
  %78 = getelementptr inbounds [40 x double], [40 x double]* %77, i64 0, i64 0
  call void @print_array(i32 %76, double* %78)
  %79 = load [40 x [40 x double]]*, [40 x [40 x double]]** %9, align 8
  %80 = bitcast [40 x [40 x double]]* %79 to i8*
  call void @free(i8* %80) #4
  %81 = load [40 x double]*, [40 x double]** %10, align 8
  %82 = bitcast [40 x double]* %81 to i8*
  call void @free(i8* %82) #4
  %83 = load [40 x double]*, [40 x double]** %11, align 8
  %84 = bitcast [40 x double]* %83 to i8*
  call void @free(i8* %84) #4
  %85 = load [40 x double]*, [40 x double]** %12, align 8
  %86 = bitcast [40 x double]* %85 to i8*
  call void @free(i8* %86) #4
  %87 = load [40 x double]*, [40 x double]** %13, align 8
  %88 = bitcast [40 x double]* %87 to i8*
  call void @free(i8* %88) #4
  %89 = load [40 x double]*, [40 x double]** %14, align 8
  %90 = bitcast [40 x double]* %89 to i8*
  call void @free(i8* %90) #4
  %91 = load [40 x double]*, [40 x double]** %15, align 8
  %92 = bitcast [40 x double]* %91 to i8*
  call void @free(i8* %92) #4
  %93 = load [40 x double]*, [40 x double]** %16, align 8
  %94 = bitcast [40 x double]* %93 to i8*
  call void @free(i8* %94) #4
  %95 = load [40 x double]*, [40 x double]** %17, align 8
  %96 = bitcast [40 x double]* %95 to i8*
  call void @free(i8* %96) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, double* %1, double* %2, [40 x double]* %3, double* %4, double* %5, double* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca [40 x double]*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  store i32 %0, i32* %13, align 4
  store double* %1, double** %14, align 8
  store double* %2, double** %15, align 8
  store [40 x double]* %3, [40 x double]** %16, align 8
  store double* %4, double** %17, align 8
  store double* %5, double** %18, align 8
  store double* %6, double** %19, align 8
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store double* %9, double** %22, align 8
  store double* %10, double** %23, align 8
  store double* %11, double** %24, align 8
  %28 = load double*, double** %14, align 8
  store double 1.500000e+00, double* %28, align 8
  %29 = load double*, double** %15, align 8
  store double 1.200000e+00, double* %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sitofp i32 %30 to double
  store double %31, double* %27, align 8
  store i32 0, i32* %25, align 4
  br label %32

32:                                               ; preds = %126, %12
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %129

36:                                               ; preds = %32
  %37 = load i32, i32* %25, align 4
  %38 = sitofp i32 %37 to double
  %39 = load double*, double** %17, align 8
  %40 = load i32, i32* %25, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  store double %38, double* %42, align 8
  %43 = load i32, i32* %25, align 4
  %44 = add nsw i32 %43, 1
  %45 = sitofp i32 %44 to double
  %46 = load double, double* %27, align 8
  %47 = fdiv double %45, %46
  %48 = fdiv double %47, 2.000000e+00
  %49 = load double*, double** %19, align 8
  %50 = load i32, i32* %25, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  store double %48, double* %52, align 8
  %53 = load i32, i32* %25, align 4
  %54 = add nsw i32 %53, 1
  %55 = sitofp i32 %54 to double
  %56 = load double, double* %27, align 8
  %57 = fdiv double %55, %56
  %58 = fdiv double %57, 4.000000e+00
  %59 = load double*, double** %18, align 8
  %60 = load i32, i32* %25, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds double, double* %59, i64 %61
  store double %58, double* %62, align 8
  %63 = load i32, i32* %25, align 4
  %64 = add nsw i32 %63, 1
  %65 = sitofp i32 %64 to double
  %66 = load double, double* %27, align 8
  %67 = fdiv double %65, %66
  %68 = fdiv double %67, 6.000000e+00
  %69 = load double*, double** %20, align 8
  %70 = load i32, i32* %25, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double, double* %69, i64 %71
  store double %68, double* %72, align 8
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  %75 = sitofp i32 %74 to double
  %76 = load double, double* %27, align 8
  %77 = fdiv double %75, %76
  %78 = fdiv double %77, 8.000000e+00
  %79 = load double*, double** %23, align 8
  %80 = load i32, i32* %25, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds double, double* %79, i64 %81
  store double %78, double* %82, align 8
  %83 = load i32, i32* %25, align 4
  %84 = add nsw i32 %83, 1
  %85 = sitofp i32 %84 to double
  %86 = load double, double* %27, align 8
  %87 = fdiv double %85, %86
  %88 = fdiv double %87, 9.000000e+00
  %89 = load double*, double** %24, align 8
  %90 = load i32, i32* %25, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  store double %88, double* %92, align 8
  %93 = load double*, double** %22, align 8
  %94 = load i32, i32* %25, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %93, i64 %95
  store double 0.000000e+00, double* %96, align 8
  %97 = load double*, double** %21, align 8
  %98 = load i32, i32* %25, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %97, i64 %99
  store double 0.000000e+00, double* %100, align 8
  store i32 0, i32* %26, align 4
  br label %101

101:                                              ; preds = %122, %36
  %102 = load i32, i32* %26, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* %26, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = srem i32 %108, %109
  %111 = sitofp i32 %110 to double
  %112 = load i32, i32* %13, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %111, %113
  %115 = load [40 x double]*, [40 x double]** %16, align 8
  %116 = load i32, i32* %25, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [40 x double], [40 x double]* %115, i64 %117
  %119 = load i32, i32* %26, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [40 x double], [40 x double]* %118, i64 0, i64 %120
  store double %114, double* %121, align 8
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %26, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %26, align 4
  br label %101

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %25, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %25, align 4
  br label %32

129:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemver(i32 %0, double %1, double %2, [40 x double]* %3, double* %4, double* %5, double* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca [40 x double]*, align 8
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store double %1, double* %14, align 8
  store double %2, double* %15, align 8
  store [40 x double]* %3, [40 x double]** %16, align 8
  store double* %4, double** %17, align 8
  store double* %5, double** %18, align 8
  store double* %6, double** %19, align 8
  store double* %7, double** %20, align 8
  store double* %8, double** %21, align 8
  store double* %9, double** %22, align 8
  store double* %10, double** %23, align 8
  store double* %11, double** %24, align 8
  store i32 0, i32* %25, align 4
  br label %27

27:                                               ; preds = %80, %12
  %28 = load i32, i32* %25, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  store i32 0, i32* %26, align 4
  br label %32

32:                                               ; preds = %76, %31
  %33 = load i32, i32* %26, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %79

36:                                               ; preds = %32
  %37 = load [40 x double]*, [40 x double]** %16, align 8
  %38 = load i32, i32* %25, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [40 x double], [40 x double]* %37, i64 %39
  %41 = load i32, i32* %26, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [40 x double], [40 x double]* %40, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %17, align 8
  %46 = load i32, i32* %25, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  %49 = load double, double* %48, align 8
  %50 = load double*, double** %18, align 8
  %51 = load i32, i32* %26, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fmul double %49, %54
  %56 = fadd double %44, %55
  %57 = load double*, double** %19, align 8
  %58 = load i32, i32* %25, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = load double*, double** %20, align 8
  %63 = load i32, i32* %26, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fmul double %61, %66
  %68 = fadd double %56, %67
  %69 = load [40 x double]*, [40 x double]** %16, align 8
  %70 = load i32, i32* %25, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [40 x double], [40 x double]* %69, i64 %71
  %73 = load i32, i32* %26, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [40 x double], [40 x double]* %72, i64 0, i64 %74
  store double %68, double* %75, align 8
  br label %76

76:                                               ; preds = %36
  %77 = load i32, i32* %26, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %26, align 4
  br label %32

79:                                               ; preds = %32
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %25, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %25, align 4
  br label %27

83:                                               ; preds = %27
  store i32 0, i32* %25, align 4
  br label %84

84:                                               ; preds = %124, %83
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %127

88:                                               ; preds = %84
  store i32 0, i32* %26, align 4
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %26, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load double*, double** %22, align 8
  %95 = load i32, i32* %25, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = load double, double* %15, align 8
  %100 = load [40 x double]*, [40 x double]** %16, align 8
  %101 = load i32, i32* %26, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [40 x double], [40 x double]* %100, i64 %102
  %104 = load i32, i32* %25, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [40 x double], [40 x double]* %103, i64 0, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fmul double %99, %107
  %109 = load double*, double** %23, align 8
  %110 = load i32, i32* %26, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fmul double %108, %113
  %115 = fadd double %98, %114
  %116 = load double*, double** %22, align 8
  %117 = load i32, i32* %25, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  store double %115, double* %119, align 8
  br label %120

120:                                              ; preds = %93
  %121 = load i32, i32* %26, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %26, align 4
  br label %89

123:                                              ; preds = %89
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %25, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %25, align 4
  br label %84

127:                                              ; preds = %84
  store i32 0, i32* %25, align 4
  br label %128

128:                                              ; preds = %148, %127
  %129 = load i32, i32* %25, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %128
  %133 = load double*, double** %22, align 8
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = load double*, double** %24, align 8
  %139 = load i32, i32* %25, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds double, double* %138, i64 %140
  %142 = load double, double* %141, align 8
  %143 = fadd double %137, %142
  %144 = load double*, double** %22, align 8
  %145 = load i32, i32* %25, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds double, double* %144, i64 %146
  store double %143, double* %147, align 8
  br label %148

148:                                              ; preds = %132
  %149 = load i32, i32* %25, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %25, align 4
  br label %128

151:                                              ; preds = %128
  store i32 0, i32* %25, align 4
  br label %152

152:                                              ; preds = %192, %151
  %153 = load i32, i32* %25, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %195

156:                                              ; preds = %152
  store i32 0, i32* %26, align 4
  br label %157

157:                                              ; preds = %188, %156
  %158 = load i32, i32* %26, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %191

161:                                              ; preds = %157
  %162 = load double*, double** %21, align 8
  %163 = load i32, i32* %25, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = load double, double* %14, align 8
  %168 = load [40 x double]*, [40 x double]** %16, align 8
  %169 = load i32, i32* %25, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [40 x double], [40 x double]* %168, i64 %170
  %172 = load i32, i32* %26, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [40 x double], [40 x double]* %171, i64 0, i64 %173
  %175 = load double, double* %174, align 8
  %176 = fmul double %167, %175
  %177 = load double*, double** %22, align 8
  %178 = load i32, i32* %26, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, double* %177, i64 %179
  %181 = load double, double* %180, align 8
  %182 = fmul double %176, %181
  %183 = fadd double %166, %182
  %184 = load double*, double** %21, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds double, double* %184, i64 %186
  store double %183, double* %187, align 8
  br label %188

188:                                              ; preds = %161
  %189 = load i32, i32* %26, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %26, align 4
  br label %157

191:                                              ; preds = %157
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %25, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %25, align 4
  br label %152

195:                                              ; preds = %152
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
