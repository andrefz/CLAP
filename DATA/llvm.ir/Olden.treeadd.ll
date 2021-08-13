; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tree = type { i32, %struct.tree*, %struct.tree* }

@NumNodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Treeadd with %d levels on %d processors \0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"About to enter TreeAlloc\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"About to enter TreeAdd\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Received result of %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 2
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* @NumNodes, align 4
  br label %14

13:                                               ; preds = %2
  store i32 4, i32* @NumNodes, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20)
  store i32 %21, i32* %5, align 4
  br label %23

22:                                               ; preds = %14
  store i32 16, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @dealwithargs(i32 %10, i8** %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NumNodes, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NumNodes, align 4
  %19 = call %struct.tree* @TreeAlloc(i32 %17, i32 0, i32 %18)
  store %struct.tree* %19, %struct.tree** %6, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %27, %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 100
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.tree*, %struct.tree** %6, align 8
  %26 = call i32 @TreeAdd(%struct.tree* %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %21

30:                                               ; preds = %21
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %31)
  call void @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @TreeAdd(%struct.tree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree*, align 8
  %8 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %3, align 8
  %9 = load %struct.tree*, %struct.tree** %3, align 8
  %10 = icmp eq %struct.tree* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.tree*, %struct.tree** %3, align 8
  %14 = getelementptr inbounds %struct.tree, %struct.tree* %13, i32 0, i32 1
  %15 = load %struct.tree*, %struct.tree** %14, align 8
  store %struct.tree* %15, %struct.tree** %6, align 8
  %16 = load %struct.tree*, %struct.tree** %6, align 8
  %17 = call i32 @TreeAdd(%struct.tree* %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.tree*, %struct.tree** %3, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 2
  %20 = load %struct.tree*, %struct.tree** %19, align 8
  store %struct.tree* %20, %struct.tree** %7, align 8
  %21 = load %struct.tree*, %struct.tree** %7, align 8
  %22 = call i32 @TreeAdd(%struct.tree* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.tree*, %struct.tree** %3, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %12, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.tree* @TreeAlloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tree*, align 8
  %9 = alloca %struct.tree*, align 8
  %10 = alloca %struct.tree*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.tree* null, %struct.tree** %4, align 8
  br label %41

14:                                               ; preds = %3
  %15 = call i8* @malloc(i32 24)
  %16 = bitcast i8* %15 to %struct.tree*
  store %struct.tree* %16, %struct.tree** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %7, align 4
  %24 = sdiv i32 %23, 2
  %25 = call %struct.tree* @TreeAlloc(i32 %18, i32 %22, i32 %24)
  store %struct.tree* %25, %struct.tree** %10, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 2
  %31 = call %struct.tree* @TreeAlloc(i32 %27, i32 %28, i32 %30)
  store %struct.tree* %31, %struct.tree** %9, align 8
  %32 = load %struct.tree*, %struct.tree** %8, align 8
  %33 = getelementptr inbounds %struct.tree, %struct.tree* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.tree*, %struct.tree** %10, align 8
  %35 = load %struct.tree*, %struct.tree** %8, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 1
  store %struct.tree* %34, %struct.tree** %36, align 8
  %37 = load %struct.tree*, %struct.tree** %9, align 8
  %38 = load %struct.tree*, %struct.tree** %8, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 2
  store %struct.tree* %37, %struct.tree** %39, align 8
  %40 = load %struct.tree*, %struct.tree** %8, align 8
  store %struct.tree* %40, %struct.tree** %4, align 8
  br label %41

41:                                               ; preds = %14, %13
  %42 = load %struct.tree*, %struct.tree** %4, align 8
  ret %struct.tree* %42
}

declare dso_local i8* @malloc(i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
