; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { %struct.node*, %struct.node*, i32 }
%struct.element = type { i32, i32 }
%struct.complex = type { float, float }

@seed = common dso_local global i64 0, align 8
@biggest = common dso_local global i32 0, align 4
@littlest = common dso_local global i32 0, align 4
@sortlist = common dso_local global [5001 x i32] zeroinitializer, align 16
@tree = common dso_local global %struct.node* null, align 8
@value = common dso_local global float 0.000000e+00, align 4
@fixed = common dso_local global float 0.000000e+00, align 4
@floated = common dso_local global float 0.000000e+00, align 4
@permarray = common dso_local global [11 x i32] zeroinitializer, align 16
@pctr = common dso_local global i32 0, align 4
@stack = common dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = common dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = common dso_local global i32 0, align 4
@movesdone = common dso_local global i32 0, align 4
@ima = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = common dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = common dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = common dso_local global [4 x i32] zeroinitializer, align 16
@class = common dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = common dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = common dso_local global [512 x i32] zeroinitializer, align 16
@p = common dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = common dso_local global i32 0, align 4
@kount = common dso_local global i32 0, align 4
@top = common dso_local global i32 0, align 4
@z = common dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = common dso_local global [257 x %struct.complex] zeroinitializer, align 16
@e = common dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = common dso_local global float 0.000000e+00, align 4
@zi = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c" Error in Tree.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
  store i64 74755, i64* @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
  %1 = load i64, i64* @seed, align 8
  %2 = mul nsw i64 %1, 1309
  %3 = add nsw i64 %2, 13849
  %4 = and i64 %3, 65535
  store i64 %4, i64* @seed, align 8
  %5 = load i64, i64* @seed, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @tInitarr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  call void @Initrand()
  store i32 0, i32* @biggest, align 4
  store i32 0, i32* @littlest, align 4
  store i32 1, i32* %1, align 4
  br label %3

3:                                                ; preds = %44, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp sle i32 %4, 5000
  br i1 %5, label %6, label %47

6:                                                ; preds = %3
  %7 = call i32 @Rand()
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = sdiv i64 %10, 100000
  %12 = mul nsw i64 %11, 100000
  %13 = sub nsw i64 %9, %12
  %14 = sub nsw i64 %13, 50000
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @biggest, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %6
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* @biggest, align 4
  br label %43

30:                                               ; preds = %6
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @littlest, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* @littlest, align 4
  br label %42

42:                                               ; preds = %37, %30
  br label %43

43:                                               ; preds = %42, %25
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %1, align 4
  br label %3

47:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateNode(%struct.node** %0, i32 %1) #0 {
  %3 = alloca %struct.node**, align 8
  %4 = alloca i32, align 4
  store %struct.node** %0, %struct.node*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call noalias i8* @malloc(i64 24) #3
  %6 = bitcast i8* %5 to %struct.node*
  %7 = load %struct.node**, %struct.node*** %3, align 8
  store %struct.node* %6, %struct.node** %7, align 8
  %8 = load %struct.node**, %struct.node*** %3, align 8
  %9 = load %struct.node*, %struct.node** %8, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  store %struct.node* null, %struct.node** %10, align 8
  %11 = load %struct.node**, %struct.node*** %3, align 8
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 1
  store %struct.node* null, %struct.node** %13, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.node**, %struct.node*** %3, align 8
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 2
  store i32 %14, i32* %17, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Insert(i32 %0, %struct.node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.node* %1, %struct.node** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.node*, %struct.node** %4, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %5, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %2
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 0
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = icmp eq %struct.node* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.node*, %struct.node** %4, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i32, i32* %3, align 4
  call void @CreateNode(%struct.node** %17, i32 %18)
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %23 = load %struct.node*, %struct.node** %22, align 8
  call void @Insert(i32 %20, %struct.node* %23)
  br label %24

24:                                               ; preds = %19, %15
  br label %47

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 1
  %34 = load %struct.node*, %struct.node** %33, align 8
  %35 = icmp eq %struct.node* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.node*, %struct.node** %4, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 1
  %39 = load i32, i32* %3, align 4
  call void @CreateNode(%struct.node** %38, i32 %39)
  br label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.node*, %struct.node** %4, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load %struct.node*, %struct.node** %43, align 8
  call void @Insert(i32 %41, %struct.node* %44)
  br label %45

45:                                               ; preds = %40, %36
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Checktree(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 0
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load %struct.node*, %struct.node** %2, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.node*, %struct.node** %2, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %8
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load %struct.node*, %struct.node** %21, align 8
  %23 = call i32 @Checktree(%struct.node* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31, %1
  %33 = load %struct.node*, %struct.node** %2, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = icmp ne %struct.node* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %32
  %38 = load %struct.node*, %struct.node** %2, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 1
  %40 = load %struct.node*, %struct.node** %39, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.node*, %struct.node** %2, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.node*, %struct.node** %2, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 1
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = call i32 @Checktree(%struct.node* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i1 [ false, %48 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %47
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Trees(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @tInitarr()
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.node*
  store %struct.node* %5, %struct.node** @tree, align 8
  %6 = load %struct.node*, %struct.node** @tree, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 0
  store %struct.node* null, %struct.node** %7, align 8
  %8 = load %struct.node*, %struct.node** @tree, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  store %struct.node* null, %struct.node** %9, align 8
  %10 = load i32, i32* getelementptr inbounds ([5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 1), align 4
  %11 = load %struct.node*, %struct.node** @tree, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  store i32 2, i32* %3, align 4
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %14, 5000
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.node*, %struct.node** @tree, align 8
  call void @Insert(i32 %20, %struct.node* %21)
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %13

25:                                               ; preds = %13
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5001 x i32], [5001 x i32]* @sortlist, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.node*, %struct.node** @tree, align 8
  %33 = call i32 @Checktree(%struct.node* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %8, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 100
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  call void @Trees(i32 %7)
  br label %8

8:                                                ; preds = %6
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %2, align 4
  br label %3

11:                                               ; preds = %3
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
