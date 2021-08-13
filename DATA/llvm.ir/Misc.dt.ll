; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c" %i iterations of each test. \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c" inner loop / array size %i.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = bitcast double** %6 to i8**
  %10 = call i32 @posix_memalign(i8** %9, i64 16, i64 16384) #3
  %11 = bitcast double** %7 to i8**
  %12 = call i32 @posix_memalign(i8** %11, i64 16, i64 16384) #3
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 131072)
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 2048)
  store i64 0, i64* %8, align 8
  br label %15

15:                                               ; preds = %37, %2
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %16, 2048
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load i64, i64* %8, align 8
  %20 = sub nsw i64 2048, %19
  %21 = sitofp i64 %20 to float
  %22 = call float @cosf(float %21) #3
  %23 = fpext float %22 to double
  %24 = fmul double 0x3FF000001AD7F29B, %23
  %25 = load double*, double** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds double, double* %25, i64 %26
  store double %24, double* %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sitofp i64 %28 to float
  %30 = call float @sinf(float %29) #3
  %31 = fpext float %30 to double
  %32 = fmul double 1.000000e-10, %31
  %33 = fadd double 1.000000e+00, %32
  %34 = load double*, double** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds double, double* %34, i64 %35
  store double %33, double* %36, align 8
  br label %37

37:                                               ; preds = %18
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %15

40:                                               ; preds = %15
  %41 = load double*, double** %6, align 8
  %42 = load double*, double** %7, align 8
  call void @double_array_divs_variable(double* %41, double* %42)
  %43 = load double*, double** %6, align 8
  %44 = getelementptr inbounds double, double* %43, i64 0
  %45 = load double, double* %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %45)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local float @cosf(float) #1

; Function Attrs: nounwind
declare dso_local float @sinf(float) #1

; Function Attrs: noinline nounwind uwtable
define internal void @double_array_divs_variable(double* noalias %0, double* noalias %1) #0 {
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store double* %0, double** %3, align 8
  store double* %1, double** %4, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i64, i64* %6, align 8
  %9 = icmp slt i64 %8, 131072
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 2048
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load double*, double** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds double, double* %15, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load double*, double** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds double, double* %19, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fdiv double %22, %18
  store double %23, double* %21, align 8
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %11

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %6, align 8
  br label %7

31:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
