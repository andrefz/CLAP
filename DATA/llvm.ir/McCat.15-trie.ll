; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.trie = type { i8, i32, i8*, %struct.trie*, %struct.trie* }
%struct.TrieRoot = type { %struct.trie* }
%struct.SString = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: %s <sourcefile>\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.trie* @tAlloc() #0 {
  %1 = alloca %struct.trie*, align 8
  %2 = call noalias i8* @calloc(i64 1, i64 32) #5
  %3 = bitcast i8* %2 to %struct.trie*
  store %struct.trie* %3, %struct.trie** %1, align 8
  %4 = load %struct.trie*, %struct.trie** %1, align 8
  %5 = icmp eq %struct.trie* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #6
  unreachable

7:                                                ; preds = %0
  %8 = load %struct.trie*, %struct.trie** %1, align 8
  ret %struct.trie* %8
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.trie* @tNew(i8 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.trie*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call %struct.trie* @tAlloc()
  store %struct.trie* %4, %struct.trie** %3, align 8
  %5 = load i8, i8* %2, align 1
  %6 = load %struct.trie*, %struct.trie** %3, align 8
  %7 = getelementptr inbounds %struct.trie, %struct.trie* %6, i32 0, i32 0
  store i8 %5, i8* %7, align 8
  %8 = load %struct.trie*, %struct.trie** %3, align 8
  %9 = getelementptr inbounds %struct.trie, %struct.trie* %8, i32 0, i32 1
  store i32 0, i32* %9, align 4
  %10 = load %struct.trie*, %struct.trie** %3, align 8
  %11 = getelementptr inbounds %struct.trie, %struct.trie* %10, i32 0, i32 2
  store i8* null, i8** %11, align 8
  %12 = load %struct.trie*, %struct.trie** %3, align 8
  %13 = getelementptr inbounds %struct.trie, %struct.trie* %12, i32 0, i32 4
  store %struct.trie* null, %struct.trie** %13, align 8
  %14 = load %struct.trie*, %struct.trie** %3, align 8
  %15 = getelementptr inbounds %struct.trie, %struct.trie* %14, i32 0, i32 3
  store %struct.trie* null, %struct.trie** %15, align 8
  %16 = load %struct.trie*, %struct.trie** %3, align 8
  ret %struct.trie* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertWord(%struct.TrieRoot* %0, i8* %1) #0 {
  %3 = alloca %struct.TrieRoot*, align 8
  %4 = alloca i8*, align 8
  store %struct.TrieRoot* %0, %struct.TrieRoot** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %26

10:                                               ; preds = %2
  %11 = load %struct.TrieRoot*, %struct.TrieRoot** %3, align 8
  %12 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %11, i32 0, i32 0
  %13 = load %struct.trie*, %struct.trie** %12, align 8
  %14 = icmp eq %struct.trie* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call %struct.trie* @insertRestOfWord(i8* %16)
  %18 = load %struct.TrieRoot*, %struct.TrieRoot** %3, align 8
  %19 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %18, i32 0, i32 0
  store %struct.trie* %17, %struct.trie** %19, align 8
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.TrieRoot*, %struct.TrieRoot** %3, align 8
  %22 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %21, i32 0, i32 0
  %23 = load %struct.trie*, %struct.trie** %22, align 8
  %24 = load i8*, i8** %4, align 8
  call void @insertW(%struct.trie* %23, i8* %24)
  br label %25

25:                                               ; preds = %20, %15
  br label %26

26:                                               ; preds = %25, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.trie* @insertRestOfWord(i8* %0) #0 {
  %2 = alloca %struct.trie*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.trie*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %30

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = call %struct.trie* @tNew(i8 signext %12)
  store %struct.trie* %13, %struct.trie** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %3, align 8
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %10
  %21 = load %struct.trie*, %struct.trie** %4, align 8
  %22 = getelementptr inbounds %struct.trie, %struct.trie* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.trie*, %struct.trie** %4, align 8
  store %struct.trie* %23, %struct.trie** %2, align 8
  br label %30

24:                                               ; preds = %10
  %25 = load i8*, i8** %3, align 8
  %26 = call %struct.trie* @insertRestOfWord(i8* %25)
  %27 = load %struct.trie*, %struct.trie** %4, align 8
  %28 = getelementptr inbounds %struct.trie, %struct.trie* %27, i32 0, i32 3
  store %struct.trie* %26, %struct.trie** %28, align 8
  %29 = load %struct.trie*, %struct.trie** %4, align 8
  store %struct.trie* %29, %struct.trie** %2, align 8
  br label %30

30:                                               ; preds = %24, %20, %9
  %31 = load %struct.trie*, %struct.trie** %2, align 8
  ret %struct.trie* %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertW(%struct.trie* %0, i8* %1) #0 {
  %3 = alloca %struct.trie*, align 8
  %4 = alloca i8*, align 8
  store %struct.trie* %0, %struct.trie** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.trie*, %struct.trie** %3, align 8
  %6 = icmp eq %struct.trie* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  call void @abort() #6
  unreachable

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %64

14:                                               ; preds = %8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load %struct.trie*, %struct.trie** %3, align 8
  %19 = getelementptr inbounds %struct.trie, %struct.trie* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %17, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %14
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.trie*, %struct.trie** %3, align 8
  %31 = getelementptr inbounds %struct.trie, %struct.trie* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  br label %64

32:                                               ; preds = %23
  %33 = load %struct.trie*, %struct.trie** %3, align 8
  %34 = getelementptr inbounds %struct.trie, %struct.trie* %33, i32 0, i32 3
  %35 = load %struct.trie*, %struct.trie** %34, align 8
  %36 = icmp eq %struct.trie* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %4, align 8
  %40 = call %struct.trie* @insertRestOfWord(i8* %39)
  %41 = load %struct.trie*, %struct.trie** %3, align 8
  %42 = getelementptr inbounds %struct.trie, %struct.trie* %41, i32 0, i32 3
  store %struct.trie* %40, %struct.trie** %42, align 8
  br label %64

43:                                               ; preds = %32
  %44 = load %struct.trie*, %struct.trie** %3, align 8
  %45 = getelementptr inbounds %struct.trie, %struct.trie* %44, i32 0, i32 3
  %46 = load %struct.trie*, %struct.trie** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  call void @insertW(%struct.trie* %46, i8* %48)
  br label %64

49:                                               ; preds = %14
  %50 = load %struct.trie*, %struct.trie** %3, align 8
  %51 = getelementptr inbounds %struct.trie, %struct.trie* %50, i32 0, i32 4
  %52 = load %struct.trie*, %struct.trie** %51, align 8
  %53 = icmp eq %struct.trie* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i8*, i8** %4, align 8
  %56 = call %struct.trie* @insertRestOfWord(i8* %55)
  %57 = load %struct.trie*, %struct.trie** %3, align 8
  %58 = getelementptr inbounds %struct.trie, %struct.trie* %57, i32 0, i32 4
  store %struct.trie* %56, %struct.trie** %58, align 8
  br label %64

59:                                               ; preds = %49
  %60 = load %struct.trie*, %struct.trie** %3, align 8
  %61 = getelementptr inbounds %struct.trie, %struct.trie* %60, i32 0, i32 4
  %62 = load %struct.trie*, %struct.trie** %61, align 8
  %63 = load i8*, i8** %4, align 8
  call void @insertW(%struct.trie* %62, i8* %63)
  br label %64

64:                                               ; preds = %59, %54, %43, %37, %29, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @insertChar(%struct.SString* %0, i8 signext %1) #0 {
  %3 = alloca %struct.SString*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.SString* %0, %struct.SString** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.SString*, %struct.SString** %3, align 8
  %8 = icmp eq %struct.SString* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  call void @abort() #6
  unreachable

10:                                               ; preds = %2
  %11 = load %struct.SString*, %struct.SString** %3, align 8
  %12 = getelementptr inbounds %struct.SString, %struct.SString* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = call noalias i8* @calloc(i64 1, i64 2) #5
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  call void @abort() #6
  unreachable

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.SString*, %struct.SString** %3, align 8
  %23 = getelementptr inbounds %struct.SString, %struct.SString* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.SString*, %struct.SString** %3, align 8
  %25 = getelementptr inbounds %struct.SString, %struct.SString* %24, i32 0, i32 1
  store i32 1, i32* %25, align 8
  %26 = load %struct.SString*, %struct.SString** %3, align 8
  %27 = getelementptr inbounds %struct.SString, %struct.SString* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  br label %67

29:                                               ; preds = %10
  %30 = load %struct.SString*, %struct.SString** %3, align 8
  %31 = getelementptr inbounds %struct.SString, %struct.SString* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.SString*, %struct.SString** %3, align 8
  %34 = getelementptr inbounds %struct.SString, %struct.SString* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = load %struct.SString*, %struct.SString** %3, align 8
  %39 = getelementptr inbounds %struct.SString, %struct.SString* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 1
  %44 = add i64 %43, 1
  %45 = call noalias i8* @calloc(i64 1, i64 %44) #5
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  call void @abort() #6
  unreachable

49:                                               ; preds = %37
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.SString*, %struct.SString** %3, align 8
  %52 = getelementptr inbounds %struct.SString, %struct.SString* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @strcpy(i8* %50, i8* %53) #5
  store i8* %54, i8** %6, align 8
  %55 = load %struct.SString*, %struct.SString** %3, align 8
  %56 = getelementptr inbounds %struct.SString, %struct.SString* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  call void @free(i8* %57) #5
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.SString*, %struct.SString** %3, align 8
  %60 = getelementptr inbounds %struct.SString, %struct.SString* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.SString*, %struct.SString** %3, align 8
  %62 = getelementptr inbounds %struct.SString, %struct.SString* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 2
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %29
  br label %67

67:                                               ; preds = %66, %28
  %68 = load i8, i8* %4, align 1
  %69 = load %struct.SString*, %struct.SString** %3, align 8
  %70 = getelementptr inbounds %struct.SString, %struct.SString* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.SString*, %struct.SString** %3, align 8
  %73 = getelementptr inbounds %struct.SString, %struct.SString* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8, i8* %71, i64 %76
  store i8 %68, i8* %77, align 1
  %78 = load %struct.SString*, %struct.SString** %3, align 8
  %79 = getelementptr inbounds %struct.SString, %struct.SString* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.SString*, %struct.SString** %3, align 8
  %82 = getelementptr inbounds %struct.SString, %struct.SString* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 0, i8* %85, align 1
  br label %86

86:                                               ; preds = %67
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @deleteChar(%struct.SString* %0) #0 {
  %2 = alloca %struct.SString*, align 8
  store %struct.SString* %0, %struct.SString** %2, align 8
  %3 = load %struct.SString*, %struct.SString** %2, align 8
  %4 = icmp eq %struct.SString* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @abort() #6
  unreachable

6:                                                ; preds = %1
  %7 = load %struct.SString*, %struct.SString** %2, align 8
  %8 = getelementptr inbounds %struct.SString, %struct.SString* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  call void @abort() #6
  unreachable

12:                                               ; preds = %6
  %13 = load %struct.SString*, %struct.SString** %2, align 8
  %14 = getelementptr inbounds %struct.SString, %struct.SString* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %12
  %18 = load %struct.SString*, %struct.SString** %2, align 8
  %19 = getelementptr inbounds %struct.SString, %struct.SString* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.SString*, %struct.SString** %2, align 8
  %22 = getelementptr inbounds %struct.SString, %struct.SString* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  store i8 0, i8* %26, align 1
  br label %28

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %17
  br label %29

29:                                               ; preds = %28
  br label %30

30:                                               ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printT(%struct.TrieRoot* %0) #0 {
  %2 = alloca %struct.TrieRoot*, align 8
  %3 = alloca %struct.SString*, align 8
  store %struct.TrieRoot* %0, %struct.TrieRoot** %2, align 8
  %4 = call %struct.SString* @ssInit()
  store %struct.SString* %4, %struct.SString** %3, align 8
  %5 = load %struct.TrieRoot*, %struct.TrieRoot** %2, align 8
  %6 = icmp eq %struct.TrieRoot* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void @abort() #6
  unreachable

8:                                                ; preds = %1
  %9 = load %struct.TrieRoot*, %struct.TrieRoot** %2, align 8
  %10 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %9, i32 0, i32 0
  %11 = load %struct.trie*, %struct.trie** %10, align 8
  %12 = load %struct.SString*, %struct.SString** %3, align 8
  call void @printTheRest(%struct.trie* %11, %struct.SString* %12)
  br label %13

13:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SString* @ssInit() #0 {
  %1 = alloca %struct.SString*, align 8
  %2 = call noalias i8* @calloc(i64 1, i64 16) #5
  %3 = bitcast i8* %2 to %struct.SString*
  store %struct.SString* %3, %struct.SString** %1, align 8
  %4 = load %struct.SString*, %struct.SString** %1, align 8
  %5 = icmp eq %struct.SString* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @abort() #6
  unreachable

7:                                                ; preds = %0
  %8 = load %struct.SString*, %struct.SString** %1, align 8
  %9 = getelementptr inbounds %struct.SString, %struct.SString* %8, i32 0, i32 0
  store i8* null, i8** %9, align 8
  %10 = load %struct.SString*, %struct.SString** %1, align 8
  %11 = getelementptr inbounds %struct.SString, %struct.SString* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  %12 = load %struct.SString*, %struct.SString** %1, align 8
  %13 = getelementptr inbounds %struct.SString, %struct.SString* %12, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = load %struct.SString*, %struct.SString** %1, align 8
  ret %struct.SString* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printTheRest(%struct.trie* %0, %struct.SString* %1) #0 {
  %3 = alloca %struct.trie*, align 8
  %4 = alloca %struct.SString*, align 8
  store %struct.trie* %0, %struct.trie** %3, align 8
  store %struct.SString* %1, %struct.SString** %4, align 8
  %5 = load %struct.trie*, %struct.trie** %3, align 8
  %6 = icmp eq %struct.trie* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %33

8:                                                ; preds = %2
  %9 = load %struct.SString*, %struct.SString** %4, align 8
  %10 = load %struct.trie*, %struct.trie** %3, align 8
  %11 = getelementptr inbounds %struct.trie, %struct.trie* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  call void @insertChar(%struct.SString* %9, i8 signext %12)
  %13 = load %struct.trie*, %struct.trie** %3, align 8
  %14 = getelementptr inbounds %struct.trie, %struct.trie* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.SString*, %struct.SString** %4, align 8
  %19 = getelementptr inbounds %struct.SString, %struct.SString* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %23

22:                                               ; preds = %8
  br label %23

23:                                               ; preds = %22, %17
  %24 = load %struct.trie*, %struct.trie** %3, align 8
  %25 = getelementptr inbounds %struct.trie, %struct.trie* %24, i32 0, i32 3
  %26 = load %struct.trie*, %struct.trie** %25, align 8
  %27 = load %struct.SString*, %struct.SString** %4, align 8
  call void @printTheRest(%struct.trie* %26, %struct.SString* %27)
  %28 = load %struct.SString*, %struct.SString** %4, align 8
  call void @deleteChar(%struct.SString* %28)
  %29 = load %struct.trie*, %struct.trie** %3, align 8
  %30 = getelementptr inbounds %struct.trie, %struct.trie* %29, i32 0, i32 4
  %31 = load %struct.trie*, %struct.trie** %30, align 8
  %32 = load %struct.SString*, %struct.SString** %4, align 8
  call void @printTheRest(%struct.trie* %31, %struct.SString* %32)
  br label %33

33:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.TrieRoot* @trInit() #0 {
  %1 = alloca %struct.TrieRoot*, align 8
  %2 = call noalias i8* @calloc(i64 1, i64 8) #5
  %3 = bitcast i8* %2 to %struct.TrieRoot*
  store %struct.TrieRoot* %3, %struct.TrieRoot** %1, align 8
  %4 = load %struct.TrieRoot*, %struct.TrieRoot** %1, align 8
  %5 = getelementptr inbounds %struct.TrieRoot, %struct.TrieRoot* %4, i32 0, i32 0
  store %struct.trie* null, %struct.trie** %5, align 8
  %6 = load %struct.TrieRoot*, %struct.TrieRoot** %1, align 8
  ret %struct.TrieRoot* %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca [1000 x i8], align 16
  %8 = alloca [500 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.TrieRoot*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = call %struct.TrieRoot* @trInit()
  store %struct.TrieRoot* %11, %struct.TrieRoot** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %6, align 8
  %25 = icmp ne %struct._IO_FILE* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  call void @perror(i8* %29)
  store i32 1, i32* %3, align 4
  br label %61

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %56, %30
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %33 = call i32 @feof(%struct._IO_FILE* %32) #5
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %57

42:                                               ; preds = %36
  %43 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %44 = call i64 @strlen(i8* %43) #7
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %44, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %9, align 4
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @fseek(%struct._IO_FILE* %50, i64 %52, i32 0)
  %54 = load %struct.TrieRoot*, %struct.TrieRoot** %10, align 8
  %55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  call void @insertWord(%struct.TrieRoot* %54, i8* %55)
  br label %56

56:                                               ; preds = %42
  br label %31

57:                                               ; preds = %41, %31
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %59 = call i32 @fclose(%struct._IO_FILE* %58)
  %60 = load %struct.TrieRoot*, %struct.TrieRoot** %10, align 8
  call void @printT(%struct.TrieRoot* %60)
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %26, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local void @perror(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
