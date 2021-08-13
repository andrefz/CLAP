; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"P4\0A%ld %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @numDigits(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = sdiv i64 %8, 10
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %3, align 8
  br label %4

12:                                               ; preds = %4
  %13 = load i64, i64* %3, align 8
  ret i64 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @vec_nle(<2 x double>* %0, double %1) #0 {
  %3 = alloca <2 x double>*, align 8
  %4 = alloca double, align 8
  store <2 x double>* %0, <2 x double>** %3, align 8
  store double %1, double* %4, align 8
  %5 = load <2 x double>*, <2 x double>** %3, align 8
  %6 = getelementptr inbounds <2 x double>, <2 x double>* %5, i64 0
  %7 = load <2 x double>, <2 x double>* %6, align 16
  %8 = extractelement <2 x double> %7, i32 0
  %9 = load double, double* %4, align 8
  %10 = fcmp ole double %8, %9
  br i1 %10, label %60, label %11

11:                                               ; preds = %2
  %12 = load <2 x double>*, <2 x double>** %3, align 8
  %13 = getelementptr inbounds <2 x double>, <2 x double>* %12, i64 0
  %14 = load <2 x double>, <2 x double>* %13, align 16
  %15 = extractelement <2 x double> %14, i32 1
  %16 = load double, double* %4, align 8
  %17 = fcmp ole double %15, %16
  br i1 %17, label %60, label %18

18:                                               ; preds = %11
  %19 = load <2 x double>*, <2 x double>** %3, align 8
  %20 = getelementptr inbounds <2 x double>, <2 x double>* %19, i64 1
  %21 = load <2 x double>, <2 x double>* %20, align 16
  %22 = extractelement <2 x double> %21, i32 0
  %23 = load double, double* %4, align 8
  %24 = fcmp ole double %22, %23
  br i1 %24, label %60, label %25

25:                                               ; preds = %18
  %26 = load <2 x double>*, <2 x double>** %3, align 8
  %27 = getelementptr inbounds <2 x double>, <2 x double>* %26, i64 1
  %28 = load <2 x double>, <2 x double>* %27, align 16
  %29 = extractelement <2 x double> %28, i32 1
  %30 = load double, double* %4, align 8
  %31 = fcmp ole double %29, %30
  br i1 %31, label %60, label %32

32:                                               ; preds = %25
  %33 = load <2 x double>*, <2 x double>** %3, align 8
  %34 = getelementptr inbounds <2 x double>, <2 x double>* %33, i64 2
  %35 = load <2 x double>, <2 x double>* %34, align 16
  %36 = extractelement <2 x double> %35, i32 0
  %37 = load double, double* %4, align 8
  %38 = fcmp ole double %36, %37
  br i1 %38, label %60, label %39

39:                                               ; preds = %32
  %40 = load <2 x double>*, <2 x double>** %3, align 8
  %41 = getelementptr inbounds <2 x double>, <2 x double>* %40, i64 2
  %42 = load <2 x double>, <2 x double>* %41, align 16
  %43 = extractelement <2 x double> %42, i32 1
  %44 = load double, double* %4, align 8
  %45 = fcmp ole double %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %39
  %47 = load <2 x double>*, <2 x double>** %3, align 8
  %48 = getelementptr inbounds <2 x double>, <2 x double>* %47, i64 3
  %49 = load <2 x double>, <2 x double>* %48, align 16
  %50 = extractelement <2 x double> %49, i32 0
  %51 = load double, double* %4, align 8
  %52 = fcmp ole double %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load <2 x double>*, <2 x double>** %3, align 8
  %55 = getelementptr inbounds <2 x double>, <2 x double>* %54, i64 3
  %56 = load <2 x double>, <2 x double>* %55, align 16
  %57 = extractelement <2 x double> %56, i32 1
  %58 = load double, double* %4, align 8
  %59 = fcmp ole double %57, %58
  br label %60

