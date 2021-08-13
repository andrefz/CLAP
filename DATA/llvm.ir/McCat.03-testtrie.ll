; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.trie_s = type { [26 x %struct.trie_s*], i32 }
%struct.charsequence = type { i8*, i64, i64 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [14 x i8] c"OUT OF MEMORY\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ATTEMPTED POP ON EMPTY SEQUENCE\00", align 1
@t = common dso_local global %struct.trie_s* null, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"%5d : '%s'\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1.3 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2.4 = private unnamed_addr constant [26 x i8] c"unable to open file '%s'\0A\00", align 1
@trie_scan_buffer = dso_local global %struct.charsequence zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_reset(%struct.charsequence* %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %3 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %4 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %9 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  call void @free(i8* %10) #6
  br label %11

11:                                               ; preds = %7, %1
  %12 = call noalias i8* @malloc(i64 16) #6
  %13 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %14 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %16 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %11
  %23 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %24 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %23, i32 0, i32 1
  store i64 16, i64* %24, align 8
  %25 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %26 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @charsequence_push(%struct.charsequence* %0, i8 signext %1) #0 {
  %3 = alloca %struct.charsequence*, align 8
  %4 = alloca i8, align 1
  store %struct.charsequence* %0, %struct.charsequence** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %6 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  call void @charsequence_reset(%struct.charsequence* %10)
  br label %11

11:                                               ; preds = %9, %2
  %12 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %13 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %16 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %21 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = shl i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %25 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %28 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @realloc(i8* %26, i64 %29) #6
  %31 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %32 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %34 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %19
  br label %41

41:                                               ; preds = %40, %11
  %42 = load i8, i8* %4, align 1
  %43 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %44 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %47 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 %42, i8* %49, align 1
  %50 = load %struct.charsequence*, %struct.charsequence** %3, align 8
  %51 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %51, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local signext i8 @charsequence_pop(%struct.charsequence* %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %3 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %4 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %12 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %15 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds i8, i8* %13, i64 %16
  %19 = load i8, i8* %18, align 1
  ret i8 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @charsequence_val(%struct.charsequence* %0) #0 {
  %2 = alloca %struct.charsequence*, align 8
  %3 = alloca i8*, align 8
  store %struct.charsequence* %0, %struct.charsequence** %2, align 8
  %4 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %5 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 1
  %8 = call noalias i8* @calloc(i64 %7, i64 1) #6
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %17 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.charsequence*, %struct.charsequence** %2, align 8
  %20 = getelementptr inbounds %struct.charsequence, %struct.charsequence* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @strncpy(i8* %15, i8* %18, i64 %21) #6
  %23 = load i8*, i8** %3, align 8
  ret i8* %23
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %5, i8* %6)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @addfile(%struct.trie_s* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.trie_s*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.charsequence, align 8
  %8 = alloca i8*, align 8
  store %struct.trie_s* %0, %struct.trie_s** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast %struct.charsequence* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  br label %10

10:                                               ; preds = %50, %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %12 = call i32 @feof(%struct._IO_FILE* %11) #6
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = call i32 @getc(%struct._IO_FILE* %16)
  %18 = call i32 @tolower(i32 %17) #7
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %5, align 1
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %15
  %23 = load i8, i8* %5, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sge i32 %24, 97
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp sle i32 %28, 122
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i8, i8* %5, align 1
  call void @charsequence_push(%struct.charsequence* %7, i8 signext %31)
  br label %38

32:                                               ; preds = %26, %22
  %33 = call i8* @charsequence_val(%struct.charsequence* %7)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.trie_s* @trie_insert(%struct.trie_s* %34, i8* %35)
  %37 = load i8*, i8** %8, align 8
  call void @free(i8* %37) #6
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %32, %30
  br label %50

39:                                               ; preds = %15
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sge i32 %41, 97
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i8, i8* %5, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp sle i32 %45, 122
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  call void @charsequence_reset(%struct.charsequence* %7)
  %48 = load i8, i8* %5, align 1
  call void @charsequence_push(%struct.charsequence* %7, i8 signext %48)
  store i32 1, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %43, %39
  br label %50

50:                                               ; preds = %49, %38
  br label %10

51:                                               ; preds = %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

declare dso_local i32 @getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call %struct.trie_s* @trie_init()
  store %struct.trie_s* %7, %struct.trie_s** @t, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  call void @addfile(%struct.trie_s* %11, %struct._IO_FILE* %12)
  br label %39

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.3, i64 0, i64 0))
  store %struct._IO_FILE* %21, %struct._IO_FILE** %6, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %23 = icmp eq %struct._IO_FILE* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.4, i64 0, i64 0), i8* %28)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @addfile(%struct.trie_s* %31, %struct._IO_FILE* %32)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %5, align 8
  br label %14

38:                                               ; preds = %14
  br label %39

