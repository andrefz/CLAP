; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._Heap = type { %struct._Vertices*, %struct._Heap*, %struct._Heap*, %struct._Heap*, %struct._Heap*, i32, i16 }
%struct._Vertices = type { i32, %struct._Edges*, %struct._Vertices*, i32, %struct._Edges* }
%struct._Edges = type { i32, %struct._Vertices*, %struct._Vertices*, %struct._Edges* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@hTable = internal global [10000 x %struct._Heap*] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [29 x i8] c"(h1 != NULL) && (h2 != NULL)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Fheap.c\00", align 1
@__PRETTY_FUNCTION__.CombineLists = private unnamed_addr constant [36 x i8] c"void CombineLists(HeapP *, HeapP *)\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"Oops, could not malloc\0A\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"r < MAX_RANK\00", align 1
@__PRETTY_FUNCTION__.DeleteMin = private unnamed_addr constant [26 x i8] c"HeapP *DeleteMin(HeapP *)\00", align 1
@__PRETTY_FUNCTION__.AddEntry = private unnamed_addr constant [32 x i8] c"void AddEntry(HeapP *, HeapP *)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"h != NULL\00", align 1
@__PRETTY_FUNCTION__.RemoveEntry = private unnamed_addr constant [28 x i8] c"HeapP *RemoveEntry(HeapP *)\00", align 1
@__PRETTY_FUNCTION__.DecreaseKey = private unnamed_addr constant [42 x i8] c"HeapP *DecreaseKey(HeapP *, HeapP *, int)\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"i != NULL\00", align 1
@__PRETTY_FUNCTION__.RemoveChild = private unnamed_addr constant [26 x i8] c"void RemoveChild(HeapP *)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@__PRETTY_FUNCTION__.FixRank = private unnamed_addr constant [27 x i8] c"void FixRank(HeapP *, int)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"delta > 0\00", align 1
@__PRETTY_FUNCTION__.Delete = private unnamed_addr constant [32 x i8] c"HeapP *Delete(HeapP *, HeapP *)\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" nil \00", align 1
@.str.1.9 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2.10 = private unnamed_addr constant [6 x i8] c"[%u] \00", align 1
@.str.3.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@debug = dso_local global i32 1, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"Generating a connected graph ... \00", align 1
@.str.1.13 = private unnamed_addr constant [45 x i8] c"done\0AFinding the mininmum spanning tree ... \00", align 1
@.str.2.14 = private unnamed_addr constant [17 x i8] c"done\0AThe graph:\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [28 x i8] c"The minimum spanning tree:\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [50 x i8] c"Time spent in finding the mininum spanning tree:\0A\00", align 1
@.str.5.17 = private unnamed_addr constant [21 x i8] c"graph != NULL_VERTEX\00", align 1
@.str.6.18 = private unnamed_addr constant [5 x i8] c"ft.c\00", align 1
@__PRETTY_FUNCTION__.PrintMST = private unnamed_addr constant [26 x i8] c"void PrintMST(Vertices *)\00", align 1
@.str.7.19 = private unnamed_addr constant [17 x i8] c"vertex %d to %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"nEdge + 1 >= nVertex\00", align 1
@.str.1.23 = private unnamed_addr constant [8 x i8] c"graph.c\00", align 1
@__PRETTY_FUNCTION__.GenGraph = private unnamed_addr constant [29 x i8] c"Vertices *GenGraph(int, int)\00", align 1
@.str.2.24 = private unnamed_addr constant [37 x i8] c"nEdge <= nVertex * (nVertex - 1) / 2\00", align 1
@generatedEdges = internal global i32 0, align 4
@.str.3.25 = private unnamed_addr constant [21 x i8] c"graph != NULL_VERTEX\00", align 1
@__PRETTY_FUNCTION__.AddEdges = private unnamed_addr constant [41 x i8] c"Vertices *AddEdges(Vertices *, int, int)\00", align 1
@.str.4.26 = private unnamed_addr constant [11 x i8] c"nEdge >= 0\00", align 1
@.str.5.27 = private unnamed_addr constant [19 x i8] c"vertex1 != vertex2\00", align 1
@.str.6.28 = private unnamed_addr constant [18 x i8] c"Could not malloc\0A\00", align 1
@id = internal global i32 1, align 4
@.str.7.31 = private unnamed_addr constant [14 x i8] c"graph != NULL\00", align 1
@__PRETTY_FUNCTION__.PrintGraph = private unnamed_addr constant [28 x i8] c"void PrintGraph(Vertices *)\00", align 1
@.str.8.32 = private unnamed_addr constant [27 x i8] c"Vertex %d is connected to:\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" %d(%d)[%d]\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"delta > 0\00", align 1
@.str.1.40 = private unnamed_addr constant [7 x i8] c"item.c\00", align 1
@__PRETTY_FUNCTION__.Subtract = private unnamed_addr constant [28 x i8] c"Item *Subtract(Item *, int)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitFHeap() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 10000
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %7
  store %struct._Heap* null, %struct._Heap** %8, align 8
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2

12:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @MakeHeap() #0 {
  ret %struct._Heap* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @FindMin(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %4 = load %struct._Heap*, %struct._Heap** %3, align 8
  %5 = icmp eq %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store %struct._Vertices* null, %struct._Vertices** %2, align 8
  br label %11

7:                                                ; preds = %1
  %8 = load %struct._Heap*, %struct._Heap** %3, align 8
  %9 = getelementptr inbounds %struct._Heap, %struct._Heap* %8, i32 0, i32 0
  %10 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  store %struct._Vertices* %10, %struct._Vertices** %2, align 8
  br label %11

11:                                               ; preds = %7, %6
  %12 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  ret %struct._Vertices* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Insert(%struct._Heap** %0, %struct._Vertices* %1) #0 {
  %3 = alloca %struct._Heap**, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap** %0, %struct._Heap*** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %6 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %7 = call %struct._Heap* @NewHeap(%struct._Vertices* %6)
  store %struct._Heap* %7, %struct._Heap** %5, align 8
  %8 = load %struct._Heap**, %struct._Heap*** %3, align 8
  %9 = load %struct._Heap*, %struct._Heap** %8, align 8
  %10 = load %struct._Heap*, %struct._Heap** %5, align 8
  %11 = call %struct._Heap* @Meld(%struct._Heap* %9, %struct._Heap* %10)
  %12 = load %struct._Heap**, %struct._Heap*** %3, align 8
  store %struct._Heap* %11, %struct._Heap** %12, align 8
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  ret %struct._Heap* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @NewHeap(%struct._Vertices* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = call noalias i8* @malloc(i64 48) #5
  %5 = bitcast i8* %4 to %struct._Heap*
  store %struct._Heap* %5, %struct._Heap** %3, align 8
  %6 = load %struct._Heap*, %struct._Heap** %3, align 8
  %7 = icmp eq %struct._Heap* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

11:                                               ; preds = %1
  %12 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %13 = load %struct._Heap*, %struct._Heap** %3, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 0
  store %struct._Vertices* %12, %struct._Vertices** %14, align 8
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %16, align 8
  %17 = load %struct._Heap*, %struct._Heap** %3, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %18, align 8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = getelementptr inbounds %struct._Heap, %struct._Heap* %20, i32 0, i32 3
  store %struct._Heap* %19, %struct._Heap** %21, align 8
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 4
  store %struct._Heap* %22, %struct._Heap** %24, align 8
  %25 = load %struct._Heap*, %struct._Heap** %3, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 5
  store i32 0, i32* %26, align 8
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 6
  store i16 0, i16* %28, align 4
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Meld(%struct._Heap* %0, %struct._Heap* %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Heap* %1, %struct._Heap** %5, align 8
  %6 = load %struct._Heap*, %struct._Heap** %5, align 8
  %7 = icmp eq %struct._Heap* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %9, %struct._Heap** %3, align 8
  br label %30

10:                                               ; preds = %2
  %11 = load %struct._Heap*, %struct._Heap** %4, align 8
  %12 = icmp eq %struct._Heap* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %14, %struct._Heap** %3, align 8
  br label %30

15:                                               ; preds = %10
  %16 = load %struct._Heap*, %struct._Heap** %4, align 8
  %17 = load %struct._Heap*, %struct._Heap** %5, align 8
  call void @CombineLists(%struct._Heap* %16, %struct._Heap* %17)
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 0
  %20 = load %struct._Vertices*, %struct._Vertices** %19, align 8
  %21 = load %struct._Heap*, %struct._Heap** %5, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 0
  %23 = load %struct._Vertices*, %struct._Vertices** %22, align 8
  %24 = call i32 @LessThan(%struct._Vertices* %20, %struct._Vertices* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %27, %struct._Heap** %3, align 8
  br label %30

28:                                               ; preds = %15
  %29 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %29, %struct._Heap** %3, align 8
  br label %30

30:                                               ; preds = %28, %26, %13, %8
  %31 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CombineLists(%struct._Heap* %0, %struct._Heap* %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store %struct._Heap* %1, %struct._Heap** %4, align 8
  %6 = load %struct._Heap*, %struct._Heap** %3, align 8
  %7 = icmp ne %struct._Heap* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  %10 = icmp ne %struct._Heap* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  br label %13

12:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.CombineLists, i64 0, i64 0)) #6
  unreachable

13:                                               ; preds = %11
  %14 = load %struct._Heap*, %struct._Heap** %3, align 8
  store %struct._Heap* %14, %struct._Heap** %5, align 8
  %15 = load %struct._Heap*, %struct._Heap** %4, align 8
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 3
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 4
  store %struct._Heap* %15, %struct._Heap** %19, align 8
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = load %struct._Heap*, %struct._Heap** %4, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 3
  %23 = load %struct._Heap*, %struct._Heap** %22, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 4
  store %struct._Heap* %20, %struct._Heap** %24, align 8
  %25 = load %struct._Heap*, %struct._Heap** %3, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 3
  %27 = load %struct._Heap*, %struct._Heap** %26, align 8
  store %struct._Heap* %27, %struct._Heap** %5, align 8
  %28 = load %struct._Heap*, %struct._Heap** %4, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 3
  %30 = load %struct._Heap*, %struct._Heap** %29, align 8
  %31 = load %struct._Heap*, %struct._Heap** %3, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  store %struct._Heap* %30, %struct._Heap** %32, align 8
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  %34 = load %struct._Heap*, %struct._Heap** %4, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  store %struct._Heap* %33, %struct._Heap** %35, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DeleteMin(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._Heap*, align 8
  %8 = alloca %struct._Heap*, align 8
  %9 = alloca %struct._Heap*, align 8
  %10 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct._Heap*, %struct._Heap** %3, align 8
  %12 = icmp eq %struct._Heap* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct._Heap* null, %struct._Heap** %2, align 8
  br label %280

14:                                               ; preds = %1
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = call %struct._Heap* @RemoveEntry(%struct._Heap* %15)
  store %struct._Heap* %16, %struct._Heap** %7, align 8
  %17 = load %struct._Heap*, %struct._Heap** %7, align 8
  %18 = icmp eq %struct._Heap* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct._Heap*, %struct._Heap** %3, align 8
  %21 = bitcast %struct._Heap* %20 to i8*
  call void @free(i8* %21) #5
  store %struct._Heap* null, %struct._Heap** %2, align 8
  br label %280

22:                                               ; preds = %14
  %23 = load %struct._Heap*, %struct._Heap** %7, align 8
  %24 = load %struct._Heap*, %struct._Heap** %3, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 2
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = icmp eq %struct._Heap* %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %30, align 8
  br label %31

31:                                               ; preds = %28, %22
  %32 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %32, %struct._Heap** %8, align 8
  br label %33

33:                                               ; preds = %111, %31
  %34 = load %struct._Heap*, %struct._Heap** %8, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  %36 = load %struct._Heap*, %struct._Heap** %35, align 8
  store %struct._Heap* %36, %struct._Heap** %9, align 8
  %37 = load %struct._Heap*, %struct._Heap** %8, align 8
  %38 = load %struct._Heap*, %struct._Heap** %8, align 8
  %39 = getelementptr inbounds %struct._Heap, %struct._Heap* %38, i32 0, i32 3
  store %struct._Heap* %37, %struct._Heap** %39, align 8
  %40 = load %struct._Heap*, %struct._Heap** %8, align 8
  %41 = load %struct._Heap*, %struct._Heap** %8, align 8
  %42 = getelementptr inbounds %struct._Heap, %struct._Heap* %41, i32 0, i32 4
  store %struct._Heap* %40, %struct._Heap** %42, align 8
  %43 = load %struct._Heap*, %struct._Heap** %8, align 8
  %44 = getelementptr inbounds %struct._Heap, %struct._Heap* %43, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %44, align 8
  %45 = load %struct._Heap*, %struct._Heap** %8, align 8
  %46 = getelementptr inbounds %struct._Heap, %struct._Heap* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 10000
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  br label %52

51:                                               ; preds = %33
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #6
  unreachable

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %98, %52
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %55
  %57 = load %struct._Heap*, %struct._Heap** %56, align 8
  %58 = icmp ne %struct._Heap* %57, null
  br i1 %58, label %59, label %99

59:                                               ; preds = %53
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %61
  %63 = load %struct._Heap*, %struct._Heap** %62, align 8
  %64 = getelementptr inbounds %struct._Heap, %struct._Heap* %63, i32 0, i32 0
  %65 = load %struct._Vertices*, %struct._Vertices** %64, align 8
  %66 = load %struct._Heap*, %struct._Heap** %8, align 8
  %67 = getelementptr inbounds %struct._Heap, %struct._Heap* %66, i32 0, i32 0
  %68 = load %struct._Vertices*, %struct._Vertices** %67, align 8
  %69 = call i32 @LessThan(%struct._Vertices* %65, %struct._Vertices* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %73
  %75 = load %struct._Heap*, %struct._Heap** %74, align 8
  %76 = load %struct._Heap*, %struct._Heap** %8, align 8
  call void @AddEntry(%struct._Heap* %75, %struct._Heap* %76)
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %78
  %80 = load %struct._Heap*, %struct._Heap** %79, align 8
  store %struct._Heap* %80, %struct._Heap** %8, align 8
  br label %87

81:                                               ; preds = %59
  %82 = load %struct._Heap*, %struct._Heap** %8, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %84
  %86 = load %struct._Heap*, %struct._Heap** %85, align 8
  call void @AddEntry(%struct._Heap* %82, %struct._Heap* %86)
  br label %87

87:                                               ; preds = %81, %71
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %89
  store %struct._Heap* null, %struct._Heap** %90, align 8
  %91 = load %struct._Heap*, %struct._Heap** %8, align 8
  %92 = getelementptr inbounds %struct._Heap, %struct._Heap* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp slt i32 %94, 10000
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %98

97:                                               ; preds = %87
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 184, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #6
  unreachable

98:                                               ; preds = %96
  br label %53

99:                                               ; preds = %53
  %100 = load %struct._Heap*, %struct._Heap** %8, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %102
  store %struct._Heap* %100, %struct._Heap** %103, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp sgt i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %4, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %99
  %110 = load %struct._Heap*, %struct._Heap** %9, align 8
  store %struct._Heap* %110, %struct._Heap** %8, align 8
  br label %111

111:                                              ; preds = %109
  %112 = load %struct._Heap*, %struct._Heap** %8, align 8
  %113 = load %struct._Heap*, %struct._Heap** %7, align 8
  %114 = icmp ne %struct._Heap* %112, %113
  br i1 %114, label %33, label %115

115:                                              ; preds = %111
  %116 = load %struct._Heap*, %struct._Heap** %3, align 8
  %117 = getelementptr inbounds %struct._Heap, %struct._Heap* %116, i32 0, i32 2
  %118 = load %struct._Heap*, %struct._Heap** %117, align 8
  %119 = icmp ne %struct._Heap* %118, null
  br i1 %119, label %120, label %209

120:                                              ; preds = %115
  %121 = load %struct._Heap*, %struct._Heap** %3, align 8
  %122 = getelementptr inbounds %struct._Heap, %struct._Heap* %121, i32 0, i32 2
  %123 = load %struct._Heap*, %struct._Heap** %122, align 8
  store %struct._Heap* %123, %struct._Heap** %8, align 8
  br label %124

124:                                              ; preds = %202, %120
  %125 = load %struct._Heap*, %struct._Heap** %8, align 8
  %126 = getelementptr inbounds %struct._Heap, %struct._Heap* %125, i32 0, i32 3
  %127 = load %struct._Heap*, %struct._Heap** %126, align 8
  store %struct._Heap* %127, %struct._Heap** %9, align 8
  %128 = load %struct._Heap*, %struct._Heap** %8, align 8
  %129 = load %struct._Heap*, %struct._Heap** %8, align 8
  %130 = getelementptr inbounds %struct._Heap, %struct._Heap* %129, i32 0, i32 3
  store %struct._Heap* %128, %struct._Heap** %130, align 8
  %131 = load %struct._Heap*, %struct._Heap** %8, align 8
  %132 = load %struct._Heap*, %struct._Heap** %8, align 8
  %133 = getelementptr inbounds %struct._Heap, %struct._Heap* %132, i32 0, i32 4
  store %struct._Heap* %131, %struct._Heap** %133, align 8
  %134 = load %struct._Heap*, %struct._Heap** %8, align 8
  %135 = getelementptr inbounds %struct._Heap, %struct._Heap* %134, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %135, align 8
  %136 = load %struct._Heap*, %struct._Heap** %8, align 8
  %137 = getelementptr inbounds %struct._Heap, %struct._Heap* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* %4, align 4
  %140 = icmp slt i32 %139, 10000
  br i1 %140, label %141, label %142

141:                                              ; preds = %124
  br label %143

142:                                              ; preds = %124
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 211, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #6
  unreachable

143:                                              ; preds = %141
  br label %144

144:                                              ; preds = %189, %143
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %146
  %148 = load %struct._Heap*, %struct._Heap** %147, align 8
  %149 = icmp ne %struct._Heap* %148, null
  br i1 %149, label %150, label %190

150:                                              ; preds = %144
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %152
  %154 = load %struct._Heap*, %struct._Heap** %153, align 8
  %155 = getelementptr inbounds %struct._Heap, %struct._Heap* %154, i32 0, i32 0
  %156 = load %struct._Vertices*, %struct._Vertices** %155, align 8
  %157 = load %struct._Heap*, %struct._Heap** %8, align 8
  %158 = getelementptr inbounds %struct._Heap, %struct._Heap* %157, i32 0, i32 0
  %159 = load %struct._Vertices*, %struct._Vertices** %158, align 8
  %160 = call i32 @LessThan(%struct._Vertices* %156, %struct._Vertices* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %150
  %163 = load i32, i32* %4, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %164
  %166 = load %struct._Heap*, %struct._Heap** %165, align 8
  %167 = load %struct._Heap*, %struct._Heap** %8, align 8
  call void @AddEntry(%struct._Heap* %166, %struct._Heap* %167)
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %169
  %171 = load %struct._Heap*, %struct._Heap** %170, align 8
  store %struct._Heap* %171, %struct._Heap** %8, align 8
  br label %178

172:                                              ; preds = %150
  %173 = load %struct._Heap*, %struct._Heap** %8, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %175
  %177 = load %struct._Heap*, %struct._Heap** %176, align 8
  call void @AddEntry(%struct._Heap* %173, %struct._Heap* %177)
  br label %178

178:                                              ; preds = %172, %162
  %179 = load i32, i32* %4, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %180
  store %struct._Heap* null, %struct._Heap** %181, align 8
  %182 = load %struct._Heap*, %struct._Heap** %8, align 8
  %183 = getelementptr inbounds %struct._Heap, %struct._Heap* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  store i32 %184, i32* %4, align 4
  %185 = load i32, i32* %4, align 4
  %186 = icmp slt i32 %185, 10000
  br i1 %186, label %187, label %188

187:                                              ; preds = %178
  br label %189

188:                                              ; preds = %178
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.DeleteMin, i64 0, i64 0)) #6
  unreachable

189:                                              ; preds = %187
  br label %144

190:                                              ; preds = %144
  %191 = load %struct._Heap*, %struct._Heap** %8, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %193
  store %struct._Heap* %191, %struct._Heap** %194, align 8
  %195 = load i32, i32* %4, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %5, align 4
  br label %200

200:                                              ; preds = %198, %190
  %201 = load %struct._Heap*, %struct._Heap** %9, align 8
  store %struct._Heap* %201, %struct._Heap** %8, align 8
  br label %202

202:                                              ; preds = %200
  %203 = load %struct._Heap*, %struct._Heap** %8, align 8
  %204 = load %struct._Heap*, %struct._Heap** %3, align 8
  %205 = getelementptr inbounds %struct._Heap, %struct._Heap* %204, i32 0, i32 2
  %206 = load %struct._Heap*, %struct._Heap** %205, align 8
  %207 = icmp ne %struct._Heap* %203, %206
  br i1 %207, label %124, label %208

208:                                              ; preds = %202
  br label %209

209:                                              ; preds = %208, %115
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %222, %209
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %5, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %214, label %225

214:                                              ; preds = %210
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %216
  %218 = load %struct._Heap*, %struct._Heap** %217, align 8
  %219 = icmp ne %struct._Heap* %218, null
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  br label %225

221:                                              ; preds = %214
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  br label %210

225:                                              ; preds = %220, %210
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %227
  %229 = load %struct._Heap*, %struct._Heap** %228, align 8
  store %struct._Heap* %229, %struct._Heap** %7, align 8
  %230 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %230, %struct._Heap** %10, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %232
  store %struct._Heap* null, %struct._Heap** %233, align 8
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %236

236:                                              ; preds = %273, %225
  %237 = load i32, i32* %6, align 4
  %238 = load i32, i32* %5, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %276

240:                                              ; preds = %236
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %242
  %244 = load %struct._Heap*, %struct._Heap** %243, align 8
  %245 = icmp ne %struct._Heap* %244, null
  br i1 %245, label %246, label %272

246:                                              ; preds = %240
  %247 = load %struct._Heap*, %struct._Heap** %7, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %249
  %251 = load %struct._Heap*, %struct._Heap** %250, align 8
  call void @CombineLists(%struct._Heap* %247, %struct._Heap* %251)
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %253
  %255 = load %struct._Heap*, %struct._Heap** %254, align 8
  %256 = getelementptr inbounds %struct._Heap, %struct._Heap* %255, i32 0, i32 0
  %257 = load %struct._Vertices*, %struct._Vertices** %256, align 8
  %258 = load %struct._Heap*, %struct._Heap** %10, align 8
  %259 = getelementptr inbounds %struct._Heap, %struct._Heap* %258, i32 0, i32 0
  %260 = load %struct._Vertices*, %struct._Vertices** %259, align 8
  %261 = call i32 @LessThan(%struct._Vertices* %257, %struct._Vertices* %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %246
  %264 = load i32, i32* %6, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %265
  %267 = load %struct._Heap*, %struct._Heap** %266, align 8
  store %struct._Heap* %267, %struct._Heap** %10, align 8
  br label %268

268:                                              ; preds = %263, %246
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [10000 x %struct._Heap*], [10000 x %struct._Heap*]* @hTable, i64 0, i64 %270
  store %struct._Heap* null, %struct._Heap** %271, align 8
  br label %272

272:                                              ; preds = %268, %240
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %6, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %6, align 4
  br label %236

276:                                              ; preds = %236
  %277 = load %struct._Heap*, %struct._Heap** %3, align 8
  %278 = bitcast %struct._Heap* %277 to i8*
  call void @free(i8* %278) #5
  %279 = load %struct._Heap*, %struct._Heap** %10, align 8
  store %struct._Heap* %279, %struct._Heap** %2, align 8
  br label %280

280:                                              ; preds = %276, %19, %13
  %281 = load %struct._Heap*, %struct._Heap** %2, align 8
  ret %struct._Heap* %281
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @RemoveEntry(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %4 = load %struct._Heap*, %struct._Heap** %3, align 8
  %5 = icmp ne %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 468, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.RemoveEntry, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Heap*, %struct._Heap** %3, align 8
  %10 = load %struct._Heap*, %struct._Heap** %3, align 8
  %11 = getelementptr inbounds %struct._Heap, %struct._Heap* %10, i32 0, i32 3
  %12 = load %struct._Heap*, %struct._Heap** %11, align 8
  %13 = icmp eq %struct._Heap* %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct._Heap*, %struct._Heap** %3, align 8
  %16 = getelementptr inbounds %struct._Heap, %struct._Heap* %15, i32 0, i32 2
  %17 = load %struct._Heap*, %struct._Heap** %16, align 8
  store %struct._Heap* %17, %struct._Heap** %2, align 8
  br label %36

18:                                               ; preds = %8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 4
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 3
  %24 = load %struct._Heap*, %struct._Heap** %23, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 4
  store %struct._Heap* %21, %struct._Heap** %25, align 8
  %26 = load %struct._Heap*, %struct._Heap** %3, align 8
  %27 = getelementptr inbounds %struct._Heap, %struct._Heap* %26, i32 0, i32 3
  %28 = load %struct._Heap*, %struct._Heap** %27, align 8
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 4
  %31 = load %struct._Heap*, %struct._Heap** %30, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  store %struct._Heap* %28, %struct._Heap** %32, align 8
  %33 = load %struct._Heap*, %struct._Heap** %3, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 3
  %35 = load %struct._Heap*, %struct._Heap** %34, align 8
  store %struct._Heap* %35, %struct._Heap** %2, align 8
  br label %36

36:                                               ; preds = %18, %14
  %37 = load %struct._Heap*, %struct._Heap** %2, align 8
  ret %struct._Heap* %37
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @AddEntry(%struct._Heap* %0, %struct._Heap* %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store %struct._Heap* %1, %struct._Heap** %4, align 8
  %5 = load %struct._Heap*, %struct._Heap** %3, align 8
  %6 = icmp ne %struct._Heap* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %12

11:                                               ; preds = %7, %2
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 437, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.AddEntry, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %3, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 2
  %15 = load %struct._Heap*, %struct._Heap** %14, align 8
  %16 = icmp eq %struct._Heap* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 2
  store %struct._Heap* %18, %struct._Heap** %20, align 8
  br label %26

21:                                               ; preds = %12
  %22 = load %struct._Heap*, %struct._Heap** %3, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 2
  %24 = load %struct._Heap*, %struct._Heap** %23, align 8
  %25 = load %struct._Heap*, %struct._Heap** %4, align 8
  call void @CombineLists(%struct._Heap* %24, %struct._Heap* %25)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = load %struct._Heap*, %struct._Heap** %4, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 1
  store %struct._Heap* %27, %struct._Heap** %29, align 8
  %30 = load %struct._Heap*, %struct._Heap** %3, align 8
  %31 = getelementptr inbounds %struct._Heap, %struct._Heap* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %struct._Heap*, %struct._Heap** %4, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  %37 = add nsw i32 %36, 1
  %38 = load %struct._Heap*, %struct._Heap** %3, align 8
  %39 = getelementptr inbounds %struct._Heap, %struct._Heap* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @DecreaseKey(%struct._Heap* %0, %struct._Heap* %1, i32 %2) #0 {
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca i32, align 4
  store %struct._Heap* %0, %struct._Heap** %5, align 8
  store %struct._Heap* %1, %struct._Heap** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct._Heap*, %struct._Heap** %5, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 274, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %6, align 8
  %14 = icmp ne %struct._Heap* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 275, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__PRETTY_FUNCTION__.DecreaseKey, i64 0, i64 0)) #6
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._Heap*, %struct._Heap** %6, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 1
  %20 = load %struct._Heap*, %struct._Heap** %19, align 8
  %21 = icmp eq %struct._Heap* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @RemoveChild(%struct._Heap* %23)
  %24 = load %struct._Heap*, %struct._Heap** %5, align 8
  %25 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @CombineLists(%struct._Heap* %24, %struct._Heap* %25)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct._Heap*, %struct._Heap** %6, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 0
  %29 = load %struct._Vertices*, %struct._Vertices** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call %struct._Vertices* @Subtract(%struct._Vertices* %29, i32 %30)
  %32 = load %struct._Heap*, %struct._Heap** %6, align 8
  %33 = getelementptr inbounds %struct._Heap, %struct._Heap* %32, i32 0, i32 0
  store %struct._Vertices* %31, %struct._Vertices** %33, align 8
  %34 = load %struct._Heap*, %struct._Heap** %6, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 0
  %36 = load %struct._Vertices*, %struct._Vertices** %35, align 8
  %37 = load %struct._Heap*, %struct._Heap** %5, align 8
  %38 = getelementptr inbounds %struct._Heap, %struct._Heap* %37, i32 0, i32 0
  %39 = load %struct._Vertices*, %struct._Vertices** %38, align 8
  %40 = call i32 @LessThan(%struct._Vertices* %36, %struct._Vertices* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %43, %struct._Heap** %4, align 8
  br label %46

44:                                               ; preds = %26
  %45 = load %struct._Heap*, %struct._Heap** %5, align 8
  store %struct._Heap* %45, %struct._Heap** %4, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = load %struct._Heap*, %struct._Heap** %4, align 8
  ret %struct._Heap* %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RemoveChild(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %4 = load %struct._Heap*, %struct._Heap** %2, align 8
  %5 = icmp ne %struct._Heap* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Heap*, %struct._Heap** %2, align 8
  %10 = getelementptr inbounds %struct._Heap, %struct._Heap* %9, i32 0, i32 1
  %11 = load %struct._Heap*, %struct._Heap** %10, align 8
  store %struct._Heap* %11, %struct._Heap** %3, align 8
  %12 = load %struct._Heap*, %struct._Heap** %3, align 8
  %13 = icmp ne %struct._Heap* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %16

15:                                               ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.RemoveChild, i64 0, i64 0)) #6
  unreachable

16:                                               ; preds = %14
  %17 = load %struct._Heap*, %struct._Heap** %3, align 8
  %18 = getelementptr inbounds %struct._Heap, %struct._Heap* %17, i32 0, i32 2
  %19 = load %struct._Heap*, %struct._Heap** %18, align 8
  %20 = load %struct._Heap*, %struct._Heap** %2, align 8
  %21 = icmp eq %struct._Heap* %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %16
  %23 = load %struct._Heap*, %struct._Heap** %2, align 8
  %24 = load %struct._Heap*, %struct._Heap** %2, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 3
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = icmp eq %struct._Heap* %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct._Heap*, %struct._Heap** %3, align 8
  %30 = getelementptr inbounds %struct._Heap, %struct._Heap* %29, i32 0, i32 2
  store %struct._Heap* null, %struct._Heap** %30, align 8
  br label %37

31:                                               ; preds = %22
  %32 = load %struct._Heap*, %struct._Heap** %2, align 8
  %33 = getelementptr inbounds %struct._Heap, %struct._Heap* %32, i32 0, i32 3
  %34 = load %struct._Heap*, %struct._Heap** %33, align 8
  %35 = load %struct._Heap*, %struct._Heap** %3, align 8
  %36 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i32 0, i32 2
  store %struct._Heap* %34, %struct._Heap** %36, align 8
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct._Heap*, %struct._Heap** %2, align 8
  %40 = call %struct._Heap* @RemoveEntry(%struct._Heap* %39)
  %41 = load %struct._Heap*, %struct._Heap** %3, align 8
  %42 = load %struct._Heap*, %struct._Heap** %2, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  call void @FixRank(%struct._Heap* %41, i32 %45)
  %46 = load %struct._Heap*, %struct._Heap** %2, align 8
  %47 = load %struct._Heap*, %struct._Heap** %2, align 8
  %48 = getelementptr inbounds %struct._Heap, %struct._Heap* %47, i32 0, i32 3
  store %struct._Heap* %46, %struct._Heap** %48, align 8
  %49 = load %struct._Heap*, %struct._Heap** %2, align 8
  %50 = load %struct._Heap*, %struct._Heap** %2, align 8
  %51 = getelementptr inbounds %struct._Heap, %struct._Heap* %50, i32 0, i32 4
  store %struct._Heap* %49, %struct._Heap** %51, align 8
  %52 = load %struct._Heap*, %struct._Heap** %2, align 8
  %53 = getelementptr inbounds %struct._Heap, %struct._Heap* %52, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %53, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FixRank(%struct._Heap* %0, i32 %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._Heap*, %struct._Heap** %3, align 8
  %6 = icmp ne %struct._Heap* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 329, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #6
  unreachable

9:                                                ; preds = %7
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %14

13:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.FixRank, i64 0, i64 0)) #6
  unreachable

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %26, %14
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 %18, %19
  %21 = load %struct._Heap*, %struct._Heap** %3, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 8
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 1
  %25 = load %struct._Heap*, %struct._Heap** %24, align 8
  store %struct._Heap* %25, %struct._Heap** %3, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load %struct._Heap*, %struct._Heap** %3, align 8
  %28 = icmp ne %struct._Heap* %27, null
  br i1 %28, label %15, label %29

29:                                               ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Delete(%struct._Heap* %0, %struct._Heap* %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Heap* %1, %struct._Heap** %5, align 8
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp ne %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  %14 = icmp ne %struct._Heap* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 347, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.Delete, i64 0, i64 0)) #6
  unreachable

17:                                               ; preds = %15
  %18 = load %struct._Heap*, %struct._Heap** %4, align 8
  %19 = load %struct._Heap*, %struct._Heap** %5, align 8
  %20 = icmp eq %struct._Heap* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct._Heap*, %struct._Heap** %4, align 8
  %23 = call %struct._Heap* @DeleteMin(%struct._Heap* %22)
  store %struct._Heap* %23, %struct._Heap** %3, align 8
  br label %78

24:                                               ; preds = %17
  %25 = load %struct._Heap*, %struct._Heap** %5, align 8
  %26 = getelementptr inbounds %struct._Heap, %struct._Heap* %25, i32 0, i32 1
  %27 = load %struct._Heap*, %struct._Heap** %26, align 8
  %28 = icmp eq %struct._Heap* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct._Heap*, %struct._Heap** %5, align 8
  %31 = call %struct._Heap* @RemoveEntry(%struct._Heap* %30)
  br label %34

32:                                               ; preds = %24
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  call void @RemoveChild(%struct._Heap* %33)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct._Heap*, %struct._Heap** %5, align 8
  %36 = getelementptr inbounds %struct._Heap, %struct._Heap* %35, i32 0, i32 2
  %37 = load %struct._Heap*, %struct._Heap** %36, align 8
  store %struct._Heap* %37, %struct._Heap** %6, align 8
  %38 = load %struct._Heap*, %struct._Heap** %6, align 8
  %39 = icmp ne %struct._Heap* %38, null
  br i1 %39, label %40, label %74

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %67, %40
  %42 = load %struct._Heap*, %struct._Heap** %6, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 3
  %44 = load %struct._Heap*, %struct._Heap** %43, align 8
  store %struct._Heap* %44, %struct._Heap** %7, align 8
  %45 = load %struct._Heap*, %struct._Heap** %6, align 8
  %46 = load %struct._Heap*, %struct._Heap** %6, align 8
  %47 = getelementptr inbounds %struct._Heap, %struct._Heap* %46, i32 0, i32 3
  store %struct._Heap* %45, %struct._Heap** %47, align 8
  %48 = load %struct._Heap*, %struct._Heap** %6, align 8
  %49 = load %struct._Heap*, %struct._Heap** %6, align 8
  %50 = getelementptr inbounds %struct._Heap, %struct._Heap* %49, i32 0, i32 4
  store %struct._Heap* %48, %struct._Heap** %50, align 8
  %51 = load %struct._Heap*, %struct._Heap** %6, align 8
  %52 = getelementptr inbounds %struct._Heap, %struct._Heap* %51, i32 0, i32 1
  store %struct._Heap* null, %struct._Heap** %52, align 8
  %53 = load %struct._Heap*, %struct._Heap** %4, align 8
  %54 = load %struct._Heap*, %struct._Heap** %6, align 8
  call void @CombineLists(%struct._Heap* %53, %struct._Heap* %54)
  %55 = load %struct._Heap*, %struct._Heap** %6, align 8
  %56 = getelementptr inbounds %struct._Heap, %struct._Heap* %55, i32 0, i32 0
  %57 = load %struct._Vertices*, %struct._Vertices** %56, align 8
  %58 = load %struct._Heap*, %struct._Heap** %4, align 8
  %59 = getelementptr inbounds %struct._Heap, %struct._Heap* %58, i32 0, i32 0
  %60 = load %struct._Vertices*, %struct._Vertices** %59, align 8
  %61 = call i32 @LessThan(%struct._Vertices* %57, %struct._Vertices* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %41
  %64 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %64, %struct._Heap** %4, align 8
  br label %65

65:                                               ; preds = %63, %41
  %66 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %66, %struct._Heap** %6, align 8
  br label %67

67:                                               ; preds = %65
  %68 = load %struct._Heap*, %struct._Heap** %6, align 8
  %69 = load %struct._Heap*, %struct._Heap** %5, align 8
  %70 = getelementptr inbounds %struct._Heap, %struct._Heap* %69, i32 0, i32 2
  %71 = load %struct._Heap*, %struct._Heap** %70, align 8
  %72 = icmp ne %struct._Heap* %68, %71
  br i1 %72, label %41, label %73

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct._Heap*, %struct._Heap** %5, align 8
  %76 = bitcast %struct._Heap* %75 to i8*
  call void @free(i8* %76) #5
  %77 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %77, %struct._Heap** %3, align 8
  br label %78

78:                                               ; preds = %74, %21
  %79 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @ItemOf(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %3 = load %struct._Heap*, %struct._Heap** %2, align 8
  %4 = getelementptr inbounds %struct._Heap, %struct._Heap* %3, i32 0, i32 0
  %5 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  ret %struct._Vertices* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Heap* @Find(%struct._Heap* %0, %struct._Vertices* %1) #0 {
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Heap*, align 8
  %7 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %8 = load %struct._Heap*, %struct._Heap** %4, align 8
  %9 = icmp eq %struct._Heap* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct._Heap* null, %struct._Heap** %3, align 8
  br label %50

11:                                               ; preds = %2
  %12 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %12, %struct._Heap** %6, align 8
  br label %13

13:                                               ; preds = %45, %11
  %14 = load %struct._Heap*, %struct._Heap** %6, align 8
  %15 = getelementptr inbounds %struct._Heap, %struct._Heap* %14, i32 0, i32 0
  %16 = load %struct._Vertices*, %struct._Vertices** %15, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %18 = call i32 @Equal(%struct._Vertices* %16, %struct._Vertices* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load %struct._Heap*, %struct._Heap** %6, align 8
  store %struct._Heap* %21, %struct._Heap** %3, align 8
  br label %50

22:                                               ; preds = %13
  %23 = load %struct._Heap*, %struct._Heap** %6, align 8
  %24 = getelementptr inbounds %struct._Heap, %struct._Heap* %23, i32 0, i32 0
  %25 = load %struct._Vertices*, %struct._Vertices** %24, align 8
  %26 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %27 = call i32 @LessThan(%struct._Vertices* %25, %struct._Vertices* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %22
  %30 = load %struct._Heap*, %struct._Heap** %6, align 8
  %31 = getelementptr inbounds %struct._Heap, %struct._Heap* %30, i32 0, i32 2
  %32 = load %struct._Heap*, %struct._Heap** %31, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %34 = call %struct._Heap* @Find(%struct._Heap* %32, %struct._Vertices* %33)
  store %struct._Heap* %34, %struct._Heap** %7, align 8
  %35 = load %struct._Heap*, %struct._Heap** %7, align 8
  %36 = icmp ne %struct._Heap* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct._Heap*, %struct._Heap** %7, align 8
  store %struct._Heap* %38, %struct._Heap** %3, align 8
  br label %50

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %22
  br label %41

41:                                               ; preds = %40
  %42 = load %struct._Heap*, %struct._Heap** %6, align 8
  %43 = getelementptr inbounds %struct._Heap, %struct._Heap* %42, i32 0, i32 3
  %44 = load %struct._Heap*, %struct._Heap** %43, align 8
  store %struct._Heap* %44, %struct._Heap** %6, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load %struct._Heap*, %struct._Heap** %6, align 8
  %47 = load %struct._Heap*, %struct._Heap** %4, align 8
  %48 = icmp ne %struct._Heap* %46, %47
  br i1 %48, label %13, label %49

49:                                               ; preds = %45
  store %struct._Heap* null, %struct._Heap** %3, align 8
  br label %50

50:                                               ; preds = %49, %37, %20, %10
  %51 = load %struct._Heap*, %struct._Heap** %3, align 8
  ret %struct._Heap* %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck1(%struct._Heap* %0, %struct._Vertices* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %7 = load %struct._Heap*, %struct._Heap** %4, align 8
  %8 = icmp eq %struct._Heap* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %39

10:                                               ; preds = %2
  %11 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %11, %struct._Heap** %6, align 8
  br label %12

12:                                               ; preds = %34, %10
  %13 = load %struct._Heap*, %struct._Heap** %6, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 0
  %15 = load %struct._Vertices*, %struct._Vertices** %14, align 8
  %16 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %17 = call i32 @LessThan(%struct._Vertices* %15, %struct._Vertices* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %39

20:                                               ; preds = %12
  %21 = load %struct._Heap*, %struct._Heap** %6, align 8
  %22 = getelementptr inbounds %struct._Heap, %struct._Heap* %21, i32 0, i32 2
  %23 = load %struct._Heap*, %struct._Heap** %22, align 8
  %24 = load %struct._Heap*, %struct._Heap** %6, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 0
  %26 = load %struct._Vertices*, %struct._Vertices** %25, align 8
  %27 = call i32 @SanityCheck1(%struct._Heap* %23, %struct._Vertices* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %39

30:                                               ; preds = %20
  %31 = load %struct._Heap*, %struct._Heap** %6, align 8
  %32 = getelementptr inbounds %struct._Heap, %struct._Heap* %31, i32 0, i32 3
  %33 = load %struct._Heap*, %struct._Heap** %32, align 8
  store %struct._Heap* %33, %struct._Heap** %6, align 8
  br label %34

34:                                               ; preds = %30
  %35 = load %struct._Heap*, %struct._Heap** %6, align 8
  %36 = load %struct._Heap*, %struct._Heap** %4, align 8
  %37 = icmp ne %struct._Heap* %35, %36
  br i1 %37, label %12, label %38

38:                                               ; preds = %34
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %29, %19, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck2(%struct._Heap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._Heap*, align 8
  %6 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %3, align 8
  %7 = load %struct._Heap*, %struct._Heap** %3, align 8
  %8 = icmp eq %struct._Heap* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

10:                                               ; preds = %1
  %11 = load %struct._Heap*, %struct._Heap** %3, align 8
  store %struct._Heap* %11, %struct._Heap** %5, align 8
  br label %12

12:                                               ; preds = %56, %10
  %13 = load %struct._Heap*, %struct._Heap** %5, align 8
  %14 = getelementptr inbounds %struct._Heap, %struct._Heap* %13, i32 0, i32 2
  %15 = load %struct._Heap*, %struct._Heap** %14, align 8
  %16 = icmp ne %struct._Heap* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  %18 = load %struct._Heap*, %struct._Heap** %5, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 2
  %20 = load %struct._Heap*, %struct._Heap** %19, align 8
  store %struct._Heap* %20, %struct._Heap** %6, align 8
  br label %21

21:                                               ; preds = %31, %17
  %22 = load %struct._Heap*, %struct._Heap** %6, align 8
  %23 = getelementptr inbounds %struct._Heap, %struct._Heap* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct._Heap*, %struct._Heap** %6, align 8
  %29 = getelementptr inbounds %struct._Heap, %struct._Heap* %28, i32 0, i32 3
  %30 = load %struct._Heap*, %struct._Heap** %29, align 8
  store %struct._Heap* %30, %struct._Heap** %6, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load %struct._Heap*, %struct._Heap** %6, align 8
  %33 = load %struct._Heap*, %struct._Heap** %5, align 8
  %34 = getelementptr inbounds %struct._Heap, %struct._Heap* %33, i32 0, i32 2
  %35 = load %struct._Heap*, %struct._Heap** %34, align 8
  %36 = icmp ne %struct._Heap* %32, %35
  br i1 %36, label %21, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = load %struct._Heap*, %struct._Heap** %5, align 8
  %40 = getelementptr inbounds %struct._Heap, %struct._Heap* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %61

44:                                               ; preds = %37
  %45 = load %struct._Heap*, %struct._Heap** %5, align 8
  %46 = getelementptr inbounds %struct._Heap, %struct._Heap* %45, i32 0, i32 2
  %47 = load %struct._Heap*, %struct._Heap** %46, align 8
  %48 = call i32 @SanityCheck2(%struct._Heap* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %61

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct._Heap*, %struct._Heap** %5, align 8
  %54 = getelementptr inbounds %struct._Heap, %struct._Heap* %53, i32 0, i32 3
  %55 = load %struct._Heap*, %struct._Heap** %54, align 8
  store %struct._Heap* %55, %struct._Heap** %5, align 8
  br label %56

56:                                               ; preds = %52
  %57 = load %struct._Heap*, %struct._Heap** %5, align 8
  %58 = load %struct._Heap*, %struct._Heap** %3, align 8
  %59 = icmp ne %struct._Heap* %57, %58
  br i1 %59, label %12, label %60

60:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %50, %43, %9
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SanityCheck3(%struct._Heap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Heap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._Heap*, align 8
  %8 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct._Heap*, %struct._Heap** %4, align 8
  %10 = icmp eq %struct._Heap* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %47

15:                                               ; preds = %11, %2
  store i32 0, i32* %6, align 4
  %16 = load %struct._Heap*, %struct._Heap** %4, align 8
  store %struct._Heap* %16, %struct._Heap** %7, align 8
  br label %17

17:                                               ; preds = %37, %15
  %18 = load %struct._Heap*, %struct._Heap** %7, align 8
  %19 = getelementptr inbounds %struct._Heap, %struct._Heap* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct._Heap*, %struct._Heap** %7, align 8
  %25 = getelementptr inbounds %struct._Heap, %struct._Heap* %24, i32 0, i32 2
  %26 = load %struct._Heap*, %struct._Heap** %25, align 8
  %27 = load %struct._Heap*, %struct._Heap** %7, align 8
  %28 = getelementptr inbounds %struct._Heap, %struct._Heap* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SanityCheck3(%struct._Heap* %26, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %47

33:                                               ; preds = %17
  %34 = load %struct._Heap*, %struct._Heap** %7, align 8
  %35 = getelementptr inbounds %struct._Heap, %struct._Heap* %34, i32 0, i32 3
  %36 = load %struct._Heap*, %struct._Heap** %35, align 8
  store %struct._Heap* %36, %struct._Heap** %7, align 8
  br label %37

37:                                               ; preds = %33
  %38 = load %struct._Heap*, %struct._Heap** %7, align 8
  %39 = load %struct._Heap*, %struct._Heap** %4, align 8
  %40 = icmp ne %struct._Heap* %38, %39
  br i1 %40, label %17, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %47

46:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %32, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrettyPrint(%struct._Heap* %0) #0 {
  %2 = alloca %struct._Heap*, align 8
  %3 = alloca %struct._Heap*, align 8
  store %struct._Heap* %0, %struct._Heap** %2, align 8
  %4 = load %struct._Heap*, %struct._Heap** %2, align 8
  %5 = icmp eq %struct._Heap* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %28

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.9, i64 0, i64 0))
  %10 = load %struct._Heap*, %struct._Heap** %2, align 8
  store %struct._Heap* %10, %struct._Heap** %3, align 8
  br label %11

11:                                               ; preds = %22, %8
  %12 = load %struct._Heap*, %struct._Heap** %3, align 8
  %13 = getelementptr inbounds %struct._Heap, %struct._Heap* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.10, i64 0, i64 0), i32 %14)
  %16 = load %struct._Heap*, %struct._Heap** %3, align 8
  %17 = getelementptr inbounds %struct._Heap, %struct._Heap* %16, i32 0, i32 2
  %18 = load %struct._Heap*, %struct._Heap** %17, align 8
  call void @PrettyPrint(%struct._Heap* %18)
  %19 = load %struct._Heap*, %struct._Heap** %3, align 8
  %20 = getelementptr inbounds %struct._Heap, %struct._Heap* %19, i32 0, i32 3
  %21 = load %struct._Heap*, %struct._Heap** %20, align 8
  store %struct._Heap* %21, %struct._Heap** %3, align 8
  br label %22

22:                                               ; preds = %11
  %23 = load %struct._Heap*, %struct._Heap** %3, align 8
  %24 = load %struct._Heap*, %struct._Heap** %2, align 8
  %25 = icmp ne %struct._Heap* %23, %24
  br i1 %25, label %11, label %26

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.11, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %6
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._Vertices*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* %6, align 4
  store i32 9, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #7
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 2
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @atoi(i8* %21) #7
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 3
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @atoi(i8* %28) #7
  call void @srandom(i32 %29) #5
  br label %30

30:                                               ; preds = %25, %18
  br label %31

31:                                               ; preds = %30, %11
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* @debug, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct._Vertices* @GenGraph(i32 %38, i32 %39)
  store %struct._Vertices* %40, %struct._Vertices** %8, align 8
  %41 = load i32, i32* @debug, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1.13, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %47 = call %struct._Vertices* @MST(%struct._Vertices* %46)
  store %struct._Vertices* %47, %struct._Vertices** %8, align 8
  %48 = load i32, i32* @debug, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.14, i64 0, i64 0))
  %52 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  call void @PrintGraph(%struct._Vertices* %52)
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.15, i64 0, i64 0))
  %54 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  call void @PrintMST(%struct._Vertices* %54)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* @debug, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4.16, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare dso_local void @srandom(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @MST(%struct._Vertices* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Heap*, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  call void (...) bitcast (void ()* @InitFHeap to void (...)*)()
  %6 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  store %struct._Vertices* %6, %struct._Vertices** %4, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i32 0, i32 3
  store i32 0, i32* %8, align 8
  %9 = call %struct._Heap* (...) bitcast (%struct._Heap* ()* @MakeHeap to %struct._Heap* (...)*)()
  store %struct._Heap* %9, %struct._Heap** %3, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %11 = call %struct._Heap* @Insert(%struct._Heap** %3, %struct._Vertices* %10)
  %12 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i32 0, i32 2
  %14 = load %struct._Vertices*, %struct._Vertices** %13, align 8
  store %struct._Vertices* %14, %struct._Vertices** %4, align 8
  br label %15

15:                                               ; preds = %19, %1
  %16 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %18 = icmp ne %struct._Vertices* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 3
  store i32 2147483647, i32* %21, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %23 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %22, i32 0, i32 2
  %24 = load %struct._Vertices*, %struct._Vertices** %23, align 8
  store %struct._Vertices* %24, %struct._Vertices** %4, align 8
  br label %15

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %30, %25
  %27 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %28 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %29 = icmp ne %struct._Vertices* %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %26

31:                                               ; preds = %26
  %32 = load %struct._Heap*, %struct._Heap** %3, align 8
  %33 = call %struct._Vertices* @FindMin(%struct._Heap* %32)
  store %struct._Vertices* %33, %struct._Vertices** %4, align 8
  br label %34

34:                                               ; preds = %79, %31
  %35 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %36 = icmp ne %struct._Vertices* %35, null
  br i1 %36, label %37, label %82

37:                                               ; preds = %34
  %38 = load %struct._Heap*, %struct._Heap** %3, align 8
  %39 = call %struct._Heap* @DeleteMin(%struct._Heap* %38)
  store %struct._Heap* %39, %struct._Heap** %3, align 8
  %40 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %41 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %40, i32 0, i32 3
  store i32 -2147483648, i32* %41, align 8
  %42 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %43 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %42, i32 0, i32 1
  %44 = load %struct._Edges*, %struct._Edges** %43, align 8
  store %struct._Edges* %44, %struct._Edges** %5, align 8
  br label %45

45:                                               ; preds = %75, %37
  %46 = load %struct._Edges*, %struct._Edges** %5, align 8
  %47 = icmp ne %struct._Edges* %46, null
  br i1 %47, label %48, label %79

48:                                               ; preds = %45
  %49 = load %struct._Edges*, %struct._Edges** %5, align 8
  %50 = getelementptr inbounds %struct._Edges, %struct._Edges* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct._Edges*, %struct._Edges** %5, align 8
  %53 = getelementptr inbounds %struct._Edges, %struct._Edges* %52, i32 0, i32 2
  %54 = load %struct._Vertices*, %struct._Vertices** %53, align 8
  %55 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %51, %56
  br i1 %57, label %58, label %75

58:                                               ; preds = %48
  %59 = load %struct._Edges*, %struct._Edges** %5, align 8
  %60 = getelementptr inbounds %struct._Edges, %struct._Edges* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct._Edges*, %struct._Edges** %5, align 8
  %63 = getelementptr inbounds %struct._Edges, %struct._Edges* %62, i32 0, i32 2
  %64 = load %struct._Vertices*, %struct._Vertices** %63, align 8
  %65 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct._Edges*, %struct._Edges** %5, align 8
  %67 = load %struct._Edges*, %struct._Edges** %5, align 8
  %68 = getelementptr inbounds %struct._Edges, %struct._Edges* %67, i32 0, i32 2
  %69 = load %struct._Vertices*, %struct._Vertices** %68, align 8
  %70 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %69, i32 0, i32 4
  store %struct._Edges* %66, %struct._Edges** %70, align 8
  %71 = load %struct._Edges*, %struct._Edges** %5, align 8
  %72 = getelementptr inbounds %struct._Edges, %struct._Edges* %71, i32 0, i32 2
  %73 = load %struct._Vertices*, %struct._Vertices** %72, align 8
  %74 = call %struct._Heap* @Insert(%struct._Heap** %3, %struct._Vertices* %73)
  br label %75

75:                                               ; preds = %58, %48
  %76 = load %struct._Edges*, %struct._Edges** %5, align 8
  %77 = getelementptr inbounds %struct._Edges, %struct._Edges* %76, i32 0, i32 3
  %78 = load %struct._Edges*, %struct._Edges** %77, align 8
  store %struct._Edges* %78, %struct._Edges** %5, align 8
  br label %45

79:                                               ; preds = %45
  %80 = load %struct._Heap*, %struct._Heap** %3, align 8
  %81 = call %struct._Vertices* @FindMin(%struct._Heap* %80)
  store %struct._Vertices* %81, %struct._Vertices** %4, align 8
  br label %34

82:                                               ; preds = %34
  %83 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  ret %struct._Vertices* %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintMST(%struct._Vertices* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = icmp ne %struct._Vertices* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.17, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.18, i64 0, i64 0), i32 182, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.PrintMST, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %10 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %9, i32 0, i32 2
  %11 = load %struct._Vertices*, %struct._Vertices** %10, align 8
  store %struct._Vertices* %11, %struct._Vertices** %3, align 8
  br label %12

12:                                               ; preds = %16, %8
  %13 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %14 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %15 = icmp ne %struct._Vertices* %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %18 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 4
  %22 = load %struct._Edges*, %struct._Edges** %21, align 8
  %23 = getelementptr inbounds %struct._Edges, %struct._Edges* %22, i32 0, i32 1
  %24 = load %struct._Vertices*, %struct._Vertices** %23, align 8
  %25 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7.19, i64 0, i64 0), i32 %19, i32 %26)
  %28 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %29 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %28, i32 0, i32 2
  %30 = load %struct._Vertices*, %struct._Vertices** %29, align 8
  store %struct._Vertices* %30, %struct._Vertices** %3, align 8
  br label %12

31:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @GenGraph(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._Vertices*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %12

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 1
  %17 = mul nsw i32 %14, %16
  %18 = sdiv i32 %17, 2
  %19 = icmp sle i32 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %22

21:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.24, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.GenGraph, i64 0, i64 0)) #6
  unreachable

22:                                               ; preds = %20
  store i32 0, i32* @generatedEdges, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call %struct._Vertices* @GenTree(i32 %23)
  store %struct._Vertices* %24, %struct._Vertices** %5, align 8
  %25 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sub nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = call %struct._Vertices* @AddEdges(%struct._Vertices* %25, i32 %26, i32 %30)
  store %struct._Vertices* %31, %struct._Vertices** %5, align 8
  %32 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  ret %struct._Vertices* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @GenTree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Vertices*, align 8
  %7 = alloca %struct._Edges*, align 8
  store i32 %0, i32* %2, align 4
  %8 = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %8, %struct._Vertices** %6, align 8
  %9 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %10 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 2
  store %struct._Vertices* %9, %struct._Vertices** %11, align 8
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %79, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %82

16:                                               ; preds = %12
  %17 = call %struct._Vertices* @NewVertex()
  store %struct._Vertices* %17, %struct._Vertices** %5, align 8
  %18 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %18, %struct._Edges** %7, align 8
  %19 = load %struct._Edges*, %struct._Edges** %7, align 8
  %20 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %21 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %20, i32 0, i32 1
  store %struct._Edges* %19, %struct._Edges** %21, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %23 = call i64 @random() #5
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = srem i64 %23, %25
  %27 = trunc i64 %26 to i32
  %28 = call %struct._Vertices* @PickVertex(%struct._Vertices* %22, i32 %27)
  %29 = load %struct._Edges*, %struct._Edges** %7, align 8
  %30 = getelementptr inbounds %struct._Edges, %struct._Edges* %29, i32 0, i32 2
  store %struct._Vertices* %28, %struct._Vertices** %30, align 8
  %31 = call i64 @random() #5
  %32 = add nsw i64 %31, 1
  %33 = srem i64 %32, 100
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct._Edges*, %struct._Edges** %7, align 8
  %37 = getelementptr inbounds %struct._Edges, %struct._Edges* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %39 = load %struct._Edges*, %struct._Edges** %7, align 8
  %40 = getelementptr inbounds %struct._Edges, %struct._Edges* %39, i32 0, i32 1
  store %struct._Vertices* %38, %struct._Vertices** %40, align 8
  %41 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %42 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %41, i32 0, i32 2
  %43 = load %struct._Vertices*, %struct._Vertices** %42, align 8
  %44 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %45 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %44, i32 0, i32 2
  store %struct._Vertices* %43, %struct._Vertices** %45, align 8
  %46 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %47 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  %48 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %47, i32 0, i32 2
  store %struct._Vertices* %46, %struct._Vertices** %48, align 8
  %49 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %49, %struct._Edges** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load %struct._Edges*, %struct._Edges** %7, align 8
  %52 = getelementptr inbounds %struct._Edges, %struct._Edges* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %54 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %53, i32 0, i32 1
  %55 = load %struct._Edges*, %struct._Edges** %54, align 8
  %56 = getelementptr inbounds %struct._Edges, %struct._Edges* %55, i32 0, i32 2
  %57 = load %struct._Vertices*, %struct._Vertices** %56, align 8
  %58 = load %struct._Edges*, %struct._Edges** %7, align 8
  %59 = getelementptr inbounds %struct._Edges, %struct._Edges* %58, i32 0, i32 1
  store %struct._Vertices* %57, %struct._Vertices** %59, align 8
  %60 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %61 = load %struct._Edges*, %struct._Edges** %7, align 8
  %62 = getelementptr inbounds %struct._Edges, %struct._Edges* %61, i32 0, i32 2
  store %struct._Vertices* %60, %struct._Vertices** %62, align 8
  %63 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %64 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %63, i32 0, i32 1
  %65 = load %struct._Edges*, %struct._Edges** %64, align 8
  %66 = getelementptr inbounds %struct._Edges, %struct._Edges* %65, i32 0, i32 2
  %67 = load %struct._Vertices*, %struct._Vertices** %66, align 8
  %68 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %67, i32 0, i32 1
  %69 = load %struct._Edges*, %struct._Edges** %68, align 8
  %70 = load %struct._Edges*, %struct._Edges** %7, align 8
  %71 = getelementptr inbounds %struct._Edges, %struct._Edges* %70, i32 0, i32 3
  store %struct._Edges* %69, %struct._Edges** %71, align 8
  %72 = load %struct._Edges*, %struct._Edges** %7, align 8
  %73 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %74 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %73, i32 0, i32 1
  %75 = load %struct._Edges*, %struct._Edges** %74, align 8
  %76 = getelementptr inbounds %struct._Edges, %struct._Edges* %75, i32 0, i32 2
  %77 = load %struct._Vertices*, %struct._Vertices** %76, align 8
  %78 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %77, i32 0, i32 1
  store %struct._Edges* %72, %struct._Edges** %78, align 8
  br label %79

79:                                               ; preds = %16
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %12

82:                                               ; preds = %12
  %83 = load %struct._Vertices*, %struct._Vertices** %6, align 8
  ret %struct._Vertices* %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @AddEdges(%struct._Vertices* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._Vertices*, align 8
  %9 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %11 = icmp ne %struct._Vertices* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3.25, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  unreachable

14:                                               ; preds = %12
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.26, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  unreachable

19:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %57, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %49, %24
  %26 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %27 = call i64 @random() #5
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = srem i64 %27, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct._Vertices* @PickVertex(%struct._Vertices* %26, i32 %31)
  store %struct._Vertices* %32, %struct._Vertices** %8, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %34 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %33, i32 0, i32 2
  %35 = load %struct._Vertices*, %struct._Vertices** %34, align 8
  %36 = call i64 @random() #5
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = srem i64 %36, %38
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call %struct._Vertices* @PickVertex(%struct._Vertices* %35, i32 %41)
  store %struct._Vertices* %42, %struct._Vertices** %9, align 8
  %43 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %44 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  %45 = icmp ne %struct._Vertices* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25
  br label %48

47:                                               ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5.27, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.AddEdges, i64 0, i64 0)) #6
  unreachable

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  %50 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %51 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  %52 = call i32 @Duplicate(%struct._Vertices* %50, %struct._Vertices* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %25, label %54

54:                                               ; preds = %49
  %55 = load %struct._Vertices*, %struct._Vertices** %8, align 8
  %56 = load %struct._Vertices*, %struct._Vertices** %9, align 8
  call void @Connect(%struct._Vertices* %55, %struct._Vertices* %56)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %20

60:                                               ; preds = %20
  %61 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  ret %struct._Vertices* %61
}

; Function Attrs: nounwind
declare dso_local i64 @random() #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @PickVertex(%struct._Vertices* %0, i32 %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %14, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %11, i32 0, i32 2
  %13 = load %struct._Vertices*, %struct._Vertices** %12, align 8
  store %struct._Vertices* %13, %struct._Vertices** %3, align 8
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  ret %struct._Vertices* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Duplicate(%struct._Vertices* %0, %struct._Vertices* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca %struct._Vertices*, align 8
  %6 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %4, align 8
  store %struct._Vertices* %1, %struct._Vertices** %5, align 8
  %7 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %8 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %7, i32 0, i32 1
  %9 = load %struct._Edges*, %struct._Edges** %8, align 8
  store %struct._Edges* %9, %struct._Edges** %6, align 8
  br label %10

10:                                               ; preds = %20, %2
  %11 = load %struct._Edges*, %struct._Edges** %6, align 8
  %12 = icmp ne %struct._Edges* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct._Edges*, %struct._Edges** %6, align 8
  %15 = getelementptr inbounds %struct._Edges, %struct._Edges* %14, i32 0, i32 2
  %16 = load %struct._Vertices*, %struct._Vertices** %15, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %5, align 8
  %18 = icmp eq %struct._Vertices* %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %25

20:                                               ; preds = %13
  %21 = load %struct._Edges*, %struct._Edges** %6, align 8
  %22 = getelementptr inbounds %struct._Edges, %struct._Edges* %21, i32 0, i32 3
  %23 = load %struct._Edges*, %struct._Edges** %22, align 8
  store %struct._Edges* %23, %struct._Edges** %6, align 8
  br label %10

24:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Connect(%struct._Vertices* %0, %struct._Vertices* %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %7 = call i64 @random() #5
  %8 = add nsw i64 %7, 1
  %9 = srem i64 %8, 100
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %11, %struct._Edges** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct._Edges*, %struct._Edges** %6, align 8
  %14 = getelementptr inbounds %struct._Edges, %struct._Edges* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %16 = load %struct._Edges*, %struct._Edges** %6, align 8
  %17 = getelementptr inbounds %struct._Edges, %struct._Edges* %16, i32 0, i32 1
  store %struct._Vertices* %15, %struct._Vertices** %17, align 8
  %18 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %19 = load %struct._Edges*, %struct._Edges** %6, align 8
  %20 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 2
  store %struct._Vertices* %18, %struct._Vertices** %20, align 8
  %21 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %21, i32 0, i32 1
  %23 = load %struct._Edges*, %struct._Edges** %22, align 8
  %24 = load %struct._Edges*, %struct._Edges** %6, align 8
  %25 = getelementptr inbounds %struct._Edges, %struct._Edges* %24, i32 0, i32 3
  store %struct._Edges* %23, %struct._Edges** %25, align 8
  %26 = load %struct._Edges*, %struct._Edges** %6, align 8
  %27 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %28 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %27, i32 0, i32 1
  store %struct._Edges* %26, %struct._Edges** %28, align 8
  %29 = call %struct._Edges* @NewEdge()
  store %struct._Edges* %29, %struct._Edges** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct._Edges*, %struct._Edges** %6, align 8
  %32 = getelementptr inbounds %struct._Edges, %struct._Edges* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %34 = load %struct._Edges*, %struct._Edges** %6, align 8
  %35 = getelementptr inbounds %struct._Edges, %struct._Edges* %34, i32 0, i32 1
  store %struct._Vertices* %33, %struct._Vertices** %35, align 8
  %36 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %37 = load %struct._Edges*, %struct._Edges** %6, align 8
  %38 = getelementptr inbounds %struct._Edges, %struct._Edges* %37, i32 0, i32 2
  store %struct._Vertices* %36, %struct._Vertices** %38, align 8
  %39 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %40 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %39, i32 0, i32 1
  %41 = load %struct._Edges*, %struct._Edges** %40, align 8
  %42 = load %struct._Edges*, %struct._Edges** %6, align 8
  %43 = getelementptr inbounds %struct._Edges, %struct._Edges* %42, i32 0, i32 3
  store %struct._Edges* %41, %struct._Edges** %43, align 8
  %44 = load %struct._Edges*, %struct._Edges** %6, align 8
  %45 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %46 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %45, i32 0, i32 1
  store %struct._Edges* %44, %struct._Edges** %46, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Edges* @NewEdge() #0 {
  %1 = alloca %struct._Edges*, align 8
  %2 = call noalias i8* @malloc(i64 32) #5
  %3 = bitcast i8* %2 to %struct._Edges*
  store %struct._Edges* %3, %struct._Edges** %1, align 8
  %4 = load %struct._Edges*, %struct._Edges** %1, align 8
  %5 = icmp eq %struct._Edges* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.28, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

9:                                                ; preds = %0
  %10 = load %struct._Edges*, %struct._Edges** %1, align 8
  %11 = getelementptr inbounds %struct._Edges, %struct._Edges* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct._Edges*, %struct._Edges** %1, align 8
  %13 = getelementptr inbounds %struct._Edges, %struct._Edges* %12, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %13, align 8
  %14 = load %struct._Edges*, %struct._Edges** %1, align 8
  %15 = getelementptr inbounds %struct._Edges, %struct._Edges* %14, i32 0, i32 3
  store %struct._Edges* null, %struct._Edges** %15, align 8
  %16 = load %struct._Edges*, %struct._Edges** %1, align 8
  ret %struct._Edges* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @NewVertex() #0 {
  %1 = alloca %struct._Vertices*, align 8
  %2 = call noalias i8* @malloc(i64 40) #5
  %3 = bitcast i8* %2 to %struct._Vertices*
  store %struct._Vertices* %3, %struct._Vertices** %1, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %5 = icmp eq %struct._Vertices* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6.28, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

9:                                                ; preds = %0
  %10 = load i32, i32* @id, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @id, align 4
  %12 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %13 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %12, i32 0, i32 0
  store i32 %10, i32* %13, align 8
  %14 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %15 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %14, i32 0, i32 1
  store %struct._Edges* null, %struct._Edges** %15, align 8
  %16 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  %17 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %16, i32 0, i32 2
  store %struct._Vertices* null, %struct._Vertices** %17, align 8
  %18 = load %struct._Vertices*, %struct._Vertices** %1, align 8
  ret %struct._Vertices* %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintGraph(%struct._Vertices* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = icmp ne %struct._Vertices* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7.31, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.23, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.PrintGraph, i64 0, i64 0)) #6
  unreachable

8:                                                ; preds = %6
  %9 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  store %struct._Vertices* %9, %struct._Vertices** %3, align 8
  br label %10

10:                                               ; preds = %20, %8
  %11 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %12 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8.32, i64 0, i64 0), i32 %13)
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  call void @PrintNeighbors(%struct._Vertices* %15)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %18 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %17, i32 0, i32 2
  %19 = load %struct._Vertices*, %struct._Vertices** %18, align 8
  store %struct._Vertices* %19, %struct._Vertices** %3, align 8
  br label %20

20:                                               ; preds = %10
  %21 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %22 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %23 = icmp ne %struct._Vertices* %21, %22
  br i1 %23, label %10, label %24

24:                                               ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintNeighbors(%struct._Vertices* %0) #0 {
  %2 = alloca %struct._Vertices*, align 8
  %3 = alloca %struct._Edges*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %2, align 8
  %4 = load %struct._Vertices*, %struct._Vertices** %2, align 8
  %5 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %4, i32 0, i32 1
  %6 = load %struct._Edges*, %struct._Edges** %5, align 8
  store %struct._Edges* %6, %struct._Edges** %3, align 8
  br label %7

7:                                                ; preds = %10, %1
  %8 = load %struct._Edges*, %struct._Edges** %3, align 8
  %9 = icmp ne %struct._Edges* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %7
  %11 = load %struct._Edges*, %struct._Edges** %3, align 8
  %12 = getelementptr inbounds %struct._Edges, %struct._Edges* %11, i32 0, i32 2
  %13 = load %struct._Vertices*, %struct._Vertices** %12, align 8
  %14 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct._Edges*, %struct._Edges** %3, align 8
  %17 = getelementptr inbounds %struct._Edges, %struct._Edges* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct._Edges*, %struct._Edges** %3, align 8
  %20 = getelementptr inbounds %struct._Edges, %struct._Edges* %19, i32 0, i32 1
  %21 = load %struct._Vertices*, %struct._Vertices** %20, align 8
  %22 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %15, i32 %18, i32 %23)
  %25 = load %struct._Edges*, %struct._Edges** %3, align 8
  %26 = getelementptr inbounds %struct._Edges, %struct._Edges* %25, i32 0, i32 3
  %27 = load %struct._Edges*, %struct._Edges** %26, align 8
  store %struct._Edges* %27, %struct._Edges** %3, align 8
  br label %7

28:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LessThan(%struct._Vertices* %0, %struct._Vertices* %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %6 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Equal(%struct._Vertices* %0, %struct._Vertices* %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca %struct._Vertices*, align 8
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store %struct._Vertices* %1, %struct._Vertices** %4, align 8
  %5 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %6 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct._Vertices*, %struct._Vertices** %4, align 8
  %9 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %7, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._Vertices* @Subtract(%struct._Vertices* %0, i32 %1) #0 {
  %3 = alloca %struct._Vertices*, align 8
  %4 = alloca i32, align 4
  store %struct._Vertices* %0, %struct._Vertices** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %9

8:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.40, i64 0, i64 0), i32 49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.Subtract, i64 0, i64 0)) #6
  unreachable

9:                                                ; preds = %7
  %10 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %11 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  %16 = getelementptr inbounds %struct._Vertices, %struct._Vertices* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct._Vertices*, %struct._Vertices** %3, align 8
  ret %struct._Vertices* %17
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
