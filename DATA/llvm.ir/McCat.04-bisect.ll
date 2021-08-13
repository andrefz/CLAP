; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"Error: couldn't allocate V in allocvector.\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.2 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%5d %.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"eps2 = %e,  k = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"bisect: Couldn't allocate memory for wu\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @allocvector(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #6
  store i8* %5, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 -1) #7
  unreachable

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %2, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %12, i1 false)
  %13 = load i8*, i8** %3, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @dallocvector(i32 %0, double** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double**, align 8
  store i32 %0, i32* %3, align 4
  store double** %1, double*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = call i8* @allocvector(i64 %7)
  %9 = bitcast i8* %8 to double*
  %10 = load double**, double*** %4, align 8
  store double* %9, double** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sallocvector(i32 %0, float** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  store i32 %0, i32* %3, align 4
  store float** %1, float*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call i8* @allocvector(i64 %7)
  %9 = bitcast i8* %8 to float*
  %10 = load float**, float*** %4, align 8
  store float* %9, float** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @iallocvector(i32 %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  store i32 %0, i32* %3, align 4
  store i32** %1, i32*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call i8* @allocvector(i64 %7)
  %9 = bitcast i8* %8 to i32*
  %10 = load i32**, i32*** %4, align 8
  store i32* %9, i32** %10, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_matrix(i32 %0, double* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %45, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load i32, i32* %7, align 4
  %14 = sitofp i32 %13 to double
  %15 = load double*, double** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %15, i64 %17
  store double %14, double* %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  %21 = sitofp i32 %20 to double
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = sitofp i32 %23 to double
  %25 = fmul double %21, %24
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  store double %25, double* %29, align 8
  %30 = load double*, double** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fmul double %34, %39
  %41 = load double*, double** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  store double %40, double* %44, align 8
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %8

48:                                               ; preds = %8
  ret void
}

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
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %19 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.2, i64 0, i64 0), double* %11)
  %20 = load i32, i32* %7, align 4
  call void @dallocvector(i32 %20, double** %13)
  %21 = load i32, i32* %7, align 4
  call void @dallocvector(i32 %21, double** %14)
  %22 = load i32, i32* %7, align 4
  call void @dallocvector(i32 %22, double** %15)
  %23 = load i32, i32* %7, align 4
  call void @dallocvector(i32 %23, double** %16)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %72, %2
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %24
  %29 = load i32, i32* %7, align 4
  %30 = load double*, double** %13, align 8
  %31 = load double*, double** %14, align 8
  call void @test_matrix(i32 %29, double* %30, double* %31)
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %56, %28
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %32
  %37 = load double*, double** %14, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %37, i64 %39
  %41 = load double, double* %40, align 8
  %42 = load double*, double** %14, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fmul double %41, %46
  %48 = load double*, double** %15, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %47, double* %51, align 8
  %52 = load double*, double** %16, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %52, i64 %54
  store double 0.000000e+00, double* %55, align 8
  br label %56

56:                                               ; preds = %36
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load double*, double** %15, align 8
  %61 = getelementptr inbounds double, double* %60, i64 0
  store double 0.000000e+00, double* %61, align 8
  %62 = load double*, double** %14, align 8
  %63 = getelementptr inbounds double, double* %62, i64 0
  store double 0.000000e+00, double* %63, align 8
  %64 = load double*, double** %13, align 8
  %65 = load double*, double** %14, align 8
  %66 = load double*, double** %15, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load double, double* %11, align 8
  %70 = load double*, double** %16, align 8
  %71 = getelementptr inbounds double, double* %70, i64 -1
  call void @dbisect(double* %64, double* %65, double* %66, i32 %67, i32 1, i32 %68, double %69, double* %12, i32* %8, double* %71)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %24

75:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = load double*, double** %16, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %82, double %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %76

92:                                               ; preds = %76
  %93 = load double, double* %12, align 8
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), double %93, i32 %94)
  ret i32 0
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sturm(i32 %0, double* %1, double* %2, double* %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  store i32 0, i32* %12, align 4
  store double 1.000000e+00, double* %13, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %61, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load double, double* %13, align 8
  %21 = fcmp une double %20, 0.000000e+00
  br i1 %21, label %22, label %38

22:                                               ; preds = %19
  %23 = load double*, double** %7, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds double, double* %23, i64 %25
  %27 = load double, double* %26, align 8
  %28 = load double, double* %10, align 8
  %29 = fsub double %27, %28
  %30 = load double*, double** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %13, align 8
  %36 = fdiv double %34, %35
  %37 = fsub double %29, %36
  store double %37, double* %13, align 8
  br label %54

38:                                               ; preds = %19
  %39 = load double*, double** %7, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %39, i64 %41
  %43 = load double, double* %42, align 8
  %44 = load double, double* %10, align 8
  %45 = fsub double %43, %44
  %46 = load double*, double** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  %51 = call double @llvm.fabs.f64(double %50)
  %52 = fdiv double %51, 0x3CB0000000000000
  %53 = fsub double %45, %52
  store double %53, double* %13, align 8
  br label %54

54:                                               ; preds = %38, %22
  %55 = load double, double* %13, align 8
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  br label %15

64:                                               ; preds = %15
  %65 = load i32, i32* %12, align 4
  ret i32 %65
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @dbisect(double* %0, double* %1, double* %2, i32 %3, i32 %4, i32 %5, double %6, double* %7, i32* %8, double* %9) #0 {
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double*, align 8
  store double* %0, double** %11, align 8
  store double* %1, double** %12, align 8
  store double* %2, double** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store double %6, double* %17, align 8
  store double* %7, double** %18, align 8
  store i32* %8, i32** %19, align 8
  store double* %9, double** %20, align 8
  %31 = load double*, double** %12, align 8
  %32 = getelementptr inbounds double, double* %31, i64 0
  store double 0.000000e+00, double* %32, align 8
  %33 = load double*, double** %13, align 8
  %34 = getelementptr inbounds double, double* %33, i64 0
  store double 0.000000e+00, double* %34, align 8
  %35 = load double*, double** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %12, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double, double* %41, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call double @llvm.fabs.f64(double %46)
  %48 = fmul double 1.010000e+00, %47
  %49 = fsub double %40, %48
  store double %49, double* %23, align 8
  %50 = load double*, double** %11, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %50, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %56, i64 %59
  %61 = load double, double* %60, align 8
  %62 = call double @llvm.fabs.f64(double %61)
  %63 = fmul double 1.010000e+00, %62
  %64 = fadd double %55, %63
  store double %64, double* %24, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %122, %10
  %68 = load i32, i32* %21, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %125

70:                                               ; preds = %67
  %71 = load double*, double** %12, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = call double @llvm.fabs.f64(double %75)
  %77 = load double*, double** %12, align 8
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %77, i64 %80
  %82 = load double, double* %81, align 8
  %83 = call double @llvm.fabs.f64(double %82)
  %84 = fadd double %76, %83
  %85 = fmul double 1.010000e+00, %84
  store double %85, double* %22, align 8
  %86 = load double*, double** %11, align 8
  %87 = load i32, i32* %21, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = load double, double* %22, align 8
  %92 = fadd double %90, %91
  %93 = load double, double* %24, align 8
  %94 = fcmp ogt double %92, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %70
  %96 = load double*, double** %11, align 8
  %97 = load i32, i32* %21, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load double, double* %22, align 8
  %102 = fadd double %100, %101
  store double %102, double* %24, align 8
  br label %103

103:                                              ; preds = %95, %70
  %104 = load double*, double** %11, align 8
  %105 = load i32, i32* %21, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = load double, double* %22, align 8
  %110 = fsub double %108, %109
  %111 = load double, double* %23, align 8
  %112 = fcmp olt double %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %103
  %114 = load double*, double** %11, align 8
  %115 = load i32, i32* %21, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = load double, double* %22, align 8
  %120 = fsub double %118, %119
  store double %120, double* %23, align 8
  br label %121

121:                                              ; preds = %113, %103
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %21, align 4
  br label %67

125:                                              ; preds = %67
  %126 = load double, double* %23, align 8
  %127 = load double, double* %24, align 8
  %128 = fadd double %126, %127
  %129 = fcmp ogt double %128, 0.000000e+00
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load double, double* %24, align 8
  br label %135

132:                                              ; preds = %125
  %133 = load double, double* %23, align 8
  %134 = fneg double %133
  br label %135

135:                                              ; preds = %132, %130
  %136 = phi double [ %131, %130 ], [ %134, %132 ]
  %137 = fmul double 0x3CB0000000000000, %136
  %138 = load double*, double** %18, align 8
  store double %137, double* %138, align 8
  %139 = load double, double* %17, align 8
  %140 = fcmp ole double %139, 0.000000e+00
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load double*, double** %18, align 8
  %143 = load double, double* %142, align 8
  store double %143, double* %17, align 8
  br label %144

144:                                              ; preds = %141, %135
  %145 = load double, double* %17, align 8
  %146 = fmul double 5.000000e-01, %145
  %147 = load double*, double** %18, align 8
  %148 = load double, double* %147, align 8
  %149 = fmul double 7.000000e+00, %148
  %150 = fadd double %146, %149
  %151 = load double*, double** %18, align 8
  store double %150, double* %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = call noalias i8* @calloc(i64 %154, i64 8) #6
  %156 = bitcast i8* %155 to double*
  store double* %156, double** %30, align 8
  %157 = icmp eq double* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %144
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %160 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %159)
  call void @exit(i32 1) #7
  unreachable

