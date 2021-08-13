; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@seed = internal global i64 1325, align 8
@.str = private unnamed_addr constant [4 x i8] c"-ga\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\0Alpbench (Std. C) run time: %f\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(double** %0, double* %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double** %0, double*** %3, align 8
  store double* %1, double** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 2000
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 2000
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = call double @random_double()
  %16 = load double**, double*** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double*, double** %16, i64 %18
  %20 = load double*, double** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %20, i64 %22
  store double %15, double* %23, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %11

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 2000
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load double*, double** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  store double 0.000000e+00, double* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %32

43:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %71, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 2000
  br i1 %46, label %47, label %74

47:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 2000
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load double**, double*** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double*, double** %52, i64 %54
  %56 = load double*, double** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = load double*, double** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = fadd double %65, %60
  store double %66, double* %64, align 8
  br label %67

67:                                               ; preds = %51
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %44

74:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @random_double() #0 {
  %1 = alloca i64, align 8
  %2 = alloca double, align 8
  %3 = load i64, i64* @seed, align 8
  %4 = xor i64 %3, 123459876
  store i64 %4, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %6 = sdiv i64 %5, 127773
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* @seed, align 8
  %8 = load i64, i64* %1, align 8
  %9 = mul nsw i64 %8, 127773
  %10 = sub nsw i64 %7, %9
  %11 = mul nsw i64 16807, %10
  %12 = load i64, i64* %1, align 8
  %13 = mul nsw i64 2836, %12
  %14 = sub nsw i64 %11, %13
  store i64 %14, i64* @seed, align 8
  %15 = load i64, i64* @seed, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i64, i64* @seed, align 8
  %19 = add nsw i64 %18, 2147483647
  store i64 %19, i64* @seed, align 8
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i64, i64* @seed, align 8
  %22 = sitofp i64 %21 to double
  %23 = fmul double 0x3E00000000200FE1, %22
  store double %23, double* %2, align 8
  %24 = load i64, i64* @seed, align 8
  %25 = xor i64 %24, 123459876
  store i64 %25, i64* @seed, align 8
  %26 = load double, double* %2, align 8
  ret double %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 %0, double* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 -1, i32* %13, align 4
  br label %93

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 0, i32* %13, align 4
  br label %92

21:                                               ; preds = %17
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %21
  %25 = load double*, double** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = call double @llvm.fabs.f64(double %29)
  store double %30, double* %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 1, %31
  store i32 %32, i32* %12, align 4
  store i32 1, i32* %11, align 4
  br label %33

33:                                               ; preds = %56, %24
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load double*, double** %6, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %38, i64 %42
  %44 = load double, double* %43, align 8
  %45 = call double @llvm.fabs.f64(double %44)
  store double %45, double* %10, align 8
  %46 = load double, double* %10, align 8
  %47 = load double, double* %9, align 8
  %48 = fcmp ogt double %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %13, align 4
  %51 = load double, double* %10, align 8
  store double %51, double* %9, align 8
  br label %52

52:                                               ; preds = %49, %37
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %33

59:                                               ; preds = %33
  br label %91

60:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  %61 = load double*, double** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = call double @llvm.fabs.f64(double %65)
  store double %66, double* %9, align 8
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %87, %60
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %67
  %72 = load double*, double** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %72, i64 %76
  %78 = load double, double* %77, align 8
  %79 = call double @llvm.fabs.f64(double %78)
  store double %79, double* %10, align 8
  %80 = load double, double* %10, align 8
  %81 = load double, double* %9, align 8
  %82 = fcmp ogt double %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %13, align 4
  %85 = load double, double* %10, align 8
  store double %85, double* %9, align 8
  br label %86

86:                                               ; preds = %83, %71
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %67

90:                                               ; preds = %67
  br label %91

91:                                               ; preds = %90, %59
  br label %92

92:                                               ; preds = %91, %20
  br label %93

93:                                               ; preds = %92, %16
  %94 = load i32, i32* %13, align 4
  ret i32 %94
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 %0, double %1, double* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store double* %2, double** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %61

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %36, %18
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load double, double* %7, align 8
  %28 = load double*, double** %8, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %28, i64 %32
  %34 = load double, double* %33, align 8
  %35 = fmul double %34, %27
  store double %35, double* %33, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %11, align 4
  br label %22

40:                                               ; preds = %22
  br label %60

