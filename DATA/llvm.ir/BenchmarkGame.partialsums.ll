; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"%.9f\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(2/3)^k\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"k^-0.5\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"1/k(k+1)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Flint Hills\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Cookson Hills\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Harmonic\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Riemann Zeta\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Alternating Harmonic\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Gregory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local <2 x double> @make_vec(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca <2 x double>, align 16
  %6 = alloca double*, align 8
  store double %0, double* %3, align 8
  store double %1, double* %4, align 8
  %7 = bitcast <2 x double>* %5 to double*
  store double* %7, double** %6, align 8
  %8 = load double, double* %3, align 8
  %9 = load double*, double** %6, align 8
  store double %8, double* %9, align 8
  %10 = load double, double* %4, align 8
  %11 = load double*, double** %6, align 8
  %12 = getelementptr inbounds double, double* %11, i64 1
  store double %10, double* %12, align 8
  %13 = load <2 x double>, <2 x double>* %5, align 16
  ret <2 x double> %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @sum_vec(<2 x double> %0) #0 {
  %2 = alloca <2 x double>, align 16
  %3 = alloca double*, align 8
  store <2 x double> %0, <2 x double>* %2, align 16
  %4 = bitcast <2 x double>* %2 to double*
  store double* %4, double** %3, align 8
  %5 = load double*, double** %3, align 8
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %3, align 8
  %8 = getelementptr inbounds double, double* %7, i64 1
  %9 = load double, double* %8, align 8
  %10 = fadd double %6, %9
  ret double %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca <2 x double>, align 16
  %11 = alloca <2 x double>, align 16
  %12 = alloca <2 x double>, align 16
  %13 = alloca <2 x double>, align 16
  %14 = alloca <2 x double>, align 16
  %15 = alloca <2 x double>, align 16
  %16 = alloca <2 x double>, align 16
  %17 = alloca <2 x double>, align 16
  %18 = alloca <2 x double>, align 16
  %19 = alloca <2 x double>, align 16
  %20 = alloca <2 x double>, align 16
  %21 = alloca <2 x double>, align 16
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  store i32 2500000, i32* %26, align 4
  %27 = call <2 x double> @make_vec(double 0.000000e+00, double 0.000000e+00)
  store <2 x double> %27, <2 x double>* %15, align 16
  %28 = call <2 x double> @make_vec(double 1.000000e+00, double 1.000000e+00)
  store <2 x double> %28, <2 x double>* %16, align 16
  %29 = call <2 x double> @make_vec(double 2.000000e+00, double 2.000000e+00)
  store <2 x double> %29, <2 x double>* %17, align 16
  %30 = call <2 x double> @make_vec(double -1.000000e+00, double -1.000000e+00)
  store <2 x double> %30, <2 x double>* %19, align 16
  %31 = call <2 x double> @make_vec(double 1.000000e+00, double 2.000000e+00)
  store <2 x double> %31, <2 x double>* %18, align 16
  %32 = call <2 x double> @make_vec(double 1.000000e+00, double -1.000000e+00)
  store <2 x double> %32, <2 x double>* %21, align 16
  %33 = load <2 x double>, <2 x double>* %15, align 16
  store <2 x double> %33, <2 x double>* %14, align 16
  store <2 x double> %33, <2 x double>* %13, align 16
  store <2 x double> %33, <2 x double>* %12, align 16
  store <2 x double> %33, <2 x double>* %11, align 16
  store <2 x double> %33, <2 x double>* %10, align 16
  store double 1.000000e+00, double* %22, align 8
  br label %34

34:                                               ; preds = %75, %2
  %35 = load double, double* %22, align 8
  %36 = load i32, i32* %26, align 4
  %37 = sitofp i32 %36 to double
  %38 = fcmp ole double %35, %37
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load double, double* %22, align 8
  %41 = fsub double %40, 1.000000e+00
  %42 = call double @pow(double 0x3FE5555555555555, double %41) #3
  %43 = load double, double* %6, align 8
  %44 = fadd double %43, %42
  store double %44, double* %6, align 8
  %45 = load double, double* %22, align 8
  %46 = call double @sqrt(double %45) #3
  %47 = fdiv double 1.000000e+00, %46
  %48 = load double, double* %7, align 8
  %49 = fadd double %48, %47
  store double %49, double* %7, align 8
  %50 = load double, double* %22, align 8
  %51 = load double, double* %22, align 8
  %52 = fmul double %50, %51
  %53 = load double, double* %22, align 8
  %54 = fmul double %52, %53
  store double %54, double* %23, align 8
  %55 = load double, double* %22, align 8
  %56 = call double @sin(double %55) #3
  store double %56, double* %24, align 8
  %57 = load double, double* %22, align 8
  %58 = call double @cos(double %57) #3
  store double %58, double* %25, align 8
  %59 = load double, double* %23, align 8
  %60 = load double, double* %24, align 8
  %61 = fmul double %59, %60
  %62 = load double, double* %24, align 8
  %63 = fmul double %61, %62
  %64 = fdiv double 1.000000e+00, %63
  %65 = load double, double* %8, align 8
  %66 = fadd double %65, %64
  store double %66, double* %8, align 8
  %67 = load double, double* %23, align 8
  %68 = load double, double* %25, align 8
  %69 = fmul double %67, %68
  %70 = load double, double* %25, align 8
  %71 = fmul double %69, %70
  %72 = fdiv double 1.000000e+00, %71
  %73 = load double, double* %9, align 8
  %74 = fadd double %73, %72
  store double %74, double* %9, align 8
  br label %75

