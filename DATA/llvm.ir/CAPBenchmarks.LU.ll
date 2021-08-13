; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.problem = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.matrix = type { i32, i32, float* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [24 x i8] c"cannot factorize matrix\00", align 1
@verbose = dso_local global i32 0, align 4
@nthreads = dso_local global i32 1, align 4
@seed = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@p = internal global %struct.problem* @tiny, align 8
@.str.1.2 = private unnamed_addr constant [16 x i8] c"factorizing...\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"timing statistics:\0A\00", align 1
@tiny = internal global %struct.problem { i32 512, i32 512 }, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@small = internal global %struct.problem { i32 1024, i32 1024 }, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@standard = internal global %struct.problem { i32 1536, i32 1536 }, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@large = internal global %struct.problem { i32 2048, i32 2048 }, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@huge = internal global %struct.problem { i32 2560, i32 2560 }, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"--nthreads\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"--class\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Usage: lu [options]\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Brief: Lower Upper Factorization Benchmark Kernel\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"  --help             Display this information and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"  --class <name>     Set problem class:\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"                       - tiny\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"                       - small\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"                       - standard\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"                       - large\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"                       - huge\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"  --verbose          Be verbose\0A\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.1.23 = private unnamed_addr constant [9 x i8] c"matrix.c\00", align 1
@__PRETTY_FUNCTION__.matrix_create = private unnamed_addr constant [33 x i8] c"matrix_t matrix_create(int, int)\00", align 1
@.str.2.24 = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.3.27 = private unnamed_addr constant [10 x i8] c"m != NULL\00", align 1
@__PRETTY_FUNCTION__.matrix_destroy = private unnamed_addr constant [37 x i8] c"void matrix_destroy(struct matrix *)\00", align 1
@__PRETTY_FUNCTION__.matrix_random = private unnamed_addr constant [36 x i8] c"void matrix_random(struct matrix *)\00", align 1
@timer_error = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.34 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [13 x i8] c"warning: %s\0A\00", align 1
@.str.2.40 = private unnamed_addr constant [16 x i8] c"cannot malloc()\00", align 1
@.str.3.43 = private unnamed_addr constant [16 x i8] c"cannot calloc()\00", align 1
@.str.4.44 = private unnamed_addr constant [17 x i8] c"cannot realloc()\00", align 1
@randum_w = internal global i32 521288629, align 4
@randum_z = internal global i32 362436069, align 4
@normalnum.call = internal global i32 0, align 4
@normalnum.X2 = internal global double 0.000000e+00, align 8
@normalnum.X1 = internal global double 0.000000e+00, align 8
@prngseed = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lower_upper(%struct.matrix* %0, %struct.matrix* %1, %struct.matrix* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.matrix*, align 8
  %6 = alloca %struct.matrix*, align 8
  %7 = alloca %struct.matrix*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.matrix* %0, %struct.matrix** %5, align 8
  store %struct.matrix* %1, %struct.matrix** %6, align 8
  store %struct.matrix* %2, %struct.matrix** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %31, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.matrix*, %struct.matrix** %5, align 8
  %14 = getelementptr inbounds %struct.matrix, %struct.matrix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load %struct.matrix*, %struct.matrix** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call float @_find_pivot(%struct.matrix* %19, i32 %20, i32 %21)
  store float %22, float* %10, align 4
  %23 = load float, float* %10, align 4
  %24 = fpext float %23 to double
  %25 = fcmp oeq double %24, 0.000000e+00
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  call void @warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %167

27:                                               ; preds = %18
  %28 = load %struct.matrix*, %struct.matrix** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load float, float* %10, align 4
  call void @_row_reduction(%struct.matrix* %28, i32 %29, float %30)
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %11

34:                                               ; preds = %11
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %163, %34
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.matrix*, %struct.matrix** %5, align 8
  %38 = getelementptr inbounds %struct.matrix, %struct.matrix* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %166

41:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %159, %41
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.matrix*, %struct.matrix** %5, align 8
  %45 = getelementptr inbounds %struct.matrix, %struct.matrix* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %162

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load %struct.matrix*, %struct.matrix** %6, align 8
  %54 = getelementptr inbounds %struct.matrix, %struct.matrix* %53, i32 0, i32 2
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.matrix*, %struct.matrix** %6, align 8
  %58 = getelementptr inbounds %struct.matrix, %struct.matrix* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %56, %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %55, i64 %63
  store float 0.000000e+00, float* %64, align 4
  %65 = load %struct.matrix*, %struct.matrix** %5, align 8
  %66 = getelementptr inbounds %struct.matrix, %struct.matrix* %65, i32 0, i32 2
  %67 = load float*, float** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.matrix*, %struct.matrix** %5, align 8
  %70 = getelementptr inbounds %struct.matrix, %struct.matrix* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %67, i64 %75
  %77 = load float, float* %76, align 4
  %78 = load %struct.matrix*, %struct.matrix** %7, align 8
  %79 = getelementptr inbounds %struct.matrix, %struct.matrix* %78, i32 0, i32 2
  %80 = load float*, float** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.matrix*, %struct.matrix** %7, align 8
  %83 = getelementptr inbounds %struct.matrix, %struct.matrix* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %80, i64 %88
  store float %77, float* %89, align 4
  br label %158

90:                                               ; preds = %48
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %132

94:                                               ; preds = %90
  %95 = load %struct.matrix*, %struct.matrix** %5, align 8
  %96 = getelementptr inbounds %struct.matrix, %struct.matrix* %95, i32 0, i32 2
  %97 = load float*, float** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.matrix*, %struct.matrix** %5, align 8
  %100 = getelementptr inbounds %struct.matrix, %struct.matrix* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %98, %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %97, i64 %105
  %107 = load float, float* %106, align 4
  %108 = load %struct.matrix*, %struct.matrix** %6, align 8
  %109 = getelementptr inbounds %struct.matrix, %struct.matrix* %108, i32 0, i32 2
  %110 = load float*, float** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.matrix*, %struct.matrix** %6, align 8
  %113 = getelementptr inbounds %struct.matrix, %struct.matrix* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = mul nsw i32 %111, %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %115, %116
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %110, i64 %118
  store float %107, float* %119, align 4
  %120 = load %struct.matrix*, %struct.matrix** %7, align 8
  %121 = getelementptr inbounds %struct.matrix, %struct.matrix* %120, i32 0, i32 2
  %122 = load float*, float** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.matrix*, %struct.matrix** %7, align 8
  %125 = getelementptr inbounds %struct.matrix, %struct.matrix* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %122, i64 %130
  store float 0.000000e+00, float* %131, align 4
  br label %157

132:                                              ; preds = %90
  %133 = load %struct.matrix*, %struct.matrix** %6, align 8
  %134 = getelementptr inbounds %struct.matrix, %struct.matrix* %133, i32 0, i32 2
  %135 = load float*, float** %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.matrix*, %struct.matrix** %6, align 8
  %138 = getelementptr inbounds %struct.matrix, %struct.matrix* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = mul nsw i32 %136, %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %135, i64 %143
  store float 1.000000e+00, float* %144, align 4
  %145 = load %struct.matrix*, %struct.matrix** %7, align 8
  %146 = getelementptr inbounds %struct.matrix, %struct.matrix* %145, i32 0, i32 2
  %147 = load float*, float** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.matrix*, %struct.matrix** %7, align 8
  %150 = getelementptr inbounds %struct.matrix, %struct.matrix* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %148, %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %147, i64 %155
  store float 1.000000e+00, float* %156, align 4
  br label %157

157:                                              ; preds = %132, %94
  br label %158

158:                                              ; preds = %157, %52
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %42

162:                                              ; preds = %42
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %35

166:                                              ; preds = %35
  store i32 0, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %26
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

; Function Attrs: noinline nounwind uwtable
define internal float @_find_pivot(%struct.matrix* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.matrix* %0, %struct.matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %72, %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.matrix*, %struct.matrix** %4, align 8
  %21 = getelementptr inbounds %struct.matrix, %struct.matrix* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %68, %24
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.matrix*, %struct.matrix** %4, align 8
  %29 = getelementptr inbounds %struct.matrix, %struct.matrix* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = load %struct.matrix*, %struct.matrix** %4, align 8
  %34 = getelementptr inbounds %struct.matrix, %struct.matrix* %33, i32 0, i32 2
  %35 = load float*, float** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.matrix*, %struct.matrix** %4, align 8
  %38 = getelementptr inbounds %struct.matrix, %struct.matrix* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds float, float* %35, i64 %43
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = call double @llvm.fabs.f64(double %46)
  %48 = load %struct.matrix*, %struct.matrix** %4, align 8
  %49 = getelementptr inbounds %struct.matrix, %struct.matrix* %48, i32 0, i32 2
  %50 = load float*, float** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.matrix*, %struct.matrix** %4, align 8
  %53 = getelementptr inbounds %struct.matrix, %struct.matrix* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %51, %54
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %50, i64 %58
  %60 = load float, float* %59, align 4
  %61 = fpext float %60 to double
  %62 = call double @llvm.fabs.f64(double %61)
  %63 = fcmp olt double %47, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %32
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %64, %32
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %26

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load %struct.matrix*, %struct.matrix** %4, align 8
  %77 = getelementptr inbounds %struct.matrix, %struct.matrix* %76, i32 0, i32 2
  %78 = load float*, float** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.matrix*, %struct.matrix** %4, align 8
  %81 = getelementptr inbounds %struct.matrix, %struct.matrix* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %79, %82
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %78, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fpext float %88 to double
  %90 = load %struct.matrix*, %struct.matrix** %4, align 8
  %91 = getelementptr inbounds %struct.matrix, %struct.matrix* %90, i32 0, i32 2
  %92 = load float*, float** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.matrix*, %struct.matrix** %4, align 8
  %95 = getelementptr inbounds %struct.matrix, %struct.matrix* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %92, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = call double @llvm.fabs.f64(double %103)
  %105 = fcmp ogt double %89, %104
  %106 = zext i1 %105 to i32
  %107 = sitofp i32 %106 to double
  %108 = call double @llvm.fabs.f64(double %107)
  %109 = fcmp une double %108, 0.000000e+00
  br i1 %109, label %110, label %113

110:                                              ; preds = %75
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %75
  %114 = load %struct.matrix*, %struct.matrix** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* %9, align 4
  call void @_swap_rows(%struct.matrix* %114, i32 %115, i32 %116)
  %117 = load %struct.matrix*, %struct.matrix** %4, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %10, align 4
  call void @_swap_columns(%struct.matrix* %117, i32 %118, i32 %119)
  %120 = load %struct.matrix*, %struct.matrix** %4, align 8
  %121 = getelementptr inbounds %struct.matrix, %struct.matrix* %120, i32 0, i32 2
  %122 = load float*, float** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.matrix*, %struct.matrix** %4, align 8
  %125 = getelementptr inbounds %struct.matrix, %struct.matrix* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %123, %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %127, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float, float* %122, i64 %130
  %132 = load float, float* %131, align 4
  ret float %132
}

; Function Attrs: noinline nounwind uwtable
define internal void @_row_reduction(%struct.matrix* %0, i32 %1, float %2) #0 {
  %4 = alloca %struct.matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.matrix* %0, %struct.matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %103, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.matrix*, %struct.matrix** %4, align 8
  %17 = getelementptr inbounds %struct.matrix, %struct.matrix* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %14
  %21 = load %struct.matrix*, %struct.matrix** %4, align 8
  %22 = getelementptr inbounds %struct.matrix, %struct.matrix* %21, i32 0, i32 2
  %23 = load float*, float** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.matrix*, %struct.matrix** %4, align 8
  %26 = getelementptr inbounds %struct.matrix, %struct.matrix* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds float, float* %23, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load float, float* %6, align 4
  %35 = fdiv float %33, %34
  store float %35, float* %10, align 4
  %36 = load float, float* %10, align 4
  %37 = load %struct.matrix*, %struct.matrix** %4, align 8
  %38 = getelementptr inbounds %struct.matrix, %struct.matrix* %37, i32 0, i32 2
  %39 = load float*, float** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.matrix*, %struct.matrix** %4, align 8
  %42 = getelementptr inbounds %struct.matrix, %struct.matrix* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %39, i64 %47
  store float %36, float* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %99, %20
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.matrix*, %struct.matrix** %4, align 8
  %54 = getelementptr inbounds %struct.matrix, %struct.matrix* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %102

57:                                               ; preds = %51
  %58 = load %struct.matrix*, %struct.matrix** %4, align 8
  %59 = getelementptr inbounds %struct.matrix, %struct.matrix* %58, i32 0, i32 2
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.matrix*, %struct.matrix** %4, align 8
  %63 = getelementptr inbounds %struct.matrix, %struct.matrix* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %61, %64
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %60, i64 %68
  %70 = load float, float* %69, align 4
  %71 = load float, float* %10, align 4
  %72 = load %struct.matrix*, %struct.matrix** %4, align 8
  %73 = getelementptr inbounds %struct.matrix, %struct.matrix* %72, i32 0, i32 2
  %74 = load float*, float** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.matrix*, %struct.matrix** %4, align 8
  %77 = getelementptr inbounds %struct.matrix, %struct.matrix* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds float, float* %74, i64 %82
  %84 = load float, float* %83, align 4
  %85 = fmul float %71, %84
  %86 = fsub float %70, %85
  %87 = load %struct.matrix*, %struct.matrix** %4, align 8
  %88 = getelementptr inbounds %struct.matrix, %struct.matrix* %87, i32 0, i32 2
  %89 = load float*, float** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.matrix*, %struct.matrix** %4, align 8
  %92 = getelementptr inbounds %struct.matrix, %struct.matrix* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %89, i64 %97
  store float %86, float* %98, align 4
  br label %99

99:                                               ; preds = %57
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %9, align 4
  br label %51

102:                                              ; preds = %51
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %14

106:                                              ; preds = %14
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define internal void @_swap_rows(%struct.matrix* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.matrix* %0, %struct.matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %67, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.matrix*, %struct.matrix** %4, align 8
  %12 = getelementptr inbounds %struct.matrix, %struct.matrix* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %9
  %16 = load %struct.matrix*, %struct.matrix** %4, align 8
  %17 = getelementptr inbounds %struct.matrix, %struct.matrix* %16, i32 0, i32 2
  %18 = load float*, float** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.matrix*, %struct.matrix** %4, align 8
  %21 = getelementptr inbounds %struct.matrix, %struct.matrix* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %18, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %8, align 4
  %29 = load %struct.matrix*, %struct.matrix** %4, align 8
  %30 = getelementptr inbounds %struct.matrix, %struct.matrix* %29, i32 0, i32 2
  %31 = load float*, float** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.matrix*, %struct.matrix** %4, align 8
  %34 = getelementptr inbounds %struct.matrix, %struct.matrix* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %31, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load %struct.matrix*, %struct.matrix** %4, align 8
  %43 = getelementptr inbounds %struct.matrix, %struct.matrix* %42, i32 0, i32 2
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.matrix*, %struct.matrix** %4, align 8
  %47 = getelementptr inbounds %struct.matrix, %struct.matrix* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %44, i64 %52
  store float %41, float* %53, align 4
  %54 = load float, float* %8, align 4
  %55 = load %struct.matrix*, %struct.matrix** %4, align 8
  %56 = getelementptr inbounds %struct.matrix, %struct.matrix* %55, i32 0, i32 2
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.matrix*, %struct.matrix** %4, align 8
  %60 = getelementptr inbounds %struct.matrix, %struct.matrix* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %57, i64 %65
  store float %54, float* %66, align 4
  br label %67

67:                                               ; preds = %15
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %9

70:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @_swap_columns(%struct.matrix* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.matrix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.matrix* %0, %struct.matrix** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %67, %3
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.matrix*, %struct.matrix** %4, align 8
  %12 = getelementptr inbounds %struct.matrix, %struct.matrix* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %9
  %16 = load %struct.matrix*, %struct.matrix** %4, align 8
  %17 = getelementptr inbounds %struct.matrix, %struct.matrix* %16, i32 0, i32 2
  %18 = load float*, float** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.matrix*, %struct.matrix** %4, align 8
  %21 = getelementptr inbounds %struct.matrix, %struct.matrix* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %18, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %8, align 4
  %29 = load %struct.matrix*, %struct.matrix** %4, align 8
  %30 = getelementptr inbounds %struct.matrix, %struct.matrix* %29, i32 0, i32 2
  %31 = load float*, float** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.matrix*, %struct.matrix** %4, align 8
  %34 = getelementptr inbounds %struct.matrix, %struct.matrix* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %31, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load %struct.matrix*, %struct.matrix** %4, align 8
  %43 = getelementptr inbounds %struct.matrix, %struct.matrix* %42, i32 0, i32 2
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.matrix*, %struct.matrix** %4, align 8
  %47 = getelementptr inbounds %struct.matrix, %struct.matrix* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %45, %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %44, i64 %52
  store float %41, float* %53, align 4
  %54 = load float, float* %8, align 4
  %55 = load %struct.matrix*, %struct.matrix** %4, align 8
  %56 = getelementptr inbounds %struct.matrix, %struct.matrix* %55, i32 0, i32 2
  %57 = load float*, float** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.matrix*, %struct.matrix** %4, align 8
  %60 = getelementptr inbounds %struct.matrix, %struct.matrix* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %57, i64 %65
  store float %54, float* %66, align 4
  br label %67

67:                                               ; preds = %15
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %9

70:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.matrix*, align 8
  %7 = alloca %struct.matrix*, align 8
  %8 = alloca %struct.matrix*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  call void @readargs(i32 %11, i8** %12)
  %13 = load i32, i32* @seed, align 4
  call void @srandnum(i32 %13)
  call void @timer_init()
  %14 = load i32, i32* @verbose, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i64 @timer_get()
  store i64 %19, i64* %10, align 8
  %20 = load %struct.problem*, %struct.problem** @p, align 8
  %21 = getelementptr inbounds %struct.problem, %struct.problem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.problem*, %struct.problem** @p, align 8
  %24 = getelementptr inbounds %struct.problem, %struct.problem* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.matrix* @matrix_create(i32 %22, i32 %25)
  store %struct.matrix* %26, %struct.matrix** %6, align 8
  %27 = load %struct.problem*, %struct.problem** @p, align 8
  %28 = getelementptr inbounds %struct.problem, %struct.problem* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.problem*, %struct.problem** @p, align 8
  %31 = getelementptr inbounds %struct.problem, %struct.problem* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.matrix* @matrix_create(i32 %29, i32 %32)
  store %struct.matrix* %33, %struct.matrix** %7, align 8
  %34 = load %struct.problem*, %struct.problem** @p, align 8
  %35 = getelementptr inbounds %struct.problem, %struct.problem* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.problem*, %struct.problem** @p, align 8
  %38 = getelementptr inbounds %struct.problem, %struct.problem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.matrix* @matrix_create(i32 %36, i32 %39)
  store %struct.matrix* %40, %struct.matrix** %8, align 8
  %41 = load %struct.matrix*, %struct.matrix** %6, align 8
  call void @matrix_random(%struct.matrix* %41)
  %42 = call i64 @timer_get()
  store i64 %42, i64* %9, align 8
  %43 = load i32, i32* @verbose, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %18
  %48 = call i64 @timer_get()
  store i64 %48, i64* %10, align 8
  %49 = load %struct.matrix*, %struct.matrix** %6, align 8
  %50 = load %struct.matrix*, %struct.matrix** %7, align 8
  %51 = load %struct.matrix*, %struct.matrix** %8, align 8
  %52 = call i32 @lower_upper(%struct.matrix* %49, %struct.matrix* %50, %struct.matrix* %51)
  %53 = call i64 @timer_get()
  store i64 %53, i64* %9, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.matrix*, %struct.matrix** %8, align 8
  call void @matrix_destroy(%struct.matrix* %55)
  %56 = load %struct.matrix*, %struct.matrix** %7, align 8
  call void @matrix_destroy(%struct.matrix* %56)
  %57 = load %struct.matrix*, %struct.matrix** %6, align 8
  call void @matrix_destroy(%struct.matrix* %57)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @readargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %94, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %73 [
    i32 2, label %22
  ]

22:                                               ; preds = %20
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #6
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.problem* @tiny, %struct.problem** @p, align 8
  br label %72

31:                                               ; preds = %22
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)) #6
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.problem* @small, %struct.problem** @p, align 8
  br label %71

40:                                               ; preds = %31
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #6
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store %struct.problem* @standard, %struct.problem** @p, align 8
  br label %70

49:                                               ; preds = %40
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #6
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store %struct.problem* @large, %struct.problem** @p, align 8
  br label %69

58:                                               ; preds = %49
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #6
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.problem* @huge, %struct.problem** @p, align 8
  br label %68

67:                                               ; preds = %58
  call void @usage()
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %30
  store i32 0, i32* %7, align 4
  br label %74

73:                                               ; preds = %20
  call void @usage()
  br label %74

74:                                               ; preds = %73, %72
  br label %94

75:                                               ; preds = %12
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0)) #6
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* @verbose, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0)) #6
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)) #6
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 2, i32* %7, align 4
  br label %91

