; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.problem = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.body_t = type { double, double, double, double, double, double, double, double, double, double }
%struct.timeval = type { i64, i64 }

@verbose = dso_local global i32 0, align 4
@nthreads = dso_local global i32 1, align 4
@.str = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@p = internal global %struct.problem* @tiny, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"simulating n-body movement...\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Final positions\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"   X    |    Y    |    Z   \0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"%.5lf | %.5lf | %.5lf\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"timing statistics:\0A\00", align 1
@tiny = internal global %struct.problem { i32 8192, i32 24 }, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@small = internal global %struct.problem { i32 16384, i32 12 }, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@standard = internal global %struct.problem { i32 16384, i32 24 }, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@large = internal global %struct.problem { i32 32768, i32 12 }, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@huge = internal global %struct.problem { i32 32768, i32 24 }, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"--nthreads\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"--class\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Usage: nb [options]\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Brief: N-Body Benchmark Kernel\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.17 = private unnamed_addr constant [56 x i8] c"  --help             Display this information and exit\0A\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"  --class <name>     Set problem class:\0A\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"                       - tiny\0A\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"                       - small\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"                       - standard\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"                       - large\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"                       - huge\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"  --verbose          Be verbose\0A\00", align 1
@compute_new_positions.dt = internal global double 1.000000e-03, align 8
@compute_new_positions.dt_old = internal global double 1.000000e-03, align 8
@timer_error = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1.26 = private unnamed_addr constant [13 x i8] c"warning: %s\0A\00", align 1
@.str.2.29 = private unnamed_addr constant [16 x i8] c"cannot malloc()\00", align 1
@.str.3.30 = private unnamed_addr constant [16 x i8] c"cannot calloc()\00", align 1
@.str.4.31 = private unnamed_addr constant [17 x i8] c"cannot realloc()\00", align 1
@randum_w = internal global i32 521288629, align 4
@randum_z = internal global i32 362436069, align 4
@normalnum.call = internal global i32 0, align 4
@normalnum.X2 = internal global double 0.000000e+00, align 8
@normalnum.X1 = internal global double 0.000000e+00, align 8
@prngseed = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.body_t*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  call void @readargs(i32 %12, i8** %13)
  call void @timer_init()
  %14 = load i32, i32* @verbose, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i64 @timer_get()
  store i64 %19, i64* %11, align 8
  call void @prng_set_seed(i32 123456789)
  %20 = load %struct.problem*, %struct.problem** @p, align 8
  %21 = getelementptr inbounds %struct.problem, %struct.problem* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 80
  %25 = call i8* @smalloc(i64 %24)
  %26 = bitcast i8* %25 to %struct.body_t*
  store %struct.body_t* %26, %struct.body_t** %9, align 8
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %105, %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.problem*, %struct.problem** @p, align 8
  %30 = getelementptr inbounds %struct.problem, %struct.problem* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %108

