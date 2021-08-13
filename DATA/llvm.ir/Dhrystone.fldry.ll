; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Record = type { %struct.Record*, i32, i32, double, [31 x i8] }

@Version = dso_local global [4 x i8] c"1.1\00", align 1
@PtrGlbNext = common dso_local global %struct.Record* null, align 8
@PtrGlb = common dso_local global %struct.Record* null, align 8
@Array2Glob = common dso_local global [51 x [51 x double]] zeroinitializer, align 16
@BoolGlob = common dso_local global i32 0, align 4
@Array1Glob = common dso_local global [51 x double] zeroinitializer, align 16
@Char2Glob = common dso_local global i8 0, align 1
@Char1Glob = common dso_local global i8 0, align 1
@IntGlob = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [53 x i8] c"calculate floating dhrystones using doubles size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 8)
  %7 = call i32 @Proc0()
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc0() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca [31 x i8], align 16
  %9 = alloca [31 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = call i64 @clock() #4
  store i64 %14, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %19, %0
  %16 = load i32, i32* %10, align 4
  %17 = icmp ult i32 %16, 100000000
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %15

22:                                               ; preds = %15
  %23 = call i64 @clock() #4
  %24 = load i64, i64* %11, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %13, align 8
  %26 = call noalias i8* @malloc(i64 56) #4
  %27 = bitcast i8* %26 to %struct.Record*
  store %struct.Record* %27, %struct.Record** @PtrGlbNext, align 8
  %28 = call noalias i8* @malloc(i64 56) #4
  %29 = bitcast i8* %28 to %struct.Record*
  store %struct.Record* %29, %struct.Record** @PtrGlb, align 8
  %30 = load %struct.Record*, %struct.Record** @PtrGlbNext, align 8
  %31 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %32 = getelementptr inbounds %struct.Record, %struct.Record* %31, i32 0, i32 0
  store %struct.Record* %30, %struct.Record** %32, align 8
  %33 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %34 = getelementptr inbounds %struct.Record, %struct.Record* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %36 = getelementptr inbounds %struct.Record, %struct.Record* %35, i32 0, i32 2
  store i32 10001, i32* %36, align 4
  %37 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %38 = getelementptr inbounds %struct.Record, %struct.Record* %37, i32 0, i32 3
  store double 4.000000e+01, double* %38, align 8
  %39 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %40 = getelementptr inbounds %struct.Record, %struct.Record* %39, i32 0, i32 4
  %41 = getelementptr inbounds [31 x i8], [31 x i8]* %40, i64 0, i64 0
  %42 = call i8* @strcpy(i8* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0)) #4
  %43 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i64 0, i64 0
  %44 = call i8* @strcpy(i8* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0)) #4
  store double 1.000000e+01, double* getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i64 0, i64 8, i64 7), align 8
  %45 = call i64 @clock() #4
  store i64 %45, i64* %11, align 8
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %112, %22
  %47 = load i32, i32* %10, align 4
  %48 = icmp ult i32 %47, 100000000
  br i1 %48, label %49, label %115

