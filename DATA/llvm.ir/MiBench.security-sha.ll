; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.SHA_INFO = type { [5 x i32], i32, i32, [16 x i32] }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error opening %s for reading\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%08x %08x %08x %08x %08x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.SHA_INFO, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %12)
  call void @sha_print(%struct.SHA_INFO* %7)
  br label %35

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %33, %13
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i32 1
  store i8** %20, i8*** %5, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct._IO_FILE* @fopen(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %6, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  br label %33

29:                                               ; preds = %18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @sha_stream(%struct.SHA_INFO* %7, %struct._IO_FILE* %30)
  call void @sha_print(%struct.SHA_INFO* %7)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %32 = call i32 @fclose(%struct._IO_FILE* %31)
  br label %33

33:                                               ; preds = %29, %25
  br label %14

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %34, %10
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_init(%struct.SHA_INFO* %0) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  store i32 1732584193, i32* %5, align 4
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 0
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 -271733879, i32* %8, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 0
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 2
  store i32 -1732584194, i32* %11, align 4
  %12 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %13 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %12, i32 0, i32 0
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  store i32 271733878, i32* %14, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 4
  store i32 -1009589776, i32* %17, align 4
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %21 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %20, i32 0, i32 2
  store i32 0, i32* %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_update(%struct.SHA_INFO* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.SHA_INFO*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = shl i32 %10, 3
  %12 = add i32 %9, %11
  %13 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %14 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %19 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 3
  %25 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %26 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = lshr i32 %29, 29
  %31 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %32 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %38, %22
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 64
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %40 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %39, i32 0, i32 3
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  %42 = bitcast i32* %41 to i8*
  %43 = load i8*, i8** %5, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 1 %43, i64 64, i1 false)
  %44 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %45 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %44, i32 0, i32 3
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %45, i64 0, i64 0
  call void @byte_reverse(i32* %46, i32 64)
  %47 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  call void @sha_transform(%struct.SHA_INFO* %47)
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 64
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 64
  store i32 %51, i32* %6, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.SHA_INFO*, %struct.SHA_INFO** %4, align 8
  %54 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %53, i32 0, i32 3
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 0
  %56 = bitcast i32* %55 to i8*
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 1 %57, i64 %59, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define internal void @byte_reverse(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [4 x i8], align 1
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = udiv i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to i8*
  store i8* %13, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %53, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i8*, i8** %7, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = load i8, i8* %24, align 1
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  store i8 %29, i8* %30, align 1
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 3
  %33 = load i8, i8* %32, align 1
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 3
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 %36, i8* %38, align 1
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8 %40, i8* %42, align 1
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 1
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8 %44, i8* %46, align 1
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i64 0, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 3
  store i8 %48, i8* %50, align 1
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %14

56:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @sha_transform(%struct.SHA_INFO* %0) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [80 x i32], align 16
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %22
  store i32 %20, i32* %23, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %11

27:                                               ; preds = %11
  store i32 16, i32* %3, align 4
  br label %28

28:                                               ; preds = %58, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 80
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 %32, 3
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %36, %41
  %43 = load i32, i32* %3, align 4
  %44 = sub nsw i32 %43, 14
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %42, %47
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, 16
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %48, %53
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %28

61:                                               ; preds = %28
  %62 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %63 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %62, i32 0, i32 0
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %63, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %5, align 4
  %66 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %67 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %66, i32 0, i32 0
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %67, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %6, align 4
  %70 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %71 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %70, i32 0, i32 0
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %71, i64 0, i64 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  %74 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %75 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %74, i32 0, i32 0
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %75, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  %78 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %79 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %78, i32 0, i32 0
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %79, i64 0, i64 4
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %119, %61
  %83 = load i32, i32* %3, align 4
  %84 = icmp slt i32 %83, 20
  br i1 %84, label %85, label %122

85:                                               ; preds = %82
  %86 = load i32, i32* %5, align 4
  %87 = shl i32 %86, 5
  %88 = load i32, i32* %5, align 4
  %89 = lshr i32 %88, 27
  %90 = or i32 %87, %89
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* %6, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %93, %97
  %99 = add i32 %90, %98
  %100 = load i32, i32* %9, align 4
  %101 = add i32 %99, %100
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = add i32 %101, %105
  %107 = zext i32 %106 to i64
  %108 = add nsw i64 %107, 1518500249
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %7, align 4
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %6, align 4
  %113 = shl i32 %112, 30
  %114 = load i32, i32* %6, align 4
  %115 = lshr i32 %114, 2
  %116 = or i32 %113, %115
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %85
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %82

122:                                              ; preds = %82
  store i32 20, i32* %3, align 4
  br label %123

123:                                              ; preds = %157, %122
  %124 = load i32, i32* %3, align 4
  %125 = icmp slt i32 %124, 40
  br i1 %125, label %126, label %160

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 %127, 5
  %129 = load i32, i32* %5, align 4
  %130 = lshr i32 %129, 27
  %131 = or i32 %128, %130
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = xor i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = xor i32 %134, %135
  %137 = add i32 %131, %136
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %137, %138
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add i32 %139, %143
  %145 = zext i32 %144 to i64
  %146 = add nsw i64 %145, 1859775393
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %8, align 4
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 %150, 30
  %152 = load i32, i32* %6, align 4
  %153 = lshr i32 %152, 2
  %154 = or i32 %151, %153
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %126
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %123

160:                                              ; preds = %123
  store i32 40, i32* %3, align 4
  br label %161

161:                                              ; preds = %201, %160
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 60
  br i1 %163, label %164, label %204

164:                                              ; preds = %161
  %165 = load i32, i32* %5, align 4
  %166 = shl i32 %165, 5
  %167 = load i32, i32* %5, align 4
  %168 = lshr i32 %167, 27
  %169 = or i32 %166, %168
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* %7, align 4
  %172 = and i32 %170, %171
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %173, %174
  %176 = or i32 %172, %175
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* %8, align 4
  %179 = and i32 %177, %178
  %180 = or i32 %176, %179
  %181 = add i32 %169, %180
  %182 = load i32, i32* %9, align 4
  %183 = add i32 %181, %182
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = add i32 %183, %187
  %189 = zext i32 %188 to i64
  %190 = add nsw i64 %189, 2400959708
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %9, align 4
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %6, align 4
  %195 = shl i32 %194, 30
  %196 = load i32, i32* %6, align 4
  %197 = lshr i32 %196, 2
  %198 = or i32 %195, %197
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %5, align 4
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %4, align 4
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %164
  %202 = load i32, i32* %3, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %3, align 4
  br label %161

204:                                              ; preds = %161
  store i32 60, i32* %3, align 4
  br label %205

205:                                              ; preds = %239, %204
  %206 = load i32, i32* %3, align 4
  %207 = icmp slt i32 %206, 80
  br i1 %207, label %208, label %242

208:                                              ; preds = %205
  %209 = load i32, i32* %5, align 4
  %210 = shl i32 %209, 5
  %211 = load i32, i32* %5, align 4
  %212 = lshr i32 %211, 27
  %213 = or i32 %210, %212
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %7, align 4
  %216 = xor i32 %214, %215
  %217 = load i32, i32* %8, align 4
  %218 = xor i32 %216, %217
  %219 = add i32 %213, %218
  %220 = load i32, i32* %9, align 4
  %221 = add i32 %219, %220
  %222 = load i32, i32* %3, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [80 x i32], [80 x i32]* %10, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = add i32 %221, %225
  %227 = zext i32 %226 to i64
  %228 = add nsw i64 %227, 3395469782
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %8, align 4
  store i32 %230, i32* %9, align 4
  %231 = load i32, i32* %7, align 4
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %6, align 4
  %233 = shl i32 %232, 30
  %234 = load i32, i32* %6, align 4
  %235 = lshr i32 %234, 2
  %236 = or i32 %233, %235
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %5, align 4
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %4, align 4
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %208
  %240 = load i32, i32* %3, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %3, align 4
  br label %205

242:                                              ; preds = %205
  %243 = load i32, i32* %5, align 4
  %244 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %245 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %244, i32 0, i32 0
  %246 = getelementptr inbounds [5 x i32], [5 x i32]* %245, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = add i32 %247, %243
  store i32 %248, i32* %246, align 4
  %249 = load i32, i32* %6, align 4
  %250 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %251 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %250, i32 0, i32 0
  %252 = getelementptr inbounds [5 x i32], [5 x i32]* %251, i64 0, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, %249
  store i32 %254, i32* %252, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %257 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %256, i32 0, i32 0
  %258 = getelementptr inbounds [5 x i32], [5 x i32]* %257, i64 0, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = add i32 %259, %255
  store i32 %260, i32* %258, align 4
  %261 = load i32, i32* %8, align 4
  %262 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %263 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %262, i32 0, i32 0
  %264 = getelementptr inbounds [5 x i32], [5 x i32]* %263, i64 0, i64 3
  %265 = load i32, i32* %264, align 4
  %266 = add i32 %265, %261
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %9, align 4
  %268 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %269 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %268, i32 0, i32 0
  %270 = getelementptr inbounds [5 x i32], [5 x i32]* %269, i64 0, i64 4
  %271 = load i32, i32* %270, align 4
  %272 = add i32 %271, %267
  store i32 %272, i32* %270, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_final(%struct.SHA_INFO* %0) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %6 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %7 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %10 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = lshr i32 %12, 3
  %14 = and i32 %13, 63
  store i32 %14, i32* %3, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 3
  %17 = getelementptr inbounds [16 x i32], [16 x i32]* %16, i64 0, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 -128, i8* %22, align 1
  %23 = load i32, i32* %3, align 4
  %24 = icmp sgt i32 %23, 56
  br i1 %24, label %25, label %42

25:                                               ; preds = %1
  %26 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %27 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %26, i32 0, i32 3
  %28 = bitcast [16 x i32]* %27 to i8*
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i32, i32* %3, align 4
  %33 = sub nsw i32 64, %32
  %34 = sext i32 %33 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 %34, i1 false)
  %35 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %36 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %35, i32 0, i32 3
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 0
  call void @byte_reverse(i32* %37, i32 64)
  %38 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  call void @sha_transform(%struct.SHA_INFO* %38)
  %39 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %40 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %39, i32 0, i32 3
  %41 = bitcast [16 x i32]* %40 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %41, i8 0, i64 56, i1 false)
  br label %52

