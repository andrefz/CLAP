; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Ack(3,%d): %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Fib(%.1f): %.1f\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Tak(%d,%d,%d): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Fib(3): %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Tak(3.0,2.0,1.0): %.1f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @ack(i32 %17, i32 %19)
  br label %22

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i32 [ %20, %16 ], [ 1, %21 ]
  %24 = call i32 @ack(i32 %13, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %8
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @fib(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 2
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %15

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sub nsw i32 %8, 2
  %10 = call i32 @fib(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = sub nsw i32 %11, 1
  %13 = call i32 @fib(i32 %12)
  %14 = add nsw i32 %10, %13
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %7, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @fibFP(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp olt double %4, 2.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 1.000000e+00, double* %2, align 8
  br label %15

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fsub double %8, 2.000000e+00
  %10 = call double @fibFP(double %9)
  %11 = load double, double* %3, align 8
  %12 = fsub double %11, 1.000000e+00
  %13 = call double @fibFP(double %12)
  %14 = fadd double %10, %13
  store double %14, double* %2, align 8
  br label %15

15:                                               ; preds = %7, %6
  %16 = load double, double* %2, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @tak(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @tak(i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @tak(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @tak(i32 %23, i32 %24, i32 %25)
  %27 = call i32 @tak(i32 %16, i32 %21, i32 %26)
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @takFP(double %0, double %1, double %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store double %2, double* %7, align 8
  %8 = load double, double* %6, align 8
  %9 = load double, double* %5, align 8
  %10 = fcmp olt double %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %3
  %12 = load double, double* %5, align 8
  %13 = fsub double %12, 1.000000e+00
  %14 = load double, double* %6, align 8
  %15 = load double, double* %7, align 8
  %16 = call double @takFP(double %13, double %14, double %15)
  %17 = load double, double* %6, align 8
  %18 = fsub double %17, 1.000000e+00
  %19 = load double, double* %7, align 8
  %20 = load double, double* %5, align 8
  %21 = call double @takFP(double %18, double %19, double %20)
  %22 = load double, double* %7, align 8
  %23 = fsub double %22, 1.000000e+00
  %24 = load double, double* %5, align 8
  %25 = load double, double* %6, align 8
  %26 = call double @takFP(double %23, double %24, double %25)
  %27 = call double @takFP(double %16, double %21, double %26)
  store double %27, double* %4, align 8
  br label %30

28:                                               ; preds = %3
  %29 = load double, double* %7, align 8
  store double %29, double* %4, align 8
  br label %30

30:                                               ; preds = %28, %11
  %31 = load double, double* %4, align 8
  ret double %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = call i32 @ack(i32 3, i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = sitofp i32 %13 to double
  %15 = fadd double 2.800000e+01, %14
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to double
  %18 = fadd double 2.800000e+01, %17
  %19 = call double @fibFP(double %18)
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), double %15, double %19)
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 3, %21
  %23 = load i32, i32* %6, align 4
  %24 = mul nsw i32 2, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 3, %26
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 2, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @tak(i32 %27, i32 %29, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %24, i32 %25, i32 %31)
  %33 = call i32 @fib(i32 3)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = call double @takFP(double 3.000000e+00, double 2.000000e+00, double 1.000000e+00)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), double %35)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