161:                                              ; preds = %144
  %162 = load double, double* %24, align 8
  store double %162, double* %29, align 8
  %163 = load i32, i32* %16, align 4
  store i32 %163, i32* %21, align 4
  br label %164

164:                                              ; preds = %179, %161
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp sge i32 %165, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %164
  %169 = load double, double* %24, align 8
  %170 = load double*, double** %20, align 8
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds double, double* %170, i64 %172
  store double %169, double* %173, align 8
  %174 = load double, double* %23, align 8
  %175 = load double*, double** %30, align 8
  %176 = load i32, i32* %21, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds double, double* %175, i64 %177
  store double %174, double* %178, align 8
  br label %179

179:                                              ; preds = %168
  %180 = load i32, i32* %21, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %21, align 4
  br label %164

182:                                              ; preds = %164
  %183 = load i32*, i32** %19, align 8
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %26, align 4
  br label %185

185:                                              ; preds = %308, %182
  %186 = load i32, i32* %26, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp sge i32 %186, %187
  br i1 %188, label %189, label %311

189:                                              ; preds = %185
  %190 = load double, double* %23, align 8
  store double %190, double* %28, align 8
  %191 = load i32, i32* %26, align 4
  store i32 %191, i32* %21, align 4
  br label %192

192:                                              ; preds = %211, %189
  %193 = load i32, i32* %21, align 4
  %194 = load i32, i32* %15, align 4
  %195 = icmp sge i32 %193, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %192
  %197 = load double, double* %28, align 8
  %198 = load double*, double** %30, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds double, double* %198, i64 %200
  %202 = load double, double* %201, align 8
  %203 = fcmp olt double %197, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load double*, double** %30, align 8
  %206 = load i32, i32* %21, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds double, double* %205, i64 %207
  %209 = load double, double* %208, align 8
  store double %209, double* %28, align 8
  br label %214

