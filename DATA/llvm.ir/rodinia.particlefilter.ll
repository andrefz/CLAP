; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@M = dso_local global i64 2147483647, align 8
@A = dso_local global i32 1103515245, align 4
@C = dso_local global i32 12345, align 4
@.str = private unnamed_addr constant [32 x i8] c"TIME TO GET NEIGHBORS TOOK: %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"TIME TO GET WEIGHTSTOOK: %f\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"TIME TO SET ARRAYS TOOK: %f\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"TIME TO SET ERROR TOOK: %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"TIME TO GET LIKELIHOODS TOOK: %f\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"TIME TO GET EXP TOOK: %f\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"TIME TO SUM WEIGHTS TOOK: %f\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"TIME TO NORMALIZE WEIGHTS TOOK: %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"TIME TO MOVE OBJECT TOOK: %f\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"XE: %lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"YE: %lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"TIME TO CALC CUM SUM TOOK: %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"TIME TO CALC U TOOK: %f\0A\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"TIME TO CALC NEW ARRAY X AND Y TOOK: %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"TIME TO RESET WEIGHTS TOOK: %f\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"particle -x <dimX> -y <dimY> -z <Nfr> -np <Nparticles>\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"-np\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"ERROR: dimX input is incorrect\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"dimX must be > 0\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"ERROR: dimY input is incorrect\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"dimY must be > 0\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"ERROR: Number of frames input is incorrect\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"number of frames must be > 0\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"ERROR: Number of particles input is incorrect\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"Number of particles must be > 0\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"VIDEO SEQUENCE TOOK %f\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"PARTICLE FILTER TOOK %f\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"ENTIRE PROGRAM TOOK %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @get_time() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #5
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @elapsed_time(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub nsw i64 %5, %6
  %8 = sitofp i64 %7 to float
  %9 = fdiv float %8, 1.000000e+06
  ret float %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @roundDouble(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  store double %0, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = fptosi double %5 to i32
  store i32 %6, i32* %4, align 4
  %7 = load double, double* %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sitofp i32 %8 to double
  %10 = fsub double %7, %9
  %11 = fcmp olt double %10, 5.000000e-01
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = sitofp i32 %13 to double
  store double %14, double* %2, align 8
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = sitofp i32 %16 to double
  store double %18, double* %2, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load double, double* %2, align 8
  ret double %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @setIf(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %82, %6
  %17 = load i32, i32* %13, align 4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %85

21:                                               ; preds = %16
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %78, %21
  %23 = load i32, i32* %14, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %22
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %74, %27
  %29 = load i32, i32* %15, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %28
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %13, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %35, %37
  %39 = load i32*, i32** %12, align 8
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %38, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = add nsw i32 %41, %45
  %47 = load i32, i32* %15, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %34, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %33
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %13, align 4
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %57, %59
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %60, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %64, %66
  %68 = add nsw i32 %63, %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %56, i64 %71
  store i32 %55, i32* %72, align 4
  br label %73

73:                                               ; preds = %54, %33
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %28

77:                                               ; preds = %28
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %22

81:                                               ; preds = %22
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %16

85:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @randu(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @A, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %6, %11
  %13 = load i32, i32* @C, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @M, align 8
  %18 = srem i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to double
  %30 = load i64, i64* @M, align 8
  %31 = sitofp i64 %30 to double
  %32 = fdiv double %29, %31
  %33 = call double @llvm.fabs.f64(double %32)
  ret double %33
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @randn(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call double @randu(i32* %9, i32 %10)
  store double %11, double* %5, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call double @randu(i32* %12, i32 %13)
  store double %14, double* %6, align 8
  %15 = load double, double* %6, align 8
  %16 = fmul double 0x401921FB54442D18, %15
  %17 = call double @cos(double %16) #5
  store double %17, double* %7, align 8
  %18 = load double, double* %5, align 8
  %19 = call double @log(double %18) #5
  %20 = fmul double -2.000000e+00, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %8, align 8
  %22 = call double @sqrt(double %21) #5
  %23 = load double, double* %7, align 8
  %24 = fmul double %22, %23
  ret double %24
}

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @addNoise(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %80, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %83

19:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %76, %19
  %21 = load i32, i32* %12, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %72, %25
  %27 = load i32, i32* %13, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %26
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %33, %35
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %36, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %40, %42
  %44 = add nsw i32 %39, %43
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %32, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = call double @randn(i32* %50, i32 0)
  %52 = fmul double 5.000000e+00, %51
  %53 = fptosi double %52 to i32
  %54 = add nsw i32 %49, %53
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %56, %58
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %59, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = add nsw i32 %62, %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %55, i64 %70
  store i32 %54, i32* %71, align 4
  br label %72

72:                                               ; preds = %31
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %26

75:                                               ; preds = %26
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %20

79:                                               ; preds = %20
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %14

83:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @strelDisk(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = mul nsw i32 %9, 2
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %57

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %50, %16
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 %22, %23
  %25 = add nsw i32 %24, 1
  %26 = sitofp i32 %25 to double
  %27 = call double @pow(double %26, double 2.000000e+00) #5
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  %31 = add nsw i32 %30, 1
  %32 = sitofp i32 %31 to double
  %33 = call double @pow(double %32, double 2.000000e+00) #5
  %34 = fadd double %27, %33
  %35 = call double @sqrt(double %34) #5
  store double %35, double* %8, align 8
  %36 = load double, double* %8, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sitofp i32 %37 to double
  %39 = fcmp olt double %36, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %21
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %21
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %17

53:                                               ; preds = %17
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %12

57:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dilate_matrix(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %16, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %17, align 4
  br label %27

27:                                               ; preds = %30, %8
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %17, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %17, align 4
  br label %27

33:                                               ; preds = %27
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %16, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %40, %33
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  br label %37

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %51, %43
  %48 = load i32, i32* %19, align 4
  %49 = load i32, i32* %13, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %19, align 4
  br label %47

54:                                               ; preds = %47
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %20, align 4
  br label %58

58:                                               ; preds = %62, %54
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %20, align 4
  br label %58

65:                                               ; preds = %58
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %21, align 4
  br label %67

67:                                               ; preds = %114, %65
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  %72 = load i32, i32* %18, align 4
  store i32 %72, i32* %22, align 4
  br label %73

73:                                               ; preds = %110, %71
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %73
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sitofp i32 %80 to double
  %82 = call double @pow(double %81, double 2.000000e+00) #5
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sitofp i32 %85 to double
  %87 = call double @pow(double %86, double 2.000000e+00) #5
  %88 = fadd double %82, %87
  %89 = call double @sqrt(double %88) #5
  store double %89, double* %23, align 8
  %90 = load double, double* %23, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sitofp i32 %91 to double
  %93 = fcmp olt double %90, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %77
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %14, align 4
  %98 = mul nsw i32 %96, %97
  %99 = load i32, i32* %15, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %15, align 4
  %103 = mul nsw i32 %101, %102
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %95, i64 %107
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %94, %77
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %73

113:                                              ; preds = %73
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %21, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %21, align 4
  br label %67

117:                                              ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @imdilate_disk(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %65, %6
  %17 = load i32, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %61, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %21
  store i32 0, i32* %14, align 4
  br label %26

26:                                               ; preds = %57, %25
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %60

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %36, %39
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %31, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %56

47:                                               ; preds = %30
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  call void @dilate_matrix(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  br label %56

56:                                               ; preds = %47, %30
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %14, align 4
  br label %26

60:                                               ; preds = %26
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %21

64:                                               ; preds = %21
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %16

68:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getneighbors(i32* %0, i32 %1, double* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = mul nsw i32 %16, 2
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %66, %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %62, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %65

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %13, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %29, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sitofp i32 %42 to double
  %44 = load double*, double** %7, align 8
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %44, i64 %47
  store double %43, double* %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sitofp i32 %51 to double
  %53 = load double*, double** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = mul nsw i32 %54, 2
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %53, i64 %57
  store double %52, double* %58, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %39, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %24

65:                                               ; preds = %24
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %19

69:                                               ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @videoSequence(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sitofp i32 %26 to double
  %28 = fdiv double %27, 2.000000e+00
  %29 = call double @roundDouble(double %28)
  %30 = fptosi double %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 2.000000e+00
  %34 = call double @roundDouble(double %33)
  %35 = fptosi double %34 to i32
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = mul nsw i32 %42, %43
  %45 = add nsw i32 %41, %44
  %46 = add nsw i32 %45, 0
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %36, i64 %47
  store i32 1, i32* %48, align 4
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %85, %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %11, align 4
  %56 = sub nsw i32 %55, 1
  %57 = add nsw i32 %54, %56
  %58 = call i32 @abs(i32 %57) #6
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %60, 1
  %62 = mul nsw i32 2, %61
  %63 = sub nsw i32 %59, %62
  %64 = call i32 @abs(i32 %63) #6
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %69, %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %53
  store i32 0, i32* %17, align 4
  br label %80

80:                                               ; preds = %79, %53
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %49

88:                                               ; preds = %49
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 4, %90
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 %91, %93
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %94, %96
  %98 = call noalias i8* @malloc(i64 %97) #5
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %18, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32*, i32** %18, align 8
  call void @imdilate_disk(i32* %100, i32 %101, i32 %102, i32 %103, i32 5, i32* %104)
  store i32 0, i32* %19, align 4
  br label %105

105:                                              ; preds = %157, %88
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %160

109:                                              ; preds = %105
  store i32 0, i32* %20, align 4
  br label %110

110:                                              ; preds = %153, %109
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %156

114:                                              ; preds = %110
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %149, %114
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %152

119:                                              ; preds = %115
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %9, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load i32, i32* %20, align 4
  %127 = load i32, i32* %9, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %125, %128
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %129, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %120, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %136, %137
  %139 = load i32, i32* %9, align 4
  %140 = mul nsw i32 %138, %139
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %9, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %135, i64 %147
  store i32 %134, i32* %148, align 4
  br label %149

149:                                              ; preds = %119
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %115

152:                                              ; preds = %115
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %20, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %20, align 4
  br label %110

156:                                              ; preds = %110
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %19, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %105

160:                                              ; preds = %105
  %161 = load i32*, i32** %18, align 8
  %162 = bitcast i32* %161 to i8*
  call void @free(i8* %162) #5
  %163 = load i32*, i32** %6, align 8
  call void @setIf(i32 0, i32 100, i32* %163, i32* %7, i32* %8, i32* %9)
  %164 = load i32*, i32** %6, align 8
  call void @setIf(i32 1, i32 228, i32* %164, i32* %7, i32* %8, i32* %9)
  %165 = load i32*, i32** %6, align 8
  %166 = load i32*, i32** %10, align 8
  call void @addNoise(i32* %165, i32* %7, i32* %8, i32* %9, i32* %166)
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @calcLikelihoodSum(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %42, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 100
  %24 = sitofp i32 %23 to double
  %25 = call double @pow(double %24, double 2.000000e+00) #5
  %26 = load i32*, i32** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %26, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 228
  %36 = sitofp i32 %35 to double
  %37 = call double @pow(double %36, double 2.000000e+00) #5
  %38 = fsub double %25, %37
  %39 = fdiv double %38, 5.000000e+01
  %40 = load double, double* %7, align 8
  %41 = fadd double %40, %39
  store double %41, double* %7, align 8
  br label %42

42:                                               ; preds = %13
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load double, double* %7, align 8
  ret double %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findIndex(double* %0, i32 %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load double*, double** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds double, double* %15, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load double, double* %7, align 8
  %21 = fcmp oge double %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %8, align 4
  br label %28

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

28:                                               ; preds = %22, %10
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findIndexBin(double* %0, i32 %1, i32 %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store double* %0, double** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %99

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %10, align 4
  %22 = load double*, double** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %9, align 8
  %28 = fcmp oge double %26, %27
  br i1 %28, label %29, label %77

29:                                               ; preds = %15
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %99

34:                                               ; preds = %29
  %35 = load double*, double** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %35, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double, double* %9, align 8
  %42 = fcmp olt double %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %5, align 4
  br label %99

45:                                               ; preds = %34
  %46 = load double*, double** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds double, double* %46, i64 %49
  %51 = load double, double* %50, align 8
  %52 = load double, double* %9, align 8
  %53 = fcmp oeq double %51, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load double*, double** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  %64 = load double, double* %63, align 8
  %65 = load double, double* %9, align 8
  %66 = fcmp oeq double %64, %65
  br label %67

67:                                               ; preds = %58, %55
  %68 = phi i1 [ false, %55 ], [ %66, %58 ]
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %10, align 4
  br label %55

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %5, align 4
  br label %99

74:                                               ; preds = %45
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76, %15
  %78 = load double*, double** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = load double, double* %9, align 8
  %84 = fcmp ogt double %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load double*, double** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  %90 = load double, double* %9, align 8
  %91 = call i32 @findIndexBin(double* %86, i32 %87, i32 %89, double %90)
  store i32 %91, i32* %5, align 4
  br label %99

92:                                               ; preds = %77
  %93 = load double*, double** %6, align 8
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %8, align 4
  %97 = load double, double* %9, align 8
  %98 = call i32 @findIndexBin(double* %93, i32 %95, i32 %96, double %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %92, %85, %72, %43, %32, %14
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @particleFilter(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca i64, align 8
  %25 = alloca double*, align 8
  %26 = alloca i64, align 8
  %27 = alloca double*, align 8
  %28 = alloca double*, align 8
  %29 = alloca double*, align 8
  %30 = alloca double*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  %42 = alloca double, align 8
  %43 = alloca i64, align 8
  %44 = alloca i64, align 8
  %45 = alloca i64, align 8
  %46 = alloca double, align 8
  %47 = alloca i64, align 8
  %48 = alloca double, align 8
  %49 = alloca i64, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i64, align 8
  %53 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = call i64 @get_time()
  store i64 %59, i64* %14, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, 2.000000e+00
  %63 = call double @roundDouble(double %62)
  store double %63, double* %15, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %65, 2.000000e+00
  %67 = call double @roundDouble(double %66)
  store double %67, double* %16, align 8
  store i32 5, i32* %17, align 4
  %68 = load i32, i32* %17, align 4
  %69 = mul nsw i32 %68, 2
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = mul i64 %74, 4
  %76 = call noalias i8* @malloc(i64 %75) #5
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %19, align 8
  %78 = load i32*, i32** %19, align 8
  %79 = load i32, i32* %17, align 4
  call void @strelDisk(i32* %78, i32 %79)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  br label %80

80:                                               ; preds = %108, %6
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  store i32 0, i32* %22, align 4
  br label %85

85:                                               ; preds = %104, %84
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %85
  %90 = load i32*, i32** %19, align 8
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %18, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %90, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %20, align 4
  br label %103

103:                                              ; preds = %100, %89
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %22, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %22, align 4
  br label %85

107:                                              ; preds = %85
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %21, align 4
  br label %80

111:                                              ; preds = %80
  %112 = load i32, i32* %20, align 4
  %113 = mul nsw i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 8
  %116 = call noalias i8* @malloc(i64 %115) #5
  %117 = bitcast i8* %116 to double*
  store double* %117, double** %23, align 8
  %118 = load i32*, i32** %19, align 8
  %119 = load i32, i32* %20, align 4
  %120 = load double*, double** %23, align 8
  %121 = load i32, i32* %17, align 4
  call void @getneighbors(i32* %118, i32 %119, double* %120, i32 %121)
  %122 = call i64 @get_time()
  store i64 %122, i64* %24, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load i64, i64* %24, align 8
  %125 = call float @elapsed_time(i64 %123, i64 %124)
  %126 = fpext float %125 to double
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), double %126)
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 8, %129
  %131 = call noalias i8* @malloc(i64 %130) #5
  %132 = bitcast i8* %131 to double*
  store double* %132, double** %25, align 8
  store i32 0, i32* %21, align 4
  br label %133

133:                                              ; preds = %145, %111
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double 1.000000e+00, %139
  %141 = load double*, double** %25, align 8
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double, double* %141, i64 %143
  store double %140, double* %144, align 8
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %21, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %21, align 4
  br label %133

148:                                              ; preds = %133
  %149 = call i64 @get_time()
  store i64 %149, i64* %26, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load i64, i64* %26, align 8
  %152 = call float @elapsed_time(i64 %150, i64 %151)
  %153 = fpext float %152 to double
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), double %153)
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = mul i64 8, %156
  %158 = call noalias i8* @malloc(i64 %157) #5
  %159 = bitcast i8* %158 to double*
  store double* %159, double** %27, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = mul i64 8, %161
  %163 = call noalias i8* @malloc(i64 %162) #5
  %164 = bitcast i8* %163 to double*
  store double* %164, double** %28, align 8
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = mul i64 8, %166
  %168 = call noalias i8* @malloc(i64 %167) #5
  %169 = bitcast i8* %168 to double*
  store double* %169, double** %29, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = mul i64 8, %171
  %173 = call noalias i8* @malloc(i64 %172) #5
  %174 = bitcast i8* %173 to double*
  store double* %174, double** %30, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 8, %176
  %178 = call noalias i8* @malloc(i64 %177) #5
  %179 = bitcast i8* %178 to double*
  store double* %179, double** %31, align 8
  %180 = load i32, i32* %12, align 4
  %181 = sext i32 %180 to i64
  %182 = mul i64 8, %181
  %183 = call noalias i8* @malloc(i64 %182) #5
  %184 = bitcast i8* %183 to double*
  store double* %184, double** %32, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 8, %186
  %188 = call noalias i8* @malloc(i64 %187) #5
  %189 = bitcast i8* %188 to double*
  store double* %189, double** %33, align 8
  %190 = load i32, i32* %20, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 4, %191
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %192, %194
  %196 = call noalias i8* @malloc(i64 %195) #5
  %197 = bitcast i8* %196 to i32*
  store i32* %197, i32** %34, align 8
  store i32 0, i32* %21, align 4
  br label %198

198:                                              ; preds = %213, %148
  %199 = load i32, i32* %21, align 4
  %200 = load i32, i32* %12, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %216

202:                                              ; preds = %198
  %203 = load double, double* %15, align 8
  %204 = load double*, double** %28, align 8
  %205 = load i32, i32* %21, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds double, double* %204, i64 %206
  store double %203, double* %207, align 8
  %208 = load double, double* %16, align 8
  %209 = load double*, double** %29, align 8
  %210 = load i32, i32* %21, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds double, double* %209, i64 %211
  store double %208, double* %212, align 8
  br label %213

213:                                              ; preds = %202
  %214 = load i32, i32* %21, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %21, align 4
  br label %198

216:                                              ; preds = %198
  %217 = load i64, i64* %26, align 8
  %218 = call i64 @get_time()
  %219 = call float @elapsed_time(i64 %217, i64 %218)
  %220 = fpext float %219 to double
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), double %220)
  store i32 1, i32* %35, align 4
  br label %222

222:                                              ; preds = %727, %216
  %223 = load i32, i32* %35, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %730

226:                                              ; preds = %222
  %227 = call i64 @get_time()
  store i64 %227, i64* %38, align 8
  store i32 0, i32* %21, align 4
  br label %228

228:                                              ; preds = %255, %226
  %229 = load i32, i32* %21, align 4
  %230 = load i32, i32* %12, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %258

232:                                              ; preds = %228
  %233 = load i32*, i32** %11, align 8
  %234 = load i32, i32* %21, align 4
  %235 = call double @randn(i32* %233, i32 %234)
  %236 = fmul double 5.000000e+00, %235
  %237 = fadd double 1.000000e+00, %236
  %238 = load double*, double** %28, align 8
  %239 = load i32, i32* %21, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds double, double* %238, i64 %240
  %242 = load double, double* %241, align 8
  %243 = fadd double %242, %237
  store double %243, double* %241, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = load i32, i32* %21, align 4
  %246 = call double @randn(i32* %244, i32 %245)
  %247 = fmul double 2.000000e+00, %246
  %248 = fadd double -2.000000e+00, %247
  %249 = load double*, double** %29, align 8
  %250 = load i32, i32* %21, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, double* %249, i64 %251
  %253 = load double, double* %252, align 8
  %254 = fadd double %253, %248
  store double %254, double* %252, align 8
  br label %255

255:                                              ; preds = %232
  %256 = load i32, i32* %21, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %21, align 4
  br label %228

258:                                              ; preds = %228
  %259 = call i64 @get_time()
  store i64 %259, i64* %39, align 8
  %260 = load i64, i64* %38, align 8
  %261 = load i64, i64* %39, align 8
  %262 = call float @elapsed_time(i64 %260, i64 %261)
  %263 = fpext float %262 to double
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), double %263)
  store i32 0, i32* %21, align 4
  br label %265

265:                                              ; preds = %416, %258
  %266 = load i32, i32* %21, align 4
  %267 = load i32, i32* %12, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %419

269:                                              ; preds = %265
  store i32 0, i32* %22, align 4
  br label %270

270:                                              ; preds = %347, %269
  %271 = load i32, i32* %22, align 4
  %272 = load i32, i32* %20, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %350

274:                                              ; preds = %270
  %275 = load double*, double** %28, align 8
  %276 = load i32, i32* %21, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds double, double* %275, i64 %277
  %279 = load double, double* %278, align 8
  %280 = call double @roundDouble(double %279)
  %281 = load double*, double** %23, align 8
  %282 = load i32, i32* %22, align 4
  %283 = mul nsw i32 %282, 2
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds double, double* %281, i64 %285
  %287 = load double, double* %286, align 8
  %288 = fadd double %280, %287
  %289 = fptosi double %288 to i32
  store i32 %289, i32* %36, align 4
  %290 = load double*, double** %29, align 8
  %291 = load i32, i32* %21, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds double, double* %290, i64 %292
  %294 = load double, double* %293, align 8
  %295 = call double @roundDouble(double %294)
  %296 = load double*, double** %23, align 8
  %297 = load i32, i32* %22, align 4
  %298 = mul nsw i32 %297, 2
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds double, double* %296, i64 %299
  %301 = load double, double* %300, align 8
  %302 = fadd double %295, %301
  %303 = fptosi double %302 to i32
  store i32 %303, i32* %37, align 4
  %304 = load i32, i32* %36, align 4
  %305 = load i32, i32* %9, align 4
  %306 = mul nsw i32 %304, %305
  %307 = load i32, i32* %10, align 4
  %308 = mul nsw i32 %306, %307
  %309 = load i32, i32* %37, align 4
  %310 = load i32, i32* %10, align 4
  %311 = mul nsw i32 %309, %310
  %312 = add nsw i32 %308, %311
  %313 = load i32, i32* %35, align 4
  %314 = add nsw i32 %312, %313
  %315 = sitofp i32 %314 to double
  %316 = call double @llvm.fabs.f64(double %315)
  %317 = fptosi double %316 to i32
  %318 = load i32*, i32** %34, align 8
  %319 = load i32, i32* %21, align 4
  %320 = load i32, i32* %20, align 4
  %321 = mul nsw i32 %319, %320
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %321, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %318, i64 %324
  store i32 %317, i32* %325, align 4
  %326 = load i32*, i32** %34, align 8
  %327 = load i32, i32* %21, align 4
  %328 = load i32, i32* %20, align 4
  %329 = mul nsw i32 %327, %328
  %330 = load i32, i32* %22, align 4
  %331 = add nsw i32 %329, %330
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %326, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %13, align 4
  %336 = icmp sge i32 %334, %335
  br i1 %336, label %337, label %346

337:                                              ; preds = %274
  %338 = load i32*, i32** %34, align 8
  %339 = load i32, i32* %21, align 4
  %340 = load i32, i32* %20, align 4
  %341 = mul nsw i32 %339, %340
  %342 = load i32, i32* %22, align 4
  %343 = add nsw i32 %341, %342
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %338, i64 %344
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %337, %274
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %22, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %22, align 4
  br label %270

350:                                              ; preds = %270
  %351 = load double*, double** %27, align 8
  %352 = load i32, i32* %21, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds double, double* %351, i64 %353
  store double 0.000000e+00, double* %354, align 8
  store i32 0, i32* %22, align 4
  br label %355

355:                                              ; preds = %400, %350
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* %20, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %403

359:                                              ; preds = %355
  %360 = load i32*, i32** %7, align 8
  %361 = load i32*, i32** %34, align 8
  %362 = load i32, i32* %21, align 4
  %363 = load i32, i32* %20, align 4
  %364 = mul nsw i32 %362, %363
  %365 = load i32, i32* %22, align 4
  %366 = add nsw i32 %364, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %361, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %360, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = sub nsw i32 %372, 100
  %374 = sitofp i32 %373 to double
  %375 = call double @pow(double %374, double 2.000000e+00) #5
  %376 = load i32*, i32** %7, align 8
  %377 = load i32*, i32** %34, align 8
  %378 = load i32, i32* %21, align 4
  %379 = load i32, i32* %20, align 4
  %380 = mul nsw i32 %378, %379
  %381 = load i32, i32* %22, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds i32, i32* %377, i64 %383
  %385 = load i32, i32* %384, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %376, i64 %386
  %388 = load i32, i32* %387, align 4
  %389 = sub nsw i32 %388, 228
  %390 = sitofp i32 %389 to double
  %391 = call double @pow(double %390, double 2.000000e+00) #5
  %392 = fsub double %375, %391
  %393 = fdiv double %392, 5.000000e+01
  %394 = load double*, double** %27, align 8
  %395 = load i32, i32* %21, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds double, double* %394, i64 %396
  %398 = load double, double* %397, align 8
  %399 = fadd double %398, %393
  store double %399, double* %397, align 8
  br label %400

400:                                              ; preds = %359
  %401 = load i32, i32* %22, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %22, align 4
  br label %355

403:                                              ; preds = %355
  %404 = load double*, double** %27, align 8
  %405 = load i32, i32* %21, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds double, double* %404, i64 %406
  %408 = load double, double* %407, align 8
  %409 = load i32, i32* %20, align 4
  %410 = sitofp i32 %409 to double
  %411 = fdiv double %408, %410
  %412 = load double*, double** %27, align 8
  %413 = load i32, i32* %21, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds double, double* %412, i64 %414
  store double %411, double* %415, align 8
  br label %416

416:                                              ; preds = %403
  %417 = load i32, i32* %21, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %21, align 4
  br label %265

419:                                              ; preds = %265
  %420 = call i64 @get_time()
  store i64 %420, i64* %40, align 8
  %421 = load i64, i64* %39, align 8
  %422 = load i64, i64* %40, align 8
  %423 = call float @elapsed_time(i64 %421, i64 %422)
  %424 = fpext float %423 to double
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), double %424)
  store i32 0, i32* %21, align 4
  br label %426

426:                                              ; preds = %447, %419
  %427 = load i32, i32* %21, align 4
  %428 = load i32, i32* %12, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %450

430:                                              ; preds = %426
  %431 = load double*, double** %25, align 8
  %432 = load i32, i32* %21, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds double, double* %431, i64 %433
  %435 = load double, double* %434, align 8
  %436 = load double*, double** %27, align 8
  %437 = load i32, i32* %21, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds double, double* %436, i64 %438
  %440 = load double, double* %439, align 8
  %441 = call double @exp(double %440) #5
  %442 = fmul double %435, %441
  %443 = load double*, double** %25, align 8
  %444 = load i32, i32* %21, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds double, double* %443, i64 %445
  store double %442, double* %446, align 8
  br label %447

447:                                              ; preds = %430
  %448 = load i32, i32* %21, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %21, align 4
  br label %426

450:                                              ; preds = %426
  %451 = call i64 @get_time()
  store i64 %451, i64* %41, align 8
  %452 = load i64, i64* %40, align 8
  %453 = load i64, i64* %41, align 8
  %454 = call float @elapsed_time(i64 %452, i64 %453)
  %455 = fpext float %454 to double
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), double %455)
  store double 0.000000e+00, double* %42, align 8
  store i32 0, i32* %21, align 4
  br label %457

457:                                              ; preds = %469, %450
  %458 = load i32, i32* %21, align 4
  %459 = load i32, i32* %12, align 4
  %460 = icmp slt i32 %458, %459
  br i1 %460, label %461, label %472

461:                                              ; preds = %457
  %462 = load double*, double** %25, align 8
  %463 = load i32, i32* %21, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds double, double* %462, i64 %464
  %466 = load double, double* %465, align 8
  %467 = load double, double* %42, align 8
  %468 = fadd double %467, %466
  store double %468, double* %42, align 8
  br label %469

469:                                              ; preds = %461
  %470 = load i32, i32* %21, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %21, align 4
  br label %457

472:                                              ; preds = %457
  %473 = call i64 @get_time()
  store i64 %473, i64* %43, align 8
  %474 = load i64, i64* %41, align 8
  %475 = load i64, i64* %43, align 8
  %476 = call float @elapsed_time(i64 %474, i64 %475)
  %477 = fpext float %476 to double
  %478 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), double %477)
  store i32 0, i32* %21, align 4
  br label %479

479:                                              ; preds = %495, %472
  %480 = load i32, i32* %21, align 4
  %481 = load i32, i32* %12, align 4
  %482 = icmp slt i32 %480, %481
  br i1 %482, label %483, label %498

483:                                              ; preds = %479
  %484 = load double*, double** %25, align 8
  %485 = load i32, i32* %21, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds double, double* %484, i64 %486
  %488 = load double, double* %487, align 8
  %489 = load double, double* %42, align 8
  %490 = fdiv double %488, %489
  %491 = load double*, double** %25, align 8
  %492 = load i32, i32* %21, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds double, double* %491, i64 %493
  store double %490, double* %494, align 8
  br label %495

495:                                              ; preds = %483
  %496 = load i32, i32* %21, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %21, align 4
  br label %479

498:                                              ; preds = %479
  %499 = call i64 @get_time()
  store i64 %499, i64* %44, align 8
  %500 = load i64, i64* %43, align 8
  %501 = load i64, i64* %44, align 8
  %502 = call float @elapsed_time(i64 %500, i64 %501)
  %503 = fpext float %502 to double
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), double %503)
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %21, align 4
  br label %505

