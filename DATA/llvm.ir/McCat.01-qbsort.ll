; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.LinkList = type { i32, %struct.LinkList* }
%struct.List = type { i32, i32* }

@.str = private unnamed_addr constant [29 x i8] c"\0AList read (reverse order): \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\0ABubbleSort: \00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0AQuickSort:  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Comma expected in list number %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Last list read\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Program Error: Unrecognized errorcode from ReadList\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1.18 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.2.19 = private unnamed_addr constant [4 x i8] c"%d]\00", align 1
@.str.3.22 = private unnamed_addr constant [3 x i8] c"[]\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LessThan(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.LinkList*, align 8
  %9 = alloca %struct.List*, align 8
  %10 = alloca %struct.LinkList*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strtol(i8* %18, i8** null, i32 0) #5
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %15, %2
  br label %22

22:                                               ; preds = %73, %21
  %23 = call i32 @ReadList(%struct.LinkList** %8, %struct.List** %9)
  store i32 %23, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %103

25:                                               ; preds = %22
  %26 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  store %struct.LinkList* %26, %struct.LinkList** %10, align 8
  %27 = load %struct.List*, %struct.List** %9, align 8
  %28 = getelementptr inbounds %struct.List, %struct.List* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  %30 = load %struct.List*, %struct.List** %9, align 8
  %31 = getelementptr inbounds %struct.List, %struct.List* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 %34) #5
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.List*, %struct.List** %9, align 8
  %38 = getelementptr inbounds %struct.List, %struct.List* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.List*, %struct.List** %9, align 8
  %40 = getelementptr inbounds %struct.List, %struct.List* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = bitcast i32* %41 to i8*
  %43 = load i32*, i32** %11, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = load %struct.List*, %struct.List** %9, align 8
  %46 = getelementptr inbounds %struct.List, %struct.List* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = mul i64 4, %48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %44, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %70, %25
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.List*, %struct.List** %9, align 8
  %55 = call %struct.List* @BubbleSort(%struct.List* %54, i32 (i32, i32)* @LessThan)
  store %struct.List* %55, %struct.List** %9, align 8
  %56 = load %struct.List*, %struct.List** %9, align 8
  %57 = getelementptr inbounds %struct.List, %struct.List* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = load i32*, i32** %11, align 8
  %61 = bitcast i32* %60 to i8*
  %62 = load %struct.List*, %struct.List** %9, align 8
  %63 = getelementptr inbounds %struct.List, %struct.List* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %61, i64 %66, i1 false)
  %67 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %68 = call %struct.LinkList* @QuickSort(%struct.LinkList* %67, i32 (i32, i32)* @LessThan)
  store %struct.LinkList* %68, %struct.LinkList** %8, align 8
  %69 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @FreeLinkList(%struct.LinkList* %69)
  br label %70

70:                                               ; preds = %53
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %12, align 4
  br label %50

73:                                               ; preds = %50
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i32 @fflush(%struct._IO_FILE* %75)
  %77 = load %struct.List*, %struct.List** %9, align 8
  call void @PrintList(%struct.List* %77)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %80 = call i32 @fflush(%struct._IO_FILE* %79)
  %81 = load %struct.List*, %struct.List** %9, align 8
  %82 = call %struct.List* @BubbleSort(%struct.List* %81, i32 (i32, i32)* @LessThan)
  store %struct.List* %82, %struct.List** %9, align 8
  %83 = load %struct.List*, %struct.List** %9, align 8
  call void @PrintList(%struct.List* %83)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %86 = call i32 @fflush(%struct._IO_FILE* %85)
  %87 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %88 = call %struct.LinkList* @QuickSort(%struct.LinkList* %87, i32 (i32, i32)* @LessThan)
  store %struct.LinkList* %88, %struct.LinkList** %8, align 8
  %89 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @PrintLinkList(%struct.LinkList* %89)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @FreeLinkList(%struct.LinkList* %91)
  %92 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  call void @FreeLinkList(%struct.LinkList* %92)
  %93 = load %struct.List*, %struct.List** %9, align 8
  %94 = getelementptr inbounds %struct.List, %struct.List* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = bitcast i32* %95 to i8*
  call void @free(i8* %96) #5
  %97 = load %struct.List*, %struct.List** %9, align 8
  %98 = bitcast %struct.List* %97 to i8*
  call void @free(i8* %98) #5
  %99 = load i32*, i32** %11, align 8
  %100 = bitcast i32* %99 to i8*
  call void @free(i8* %100) #5
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %22

103:                                              ; preds = %22
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %110 [
    i32 42, label %105
    i32 7, label %108
  ]

105:                                              ; preds = %103
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  call void @exit(i32 1) #6
  unreachable

108:                                              ; preds = %103
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %112

110:                                              ; preds = %103
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

