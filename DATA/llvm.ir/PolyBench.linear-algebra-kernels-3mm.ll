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
@.str.2 = private unnamed_addr constant [2 x i8] c"G\00", align 1
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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [16 x [18 x double]]*, align 8
  %12 = alloca [16 x [20 x double]]*, align 8
  %13 = alloca [20 x [18 x double]]*, align 8
  %14 = alloca [18 x [22 x double]]*, align 8
  %15 = alloca [18 x [24 x double]]*, align 8
  %16 = alloca [24 x [22 x double]]*, align 8
  %17 = alloca [16 x [22 x double]]*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 16, i32* %6, align 4
  store i32 18, i32* %7, align 4
  store i32 20, i32* %8, align 4
  store i32 22, i32* %9, align 4
  store i32 24, i32* %10, align 4
  %18 = call i8* @polybench_alloc_data(i64 288, i32 8)
  %19 = bitcast i8* %18 to [16 x [18 x double]]*
  store [16 x [18 x double]]* %19, [16 x [18 x double]]** %11, align 8
  %20 = call i8* @polybench_alloc_data(i64 320, i32 8)
  %21 = bitcast i8* %20 to [16 x [20 x double]]*
  store [16 x [20 x double]]* %21, [16 x [20 x double]]** %12, align 8
  %22 = call i8* @polybench_alloc_data(i64 360, i32 8)
  %23 = bitcast i8* %22 to [20 x [18 x double]]*
  store [20 x [18 x double]]* %23, [20 x [18 x double]]** %13, align 8
  %24 = call i8* @polybench_alloc_data(i64 396, i32 8)
  %25 = bitcast i8* %24 to [18 x [22 x double]]*
  store [18 x [22 x double]]* %25, [18 x [22 x double]]** %14, align 8
  %26 = call i8* @polybench_alloc_data(i64 432, i32 8)
  %27 = bitcast i8* %26 to [18 x [24 x double]]*
  store [18 x [24 x double]]* %27, [18 x [24 x double]]** %15, align 8
  %28 = call i8* @polybench_alloc_data(i64 528, i32 8)
  %29 = bitcast i8* %28 to [24 x [22 x double]]*
  store [24 x [22 x double]]* %29, [24 x [22 x double]]** %16, align 8
  %30 = call i8* @polybench_alloc_data(i64 352, i32 8)
  %31 = bitcast i8* %30 to [16 x [22 x double]]*
  store [16 x [22 x double]]* %31, [16 x [22 x double]]** %17, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load [16 x [20 x double]]*, [16 x [20 x double]]** %12, align 8
  %38 = getelementptr inbounds [16 x [20 x double]], [16 x [20 x double]]* %37, i64 0, i64 0
  %39 = load [20 x [18 x double]]*, [20 x [18 x double]]** %13, align 8
  %40 = getelementptr inbounds [20 x [18 x double]], [20 x [18 x double]]* %39, i64 0, i64 0
  %41 = load [18 x [24 x double]]*, [18 x [24 x double]]** %15, align 8
  %42 = getelementptr inbounds [18 x [24 x double]], [18 x [24 x double]]* %41, i64 0, i64 0
  %43 = load [24 x [22 x double]]*, [24 x [22 x double]]** %16, align 8
  %44 = getelementptr inbounds [24 x [22 x double]], [24 x [22 x double]]* %43, i64 0, i64 0
  call void @init_array(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, [20 x double]* %38, [18 x double]* %40, [24 x double]* %42, [22 x double]* %44)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load [16 x [18 x double]]*, [16 x [18 x double]]** %11, align 8
  %51 = getelementptr inbounds [16 x [18 x double]], [16 x [18 x double]]* %50, i64 0, i64 0
  %52 = load [16 x [20 x double]]*, [16 x [20 x double]]** %12, align 8
  %53 = getelementptr inbounds [16 x [20 x double]], [16 x [20 x double]]* %52, i64 0, i64 0
  %54 = load [20 x [18 x double]]*, [20 x [18 x double]]** %13, align 8
  %55 = getelementptr inbounds [20 x [18 x double]], [20 x [18 x double]]* %54, i64 0, i64 0
  %56 = load [18 x [22 x double]]*, [18 x [22 x double]]** %14, align 8
  %57 = getelementptr inbounds [18 x [22 x double]], [18 x [22 x double]]* %56, i64 0, i64 0
  %58 = load [18 x [24 x double]]*, [18 x [24 x double]]** %15, align 8
  %59 = getelementptr inbounds [18 x [24 x double]], [18 x [24 x double]]* %58, i64 0, i64 0
  %60 = load [24 x [22 x double]]*, [24 x [22 x double]]** %16, align 8
  %61 = getelementptr inbounds [24 x [22 x double]], [24 x [22 x double]]* %60, i64 0, i64 0
  %62 = load [16 x [22 x double]]*, [16 x [22 x double]]** %17, align 8
  %63 = getelementptr inbounds [16 x [22 x double]], [16 x [22 x double]]* %62, i64 0, i64 0
  call void @kernel_3mm(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, [18 x double]* %51, [20 x double]* %53, [18 x double]* %55, [22 x double]* %57, [24 x double]* %59, [22 x double]* %61, [22 x double]* %63)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load [16 x [22 x double]]*, [16 x [22 x double]]** %17, align 8
  %67 = getelementptr inbounds [16 x [22 x double]], [16 x [22 x double]]* %66, i64 0, i64 0
  call void @print_array(i32 %64, i32 %65, [22 x double]* %67)
  %68 = load [16 x [18 x double]]*, [16 x [18 x double]]** %11, align 8
  %69 = bitcast [16 x [18 x double]]* %68 to i8*
  call void @free(i8* %69) #4
  %70 = load [16 x [20 x double]]*, [16 x [20 x double]]** %12, align 8
  %71 = bitcast [16 x [20 x double]]* %70 to i8*
  call void @free(i8* %71) #4
  %72 = load [20 x [18 x double]]*, [20 x [18 x double]]** %13, align 8
  %73 = bitcast [20 x [18 x double]]* %72 to i8*
  call void @free(i8* %73) #4
  %74 = load [18 x [22 x double]]*, [18 x [22 x double]]** %14, align 8
  %75 = bitcast [18 x [22 x double]]* %74 to i8*
  call void @free(i8* %75) #4
  %76 = load [18 x [24 x double]]*, [18 x [24 x double]]** %15, align 8
  %77 = bitcast [18 x [24 x double]]* %76 to i8*
  call void @free(i8* %77) #4
  %78 = load [24 x [22 x double]]*, [24 x [22 x double]]** %16, align 8
  %79 = bitcast [24 x [22 x double]]* %78 to i8*
  call void @free(i8* %79) #4
  %80 = load [16 x [22 x double]]*, [16 x [22 x double]]** %17, align 8
  %81 = bitcast [16 x [22 x double]]* %80 to i8*
  call void @free(i8* %81) #4
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_array(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, [20 x double]* %5, [18 x double]* %6, [24 x double]* %7, [22 x double]* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [20 x double]*, align 8
  %16 = alloca [18 x double]*, align 8
  %17 = alloca [24 x double]*, align 8
  %18 = alloca [22 x double]*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store [20 x double]* %5, [20 x double]** %15, align 8
  store [18 x double]* %6, [18 x double]** %16, align 8
  store [24 x double]* %7, [24 x double]** %17, align 8
  store [22 x double]* %8, [22 x double]** %18, align 8
  store i32 0, i32* %19, align 4
  br label %21

21:                                               ; preds = %53, %9
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  store i32 0, i32* %20, align 4
  br label %26

26:                                               ; preds = %49, %25
  %27 = load i32, i32* %20, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %20, align 4
  %33 = mul nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* %10, align 4
  %36 = srem i32 %34, %35
  %37 = sitofp i32 %36 to double
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 5, %38
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %37, %40
  %42 = load [20 x double]*, [20 x double]** %15, align 8
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [20 x double], [20 x double]* %42, i64 %44
  %46 = load i32, i32* %20, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [20 x double], [20 x double]* %45, i64 0, i64 %47
  store double %41, double* %48, align 8
  br label %49

49:                                               ; preds = %30
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %20, align 4
  br label %26

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %19, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %19, align 4
  br label %21

56:                                               ; preds = %21
  store i32 0, i32* %19, align 4
  br label %57

57:                                               ; preds = %90, %56
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %57
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %86, %61
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %67, %69
  %71 = add nsw i32 %70, 2
  %72 = load i32, i32* %11, align 4
  %73 = srem i32 %71, %72
  %74 = sitofp i32 %73 to double
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 5, %75
  %77 = sitofp i32 %76 to double
  %78 = fdiv double %74, %77
  %79 = load [18 x double]*, [18 x double]** %16, align 8
  %80 = load i32, i32* %19, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [18 x double], [18 x double]* %79, i64 %81
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [18 x double], [18 x double]* %82, i64 0, i64 %84
  store double %78, double* %85, align 8
  br label %86

86:                                               ; preds = %66
  %87 = load i32, i32* %20, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %20, align 4
  br label %62

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %57

93:                                               ; preds = %57
  store i32 0, i32* %19, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  store i32 0, i32* %20, align 4
  br label %99

99:                                               ; preds = %122, %98
  %100 = load i32, i32* %20, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32, i32* %19, align 4
  %105 = load i32, i32* %20, align 4
  %106 = add nsw i32 %105, 3
  %107 = mul nsw i32 %104, %106
  %108 = load i32, i32* %13, align 4
  %109 = srem i32 %107, %108
  %110 = sitofp i32 %109 to double
  %111 = load i32, i32* %13, align 4
  %112 = mul nsw i32 5, %111
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %110, %113
  %115 = load [24 x double]*, [24 x double]** %17, align 8
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [24 x double], [24 x double]* %115, i64 %117
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [24 x double], [24 x double]* %118, i64 0, i64 %120
  store double %114, double* %121, align 8
  br label %122

122:                                              ; preds = %103
  %123 = load i32, i32* %20, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %20, align 4
  br label %99

125:                                              ; preds = %99
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %94

129:                                              ; preds = %94
  store i32 0, i32* %19, align 4
  br label %130

130:                                              ; preds = %163, %129
  %131 = load i32, i32* %19, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %130
  store i32 0, i32* %20, align 4
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %162

139:                                              ; preds = %135
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, 2
  %143 = mul nsw i32 %140, %142
  %144 = add nsw i32 %143, 2
  %145 = load i32, i32* %12, align 4
  %146 = srem i32 %144, %145
  %147 = sitofp i32 %146 to double
  %148 = load i32, i32* %12, align 4
  %149 = mul nsw i32 5, %148
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %147, %150
  %152 = load [22 x double]*, [22 x double]** %18, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [22 x double], [22 x double]* %152, i64 %154
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [22 x double], [22 x double]* %155, i64 0, i64 %157
  store double %151, double* %158, align 8
  br label %159

159:                                              ; preds = %139
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %20, align 4
  br label %135

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %19, align 4
  br label %130

166:                                              ; preds = %130
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kernel_3mm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, [18 x double]* %5, [20 x double]* %6, [18 x double]* %7, [22 x double]* %8, [24 x double]* %9, [22 x double]* %10, [22 x double]* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [18 x double]*, align 8
  %19 = alloca [20 x double]*, align 8
  %20 = alloca [18 x double]*, align 8
  %21 = alloca [22 x double]*, align 8
  %22 = alloca [24 x double]*, align 8
  %23 = alloca [22 x double]*, align 8
  %24 = alloca [22 x double]*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store [18 x double]* %5, [18 x double]** %18, align 8
  store [20 x double]* %6, [20 x double]** %19, align 8
  store [18 x double]* %7, [18 x double]** %20, align 8
  store [22 x double]* %8, [22 x double]** %21, align 8
  store [24 x double]* %9, [24 x double]** %22, align 8
  store [22 x double]* %10, [22 x double]** %23, align 8
  store [22 x double]* %11, [22 x double]** %24, align 8
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %84, %12
  %29 = load i32, i32* %25, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  store i32 0, i32* %26, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, i32* %26, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  %38 = load [18 x double]*, [18 x double]** %18, align 8
  %39 = load i32, i32* %25, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [18 x double], [18 x double]* %38, i64 %40
  %42 = load i32, i32* %26, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x double], [18 x double]* %41, i64 0, i64 %43
  store double 0.000000e+00, double* %44, align 8
  store i32 0, i32* %27, align 4
  br label %45

