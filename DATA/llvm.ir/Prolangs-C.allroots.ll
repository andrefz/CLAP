; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"DEBUG: %g %g\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"==============================================================\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Find all roots of\0A\00", align 1
@main.A = internal global [4 x double] [double 4.100000e+00, double -3.900000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@.str.3 = private unnamed_addr constant [3 x i8] c"%g\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"x**%d - \00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x**%d + \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"using NEWTON method.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"No roots\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"   ROOT = %g\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"  ROOT = %g (from quadratic formula)\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"----> Refine Root on the Orginal Polynomial (non-deflated)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"     DEFLATED to\0A(x - %g)*(\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%g)\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A  ROOT = %g (from quadratic formula)\0A\00", align 1
@DERIV_X = common dso_local global double 0.000000e+00, align 8
@.str.15 = private unnamed_addr constant [40 x i8] c"     NEWTON Called on interval [%g,%g]\0A\00", align 1
@.str.1.16 = private unnamed_addr constant [17 x i8] c"     X[%d] = %g\0A\00", align 1
@.str.2.17 = private unnamed_addr constant [21 x i8] c"ROOT: %g (approx.)\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 3, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), double 0x40337AAE58825399, double 0x401CF55906D75FA4)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %31, %0
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %13
  %15 = load double, double* %14, align 8
  %16 = call double @d_abs(double %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %16)
  %18 = load i32, i32* %3, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x double], [4 x double]* @main.A, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %24, label %27

24:                                               ; preds = %11
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  br label %30

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %3, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load double, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), align 16
  %36 = call double @d_abs(double %35)
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  call void @allroots(i32 %40, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0), i32 %41, double* getelementptr inbounds ([4 x double], [4 x double]* @main.A, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @allroots(i32 %0, double* %1, i32 %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store i32 %2, i32* %7, align 4
  store double* %3, double** %8, align 8
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %26, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load double*, double** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = call double @d_abs(double %22)
  %24 = load double, double* %12, align 8
  %25 = fadd double %24, %23
  store double %25, double* %12, align 8
  br label %26

26:                                               ; preds = %17
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %13

29:                                               ; preds = %13
  %30 = load double*, double** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double, double* %30, i64 %32
  %34 = load double, double* %33, align 8
  %35 = call double @d_abs(double %34)
  %36 = load double, double* %12, align 8
  %37 = fdiv double %36, %35
  store double %37, double* %12, align 8
  %38 = load double, double* %12, align 8
  %39 = fneg double %38
  %40 = fsub double %39, 1.000000e+00
  store double %40, double* %11, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %134

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load double*, double** %8, align 8
  %50 = getelementptr inbounds double, double* %49, i64 0
  %51 = load double, double* %50, align 8
  %52 = fneg double %51
  %53 = load double*, double** %8, align 8
  %54 = getelementptr inbounds double, double* %53, i64 1
  %55 = load double, double* %54, align 8
  %56 = fdiv double %52, %55
  store double %56, double* %10, align 8
  %57 = load double, double* %10, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), double %57)
  br label %133

59:                                               ; preds = %45
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %121