75:                                               ; preds = %39
  %76 = load double, double* %22, align 8
  %77 = fadd double %76, 1.000000e+00
  store double %77, double* %22, align 8
  br label %34

78:                                               ; preds = %34
  %79 = load <2 x double>, <2 x double>* %18, align 16
  store <2 x double> %79, <2 x double>* %20, align 16
  br label %80

80:                                               ; preds = %122, %78
  %81 = bitcast <2 x double>* %20 to double*
  %82 = load double, double* %81, align 16
  %83 = load i32, i32* %26, align 4
  %84 = sitofp i32 %83 to double
  %85 = fcmp ole double %82, %84
  br i1 %85, label %86, label %126

86:                                               ; preds = %80
  %87 = load <2 x double>, <2 x double>* %16, align 16
  %88 = load <2 x double>, <2 x double>* %20, align 16
  %89 = load <2 x double>, <2 x double>* %20, align 16
  %90 = load <2 x double>, <2 x double>* %16, align 16
  %91 = fadd <2 x double> %89, %90
  %92 = fmul <2 x double> %88, %91
  %93 = fdiv <2 x double> %87, %92
  %94 = load <2 x double>, <2 x double>* %12, align 16
  %95 = fadd <2 x double> %94, %93
  store <2 x double> %95, <2 x double>* %12, align 16
  %96 = load <2 x double>, <2 x double>* %16, align 16
  %97 = load <2 x double>, <2 x double>* %20, align 16
  %98 = fdiv <2 x double> %96, %97
  %99 = load <2 x double>, <2 x double>* %10, align 16
  %100 = fadd <2 x double> %99, %98
  store <2 x double> %100, <2 x double>* %10, align 16
  %101 = load <2 x double>, <2 x double>* %16, align 16
  %102 = load <2 x double>, <2 x double>* %20, align 16
  %103 = load <2 x double>, <2 x double>* %20, align 16
  %104 = fmul <2 x double> %102, %103
  %105 = fdiv <2 x double> %101, %104
  %106 = load <2 x double>, <2 x double>* %11, align 16
  %107 = fadd <2 x double> %106, %105
  store <2 x double> %107, <2 x double>* %11, align 16
  %108 = load <2 x double>, <2 x double>* %21, align 16
  %109 = load <2 x double>, <2 x double>* %20, align 16
  %110 = fdiv <2 x double> %108, %109
  %111 = load <2 x double>, <2 x double>* %13, align 16
  %112 = fadd <2 x double> %111, %110
  store <2 x double> %112, <2 x double>* %13, align 16
  %113 = load <2 x double>, <2 x double>* %21, align 16
  %114 = load <2 x double>, <2 x double>* %17, align 16
  %115 = load <2 x double>, <2 x double>* %20, align 16
  %116 = fmul <2 x double> %114, %115
  %117 = load <2 x double>, <2 x double>* %16, align 16
  %118 = fsub <2 x double> %116, %117
  %119 = fdiv <2 x double> %113, %118
  %120 = load <2 x double>, <2 x double>* %14, align 16
  %121 = fadd <2 x double> %120, %119
  store <2 x double> %121, <2 x double>* %14, align 16
  br label %122

122:                                              ; preds = %86
  %123 = load <2 x double>, <2 x double>* %17, align 16
  %124 = load <2 x double>, <2 x double>* %20, align 16
  %125 = fadd <2 x double> %124, %123
  store <2 x double> %125, <2 x double>* %20, align 16
  br label %80

126:                                              ; preds = %80
  %127 = load double, double* %6, align 8
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %129 = load double, double* %7, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %131 = load <2 x double>, <2 x double>* %12, align 16
  %132 = call double @sum_vec(<2 x double> %131)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %134 = load double, double* %8, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %136 = load double, double* %9, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %136, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %138 = load <2 x double>, <2 x double>* %10, align 16
  %139 = call double @sum_vec(<2 x double> %138)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %139, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %141 = load <2 x double>, <2 x double>* %11, align 16
  %142 = call double @sum_vec(<2 x double> %141)
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %142, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %144 = load <2 x double>, <2 x double>* %13, align 16
  %145 = call double @sum_vec(<2 x double> %144)
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %147 = load <2 x double>, <2 x double>* %14, align 16
  %148 = call double @sum_vec(<2 x double> %147)
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), double %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