60:                                               ; preds = %53, %46, %39, %32, %25, %18, %11, %2
  %61 = phi i1 [ true, %46 ], [ true, %39 ], [ true, %32 ], [ true, %25 ], [ true, %18 ], [ true, %11 ], [ true, %2 ], [ %59, %53 ]
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 0, i32 -1
  %64 = sext i32 %63 to i64
  ret i64 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clrPixels_nle(<2 x double>* %0, double %1, i64* %2) #0 {
  %4 = alloca <2 x double>*, align 8
  %5 = alloca double, align 8
  %6 = alloca i64*, align 8
  store <2 x double>* %0, <2 x double>** %4, align 8
  store double %1, double* %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load <2 x double>*, <2 x double>** %4, align 8
  %8 = getelementptr inbounds <2 x double>, <2 x double>* %7, i64 0
  %9 = load <2 x double>, <2 x double>* %8, align 16
  %10 = extractelement <2 x double> %9, i32 0
  %11 = load double, double* %5, align 8
  %12 = fcmp ole double %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  %16 = and i64 %15, 127
  store i64 %16, i64* %14, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load <2 x double>*, <2 x double>** %4, align 8
  %19 = getelementptr inbounds <2 x double>, <2 x double>* %18, i64 0
  %20 = load <2 x double>, <2 x double>* %19, align 16
  %21 = extractelement <2 x double> %20, i32 1
  %22 = load double, double* %5, align 8
  %23 = fcmp ole double %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %25, align 8
  %27 = and i64 %26, 191
  store i64 %27, i64* %25, align 8
  br label %28

28:                                               ; preds = %24, %17
  %29 = load <2 x double>*, <2 x double>** %4, align 8
  %30 = getelementptr inbounds <2 x double>, <2 x double>* %29, i64 1
  %31 = load <2 x double>, <2 x double>* %30, align 16
  %32 = extractelement <2 x double> %31, i32 0
  %33 = load double, double* %5, align 8
  %34 = fcmp ole double %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %28
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, 223
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %35, %28
  %40 = load <2 x double>*, <2 x double>** %4, align 8
  %41 = getelementptr inbounds <2 x double>, <2 x double>* %40, i64 1
  %42 = load <2 x double>, <2 x double>* %41, align 16
  %43 = extractelement <2 x double> %42, i32 1
  %44 = load double, double* %5, align 8
  %45 = fcmp ole double %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = and i64 %48, 239
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %46, %39
  %51 = load <2 x double>*, <2 x double>** %4, align 8
  %52 = getelementptr inbounds <2 x double>, <2 x double>* %51, i64 2
  %53 = load <2 x double>, <2 x double>* %52, align 16
  %54 = extractelement <2 x double> %53, i32 0
  %55 = load double, double* %5, align 8
  %56 = fcmp ole double %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %58, align 8
  %60 = and i64 %59, 247
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %57, %50
  %62 = load <2 x double>*, <2 x double>** %4, align 8
  %63 = getelementptr inbounds <2 x double>, <2 x double>* %62, i64 2
  %64 = load <2 x double>, <2 x double>* %63, align 16
  %65 = extractelement <2 x double> %64, i32 1
  %66 = load double, double* %5, align 8
  %67 = fcmp ole double %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %61
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = and i64 %70, 251
  store i64 %71, i64* %69, align 8
  br label %72

72:                                               ; preds = %68, %61
  %73 = load <2 x double>*, <2 x double>** %4, align 8
  %74 = getelementptr inbounds <2 x double>, <2 x double>* %73, i64 3
  %75 = load <2 x double>, <2 x double>* %74, align 16
  %76 = extractelement <2 x double> %75, i32 0
  %77 = load double, double* %5, align 8
  %78 = fcmp ole double %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %72
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %80, align 8
  %82 = and i64 %81, 253
  store i64 %82, i64* %80, align 8
  br label %83

83:                                               ; preds = %79, %72
  %84 = load <2 x double>*, <2 x double>** %4, align 8
  %85 = getelementptr inbounds <2 x double>, <2 x double>* %84, i64 3
  %86 = load <2 x double>, <2 x double>* %85, align 16
  %87 = extractelement <2 x double> %86, i32 1
  %88 = load double, double* %5, align 8
  %89 = fcmp ole double %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %83
  %91 = load i64*, i64** %6, align 8
  %92 = load i64, i64* %91, align 8
  %93 = and i64 %92, 254
  store i64 %93, i64* %91, align 8
  br label %94