505:                                              ; preds = %536, %498
  %506 = load i32, i32* %21, align 4
  %507 = load i32, i32* %12, align 4
  %508 = icmp slt i32 %506, %507
  br i1 %508, label %509, label %539

509:                                              ; preds = %505
  %510 = load double*, double** %28, align 8
  %511 = load i32, i32* %21, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds double, double* %510, i64 %512
  %514 = load double, double* %513, align 8
  %515 = load double*, double** %25, align 8
  %516 = load i32, i32* %21, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds double, double* %515, i64 %517
  %519 = load double, double* %518, align 8
  %520 = fmul double %514, %519
  %521 = load double, double* %15, align 8
  %522 = fadd double %521, %520
  store double %522, double* %15, align 8
  %523 = load double*, double** %29, align 8
  %524 = load i32, i32* %21, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds double, double* %523, i64 %525
  %527 = load double, double* %526, align 8
  %528 = load double*, double** %25, align 8
  %529 = load i32, i32* %21, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds double, double* %528, i64 %530
  %532 = load double, double* %531, align 8
  %533 = fmul double %527, %532
  %534 = load double, double* %16, align 8
  %535 = fadd double %534, %533
  store double %535, double* %16, align 8
  br label %536

536:                                              ; preds = %509
  %537 = load i32, i32* %21, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %21, align 4
  br label %505

