; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vert_st = type { i32, %struct.vert_st*, %struct.hash* }
%struct.hash = type { %struct.hash_entry**, i32 (i32)*, i32 }
%struct.hash_entry = type { i32, i8*, %struct.hash_entry* }
%struct.graph_st = type { [1 x %struct.vert_st*] }
%struct.blue_return = type { %struct.vert_st*, i32 }
%struct.fc_br = type { %struct.blue_return }

@NumNodes = dso_local global i32 1, align 4
@remaining = internal global i32 0, align 4
@temp = internal global i8* null, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Error! malloc returns null\0A\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"Assertion failure:%d in hash\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Making graph of size %d\0A\00", align 1
@.str.1.3 = private unnamed_addr constant [17 x i8] c"Graph completed\0A\00", align 1
@.str.2.4 = private unnamed_addr constant [23 x i8] c"About to compute mst \0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"MST has cost %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Compute phase 1\0A\00", align 1
@MyVertexList = internal global %struct.vert_st* null, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"Compute phase 2\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Make phase 2\0A\00", align 1
@HashRange = internal global i32 0, align 4
@.str.1.8 = private unnamed_addr constant [14 x i8] c"Make phase 3\0A\00", align 1
@.str.2.9 = private unnamed_addr constant [14 x i8] c"Make phase 4\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [16 x i8] c"Make returning\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @dealwithargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @atoi(i8* %11)
  store i32 %12, i32* %5, align 4
  br label %14