94:                                               ; preds = %90, %83
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calcSum(<2 x double>* %0, <2 x double>* %1, <2 x double>* %2, <2 x double>* %3, <2 x double> %4) #1 {
  %6 = alloca <2 x double>*, align 8
  %7 = alloca <2 x double>*, align 8
  %8 = alloca <2 x double>*, align 8
  %9 = alloca <2 x double>*, align 8
  %10 = alloca <2 x double>, align 16
  %11 = alloca i64, align 8
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  store <2 x double>* %0, <2 x double>** %6, align 8
  store <2 x double>* %1, <2 x double>** %7, align 8
  store <2 x double>* %2, <2 x double>** %8, align 8
  store <2 x double>* %3, <2 x double>** %9, align 8
  store <2 x double> %4, <2 x double>* %10, align 16
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %71, %5
  %16 = load i64, i64* %11, align 8
  %17 = icmp slt i64 %16, 4
  br i1 %17, label %18, label %74

18:                                               ; preds = %15
  %19 = load <2 x double>*, <2 x double>** %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds <2 x double>, <2 x double>* %19, i64 %20
  %22 = load <2 x double>, <2 x double>* %21, align 16
  %23 = load <2 x double>*, <2 x double>** %6, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds <2 x double>, <2 x double>* %23, i64 %24
  %26 = load <2 x double>, <2 x double>* %25, align 16
  %27 = fmul <2 x double> %22, %26
  store <2 x double> %27, <2 x double>* %12, align 16
  %28 = load <2 x double>*, <2 x double>** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds <2 x double>, <2 x double>* %28, i64 %29
  %31 = load <2 x double>, <2 x double>* %30, align 16
  %32 = load <2 x double>*, <2 x double>** %7, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds <2 x double>, <2 x double>* %32, i64 %33
  %35 = load <2 x double>, <2 x double>* %34, align 16
  %36 = fmul <2 x double> %31, %35
  store <2 x double> %36, <2 x double>* %13, align 16
  %37 = load <2 x double>*, <2 x double>** %6, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds <2 x double>, <2 x double>* %37, i64 %38
  %40 = load <2 x double>, <2 x double>* %39, align 16
  %41 = load <2 x double>*, <2 x double>** %7, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds <2 x double>, <2 x double>* %41, i64 %42
  %44 = load <2 x double>, <2 x double>* %43, align 16
  %45 = fmul <2 x double> %40, %44
  store <2 x double> %45, <2 x double>* %14, align 16
  %46 = load <2 x double>, <2 x double>* %12, align 16
  %47 = load <2 x double>, <2 x double>* %13, align 16
  %48 = fadd <2 x double> %46, %47
  %49 = load <2 x double>*, <2 x double>** %8, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds <2 x double>, <2 x double>* %49, i64 %50
  store <2 x double> %48, <2 x double>* %51, align 16
  %52 = load <2 x double>, <2 x double>* %12, align 16
  %53 = load <2 x double>, <2 x double>* %13, align 16
  %54 = fsub <2 x double> %52, %53
  %55 = load <2 x double>*, <2 x double>** %9, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr inbounds <2 x double>, <2 x double>* %55, i64 %56
  %58 = load <2 x double>, <2 x double>* %57, align 16
  %59 = fadd <2 x double> %54, %58
  %60 = load <2 x double>*, <2 x double>** %6, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds <2 x double>, <2 x double>* %60, i64 %61
  store <2 x double> %59, <2 x double>* %62, align 16
  %63 = load <2 x double>, <2 x double>* %14, align 16
  %64 = load <2 x double>, <2 x double>* %14, align 16
  %65 = fadd <2 x double> %63, %64
  %66 = load <2 x double>, <2 x double>* %10, align 16
  %67 = fadd <2 x double> %65, %66
  %68 = load <2 x double>*, <2 x double>** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds <2 x double>, <2 x double>* %68, i64 %69
  store <2 x double> %67, <2 x double>* %70, align 16
  br label %71

71:                                               ; preds = %18
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %11, align 8
  br label %15

74:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mand8(<2 x double>* %0, <2 x double> %1) #1 {
  %3 = alloca <2 x double>*, align 8
  %4 = alloca <2 x double>, align 16
  %5 = alloca [4 x <2 x double>], align 16
  %6 = alloca [4 x <2 x double>], align 16
  %7 = alloca [4 x <2 x double>], align 16
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store <2 x double>* %0, <2 x double>** %3, align 8
  store <2 x double> %1, <2 x double>* %4, align 16
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %25, %2
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %13, 4
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load <2 x double>*, <2 x double>** %3, align 8
  %17 = load i64, i64* %8, align 8
  %18 = getelementptr inbounds <2 x double>, <2 x double>* %16, i64 %17
  %19 = load <2 x double>, <2 x double>* %18, align 16
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %5, i64 0, i64 %20
  store <2 x double> %19, <2 x double>* %21, align 16
  %22 = load <2 x double>, <2 x double>* %4, align 16
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %6, i64 0, i64 %23
  store <2 x double> %22, <2 x double>* %24, align 16
  br label %25