112:                                              ; preds = %108
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ReadList(%struct.LinkList** %0, %struct.List** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.LinkList**, align 8
  %5 = alloca %struct.List**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct.LinkList*, align 8
  %11 = alloca %struct.List*, align 8
  %12 = alloca %struct.LinkList*, align 8
  store %struct.LinkList** %0, %struct.LinkList*** %4, align 8
  store %struct.List** %1, %struct.List*** %5, align 8
  store i8 45, i8* %9, align 1
  br label %13

13:                                               ; preds = %21, %2
  %14 = load i8, i8* %9, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 91
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 7, i32* %3, align 4
  br label %106

21:                                               ; preds = %17
  br label %13

22:                                               ; preds = %13
  store i8 44, i8* %9, align 1
  %23 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  store %struct.LinkList* null, %struct.LinkList** %23, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %65, %22
  %25 = load i8, i8* %9, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 93
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  %29 = load i8, i8* %9, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 44
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 42, i32* %3, align 4
  br label %106

33:                                               ; preds = %28
  %34 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.8, i64 0, i64 0), i32* %8)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 7, i32* %3, align 4
  br label %106

37:                                               ; preds = %33
  %38 = call noalias i8* @malloc(i64 16) #5
  %39 = bitcast i8* %38 to %struct.LinkList*
  store %struct.LinkList* %39, %struct.LinkList** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %42 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  %44 = load %struct.LinkList*, %struct.LinkList** %43, align 8
  %45 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %46 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %45, i32 0, i32 1
  store %struct.LinkList* %44, %struct.LinkList** %46, align 8
  %47 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %48 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  store %struct.LinkList* %47, %struct.LinkList** %48, align 8
  store i8 32, i8* %9, align 1
  br label %49

49:                                               ; preds = %63, %37
  %50 = load i8, i8* %9, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8, i8* %9, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br label %57

57:                                               ; preds = %53, %49
  %58 = phi i1 [ true, %49 ], [ %56, %53 ]
  br i1 %58, label %59, label %64

59:                                               ; preds = %57
  %60 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %9)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 7, i32* %3, align 4
  br label %106

63:                                               ; preds = %59
  br label %49

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %24

68:                                               ; preds = %24
  %69 = call noalias i8* @malloc(i64 16) #5
  %70 = bitcast i8* %69 to %struct.List*
  store %struct.List* %70, %struct.List** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.List*, %struct.List** %11, align 8
  %73 = getelementptr inbounds %struct.List, %struct.List* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 4, %75
  %77 = call noalias i8* @malloc(i64 %76) #5
  %78 = bitcast i8* %77 to i32*
  %79 = load %struct.List*, %struct.List** %11, align 8
  %80 = getelementptr inbounds %struct.List, %struct.List* %79, i32 0, i32 1
  store i32* %78, i32** %80, align 8
  %81 = load %struct.LinkList**, %struct.LinkList*** %4, align 8
  %82 = load %struct.LinkList*, %struct.LinkList** %81, align 8
  store %struct.LinkList* %82, %struct.LinkList** %12, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %97, %68
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.LinkList*, %struct.LinkList** %12, align 8
  %89 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.List*, %struct.List** %11, align 8
  %92 = getelementptr inbounds %struct.List, %struct.List* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %90, i32* %96, align 4
  br label %97

97:                                               ; preds = %87
  %98 = load %struct.LinkList*, %struct.LinkList** %12, align 8
  %99 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %98, i32 0, i32 1
  %100 = load %struct.LinkList*, %struct.LinkList** %99, align 8
  store %struct.LinkList* %100, %struct.LinkList** %12, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %83

