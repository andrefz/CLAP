; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A0 = dso_local global double 1.000000e+00, align 8
@A1 = dso_local global double 0xBFC5555555559705, align 8
@A2 = dso_local global double 0x3F811111113AE9A3, align 8
@A3 = dso_local global double 0x3F2A01A03FB1CA71, align 8
@A4 = dso_local global double 0x3EC71DF284AA3566, align 8
@A5 = dso_local global double 0x3E5AEB5A8CF8A426, align 8
@A6 = dso_local global double 0x3DE68DF75229C1A6, align 8
@B0 = dso_local global double 1.000000e+00, align 8
@B1 = dso_local global double 0xBFDFFFFFFFFF8156, align 8
@B2 = dso_local global double 0x3FA5555555290224, align 8
@B3 = dso_local global double 0xBF56C16BFFE76516, align 8
@B4 = dso_local global double 0x3EFA019528242DB7, align 8
@B5 = dso_local global double 0xBE927BB3D47DDB8E, align 8
@B6 = dso_local global double 0x3E2157B275DF182A, align 8
@C0 = dso_local global double 1.000000e+00, align 8
@C1 = dso_local global double 0x3FEFFFFFFE37B3E2, align 8
@C2 = dso_local global double 0x3FDFFFFFCC2BA4B8, align 8
@C3 = dso_local global double 0x3FC555587C476915, align 8
@C4 = dso_local global double 0x3FA5555B7E795548, align 8
@C5 = dso_local global double 0x3F810D9A4AD9120C, align 8
@C6 = dso_local global double 0x3F5713187EDB8C05, align 8
@C7 = dso_local global double 0x3F26C077C8173F3A, align 8
@C8 = dso_local global double 0x3F049D03FE04B1CF, align 8
@D1 = dso_local global double 0x3FA47AE143138374, align 8
@D2 = dso_local global double 9.600000e-04, align 8
@D3 = dso_local global double 0x3EB4B05A0FF4A728, align 8
@E2 = dso_local global double 4.800000e-04, align 8
@E3 = dso_local global double 4.110510e-07, align 8
@TLimit = common dso_local global double 0.000000e+00, align 8
@piref = common dso_local global double 0.000000e+00, align 8
@one = common dso_local global double 0.000000e+00, align 8
@two = common dso_local global double 0.000000e+00, align 8
@three = common dso_local global double 0.000000e+00, align 8
@four = common dso_local global double 0.000000e+00, align 8
@five = common dso_local global double 0.000000e+00, align 8
@scale = common dso_local global double 0.000000e+00, align 8
@sa = common dso_local global double 0.000000e+00, align 8
@sc = common dso_local global double 0.000000e+00, align 8
@sb = common dso_local global double 0.000000e+00, align 8
@piprg = common dso_local global double 0.000000e+00, align 8
@pierr = common dso_local global double 0.000000e+00, align 8
@nulltime = common dso_local global double 0.000000e+00, align 8
@TimeArray = common dso_local global [3 x double] zeroinitializer, align 16
@T = common dso_local global [36 x double] zeroinitializer, align 16
@sd = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"   Module     Error        RunTime      MFLOPS\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"                            (usec)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i64 15625, i64* %7, align 8
  store double 1.000000e+00, double* @TLimit, align 8
  store i64 512000000, i64* %8, align 8
  store double 0x400921FB54442D18, double* @piref, align 8
  store double 1.000000e+00, double* @one, align 8
  store double 2.000000e+00, double* @two, align 8
  store double 3.000000e+00, double* @three, align 8
  store double 4.000000e+00, double* @four, align 8
  store double 5.000000e+00, double* @five, align 8
  %14 = load double, double* @one, align 8
  store double %14, double* @scale, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i64, i64* %7, align 8
  %18 = mul nsw i64 %17, 10000
  store i64 %18, i64* %10, align 8
  %19 = load double, double* @five, align 8
  %20 = fneg double %19
  store double %20, double* %2, align 8
  %21 = load double, double* @one, align 8
  %22 = fneg double %21
  store double %22, double* @sa, align 8
  store i64 1, i64* %9, align 8
  br label %23

23:                                               ; preds = %33, %0
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load double, double* %2, align 8
  %29 = fneg double %28
  store double %29, double* %2, align 8
  %30 = load double, double* @sa, align 8
  %31 = load double, double* %2, align 8
  %32 = fadd double %30, %31
  store double %32, double* @sa, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %9, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %9, align 8
  br label %23

36:                                               ; preds = %23
  %37 = load i64, i64* %10, align 8
  %38 = sitofp i64 %37 to double
  store double %38, double* @sc, align 8
  %39 = load double, double* @sa, align 8
  store double %39, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %68, %36
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %71

44:                                               ; preds = %40
  %45 = load double, double* %2, align 8
  %46 = fneg double %45
  store double %46, double* %2, align 8
  %47 = load double, double* @sa, align 8
  %48 = load double, double* %2, align 8
  %49 = fadd double %47, %48
  store double %49, double* @sa, align 8
  %50 = load double, double* %3, align 8
  %51 = load double, double* @two, align 8
  %52 = fadd double %50, %51
  store double %52, double* %3, align 8
  %53 = load double, double* %6, align 8
  %54 = load double, double* %2, align 8
  %55 = load double, double* %3, align 8
  %56 = fsub double %54, %55
  %57 = fadd double %53, %56
  store double %57, double* %6, align 8
  %58 = load double, double* %4, align 8
  %59 = load double, double* %2, align 8
  %60 = load double, double* %3, align 8
  %61 = fmul double %59, %60
  %62 = fsub double %58, %61
  store double %62, double* %4, align 8
  %63 = load double, double* %5, align 8
  %64 = load double, double* %2, align 8
  %65 = load double, double* %3, align 8
  %66 = fdiv double %64, %65
  %67 = fadd double %63, %66
  store double %67, double* %5, align 8
  br label %68

68:                                               ; preds = %44
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %40

71:                                               ; preds = %40
  %72 = load double, double* @sa, align 8
  %73 = load double, double* %6, align 8
  %74 = fmul double %72, %73
  %75 = load double, double* @sc, align 8
  %76 = fdiv double %74, %75
  %77 = fptosi double %76 to i64
  store i64 %77, i64* %10, align 8
  %78 = load double, double* @four, align 8
  %79 = load double, double* %5, align 8
  %80 = fmul double %78, %79
  %81 = load double, double* @five, align 8
  %82 = fdiv double %80, %81
  store double %82, double* @sa, align 8
  %83 = load double, double* @sa, align 8
  %84 = load double, double* @five, align 8
  %85 = load double, double* %4, align 8
  %86 = fdiv double %84, %85
  %87 = fadd double %83, %86
  store double %87, double* @sb, align 8
  store double 3.125000e+01, double* @sc, align 8
  %88 = load double, double* @sb, align 8
  %89 = load double, double* @sc, align 8
  %90 = load double, double* %4, align 8
  %91 = load double, double* %4, align 8
  %92 = fmul double %90, %91
  %93 = load double, double* %4, align 8
  %94 = fmul double %92, %93
  %95 = fdiv double %89, %94
  %96 = fsub double %88, %95
  store double %96, double* @piprg, align 8
  %97 = load double, double* @piprg, align 8
  %98 = load double, double* @piref, align 8
  %99 = fsub double %97, %98
  store double %99, double* @pierr, align 8
  %100 = load double, double* @pierr, align 8
  %101 = fmul double %100, 1.000000e-30
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), double %101, double 0.000000e+00, double 0.000000e+00)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