25:                                               ; preds = %15
  %26 = load i64, i64* %8, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %8, align 8
  br label %12

28:                                               ; preds = %12
  store i64 255, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %29

29:                                               ; preds = %51, %28
  %30 = load i64, i64* %10, align 8
  %31 = icmp slt i64 %30, 6
  br i1 %31, label %32, label %54

32:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i64, i64* %11, align 8
  %35 = icmp slt i64 %34, 8
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %5, i64 0, i64 0
  %38 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %6, i64 0, i64 0
  %39 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %7, i64 0, i64 0
  %40 = load <2 x double>*, <2 x double>** %3, align 8
  %41 = load <2 x double>, <2 x double>* %4, align 16
  call void @calcSum(<2 x double>* %37, <2 x double>* %38, <2 x double>* %39, <2 x double>* %40, <2 x double> %41)
  br label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %11, align 8
  br label %33

45:                                               ; preds = %33
  %46 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %7, i64 0, i64 0
  %47 = call i64 @vec_nle(<2 x double>* %46, double 4.000000e+00)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 0, i64* %9, align 8
  br label %54

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %29

54:                                               ; preds = %49, %29
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %5, i64 0, i64 0
  %59 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %6, i64 0, i64 0
  %60 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %7, i64 0, i64 0
  %61 = load <2 x double>*, <2 x double>** %3, align 8
  %62 = load <2 x double>, <2 x double>* %4, align 16
  call void @calcSum(<2 x double>* %58, <2 x double>* %59, <2 x double>* %60, <2 x double>* %61, <2 x double> %62)
  %63 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %5, i64 0, i64 0
  %64 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %6, i64 0, i64 0
  %65 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %7, i64 0, i64 0
  %66 = load <2 x double>*, <2 x double>** %3, align 8
  %67 = load <2 x double>, <2 x double>* %4, align 16
  call void @calcSum(<2 x double>* %63, <2 x double>* %64, <2 x double>* %65, <2 x double>* %66, <2 x double> %67)
  %68 = getelementptr inbounds [4 x <2 x double>], [4 x <2 x double>]* %7, i64 0, i64 0
  call void @clrPixels_nle(<2 x double>* %68, double 4.000000e+00, i64* %9)
  br label %69

69:                                               ; preds = %57, %54
  %70 = load i64, i64* %9, align 8
  ret i64 %70
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @mand64(<2 x double>* %0, <2 x double> %1) #1 {
  %3 = alloca <2 x double>*, align 8
  %4 = alloca <2 x double>, align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store <2 x double>* %0, <2 x double>** %3, align 8
  store <2 x double> %1, <2 x double>* %4, align 16
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i64, i64* %6, align 8
  %10 = icmp slt i64 %9, 8
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = load <2 x double>*, <2 x double>** %3, align 8
  %13 = load <2 x double>, <2 x double>* %4, align 16
  %14 = call i64 @mand8(<2 x double>* %12, <2 x double> %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = lshr i64 %15, 8
  %17 = load i64, i64* %7, align 8
  %18 = shl i64 %17, 56
  %19 = or i64 %16, %18
  store i64 %19, i64* %5, align 8
  %20 = load <2 x double>*, <2 x double>** %3, align 8
  %21 = getelementptr inbounds <2 x double>, <2 x double>* %20, i64 4
  store <2 x double>* %21, <2 x double>** %3, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %6, align 8
  br label %8

25:                                               ; preds = %8
  %26 = load i64, i64* %5, align 8
  ret i64 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #1 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca <2 x double>, align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca <2 x double>, align 16
  %21 = alloca <2 x double>, align 16
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca <2 x double>, align 16
  %26 = alloca <2 x double>, align 16
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 16000, i64* %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @atoi(i8* %35) #6
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %32, %2
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, 7
  %41 = and i64 %40, -8
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @numDigits(i64 %42)
  %44 = mul nsw i64 %43, 2
  %45 = add nsw i64 %44, 5
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 7
  %48 = and i64 %47, -8
  %49 = load i64, i64* %7, align 8
  %50 = sub nsw i64 %48, %49
  store i64 %50, i64* %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %6, align 8
  %54 = ashr i64 %53, 3
  %55 = mul nsw i64 %52, %54
  %56 = add nsw i64 %51, %55
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %57, %58
  %60 = call noalias i8* @malloc(i64 %59) #4
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %11, align 8
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %68, i64 %69) #4
  %71 = load i64, i64* %6, align 8
  %72 = sdiv i64 %71, 2
  %73 = call i8* @llvm.stacksave()
  store i8* %73, i8** %13, align 8
  %74 = alloca <2 x double>, i64 %72, align 16
  store i64 %72, i64* %14, align 8
  %75 = load i64, i64* %6, align 8
  %76 = alloca double, i64 %75, align 16
  store i64 %75, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %77