49:                                               ; preds = %46
  %50 = call i32 @Proc5()
  %51 = call i32 @Proc4()
  store double 2.000000e+00, double* %2, align 8
  store double 3.000000e+00, double* %3, align 8
  %52 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  %53 = call i8* @strcpy(i8* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #4
  store i32 10000, i32* %7, align 4
  %54 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i64 0, i64 0
  %55 = getelementptr inbounds [31 x i8], [31 x i8]* %9, i64 0, i64 0
  %56 = call i32 @Func2(i8* %54, i8* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* @BoolGlob, align 4
  br label %60

60:                                               ; preds = %64, %49
  %61 = load double, double* %2, align 8
  %62 = load double, double* %3, align 8
  %63 = fcmp olt double %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load double, double* %2, align 8
  %66 = fmul double 5.000000e+00, %65
  %67 = load double, double* %3, align 8
  %68 = fsub double %66, %67
  store double %68, double* %4, align 8
  %69 = load double, double* %2, align 8
  %70 = load double, double* %3, align 8
  %71 = call i32 @Proc7(double %69, double %70, double* %4)
  %72 = load double, double* %2, align 8
  %73 = fadd double %72, 1.000000e+00
  store double %73, double* %2, align 8
  br label %60

74:                                               ; preds = %60
  %75 = load double, double* %2, align 8
  %76 = load double, double* %4, align 8
  %77 = call i32 @Proc8(double* getelementptr inbounds ([51 x double], [51 x double]* @Array1Glob, i64 0, i64 0), [51 x double]* getelementptr inbounds ([51 x [51 x double]], [51 x [51 x double]]* @Array2Glob, i64 0, i64 0), double %75, double %76)
  %78 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %79 = call i32 @Proc1(%struct.Record* %78)
  store i8 65, i8* %6, align 1
  br label %80

80:                                               ; preds = %95, %74
  %81 = load i8, i8* %6, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* @Char2Glob, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = load i8, i8* %6, align 1
  %89 = sext i8 %88 to i32
  %90 = call i32 @Func1(i32 %89, i32 67)
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = call i32 @Proc6(i32 0, i32* %7)
  br label %94

94:                                               ; preds = %92, %86
  br label %95

95:                                               ; preds = %94
  %96 = load i8, i8* %6, align 1
  %97 = add i8 %96, 1
  store i8 %97, i8* %6, align 1
  br label %80

98:                                               ; preds = %80
  %99 = load double, double* %3, align 8
  %100 = load double, double* %2, align 8
  %101 = fmul double %99, %100
  store double %101, double* %4, align 8
  %102 = load double, double* %4, align 8
  %103 = load double, double* %2, align 8
  %104 = fdiv double %102, %103
  store double %104, double* %3, align 8
  %105 = load double, double* %4, align 8
  %106 = load double, double* %3, align 8
  %107 = fsub double %105, %106
  %108 = fmul double 7.000000e+00, %107
  %109 = load double, double* %2, align 8
  %110 = fsub double %108, %109
  store double %110, double* %3, align 8
  %111 = call i32 @Proc2(double* %2)
  br label %112

112:                                              ; preds = %98
  %113 = load i32, i32* %10, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %46

115:                                              ; preds = %46
  %116 = load i32, i32* %1, align 4
  ret i32 %116
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc5() #0 {
  %1 = alloca i32, align 4
  store i8 65, i8* @Char1Glob, align 1
  store i32 0, i32* @BoolGlob, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* @Char1Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* @BoolGlob, align 4
  %8 = load i32, i32* %2, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %2, align 4
  store i8 66, i8* @Char2Glob, align 1
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func2(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store double 1.000000e+00, double* %6, align 8
  br label %8

8:                                                ; preds = %32, %2
  %9 = load double, double* %6, align 8
  %10 = fcmp ole double %9, 1.000000e+00
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load double, double* %6, align 8
  %14 = fptosi double %13 to i32
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = load i8*, i8** %5, align 8
  %20 = load double, double* %6, align 8
  %21 = fptosi double %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @Func1(i32 %18, i32 %26)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %11
  store i8 65, i8* %7, align 1
  %30 = load double, double* %6, align 8
  %31 = fadd double %30, 1.000000e+00
  store double %31, double* %6, align 8
  br label %32

32:                                               ; preds = %29, %11
  br label %8

33:                                               ; preds = %8
  %34 = load i8, i8* %7, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sge i32 %35, 87
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 90
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store double 7.000000e+00, double* %6, align 8
  br label %42

42:                                               ; preds = %41, %37, %33
  %43 = load i8, i8* %7, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 88
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %56

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @strcmp(i8* %48, i8* %49) #5
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load double, double* %6, align 8
  %54 = fadd double %53, 7.000000e+00
  store double %54, double* %6, align 8
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %52, %46
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc7(double %0, double %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double* %2, double** %7, align 8
  %9 = load double, double* %5, align 8
  %10 = fadd double %9, 2.000000e+00
  store double %10, double* %8, align 8
  %11 = load double, double* %6, align 8
  %12 = load double, double* %8, align 8
  %13 = fadd double %11, %12
  %14 = load double*, double** %7, align 8
  store double %13, double* %14, align 8
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc8(double* %0, [51 x double]* %1, double %2, double %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca [51 x double]*, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store double* %0, double** %6, align 8
  store [51 x double]* %1, [51 x double]** %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  %12 = load double, double* %8, align 8
  %13 = fadd double %12, 5.000000e+00
  store double %13, double* %10, align 8
  %14 = load double, double* %9, align 8
  %15 = load double*, double** %6, align 8
  %16 = load double, double* %10, align 8
  %17 = fptosi double %16 to i32
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds double, double* %15, i64 %18
  store double %14, double* %19, align 8
  %20 = load double*, double** %6, align 8
  %21 = load double, double* %10, align 8
  %22 = fptosi double %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %20, i64 %23
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %6, align 8
  %27 = load double, double* %10, align 8
  %28 = fptosi double %27 to i32
  %29 = add nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %26, i64 %30
  store double %25, double* %31, align 8
  %32 = load double, double* %10, align 8
  %33 = load double*, double** %6, align 8
  %34 = load double, double* %10, align 8
  %35 = fptosi double %34 to i32
  %36 = add nsw i32 %35, 30
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %33, i64 %37
  store double %32, double* %38, align 8
  %39 = load double, double* %10, align 8
  store double %39, double* %11, align 8
  br label %40

40:                                               ; preds = %56, %4
  %41 = load double, double* %11, align 8
  %42 = load double, double* %10, align 8
  %43 = fadd double %42, 1.000000e+00
  %44 = fcmp ole double %41, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load double, double* %10, align 8
  %47 = load [51 x double]*, [51 x double]** %7, align 8
  %48 = load double, double* %10, align 8
  %49 = fptosi double %48 to i32
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [51 x double], [51 x double]* %47, i64 %50
  %52 = load double, double* %11, align 8
  %53 = fptosi double %52 to i32
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [51 x double], [51 x double]* %51, i64 0, i64 %54
  store double %46, double* %55, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load double, double* %11, align 8
  %58 = fadd double %57, 1.000000e+00
  store double %58, double* %11, align 8
  br label %40

59:                                               ; preds = %40
  %60 = load [51 x double]*, [51 x double]** %7, align 8
  %61 = load double, double* %10, align 8
  %62 = fptosi double %61 to i32
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [51 x double], [51 x double]* %60, i64 %63
  %65 = load double, double* %10, align 8
  %66 = fptosi double %65 to i32
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [51 x double], [51 x double]* %64, i64 0, i64 %68
  %70 = load double, double* %69, align 8
  %71 = fadd double %70, 1.000000e+00
  store double %71, double* %69, align 8
  %72 = load double*, double** %6, align 8
  %73 = load double, double* %10, align 8
  %74 = fptosi double %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds double, double* %72, i64 %75
  %77 = load double, double* %76, align 8
  %78 = load [51 x double]*, [51 x double]** %7, align 8
  %79 = load double, double* %10, align 8
  %80 = fptosi double %79 to i32
  %81 = add nsw i32 %80, 20
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [51 x double], [51 x double]* %78, i64 %82
  %84 = load double, double* %10, align 8
  %85 = fptosi double %84 to i32
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [51 x double], [51 x double]* %83, i64 0, i64 %86
  store double %77, double* %87, align 8
  store double 5.000000e+00, double* @IntGlob, align 8
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc1(%struct.Record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Record*, align 8
  store %struct.Record* %0, %struct.Record** %3, align 8
  %4 = load %struct.Record*, %struct.Record** %3, align 8
  %5 = getelementptr inbounds %struct.Record, %struct.Record* %4, i32 0, i32 3
  store double 5.000000e+00, double* %5, align 8
  %6 = load %struct.Record*, %struct.Record** %3, align 8
  %7 = getelementptr inbounds %struct.Record, %struct.Record* %6, i32 0, i32 3
  %8 = load double, double* %7, align 8
  %9 = load %struct.Record*, %struct.Record** %3, align 8
  %10 = getelementptr inbounds %struct.Record, %struct.Record* %9, i32 0, i32 0
  %11 = load %struct.Record*, %struct.Record** %10, align 8
  %12 = getelementptr inbounds %struct.Record, %struct.Record* %11, i32 0, i32 3
  store double %8, double* %12, align 8
  %13 = load %struct.Record*, %struct.Record** %3, align 8
  %14 = getelementptr inbounds %struct.Record, %struct.Record* %13, i32 0, i32 0
  %15 = load %struct.Record*, %struct.Record** %14, align 8
  %16 = load %struct.Record*, %struct.Record** %3, align 8
  %17 = getelementptr inbounds %struct.Record, %struct.Record* %16, i32 0, i32 0
  %18 = load %struct.Record*, %struct.Record** %17, align 8
  %19 = getelementptr inbounds %struct.Record, %struct.Record* %18, i32 0, i32 0
  store %struct.Record* %15, %struct.Record** %19, align 8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func1(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, i8* %4, align 1
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %4, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %19

18:                                               ; preds = %2
  store i32 10000, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc6(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @Func3(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32 10002, i32* %12, align 4
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %30 [
    i32 0, label %15
    i32 10000, label %17
    i32 10001, label %25
    i32 10002, label %27
    i32 10003, label %28
  ]

15:                                               ; preds = %13
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  br label %30

17:                                               ; preds = %13
  %18 = load double, double* @IntGlob, align 8
  %19 = fcmp ogt double %18, 1.000000e+02
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  store i32 0, i32* %21, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  store i32 10002, i32* %23, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %30

25:                                               ; preds = %13
  %26 = load i32*, i32** %5, align 8
  store i32 10000, i32* %26, align 4
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  %29 = load i32*, i32** %5, align 8
  store i32 10001, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %27, %25, %24, %15, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc2(double* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  store double* %0, double** %3, align 8
  %6 = load double*, double** %3, align 8
  %7 = load double, double* %6, align 8
  %8 = fadd double %7, 1.000000e+01
  store double %8, double* %4, align 8
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i8, i8* @Char1Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load double, double* %4, align 8
  %15 = fadd double %14, -1.000000e+00
  store double %15, double* %4, align 8
  %16 = load double, double* %4, align 8
  %17 = load double, double* @IntGlob, align 8
  %18 = fsub double %16, %17
  %19 = load double*, double** %3, align 8
  store double %18, double* %19, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %13, %9
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %25

24:                                               ; preds = %20
  br label %9

25:                                               ; preds = %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Func3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 10001
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Proc3(%struct.Record** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Record**, align 8
  store %struct.Record** %0, %struct.Record*** %3, align 8
  %4 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %5 = icmp ne %struct.Record* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %8 = getelementptr inbounds %struct.Record, %struct.Record* %7, i32 0, i32 0
  %9 = load %struct.Record*, %struct.Record** %8, align 8
  %10 = load %struct.Record**, %struct.Record*** %3, align 8
  store %struct.Record* %9, %struct.Record** %10, align 8
  br label %12

11:                                               ; preds = %1
  store double 1.000000e+02, double* @IntGlob, align 8
  br label %12

12:                                               ; preds = %11, %6
  %13 = load double, double* @IntGlob, align 8
  %14 = load %struct.Record*, %struct.Record** @PtrGlb, align 8
  %15 = getelementptr inbounds %struct.Record, %struct.Record* %14, i32 0, i32 3
  %16 = call i32 (i32, double, double*, ...) bitcast (i32 (double, double, double*)* @Proc7 to i32 (i32, double, double*, ...)*)(i32 10, double %13, double* %15)
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
