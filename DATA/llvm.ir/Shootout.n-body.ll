; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.body = type { [3 x double], [3 x double], double }

@solar_Bodies = internal global [5 x %struct.body] [%struct.body { [3 x double] zeroinitializer, [3 x double] zeroinitializer, double 0x4043BD3CC9BE45DE }, %struct.body { [3 x double] [double 0x40135DA0343CD92C, double 0xBFF290ABC01FDB7C, double 0xBFBA86F96C25EBF0], [3 x double] [double 0x3FE367069B93CCBC, double 0x40067EF2F57D949B, double 0xBF99D2D79A5A0715], double 0x3FA34C95D9AB33D8 }, %struct.body { [3 x double] [double 0x4020AFCDC332CA67, double 0x40107FCB31DE01B0, double 0xBFD9D353E1EB467C], [3 x double] [double 0xBFF02C21B8879442, double 0x3FFD35E9BF1F8F13, double 0x3F813C485F1123B4], double 0x3F871D490D07C637 }, %struct.body { [3 x double] [double 0x4029C9EACEA7D9CF, double 0xC02E38E8D626667E, double 0xBFCC9557BE257DA0], [3 x double] [double 0x3FF1531CA9911BEF, double 0x3FEBCC7F3E54BBC5, double 0xBF862F6BFAF23E7C], double 0x3F5C3DD29CF41EB3 }, %struct.body { [3 x double] [double 0x402EC267A905572A, double 0xC039EB5833C8A220, double 0x3FC6F1F393ABE540], [3 x double] [double 0x3FEF54B61659BC4A, double 0x3FE307C631C4FBA3, double 0xBFA1CB88587665F6], double 0x3F60A8F3531799AC }], align 16
@advance.position_Deltas = internal global [3 x [10 x double]] zeroinitializer, align 16
@advance.magnitudes = internal global [10 x double] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @offset_Momentum(%struct.body* getelementptr inbounds ([5 x %struct.body], [5 x %struct.body]* @solar_Bodies, i64 0, i64 0))
  call void @output_Energy(%struct.body* getelementptr inbounds ([5 x %struct.body], [5 x %struct.body]* @solar_Bodies, i64 0, i64 0))
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 1
  %9 = load i8*, i8** %8, align 8
  %10 = call i32 @atoi(i8* %9) #6
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %17, %2
  %13 = load i64, i64* %6, align 8
  %14 = add nsw i64 %13, -1
  store i64 %14, i64* %6, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  br label %17

17:                                               ; preds = %16
  call void @advance(%struct.body* getelementptr inbounds ([5 x %struct.body], [5 x %struct.body]* @solar_Bodies, i64 0, i64 0))
  br label %12

