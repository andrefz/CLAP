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
@.str.2 = private unnamed_addr constant [3 x i8] c"ex\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ey\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"hz\00", align 1
@polybench_papi_counters_threadid = dso_local global i32 0, align 4
@polybench_program_total_flops = dso_local global double 0.000000e+00, align 8
@polybench_t_start = common dso_local global double 0.000000e+00, align 8
@polybench_t_end = common dso_local global double 0.000000e+00, align 8
@polybench_c_start = common dso_local global i64 0, align 8
@polybench_c_end = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.1.10 = private unnamed_addr constant [12 x i8] c"polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@.str.2.11 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_inter_array_padding_sz = internal global i64 0, align 8
@.str.3.14 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [20 x [30 x double]]*, align 8
  %10 = alloca [20 x [30 x double]]*, align 8
  %11 = alloca [20 x [30 x double]]*, align 8
  %12 = alloca [20 x double]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20, i32* %6, align 4
  store i32 20, i32* %7, align 4
  store i32 30, i32* %8, align 4
  %13 = call i8* @polybench_alloc_data(i64 600, i32 8)
  %14 = bitcast i8* %13 to [20 x [30 x double]]*
  store [20 x [30 x double]]* %14, [20 x [30 x double]]** %9, align 8
  %15 = call i8* @polybench_alloc_data(i64 600, i32 8)
  %16 = bitcast i8* %15 to [20 x [30 x double]]*
  store [20 x [30 x double]]* %16, [20 x [30 x double]]** %10, align 8
  %17 = call i8* @polybench_alloc_data(i64 600, i32 8)
  %18 = bitcast i8* %17 to [20 x [30 x double]]*
  store [20 x [30 x double]]* %18, [20 x [30 x double]]** %11, align 8
  %19 = call i8* @polybench_alloc_data(i64 20, i32 8)
  %20 = bitcast i8* %19 to [20 x double]*
  store [20 x double]* %20, [20 x double]** %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load [20 x [30 x double]]*, [20 x [30 x double]]** %9, align 8
  %25 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %24, i64 0, i64 0
  %26 = load [20 x [30 x double]]*, [20 x [30 x double]]** %10, align 8
  %27 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %26, i64 0, i64 0
  %28 = load [20 x [30 x double]]*, [20 x [30 x double]]** %11, align 8
  %29 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %28, i64 0, i64 0
  %30 = load [20 x double]*, [20 x double]** %12, align 8
  %31 = getelementptr inbounds [20 x double], [20 x double]* %30, i64 0, i64 0
  call void @init_array(i32 %21, i32 %22, i32 %23, [30 x double]* %25, [30 x double]* %27, [30 x double]* %29, double* %31)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load [20 x [30 x double]]*, [20 x [30 x double]]** %9, align 8
  %36 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %35, i64 0, i64 0
  %37 = load [20 x [30 x double]]*, [20 x [30 x double]]** %10, align 8
  %38 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %37, i64 0, i64 0
  %39 = load [20 x [30 x double]]*, [20 x [30 x double]]** %11, align 8
  %40 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %39, i64 0, i64 0
  %41 = load [20 x double]*, [20 x double]** %12, align 8
  %42 = getelementptr inbounds [20 x double], [20 x double]* %41, i64 0, i64 0
  call void @kernel_fdtd_2d(i32 %32, i32 %33, i32 %34, [30 x double]* %36, [30 x double]* %38, [30 x double]* %40, double* %42)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load [20 x [30 x double]]*, [20 x [30 x double]]** %9, align 8
  %46 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %45, i64 0, i64 0
  %47 = load [20 x [30 x double]]*, [20 x [30 x double]]** %10, align 8
  %48 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %47, i64 0, i64 0
  %49 = load [20 x [30 x double]]*, [20 x [30 x double]]** %11, align 8
  %50 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %49, i64 0, i64 0
  call void @print_array(i32 %43, i32 %44, [30 x double]* %46, [30 x double]* %48, [30 x double]* %50)
  %51 = load [20 x [30 x double]]*, [20 x [30 x double]]** %9, align 8
  %52 = bitcast [20 x [30 x double]]* %51 to i8*
  call void @free(i8* %52) #4
  %53 = load [20 x [30 x double]]*, [20 x [30 x double]]** %10, align 8
  %54 = bitcast [20 x [30 x double]]* %53 to i8*
  call void @free(i8* %54) #4
  %55 = load [20 x [30 x double]]*, [20 x [30 x double]]** %11, align 8
  %56 = bitcast [20 x [30 x double]]* %55 to i8*
  call void @free(i8* %56) #4
  %57 = load [20 x double]*, [20 x double]** %12, align 8
  %58 = bitcast [20 x double]* %57 to i8*
  call void @free(i8* %58) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, i32 %1, i32 %2, [30 x double]* %3, [30 x double]* %4, [30 x double]* %5, double* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [30 x double]*, align 8
  %12 = alloca [30 x double]*, align 8
  %13 = alloca [30 x double]*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store [30 x double]* %3, [30 x double]** %11, align 8
  store [30 x double]* %4, [30 x double]** %12, align 8
  store [30 x double]* %5, [30 x double]** %13, align 8
  store double* %6, double** %14, align 8
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %28, %7
  %18 = load i32, i32* %15, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* %15, align 4
  %23 = sitofp i32 %22 to double
  %24 = load double*, double** %14, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  store double %23, double* %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  br label %17

