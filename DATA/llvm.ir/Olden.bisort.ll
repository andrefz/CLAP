; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i32, %struct.node*, %struct.node* }
%struct.future_cell_int = type { %struct.node* }

@flag = dso_local global i32 0, align 4
@foo = dso_local global i32 0, align 4
@NDim = common dso_local global i32 0, align 4
@NumNodes = common dso_local global i32 0, align 4
@InOrder.counter = internal global i8 0, align 1
@.str = private unnamed_addr constant [11 x i8] c"%d @ 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Bisort with %d size of dim %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"**************************************\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"BEGINNING BITONIC SORT ALGORITHM HERE\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Sorted Tree:\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mylog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %3, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 3
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11) #3
  store i32 %12, i32* @flag, align 4
  br label %14

13:                                               ; preds = %2
  store i32 1, i32* @flag, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %3, align 4
  %16 = icmp sgt i32 %15, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i8**, i8*** %4, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @atoi(i8* %20) #3
  store i32 %21, i32* @NumNodes, align 4
  br label %23

22:                                               ; preds = %14
  store i32 4, i32* @NumNodes, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8**, i8*** %4, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29) #3
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %23
  store i32 32768, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* @NumNodes, align 4
  %34 = call i32 @mylog(i32 %33)
  store i32 %34, i32* @NDim, align 4
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InOrder(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  %6 = icmp ne %struct.node* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.node*, %struct.node** %2, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  %10 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %10, %struct.node** %3, align 8
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 2
  %13 = load %struct.node*, %struct.node** %12, align 8
  store %struct.node* %13, %struct.node** %4, align 8
  %14 = load %struct.node*, %struct.node** %3, align 8
  call void @InOrder(%struct.node* %14)
  %15 = load i8, i8* @InOrder.counter, align 1
  %16 = add i8 %15, 1
  store i8 %16, i8* @InOrder.counter, align 1
  %17 = zext i8 %15 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.node*, %struct.node** %2, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %7
  %25 = load %struct.node*, %struct.node** %4, align 8
  call void @InOrder(%struct.node* %25)
  br label %26

26:                                               ; preds = %24, %1
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mult(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 10000
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = srem i32 %11, 10000
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sdiv i32 %13, 10000
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = srem i32 %15, 10000
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  %24 = srem i32 %23, 10000
  %25 = mul nsw i32 %24, 10000
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %25, %28
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @skiprand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @random(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %4, align 4
  br label %5

14:                                               ; preds = %5
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @random(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @mult(i32 %3, i32 31415821)
  %5 = add nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @RandTree(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.future_cell_int, align 8
  %12 = alloca %struct.future_cell_int, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @foo, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @foo, align 4
  store i32 %15, i32* %10, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %74

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NDim, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NDim, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = shl i32 1, %28
  %30 = add nsw i32 %24, %29
  store i32 %30, i32* %14, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %14, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @random(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = srem i32 %36, 100
  store i32 %37, i32* %9, align 4
  %38 = call i8* @malloc(i32 24)
  %39 = bitcast i8* %38 to %struct.node*
  store %struct.node* %39, %struct.node** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.node*, %struct.node** %13, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.node*, %struct.node** %13, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 1
  store %struct.node* null, %struct.node** %44, align 8
  %45 = load %struct.node*, %struct.node** %13, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 2
  store %struct.node* null, %struct.node** %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 %47, 2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = call %struct.node* @RandTree(i32 %48, i32 %49, i32 %50, i32 %52)
  %54 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %11, i32 0, i32 0
  store %struct.node* %53, %struct.node** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %55, 2
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @skiprand(i32 %57, i32 %59)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  %64 = call %struct.node* @RandTree(i32 %56, i32 %60, i32 %61, i32 %63)
  %65 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %12, i32 0, i32 0
  store %struct.node* %64, %struct.node** %65, align 8
  %66 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %11, i32 0, i32 0
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = load %struct.node*, %struct.node** %13, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 1
  store %struct.node* %67, %struct.node** %69, align 8
  %70 = getelementptr inbounds %struct.future_cell_int, %struct.future_cell_int* %12, i32 0, i32 0
  %71 = load %struct.node*, %struct.node** %70, align 8
  %72 = load %struct.node*, %struct.node** %13, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 2
  store %struct.node* %71, %struct.node** %73, align 8
  br label %75

74:                                               ; preds = %4
  store %struct.node* null, %struct.node** %13, align 8
  br label %75

75:                                               ; preds = %74, %33
  %76 = load %struct.node*, %struct.node** %13, align 8
  ret %struct.node* %76
}

declare dso_local i8* @malloc(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapValue(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.node*, %struct.node** %4, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.node*, %struct.node** %3, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapValLeft(%struct.node* %0, %struct.node* %1, %struct.node* %2, %struct.node* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %7, align 8
  store %struct.node* %1, %struct.node** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store %struct.node* %3, %struct.node** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.node*, %struct.node** %8, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.node*, %struct.node** %9, align 8
  %17 = load %struct.node*, %struct.node** %8, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 1
  store %struct.node* %16, %struct.node** %18, align 8
  %19 = load %struct.node*, %struct.node** %10, align 8
  %20 = load %struct.node*, %struct.node** %7, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 1
  store %struct.node* %19, %struct.node** %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.node*, %struct.node** %7, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SwapValRight(%struct.node* %0, %struct.node* %1, %struct.node* %2, %struct.node* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %7, align 8
  store %struct.node* %1, %struct.node** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store %struct.node* %3, %struct.node** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.node*, %struct.node** %8, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.node*, %struct.node** %9, align 8
  %17 = load %struct.node*, %struct.node** %8, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 2
  store %struct.node* %16, %struct.node** %18, align 8
  %19 = load %struct.node*, %struct.node** %10, align 8
  %20 = load %struct.node*, %struct.node** %7, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 2
  store %struct.node* %19, %struct.node** %21, align 8
  %22 = load i32, i32* %12, align 4
  %23 = load %struct.node*, %struct.node** %7, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Bimerge(%struct.node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.node*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.node*, align 8
  %13 = alloca %struct.node*, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca %struct.node*, align 8
  %16 = alloca %struct.node*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load %struct.node*, %struct.node** %4, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %17, align 4
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 1
  %25 = load %struct.node*, %struct.node** %24, align 8
  store %struct.node* %25, %struct.node** %9, align 8
  %26 = load %struct.node*, %struct.node** %4, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 2
  %28 = load %struct.node*, %struct.node** %27, align 8
  store %struct.node* %28, %struct.node** %12, align 8
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %3
  br label %43

43:                                               ; preds = %105, %42
  %44 = load %struct.node*, %struct.node** %9, align 8
  %45 = icmp ne %struct.node* %44, null
  br i1 %45, label %46, label %106

46:                                               ; preds = %43
  %47 = load %struct.node*, %struct.node** %9, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load %struct.node*, %struct.node** %9, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 1
  %52 = load %struct.node*, %struct.node** %51, align 8
  store %struct.node* %52, %struct.node** %10, align 8
  %53 = load %struct.node*, %struct.node** %9, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 2
  %55 = load %struct.node*, %struct.node** %54, align 8
  store %struct.node* %55, %struct.node** %11, align 8
  %56 = load %struct.node*, %struct.node** %12, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %17, align 4
  %59 = load %struct.node*, %struct.node** %12, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 1
  %61 = load %struct.node*, %struct.node** %60, align 8
  store %struct.node* %61, %struct.node** %13, align 8
  %62 = load %struct.node*, %struct.node** %12, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 2
  %64 = load %struct.node*, %struct.node** %63, align 8
  store %struct.node* %64, %struct.node** %14, align 8
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %17, align 4
  %67 = icmp sgt i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = xor i32 %68, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %46
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %73
  %77 = load %struct.node*, %struct.node** %9, align 8
  %78 = load %struct.node*, %struct.node** %12, align 8
  %79 = load %struct.node*, %struct.node** %11, align 8
  %80 = load %struct.node*, %struct.node** %14, align 8
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %17, align 4
  call void @SwapValRight(%struct.node* %77, %struct.node* %78, %struct.node* %79, %struct.node* %80, i32 %81, i32 %82)
  %83 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %83, %struct.node** %9, align 8
  %84 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %84, %struct.node** %12, align 8
  br label %88

85:                                               ; preds = %73
  %86 = load %struct.node*, %struct.node** %11, align 8
  store %struct.node* %86, %struct.node** %9, align 8
  %87 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %87, %struct.node** %12, align 8
  br label %88

88:                                               ; preds = %85, %76
  br label %105

89:                                               ; preds = %46
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load %struct.node*, %struct.node** %9, align 8
  %94 = load %struct.node*, %struct.node** %12, align 8
  %95 = load %struct.node*, %struct.node** %10, align 8
  %96 = load %struct.node*, %struct.node** %13, align 8
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* %17, align 4
  call void @SwapValLeft(%struct.node* %93, %struct.node* %94, %struct.node* %95, %struct.node* %96, i32 %97, i32 %98)
  %99 = load %struct.node*, %struct.node** %11, align 8
  store %struct.node* %99, %struct.node** %9, align 8
  %100 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %100, %struct.node** %12, align 8
  br label %104

101:                                              ; preds = %89
  %102 = load %struct.node*, %struct.node** %10, align 8
  store %struct.node* %102, %struct.node** %9, align 8
  %103 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %103, %struct.node** %12, align 8
  br label %104

104:                                              ; preds = %101, %92
  br label %105

105:                                              ; preds = %104, %88
  br label %43

106:                                              ; preds = %43
  %107 = load %struct.node*, %struct.node** %4, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %107, i32 0, i32 1
  %109 = load %struct.node*, %struct.node** %108, align 8
  %110 = icmp ne %struct.node* %109, null
  br i1 %110, label %111, label %131

111:                                              ; preds = %106
  %112 = load %struct.node*, %struct.node** %4, align 8
  %113 = getelementptr inbounds %struct.node, %struct.node* %112, i32 0, i32 1
  %114 = load %struct.node*, %struct.node** %113, align 8
  store %struct.node* %114, %struct.node** %15, align 8
  %115 = load %struct.node*, %struct.node** %4, align 8
  %116 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 2
  %117 = load %struct.node*, %struct.node** %116, align 8
  store %struct.node* %117, %struct.node** %16, align 8
  %118 = load %struct.node*, %struct.node** %4, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %19, align 4
  %121 = load %struct.node*, %struct.node** %15, align 8
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @Bimerge(%struct.node* %121, i32 %122, i32 %123)
  %125 = load %struct.node*, %struct.node** %4, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.node*, %struct.node** %16, align 8
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @Bimerge(%struct.node* %127, i32 %128, i32 %129)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %111, %106
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Bisort(%struct.node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 1
  %13 = load %struct.node*, %struct.node** %12, align 8
  %14 = icmp eq %struct.node* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.node*, %struct.node** %4, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %15
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.node*, %struct.node** %4, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %25, %15
  br label %62

34:                                               ; preds = %3
  %35 = load %struct.node*, %struct.node** %4, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  %37 = load %struct.node*, %struct.node** %36, align 8
  store %struct.node* %37, %struct.node** %7, align 8
  %38 = load %struct.node*, %struct.node** %4, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 2
  %40 = load %struct.node*, %struct.node** %39, align 8
  store %struct.node* %40, %struct.node** %8, align 8
  %41 = load %struct.node*, %struct.node** %4, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %9, align 4
  %44 = load %struct.node*, %struct.node** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @Bisort(%struct.node* %44, i32 %45, i32 %46)
  %48 = load %struct.node*, %struct.node** %4, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %10, align 4
  %54 = load %struct.node*, %struct.node** %8, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @Bisort(%struct.node* %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load %struct.node*, %struct.node** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @Bimerge(%struct.node* %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %34, %33
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @dealwithargs(i32 %9, i8** %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @NDim, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.node* @RandTree(i32 %15, i32 12345768, i32 0, i32 0)
  store %struct.node* %16, %struct.node** %6, align 8
  %17 = call i32 @random(i32 245867)
  %18 = srem i32 %17, 100
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @flag, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.node*, %struct.node** %6, align 8
  call void @InOrder(%struct.node* %22)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %29 = load %struct.node*, %struct.node** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @Bisort(%struct.node* %29, i32 %30, i32 0)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @flag, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %36 = load %struct.node*, %struct.node** %6, align 8
  call void @InOrder(%struct.node* %36)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %34, %25
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @Bisort(%struct.node* %40, i32 %41, i32 1)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* @flag, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.node*, %struct.node** %6, align 8
  call void @InOrder(%struct.node* %47)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %39
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