18:                                               ; preds = %12
  call void @output_Energy(%struct.body* getelementptr inbounds ([5 x %struct.body], [5 x %struct.body]* @solar_Bodies, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal void @offset_Momentum(%struct.body* %0) #0 {
  %2 = alloca %struct.body*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.body* %0, %struct.body** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i64, i64* %3, align 8
  %7 = icmp slt i64 %6, 5
  br i1 %7, label %8, label %41

8:                                                ; preds = %5
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %34, %8
  %10 = load i64, i64* %4, align 8
  %11 = icmp slt i64 %10, 3
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load %struct.body*, %struct.body** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct.body, %struct.body* %13, i64 %14
  %16 = getelementptr inbounds %struct.body, %struct.body* %15, i32 0, i32 1
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds [3 x double], [3 x double]* %16, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  %20 = load %struct.body*, %struct.body** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.body, %struct.body* %20, i64 %21
  %23 = getelementptr inbounds %struct.body, %struct.body* %22, i32 0, i32 2
  %24 = load double, double* %23, align 8
  %25 = fmul double %19, %24
  %26 = fdiv double %25, 0x4043BD3CC9BE45DE
  %27 = load %struct.body*, %struct.body** %2, align 8
  %28 = getelementptr inbounds %struct.body, %struct.body* %27, i64 0
  %29 = getelementptr inbounds %struct.body, %struct.body* %28, i32 0, i32 1
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fsub double %32, %26
  store double %33, double* %31, align 8
  br label %34

34:                                               ; preds = %12
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %4, align 8
  br label %9

37:                                               ; preds = %9
  br label %38

38:                                               ; preds = %37
  %39 = load i64, i64* %3, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %3, align 8
  br label %5

41:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_Energy(%struct.body* %0) #0 {
  %2 = alloca %struct.body*, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [3 x double], align 16
  %7 = alloca i64, align 8
  store %struct.body* %0, %struct.body** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %129, %1
  %9 = load i64, i64* %4, align 8
  %10 = icmp slt i64 %9, 5
  br i1 %10, label %11, label %132

11:                                               ; preds = %8
  %12 = load %struct.body*, %struct.body** %2, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds %struct.body, %struct.body* %12, i64 %13
  %15 = getelementptr inbounds %struct.body, %struct.body* %14, i32 0, i32 2
  %16 = load double, double* %15, align 8
  %17 = fmul double 5.000000e-01, %16
  %18 = load %struct.body*, %struct.body** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.body, %struct.body* %18, i64 %19
  %21 = getelementptr inbounds %struct.body, %struct.body* %20, i32 0, i32 1
  %22 = getelementptr inbounds [3 x double], [3 x double]* %21, i64 0, i64 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.body*, %struct.body** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.body, %struct.body* %24, i64 %25
  %27 = getelementptr inbounds %struct.body, %struct.body* %26, i32 0, i32 1
  %28 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 0, i64 0
  %29 = load double, double* %28, align 8
  %30 = fmul double %23, %29
  %31 = load %struct.body*, %struct.body** %2, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct.body, %struct.body* %31, i64 %32
  %34 = getelementptr inbounds %struct.body, %struct.body* %33, i32 0, i32 1
  %35 = getelementptr inbounds [3 x double], [3 x double]* %34, i64 0, i64 1
  %36 = load double, double* %35, align 8
  %37 = load %struct.body*, %struct.body** %2, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.body, %struct.body* %37, i64 %38
  %40 = getelementptr inbounds %struct.body, %struct.body* %39, i32 0, i32 1
  %41 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0, i64 1
  %42 = load double, double* %41, align 8
  %43 = fmul double %36, %42
  %44 = fadd double %30, %43
  %45 = load %struct.body*, %struct.body** %2, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.body, %struct.body* %45, i64 %46
  %48 = getelementptr inbounds %struct.body, %struct.body* %47, i32 0, i32 1
  %49 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 0, i64 2
  %50 = load double, double* %49, align 8
  %51 = load %struct.body*, %struct.body** %2, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.body, %struct.body* %51, i64 %52
  %54 = getelementptr inbounds %struct.body, %struct.body* %53, i32 0, i32 1
  %55 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 0, i64 2
  %56 = load double, double* %55, align 8
  %57 = fmul double %50, %56
  %58 = fadd double %44, %57
  %59 = fmul double %17, %58
  %60 = load double, double* %3, align 8
  %61 = fadd double %60, %59
  store double %61, double* %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %64

64:                                               ; preds = %125, %11
  %65 = load i64, i64* %5, align 8
  %66 = icmp slt i64 %65, 5
  br i1 %66, label %67, label %128

67:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i64, i64* %7, align 8
  %70 = icmp slt i64 %69, 3
  br i1 %70, label %71, label %92

71:                                               ; preds = %68
  %72 = load %struct.body*, %struct.body** %2, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.body, %struct.body* %72, i64 %73
  %75 = getelementptr inbounds %struct.body, %struct.body* %74, i32 0, i32 0
  %76 = load i64, i64* %7, align 8
  %77 = getelementptr inbounds [3 x double], [3 x double]* %75, i64 0, i64 %76
  %78 = load double, double* %77, align 8
  %79 = load %struct.body*, %struct.body** %2, align 8
  %80 = load i64, i64* %5, align 8
  %81 = getelementptr inbounds %struct.body, %struct.body* %79, i64 %80
  %82 = getelementptr inbounds %struct.body, %struct.body* %81, i32 0, i32 0
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds [3 x double], [3 x double]* %82, i64 0, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fsub double %78, %85
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 %87
  store double %86, double* %88, align 8
  br label %89

89:                                               ; preds = %71
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %7, align 8
  br label %68

92:                                               ; preds = %68
  %93 = load %struct.body*, %struct.body** %2, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.body, %struct.body* %93, i64 %94
  %96 = getelementptr inbounds %struct.body, %struct.body* %95, i32 0, i32 2
  %97 = load double, double* %96, align 8
  %98 = load %struct.body*, %struct.body** %2, align 8
  %99 = load i64, i64* %5, align 8
  %100 = getelementptr inbounds %struct.body, %struct.body* %98, i64 %99
  %101 = getelementptr inbounds %struct.body, %struct.body* %100, i32 0, i32 2
  %102 = load double, double* %101, align 8
  %103 = fmul double %97, %102
  %104 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %105 = load double, double* %104, align 16
  %106 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 0
  %107 = load double, double* %106, align 16
  %108 = fmul double %105, %107
  %109 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %110 = load double, double* %109, align 8
  %111 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 1
  %112 = load double, double* %111, align 8
  %113 = fmul double %110, %112
  %114 = fadd double %108, %113
  %115 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %116 = load double, double* %115, align 16
  %117 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 0, i64 2
  %118 = load double, double* %117, align 16
  %119 = fmul double %116, %118
  %120 = fadd double %114, %119
  %121 = call double @sqrt(double %120) #7
  %122 = fdiv double %103, %121
  %123 = load double, double* %3, align 8
  %124 = fsub double %123, %122
  store double %124, double* %3, align 8
  br label %125

125:                                              ; preds = %92
  %126 = load i64, i64* %5, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %64

128:                                              ; preds = %64
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %4, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %4, align 8
  br label %8

132:                                              ; preds = %8
  %133 = load double, double* %3, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %133)
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @advance(%struct.body* %0) #2 {
  %2 = alloca <4 x float>, align 16
  %3 = alloca <4 x float>, align 16
  %4 = alloca <2 x double>, align 16
  %5 = alloca %struct.body*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x <2 x double>], align 16
  %12 = alloca i64, align 8
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.body* %0, %struct.body** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %67, %1
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 4
  br i1 %26, label %27, label %70

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %30