13:                                               ; preds = %2
  store i32 64, i32* %5, align 4
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @atoi(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hash* @MakeHash(i32 %0, i32 (i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i32)*, align 8
  %5 = alloca %struct.hash*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 (i32)* %1, i32 (i32)** %4, align 8
  %7 = call i8* @localmalloc(i32 24)
  %8 = bitcast i8* %7 to %struct.hash*
  store %struct.hash* %8, %struct.hash** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call i8* @localmalloc(i32 %12)
  %14 = bitcast i8* %13 to %struct.hash_entry**
  %15 = load %struct.hash*, %struct.hash** %5, align 8
  %16 = getelementptr inbounds %struct.hash, %struct.hash* %15, i32 0, i32 0
  store %struct.hash_entry** %14, %struct.hash_entry*** %16, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %28, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load %struct.hash*, %struct.hash** %5, align 8
  %23 = getelementptr inbounds %struct.hash, %struct.hash* %22, i32 0, i32 0
  %24 = load %struct.hash_entry**, %struct.hash_entry*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %24, i64 %26
  store %struct.hash_entry* null, %struct.hash_entry** %27, align 8
  br label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %17

31:                                               ; preds = %17
  %32 = load i32 (i32)*, i32 (i32)** %4, align 8
  %33 = load %struct.hash*, %struct.hash** %5, align 8
  %34 = getelementptr inbounds %struct.hash, %struct.hash* %33, i32 0, i32 1
  store i32 (i32)* %32, i32 (i32)** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.hash*, %struct.hash** %5, align 8
  %37 = getelementptr inbounds %struct.hash, %struct.hash* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.hash*, %struct.hash** %5, align 8
  ret %struct.hash* %38
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @localmalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @remaining, align 4
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = call noalias i8* @malloc(i64 32768) #5
  store i8* %8, i8** @temp, align 8
  %9 = load i8*, i8** @temp, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  store i32 32768, i32* @remaining, align 4
  br label %14

14:                                               ; preds = %13, %1
  %15 = load i8*, i8** @temp, align 8
  store i8* %15, i8** %3, align 8
  %16 = load i32, i32* %2, align 4
  %17 = load i8*, i8** @temp, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** @temp, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @remaining, align 4
  %22 = sub nsw i32 %21, %20
  store i32 %22, i32* @remaining, align 4
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @HashLookup(i32 %0, %struct.hash* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_entry*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.hash* %1, %struct.hash** %5, align 8
  %8 = load %struct.hash*, %struct.hash** %5, align 8
  %9 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 %10(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 1)
  call void @exit(i32 -1) #6
  unreachable

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.hash*, %struct.hash** %5, align 8
  %20 = getelementptr inbounds %struct.hash, %struct.hash* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 2)
  call void @exit(i32 -1) #6
  unreachable

25:                                               ; preds = %17
  %26 = load %struct.hash*, %struct.hash** %5, align 8
  %27 = getelementptr inbounds %struct.hash, %struct.hash* %26, i32 0, i32 0
  %28 = load %struct.hash_entry**, %struct.hash_entry*** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %28, i64 %30
  %32 = load %struct.hash_entry*, %struct.hash_entry** %31, align 8
  store %struct.hash_entry* %32, %struct.hash_entry** %7, align 8
  br label %33

33:                                               ; preds = %45, %25
  %34 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %35 = icmp ne %struct.hash_entry* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %38 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %39, %40
  br label %42

42:                                               ; preds = %36, %33
  %43 = phi i1 [ false, %33 ], [ %41, %36 ]
  br i1 %43, label %44, label %49

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 2
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8
  store %struct.hash_entry* %48, %struct.hash_entry** %7, align 8
  br label %33

49:                                               ; preds = %42
  %50 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %51 = icmp ne %struct.hash_entry* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %54 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %3, align 8
  br label %57

56:                                               ; preds = %49
  store i8* null, i8** %3, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i8*, i8** %3, align 8
  ret i8* %58
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @HashInsert(i8* %0, i32 %1, %struct.hash* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hash*, align 8
  %7 = alloca %struct.hash_entry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hash* %2, %struct.hash** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.hash*, %struct.hash** %6, align 8
  %11 = call i8* @HashLookup(i32 %9, %struct.hash* %10)
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 3)
  call void @exit(i32 -1) #6
  unreachable

15:                                               ; preds = %3
  %16 = load %struct.hash*, %struct.hash** %6, align 8
  %17 = getelementptr inbounds %struct.hash, %struct.hash* %16, i32 0, i32 1
  %18 = load i32 (i32)*, i32 (i32)** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 %18(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = call i8* @localmalloc(i32 24)
  %22 = bitcast i8* %21 to %struct.hash_entry*
  store %struct.hash_entry* %22, %struct.hash_entry** %7, align 8
  %23 = load %struct.hash*, %struct.hash** %6, align 8
  %24 = getelementptr inbounds %struct.hash, %struct.hash* %23, i32 0, i32 0
  %25 = load %struct.hash_entry**, %struct.hash_entry*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %25, i64 %27
  %29 = load %struct.hash_entry*, %struct.hash_entry** %28, align 8
  %30 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %31 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %30, i32 0, i32 2
  store %struct.hash_entry* %29, %struct.hash_entry** %31, align 8
  %32 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %33 = load %struct.hash*, %struct.hash** %6, align 8
  %34 = getelementptr inbounds %struct.hash, %struct.hash* %33, i32 0, i32 0
  %35 = load %struct.hash_entry**, %struct.hash_entry*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %35, i64 %37
  store %struct.hash_entry* %32, %struct.hash_entry** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %41 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = load %struct.hash_entry*, %struct.hash_entry** %7, align 8
  %44 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HashDelete(i32 %0, %struct.hash* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hash*, align 8
  %5 = alloca %struct.hash_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hash_entry**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.hash* %1, %struct.hash** %4, align 8
  %8 = load %struct.hash*, %struct.hash** %4, align 8
  %9 = getelementptr inbounds %struct.hash, %struct.hash* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32 %10(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.hash*, %struct.hash** %4, align 8
  %14 = getelementptr inbounds %struct.hash, %struct.hash* %13, i32 0, i32 0
  %15 = load %struct.hash_entry**, %struct.hash_entry*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.hash_entry*, %struct.hash_entry** %15, i64 %17
  store %struct.hash_entry** %18, %struct.hash_entry*** %7, align 8
  br label %19

19:                                               ; preds = %32, %2
  %20 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %21 = load %struct.hash_entry*, %struct.hash_entry** %20, align 8
  %22 = icmp ne %struct.hash_entry* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %25 = load %struct.hash_entry*, %struct.hash_entry** %24, align 8
  %26 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %23, %19
  %31 = phi i1 [ false, %19 ], [ %29, %23 ]
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %34 = load %struct.hash_entry*, %struct.hash_entry** %33, align 8
  %35 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %34, i32 0, i32 2
  store %struct.hash_entry** %35, %struct.hash_entry*** %7, align 8
  br label %19

36:                                               ; preds = %30
  %37 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %38 = load %struct.hash_entry*, %struct.hash_entry** %37, align 8
  %39 = icmp ne %struct.hash_entry* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 4)
  call void @exit(i32 -1) #6
  unreachable

42:                                               ; preds = %36
  %43 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %44 = load %struct.hash_entry*, %struct.hash_entry** %43, align 8
  store %struct.hash_entry* %44, %struct.hash_entry** %5, align 8
  %45 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  %46 = load %struct.hash_entry*, %struct.hash_entry** %45, align 8
  %47 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %46, i32 0, i32 2
  %48 = load %struct.hash_entry*, %struct.hash_entry** %47, align 8
  %49 = load %struct.hash_entry**, %struct.hash_entry*** %7, align 8
  store %struct.hash_entry* %48, %struct.hash_entry** %49, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.graph_st*, align 8
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
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @NumNodes, align 4
  %16 = call %struct.graph_st* @MakeGraph(i32 %14, i32 %15)
  store %struct.graph_st* %16, %struct.graph_st** %6, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.3, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.4, i64 0, i64 0))
  %19 = load %struct.graph_st*, %struct.graph_st** %6, align 8
  %20 = load i32, i32* @NumNodes, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @ComputeMst(%struct.graph_st* %19, i32 %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ComputeMst(%struct.graph_st* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.graph_st*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vert_st*, align 8
  %8 = alloca %struct.vert_st*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.blue_return, align 8
  %12 = alloca %struct.blue_return, align 8
  store %struct.graph_st* %0, %struct.graph_st** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %14 = load %struct.graph_st*, %struct.graph_st** %4, align 8
  %15 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %14, i32 0, i32 0
  %16 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %15, i64 0, i64 0
  %17 = load %struct.vert_st*, %struct.vert_st** %16, align 8
  store %struct.vert_st* %17, %struct.vert_st** %7, align 8
  %18 = load %struct.vert_st*, %struct.vert_st** %7, align 8
  %19 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %18, i32 0, i32 1
  %20 = load %struct.vert_st*, %struct.vert_st** %19, align 8
  store %struct.vert_st* %20, %struct.vert_st** %8, align 8
  %21 = load %struct.vert_st*, %struct.vert_st** %8, align 8
  %22 = load %struct.graph_st*, %struct.graph_st** %4, align 8
  %23 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %22, i32 0, i32 0
  %24 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %23, i64 0, i64 0
  store %struct.vert_st* %21, %struct.vert_st** %24, align 8
  %25 = load %struct.vert_st*, %struct.vert_st** %8, align 8
  store %struct.vert_st* %25, %struct.vert_st** @MyVertexList, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %29

29:                                               ; preds = %32, %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %29
  %33 = load %struct.vert_st*, %struct.vert_st** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %33, i32 %34, i32 0)
  %36 = bitcast %struct.blue_return* %12 to { %struct.vert_st*, i32 }*
  %37 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %36, i32 0, i32 0
  %38 = extractvalue { %struct.vert_st*, i32 } %35, 0
  store %struct.vert_st* %38, %struct.vert_st** %37, align 8
  %39 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %36, i32 0, i32 1
  %40 = extractvalue { %struct.vert_st*, i32 } %35, 1
  store i32 %40, i32* %39, align 8
  %41 = bitcast %struct.blue_return* %11 to i8*
  %42 = bitcast %struct.blue_return* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %11, i32 0, i32 0
  %44 = load %struct.vert_st*, %struct.vert_st** %43, align 8
  store %struct.vert_st* %44, %struct.vert_st** %7, align 8
  %45 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %11, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %9, align 4
  br label %29

52:                                               ; preds = %29
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define internal { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.blue_return, align 8
  %5 = alloca %struct.vert_st*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fc_br, align 8
  %9 = alloca %struct.blue_return, align 8
  %10 = alloca %struct.blue_return, align 8
  %11 = alloca %struct.blue_return, align 8
  store %struct.vert_st* %0, %struct.vert_st** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %61

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %8, i32 0, i32 0
  %16 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sdiv i32 %17, 2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %19, %21
  %23 = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %16, i32 %18, i32 %22)
  %24 = bitcast %struct.blue_return* %10 to { %struct.vert_st*, i32 }*
  %25 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %24, i32 0, i32 0
  %26 = extractvalue { %struct.vert_st*, i32 } %23, 0
  store %struct.vert_st* %26, %struct.vert_st** %25, align 8
  %27 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %24, i32 0, i32 1
  %28 = extractvalue { %struct.vert_st*, i32 } %23, 1
  store i32 %28, i32* %27, align 8
  %29 = bitcast %struct.blue_return* %15 to i8*
  %30 = bitcast %struct.blue_return* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sdiv i32 %32, 2
  %34 = load i32, i32* %7, align 4
  %35 = call { %struct.vert_st*, i32 } @Do_all_BlueRule(%struct.vert_st* %31, i32 %33, i32 %34)
  %36 = bitcast %struct.blue_return* %11 to { %struct.vert_st*, i32 }*
  %37 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %36, i32 0, i32 0
  %38 = extractvalue { %struct.vert_st*, i32 } %35, 0
  store %struct.vert_st* %38, %struct.vert_st** %37, align 8
  %39 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %36, i32 0, i32 1
  %40 = extractvalue { %struct.vert_st*, i32 } %35, 1
  store i32 %40, i32* %39, align 8
  %41 = bitcast %struct.blue_return* %9 to i8*
  %42 = bitcast %struct.blue_return* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %8, i32 0, i32 0
  %44 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %9, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %14
  %50 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %9, i32 0, i32 1
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.fc_br, %struct.fc_br* %8, i32 0, i32 0
  %55 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %54, i32 0, i32 0
  %56 = load %struct.vert_st*, %struct.vert_st** %55, align 8
  %57 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %9, i32 0, i32 0
  store %struct.vert_st* %56, %struct.vert_st** %57, align 8
  br label %58

58:                                               ; preds = %49, %14
  %59 = bitcast %struct.blue_return* %4 to i8*
  %60 = bitcast %struct.blue_return* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 16, i1 false)
  br label %78

61:                                               ; preds = %3
  %62 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %63 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %64 = icmp eq %struct.vert_st* %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %67 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %66, i32 0, i32 1
  %68 = load %struct.vert_st*, %struct.vert_st** %67, align 8
  store %struct.vert_st* %68, %struct.vert_st** @MyVertexList, align 8
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %71 = load %struct.vert_st*, %struct.vert_st** @MyVertexList, align 8
  %72 = call { %struct.vert_st*, i32 } @BlueRule(%struct.vert_st* %70, %struct.vert_st* %71)
  %73 = bitcast %struct.blue_return* %4 to { %struct.vert_st*, i32 }*
  %74 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %73, i32 0, i32 0
  %75 = extractvalue { %struct.vert_st*, i32 } %72, 0
  store %struct.vert_st* %75, %struct.vert_st** %74, align 8
  %76 = getelementptr inbounds { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %73, i32 0, i32 1
  %77 = extractvalue { %struct.vert_st*, i32 } %72, 1
  store i32 %77, i32* %76, align 8
  br label %78

78:                                               ; preds = %69, %58
  %79 = bitcast %struct.blue_return* %4 to { %struct.vert_st*, i32 }*
  %80 = load { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %79, align 8
  ret { %struct.vert_st*, i32 } %80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal { %struct.vert_st*, i32 } @BlueRule(%struct.vert_st* %0, %struct.vert_st* %1) #0 {
  %3 = alloca %struct.blue_return, align 8
  %4 = alloca %struct.vert_st*, align 8
  %5 = alloca %struct.vert_st*, align 8
  %6 = alloca %struct.vert_st*, align 8
  %7 = alloca %struct.vert_st*, align 8
  %8 = alloca %struct.hash*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vert_st*, align 8
  store %struct.vert_st* %0, %struct.vert_st** %4, align 8
  store %struct.vert_st* %1, %struct.vert_st** %5, align 8
  %13 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %14 = icmp ne %struct.vert_st* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  store i32 999999, i32* %16, align 8
  br label %113

17:                                               ; preds = %2
  %18 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  store %struct.vert_st* %18, %struct.vert_st** %7, align 8
  %19 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %20 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 0
  store %struct.vert_st* %19, %struct.vert_st** %20, align 8
  %21 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %22 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 8
  %25 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %26 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %25, i32 0, i32 2
  %27 = load %struct.hash*, %struct.hash** %26, align 8
  store %struct.hash* %27, %struct.hash** %8, align 8
  %28 = load %struct.vert_st*, %struct.vert_st** %4, align 8
  %29 = ptrtoint %struct.vert_st* %28 to i32
  %30 = load %struct.hash*, %struct.hash** %8, align 8
  %31 = call i8* @HashLookup(i32 %29, %struct.hash* %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %43 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %40, %35
  br label %49

47:                                               ; preds = %17
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %46
  store i32 0, i32* %11, align 4
  %50 = load %struct.vert_st*, %struct.vert_st** %5, align 8
  %51 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %50, i32 0, i32 1
  %52 = load %struct.vert_st*, %struct.vert_st** %51, align 8
  store %struct.vert_st* %52, %struct.vert_st** %6, align 8
  br label %53

53:                                               ; preds = %107, %49
  %54 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %55 = icmp ne %struct.vert_st* %54, null
  br i1 %55, label %56, label %112

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  %59 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %60 = load %struct.vert_st*, %struct.vert_st** %4, align 8
  %61 = icmp eq %struct.vert_st* %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %64 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %63, i32 0, i32 1
  %65 = load %struct.vert_st*, %struct.vert_st** %64, align 8
  store %struct.vert_st* %65, %struct.vert_st** %12, align 8
  %66 = load %struct.vert_st*, %struct.vert_st** %12, align 8
  %67 = load %struct.vert_st*, %struct.vert_st** %7, align 8
  %68 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %67, i32 0, i32 1
  store %struct.vert_st* %66, %struct.vert_st** %68, align 8
  br label %106

69:                                               ; preds = %56
  %70 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %71 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %70, i32 0, i32 2
  %72 = load %struct.hash*, %struct.hash** %71, align 8
  store %struct.hash* %72, %struct.hash** %8, align 8
  %73 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %74 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.vert_st*, %struct.vert_st** %4, align 8
  %77 = ptrtoint %struct.vert_st* %76 to i32
  %78 = load %struct.hash*, %struct.hash** %8, align 8
  %79 = call i8* @HashLookup(i32 %77, %struct.hash* %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %90 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %87, %83
  br label %95

93:                                               ; preds = %69
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %102 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 0
  store %struct.vert_st* %101, %struct.vert_st** %102, align 8
  %103 = load i32, i32* %10, align 4
  %104 = getelementptr inbounds %struct.blue_return, %struct.blue_return* %3, i32 0, i32 1
  store i32 %103, i32* %104, align 8
  br label %105

105:                                              ; preds = %100, %95
  br label %106

106:                                              ; preds = %105, %62
  br label %107

107:                                              ; preds = %106
  %108 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  store %struct.vert_st* %108, %struct.vert_st** %7, align 8
  %109 = load %struct.vert_st*, %struct.vert_st** %6, align 8
  %110 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %109, i32 0, i32 1
  %111 = load %struct.vert_st*, %struct.vert_st** %110, align 8
  store %struct.vert_st* %111, %struct.vert_st** %6, align 8
  br label %53

112:                                              ; preds = %53
  br label %113

113:                                              ; preds = %112, %15
  %114 = bitcast %struct.blue_return* %3 to { %struct.vert_st*, i32 }*
  %115 = load { %struct.vert_st*, i32 }, { %struct.vert_st*, i32 }* %114, align 8
  ret { %struct.vert_st*, i32 } %115
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.graph_st* @MakeGraph(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vert_st*, align 8
  %10 = alloca %struct.vert_st*, align 8
  %11 = alloca %struct.vert_st*, align 8
  %12 = alloca %struct.graph_st*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = call noalias i8* @malloc(i64 8) #5
  %17 = bitcast i8* %16 to %struct.graph_st*
  store %struct.graph_st* %17, %struct.graph_st** %12, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %27, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %23 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %23, i64 0, i64 %25
  store %struct.vert_st* null, %struct.vert_st** %26, align 8
  br label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %18

30:                                               ; preds = %18
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %32 = load i32, i32* %4, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %78, %30
  %35 = load i32, i32* %7, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 24
  %41 = call noalias i8* @malloc(i64 %40) #5
  %42 = bitcast i8* %41 to %struct.vert_st*
  store %struct.vert_st* %42, %struct.vert_st** %11, align 8
  store %struct.vert_st* null, %struct.vert_st** %9, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %68, %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.vert_st*, %struct.vert_st** %11, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %48, i64 %53
  store %struct.vert_st* %54, %struct.vert_st** %10, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sdiv i32 %55, 4
  store i32 %56, i32* @HashRange, align 4
  %57 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %58 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %57, i32 0, i32 0
  store i32 9999999, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sdiv i32 %59, 4
  %61 = call %struct.hash* @MakeHash(i32 %60, i32 (i32)* @hashfunc)
  %62 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %63 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %62, i32 0, i32 2
  store %struct.hash* %61, %struct.hash** %63, align 8
  %64 = load %struct.vert_st*, %struct.vert_st** %9, align 8
  %65 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  %66 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %65, i32 0, i32 1
  store %struct.vert_st* %64, %struct.vert_st** %66, align 8
  %67 = load %struct.vert_st*, %struct.vert_st** %10, align 8
  store %struct.vert_st* %67, %struct.vert_st** %9, align 8
  br label %68

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %43

71:                                               ; preds = %43
  %72 = load %struct.vert_st*, %struct.vert_st** %9, align 8
  %73 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %74 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %73, i32 0, i32 0
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %74, i64 0, i64 %76
  store %struct.vert_st* %72, %struct.vert_st** %77, align 8
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %34

81:                                               ; preds = %34
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.8, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %98, %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = mul nsw i32 %89, %90
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* %7, align 4
  call void @AddEdges(i32 %92, %struct.graph_st* %93, i32 %94, i32 %95, i32 %96, i32 %97)
  br label %98

98:                                               ; preds = %88
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %7, align 4
  br label %85

101:                                              ; preds = %85
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.9, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.10, i64 0, i64 0))
  %104 = load %struct.graph_st*, %struct.graph_st** %12, align 8
  ret %struct.graph_st* %104
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @hashfunc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = lshr i32 %3, 3
  %5 = load i32, i32* @HashRange, align 4
  %6 = urem i32 %4, %5
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define internal void @AddEdges(i32 %0, %struct.graph_st* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.graph_st*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vert_st*, align 8
  %14 = alloca [1 x %struct.vert_st*], align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.vert_st*, align 8
  %20 = alloca %struct.hash*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.graph_st* %1, %struct.graph_st** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %35, %6
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = load %struct.graph_st*, %struct.graph_st** %8, align 8
  %27 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %26, i32 0, i32 0
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %27, i64 0, i64 %29
  %31 = load %struct.vert_st*, %struct.vert_st** %30, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %14, i64 0, i64 %33
  store %struct.vert_st* %31, %struct.vert_st** %34, align 8
  br label %35

35:                                               ; preds = %25
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  br label %21

38:                                               ; preds = %21
  %39 = load %struct.graph_st*, %struct.graph_st** %8, align 8
  %40 = getelementptr inbounds %struct.graph_st, %struct.graph_st* %39, i32 0, i32 0
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %40, i64 0, i64 %42
  %44 = load %struct.vert_st*, %struct.vert_st** %43, align 8
  store %struct.vert_st* %44, %struct.vert_st** %13, align 8
  br label %45

45:                                               ; preds = %93, %38
  %46 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %47 = icmp ne %struct.vert_st* %46, null
  br i1 %47, label %48, label %97

48:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %87, %48
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul nsw i32 %51, %52
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %90

55:                                               ; preds = %49
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @compute_dist(i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %10, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %10, align 4
  %69 = srem i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1 x %struct.vert_st*], [1 x %struct.vert_st*]* %14, i64 0, i64 %71
  %73 = load %struct.vert_st*, %struct.vert_st** %72, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %73, i64 %75
  store %struct.vert_st* %76, %struct.vert_st** %19, align 8
  %77 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %78 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %77, i32 0, i32 2
  %79 = load %struct.hash*, %struct.hash** %78, align 8
  store %struct.hash* %79, %struct.hash** %20, align 8
  %80 = load i32, i32* %18, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = load %struct.vert_st*, %struct.vert_st** %19, align 8
  %84 = ptrtoint %struct.vert_st* %83 to i32
  %85 = load %struct.hash*, %struct.hash** %20, align 8
  call void @HashInsert(i8* %82, i32 %84, %struct.hash* %85)
  br label %86

86:                                               ; preds = %59, %55
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %15, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %15, align 4
  br label %49

90:                                               ; preds = %49
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %90
  %94 = load %struct.vert_st*, %struct.vert_st** %13, align 8
  %95 = getelementptr inbounds %struct.vert_st, %struct.vert_st* %94, i32 0, i32 1
  %96 = load %struct.vert_st*, %struct.vert_st** %95, align 8
  store %struct.vert_st* %96, %struct.vert_st** %13, align 8
  br label %45

97:                                               ; preds = %45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @compute_dist(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %8, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %21, %22
  %24 = call i32 @random2(i32 %23)
  %25 = srem i32 %24, 2048
  %26 = add nsw i32 %25, 1
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @random2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @mult(i32 %4, i32 31415821)
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mult(i32 %0, i32 %1) #0 {
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

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