62:                                               ; preds = %59
  %63 = load double*, double** %8, align 8
  %64 = getelementptr inbounds double, double* %63, i64 1
  %65 = load double, double* %64, align 8
  %66 = fneg double %65
  %67 = load double*, double** %8, align 8
  %68 = getelementptr inbounds double, double* %67, i64 1
  %69 = load double, double* %68, align 8
  %70 = load double*, double** %8, align 8
  %71 = getelementptr inbounds double, double* %70, i64 1
  %72 = load double, double* %71, align 8
  %73 = fmul double %69, %72
  %74 = load double*, double** %8, align 8
  %75 = getelementptr inbounds double, double* %74, i64 2
  %76 = load double, double* %75, align 8
  %77 = fmul double 4.000000e+00, %76
  %78 = load double*, double** %8, align 8
  %79 = getelementptr inbounds double, double* %78, i64 0
  %80 = load double, double* %79, align 8
  %81 = fmul double %77, %80
  %82 = fsub double %73, %81
  %83 = call double @sqrt(double %82) #3
  %84 = fadd double %66, %83
  %85 = load double*, double** %8, align 8
  %86 = getelementptr inbounds double, double* %85, i64 2
  %87 = load double, double* %86, align 8
  %88 = fmul double 2.000000e+00, %87
  %89 = fdiv double %84, %88
  store double %89, double* %10, align 8
  %90 = load double, double* %10, align 8
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double %90)
  %92 = load double*, double** %8, align 8
  %93 = getelementptr inbounds double, double* %92, i64 1
  %94 = load double, double* %93, align 8
  %95 = fneg double %94
  %96 = load double*, double** %8, align 8
  %97 = getelementptr inbounds double, double* %96, i64 1
  %98 = load double, double* %97, align 8
  %99 = load double*, double** %8, align 8
  %100 = getelementptr inbounds double, double* %99, i64 1
  %101 = load double, double* %100, align 8
  %102 = fmul double %98, %101
  %103 = load double*, double** %8, align 8
  %104 = getelementptr inbounds double, double* %103, i64 2
  %105 = load double, double* %104, align 8
  %106 = fmul double 4.000000e+00, %105
  %107 = load double*, double** %8, align 8
  %108 = getelementptr inbounds double, double* %107, i64 0
  %109 = load double, double* %108, align 8
  %110 = fmul double %106, %109
  %111 = fsub double %102, %110
  %112 = call double @sqrt(double %111) #3
  %113 = fsub double %95, %112
  %114 = load double*, double** %8, align 8
  %115 = getelementptr inbounds double, double* %114, i64 2
  %116 = load double, double* %115, align 8
  %117 = fmul double 2.000000e+00, %116
  %118 = fdiv double %113, %117
  store double %118, double* %10, align 8
  %119 = load double, double* %10, align 8
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double %119)
  br label %132

121:                                              ; preds = %59
  %122 = load i32, i32* %7, align 4
  %123 = load double*, double** %8, align 8
  %124 = load double, double* %11, align 8
  %125 = load double, double* %12, align 8
  %126 = call double @newton(i32 %122, double* %123, double %124, double %125)
  store double %126, double* %10, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load double*, double** %6, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load double*, double** %8, align 8
  %131 = load double, double* %10, align 8
  call void @deflat(i32 %127, double* %128, i32 %129, double* %130, double %131)
  br label %132

132:                                              ; preds = %121, %62
  br label %133

133:                                              ; preds = %132, %48
  br label %134

134:                                              ; preds = %133, %43
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @deflat(i32 %0, double* %1, i32 %2, double* %3, double %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double* %1, double** %7, align 8
  store i32 %2, i32* %8, align 4
  store double* %3, double** %9, align 8
  store double %4, double* %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = load double*, double** %7, align 8
  %21 = load double, double* %10, align 8
  %22 = fsub double %21, 5.000000e-01
  %23 = load double, double* %10, align 8
  %24 = fadd double %23, 5.000000e-01
  %25 = call double @newton(i32 %19, double* %20, double %22, double %24)
  br label %26

26:                                               ; preds = %17, %5
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = call noalias i8* @calloc(i64 %28, i64 8) #3
  %30 = bitcast i8* %29 to double*
  store double* %30, double** %11, align 8
  %31 = load double*, double** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %31, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load double*, double** %11, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, double* %36, i64 %39
  store double %35, double* %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 2
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %66, %26
  %44 = load i32, i32* %12, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load double*, double** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %47, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load double, double* %10, align 8
  %54 = fmul double %52, %53
  %55 = load double*, double** %9, align 8
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %55, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fadd double %54, %60
  %62 = load double*, double** %11, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  store double %61, double* %65, align 8
  br label %66

66:                                               ; preds = %46
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %12, align 4
  br label %43

69:                                               ; preds = %43
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %96, %69
  %72 = load i32, i32* %13, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %71
  %75 = load double*, double** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = call double @d_abs(double %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %80)
  %82 = load double*, double** %9, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %82, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fcmp olt double %87, 0.000000e+00
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %13, align 4
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %95

92:                                               ; preds = %74
  %93 = load i32, i32* %13, align 4
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %13, align 4
  br label %71

99:                                               ; preds = %71
  %100 = load double*, double** %9, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  %102 = load double, double* %101, align 8
  %103 = call double @d_abs(double %102)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %103)
  %105 = load double, double* %10, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), double %105)
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %134, %99
  %110 = load i32, i32* %13, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %137

112:                                              ; preds = %109
  %113 = load double*, double** %11, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double, double* %113, i64 %115
  %117 = load double, double* %116, align 8
  %118 = call double @d_abs(double %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), double %118)
  %120 = load double*, double** %11, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %120, i64 %123
  %125 = load double, double* %124, align 8
  %126 = fcmp olt double %125, 0.000000e+00
  br i1 %126, label %127, label %130