30:                                               ; preds = %61, %27
  %31 = load i64, i64* %8, align 8
  %32 = icmp slt i64 %31, 5
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i64, i64* %9, align 8
  %36 = icmp slt i64 %35, 3
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.body*, %struct.body** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.body, %struct.body* %38, i64 %39
  %41 = getelementptr inbounds %struct.body, %struct.body* %40, i32 0, i32 0
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds [3 x double], [3 x double]* %41, i64 0, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load %struct.body*, %struct.body** %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.body, %struct.body* %45, i64 %46
  %48 = getelementptr inbounds %struct.body, %struct.body* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %48, i64 0, i64 %49
  %51 = load double, double* %50, align 8
  %52 = fsub double %44, %51
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds [3 x [10 x double]], [3 x [10 x double]]* @advance.position_Deltas, i64 0, i64 %53
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds [10 x double], [10 x double]* %54, i64 0, i64 %55
  store double %52, double* %56, align 8
  br label %57

57:                                               ; preds = %37
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %9, align 8
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %7, align 8
  br label %30

66:                                               ; preds = %30
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %6, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %6, align 8
  br label %24

70:                                               ; preds = %24
  store i64 0, i64* %10, align 8
  br label %71

71:                                               ; preds = %143, %70
  %72 = load i64, i64* %10, align 8
  %73 = icmp slt i64 %72, 5
  br i1 %73, label %74, label %146

74:                                               ; preds = %71
  store i64 0, i64* %12, align 8
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i64, i64* %12, align 8
  %77 = icmp slt i64 %76, 3
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = getelementptr inbounds [3 x [10 x double]], [3 x [10 x double]]* @advance.position_Deltas, i64 0, i64 %79
  %81 = getelementptr inbounds [10 x double], [10 x double]* %80, i64 0, i64 0
  %82 = bitcast double* %81 to <2 x double>*
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds <2 x double>, <2 x double>* %82, i64 %83
  %85 = load <2 x double>, <2 x double>* %84, align 16
  %86 = load i64, i64* %12, align 8
  %87 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 %86
  store <2 x double> %85, <2 x double>* %87, align 16
  br label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %75

91:                                               ; preds = %75
  %92 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 0
  %93 = load <2 x double>, <2 x double>* %92, align 16
  %94 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 0
  %95 = load <2 x double>, <2 x double>* %94, align 16
  %96 = fmul <2 x double> %93, %95
  %97 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 1
  %98 = load <2 x double>, <2 x double>* %97, align 16
  %99 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 1
  %100 = load <2 x double>, <2 x double>* %99, align 16
  %101 = fmul <2 x double> %98, %100
  %102 = fadd <2 x double> %96, %101
  %103 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 2
  %104 = load <2 x double>, <2 x double>* %103, align 16
  %105 = getelementptr inbounds [3 x <2 x double>], [3 x <2 x double>]* %11, i64 0, i64 2
  %106 = load <2 x double>, <2 x double>* %105, align 16
  %107 = fmul <2 x double> %104, %106
  %108 = fadd <2 x double> %102, %107
  store <2 x double> %108, <2 x double>* %13, align 16
  %109 = load <2 x double>, <2 x double>* %13, align 16
  store <2 x double> %109, <2 x double>* %4, align 16
  %110 = load <2 x double>, <2 x double>* %4, align 16
  %111 = call <4 x float> @llvm.x86.sse2.cvtpd2ps(<2 x double> %110) #7
  store <4 x float> %111, <4 x float>* %2, align 16
  %112 = load <4 x float>, <4 x float>* %2, align 16
  %113 = call <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %112) #7
  store <4 x float> %113, <4 x float>* %3, align 16
  %114 = load <4 x float>, <4 x float>* %3, align 16
  %115 = load <4 x float>, <4 x float>* %3, align 16
  %116 = shufflevector <4 x float> %114, <4 x float> %115, <2 x i32> <i32 0, i32 1>
  %117 = fpext <2 x float> %116 to <2 x double>
  store <2 x double> %117, <2 x double>* %14, align 16
  store i64 0, i64* %15, align 8
  br label %118