41:                                               ; preds = %15
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load double, double* %7, align 8
  %48 = load double*, double** %8, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %48, i64 %52
  %54 = load double, double* %53, align 8
  %55 = fmul double %54, %47
  store double %55, double* %53, align 8
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %42

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 %0, double %1, double* %2, i32 %3, i32 %4, double* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store double %1, double* %10, align 8
  store double* %2, double** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store double* %5, double** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %108

22:                                               ; preds = %8
  %23 = load double, double* %10, align 8
  %24 = fcmp une double %23, 0.000000e+00
  br i1 %24, label %25, label %108

25:                                               ; preds = %22
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %80

31:                                               ; preds = %28, %25
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 1, %35
  %37 = load i32, i32* %13, align 4
  %38 = mul nsw i32 %36, %37
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* %16, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 1, %43
  %45 = load i32, i32* %16, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %42, %39
  store i32 0, i32* %17, align 4
  br label %48

48:                                               ; preds = %76, %47
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %48
  %53 = load double, double* %10, align 8
  %54 = load double*, double** %11, align 8
  %55 = load i32, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %54, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %53, %60
  %62 = load double*, double** %14, align 8
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %62, i64 %66
  %68 = load double, double* %67, align 8
  %69 = fadd double %68, %61
  store double %69, double* %67, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %18, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %52
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %17, align 4
  br label %48

79:                                               ; preds = %48
  br label %108

80:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load double, double* %10, align 8
  %87 = load double*, double** %11, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %87, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fmul double %86, %93
  %95 = load double*, double** %14, align 8
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %95, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fadd double %101, %94
  store double %102, double* %100, align 8
  br label %103