539:                                              ; preds = %505
  %540 = call i64 @get_time()
  store i64 %540, i64* %45, align 8
  %541 = load i64, i64* %44, align 8
  %542 = load i64, i64* %45, align 8
  %543 = call float @elapsed_time(i64 %541, i64 %542)
  %544 = fpext float %543 to double
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %544)
  %546 = load double, double* %15, align 8
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), double %546)
  %548 = load double, double* %16, align 8
  %549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), double %548)
  %550 = load double, double* %15, align 8
  %551 = load i32, i32* %9, align 4
  %552 = sitofp i32 %551 to double
  %553 = fdiv double %552, 2.000000e+00
  %554 = call double @roundDouble(double %553)
  %555 = fptosi double %554 to i32
  %556 = sitofp i32 %555 to double
  %557 = fsub double %550, %556
  %558 = call double @pow(double %557, double 2.000000e+00) #5
  %559 = load double, double* %16, align 8
  %560 = load i32, i32* %8, align 4
  %561 = sitofp i32 %560 to double
  %562 = fdiv double %561, 2.000000e+00
  %563 = call double @roundDouble(double %562)
  %564 = fptosi double %563 to i32
  %565 = sitofp i32 %564 to double
  %566 = fsub double %559, %565
  %567 = call double @pow(double %566, double 2.000000e+00) #5
  %568 = fadd double %558, %567
  %569 = call double @sqrt(double %568) #5
  store double %569, double* %46, align 8
  %570 = load double, double* %46, align 8
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), double %570)
  %572 = load double*, double** %25, align 8
  %573 = getelementptr inbounds double, double* %572, i64 0
  %574 = load double, double* %573, align 8
  %575 = load double*, double** %32, align 8
  %576 = getelementptr inbounds double, double* %575, i64 0
  store double %574, double* %576, align 8
  store i32 1, i32* %21, align 4
  br label %577