118:                                              ; preds = %133, %91
  %119 = load i64, i64* %15, align 8
  %120 = icmp slt i64 %119, 2
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = load <2 x double>, <2 x double>* %14, align 16
  %123 = fmul <2 x double> %122, <double 1.500000e+00, double 1.500000e+00>
  %124 = load <2 x double>, <2 x double>* %13, align 16
  %125 = fmul <2 x double> <double 5.000000e-01, double 5.000000e-01>, %124
  %126 = load <2 x double>, <2 x double>* %14, align 16
  %127 = fmul <2 x double> %125, %126
  %128 = load <2 x double>, <2 x double>* %14, align 16
  %129 = load <2 x double>, <2 x double>* %14, align 16
  %130 = fmul <2 x double> %128, %129
  %131 = fmul <2 x double> %127, %130
  %132 = fsub <2 x double> %123, %131
  store <2 x double> %132, <2 x double>* %14, align 16
  br label %133

133:                                              ; preds = %121
  %134 = load i64, i64* %15, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %15, align 8
  br label %118

136:                                              ; preds = %118
  %137 = load <2 x double>, <2 x double>* %13, align 16
  %138 = fdiv <2 x double> <double 1.000000e-02, double 1.000000e-02>, %137
  %139 = load <2 x double>, <2 x double>* %14, align 16
  %140 = fmul <2 x double> %138, %139
  %141 = load i64, i64* %10, align 8
  %142 = getelementptr inbounds <2 x double>, <2 x double>* bitcast ([10 x double]* @advance.magnitudes to <2 x double>*), i64 %141
  store <2 x double> %140, <2 x double>* %142, align 16
  br label %143

143:                                              ; preds = %136
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %10, align 8
  br label %71

146:                                              ; preds = %71
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  br label %147

147:                                              ; preds = %219, %146
  %148 = load i64, i64* %16, align 8
  %149 = icmp slt i64 %148, 4
  br i1 %149, label %150, label %222

150:                                              ; preds = %147
  %151 = load i64, i64* %16, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %18, align 8
  br label %153

153:                                              ; preds = %213, %150
  %154 = load i64, i64* %18, align 8
  %155 = icmp slt i64 %154, 5
  br i1 %155, label %156, label %218

156:                                              ; preds = %153
  %157 = load %struct.body*, %struct.body** %5, align 8
  %158 = load i64, i64* %16, align 8
  %159 = getelementptr inbounds %struct.body, %struct.body* %157, i64 %158
  %160 = getelementptr inbounds %struct.body, %struct.body* %159, i32 0, i32 2
  %161 = load double, double* %160, align 8
  %162 = load i64, i64* %17, align 8
  %163 = getelementptr inbounds [10 x double], [10 x double]* @advance.magnitudes, i64 0, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fmul double %161, %164
  store double %165, double* %19, align 8
  %166 = load %struct.body*, %struct.body** %5, align 8
  %167 = load i64, i64* %18, align 8
  %168 = getelementptr inbounds %struct.body, %struct.body* %166, i64 %167
  %169 = getelementptr inbounds %struct.body, %struct.body* %168, i32 0, i32 2
  %170 = load double, double* %169, align 8
  %171 = load i64, i64* %17, align 8
  %172 = getelementptr inbounds [10 x double], [10 x double]* @advance.magnitudes, i64 0, i64 %171
  %173 = load double, double* %172, align 8
  %174 = fmul double %170, %173
  store double %174, double* %20, align 8
  store i64 0, i64* %21, align 8
  br label %175

175:                                              ; preds = %209, %156
  %176 = load i64, i64* %21, align 8
  %177 = icmp slt i64 %176, 3
  br i1 %177, label %178, label %212