103:                                              ; preds = %85
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %81

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107, %79, %22, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(double** %0, i32* %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  store double** %0, double*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %123, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %126

15:                                               ; preds = %12
  %16 = load double**, double*** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double*, double** %16, i64 %18
  %20 = load double*, double** %19, align 8
  store double* %20, double** %8, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 2000, %23
  %25 = load double*, double** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @idamax(i32 %24, double* %25, i32 %26, i32 1)
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  %35 = load double*, double** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fcmp une double %39, 0.000000e+00
  br i1 %40, label %41, label %122

41:                                               ; preds = %15
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load double*, double** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double, double* %46, i64 %48
  %50 = load double, double* %49, align 8
  store double %50, double* %5, align 8
  %51 = load double*, double** %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  %60 = load double, double* %5, align 8
  %61 = load double*, double** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  br label %65

65:                                               ; preds = %45, %41
  %66 = load double*, double** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %66, i64 %68
  %70 = load double, double* %69, align 8
  %71 = fdiv double -1.000000e+00, %70
  store double %71, double* %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 2000, %72
  %74 = load double, double* %5, align 8
  %75 = load double*, double** %8, align 8
  %76 = load i32, i32* %9, align 4
  call void @dscal(i32 %73, double %74, double* %75, i32 %76, i32 1)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %118, %65
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 2000
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load double**, double*** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  store double* %86, double** %11, align 8
  %87 = load double*, double** %11, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %87, i64 %89
  %91 = load double, double* %90, align 8
  store double %91, double* %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %81
  %96 = load double*, double** %11, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = load double*, double** %11, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %101, i64 %103
  store double %100, double* %104, align 8
  %105 = load double, double* %5, align 8
  %106 = load double*, double** %11, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds double, double* %106, i64 %108
  store double %105, double* %109, align 8
  br label %110

110:                                              ; preds = %95, %81
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 2000, %111
  %113 = load double, double* %5, align 8
  %114 = load double*, double** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load double*, double** %11, align 8
  %117 = load i32, i32* %9, align 4
  call void @daxpy(i32 %112, double %113, double* %114, i32 %115, i32 1, double* %116, i32 %117, i32 1)
  br label %118

118:                                              ; preds = %110
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %78

121:                                              ; preds = %78
  br label %122

122:                                              ; preds = %121, %15
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %12

126:                                              ; preds = %12
  %127 = load i32*, i32** %4, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1999
  store i32 1999, i32* %128, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(double** %0, i32* %1, double* %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double** %0, double*** %4, align 8
  store i32* %1, i32** %5, align 8
  store double* %2, double** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %58, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 1999
  br i1 %14, label %15, label %61

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load double*, double** %6, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  store double %25, double* %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %15
  %30 = load double*, double** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double*, double** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  store double %34, double* %38, align 8
  %39 = load double, double* %7, align 8
  %40 = load double*, double** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %40, i64 %42
  store double %39, double* %43, align 8
  br label %44

44:                                               ; preds = %29, %15
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub nsw i32 2000, %47
  %49 = load double, double* %7, align 8
  %50 = load double**, double*** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double*, double** %50, i64 %52
  %54 = load double*, double** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load double*, double** %6, align 8
  %57 = load i32, i32* %11, align 4
  call void @daxpy(i32 %48, double %49, double* %54, i32 %55, i32 1, double* %56, i32 %57, i32 1)
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %12

61:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %98, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 2000
  br i1 %64, label %65, label %101

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = sub nsw i32 2000, %67
  store i32 %68, i32* %8, align 4
  %69 = load double**, double*** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds double*, double** %69, i64 %71
  %73 = load double*, double** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %73, i64 %75
  %77 = load double, double* %76, align 8
  %78 = load double*, double** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  %83 = fdiv double %82, %77
  store double %83, double* %81, align 8
  %84 = load double*, double** %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fneg double %88
  store double %89, double* %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load double, double* %7, align 8
  %92 = load double**, double*** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double*, double** %92, i64 %94
  %96 = load double*, double** %95, align 8
  %97 = load double*, double** %6, align 8
  call void @daxpy(i32 %90, double %91, double* %96, i32 0, i32 1, double* %97, i32 0, i32 1)
  br label %98

98:                                               ; preds = %65
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %62

101:                                              ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca double**, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8 0, i8* %7, align 1
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #5
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i8 1, i8* %7, align 1
  br label %32

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %17

32:                                               ; preds = %27, %17
  br label %33

33:                                               ; preds = %32, %2
  %34 = call noalias i8* @malloc(i64 16000) #6
  %35 = bitcast i8* %34 to double**
  store double** %35, double*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %46, %33
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = call noalias i8* @malloc(i64 16008) #6
  %41 = bitcast i8* %40 to double*
  %42 = load double**, double*** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds double*, double** %42, i64 %44
  store double* %41, double** %45, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %36

49:                                               ; preds = %36
  %50 = call noalias i8* @malloc(i64 16000) #6
  %51 = bitcast i8* %50 to double*
  store double* %51, double** %9, align 8
  %52 = call noalias i8* @malloc(i64 16000) #6
  %53 = bitcast i8* %52 to double*
  store double* %53, double** %10, align 8
  %54 = call noalias i8* @malloc(i64 8000) #6
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %11, align 8
  store double 0x41F3E5E475555555, double* %12, align 8
  %56 = load double**, double*** %8, align 8
  %57 = load double*, double** %9, align 8
  call void @matgen(double** %56, double* %57)
  %58 = load double**, double*** %8, align 8
  %59 = load i32*, i32** %11, align 8
  call void @dgefa(double** %58, i32* %59)
  %60 = load double**, double*** %8, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = load double*, double** %9, align 8
  call void @dgesl(double** %60, i32* %61, double* %62)
  store double 0.000000e+00, double* %13, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = bitcast i32* %63 to i8*
  call void @free(i8* %64) #6
  %65 = load double*, double** %10, align 8
  %66 = bitcast double* %65 to i8*
  call void @free(i8* %66) #6
  %67 = load double*, double** %9, align 8
  %68 = bitcast double* %67 to i8*
  call void @free(i8* %68) #6
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %79, %49
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 2000
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load double**, double*** %8, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double*, double** %73, i64 %75
  %77 = load double*, double** %76, align 8
  %78 = bitcast double* %77 to i8*
  call void @free(i8* %78) #6
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %69

82:                                               ; preds = %69
  %83 = load double**, double*** %8, align 8
  %84 = bitcast double** %83 to i8*
  call void @free(i8* %84) #6
  %85 = load i8, i8* %7, align 1
  %86 = trunc i8 %85 to i1
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %89 = load double, double* %13, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), double %89)
  br label %95

91:                                               ; preds = %82
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %93 = load double, double* %13, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), double %93)
  br label %95

95:                                               ; preds = %91, %87
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = call i32 @fflush(%struct._IO_FILE* %96)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare dso_local i32 @fflush(%struct._IO_FILE*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
