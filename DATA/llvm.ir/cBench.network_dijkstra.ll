; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._QITEM = type { i32, i32, i32, %struct._QITEM* }
%struct._NODE = type { i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@NUM_NODES = dso_local global i32 0, align 4
@qHead = dso_local global %struct._QITEM* null, align 8
@g_qCount = dso_local global i32 0, align 4
@ch = common dso_local global i32 0, align 4
@rgnNodes = common dso_local global %struct._NODE* null, align 8
@iNode = common dso_local global i32 0, align 4
@iDist = common dso_local global i32 0, align 4
@iPrev = common dso_local global i32 0, align 4
@i = common dso_local global i32 0, align 4
@AdjMatrix = common dso_local global i32* null, align 8
@iCost = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Shortest path is 0 in cost. Just stay where you are.\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Usage: dijkstra <filename>\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Only supports matrix size is #define'd.\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Matrix size: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"AdjMatrix size: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"rgnNodesSize: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Shortest path is %d in cost. \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"Path is: \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_path(%struct._NODE* %0, i32 %1) #0 {
  %3 = alloca %struct._NODE*, align 8
  %4 = alloca i32, align 4
  store %struct._NODE* %0, %struct._NODE** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._NODE*, %struct._NODE** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct._NODE, %struct._NODE* %5, i64 %7
  %9 = getelementptr inbounds %struct._NODE, %struct._NODE* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 9999
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct._NODE*, %struct._NODE** %3, align 8
  %14 = load %struct._NODE*, %struct._NODE** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct._NODE, %struct._NODE* %14, i64 %16
  %18 = getelementptr inbounds %struct._NODE, %struct._NODE* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  call void @print_path(%struct._NODE* %13, i32 %19)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %24 = call i32 @fflush(%struct._IO_FILE* %23)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._QITEM*, align 8
  %8 = alloca %struct._QITEM*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call noalias i8* @malloc(i64 24) #4
  %10 = bitcast i8* %9 to %struct._QITEM*
  store %struct._QITEM* %10, %struct._QITEM** %7, align 8
  %11 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %11, %struct._QITEM** %8, align 8
  %12 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %13 = icmp ne %struct._QITEM* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

17:                                               ; preds = %3
  %18 = load i32, i32* %4, align 4
  %19 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %20 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %23 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %26 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %27, i32 0, i32 3
  store %struct._QITEM* null, %struct._QITEM** %28, align 8
  %29 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %30 = icmp ne %struct._QITEM* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %17
  %32 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  store %struct._QITEM* %32, %struct._QITEM** @qHead, align 8
  br label %47

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %39, %33
  %35 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %36 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %35, i32 0, i32 3
  %37 = load %struct._QITEM*, %struct._QITEM** %36, align 8
  %38 = icmp ne %struct._QITEM* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %41 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %40, i32 0, i32 3
  %42 = load %struct._QITEM*, %struct._QITEM** %41, align 8
  store %struct._QITEM* %42, %struct._QITEM** %8, align 8
  br label %34

43:                                               ; preds = %34
  %44 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %45 = load %struct._QITEM*, %struct._QITEM** %8, align 8
  %46 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %45, i32 0, i32 3
  store %struct._QITEM* %44, %struct._QITEM** %46, align 8
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i32, i32* @g_qCount, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* @g_qCount, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @dequeue(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._QITEM*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  store %struct._QITEM* %8, %struct._QITEM** %7, align 8
  %9 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %10 = icmp ne %struct._QITEM* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %13 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %17 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %21 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct._QITEM*, %struct._QITEM** @qHead, align 8
  %25 = getelementptr inbounds %struct._QITEM, %struct._QITEM* %24, i32 0, i32 3
  %26 = load %struct._QITEM*, %struct._QITEM** %25, align 8
  store %struct._QITEM* %26, %struct._QITEM** @qHead, align 8
  %27 = load %struct._QITEM*, %struct._QITEM** %7, align 8
  %28 = bitcast %struct._QITEM* %27 to i8*
  call void @free(i8* %28) #4
  %29 = load i32, i32* @g_qCount, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* @g_qCount, align 4
  br label %31

31:                                               ; preds = %11, %3
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @qcount() #0 {
  %1 = load i32, i32* @g_qCount, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dijkstra(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* @ch, align 4
  br label %5

5:                                                ; preds = %20, %2
  %6 = load i32, i32* @ch, align 4
  %7 = load i32, i32* @NUM_NODES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %11 = load i32, i32* @ch, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct._NODE, %struct._NODE* %10, i64 %12
  %14 = getelementptr inbounds %struct._NODE, %struct._NODE* %13, i32 0, i32 0
  store i32 9999, i32* %14, align 4
  %15 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %16 = load i32, i32* @ch, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct._NODE, %struct._NODE* %15, i64 %17
  %19 = getelementptr inbounds %struct._NODE, %struct._NODE* %18, i32 0, i32 1
  store i32 9999, i32* %19, align 4
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* @ch, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @ch, align 4
  br label %5

23:                                               ; preds = %5
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  br label %106

29:                                               ; preds = %23
  %30 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct._NODE, %struct._NODE* %30, i64 %32
  %34 = getelementptr inbounds %struct._NODE, %struct._NODE* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct._NODE, %struct._NODE* %35, i64 %37
  %39 = getelementptr inbounds %struct._NODE, %struct._NODE* %38, i32 0, i32 1
  store i32 9999, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  call void @enqueue(i32 %40, i32 0, i32 9999)
  br label %41

41:                                               ; preds = %104, %29
  %42 = call i32 @qcount()
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %41
  call void @dequeue(i32* @iNode, i32* @iDist, i32* @iPrev)
  store i32 0, i32* @i, align 4
  br label %45

45:                                               ; preds = %101, %44
  %46 = load i32, i32* @i, align 4
  %47 = load i32, i32* @NUM_NODES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %104

49:                                               ; preds = %45
  %50 = load i32*, i32** @AdjMatrix, align 8
  %51 = load i32, i32* @iNode, align 4
  %52 = load i32, i32* @NUM_NODES, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* @i, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* @iCost, align 4
  %59 = icmp ne i32 %58, 9999
  br i1 %59, label %60, label %100

60:                                               ; preds = %49
  %61 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %62 = load i32, i32* @i, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct._NODE, %struct._NODE* %61, i64 %63
  %65 = getelementptr inbounds %struct._NODE, %struct._NODE* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 9999, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %60
  %69 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %70 = load i32, i32* @i, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct._NODE, %struct._NODE* %69, i64 %71
  %73 = getelementptr inbounds %struct._NODE, %struct._NODE* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @iCost, align 4
  %76 = load i32, i32* @iDist, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %68, %60
  %80 = load i32, i32* @iDist, align 4
  %81 = load i32, i32* @iCost, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %84 = load i32, i32* @i, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct._NODE, %struct._NODE* %83, i64 %85
  %87 = getelementptr inbounds %struct._NODE, %struct._NODE* %86, i32 0, i32 0
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* @iNode, align 4
  %89 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %90 = load i32, i32* @i, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct._NODE, %struct._NODE* %89, i64 %91
  %93 = getelementptr inbounds %struct._NODE, %struct._NODE* %92, i32 0, i32 1
  store i32 %88, i32* %93, align 4
  %94 = load i32, i32* @i, align 4
  %95 = load i32, i32* @iDist, align 4
  %96 = load i32, i32* @iCost, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @iNode, align 4
  call void @enqueue(i32 %94, i32 %97, i32 %98)
  br label %99

99:                                               ; preds = %79, %68
  br label %100

100:                                              ; preds = %99, %49
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* @i, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* @i, align 4
  br label %45

104:                                              ; preds = %45
  br label %41

105:                                              ; preds = %41
  br label %106

106:                                              ; preds = %105, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %10, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

20:                                               ; preds = %2
  %21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** %10, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

26:                                               ; preds = %20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i64* %12)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* %29)
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call %struct._IO_FILE* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %9, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* @NUM_NODES)
  %37 = load i32, i32* @NUM_NODES, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @NUM_NODES, align 4
  %40 = add nsw i32 %39, 1
  %41 = mul nsw i32 4, %40
  %42 = load i32, i32* @NUM_NODES, align 4
  %43 = add nsw i32 %42, 1
  %44 = mul nsw i32 %41, %43
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @NUM_NODES, align 4
  %47 = add nsw i32 %46, 1
  %48 = mul nsw i32 8, %47
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @NUM_NODES, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = mul i64 4, %52
  %54 = load i32, i32* @NUM_NODES, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = mul i64 %53, %56
  %58 = call noalias i8* @malloc(i64 %57) #4
  %59 = bitcast i8* %58 to i32*
  store i32* %59, i32** @AdjMatrix, align 8
  %60 = load i32, i32* @NUM_NODES, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = mul i64 8, %62
  %64 = call noalias i8* @malloc(i64 %63) #4
  %65 = bitcast i8* %64 to %struct._NODE*
  store %struct._NODE* %65, %struct._NODE** @rgnNodes, align 8
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %91, %26
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @NUM_NODES, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %66
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %87, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NUM_NODES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32* %8)
  %78 = load i32, i32* %8, align 4
  %79 = load i32*, i32** @AdjMatrix, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @NUM_NODES, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %79, i64 %85
  store i32 %78, i32* %86, align 4
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %71

