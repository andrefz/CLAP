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
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
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
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca [20 x [25 x double]]*, align 8
  %12 = alloca [20 x [30 x double]]*, align 8
  %13 = alloca [30 x [25 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 20, i32* %6, align 4
  store i32 25, i32* %7, align 4
  store i32 30, i32* %8, align 4
  %14 = call i8* @polybench_alloc_data(i64 500, i32 8)
  %15 = bitcast i8* %14 to [20 x [25 x double]]*
  store [20 x [25 x double]]* %15, [20 x [25 x double]]** %11, align 8
  %16 = call i8* @polybench_alloc_data(i64 600, i32 8)
  %17 = bitcast i8* %16 to [20 x [30 x double]]*
  store [20 x [30 x double]]* %17, [20 x [30 x double]]** %12, align 8
  %18 = call i8* @polybench_alloc_data(i64 750, i32 8)
  %19 = bitcast i8* %18 to [30 x [25 x double]]*
  store [30 x [25 x double]]* %19, [30 x [25 x double]]** %13, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load [20 x [25 x double]]*, [20 x [25 x double]]** %11, align 8
  %24 = getelementptr inbounds [20 x [25 x double]], [20 x [25 x double]]* %23, i64 0, i64 0
  %25 = load [20 x [30 x double]]*, [20 x [30 x double]]** %12, align 8
  %26 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %25, i64 0, i64 0
  %27 = load [30 x [25 x double]]*, [30 x [25 x double]]** %13, align 8
  %28 = getelementptr inbounds [30 x [25 x double]], [30 x [25 x double]]* %27, i64 0, i64 0
  call void @init_array(i32 %20, i32 %21, i32 %22, double* %9, double* %10, [25 x double]* %24, [30 x double]* %26, [25 x double]* %28)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load double, double* %9, align 8
  %33 = load double, double* %10, align 8
  %34 = load [20 x [25 x double]]*, [20 x [25 x double]]** %11, align 8
  %35 = getelementptr inbounds [20 x [25 x double]], [20 x [25 x double]]* %34, i64 0, i64 0
  %36 = load [20 x [30 x double]]*, [20 x [30 x double]]** %12, align 8
  %37 = getelementptr inbounds [20 x [30 x double]], [20 x [30 x double]]* %36, i64 0, i64 0
  %38 = load [30 x [25 x double]]*, [30 x [25 x double]]** %13, align 8
  %39 = getelementptr inbounds [30 x [25 x double]], [30 x [25 x double]]* %38, i64 0, i64 0
  call void @kernel_gemm(i32 %29, i32 %30, i32 %31, double %32, double %33, [25 x double]* %35, [30 x double]* %37, [25 x double]* %39)
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load [20 x [25 x double]]*, [20 x [25 x double]]** %11, align 8
  %43 = getelementptr inbounds [20 x [25 x double]], [20 x [25 x double]]* %42, i64 0, i64 0
  call void @print_array(i32 %40, i32 %41, [25 x double]* %43)
  %44 = load [20 x [25 x double]]*, [20 x [25 x double]]** %11, align 8
  %45 = bitcast [20 x [25 x double]]* %44 to i8*
  call void @free(i8* %45) #4
  %46 = load [20 x [30 x double]]*, [20 x [30 x double]]** %12, align 8
  %47 = bitcast [20 x [30 x double]]* %46 to i8*
  call void @free(i8* %47) #4
  %48 = load [30 x [25 x double]]*, [30 x [25 x double]]** %13, align 8
  %49 = bitcast [30 x [25 x double]]* %48 to i8*
  call void @free(i8* %49) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, i32 %1, i32 %2, double* %3, double* %4, [25 x double]* %5, [30 x double]* %6, [25 x double]* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca [25 x double]*, align 8
  %15 = alloca [30 x double]*, align 8
  %16 = alloca [25 x double]*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store double* %3, double** %12, align 8
  store double* %4, double** %13, align 8
  store [25 x double]* %5, [25 x double]** %14, align 8
  store [30 x double]* %6, [30 x double]** %15, align 8
  store [25 x double]* %7, [25 x double]** %16, align 8
  %19 = load double*, double** %12, align 8
  store double 1.500000e+00, double* %19, align 8
  %20 = load double*, double** %13, align 8
  store double 1.200000e+00, double* %20, align 8
  store i32 0, i32* %17, align 4
  br label %21

21:                                               ; preds = %52, %8
  %22 = load i32, i32* %17, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %21
  store i32 0, i32* %18, align 4
  br label %26

26:                                               ; preds = %48, %25
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %9, align 4
  %36 = srem i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %9, align 4
  %39 = sitofp i32 %38 to double
  %40 = fdiv double %37, %39
  %41 = load [25 x double]*, [25 x double]** %14, align 8
  %42 = load i32, i32* %17, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [25 x double], [25 x double]* %41, i64 %43
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [25 x double], [25 x double]* %44, i64 0, i64 %46
  store double %40, double* %47, align 8
  br label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %18, align 4
  br label %26

51:                                               ; preds = %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  br label %21

55:                                               ; preds = %21
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %87, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %90

60:                                               ; preds = %56
  store i32 0, i32* %18, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  %69 = mul nsw i32 %66, %68
  %70 = load i32, i32* %11, align 4
  %71 = srem i32 %69, %70
  %72 = sitofp i32 %71 to double
  %73 = load i32, i32* %11, align 4
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %72, %74
  %76 = load [30 x double]*, [30 x double]** %15, align 8
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [30 x double], [30 x double]* %76, i64 %78
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [30 x double], [30 x double]* %79, i64 0, i64 %81
  store double %75, double* %82, align 8
  br label %83

83:                                               ; preds = %65
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %18, align 4
  br label %61

86:                                               ; preds = %61
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %17, align 4
  br label %56

90:                                               ; preds = %56
  store i32 0, i32* %17, align 4
  br label %91

91:                                               ; preds = %122, %90
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %125

95:                                               ; preds = %91
  store i32 0, i32* %18, align 4
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 2
  %104 = mul nsw i32 %101, %103
  %105 = load i32, i32* %10, align 4
  %106 = srem i32 %104, %105
  %107 = sitofp i32 %106 to double
  %108 = load i32, i32* %10, align 4
  %109 = sitofp i32 %108 to double
  %110 = fdiv double %107, %109
  %111 = load [25 x double]*, [25 x double]** %16, align 8
  %112 = load i32, i32* %17, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [25 x double], [25 x double]* %111, i64 %113
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [25 x double], [25 x double]* %114, i64 0, i64 %116
  store double %110, double* %117, align 8
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %18, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %18, align 4
  br label %96

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %17, align 4
  br label %91

125:                                              ; preds = %91
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_gemm(i32 %0, i32 %1, i32 %2, double %3, double %4, [25 x double]* %5, [30 x double]* %6, [25 x double]* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca [25 x double]*, align 8
  %15 = alloca [30 x double]*, align 8
  %16 = alloca [25 x double]*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store double %3, double* %12, align 8
  store double %4, double* %13, align 8
  store [25 x double]* %5, [25 x double]** %14, align 8
  store [30 x double]* %6, [30 x double]** %15, align 8
  store [25 x double]* %7, [25 x double]** %16, align 8
  store i32 0, i32* %17, align 4
  br label %20

20:                                               ; preds = %90, %8
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %93

24:                                               ; preds = %20
  store i32 0, i32* %18, align 4
  br label %25

25:                                               ; preds = %40, %24
  %26 = load i32, i32* %18, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load double, double* %13, align 8
  %31 = load [25 x double]*, [25 x double]** %14, align 8
  %32 = load i32, i32* %17, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [25 x double], [25 x double]* %31, i64 %33
  %35 = load i32, i32* %18, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [25 x double], [25 x double]* %34, i64 0, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, %30
  store double %39, double* %37, align 8
  br label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  br label %25

43:                                               ; preds = %25
  store i32 0, i32* %19, align 4
  br label %44

44:                                               ; preds = %86, %43
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  store i32 0, i32* %18, align 4
  br label %49

49:                                               ; preds = %82, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %49
  %54 = load double, double* %12, align 8
  %55 = load [30 x double]*, [30 x double]** %15, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [30 x double], [30 x double]* %55, i64 %57
  %59 = load i32, i32* %19, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [30 x double], [30 x double]* %58, i64 0, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fmul double %54, %62
  %64 = load [25 x double]*, [25 x double]** %16, align 8
  %65 = load i32, i32* %19, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [25 x double], [25 x double]* %64, i64 %66
  %68 = load i32, i32* %18, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [25 x double], [25 x double]* %67, i64 0, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fmul double %63, %71
  %73 = load [25 x double]*, [25 x double]** %14, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [25 x double], [25 x double]* %73, i64 %75
  %77 = load i32, i32* %18, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [25 x double], [25 x double]* %76, i64 0, i64 %78
  %80 = load double, double* %79, align 8
  %81 = fadd double %80, %72
  store double %81, double* %79, align 8
  br label %82

82:                                               ; preds = %53
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  br label %49

85:                                               ; preds = %49
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %44

89:                                               ; preds = %44
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %17, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %20

93:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %0, i32 %1, [25 x double]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [25 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [25 x double]* %2, [25 x double]** %6, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %48, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %47

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
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
  %35 = load [25 x double]*, [25 x double]** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [25 x double], [25 x double]* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [25 x double], [25 x double]* %38, i64 0, i64 %40
  %42 = load double, double* %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %18

47:                                               ; preds = %18
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %13

51:                                               ; preds = %13
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
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