33:                                               ; preds = %27
  %34 = call double @prngnum()
  %35 = load %struct.body_t*, %struct.body_t** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.body_t, %struct.body_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.body_t, %struct.body_t* %38, i32 0, i32 0
  store double %34, double* %39, align 8
  %40 = call double @prngnum()
  %41 = load %struct.body_t*, %struct.body_t** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.body_t, %struct.body_t* %41, i64 %43
  %45 = getelementptr inbounds %struct.body_t, %struct.body_t* %44, i32 0, i32 1
  store double %40, double* %45, align 8
  %46 = call double @prngnum()
  %47 = load %struct.body_t*, %struct.body_t** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.body_t, %struct.body_t* %47, i64 %49
  %51 = getelementptr inbounds %struct.body_t, %struct.body_t* %50, i32 0, i32 2
  store double %46, double* %51, align 8
  %52 = load %struct.body_t*, %struct.body_t** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.body_t, %struct.body_t* %52, i64 %54
  %56 = getelementptr inbounds %struct.body_t, %struct.body_t* %55, i32 0, i32 3
  store double 1.000000e+00, double* %56, align 8
  %57 = load %struct.body_t*, %struct.body_t** %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.body_t, %struct.body_t* %57, i64 %59
  %61 = getelementptr inbounds %struct.body_t, %struct.body_t* %60, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = load %struct.body_t*, %struct.body_t** %9, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.body_t, %struct.body_t* %63, i64 %65
  %67 = getelementptr inbounds %struct.body_t, %struct.body_t* %66, i32 0, i32 4
  store double %62, double* %67, align 8
  %68 = load %struct.body_t*, %struct.body_t** %9, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.body_t, %struct.body_t* %68, i64 %70
  %72 = getelementptr inbounds %struct.body_t, %struct.body_t* %71, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = load %struct.body_t*, %struct.body_t** %9, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.body_t, %struct.body_t* %74, i64 %76
  %78 = getelementptr inbounds %struct.body_t, %struct.body_t* %77, i32 0, i32 5
  store double %73, double* %78, align 8
  %79 = load %struct.body_t*, %struct.body_t** %9, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.body_t, %struct.body_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.body_t, %struct.body_t* %82, i32 0, i32 2
  %84 = load double, double* %83, align 8
  %85 = load %struct.body_t*, %struct.body_t** %9, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.body_t, %struct.body_t* %85, i64 %87
  %89 = getelementptr inbounds %struct.body_t, %struct.body_t* %88, i32 0, i32 6
  store double %84, double* %89, align 8
  %90 = load %struct.body_t*, %struct.body_t** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.body_t, %struct.body_t* %90, i64 %92
  %94 = getelementptr inbounds %struct.body_t, %struct.body_t* %93, i32 0, i32 7
  store double 0.000000e+00, double* %94, align 8
  %95 = load %struct.body_t*, %struct.body_t** %9, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.body_t, %struct.body_t* %95, i64 %97
  %99 = getelementptr inbounds %struct.body_t, %struct.body_t* %98, i32 0, i32 8
  store double 0.000000e+00, double* %99, align 8
  %100 = load %struct.body_t*, %struct.body_t** %9, align 8
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.body_t, %struct.body_t* %100, i64 %102
  %104 = getelementptr inbounds %struct.body_t, %struct.body_t* %103, i32 0, i32 9
  store double 0.000000e+00, double* %104, align 8
  br label %105

105:                                              ; preds = %33
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %27

108:                                              ; preds = %27
  %109 = call i64 @timer_get()
  store i64 %109, i64* %10, align 8
  %110 = load i32, i32* @verbose, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %108
  %115 = call i64 @timer_get()
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %122, %114
  %117 = load %struct.problem*, %struct.problem** @p, align 8
  %118 = getelementptr inbounds %struct.problem, %struct.problem* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 4
  %121 = icmp ne i32 %119, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load %struct.body_t*, %struct.body_t** %9, align 8
  %124 = load %struct.problem*, %struct.problem** @p, align 8
  %125 = getelementptr inbounds %struct.problem, %struct.problem* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call double @compute_forces(%struct.body_t* %123, i32 %126)
  store double %127, double* %7, align 8
  %128 = load %struct.body_t*, %struct.body_t** %9, align 8
  %129 = load %struct.problem*, %struct.problem** @p, align 8
  %130 = getelementptr inbounds %struct.problem, %struct.problem* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load double, double* %7, align 8
  %133 = call double @compute_new_positions(%struct.body_t* %128, i32 %131, double %132)
  %134 = load double, double* %8, align 8
  %135 = fadd double %134, %133
  store double %135, double* %8, align 8
  br label %116

136:                                              ; preds = %116
  %137 = call i64 @timer_get()
  store i64 %137, i64* %10, align 8
  %138 = load i32, i32* @verbose, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %173

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %169, %140
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.problem*, %struct.problem** @p, align 8
  %146 = getelementptr inbounds %struct.problem, %struct.problem* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %172

149:                                              ; preds = %143
  %150 = load %struct.body_t*, %struct.body_t** %9, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.body_t, %struct.body_t* %150, i64 %152
  %154 = getelementptr inbounds %struct.body_t, %struct.body_t* %153, i32 0, i32 0
  %155 = load double, double* %154, align 8
  %156 = load %struct.body_t*, %struct.body_t** %9, align 8
  %157 = load i32, i32* %6, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.body_t, %struct.body_t* %156, i64 %158
  %160 = getelementptr inbounds %struct.body_t, %struct.body_t* %159, i32 0, i32 1
  %161 = load double, double* %160, align 8
  %162 = load %struct.body_t*, %struct.body_t** %9, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.body_t, %struct.body_t* %162, i64 %164
  %166 = getelementptr inbounds %struct.body_t, %struct.body_t* %165, i32 0, i32 2
  %167 = load double, double* %166, align 8
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), double %155, double %161, double %167)
  br label %169

