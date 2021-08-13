; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@tmp = common dso_local global double* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%.9f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @A(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %7, %11
  %13 = sdiv i32 %12, 2
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sitofp i32 %16 to double
  ret double %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @dot(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  store double 0.000000e+00, double* %8, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load double*, double** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds double, double* %14, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  %23 = load double, double* %22, align 8
  %24 = fmul double %18, %23
  %25 = load double, double* %8, align 8
  %26 = fadd double %25, %24
  store double %26, double* %8, align 8
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %9

30:                                               ; preds = %9
  %31 = load double, double* %8, align 8
  ret double %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mult_Av(double* %0, double* %1, i32 %2) #1 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca <2 x double>, align 16
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca <2 x double>, align 16
  %20 = alloca i32, align 4
  %21 = alloca <2 x double>, align 16
  %22 = alloca <2 x double>, align 16
  store double* %0, double** %15, align 8
  store double* %1, double** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %84, %3
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  store <2 x double> zeroinitializer, <2 x double>* %14, align 16
  %28 = load <2 x double>, <2 x double>* %14, align 16
  store <2 x double> %28, <2 x double>* %19, align 16
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %71, %27
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load double*, double** %15, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %15, align 8
  %40 = load i32, i32* %20, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %39, i64 %42
  %44 = load double, double* %43, align 8
  store double %38, double* %4, align 8
  store double %44, double* %5, align 8
  %45 = load double, double* %5, align 8
  %46 = insertelement <2 x double> undef, double %45, i32 0
  %47 = load double, double* %4, align 8
  %48 = insertelement <2 x double> %46, double %47, i32 1
  store <2 x double> %48, <2 x double>* %6, align 16
  %49 = load <2 x double>, <2 x double>* %6, align 16
  store <2 x double> %49, <2 x double>* %21, align 16
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %20, align 4
  %52 = call double @A(i32 %50, i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, 1
  %56 = call double @A(i32 %53, i32 %55)
  store double %52, double* %7, align 8
  store double %56, double* %8, align 8
  %57 = load double, double* %8, align 8
  %58 = insertelement <2 x double> undef, double %57, i32 0
  %59 = load double, double* %7, align 8
  %60 = insertelement <2 x double> %58, double %59, i32 1
  store <2 x double> %60, <2 x double>* %9, align 16
  %61 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> %61, <2 x double>* %22, align 16
  %62 = load <2 x double>, <2 x double>* %19, align 16
  %63 = load <2 x double>, <2 x double>* %21, align 16
  %64 = load <2 x double>, <2 x double>* %22, align 16
  store <2 x double> %63, <2 x double>* %10, align 16
  store <2 x double> %64, <2 x double>* %11, align 16
  %65 = load <2 x double>, <2 x double>* %10, align 16
  %66 = load <2 x double>, <2 x double>* %11, align 16
  %67 = fdiv <2 x double> %65, %66
  store <2 x double> %62, <2 x double>* %12, align 16
  store <2 x double> %67, <2 x double>* %13, align 16
  %68 = load <2 x double>, <2 x double>* %12, align 16
  %69 = load <2 x double>, <2 x double>* %13, align 16
  %70 = fadd <2 x double> %68, %69
  store <2 x double> %70, <2 x double>* %19, align 16
  br label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %20, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load <2 x double>, <2 x double>* %19, align 16
  %76 = extractelement <2 x double> %75, i32 0
  %77 = load <2 x double>, <2 x double>* %19, align 16
  %78 = extractelement <2 x double> %77, i32 1
  %79 = fadd double %76, %78
  %80 = load double*, double** %16, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  store double %79, double* %83, align 8
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %23

87:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mult_Atv(double* %0, double* %1, i32 %2) #1 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca <2 x double>, align 16
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca <2 x double>, align 16
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca <2 x double>, align 16
  %20 = alloca i32, align 4
  %21 = alloca <2 x double>, align 16
  %22 = alloca <2 x double>, align 16
  store double* %0, double** %15, align 8
  store double* %1, double** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %23

23:                                               ; preds = %84, %3
  %24 = load i32, i32* %18, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %23
  store <2 x double> zeroinitializer, <2 x double>* %14, align 16
  %28 = load <2 x double>, <2 x double>* %14, align 16
  store <2 x double> %28, <2 x double>* %19, align 16
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %71, %27
  %30 = load i32, i32* %20, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load double*, double** %15, align 8
  %35 = load i32, i32* %20, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %15, align 8
  %40 = load i32, i32* %20, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds double, double* %39, i64 %42
  %44 = load double, double* %43, align 8
  store double %38, double* %4, align 8
  store double %44, double* %5, align 8
  %45 = load double, double* %5, align 8
  %46 = insertelement <2 x double> undef, double %45, i32 0
  %47 = load double, double* %4, align 8
  %48 = insertelement <2 x double> %46, double %47, i32 1
  store <2 x double> %48, <2 x double>* %6, align 16
  %49 = load <2 x double>, <2 x double>* %6, align 16
  store <2 x double> %49, <2 x double>* %21, align 16
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call double @A(i32 %50, i32 %51)
  %53 = load i32, i32* %20, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %18, align 4
  %56 = call double @A(i32 %54, i32 %55)
  store double %52, double* %7, align 8
  store double %56, double* %8, align 8
  %57 = load double, double* %8, align 8
  %58 = insertelement <2 x double> undef, double %57, i32 0
  %59 = load double, double* %7, align 8
  %60 = insertelement <2 x double> %58, double %59, i32 1
  store <2 x double> %60, <2 x double>* %9, align 16
  %61 = load <2 x double>, <2 x double>* %9, align 16
  store <2 x double> %61, <2 x double>* %22, align 16
  %62 = load <2 x double>, <2 x double>* %19, align 16
  %63 = load <2 x double>, <2 x double>* %21, align 16
  %64 = load <2 x double>, <2 x double>* %22, align 16
  store <2 x double> %63, <2 x double>* %10, align 16
  store <2 x double> %64, <2 x double>* %11, align 16
  %65 = load <2 x double>, <2 x double>* %10, align 16
  %66 = load <2 x double>, <2 x double>* %11, align 16
  %67 = fdiv <2 x double> %65, %66
  store <2 x double> %62, <2 x double>* %12, align 16
  store <2 x double> %67, <2 x double>* %13, align 16
  %68 = load <2 x double>, <2 x double>* %12, align 16
  %69 = load <2 x double>, <2 x double>* %13, align 16
  %70 = fadd <2 x double> %68, %69
  store <2 x double> %70, <2 x double>* %19, align 16
  br label %71

71:                                               ; preds = %33
  %72 = load i32, i32* %20, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %20, align 4
  br label %29

74:                                               ; preds = %29
  %75 = load <2 x double>, <2 x double>* %19, align 16
  %76 = extractelement <2 x double> %75, i32 0
  %77 = load <2 x double>, <2 x double>* %19, align 16
  %78 = extractelement <2 x double> %77, i32 1
  %79 = fadd double %76, %78
  %80 = load double*, double** %16, align 8
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  store double %79, double* %83, align 8
  br label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %18, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  br label %23

87:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mult_AtAv(double* %0, double* %1, i32 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load double*, double** %4, align 8
  %8 = load double*, double** @tmp, align 8
  %9 = load i32, i32* %6, align 4
  call void @mult_Av(double* %7, double* %8, i32 %9)
  %10 = load double*, double** @tmp, align 8
  %11 = load double*, double** %5, align 8
  %12 = load i32, i32* %6, align 4
  call void @mult_Atv(double* %10, double* %11, i32 %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #5
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 2000, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %2
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = call noalias i8* @memalign(i64 16, i64 %27) #6
  %29 = bitcast i8* %28 to double*
  store double* %29, double** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = call noalias i8* @memalign(i64 16, i64 %32) #6
  %34 = bitcast i8* %33 to double*
  store double* %34, double** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = call noalias i8* @memalign(i64 16, i64 %37) #6
  %39 = bitcast i8* %38 to double*
  store double* %39, double** @tmp, align 8
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %49, %24
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load double*, double** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double, double* %45, i64 %47
  store double 1.000000e+00, double* %48, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %40

52:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %63, %52
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load double*, double** %7, align 8
  %58 = load double*, double** %8, align 8
  %59 = load i32, i32* %6, align 4
  call void @mult_AtAv(double* %57, double* %58, i32 %59)
  %60 = load double*, double** %8, align 8
  %61 = load double*, double** %7, align 8
  %62 = load i32, i32* %6, align 4
  call void @mult_AtAv(double* %60, double* %61, i32 %62)
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %53

66:                                               ; preds = %53
  %67 = load double*, double** %7, align 8
  %68 = load double*, double** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call double @dot(double* %67, double* %68, i32 %69)
  %71 = load double*, double** %8, align 8
  %72 = load double*, double** %8, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call double @dot(double* %71, double* %72, i32 %73)
  %75 = fdiv double %70, %74
  %76 = call double @sqrt(double %75) #6
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), double %76)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @memalign(i64, i64) #3

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #3

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