45:                                               ; preds = %76, %37
  %46 = load i32, i32* %27, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %45
  %50 = load [20 x double]*, [20 x double]** %19, align 8
  %51 = load i32, i32* %25, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [20 x double], [20 x double]* %50, i64 %52
  %54 = load i32, i32* %27, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [20 x double], [20 x double]* %53, i64 0, i64 %55
  %57 = load double, double* %56, align 8
  %58 = load [18 x double]*, [18 x double]** %20, align 8
  %59 = load i32, i32* %27, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [18 x double], [18 x double]* %58, i64 %60
  %62 = load i32, i32* %26, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [18 x double], [18 x double]* %61, i64 0, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fmul double %57, %65
  %67 = load [18 x double]*, [18 x double]** %18, align 8
  %68 = load i32, i32* %25, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [18 x double], [18 x double]* %67, i64 %69
  %71 = load i32, i32* %26, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [18 x double], [18 x double]* %70, i64 0, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fadd double %74, %66
  store double %75, double* %73, align 8
  br label %76

76:                                               ; preds = %49
  %77 = load i32, i32* %27, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %27, align 4
  br label %45

79:                                               ; preds = %45
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %26, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %26, align 4
  br label %33

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %25, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %25, align 4
  br label %28

87:                                               ; preds = %28
  store i32 0, i32* %25, align 4
  br label %88