169:                                              ; preds = %149
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %6, align 4
  br label %143

172:                                              ; preds = %143
  br label %173

173:                                              ; preds = %172, %136
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %175 = load %struct.body_t*, %struct.body_t** %9, align 8
  %176 = bitcast %struct.body_t* %175 to i8*
  call void @free(i8* %176) #5
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
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)) #6
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
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)) #6
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
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0)) #6
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
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)) #6
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
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0)) #6
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
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #6
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* @verbose, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)) #6
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0)) #6
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

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.17, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @compute_forces(%struct.body_t* %0, i32 %1) #0 {
  %3 = alloca %struct.body_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.body_t* %0, %struct.body_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %175, %2
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %178

20:                                               ; preds = %16
  store double 1.000000e+02, double* %13, align 8
  store double 0.000000e+00, double* %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %127, %20
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %130

25:                                               ; preds = %21
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %127

30:                                               ; preds = %25
  %31 = load %struct.body_t*, %struct.body_t** %3, align 8
  %32 = load i32, i32* %14, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.body_t, %struct.body_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.body_t, %struct.body_t* %34, i32 0, i32 0
  %36 = load double, double* %35, align 8
  %37 = load %struct.body_t*, %struct.body_t** %3, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.body_t, %struct.body_t* %37, i64 %39
  %41 = getelementptr inbounds %struct.body_t, %struct.body_t* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = fsub double %36, %42
  store double %43, double* %6, align 8
  %44 = load %struct.body_t*, %struct.body_t** %3, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.body_t, %struct.body_t* %44, i64 %46
  %48 = getelementptr inbounds %struct.body_t, %struct.body_t* %47, i32 0, i32 1
  %49 = load double, double* %48, align 8
  %50 = load %struct.body_t*, %struct.body_t** %3, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.body_t, %struct.body_t* %50, i64 %52
  %54 = getelementptr inbounds %struct.body_t, %struct.body_t* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fsub double %49, %55
  store double %56, double* %7, align 8
  %57 = load %struct.body_t*, %struct.body_t** %3, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.body_t, %struct.body_t* %57, i64 %59
  %61 = getelementptr inbounds %struct.body_t, %struct.body_t* %60, i32 0, i32 2
  %62 = load double, double* %61, align 8
  %63 = load %struct.body_t*, %struct.body_t** %3, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.body_t, %struct.body_t* %63, i64 %65
  %67 = getelementptr inbounds %struct.body_t, %struct.body_t* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = fsub double %62, %68
  store double %69, double* %8, align 8
  %70 = load double, double* %6, align 8
  %71 = load double, double* %6, align 8
  %72 = fmul double %70, %71
  %73 = load double, double* %7, align 8
  %74 = load double, double* %7, align 8
  %75 = fmul double %73, %74
  %76 = fadd double %72, %75
  %77 = load double, double* %8, align 8
  %78 = load double, double* %8, align 8
  %79 = fmul double %77, %78
  %80 = fadd double %76, %79
  store double %80, double* %9, align 8
  %81 = load double, double* %9, align 8
  %82 = load double, double* %13, align 8
  %83 = fcmp olt double %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %30
  %85 = load double, double* %9, align 8
  store double %85, double* %13, align 8
  br label %86