42:                                               ; preds = %1
  %43 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %44 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %43, i32 0, i32 3
  %45 = bitcast [16 x i32]* %44 to i8*
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 56, %49
  %51 = sext i32 %50 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %48, i8 0, i64 %51, i1 false)
  br label %52

52:                                               ; preds = %42, %25
  %53 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %54 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %53, i32 0, i32 3
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %54, i64 0, i64 0
  call void @byte_reverse(i32* %55, i32 64)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %58 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %57, i32 0, i32 3
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %58, i64 0, i64 14
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %62 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %61, i32 0, i32 3
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %62, i64 0, i64 15
  store i32 %60, i32* %63, align 4
  %64 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  call void @sha_transform(%struct.SHA_INFO* %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_stream(%struct.SHA_INFO* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.SHA_INFO*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [8192 x i8], align 16
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  call void @sha_init(%struct.SHA_INFO* %7)
  br label %8

8:                                                ; preds = %14, %2
  %9 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %11 = call i64 @fread(i8* %9, i64 1, i64 8192, %struct._IO_FILE* %10)
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  %16 = getelementptr inbounds [8192 x i8], [8192 x i8]* %6, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  call void @sha_update(%struct.SHA_INFO* %15, i8* %16, i32 %17)
  br label %8

18:                                               ; preds = %8
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %3, align 8
  call void @sha_final(%struct.SHA_INFO* %19)
  ret void
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @sha_print(%struct.SHA_INFO* %0) #0 {
  %2 = alloca %struct.SHA_INFO*, align 8
  store %struct.SHA_INFO* %0, %struct.SHA_INFO** %2, align 8
  %3 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %4 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %3, i32 0, i32 0
  %5 = getelementptr inbounds [5 x i32], [5 x i32]* %4, i64 0, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %8 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %7, i32 0, i32 0
  %9 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %12 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %11, i32 0, i32 0
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %12, i64 0, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %16 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %15, i32 0, i32 0
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %16, i64 0, i64 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.SHA_INFO*, %struct.SHA_INFO** %2, align 8
  %20 = getelementptr inbounds %struct.SHA_INFO, %struct.SHA_INFO* %19, i32 0, i32 0
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %6, i32 %10, i32 %14, i32 %18, i32 %22)
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