127:                                              ; preds = %112
  %128 = load i32, i32* %13, align 4
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %133

130:                                              ; preds = %112
  %131 = load i32, i32* %13, align 4
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %127
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %13, align 4
  br label %109

137:                                              ; preds = %109
  %138 = load double*, double** %11, align 8
  %139 = getelementptr inbounds double, double* %138, i64 0
  %140 = load double, double* %139, align 8
  %141 = call double @d_abs(double %140)
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), double %141)
  %143 = load i32, i32* %8, align 4
  %144 = icmp eq i32 %143, 3
  br i1 %144, label %145, label %220

145:                                              ; preds = %137
  %146 = load double*, double** %11, align 8
  %147 = getelementptr inbounds double, double* %146, i64 1
  %148 = load double, double* %147, align 8
  %149 = fneg double %148
  %150 = load double*, double** %11, align 8
  %151 = getelementptr inbounds double, double* %150, i64 1
  %152 = load double, double* %151, align 8
  %153 = load double*, double** %11, align 8
  %154 = getelementptr inbounds double, double* %153, i64 1
  %155 = load double, double* %154, align 8
  %156 = fmul double %152, %155
  %157 = load double*, double** %11, align 8
  %158 = getelementptr inbounds double, double* %157, i64 2
  %159 = load double, double* %158, align 8
  %160 = fmul double 4.000000e+00, %159
  %161 = load double*, double** %11, align 8
  %162 = getelementptr inbounds double, double* %161, i64 0
  %163 = load double, double* %162, align 8
  %164 = fmul double %160, %163
  %165 = fsub double %156, %164
  %166 = call double @sqrt(double %165) #3
  %167 = fadd double %149, %166
  %168 = load double*, double** %11, align 8
  %169 = getelementptr inbounds double, double* %168, i64 2
  %170 = load double, double* %169, align 8
  %171 = fmul double 2.000000e+00, %170
  %172 = fdiv double %167, %171
  store double %172, double* %10, align 8
  %173 = load double, double* %10, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), double %173)
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %176 = load i32, i32* %6, align 4
  %177 = load double*, double** %7, align 8
  %178 = load double, double* %10, align 8
  %179 = fsub double %178, 5.000000e-01
  %180 = load double, double* %10, align 8
  %181 = fadd double %180, 5.000000e-01
  %182 = call double @newton(i32 %176, double* %177, double %179, double %181)
  %183 = load double*, double** %11, align 8
  %184 = getelementptr inbounds double, double* %183, i64 1
  %185 = load double, double* %184, align 8
  %186 = fneg double %185
  %187 = load double*, double** %11, align 8
  %188 = getelementptr inbounds double, double* %187, i64 1
  %189 = load double, double* %188, align 8
  %190 = load double*, double** %11, align 8
  %191 = getelementptr inbounds double, double* %190, i64 1
  %192 = load double, double* %191, align 8
  %193 = fmul double %189, %192
  %194 = load double*, double** %11, align 8
  %195 = getelementptr inbounds double, double* %194, i64 2
  %196 = load double, double* %195, align 8
  %197 = fmul double 4.000000e+00, %196
  %198 = load double*, double** %11, align 8
  %199 = getelementptr inbounds double, double* %198, i64 0
  %200 = load double, double* %199, align 8
  %201 = fmul double %197, %200
  %202 = fsub double %193, %201
  %203 = call double @sqrt(double %202) #3
  %204 = fsub double %186, %203
  %205 = load double*, double** %11, align 8
  %206 = getelementptr inbounds double, double* %205, i64 2
  %207 = load double, double* %206, align 8
  %208 = fmul double 2.000000e+00, %207
  %209 = fdiv double %204, %208
  store double %209, double* %10, align 8
  %210 = load double, double* %10, align 8
  %211 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), double %210)
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.11, i64 0, i64 0))
  %213 = load i32, i32* %6, align 4
  %214 = load double*, double** %7, align 8
  %215 = load double, double* %10, align 8
  %216 = fsub double %215, 5.000000e-01
  %217 = load double, double* %10, align 8
  %218 = fadd double %217, 5.000000e-01
  %219 = call double @newton(i32 %213, double* %214, double %216, double %218)
  br label %226