86:                                               ; preds = %84, %30
  %87 = load double, double* %9, align 8
  %88 = load double, double* %9, align 8
  %89 = call double @sqrt(double %88) #5
  %90 = fmul double %87, %89
  store double %90, double* %9, align 8
  %91 = load %struct.body_t*, %struct.body_t** %3, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.body_t, %struct.body_t* %91, i64 %93
  %95 = getelementptr inbounds %struct.body_t, %struct.body_t* %94, i32 0, i32 3
  %96 = load double, double* %95, align 8
  %97 = load double, double* %6, align 8
  %98 = fmul double %96, %97
  %99 = load double, double* %9, align 8
  %100 = fdiv double %98, %99
  %101 = load double, double* %10, align 8
  %102 = fsub double %101, %100
  store double %102, double* %10, align 8
  %103 = load %struct.body_t*, %struct.body_t** %3, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.body_t, %struct.body_t* %103, i64 %105
  %107 = getelementptr inbounds %struct.body_t, %struct.body_t* %106, i32 0, i32 3
  %108 = load double, double* %107, align 8
  %109 = load double, double* %7, align 8
  %110 = fmul double %108, %109
  %111 = load double, double* %9, align 8
  %112 = fdiv double %110, %111
  %113 = load double, double* %11, align 8
  %114 = fsub double %113, %112
  store double %114, double* %11, align 8
  %115 = load %struct.body_t*, %struct.body_t** %3, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.body_t, %struct.body_t* %115, i64 %117
  %119 = getelementptr inbounds %struct.body_t, %struct.body_t* %118, i32 0, i32 3
  %120 = load double, double* %119, align 8
  %121 = load double, double* %8, align 8
  %122 = fmul double %120, %121
  %123 = load double, double* %9, align 8
  %124 = fdiv double %122, %123
  %125 = load double, double* %12, align 8
  %126 = fsub double %125, %124
  store double %126, double* %12, align 8
  br label %127

127:                                              ; preds = %86, %29
  %128 = load i32, i32* %15, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %15, align 4
  br label %21

130:                                              ; preds = %21
  %131 = load double, double* %10, align 8
  %132 = load %struct.body_t*, %struct.body_t** %3, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.body_t, %struct.body_t* %132, i64 %134
  %136 = getelementptr inbounds %struct.body_t, %struct.body_t* %135, i32 0, i32 7
  %137 = load double, double* %136, align 8
  %138 = fadd double %137, %131
  store double %138, double* %136, align 8
  %139 = load double, double* %11, align 8
  %140 = load %struct.body_t*, %struct.body_t** %3, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.body_t, %struct.body_t* %140, i64 %142
  %144 = getelementptr inbounds %struct.body_t, %struct.body_t* %143, i32 0, i32 8
  %145 = load double, double* %144, align 8
  %146 = fadd double %145, %139
  store double %146, double* %144, align 8
  %147 = load double, double* %12, align 8
  %148 = load %struct.body_t*, %struct.body_t** %3, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.body_t, %struct.body_t* %148, i64 %150
  %152 = getelementptr inbounds %struct.body_t, %struct.body_t* %151, i32 0, i32 9
  %153 = load double, double* %152, align 8
  %154 = fadd double %153, %147
  store double %154, double* %152, align 8
  %155 = load double, double* %10, align 8
  %156 = load double, double* %10, align 8
  %157 = fmul double %155, %156
  %158 = load double, double* %11, align 8
  %159 = load double, double* %11, align 8
  %160 = fmul double %158, %159
  %161 = fadd double %157, %160
  %162 = load double, double* %12, align 8
  %163 = load double, double* %12, align 8
  %164 = fmul double %162, %163
  %165 = fadd double %161, %164
  %166 = call double @sqrt(double %165) #5
  %167 = load double, double* %13, align 8
  %168 = fdiv double %166, %167
  store double %168, double* %10, align 8
  %169 = load double, double* %10, align 8
  %170 = load double, double* %5, align 8
  %171 = fcmp ogt double %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %130
  %173 = load double, double* %10, align 8
  store double %173, double* %5, align 8
  br label %174

174:                                              ; preds = %172, %130
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %16