210:                                              ; preds = %196
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %21, align 4
  %213 = add nsw i32 %212, -1
  store i32 %213, i32* %21, align 4
  br label %192

214:                                              ; preds = %204, %192
  %215 = load double, double* %29, align 8
  %216 = load double*, double** %20, align 8
  %217 = load i32, i32* %26, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds double, double* %216, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fcmp ogt double %215, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %214
  %223 = load double*, double** %20, align 8
  %224 = load i32, i32* %26, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds double, double* %223, i64 %225
  %227 = load double, double* %226, align 8
  store double %227, double* %29, align 8
  br label %228

228:                                              ; preds = %222, %214
  %229 = load double, double* %28, align 8
  %230 = load double, double* %29, align 8
  %231 = fadd double %229, %230
  %232 = fdiv double %231, 2.000000e+00
  store double %232, double* %27, align 8
  br label %233

233:                                              ; preds = %294, %228
  %234 = load double, double* %29, align 8
  %235 = load double, double* %28, align 8
  %236 = fsub double %234, %235
  %237 = load double, double* %28, align 8
  %238 = call double @llvm.fabs.f64(double %237)
  %239 = load double, double* %29, align 8
  %240 = call double @llvm.fabs.f64(double %239)
  %241 = fadd double %238, %240
  %242 = fmul double 0x3CC0000000000000, %241
  %243 = load double, double* %17, align 8
  %244 = fadd double %242, %243
  %245 = fcmp ogt double %236, %244
  br i1 %245, label %246, label %299