178:                                              ; preds = %175
  %179 = load i64, i64* %21, align 8
  %180 = getelementptr inbounds [3 x [10 x double]], [3 x [10 x double]]* @advance.position_Deltas, i64 0, i64 %179
  %181 = load i64, i64* %17, align 8
  %182 = getelementptr inbounds [10 x double], [10 x double]* %180, i64 0, i64 %181
  %183 = load double, double* %182, align 8
  %184 = load double, double* %20, align 8
  %185 = fmul double %183, %184
  %186 = load %struct.body*, %struct.body** %5, align 8
  %187 = load i64, i64* %16, align 8
  %188 = getelementptr inbounds %struct.body, %struct.body* %186, i64 %187
  %189 = getelementptr inbounds %struct.body, %struct.body* %188, i32 0, i32 1
  %190 = load i64, i64* %21, align 8
  %191 = getelementptr inbounds [3 x double], [3 x double]* %189, i64 0, i64 %190
  %192 = load double, double* %191, align 8
  %193 = fsub double %192, %185
  store double %193, double* %191, align 8
  %194 = load i64, i64* %21, align 8
  %195 = getelementptr inbounds [3 x [10 x double]], [3 x [10 x double]]* @advance.position_Deltas, i64 0, i64 %194
  %196 = load i64, i64* %17, align 8
  %197 = getelementptr inbounds [10 x double], [10 x double]* %195, i64 0, i64 %196
  %198 = load double, double* %197, align 8
  %199 = load double, double* %19, align 8
  %200 = fmul double %198, %199
  %201 = load %struct.body*, %struct.body** %5, align 8
  %202 = load i64, i64* %18, align 8
  %203 = getelementptr inbounds %struct.body, %struct.body* %201, i64 %202
  %204 = getelementptr inbounds %struct.body, %struct.body* %203, i32 0, i32 1
  %205 = load i64, i64* %21, align 8
  %206 = getelementptr inbounds [3 x double], [3 x double]* %204, i64 0, i64 %205
  %207 = load double, double* %206, align 8
  %208 = fadd double %207, %200
  store double %208, double* %206, align 8
  br label %209

209:                                              ; preds = %178
  %210 = load i64, i64* %21, align 8
  %211 = add nsw i64 %210, 1
  store i64 %211, i64* %21, align 8
  br label %175

212:                                              ; preds = %175
  br label %213

213:                                              ; preds = %212
  %214 = load i64, i64* %18, align 8
  %215 = add nsw i64 %214, 1
  store i64 %215, i64* %18, align 8
  %216 = load i64, i64* %17, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %17, align 8
  br label %153

218:                                              ; preds = %153
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %16, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %16, align 8
  br label %147

222:                                              ; preds = %147
  store i64 0, i64* %22, align 8
  br label %223

223:                                              ; preds = %251, %222
  %224 = load i64, i64* %22, align 8
  %225 = icmp slt i64 %224, 5
  br i1 %225, label %226, label %254

226:                                              ; preds = %223
  store i64 0, i64* %23, align 8
  br label %227

227:                                              ; preds = %247, %226
  %228 = load i64, i64* %23, align 8
  %229 = icmp slt i64 %228, 3
  br i1 %229, label %230, label %250

230:                                              ; preds = %227
  %231 = load %struct.body*, %struct.body** %5, align 8
  %232 = load i64, i64* %22, align 8
  %233 = getelementptr inbounds %struct.body, %struct.body* %231, i64 %232
  %234 = getelementptr inbounds %struct.body, %struct.body* %233, i32 0, i32 1
  %235 = load i64, i64* %23, align 8
  %236 = getelementptr inbounds [3 x double], [3 x double]* %234, i64 0, i64 %235
  %237 = load double, double* %236, align 8
  %238 = fmul double 1.000000e-02, %237
  %239 = load %struct.body*, %struct.body** %5, align 8
  %240 = load i64, i64* %22, align 8
  %241 = getelementptr inbounds %struct.body, %struct.body* %239, i64 %240
  %242 = getelementptr inbounds %struct.body, %struct.body* %241, i32 0, i32 0
  %243 = load i64, i64* %23, align 8
  %244 = getelementptr inbounds [3 x double], [3 x double]* %242, i64 0, i64 %243
  %245 = load double, double* %244, align 8
  %246 = fadd double %245, %238
  store double %246, double* %244, align 8
  br label %247

247:                                              ; preds = %230
  %248 = load i64, i64* %23, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %23, align 8
  br label %227

250:                                              ; preds = %227
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %22, align 8
  %253 = add nsw i64 %252, 1
  store i64 %253, i64* %22, align 8
  br label %223

254:                                              ; preds = %223
  ret void
}

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse2.cvtpd2ps(<2 x double>) #3

; Function Attrs: nounwind readnone
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