88:                                               ; preds = %144, %87
  %89 = load i32, i32* %25, align 4
  %90 = load i32, i32* %14, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %147

92:                                               ; preds = %88
  store i32 0, i32* %26, align 4
  br label %93

93:                                               ; preds = %140, %92
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %143

97:                                               ; preds = %93
  %98 = load [22 x double]*, [22 x double]** %21, align 8
  %99 = load i32, i32* %25, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [22 x double], [22 x double]* %98, i64 %100
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [22 x double], [22 x double]* %101, i64 0, i64 %103
  store double 0.000000e+00, double* %104, align 8
  store i32 0, i32* %27, align 4
  br label %105

105:                                              ; preds = %136, %97
  %106 = load i32, i32* %27, align 4
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %139

109:                                              ; preds = %105
  %110 = load [24 x double]*, [24 x double]** %22, align 8
  %111 = load i32, i32* %25, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [24 x double], [24 x double]* %110, i64 %112
  %114 = load i32, i32* %27, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [24 x double], [24 x double]* %113, i64 0, i64 %115
  %117 = load double, double* %116, align 8
  %118 = load [22 x double]*, [22 x double]** %23, align 8
  %119 = load i32, i32* %27, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [22 x double], [22 x double]* %118, i64 %120
  %122 = load i32, i32* %26, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [22 x double], [22 x double]* %121, i64 0, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fmul double %117, %125
  %127 = load [22 x double]*, [22 x double]** %21, align 8
  %128 = load i32, i32* %25, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [22 x double], [22 x double]* %127, i64 %129
  %131 = load i32, i32* %26, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [22 x double], [22 x double]* %130, i64 0, i64 %132
  %134 = load double, double* %133, align 8
  %135 = fadd double %134, %126
  store double %135, double* %133, align 8
  br label %136