246:                                              ; preds = %233
  %247 = load i32*, i32** %19, align 8
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32*, i32** %19, align 8
  store i32 %249, i32* %250, align 4
  %251 = load i32, i32* %14, align 4
  %252 = load double*, double** %11, align 8
  %253 = load double*, double** %12, align 8
  %254 = load double*, double** %13, align 8
  %255 = load double, double* %27, align 8
  %256 = call i32 @sturm(i32 %251, double* %252, double* %253, double* %254, double %255)
  store i32 %256, i32* %25, align 4
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* %26, align 4
  %259 = icmp slt i32 %257, %258
  br i1 %259, label %260, label %292

260:                                              ; preds = %246
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load double, double* %27, align 8
  %266 = load double*, double** %30, align 8
  %267 = load i32, i32* %15, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double, double* %266, i64 %268
  store double %265, double* %269, align 8
  store double %265, double* %28, align 8
  br label %291

270:                                              ; preds = %260
  %271 = load double, double* %27, align 8
  %272 = load double*, double** %30, align 8
  %273 = load i32, i32* %25, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds double, double* %272, i64 %275
  store double %271, double* %276, align 8
  store double %271, double* %28, align 8
  %277 = load double*, double** %20, align 8
  %278 = load i32, i32* %25, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds double, double* %277, i64 %279
  %281 = load double, double* %280, align 8
  %282 = load double, double* %27, align 8
  %283 = fcmp ogt double %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %270
  %285 = load double, double* %27, align 8
  %286 = load double*, double** %20, align 8
  %287 = load i32, i32* %25, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds double, double* %286, i64 %288
  store double %285, double* %289, align 8
  br label %290

290:                                              ; preds = %284, %270
  br label %291

291:                                              ; preds = %290, %264
  br label %294

292:                                              ; preds = %246
  %293 = load double, double* %27, align 8
  store double %293, double* %29, align 8
  br label %294

294:                                              ; preds = %292, %291
  %295 = load double, double* %28, align 8
  %296 = load double, double* %29, align 8
  %297 = fadd double %295, %296
  %298 = fdiv double %297, 2.000000e+00
  store double %298, double* %27, align 8
  br label %233

299:                                              ; preds = %233
  %300 = load double, double* %28, align 8
  %301 = load double, double* %29, align 8
  %302 = fadd double %300, %301
  %303 = fdiv double %302, 2.000000e+00
  %304 = load double*, double** %20, align 8
  %305 = load i32, i32* %26, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds double, double* %304, i64 %306
  store double %303, double* %307, align 8
  br label %308

308:                                              ; preds = %299
  %309 = load i32, i32* %26, align 4
  %310 = add nsw i32 %309, -1
  store i32 %310, i32* %26, align 4
  br label %185

311:                                              ; preds = %185
  %312 = load double*, double** %30, align 8
  %313 = bitcast double* %312 to i8*
  call void @free(i8* %313) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