577:                                              ; preds = %598, %539
  %578 = load i32, i32* %21, align 4
  %579 = load i32, i32* %12, align 4
  %580 = icmp slt i32 %578, %579
  br i1 %580, label %581, label %601

581:                                              ; preds = %577
  %582 = load double*, double** %25, align 8
  %583 = load i32, i32* %21, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds double, double* %582, i64 %584
  %586 = load double, double* %585, align 8
  %587 = load double*, double** %32, align 8
  %588 = load i32, i32* %21, align 4
  %589 = sub nsw i32 %588, 1
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds double, double* %587, i64 %590
  %592 = load double, double* %591, align 8
  %593 = fadd double %586, %592
  %594 = load double*, double** %32, align 8
  %595 = load i32, i32* %21, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds double, double* %594, i64 %596
  store double %593, double* %597, align 8
  br label %598

598:                                              ; preds = %581
  %599 = load i32, i32* %21, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %21, align 4
  br label %577

601:                                              ; preds = %577
  %602 = call i64 @get_time()
  store i64 %602, i64* %47, align 8
  %603 = load i64, i64* %45, align 8
  %604 = load i64, i64* %47, align 8
  %605 = call float @elapsed_time(i64 %603, i64 %604)
  %606 = fpext float %605 to double
  %607 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), double %606)
  %608 = load i32, i32* %12, align 4
  %609 = sitofp i32 %608 to double
  %610 = fdiv double 1.000000e+00, %609
  %611 = load i32*, i32** %11, align 8
  %612 = call double @randu(i32* %611, i32 0)
  %613 = fmul double %610, %612
  store double %613, double* %48, align 8
  store i32 0, i32* %21, align 4
  br label %614