31:                                               ; preds = %17
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %94, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %97

36:                                               ; preds = %32
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %90, %36
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = load i32, i32* %15, align 4
  %43 = sitofp i32 %42 to double
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %44, 1
  %46 = sitofp i32 %45 to double
  %47 = fmul double %43, %46
  %48 = load i32, i32* %9, align 4
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %47, %49
  %51 = load [30 x double]*, [30 x double]** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [30 x double], [30 x double]* %51, i64 %53
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [30 x double], [30 x double]* %54, i64 0, i64 %56
  store double %50, double* %57, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sitofp i32 %58 to double
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 2
  %62 = sitofp i32 %61 to double
  %63 = fmul double %59, %62
  %64 = load i32, i32* %10, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %63, %65
  %67 = load [30 x double]*, [30 x double]** %12, align 8
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [30 x double], [30 x double]* %67, i64 %69
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [30 x double], [30 x double]* %70, i64 0, i64 %72
  store double %66, double* %73, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sitofp i32 %74 to double
  %76 = load i32, i32* %16, align 4
  %77 = add nsw i32 %76, 3
  %78 = sitofp i32 %77 to double
  %79 = fmul double %75, %78
  %80 = load i32, i32* %9, align 4
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %79, %81
  %83 = load [30 x double]*, [30 x double]** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [30 x double], [30 x double]* %83, i64 %85
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [30 x double], [30 x double]* %86, i64 0, i64 %88
  store double %82, double* %89, align 8
  br label %90

90:                                               ; preds = %41
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %16, align 4
  br label %37

93:                                               ; preds = %37
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %32

97:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_fdtd_2d(i32 %0, i32 %1, i32 %2, [30 x double]* %3, [30 x double]* %4, [30 x double]* %5, double* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [30 x double]*, align 8
  %12 = alloca [30 x double]*, align 8
  %13 = alloca [30 x double]*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store [30 x double]* %3, [30 x double]** %11, align 8
  store [30 x double]* %4, [30 x double]** %12, align 8
  store [30 x double]* %5, [30 x double]** %13, align 8
  store double* %6, double** %14, align 8
  store i32 0, i32* %15, align 4
  br label %18

18:                                               ; preds = %222, %7
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %225

22:                                               ; preds = %18
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %38, %22
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load double*, double** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load [30 x double]*, [30 x double]** %12, align 8
  %34 = getelementptr inbounds [30 x double], [30 x double]* %33, i64 0
  %35 = load i32, i32* %17, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [30 x double], [30 x double]* %34, i64 0, i64 %36
  store double %32, double* %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %17, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %17, align 4
  br label %23

41:                                               ; preds = %23
  store i32 1, i32* %16, align 4
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %42
  store i32 0, i32* %17, align 4
  br label %47

47:                                               ; preds = %87, %46
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %90

51:                                               ; preds = %47
  %52 = load [30 x double]*, [30 x double]** %12, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [30 x double], [30 x double]* %52, i64 %54
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [30 x double], [30 x double]* %55, i64 0, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load [30 x double]*, [30 x double]** %13, align 8
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [30 x double], [30 x double]* %60, i64 %62
  %64 = load i32, i32* %17, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [30 x double], [30 x double]* %63, i64 0, i64 %65
  %67 = load double, double* %66, align 8
  %68 = load [30 x double]*, [30 x double]** %13, align 8
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [30 x double], [30 x double]* %68, i64 %71
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [30 x double], [30 x double]* %72, i64 0, i64 %74
  %76 = load double, double* %75, align 8
  %77 = fsub double %67, %76
  %78 = fmul double 5.000000e-01, %77
  %79 = fsub double %59, %78
  %80 = load [30 x double]*, [30 x double]** %12, align 8
  %81 = load i32, i32* %16, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [30 x double], [30 x double]* %80, i64 %82
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [30 x double], [30 x double]* %83, i64 0, i64 %85
  store double %79, double* %86, align 8
  br label %87

87:                                               ; preds = %51
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %47

90:                                               ; preds = %47
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %42

94:                                               ; preds = %42
  store i32 0, i32* %16, align 4
  br label %95

95:                                               ; preds = %144, %94
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %147

99:                                               ; preds = %95
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %140, %99
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %143

104:                                              ; preds = %100
  %105 = load [30 x double]*, [30 x double]** %11, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [30 x double], [30 x double]* %105, i64 %107
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [30 x double], [30 x double]* %108, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = load [30 x double]*, [30 x double]** %13, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [30 x double], [30 x double]* %113, i64 %115
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [30 x double], [30 x double]* %116, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load [30 x double]*, [30 x double]** %13, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [30 x double], [30 x double]* %121, i64 %123
  %125 = load i32, i32* %17, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [30 x double], [30 x double]* %124, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fsub double %120, %129
  %131 = fmul double 5.000000e-01, %130
  %132 = fsub double %112, %131
  %133 = load [30 x double]*, [30 x double]** %11, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [30 x double], [30 x double]* %133, i64 %135
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [30 x double], [30 x double]* %136, i64 0, i64 %138
  store double %132, double* %139, align 8
  br label %140

140:                                              ; preds = %104
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %100

143:                                              ; preds = %100
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %16, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %16, align 4
  br label %95

147:                                              ; preds = %95
  store i32 0, i32* %16, align 4
  br label %148

148:                                              ; preds = %218, %147
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %9, align 4
  %151 = sub nsw i32 %150, 1
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %221

153:                                              ; preds = %148
  store i32 0, i32* %17, align 4
  br label %154

154:                                              ; preds = %214, %153
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %10, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %217

159:                                              ; preds = %154
  %160 = load [30 x double]*, [30 x double]** %13, align 8
  %161 = load i32, i32* %16, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [30 x double], [30 x double]* %160, i64 %162
  %164 = load i32, i32* %17, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [30 x double], [30 x double]* %163, i64 0, i64 %165
  %167 = load double, double* %166, align 8
  %168 = load [30 x double]*, [30 x double]** %11, align 8
  %169 = load i32, i32* %16, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [30 x double], [30 x double]* %168, i64 %170
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [30 x double], [30 x double]* %171, i64 0, i64 %174
  %176 = load double, double* %175, align 8
  %177 = load [30 x double]*, [30 x double]** %11, align 8
  %178 = load i32, i32* %16, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [30 x double], [30 x double]* %177, i64 %179
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [30 x double], [30 x double]* %180, i64 0, i64 %182
  %184 = load double, double* %183, align 8
  %185 = fsub double %176, %184
  %186 = load [30 x double]*, [30 x double]** %12, align 8
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [30 x double], [30 x double]* %186, i64 %189
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [30 x double], [30 x double]* %190, i64 0, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fadd double %185, %194
  %196 = load [30 x double]*, [30 x double]** %12, align 8
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [30 x double], [30 x double]* %196, i64 %198
  %200 = load i32, i32* %17, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [30 x double], [30 x double]* %199, i64 0, i64 %201
  %203 = load double, double* %202, align 8
  %204 = fsub double %195, %203
  %205 = fmul double 0x3FE6666666666666, %204
  %206 = fsub double %167, %205
  %207 = load [30 x double]*, [30 x double]** %13, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [30 x double], [30 x double]* %207, i64 %209
  %211 = load i32, i32* %17, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [30 x double], [30 x double]* %210, i64 0, i64 %212
  store double %206, double* %213, align 8
  br label %214

214:                                              ; preds = %159
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %154

217:                                              ; preds = %154
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %16, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %16, align 4
  br label %148

221:                                              ; preds = %148
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  br label %18

225:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %0, i32 %1, [30 x double]* %2, [30 x double]* %3, [30 x double]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x double]*, align 8
  %9 = alloca [30 x double]*, align 8
  %10 = alloca [30 x double]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store [30 x double]* %2, [30 x double]** %8, align 8
  store [30 x double]* %3, [30 x double]** %9, align 8
  store [30 x double]* %4, [30 x double]** %10, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %52, %5
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %48, %21
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %12, align 4
  %31 = add nsw i32 %29, %30
  %32 = srem i32 %31, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load [30 x double]*, [30 x double]** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [30 x double], [30 x double]* %39, i64 %41
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [30 x double], [30 x double]* %42, i64 0, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %46)
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %22

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %62

62:                                               ; preds = %97, %55
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %93, %66
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %96

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %6, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %74, %75
  %77 = srem i32 %76, 20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = load [30 x double]*, [30 x double]** %9, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [30 x double], [30 x double]* %84, i64 %86
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [30 x double], [30 x double]* %87, i64 0, i64 %89
  %91 = load double, double* %90, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %91)
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %67

96:                                               ; preds = %67
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %62

100:                                              ; preds = %62
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %105

105:                                              ; preds = %140, %100
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %143

109:                                              ; preds = %105
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %136, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %110
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %117, %118
  %120 = srem i32 %119, 20
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %114
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %127 = load [30 x double]*, [30 x double]** %10, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [30 x double], [30 x double]* %127, i64 %129
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [30 x double], [30 x double]* %130, i64 0, i64 %132
  %134 = load double, double* %133, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %134)
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %110

139:                                              ; preds = %110
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %105

143:                                              ; preds = %105
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
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
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.10, i64 0, i64 0), i32 123, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #5
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
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.11, i64 0, i64 0), double %3)
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
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3.14, i64 0, i64 0))
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