220:                                              ; preds = %137
  %221 = load i32, i32* %6, align 4
  %222 = load double*, double** %7, align 8
  %223 = load i32, i32* %8, align 4
  %224 = sub nsw i32 %223, 1
  %225 = load double*, double** %11, align 8
  call void @allroots(i32 %221, double* %222, i32 %224, double* %225)
  br label %226

226:                                              ; preds = %220, %145
  %227 = load double*, double** %11, align 8
  %228 = bitcast double* %227 to i8*
  call void @free(i8* %228) #3
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @HORNERS(i32 %0, double* %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store double %2, double* %6, align 8
  %10 = load double*, double** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %10, i64 %12
  %14 = load double, double* %13, align 8
  store double %14, double* %8, align 8
  store double %14, double* %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %35, %3
  %18 = load i32, i32* %9, align 4
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load double, double* %6, align 8
  %22 = load double, double* %7, align 8
  %23 = fmul double %21, %22
  %24 = load double*, double** %5, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fadd double %23, %28
  store double %29, double* %7, align 8
  %30 = load double, double* %6, align 8
  %31 = load double, double* %8, align 8
  %32 = fmul double %30, %31
  %33 = load double, double* %7, align 8
  %34 = fadd double %32, %33
  store double %34, double* %8, align 8
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  br label %17

38:                                               ; preds = %17
  %39 = load double, double* %6, align 8
  %40 = load double, double* %7, align 8
  %41 = fmul double %39, %40
  %42 = load double*, double** %5, align 8
  %43 = getelementptr inbounds double, double* %42, i64 0
  %44 = load double, double* %43, align 8
  %45 = fadd double %41, %44
  store double %45, double* %7, align 8
  %46 = load double, double* %8, align 8
  store double %46, double* @DERIV_X, align 8
  %47 = load double, double* %7, align 8
  ret double %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @d_abs(double %0) #0 {
  %2 = alloca double, align 8
  store double %0, double* %2, align 8
  %3 = load double, double* %2, align 8
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load double, double* %2, align 8
  %7 = fmul double -1.000000e+00, %6
  store double %7, double* %2, align 8
  br label %8

8:                                                ; preds = %5, %1
  %9 = load double, double* %2, align 8
  ret double %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @newton(i32 %0, double* %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load double, double* %8, align 8
  %14 = load double, double* %7, align 8
  %15 = fcmp olt double %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load double, double* %7, align 8
  store double %17, double* %9, align 8
  %18 = load double, double* %8, align 8
  store double %18, double* %7, align 8
  %19 = load double, double* %9, align 8
  store double %19, double* %8, align 8
  br label %20

20:                                               ; preds = %16, %4
  %21 = load double, double* %7, align 8
  %22 = load double, double* %8, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), double %21, double %22)
  %24 = load double, double* %7, align 8
  store double %24, double* %10, align 8
  %25 = load double, double* %7, align 8
  %26 = load double, double* %8, align 8
  %27 = fadd double %25, %26
  %28 = fdiv double %27, 2.000000e+00
  store double %28, double* %11, align 8
  br label %29

29:                                               ; preds = %43, %20
  %30 = load double, double* %11, align 8
  %31 = load double, double* %10, align 8
  %32 = fsub double %30, %31
  %33 = call double @d_abs(double %32)
  %34 = load double, double* %11, align 8
  %35 = call double @d_abs(double %34)
  %36 = fdiv double %33, %35
  %37 = fcmp ogt double %36, 5.000000e-06
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  %40 = icmp sle i32 %39, 40
  br label %41

41:                                               ; preds = %38, %29
  %42 = phi i1 [ false, %29 ], [ %40, %38 ]
  br i1 %42, label %43, label %59

43:                                               ; preds = %41
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = load double, double* %11, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.16, i64 0, i64 0), i32 %45, double %46)
  %48 = load double, double* %11, align 8
  store double %48, double* %10, align 8
  %49 = load double, double* %11, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load double*, double** %6, align 8
  %52 = load double, double* %11, align 8
  %53 = call double @HORNERS(i32 %50, double* %51, double %52)
  %54 = load double, double* @DERIV_X, align 8
  %55 = fdiv double %53, %54
  %56 = fsub double %49, %55
  store double %56, double* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %29

59:                                               ; preds = %41
  %60 = load double, double* %11, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2.17, i64 0, i64 0), double %60)
  %62 = load double, double* %11, align 8
  ret double %62
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
