; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__mpz_struct = type { i32, i32, i64* }

@tmp1 = common dso_local global [1 x %struct.__mpz_struct] zeroinitializer, align 16
@num = common dso_local global [1 x %struct.__mpz_struct] zeroinitializer, align 16
@tmp2 = common dso_local global [1 x %struct.__mpz_struct] zeroinitializer, align 16
@acc = common dso_local global [1 x %struct.__mpz_struct] zeroinitializer, align 16
@den = common dso_local global [1 x %struct.__mpz_struct] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"\09:%u\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extract_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp1, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), i64 %4)
  call void @__gmpz_add(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp2, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp1, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0))
  call void @__gmpz_tdiv_q(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp1, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp2, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @den, i64 0, i64 0))
  %5 = call i64 @__gmpz_get_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp1, i64 0, i64 0)) #3
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

declare dso_local void @__gmpz_mul_ui(%struct.__mpz_struct*, %struct.__mpz_struct*, i64) #1

declare dso_local void @__gmpz_add(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) #1

declare dso_local void @__gmpz_tdiv_q(%struct.__mpz_struct*, %struct.__mpz_struct*, %struct.__mpz_struct*) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @__gmpz_get_ui(%struct.__mpz_struct*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @eliminate_digit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  call void @__gmpz_submul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @den, i64 0, i64 0), i64 %4)
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), i64 10)
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), i64 10)
  ret void
}

declare dso_local void @__gmpz_submul_ui(%struct.__mpz_struct*, %struct.__mpz_struct*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @next_term(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul i32 %4, 2
  %6 = add i32 %5, 1
  store i32 %6, i32* %3, align 4
  call void @__gmpz_addmul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), i64 2)
  %7 = load i32, i32* %3, align 4
  %8 = zext i32 %7 to i64
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), i64 %8)
  %9 = load i32, i32* %3, align 4
  %10 = zext i32 %9 to i64
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @den, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @den, i64 0, i64 0), i64 %10)
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  call void @__gmpz_mul_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), i64 %12)
  ret void
}

declare dso_local void @__gmpz_addmul_ui(%struct.__mpz_struct*, %struct.__mpz_struct*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @atoi(i8* %12) #3
  store i32 %13, i32* %9, align 4
  call void @__gmpz_init(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp1, i64 0, i64 0))
  call void @__gmpz_init(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @tmp2, i64 0, i64 0))
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0), i64 0)
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @den, i64 0, i64 0), i64 1)
  call void @__gmpz_init_set_ui(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), i64 1)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %41, %29, %23, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %7, align 4
  call void @next_term(i32 %20)
  %21 = call i32 @__gmpz_cmp(%struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @num, i64 0, i64 0), %struct.__mpz_struct* getelementptr inbounds ([1 x %struct.__mpz_struct], [1 x %struct.__mpz_struct]* @acc, i64 0, i64 0)) #3
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %14

24:                                               ; preds = %18
  %25 = call i32 @extract_digit(i32 3)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @extract_digit(i32 4)
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %14

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = add i32 48, %31
  %33 = call i32 @putchar(i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  %36 = urem i32 %35, 10
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %6, align 4
  call void @eliminate_digit(i32 %42)
  br label %14

43:                                               ; preds = %14
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

declare dso_local void @__gmpz_init(%struct.__mpz_struct*) #1

declare dso_local void @__gmpz_init_set_ui(%struct.__mpz_struct*, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @__gmpz_cmp(%struct.__mpz_struct*, %struct.__mpz_struct*) #2

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