90:                                               ; preds = %85
  call void @usage()
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %8

97:                                               ; preds = %8
  %98 = load i32, i32* @nthreads, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @usage()
  br label %101

101:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.matrix* @matrix_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.matrix*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.23, i64 0, i64 0), i32 26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.matrix_create, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %15

14:                                               ; preds = %10
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.23, i64 0, i64 0), i32 26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__.matrix_create, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = call i8* @smalloc(i64 16)
  %17 = bitcast i8* %16 to %struct.matrix*
  store %struct.matrix* %17, %struct.matrix** %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.matrix*, %struct.matrix** %5, align 8
  %20 = getelementptr inbounds %struct.matrix, %struct.matrix* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.matrix*, %struct.matrix** %5, align 8
  %23 = getelementptr inbounds %struct.matrix, %struct.matrix* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = call i8* @scalloc(i64 %27, i64 4)
  %29 = bitcast i8* %28 to float*
  %30 = load %struct.matrix*, %struct.matrix** %5, align 8
  %31 = getelementptr inbounds %struct.matrix, %struct.matrix* %30, i32 0, i32 2
  store float* %29, float** %31, align 8
  %32 = load %struct.matrix*, %struct.matrix** %5, align 8
  ret %struct.matrix* %32
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrix_destroy(%struct.matrix* %0) #0 {
  %2 = alloca %struct.matrix*, align 8
  store %struct.matrix* %0, %struct.matrix** %2, align 8
  %3 = load %struct.matrix*, %struct.matrix** %2, align 8
  %4 = icmp ne %struct.matrix* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.23, i64 0, i64 0), i32 51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.matrix_destroy, i64 0, i64 0)) #7
  unreachable