614:                                              ; preds = %630, %601
  %615 = load i32, i32* %21, align 4
  %616 = load i32, i32* %12, align 4
  %617 = icmp slt i32 %615, %616
  br i1 %617, label %618, label %633

618:                                              ; preds = %614
  %619 = load double, double* %48, align 8
  %620 = load i32, i32* %21, align 4
  %621 = sitofp i32 %620 to double
  %622 = load i32, i32* %12, align 4
  %623 = sitofp i32 %622 to double
  %624 = fdiv double %621, %623
  %625 = fadd double %619, %624
  %626 = load double*, double** %33, align 8
  %627 = load i32, i32* %21, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds double, double* %626, i64 %628
  store double %625, double* %629, align 8
  br label %630

630:                                              ; preds = %618
  %631 = load i32, i32* %21, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %21, align 4
  br label %614

633:                                              ; preds = %614
  %634 = call i64 @get_time()
  store i64 %634, i64* %49, align 8
  %635 = load i64, i64* %47, align 8
  %636 = load i64, i64* %49, align 8
  %637 = call float @elapsed_time(i64 %635, i64 %636)
  %638 = fpext float %637 to double
  %639 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), double %638)
  store i32 0, i32* %50, align 4
  br label %640

640:                                              ; preds = %677, %633
  %641 = load i32, i32* %50, align 4
  %642 = load i32, i32* %12, align 4
  %643 = icmp slt i32 %641, %642
  br i1 %643, label %644, label %680