39:                                               ; preds = %38, %10
  %40 = load %struct.trie_s*, %struct.trie_s** @t, align 8
  call void @trie_scan(%struct.trie_s* %40, void (i32, i8*)* @printit)
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.trie_s* @trie_init() #0 {
  %1 = alloca %struct.trie_s*, align 8
  %2 = call noalias i8* @calloc(i64 1, i64 216) #6
  %3 = bitcast i8* %2 to %struct.trie_s*
  store %struct.trie_s* %3, %struct.trie_s** %1, align 8
  %4 = icmp eq %struct.trie_s* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

8:                                                ; preds = %0
  %9 = load %struct.trie_s*, %struct.trie_s** %1, align 8
  ret %struct.trie_s* %9
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.trie_s* @trie_insert(%struct.trie_s* %0, i8* %1) #0 {
  %3 = alloca %struct.trie_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.trie_s* %0, %struct.trie_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %6 = icmp eq %struct.trie_s* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call %struct.trie_s* @trie_init()
  store %struct.trie_s* %8, %struct.trie_s** %3, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %17 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  br label %45

20:                                               ; preds = %9
  %21 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %22 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %21, i32 0, i32 0
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @tolower(i32 %26) #7
  %28 = sub nsw i32 %27, 97
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %22, i64 0, i64 %29
  %31 = load %struct.trie_s*, %struct.trie_s** %30, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call %struct.trie_s* @trie_insert(%struct.trie_s* %31, i8* %33)
  %35 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %36 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %35, i32 0, i32 0
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 @tolower(i32 %40) #7
  %42 = sub nsw i32 %41, 97
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %36, i64 0, i64 %43
  store %struct.trie_s* %34, %struct.trie_s** %44, align 8
  br label %45

45:                                               ; preds = %20, %15
  %46 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  ret %struct.trie_s* %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @trie_lookup(%struct.trie_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trie_s*, align 8
  %5 = alloca i8*, align 8
  store %struct.trie_s* %0, %struct.trie_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.trie_s*, %struct.trie_s** %4, align 8
  %7 = icmp eq %struct.trie_s* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.trie_s*, %struct.trie_s** %4, align 8
  %17 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = call i32 @tolower(i32 %21) #7
  %23 = sub nsw i32 %22, 97
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %17, i64 0, i64 %24
  %26 = load %struct.trie_s*, %struct.trie_s** %25, align 8
  %27 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %9
  %30 = load %struct.trie_s*, %struct.trie_s** %4, align 8
  %31 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %30, i32 0, i32 0
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 @tolower(i32 %35) #7
  %37 = sub nsw i32 %36, 97
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %31, i64 0, i64 %38
  %40 = load %struct.trie_s*, %struct.trie_s** %39, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = call i32 @trie_lookup(%struct.trie_s* %40, i8* %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %29, %15, %8
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trie_scan(%struct.trie_s* %0, void (i32, i8*)* %1) #0 {
  %3 = alloca %struct.trie_s*, align 8
  %4 = alloca void (i32, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.trie_s* %0, %struct.trie_s** %3, align 8
  store void (i32, i8*)* %1, void (i32, i8*)** %4, align 8
  %7 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %8 = icmp ne %struct.trie_s* %7, null
  br i1 %8, label %9, label %51

9:                                                ; preds = %2
  %10 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %11 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = call i8* @charsequence_val(%struct.charsequence* @trie_scan_buffer)
  store i8* %15, i8** %5, align 8
  %16 = load void (i32, i8*)*, void (i32, i8*)** %4, align 8
  %17 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %18 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i8*, i8** %5, align 8
  call void %16(i32 %19, i8* %20)
  %21 = load i8*, i8** %5, align 8
  call void @free(i8* %21) #6
  br label %22

22:                                               ; preds = %14, %9
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 26
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %28 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %28, i64 0, i64 %30
  %32 = load %struct.trie_s*, %struct.trie_s** %31, align 8
  %33 = icmp ne %struct.trie_s* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 97
  %37 = trunc i32 %36 to i8
  call void @charsequence_push(%struct.charsequence* @trie_scan_buffer, i8 signext %37)
  %38 = load %struct.trie_s*, %struct.trie_s** %3, align 8
  %39 = getelementptr inbounds %struct.trie_s, %struct.trie_s* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [26 x %struct.trie_s*], [26 x %struct.trie_s*]* %39, i64 0, i64 %41
  %43 = load %struct.trie_s*, %struct.trie_s** %42, align 8
  %44 = load void (i32, i8*)*, void (i32, i8*)** %4, align 8
  call void @trie_scan(%struct.trie_s* %43, void (i32, i8*)* %44)
  %45 = call signext i8 @charsequence_pop(%struct.charsequence* @trie_scan_buffer)
  br label %46

46:                                               ; preds = %34, %26
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %23

50:                                               ; preds = %23
  br label %51

51:                                               ; preds = %50, %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
