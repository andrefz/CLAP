; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"Starting PI...\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c" x = %9.6f    y = %12.2f  low = %8d j = %7d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Pi = %9.6f ztot = %12.2f itot = %8d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @myadd(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %3, align 8
  %6 = load float, float* %5, align 4
  %7 = load float*, float** %4, align 8
  %8 = load float, float* %7, align 4
  %9 = fadd float %6, %8
  %10 = load float*, float** %3, align 8
  store float %9, float* %10, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store float 0.000000e+00, float* %6, align 4
  store i64 1, i64* %15, align 8
  store i64 1907, i64* %16, align 8
  store float 5.813000e+03, float* %7, align 4
  store float 1.307000e+03, float* %8, align 4
  store float 5.471000e+03, float* %9, align 4
  store i64 40000000, i64* %17, align 8
  store i64 1, i64* %18, align 8
  br label %21

21:                                               ; preds = %67, %2
  %22 = load i64, i64* %18, align 8
  %23 = load i64, i64* %17, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %70

25:                                               ; preds = %21
  %26 = load i64, i64* %16, align 8
  %27 = mul nsw i64 27611, %26
  store i64 %27, i64* %19, align 8
  %28 = load i64, i64* %19, align 8
  %29 = load i64, i64* %19, align 8
  %30 = sdiv i64 %29, 74383
  %31 = mul nsw i64 74383, %30
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = sitofp i64 %33 to float
  %35 = fpext float %34 to double
  %36 = fdiv double %35, 7.438300e+04
  %37 = fptrunc double %36 to float
  store float %37, float* %10, align 4
  %38 = load float, float* %8, align 4
  %39 = load float, float* %7, align 4
  %40 = fmul float %38, %39
  store float %40, float* %14, align 4
  %41 = load float, float* %14, align 4
  %42 = load float, float* %9, align 4
  %43 = load float, float* %14, align 4
  %44 = load float, float* %9, align 4
  %45 = fdiv float %43, %44
  %46 = fptosi float %45 to i64
  %47 = sitofp i64 %46 to float
  %48 = fmul float %42, %47
  %49 = fsub float %41, %48
  store float %49, float* %7, align 4
  %50 = load float, float* %7, align 4
  %51 = load float, float* %9, align 4
  %52 = fdiv float %50, %51
  store float %52, float* %11, align 4
  %53 = load float, float* %10, align 4
  %54 = load float, float* %10, align 4
  %55 = fmul float %53, %54
  %56 = load float, float* %11, align 4
  %57 = load float, float* %11, align 4
  %58 = fmul float %56, %57
  %59 = fadd float %55, %58
  store float %59, float* %12, align 4
  call void @myadd(float* %6, float* %12)
  %60 = load float, float* %12, align 4
  %61 = fpext float %60 to double
  %62 = fcmp ole double %61, 1.000000e+00
  br i1 %62, label %63, label %66

63:                                               ; preds = %25
  %64 = load i64, i64* %15, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %15, align 8
  br label %66

66:                                               ; preds = %63, %25
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %18, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %18, align 8
  br label %21

70:                                               ; preds = %21
  %71 = load float, float* %10, align 4
  %72 = fpext float %71 to double
  %73 = load float, float* %11, align 4
  %74 = fpext float %73 to double
  %75 = load i64, i64* %15, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64, i64* %18, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), double %72, double %74, i32 %76, i32 %78)
  %80 = load i64, i64* %15, align 8
  %81 = sitofp i64 %80 to float
  %82 = fpext float %81 to double
  %83 = fmul double 4.000000e+00, %82
  %84 = load i64, i64* %17, align 8
  %85 = sitofp i64 %84 to float
  %86 = fpext float %85 to double
  %87 = fdiv double %83, %86
  %88 = fptrunc double %87 to float
  store float %88, float* %13, align 4
  %89 = load float, float* %13, align 4
  %90 = fpext float %89 to double
  %91 = load float, float* %6, align 4
  %92 = fpext float %91 to double
  %93 = fmul double %92, 0.000000e+00
  %94 = load i64, i64* %17, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), double %90, double %93, i32 %95)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