178:                                              ; preds = %16
  %179 = load double, double* %5, align 8
  ret double %179
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @compute_new_positions(%struct.body_t* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.body_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store %struct.body_t* %0, %struct.body_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %15 = load double, double* @compute_new_positions.dt, align 8
  %16 = load double, double* @compute_new_positions.dt, align 8
  %17 = load double, double* @compute_new_positions.dt_old, align 8
  %18 = fadd double %16, %17
  %19 = fmul double %15, %18
  %20 = fdiv double 2.000000e+00, %19
  store double %20, double* %8, align 8
  %21 = load double, double* @compute_new_positions.dt_old, align 8
  %22 = load double, double* @compute_new_positions.dt, align 8
  %23 = load double, double* @compute_new_positions.dt_old, align 8
  %24 = fadd double %22, %23
  %25 = fmul double %21, %24
  %26 = fdiv double 2.000000e+00, %25
  store double %26, double* %10, align 8
  %27 = load double, double* %8, align 8
  %28 = load double, double* %10, align 8
  %29 = fadd double %27, %28
  %30 = fneg double %29
  store double %30, double* %9, align 8
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %165, %3
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %168

35:                                               ; preds = %31
  %36 = load %struct.body_t*, %struct.body_t** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.body_t, %struct.body_t* %36, i64 %38
  %40 = getelementptr inbounds %struct.body_t, %struct.body_t* %39, i32 0, i32 0
  %41 = load double, double* %40, align 8
  store double %41, double* %11, align 8
  %42 = load %struct.body_t*, %struct.body_t** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.body_t, %struct.body_t* %42, i64 %44
  %46 = getelementptr inbounds %struct.body_t, %struct.body_t* %45, i32 0, i32 1
  %47 = load double, double* %46, align 8
  store double %47, double* %12, align 8
  %48 = load %struct.body_t*, %struct.body_t** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.body_t, %struct.body_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.body_t, %struct.body_t* %51, i32 0, i32 2
  %53 = load double, double* %52, align 8
  store double %53, double* %13, align 8
  %54 = load %struct.body_t*, %struct.body_t** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.body_t, %struct.body_t* %54, i64 %56
  %58 = getelementptr inbounds %struct.body_t, %struct.body_t* %57, i32 0, i32 7
  %59 = load double, double* %58, align 8
  %60 = load double, double* %9, align 8
  %61 = load double, double* %11, align 8
  %62 = fmul double %60, %61
  %63 = fsub double %59, %62
  %64 = load double, double* %10, align 8
  %65 = load %struct.body_t*, %struct.body_t** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.body_t, %struct.body_t* %65, i64 %67
  %69 = getelementptr inbounds %struct.body_t, %struct.body_t* %68, i32 0, i32 4
  %70 = load double, double* %69, align 8
  %71 = fmul double %64, %70
  %72 = fsub double %63, %71
  %73 = load double, double* %8, align 8
  %74 = fdiv double %72, %73
  %75 = load %struct.body_t*, %struct.body_t** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.body_t, %struct.body_t* %75, i64 %77
  %79 = getelementptr inbounds %struct.body_t, %struct.body_t* %78, i32 0, i32 0
  store double %74, double* %79, align 8
  %80 = load %struct.body_t*, %struct.body_t** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.body_t, %struct.body_t* %80, i64 %82
  %84 = getelementptr inbounds %struct.body_t, %struct.body_t* %83, i32 0, i32 8
  %85 = load double, double* %84, align 8
  %86 = load double, double* %9, align 8
  %87 = load double, double* %12, align 8
  %88 = fmul double %86, %87
  %89 = fsub double %85, %88
  %90 = load double, double* %10, align 8
  %91 = load %struct.body_t*, %struct.body_t** %4, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.body_t, %struct.body_t* %91, i64 %93
  %95 = getelementptr inbounds %struct.body_t, %struct.body_t* %94, i32 0, i32 5
  %96 = load double, double* %95, align 8
  %97 = fmul double %90, %96
  %98 = fsub double %89, %97
  %99 = load double, double* %8, align 8
  %100 = fdiv double %98, %99
  %101 = load %struct.body_t*, %struct.body_t** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.body_t, %struct.body_t* %101, i64 %103
  %105 = getelementptr inbounds %struct.body_t, %struct.body_t* %104, i32 0, i32 1
  store double %100, double* %105, align 8
  %106 = load %struct.body_t*, %struct.body_t** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.body_t, %struct.body_t* %106, i64 %108
  %110 = getelementptr inbounds %struct.body_t, %struct.body_t* %109, i32 0, i32 9
  %111 = load double, double* %110, align 8
  %112 = load double, double* %9, align 8
  %113 = load double, double* %13, align 8
  %114 = fmul double %112, %113
  %115 = fsub double %111, %114
  %116 = load double, double* %10, align 8
  %117 = load %struct.body_t*, %struct.body_t** %4, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.body_t, %struct.body_t* %117, i64 %119
  %121 = getelementptr inbounds %struct.body_t, %struct.body_t* %120, i32 0, i32 6
  %122 = load double, double* %121, align 8
  %123 = fmul double %116, %122
  %124 = fsub double %115, %123
  %125 = load double, double* %8, align 8
  %126 = fdiv double %124, %125
  %127 = load %struct.body_t*, %struct.body_t** %4, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.body_t, %struct.body_t* %127, i64 %129
  %131 = getelementptr inbounds %struct.body_t, %struct.body_t* %130, i32 0, i32 2
  store double %126, double* %131, align 8
  %132 = load double, double* %11, align 8
  %133 = load %struct.body_t*, %struct.body_t** %4, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.body_t, %struct.body_t* %133, i64 %135
  %137 = getelementptr inbounds %struct.body_t, %struct.body_t* %136, i32 0, i32 4
  store double %132, double* %137, align 8
  %138 = load double, double* %12, align 8
  %139 = load %struct.body_t*, %struct.body_t** %4, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.body_t, %struct.body_t* %139, i64 %141
  %143 = getelementptr inbounds %struct.body_t, %struct.body_t* %142, i32 0, i32 5
  store double %138, double* %143, align 8
  %144 = load double, double* %13, align 8
  %145 = load %struct.body_t*, %struct.body_t** %4, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.body_t, %struct.body_t* %145, i64 %147
  %149 = getelementptr inbounds %struct.body_t, %struct.body_t* %148, i32 0, i32 6
  store double %144, double* %149, align 8
  %150 = load %struct.body_t*, %struct.body_t** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.body_t, %struct.body_t* %150, i64 %152
  %154 = getelementptr inbounds %struct.body_t, %struct.body_t* %153, i32 0, i32 7
  store double 0.000000e+00, double* %154, align 8
  %155 = load %struct.body_t*, %struct.body_t** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.body_t, %struct.body_t* %155, i64 %157
  %159 = getelementptr inbounds %struct.body_t, %struct.body_t* %158, i32 0, i32 8
  store double 0.000000e+00, double* %159, align 8
  %160 = load %struct.body_t*, %struct.body_t** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.body_t, %struct.body_t* %160, i64 %162
  %164 = getelementptr inbounds %struct.body_t, %struct.body_t* %163, i32 0, i32 9
  store double 0.000000e+00, double* %164, align 8
  br label %165

165:                                              ; preds = %35
  %166 = load i32, i32* %7, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %7, align 4
  br label %31

168:                                              ; preds = %31
  %169 = load double, double* %6, align 8
  %170 = call double @sqrt(double %169) #5
  %171 = fdiv double 1.000000e+00, %170
  store double %171, double* %14, align 8
  %172 = load double, double* %14, align 8
  %173 = fcmp olt double %172, 0x3EB0C6F7A0B5ED8D
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store double 0x3EB0C6F7A0B5ED8D, double* %14, align 8
  br label %175

175:                                              ; preds = %174, %168
  %176 = load double, double* %14, align 8
  %177 = load double, double* @compute_new_positions.dt, align 8
  %178 = fcmp olt double %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %175
  %180 = load double, double* @compute_new_positions.dt, align 8
  store double %180, double* @compute_new_positions.dt_old, align 8
  %181 = load double, double* %14, align 8
  store double %181, double* @compute_new_positions.dt, align 8
  br label %192

182:                                              ; preds = %175
  %183 = load double, double* %14, align 8
  %184 = load double, double* @compute_new_positions.dt, align 8
  %185 = fmul double 4.000000e+00, %184
  %186 = fcmp ogt double %183, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load double, double* @compute_new_positions.dt, align 8
  store double %188, double* @compute_new_positions.dt_old, align 8
  %189 = load double, double* @compute_new_positions.dt, align 8
  %190 = fmul double %189, 2.000000e+00
  store double %190, double* @compute_new_positions.dt, align 8
  br label %191

191:                                              ; preds = %187, %182
  br label %192

192:                                              ; preds = %191, %179
  %193 = load double, double* @compute_new_positions.dt_old, align 8
  ret double %193
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, %struct.problem* null) #5
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
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.problem*) #2

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
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #7
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.26, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @smalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.29, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #5
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.30, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @srealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #5
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.31, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

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
  %35 = call double @pow(double %34, double 2.000000e+00) #5
  %36 = load double, double* %7, align 8
  %37 = call double @pow(double %36, double 2.000000e+00) #5
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
  %49 = call double @log(double %48) #5
  %50 = fmul double -2.000000e+00, %49
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = call double @sqrt(double %52) #5
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
declare dso_local double @pow(double, double) #2

; Function Attrs: nounwind
declare dso_local double @log(double) #2

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
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