77:                                               ; preds = %120, %38
  %78 = load i64, i64* %16, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %123

81:                                               ; preds = %77
  %82 = load i64, i64* %6, align 8
  %83 = sitofp i64 %82 to double
  %84 = fdiv double 2.000000e+00, %83
  %85 = insertelement <2 x double> undef, double %84, i32 0
  %86 = shufflevector <2 x double> %85, <2 x double> undef, <2 x i32> zeroinitializer
  %87 = load i64, i64* %16, align 8
  %88 = sitofp i64 %87 to double
  %89 = insertelement <2 x double> undef, double %88, i32 0
  %90 = load i64, i64* %16, align 8
  %91 = add nsw i64 %90, 1
  %92 = sitofp i64 %91 to double
  %93 = insertelement <2 x double> %89, double %92, i32 1
  store <2 x double> %93, <2 x double>* %17, align 16
  %94 = load <2 x double>, <2 x double>* %17, align 16
  %95 = fmul <2 x double> %86, %94
  %96 = fsub <2 x double> %95, <double 1.500000e+00, double 1.500000e+00>
  %97 = load i64, i64* %16, align 8
  %98 = ashr i64 %97, 1
  %99 = getelementptr inbounds <2 x double>, <2 x double>* %74, i64 %98
  store <2 x double> %96, <2 x double>* %99, align 16
  %100 = load i64, i64* %6, align 8
  %101 = sitofp i64 %100 to double
  %102 = fdiv double 2.000000e+00, %101
  %103 = load i64, i64* %16, align 8
  %104 = sitofp i64 %103 to double
  %105 = fmul double %102, %104
  %106 = fsub double %105, 1.000000e+00
  %107 = load i64, i64* %16, align 8
  %108 = getelementptr inbounds double, double* %76, i64 %107
  store double %106, double* %108, align 8
  %109 = load i64, i64* %6, align 8
  %110 = sitofp i64 %109 to double
  %111 = fdiv double 2.000000e+00, %110
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %112, 1
  %114 = sitofp i64 %113 to double
  %115 = fmul double %111, %114
  %116 = fsub double %115, 1.000000e+00
  %117 = load i64, i64* %16, align 8
  %118 = add nsw i64 %117, 1
  %119 = getelementptr inbounds double, double* %76, i64 %118
  store double %116, double* %119, align 8
  br label %120

120:                                              ; preds = %81
  %121 = load i64, i64* %16, align 8
  %122 = add nsw i64 %121, 2
  store i64 %122, i64* %16, align 8
  br label %77

123:                                              ; preds = %77
  %124 = load i64, i64* %6, align 8
  %125 = srem i64 %124, 64
  store i64 %125, i64* %18, align 8
  %126 = load i64, i64* %18, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %172

128:                                              ; preds = %123
  store i64 0, i64* %19, align 8
  br label %129

129:                                              ; preds = %168, %128
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %6, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %171

133:                                              ; preds = %129
  %134 = load i64, i64* %19, align 8
  %135 = getelementptr inbounds double, double* %76, i64 %134
  %136 = load double, double* %135, align 8
  %137 = insertelement <2 x double> undef, double %136, i32 0
  %138 = load i64, i64* %19, align 8
  %139 = getelementptr inbounds double, double* %76, i64 %138
  %140 = load double, double* %139, align 8
  %141 = insertelement <2 x double> %137, double %140, i32 1
  store <2 x double> %141, <2 x double>* %21, align 16
  %142 = load <2 x double>, <2 x double>* %21, align 16
  store <2 x double> %142, <2 x double>* %20, align 16
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %6, align 8
  %145 = mul nsw i64 %143, %144
  %146 = sdiv i64 %145, 8
  store i64 %146, i64* %22, align 8
  store i64 0, i64* %23, align 8
  br label %147