136:                                              ; preds = %109
  %137 = load i32, i32* %27, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %27, align 4
  br label %105

139:                                              ; preds = %105
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %26, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %26, align 4
  br label %93

143:                                              ; preds = %93
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %25, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %25, align 4
  br label %88

147:                                              ; preds = %88
  store i32 0, i32* %25, align 4
  br label %148

148:                                              ; preds = %204, %147
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %207

152:                                              ; preds = %148
  store i32 0, i32* %26, align 4
  br label %153

153:                                              ; preds = %200, %152
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %203

157:                                              ; preds = %153
  %158 = load [22 x double]*, [22 x double]** %24, align 8
  %159 = load i32, i32* %25, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [22 x double], [22 x double]* %158, i64 %160
  %162 = load i32, i32* %26, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [22 x double], [22 x double]* %161, i64 0, i64 %163
  store double 0.000000e+00, double* %164, align 8
  store i32 0, i32* %27, align 4
  br label %165

165:                                              ; preds = %196, %157
  %166 = load i32, i32* %27, align 4
  %167 = load i32, i32* %14, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %199

169:                                              ; preds = %165
  %170 = load [18 x double]*, [18 x double]** %18, align 8
  %171 = load i32, i32* %25, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [18 x double], [18 x double]* %170, i64 %172
  %174 = load i32, i32* %27, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [18 x double], [18 x double]* %173, i64 0, i64 %175
  %177 = load double, double* %176, align 8
  %178 = load [22 x double]*, [22 x double]** %21, align 8
  %179 = load i32, i32* %27, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [22 x double], [22 x double]* %178, i64 %180
  %182 = load i32, i32* %26, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [22 x double], [22 x double]* %181, i64 0, i64 %183
  %185 = load double, double* %184, align 8
  %186 = fmul double %177, %185
  %187 = load [22 x double]*, [22 x double]** %24, align 8
  %188 = load i32, i32* %25, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [22 x double], [22 x double]* %187, i64 %189
  %191 = load i32, i32* %26, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [22 x double], [22 x double]* %190, i64 0, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fadd double %194, %186
  store double %195, double* %193, align 8
  br label %196

196:                                              ; preds = %169
  %197 = load i32, i32* %27, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %27, align 4
  br label %165

199:                                              ; preds = %165
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %26, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %26, align 4
  br label %153

203:                                              ; preds = %153
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %25, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %25, align 4
  br label %148

207:                                              ; preds = %148
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_array(i32 %0, i32 %1, [22 x double]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [22 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [22 x double]* %2, [22 x double]** %6, align 8
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
  %35 = load [22 x double]*, [22 x double]** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [22 x double], [22 x double]* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [22 x double], [22 x double]* %38, i64 0, i64 %40
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