90:                                               ; preds = %71
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %66

94:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  %95 = load i32, i32* @NUM_NODES, align 4
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %127, %94
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @NUM_NODES, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %132

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @NUM_NODES, align 4
  %104 = srem i32 %102, %103
  store i32 %104, i32* %7, align 4
  store i64 0, i64* %11, align 8
  br label %105

105:                                              ; preds = %112, %101
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp slt i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %7, align 4
  call void @dijkstra(i32 %110, i32 %111)
  br label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %105

115:                                              ; preds = %105
  %116 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct._NODE, %struct._NODE* %116, i64 %118
  %120 = getelementptr inbounds %struct._NODE, %struct._NODE* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32 %121)
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0))
  %124 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %125 = load i32, i32* %7, align 4
  call void @print_path(%struct._NODE* %124, i32 %125)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %127

127:                                              ; preds = %115
  %128 = load i32, i32* %6, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %97

132:                                              ; preds = %97
  %133 = load i32*, i32** @AdjMatrix, align 8
  %134 = bitcast i32* %133 to i8*
  call void @free(i8* %134) #4
  %135 = load %struct._NODE*, %struct._NODE** @rgnNodes, align 8
  %136 = bitcast %struct._NODE* %135 to i8*
  call void @free(i8* %136) #4
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