147:                                              ; preds = %164, %133
  %148 = load i64, i64* %23, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %167

151:                                              ; preds = %147
  %152 = load i64, i64* %23, align 8
  %153 = sdiv i64 %152, 2
  %154 = getelementptr inbounds <2 x double>, <2 x double>* %74, i64 %153
  %155 = load <2 x double>, <2 x double>* %20, align 16
  %156 = call i64 @mand8(<2 x double>* %154, <2 x double> %155)
  %157 = trunc i64 %156 to i8
  %158 = load i8*, i8** %12, align 8
  %159 = load i64, i64* %22, align 8
  %160 = load i64, i64* %23, align 8
  %161 = sdiv i64 %160, 8
  %162 = add nsw i64 %159, %161
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  store i8 %157, i8* %163, align 1
  br label %164

164:                                              ; preds = %151
  %165 = load i64, i64* %23, align 8
  %166 = add nsw i64 %165, 8
  store i64 %166, i64* %23, align 8
  br label %147

167:                                              ; preds = %147
  br label %168

168:                                              ; preds = %167
  %169 = load i64, i64* %19, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %19, align 8
  br label %129

171:                                              ; preds = %129
  br label %216

172:                                              ; preds = %123
  store i64 0, i64* %24, align 8
  br label %173

173:                                              ; preds = %212, %172
  %174 = load i64, i64* %24, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp slt i64 %174, %175
  br i1 %176, label %177, label %215

177:                                              ; preds = %173
  %178 = load i64, i64* %24, align 8
  %179 = getelementptr inbounds double, double* %76, i64 %178
  %180 = load double, double* %179, align 8
  %181 = insertelement <2 x double> undef, double %180, i32 0
  %182 = load i64, i64* %24, align 8
  %183 = getelementptr inbounds double, double* %76, i64 %182
  %184 = load double, double* %183, align 8
  %185 = insertelement <2 x double> %181, double %184, i32 1
  store <2 x double> %185, <2 x double>* %26, align 16
  %186 = load <2 x double>, <2 x double>* %26, align 16
  store <2 x double> %186, <2 x double>* %25, align 16
  %187 = load i64, i64* %24, align 8
  %188 = load i64, i64* %6, align 8
  %189 = mul nsw i64 %187, %188
  %190 = sdiv i64 %189, 64
  store i64 %190, i64* %27, align 8
  store i64 0, i64* %28, align 8
  br label %191

191:                                              ; preds = %208, %177
  %192 = load i64, i64* %28, align 8
  %193 = load i64, i64* %6, align 8
  %194 = icmp slt i64 %192, %193
  br i1 %194, label %195, label %211

195:                                              ; preds = %191
  %196 = load i64, i64* %28, align 8
  %197 = sdiv i64 %196, 2
  %198 = getelementptr inbounds <2 x double>, <2 x double>* %74, i64 %197
  %199 = load <2 x double>, <2 x double>* %25, align 16
  %200 = call i64 @mand64(<2 x double>* %198, <2 x double> %199)
  %201 = load i8*, i8** %12, align 8
  %202 = bitcast i8* %201 to i64*
  %203 = load i64, i64* %27, align 8
  %204 = load i64, i64* %28, align 8
  %205 = sdiv i64 %204, 64
  %206 = add nsw i64 %203, %205
  %207 = getelementptr inbounds i64, i64* %202, i64 %206
  store i64 %200, i64* %207, align 8
  br label %208

208:                                              ; preds = %195
  %209 = load i64, i64* %28, align 8
  %210 = add nsw i64 %209, 64
  store i64 %210, i64* %28, align 8
  br label %191

211:                                              ; preds = %191
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %24, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %24, align 8
  br label %173

215:                                              ; preds = %173
  br label %216

216:                                              ; preds = %215, %171
  %217 = load i8*, i8** %11, align 8
  %218 = load i64, i64* %9, align 8
  %219 = call i64 @write(i32 1, i8* %217, i64 %218)
  store i64 %219, i64* %29, align 8
  store i64 %219, i64* %29, align 8
  %220 = load i8*, i8** %10, align 8
  call void @free(i8* %220) #4
  store i32 0, i32* %3, align 4
  %221 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %221)
  %222 = load i32, i32* %3, align 4
  ret i32 %222
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i64 @write(i32, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