103:                                              ; preds = %83
  %104 = load %struct.List*, %struct.List** %11, align 8
  %105 = load %struct.List**, %struct.List*** %5, align 8
  store %struct.List* %104, %struct.List** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %103, %62, %36, %32, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.List* @BubbleSort(%struct.List* %0, i32 (i32, i32)* %1) #0 {
  %3 = alloca %struct.List*, align 8
  %4 = alloca i32 (i32, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.List* %0, %struct.List** %3, align 8
  store i32 (i32, i32)* %1, i32 (i32, i32)** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %78, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.List*, %struct.List** %3, align 8
  %11 = getelementptr inbounds %struct.List, %struct.List* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %74, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.List*, %struct.List** %3, align 8
  %18 = getelementptr inbounds %struct.List, %struct.List* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %19, %20
  %22 = sub nsw i32 %21, 1
  %23 = icmp slt i32 %16, %22
  br i1 %23, label %24, label %77

24:                                               ; preds = %15
  %25 = load i32 (i32, i32)*, i32 (i32, i32)** %4, align 8
  %26 = load %struct.List*, %struct.List** %3, align 8
  %27 = getelementptr inbounds %struct.List, %struct.List* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.List*, %struct.List** %3, align 8
  %35 = getelementptr inbounds %struct.List, %struct.List* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %25(i32 %33, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %24
  %44 = load %struct.List*, %struct.List** %3, align 8
  %45 = getelementptr inbounds %struct.List, %struct.List* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  %51 = load %struct.List*, %struct.List** %3, align 8
  %52 = getelementptr inbounds %struct.List, %struct.List* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.List*, %struct.List** %3, align 8
  %60 = getelementptr inbounds %struct.List, %struct.List* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %58, i32* %64, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.List*, %struct.List** %3, align 8
  %67 = getelementptr inbounds %struct.List, %struct.List* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %65, i32* %72, align 4
  br label %73

73:                                               ; preds = %43, %24
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %15

77:                                               ; preds = %15
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %8

81:                                               ; preds = %8
  %82 = load %struct.List*, %struct.List** %3, align 8
  ret %struct.List* %82
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.LinkList* @QuickSort(%struct.LinkList* %0, i32 (i32, i32)* %1) #0 {
  %3 = alloca %struct.LinkList*, align 8
  %4 = alloca %struct.LinkList*, align 8
  %5 = alloca i32 (i32, i32)*, align 8
  %6 = alloca %struct.LinkList*, align 8
  %7 = alloca %struct.LinkList*, align 8
  %8 = alloca %struct.LinkList*, align 8
  %9 = alloca %struct.LinkList*, align 8
  %10 = alloca %struct.LinkList*, align 8
  %11 = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %0, %struct.LinkList** %4, align 8
  store i32 (i32, i32)* %1, i32 (i32, i32)** %5, align 8
  store %struct.LinkList* null, %struct.LinkList** %8, align 8
  store %struct.LinkList* null, %struct.LinkList** %9, align 8
  %12 = load %struct.LinkList*, %struct.LinkList** %4, align 8
  %13 = icmp eq %struct.LinkList* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.LinkList* null, %struct.LinkList** %3, align 8
  br label %103

15:                                               ; preds = %2
  %16 = call noalias i8* @malloc(i64 16) #5
  %17 = bitcast i8* %16 to %struct.LinkList*
  store %struct.LinkList* %17, %struct.LinkList** %11, align 8
  %18 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  %19 = load %struct.LinkList*, %struct.LinkList** %4, align 8
  %20 = bitcast %struct.LinkList* %18 to i8*
  %21 = bitcast %struct.LinkList* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.LinkList*, %struct.LinkList** %4, align 8
  %23 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %22, i32 0, i32 1
  %24 = load %struct.LinkList*, %struct.LinkList** %23, align 8
  store %struct.LinkList* %24, %struct.LinkList** %6, align 8
  br label %25

25:                                               ; preds = %63, %15
  %26 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %27 = icmp ne %struct.LinkList* %26, null
  br i1 %27, label %28, label %67

28:                                               ; preds = %25
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %30 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %31 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  %34 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %29(i32 %32, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %28
  %39 = call noalias i8* @malloc(i64 16) #5
  %40 = bitcast i8* %39 to %struct.LinkList*
  store %struct.LinkList* %40, %struct.LinkList** %10, align 8
  %41 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %42 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %45 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  %47 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %48 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %47, i32 0, i32 1
  store %struct.LinkList* %46, %struct.LinkList** %48, align 8
  %49 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  store %struct.LinkList* %49, %struct.LinkList** %8, align 8
  br label %62

50:                                               ; preds = %28
  %51 = call noalias i8* @malloc(i64 16) #5
  %52 = bitcast i8* %51 to %struct.LinkList*
  store %struct.LinkList* %52, %struct.LinkList** %10, align 8
  %53 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %54 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %57 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.LinkList*, %struct.LinkList** %9, align 8
  %59 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  %60 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %59, i32 0, i32 1
  store %struct.LinkList* %58, %struct.LinkList** %60, align 8
  %61 = load %struct.LinkList*, %struct.LinkList** %10, align 8
  store %struct.LinkList* %61, %struct.LinkList** %9, align 8
  br label %62

62:                                               ; preds = %50, %38
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %65 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %64, i32 0, i32 1
  %66 = load %struct.LinkList*, %struct.LinkList** %65, align 8
  store %struct.LinkList* %66, %struct.LinkList** %6, align 8
  br label %25

67:                                               ; preds = %25
  %68 = load %struct.LinkList*, %struct.LinkList** %9, align 8
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %70 = call %struct.LinkList* @QuickSort(%struct.LinkList* %68, i32 (i32, i32)* %69)
  store %struct.LinkList* %70, %struct.LinkList** %7, align 8
  %71 = load %struct.LinkList*, %struct.LinkList** %9, align 8
  call void @FreeLinkList(%struct.LinkList* %71)
  %72 = load %struct.LinkList*, %struct.LinkList** %7, align 8
  store %struct.LinkList* %72, %struct.LinkList** %9, align 8
  %73 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  %74 = load i32 (i32, i32)*, i32 (i32, i32)** %5, align 8
  %75 = call %struct.LinkList* @QuickSort(%struct.LinkList* %73, i32 (i32, i32)* %74)
  store %struct.LinkList* %75, %struct.LinkList** %7, align 8
  %76 = load %struct.LinkList*, %struct.LinkList** %8, align 8
  call void @FreeLinkList(%struct.LinkList* %76)
  %77 = load %struct.LinkList*, %struct.LinkList** %7, align 8
  %78 = icmp ne %struct.LinkList* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %67
  %80 = load %struct.LinkList*, %struct.LinkList** %7, align 8
  store %struct.LinkList* %80, %struct.LinkList** %6, align 8
  br label %81

81:                                               ; preds = %87, %79
  %82 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %83 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %82, i32 0, i32 1
  %84 = load %struct.LinkList*, %struct.LinkList** %83, align 8
  %85 = icmp ne %struct.LinkList* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %89 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %88, i32 0, i32 1
  %90 = load %struct.LinkList*, %struct.LinkList** %89, align 8
  store %struct.LinkList* %90, %struct.LinkList** %6, align 8
  br label %81

91:                                               ; preds = %81
  %92 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  %93 = load %struct.LinkList*, %struct.LinkList** %6, align 8
  %94 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %93, i32 0, i32 1
  store %struct.LinkList* %92, %struct.LinkList** %94, align 8
  br label %97

95:                                               ; preds = %67
  %96 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  store %struct.LinkList* %96, %struct.LinkList** %7, align 8
  br label %97

97:                                               ; preds = %95, %91
  %98 = load %struct.LinkList*, %struct.LinkList** %9, align 8
  %99 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  %100 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %99, i32 0, i32 1
  store %struct.LinkList* %98, %struct.LinkList** %100, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load %struct.LinkList*, %struct.LinkList** %7, align 8
  store %struct.LinkList* %102, %struct.LinkList** %3, align 8
  br label %103

103:                                              ; preds = %101, %14
  %104 = load %struct.LinkList*, %struct.LinkList** %3, align 8
  ret %struct.LinkList* %104
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeLinkList(%struct.LinkList* %0) #0 {
  %2 = alloca %struct.LinkList*, align 8
  %3 = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %0, %struct.LinkList** %2, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %6 = icmp ne %struct.LinkList* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %9 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %8, i32 0, i32 1
  %10 = load %struct.LinkList*, %struct.LinkList** %9, align 8
  store %struct.LinkList* %10, %struct.LinkList** %3, align 8
  %11 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %12 = bitcast %struct.LinkList* %11 to i8*
  call void @free(i8* %12) #5
  br label %13

13:                                               ; preds = %7
  %14 = load %struct.LinkList*, %struct.LinkList** %3, align 8
  store %struct.LinkList* %14, %struct.LinkList** %2, align 8
  br label %4

15:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintList(%struct.List* %0) #0 {
  %2 = alloca %struct.List*, align 8
  %3 = alloca i32, align 4
  store %struct.List* %0, %struct.List** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.List*, %struct.List** %2, align 8
  %8 = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %5
  %13 = load %struct.List*, %struct.List** %2, align 8
  %14 = getelementptr inbounds %struct.List, %struct.List* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.18, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.List*, %struct.List** %2, align 8
  %26 = getelementptr inbounds %struct.List, %struct.List* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.List*, %struct.List** %2, align 8
  %29 = getelementptr inbounds %struct.List, %struct.List* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.19, i64 0, i64 0), i32 %34)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintLinkList(%struct.LinkList* %0) #0 {
  %2 = alloca %struct.LinkList*, align 8
  store %struct.LinkList* %0, %struct.LinkList** %2, align 8
  %3 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %4 = icmp eq %struct.LinkList* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.22, i64 0, i64 0))
  br label %28

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %9

9:                                                ; preds = %19, %7
  %10 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %11 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %10, i32 0, i32 1
  %12 = load %struct.LinkList*, %struct.LinkList** %11, align 8
  %13 = icmp ne %struct.LinkList* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %16 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.18, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14
  %20 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %21 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %20, i32 0, i32 1
  %22 = load %struct.LinkList*, %struct.LinkList** %21, align 8
  store %struct.LinkList* %22, %struct.LinkList** %2, align 8
  br label %9

23:                                               ; preds = %9
  %24 = load %struct.LinkList*, %struct.LinkList** %2, align 8
  %25 = getelementptr inbounds %struct.LinkList, %struct.LinkList* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.19, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %5
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