644:                                              ; preds = %640
  %645 = load double*, double** %32, align 8
  %646 = load i32, i32* %12, align 4
  %647 = load double*, double** %33, align 8
  %648 = load i32, i32* %50, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds double, double* %647, i64 %649
  %651 = load double, double* %650, align 8
  %652 = call i32 @findIndex(double* %645, i32 %646, double %651)
  store i32 %652, i32* %51, align 4
  %653 = load i32, i32* %51, align 4
  %654 = icmp eq i32 %653, -1
  br i1 %654, label %655, label %658

655:                                              ; preds = %644
  %656 = load i32, i32* %12, align 4
  %657 = sub nsw i32 %656, 1
  store i32 %657, i32* %51, align 4
  br label %658

658:                                              ; preds = %655, %644
  %659 = load double*, double** %28, align 8
  %660 = load i32, i32* %51, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds double, double* %659, i64 %661
  %663 = load double, double* %662, align 8
  %664 = load double*, double** %30, align 8
  %665 = load i32, i32* %50, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds double, double* %664, i64 %666
  store double %663, double* %667, align 8
  %668 = load double*, double** %29, align 8
  %669 = load i32, i32* %51, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds double, double* %668, i64 %670
  %672 = load double, double* %671, align 8
  %673 = load double*, double** %31, align 8
  %674 = load i32, i32* %50, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds double, double* %673, i64 %675
  store double %672, double* %676, align 8
  br label %677