7:                                                ; preds = %5
  %8 = load %struct.matrix*, %struct.matrix** %2, align 8
  %9 = getelementptr inbounds %struct.matrix, %struct.matrix* %8, i32 0, i32 2
  %10 = load float*, float** %9, align 8
  %11 = bitcast float* %10 to i8*
  call void @free(i8* %11) #8
  %12 = load %struct.matrix*, %struct.matrix** %2, align 8
  %13 = bitcast %struct.matrix* %12 to i8*
  call void @free(i8* %13) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrix_random(%struct.matrix* %0) #0 {
  %2 = alloca %struct.matrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.matrix* %0, %struct.matrix** %2, align 8
  %5 = load %struct.matrix*, %struct.matrix** %2, align 8
  %6 = icmp ne %struct.matrix* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3.27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.23, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.matrix_random, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %42, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.matrix*, %struct.matrix** %2, align 8
  %13 = getelementptr inbounds %struct.matrix, %struct.matrix* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.matrix*, %struct.matrix** %2, align 8
  %20 = getelementptr inbounds %struct.matrix, %struct.matrix* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = call i32 @randnum()
  %25 = uitofp i32 %24 to float
  %26 = load %struct.matrix*, %struct.matrix** %2, align 8
  %27 = getelementptr inbounds %struct.matrix, %struct.matrix* %26, i32 0, i32 2
  %28 = load float*, float** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.matrix*, %struct.matrix** %2, align 8
  %31 = getelementptr inbounds %struct.matrix, %struct.matrix* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %28, i64 %36
  store float %25, float* %37, align 4
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %10

45:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, %struct.problem* null) #8
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 1000000, %5
  store i64 %6, i64* %1, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.problem*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @timer_error, align 8
  %9 = sub i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @timer_get()
  store i64 %3, i64* %1, align 8
  %4 = call i64 @timer_get()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %5, %6
  store i64 %7, i64* @timer_error, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.37, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @smalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.40, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.43, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @srealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.44, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @srandnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 104623
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 521288629, %11 ]
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 48947
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 362436069, %20 ]
  store i32 %22, i32* @randum_z, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @randum_z, align 4
  %3 = and i32 %2, 65535
  %4 = mul i32 36969, %3
  %5 = load i32, i32* @randum_z, align 4
  %6 = lshr i32 %5, 16
  %7 = add i32 %4, %6
  store i32 %7, i32* @randum_z, align 4
  %8 = load i32, i32* @randum_w, align 4
  %9 = and i32 %8, 65535
  %10 = mul i32 18000, %9
  %11 = load i32, i32* @randum_w, align 4
  %12 = lshr i32 %11, 16
  %13 = add i32 %10, %12
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* @randum_z, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* @randum_w, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalnum(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %10 = load i32, i32* @normalnum.call, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @normalnum.call, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @normalnum.call, align 4
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* @normalnum.X2, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %3, align 8
  br label %69

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %45, %22
  %24 = call i32 @randnum()
  %25 = uitofp i32 %24 to double
  %26 = fdiv double %25, 0x41DFFFFFFFC00000
  %27 = fmul double %26, 2.000000e+00
  %28 = fadd double -1.000000e+00, %27
  store double %28, double* %6, align 8
  %29 = call i32 @randnum()
  %30 = uitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = fmul double %31, 2.000000e+00
  %33 = fadd double -1.000000e+00, %32
  store double %33, double* %7, align 8
  %34 = load double, double* %6, align 8
  %35 = call double @pow(double %34, double 2.000000e+00) #8
  %36 = load double, double* %7, align 8
  %37 = call double @pow(double %36, double 2.000000e+00) #8
  %38 = fadd double %35, %37
  store double %38, double* %8, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load double, double* %8, align 8
  %41 = fcmp oge double %40, 1.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load double, double* %8, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %23, label %47

47:                                               ; preds = %45
  %48 = load double, double* %8, align 8
  %49 = call double @log(double %48) #8
  %50 = fmul double -2.000000e+00, %49
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = call double @sqrt(double %52) #8
  store double %53, double* %9, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  store double %56, double* @normalnum.X1, align 8
  %57 = load double, double* %7, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  store double %59, double* @normalnum.X2, align 8
  %60 = load i32, i32* @normalnum.call, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* @normalnum.call, align 4
  %64 = load double, double* %4, align 8
  %65 = load double, double* %5, align 8
  %66 = load double, double* @normalnum.X1, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %3, align 8
  br label %69

69:                                               ; preds = %47, %12
  %70 = load double, double* %3, align 8
  ret double %70
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #5

; Function Attrs: nounwind
declare dso_local double @log(double) #5

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local double @prngnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 44488, i64* %1, align 8
  store i64 3399, i64* %2, align 8
  %4 = load i64, i64* @prngseed, align 8
  %5 = srem i64 %4, 44488
  %6 = mul nsw i64 48271, %5
  %7 = load i64, i64* @prngseed, align 8
  %8 = sdiv i64 %7, 44488
  %9 = mul nsw i64 3399, %8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* @prngseed, align 8
  br label %18

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 2147483647
  store i64 %17, i64* @prngseed, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* @prngseed, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  ret double %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prng_set_seed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  store i64 %4, i64* @prngseed, align 8
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