677:                                              ; preds = %658
  %678 = load i32, i32* %50, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %50, align 4
  br label %640

680:                                              ; preds = %640
  %681 = call i64 @get_time()
  store i64 %681, i64* %52, align 8
  %682 = load i64, i64* %49, align 8
  %683 = load i64, i64* %52, align 8
  %684 = call float @elapsed_time(i64 %682, i64 %683)
  %685 = fpext float %684 to double
  %686 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), double %685)
  store i32 0, i32* %21, align 4
  br label %687

687:                                              ; preds = %717, %680
  %688 = load i32, i32* %21, align 4
  %689 = load i32, i32* %12, align 4
  %690 = icmp slt i32 %688, %689
  br i1 %690, label %691, label %720

691:                                              ; preds = %687
  %692 = load double*, double** %30, align 8
  %693 = load i32, i32* %21, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds double, double* %692, i64 %694
  %696 = load double, double* %695, align 8
  %697 = load double*, double** %28, align 8
  %698 = load i32, i32* %21, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds double, double* %697, i64 %699
  store double %696, double* %700, align 8
  %701 = load double*, double** %31, align 8
  %702 = load i32, i32* %21, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds double, double* %701, i64 %703
  %705 = load double, double* %704, align 8
  %706 = load double*, double** %29, align 8
  %707 = load i32, i32* %21, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds double, double* %706, i64 %708
  store double %705, double* %709, align 8
  %710 = load i32, i32* %12, align 4
  %711 = sitofp i32 %710 to double
  %712 = fdiv double 1.000000e+00, %711
  %713 = load double*, double** %25, align 8
  %714 = load i32, i32* %21, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds double, double* %713, i64 %715
  store double %712, double* %716, align 8
  br label %717

717:                                              ; preds = %691
  %718 = load i32, i32* %21, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %21, align 4
  br label %687

720:                                              ; preds = %687
  %721 = call i64 @get_time()
  store i64 %721, i64* %53, align 8
  %722 = load i64, i64* %52, align 8
  %723 = load i64, i64* %53, align 8
  %724 = call float @elapsed_time(i64 %722, i64 %723)
  %725 = fpext float %724 to double
  %726 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), double %725)
  br label %727

727:                                              ; preds = %720
  %728 = load i32, i32* %35, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %35, align 4
  br label %222

730:                                              ; preds = %222
  %731 = load i32*, i32** %19, align 8
  %732 = bitcast i32* %731 to i8*
  call void @free(i8* %732) #5
  %733 = load double*, double** %23, align 8
  %734 = bitcast double* %733 to i8*
  call void @free(i8* %734) #5
  %735 = load double*, double** %25, align 8
  %736 = bitcast double* %735 to i8*
  call void @free(i8* %736) #5
  %737 = load double*, double** %27, align 8
  %738 = bitcast double* %737 to i8*
  call void @free(i8* %738) #5
  %739 = load double*, double** %30, align 8
  %740 = bitcast double* %739 to i8*
  call void @free(i8* %740) #5
  %741 = load double*, double** %31, align 8
  %742 = bitcast double* %741 to i8*
  call void @free(i8* %742) #5
  %743 = load double*, double** %28, align 8
  %744 = bitcast double* %743 to i8*
  call void @free(i8* %744) #5
  %745 = load double*, double** %29, align 8
  %746 = bitcast double* %745 to i8*
  call void @free(i8* %746) #5
  %747 = load double*, double** %32, align 8
  %748 = bitcast double* %747 to i8*
  call void @free(i8* %748) #5
  %749 = load double*, double** %33, align 8
  %750 = bitcast double* %749 to i8*
  call void @free(i8* %750) #5
  %751 = load i32*, i32** %34, align 8
  %752 = bitcast i32* %751 to i8*
  call void @free(i8* %752) #5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0), i8** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %167

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %46, label %28

28:                                               ; preds = %22
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 3
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %28
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 5
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 7
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34, %28, %22
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %47)
  store i32 0, i32* %3, align 4
  br label %167

49:                                               ; preds = %40
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32* %7) #5
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

62:                                               ; preds = %57
  %63 = load i8**, i8*** %5, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 4
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32* %8) #5
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.25, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

75:                                               ; preds = %70
  %76 = load i8**, i8*** %5, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 6
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32* %9) #5
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

83:                                               ; preds = %75
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

88:                                               ; preds = %83
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32* %10) #5
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %167

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 4, %103
  %105 = call noalias i8* @malloc(i64 %104) #5
  %106 = bitcast i8* %105 to i32*
  store i32* %106, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %119, %101
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = call i32 (i32, ...) bitcast (i32 (...)* @time to i32 (i32, ...)*)(i32 0)
  %113 = load i32, i32* %12, align 4
  %114 = mul nsw i32 %112, %113
  %115 = load i32*, i32** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %107

122:                                              ; preds = %107
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 4, %124
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = mul i64 %125, %127
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = mul i64 %128, %130
  %132 = call noalias i8* @malloc(i64 %131) #5
  %133 = bitcast i8* %132 to i32*
  store i32* %133, i32** %13, align 8
  %134 = call i64 @get_time()
  store i64 %134, i64* %14, align 8
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32*, i32** %11, align 8
  call void @videoSequence(i32* %135, i32 %136, i32 %137, i32 %138, i32* %139)
  %140 = call i64 @get_time()
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call float @elapsed_time(i64 %141, i64 %142)
  %144 = fpext float %143 to double
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), double %144)
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %10, align 4
  call void @particleFilter(i32* %146, i32 %147, i32 %148, i32 %149, i32* %150, i32 %151)
  %152 = call i64 @get_time()
  store i64 %152, i64* %16, align 8
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %16, align 8
  %155 = call float @elapsed_time(i64 %153, i64 %154)
  %156 = fpext float %155 to double
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), double %156)
  %158 = load i64, i64* %14, align 8
  %159 = load i64, i64* %16, align 8
  %160 = call float @elapsed_time(i64 %158, i64 %159)
  %161 = fpext float %160 to double
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), double %161)
  %163 = load i32*, i32** %11, align 8
  %164 = bitcast i32* %163 to i8*
  call void @free(i8* %164) #5
  %165 = load i32*, i32** %13, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* %166) #5
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %122, %99, %94, %86, %81, %73, %68, %60, %55, %46, %19
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare dso_local i32 @time(...) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
