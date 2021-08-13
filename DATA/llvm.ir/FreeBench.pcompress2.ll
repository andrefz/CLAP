; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@rle_pos = common dso_local global i32 0, align 4
@ari_pos = common dso_local global i32 0, align 4
@low = common dso_local global i64 0, align 8
@high = common dso_local global i64 0, align 8
@bits_to_follow = common dso_local global i64 0, align 8
@char_to_index.19 = internal global [256 x i32] zeroinitializer, align 16
@cum_freq.15 = internal global [258 x i32] zeroinitializer, align 16
@buffer.23 = internal global i32 0, align 4
@bits_to_go.25 = internal global i32 0, align 4
@freq.21 = internal global [258 x i32] zeroinitializer, align 16
@index_to_char.17 = internal global [258 x i8] zeroinitializer, align 16
@fpi = common dso_local global %struct._IO_FILE* null, align 8
@fpo = common dso_local global %struct._IO_FILE* null, align 8
@bw = common dso_local global i8* null, align 8
@rot = common dso_local global i32* null, align 8
@rle = common dso_local global i8* null, align 8
@ari = common dso_local global i8* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <FILENAME>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Could not find infile %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"ERROR: Could not open outfile (do you have write permission here?)\0A\00", align 1
@in.31 = internal global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"Something is fishy regarding the file size\0A\00", align 1
@size.34 = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"PANIC: RLE buf larger than %d bytes needed (repeat)\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1.10 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2.11 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.13 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@in_size = common dso_local global i32 0, align 4
@in_pos = common dso_local global i32 0, align 4
@deari_pos = common dso_local global i32 0, align 4
@cum_freq = common dso_local global [258 x i32] zeroinitializer, align 16
@index_to_char = common dso_local global [258 x i8] zeroinitializer, align 16
@char_to_index = common dso_local global [256 x i32] zeroinitializer, align 16
@freq = common dso_local global [258 x i32] zeroinitializer, align 16
@buffer = common dso_local global i32 0, align 4
@bits_to_go = common dso_local global i32 0, align 4
@garbage_bits = common dso_local global i32 0, align 4
@high.28 = internal global i64 0, align 8
@low.29 = internal global i64 0, align 8
@value = internal global i64 0, align 8
@.str.32 = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1
@size = common dso_local global i32 0, align 4
@orgpos = common dso_local global i32 0, align 4
@in = common dso_local global i8* null, align 8
@deari = common dso_local global i8* null, align 8
@derle = common dso_local global i8* null, align 8
@debw = common dso_local global i8* null, align 8
@.str.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.42 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@.str.2.43 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_ari(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* @rle_pos, align 4
  store i32 0, i32* @ari_pos, align 4
  call void @start_model()
  call void @start_outputing_bits()
  call void @start_encoding()
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i8*, i8** @rle, align 8
  %7 = load i32, i32* @rle_pos, align 4
  %8 = add i32 %7, 1
  store i32 %8, i32* @rle_pos, align 4
  %9 = zext i32 %7 to i64
  %10 = getelementptr inbounds i8, i8* %6, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @rle_pos, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %24

17:                                               ; preds = %5
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index.19, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  call void @encode_symbol(i32 %22, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  call void @update_model(i32 %23)
  br label %5

24:                                               ; preds = %16
  call void @encode_symbol(i32 257, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 0))
  call void @done_encoding()
  call void @done_outputing_bits()
  %25 = load i32, i32* @ari_pos, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_model() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index.19, i64 0, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char.17, i64 0, i64 %15
  store i8 %12, i8* %16, align 1
  br label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 257
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %1, align 4
  %29 = sub nsw i32 257, %28
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @freq.21, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_outputing_bits() #0 {
  store i32 0, i32* @buffer.23, align 4
  store i32 8, i32* @bits_to_go.25, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_encoding() #0 {
  store i64 0, i64* @low, align 8
  store i64 65535, i64* @high, align 8
  store i64 0, i64* @bits_to_follow, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @encode_symbol(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %6 = load i64, i64* @high, align 8
  %7 = load i64, i64* @low, align 8
  %8 = sub nsw i64 %6, %7
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* @low, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %11, %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = sdiv i64 %19, %23
  %25 = add nsw i64 %10, %24
  %26 = sub nsw i64 %25, 1
  store i64 %26, i64* @high, align 8
  %27 = load i64, i64* @low, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %28, %34
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sdiv i64 %35, %39
  %41 = add nsw i64 %27, %40
  store i64 %41, i64* @low, align 8
  br label %42

42:                                               ; preds = %70, %2
  %43 = load i64, i64* @high, align 8
  %44 = icmp slt i64 %43, 32768
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  call void @bit_plus_follow(i32 0)
  br label %70

46:                                               ; preds = %42
  %47 = load i64, i64* @low, align 8
  %48 = icmp sge i64 %47, 32768
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  call void @bit_plus_follow(i32 1)
  %50 = load i64, i64* @low, align 8
  %51 = sub nsw i64 %50, 32768
  store i64 %51, i64* @low, align 8
  %52 = load i64, i64* @high, align 8
  %53 = sub nsw i64 %52, 32768
  store i64 %53, i64* @high, align 8
  br label %69

54:                                               ; preds = %46
  %55 = load i64, i64* @low, align 8
  %56 = icmp sge i64 %55, 16384
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i64, i64* @high, align 8
  %59 = icmp slt i64 %58, 49152
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i64, i64* @bits_to_follow, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* @bits_to_follow, align 8
  %63 = load i64, i64* @low, align 8
  %64 = sub nsw i64 %63, 16384
  store i64 %64, i64* @low, align 8
  %65 = load i64, i64* @high, align 8
  %66 = sub nsw i64 %65, 16384
  store i64 %66, i64* @high, align 8
  br label %68

67:                                               ; preds = %57, %54
  br label %76

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %49
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i64, i64* @low, align 8
  %72 = mul nsw i64 2, %71
  store i64 %72, i64* @low, align 8
  %73 = load i64, i64* @high, align 8
  %74 = mul nsw i64 2, %73
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* @high, align 8
  br label %42

76:                                               ; preds = %67
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_model(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 0), align 16
  %8 = icmp eq i32 %7, 16383
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 257, i32* %3, align 4
  br label %10

10:                                               ; preds = %33, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %10

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char.17, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char.17, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char.17, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char.17, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index.19, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index.19, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %58, %54
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [258 x i32], [258 x i32]* @freq.21, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %96, %87
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq.15, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %93

104:                                              ; preds = %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @done_encoding() #0 {
  %1 = load i64, i64* @bits_to_follow, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @bits_to_follow, align 8
  %3 = load i64, i64* @low, align 8
  %4 = icmp slt i64 %3, 16384
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  call void @bit_plus_follow(i32 0)
  br label %7

6:                                                ; preds = %0
  call void @bit_plus_follow(i32 1)
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @done_outputing_bits() #0 {
  %1 = load i32, i32* @buffer.23, align 4
  %2 = load i32, i32* @bits_to_go.25, align 4
  %3 = ashr i32 %1, %2
  %4 = trunc i32 %3 to i8
  %5 = load i8*, i8** @ari, align 8
  %6 = load i32, i32* @ari_pos, align 4
  %7 = add i32 %6, 1
  store i32 %7, i32* @ari_pos, align 4
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds i8, i8* %5, i64 %8
  store i8 %4, i8* %9, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bit_plus_follow(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @output_bit(i32 %3)
  br label %4

4:                                                ; preds = %7, %1
  %5 = load i64, i64* @bits_to_follow, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  call void @output_bit(i32 %11)
  %12 = load i64, i64* @bits_to_follow, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* @bits_to_follow, align 8
  br label %4

14:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @output_bit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @buffer.23, align 4
  %4 = ashr i32 %3, 1
  store i32 %4, i32* @buffer.23, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @buffer.23, align 4
  %9 = or i32 %8, 128
  store i32 %9, i32* @buffer.23, align 4
  br label %10

10:                                               ; preds = %7, %1
  %11 = load i32, i32* @bits_to_go.25, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* @bits_to_go.25, align 4
  %13 = load i32, i32* @bits_to_go.25, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i32, i32* @buffer.23, align 4
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** @ari, align 8
  %19 = load i32, i32* @ari_pos, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* @ari_pos, align 4
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8 %17, i8* %22, align 1
  store i32 8, i32* @bits_to_go.25, align 4
  br label %23

23:                                               ; preds = %15, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @compress(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %16)
  call void @exit(i32 1) #6
  unreachable

18:                                               ; preds = %2
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @stat(i8* %22, %struct.stat* %7) #7
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call %struct._IO_FILE* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %28, %struct._IO_FILE** @fpi, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %30 = icmp eq %struct._IO_FILE* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  call void @exit(i32 1) #6
  unreachable

35:                                               ; preds = %18
  %36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strcpy(i8* %36, i8* %37) #7
  %39 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %40 = call i8* @strcat(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #7
  %41 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %42 = call %struct._IO_FILE* @fopen(i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %42, %struct._IO_FILE** @fpo, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %44 = icmp eq %struct._IO_FILE* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

48:                                               ; preds = %35
  %49 = bitcast i32* %8 to i8*
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %51 = call i64 @fwrite(i8* %49, i64 4, i64 1, %struct._IO_FILE* %50)
  %52 = load i32, i32* %8, align 4
  %53 = mul i32 2, %52
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 1
  %56 = call noalias i8* @malloc(i64 %55) #7
  store i8* %56, i8** @in.31, align 8
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = mul i64 %58, 1
  %60 = call noalias i8* @malloc(i64 %59) #7
  store i8* %60, i8** @bw, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = mul i64 %62, 4
  %64 = call noalias i8* @malloc(i64 %63) #7
  %65 = bitcast i8* %64 to i32*
  store i32* %65, i32** @rot, align 8
  %66 = load i32, i32* %8, align 4
  %67 = mul i32 2, %66
  %68 = zext i32 %67 to i64
  %69 = mul i64 %68, 1
  %70 = call noalias i8* @malloc(i64 %69) #7
  store i8* %70, i8** @rle, align 8
  %71 = load i32, i32* %8, align 4
  %72 = mul i32 2, %71
  %73 = zext i32 %72 to i64
  %74 = mul i64 %73, 1
  %75 = call noalias i8* @malloc(i64 %74) #7
  store i8* %75, i8** @ari, align 8
  %76 = load i8*, i8** @in.31, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %48
  %79 = load i8*, i8** @bw, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32*, i32** @rot, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i8*, i8** @rle, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i8*, i8** @ari, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %87, %84, %81, %78, %48
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

93:                                               ; preds = %87
  %94 = load i8*, i8** @in.31, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %98 = call i64 @fread(i8* %94, i64 1, i64 %96, %struct._IO_FILE* %97)
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = icmp ne i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

104:                                              ; preds = %93
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* @size.34, align 4
  call void @do_bwe()
  %106 = load i8*, i8** @in.31, align 8
  call void @free(i8* %106) #7
  %107 = load i32*, i32** @rot, align 8
  %108 = bitcast i32* %107 to i8*
  call void @free(i8* %108) #7
  %109 = call i32 @do_rle()
  store i32 %109, i32* %9, align 4
  %110 = load i8*, i8** @bw, align 8
  call void @free(i8* %110) #7
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @do_ari(i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i8*, i8** @rle, align 8
  call void @free(i8* %113) #7
  %114 = load i8*, i8** @ari, align 8
  %115 = load i32, i32* %9, align 4
  %116 = zext i32 %115 to i64
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %118 = call i64 @fwrite(i8* %114, i64 1, i64 %116, %struct._IO_FILE* %117)
  %119 = load i8*, i8** @ari, align 8
  call void @free(i8* %119) #7
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @fpi, align 8
  %121 = call i32 @fclose(%struct._IO_FILE* %120)
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %123 = call i32 @fclose(%struct._IO_FILE* %122)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @stat(i8*, %struct.stat*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #3

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @do_bwe() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @in.31, align 8
  %3 = load i32, i32* @size.34, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds i8, i8* %2, i64 %4
  %6 = load i8*, i8** @in.31, align 8
  %7 = load i32, i32* @size.34, align 4
  %8 = zext i32 %7 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 %6, i64 %8, i1 false)
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %19, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @size.34, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = load i32*, i32** @rot, align 8
  %16 = load i32, i32* %1, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32*, i32** @rot, align 8
  %24 = bitcast i32* %23 to i8*
  %25 = load i32, i32* @size.34, align 4
  %26 = zext i32 %25 to i64
  call void @qsort(i8* %24, i64 %26, i64 4, i32 (i8*, i8*)* @compare)
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %50, %22
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @size.34, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i8*, i8** @in.31, align 8
  %33 = load i32*, i32** @rot, align 8
  %34 = load i32, i32* %1, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @size.34, align 4
  %39 = add i32 %37, %38
  %40 = sub i32 %39, 1
  %41 = load i32, i32* @size.34, align 4
  %42 = urem i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %32, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** @bw, align 8
  %47 = load i32, i32* %1, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 %45, i8* %49, align 1
  br label %50

50:                                               ; preds = %31
  %51 = load i32, i32* %1, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %27

53:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @size.34, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54
  %59 = load i32*, i32** @rot, align 8
  %60 = load i32, i32* %1, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = bitcast i32* %1 to i8*
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @fpo, align 8
  %68 = call i64 @fwrite(i8* %66, i64 4, i64 1, %struct._IO_FILE* %67)
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %1, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %1, align 4
  br label %54

73:                                               ; preds = %65, %54
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @do_rle() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %157, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @size.34, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %158

10:                                               ; preds = %6
  store i32 1, i32* %2, align 4
  %11 = load i8*, i8** @bw, align 8
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %4, align 1
  br label %16

16:                                               ; preds = %42, %10
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add i32 %17, %18
  %20 = load i32, i32* @size.34, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8*, i8** @bw, align 8
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %2, align 4
  %28 = add i32 %26, %27
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %25, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %24, %32
  br label %34

34:                                               ; preds = %22, %16
  %35 = phi i1 [ false, %16 ], [ %33, %22 ]
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = load i32, i32* %2, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp uge i32 %39, 127
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %43

42:                                               ; preds = %36
  br label %16

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %125

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = load i32, i32* %2, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* @size.34, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %93, %52
  %54 = load i8*, i8** @bw, align 8
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %2, align 4
  %57 = add i32 %55, %56
  %58 = sub i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %54, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i8*, i8** @bw, align 8
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %2, align 4
  %66 = add i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %63, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %62, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %53
  %73 = load i8*, i8** @bw, align 8
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %2, align 4
  %76 = add i32 %74, %75
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %73, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** @bw, align 8
  %82 = load i32, i32* %1, align 4
  %83 = load i32, i32* %2, align 4
  %84 = add i32 %82, %83
  %85 = add i32 %84, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %80, %89
  br label %91

91:                                               ; preds = %72, %53
  %92 = phi i1 [ false, %53 ], [ %90, %72 ]
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = load i32, i32* %2, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %53

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %46
  %98 = load i32, i32* %2, align 4
  %99 = trunc i32 %98 to i8
  %100 = zext i8 %99 to i32
  %101 = and i32 %100, 127
  %102 = trunc i32 %101 to i8
  store i8 %102, i8* %5, align 1
  %103 = load i8, i8* %5, align 1
  %104 = load i8*, i8** @rle, align 8
  %105 = load i32, i32* %3, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %3, align 4
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 %103, i8* %108, align 1
  %109 = load i8*, i8** @rle, align 8
  %110 = load i32, i32* %3, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8*, i8** @bw, align 8
  %114 = load i32, i32* %1, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %2, align 4
  %118 = zext i32 %117 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %112, i8* align 1 %116, i64 %118, i1 false)
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %3, align 4
  %121 = add i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* %1, align 4
  %124 = add i32 %123, %122
  store i32 %124, i32* %1, align 4
  br label %157

125:                                              ; preds = %43
  %126 = load i32, i32* %3, align 4
  %127 = add i32 %126, 2
  %128 = load i32, i32* @size.34, align 4
  %129 = mul i32 2, %128
  %130 = icmp ugt i32 %127, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = load i32, i32* @size.34, align 4
  %134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0), i32 %133)
  call void @exit(i32 1) #6
  unreachable

135:                                              ; preds = %125
  %136 = load i32, i32* %2, align 4
  %137 = trunc i32 %136 to i8
  %138 = zext i8 %137 to i32
  %139 = or i32 %138, 128
  %140 = trunc i32 %139 to i8
  store i8 %140, i8* %5, align 1
  %141 = load i8, i8* %5, align 1
  %142 = load i8*, i8** @rle, align 8
  %143 = load i32, i32* %3, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 %141, i8* %145, align 1
  %146 = load i8, i8* %4, align 1
  %147 = load i8*, i8** @rle, align 8
  %148 = load i32, i32* %3, align 4
  %149 = add i32 %148, 1
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %147, i64 %150
  store i8 %146, i8* %151, align 1
  %152 = load i32, i32* %3, align 4
  %153 = add i32 %152, 2
  store i32 %153, i32* %3, align 4
  %154 = load i32, i32* %2, align 4
  %155 = load i32, i32* %1, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %1, align 4
  br label %157

157:                                              ; preds = %135, %97
  br label %6

158:                                              ; preds = %6
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define internal i32 @compare(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %6, align 8
  %11 = load i8*, i8** @in.31, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  %16 = load i8*, i8** @in.31, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i32, i32* @size.34, align 4
  %22 = zext i32 %21 to i64
  %23 = call i32 @memcmp(i8* %15, i8* %20, i64 %22) #8
  ret i32 %23
}

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [1000 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.10, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3.12, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  call void @compress(i32 %11, i8** %12)
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  call void @compress(i32 %13, i8** %14)
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  call void @compress(i32 %15, i8** %16)
  %17 = load i32, i32* %4, align 4
  %18 = load i8**, i8*** %5, align 8
  call void @compress(i32 %17, i8** %18)
  %19 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @strcpy(i8* %19, i8* %22) #7
  %24 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %25 = call i8* @strcat(i8* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.13, i64 0, i64 0)) #7
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  call void @uncompress(i32 %29, i8** %30)
  %31 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %32 = call i32 @remove(i8* %31) #7
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @remove(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @do_deari(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* @in_size, align 4
  store i32 0, i32* @in_pos, align 4
  store i32 0, i32* @deari_pos, align 4
  call void @start_model.26()
  call void @start_inputing_bits()
  call void @start_decoding()
  br label %6

6:                                                ; preds = %11, %1
  %7 = call i32 @decode_symbol(i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0))
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 257
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %25

11:                                               ; preds = %6
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = trunc i32 %17 to i8
  %19 = load i8*, i8** @deari, align 8
  %20 = load i32, i32* @deari_pos, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* @deari_pos, align 4
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 %18, i8* %23, align 1
  %24 = load i32, i32* %4, align 4
  call void @update_model.27(i32 %24)
  br label %6

25:                                               ; preds = %10
  %26 = load i32, i32* @deari_pos, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_model.26() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %17, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 1
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = trunc i32 %11 to i8
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %15
  store i8 %12, i8* %16, align 1
  br label %17

17:                                               ; preds = %5
  %18 = load i32, i32* %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %1, align 4
  br label %2

20:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %33, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp sle i32 %22, 257
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %1, align 4
  %29 = sub nsw i32 257, %28
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %21

36:                                               ; preds = %21
  store i32 0, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @freq, i64 0, i64 0), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_inputing_bits() #0 {
  store i32 0, i32* @bits_to_go, align 4
  store i32 0, i32* @garbage_bits, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @start_decoding() #0 {
  %1 = alloca i32, align 4
  store i64 0, i64* @value, align 8
  store i32 1, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 16
  br i1 %4, label %5, label %14

5:                                                ; preds = %2
  %6 = load i64, i64* @value, align 8
  %7 = mul nsw i64 2, %6
  %8 = call i32 @input_bit()
  %9 = sext i32 %8 to i64
  %10 = add nsw i64 %7, %9
  store i64 %10, i64* @value, align 8
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  store i64 0, i64* @low.29, align 8
  store i64 65535, i64* @high.28, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @decode_symbol(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i64, i64* @high.28, align 8
  %7 = load i64, i64* @low.29, align 8
  %8 = sub nsw i64 %6, %7
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* @value, align 8
  %11 = load i64, i64* @low.29, align 8
  %12 = sub nsw i64 %10, %11
  %13 = add nsw i64 %12, 1
  %14 = load i32*, i32** %2, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %13, %17
  %19 = sub nsw i64 %18, 1
  %20 = load i64, i64* %3, align 8
  %21 = sdiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %32, %1
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load i64, i64* @low.29, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %37, %44
  %46 = load i32*, i32** %2, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sdiv i64 %45, %49
  %51 = add nsw i64 %36, %50
  %52 = sub nsw i64 %51, 1
  store i64 %52, i64* @high.28, align 8
  %53 = load i64, i64* @low.29, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul nsw i64 %54, %60
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = sdiv i64 %61, %65
  %67 = add nsw i64 %53, %66
  store i64 %67, i64* @low.29, align 8
  br label %68

68:                                               ; preds = %98, %35
  %69 = load i64, i64* @high.28, align 8
  %70 = icmp slt i64 %69, 32768
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %98

72:                                               ; preds = %68
  %73 = load i64, i64* @low.29, align 8
  %74 = icmp sge i64 %73, 32768
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* @value, align 8
  %77 = sub nsw i64 %76, 32768
  store i64 %77, i64* @value, align 8
  %78 = load i64, i64* @low.29, align 8
  %79 = sub nsw i64 %78, 32768
  store i64 %79, i64* @low.29, align 8
  %80 = load i64, i64* @high.28, align 8
  %81 = sub nsw i64 %80, 32768
  store i64 %81, i64* @high.28, align 8
  br label %97

82:                                               ; preds = %72
  %83 = load i64, i64* @low.29, align 8
  %84 = icmp sge i64 %83, 16384
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i64, i64* @high.28, align 8
  %87 = icmp slt i64 %86, 49152
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load i64, i64* @value, align 8
  %90 = sub nsw i64 %89, 16384
  store i64 %90, i64* @value, align 8
  %91 = load i64, i64* @low.29, align 8
  %92 = sub nsw i64 %91, 16384
  store i64 %92, i64* @low.29, align 8
  %93 = load i64, i64* @high.28, align 8
  %94 = sub nsw i64 %93, 16384
  store i64 %94, i64* @high.28, align 8
  br label %96

95:                                               ; preds = %85, %82
  br label %109

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %75
  br label %98

98:                                               ; preds = %97, %71
  %99 = load i64, i64* @low.29, align 8
  %100 = mul nsw i64 2, %99
  store i64 %100, i64* @low.29, align 8
  %101 = load i64, i64* @high.28, align 8
  %102 = mul nsw i64 2, %101
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* @high.28, align 8
  %104 = load i64, i64* @value, align 8
  %105 = mul nsw i64 2, %104
  %106 = call i32 @input_bit()
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  store i64 %108, i64* @value, align 8
  br label %68

109:                                              ; preds = %95
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind uwtable
define internal void @update_model.27(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds ([258 x i32], [258 x i32]* @cum_freq, i64 0, i64 0), align 16
  %8 = icmp eq i32 %7, 16383
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 257, i32* %3, align 4
  br label %10

10:                                               ; preds = %33, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %10

36:                                               ; preds = %10
  br label %37

37:                                               ; preds = %36, %1
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %51, %37
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i32, i32* %5, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [258 x i8], [258 x i8]* @index_to_char, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [256 x i32], [256 x i32]* @char_to_index, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %58, %54
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [258 x i32], [258 x i32]* @freq, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %96, %87
  %94 = load i32, i32* %3, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = sub nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [258 x i32], [258 x i32]* @cum_freq, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %93

104:                                              ; preds = %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @input_bit() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @bits_to_go, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %26

4:                                                ; preds = %0
  %5 = load i32, i32* @in_pos, align 4
  %6 = load i32, i32* @in_size, align 4
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load i8*, i8** @in, align 8
  %10 = load i32, i32* @in_pos, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* @in_pos, align 4
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* @buffer, align 4
  br label %25

16:                                               ; preds = %4
  %17 = load i32, i32* @garbage_bits, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @garbage_bits, align 4
  %19 = load i32, i32* @garbage_bits, align 4
  %20 = icmp sgt i32 %19, 14
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %8
  store i32 8, i32* @bits_to_go, align 4
  br label %26

26:                                               ; preds = %25, %0
  %27 = load i32, i32* @buffer, align 4
  %28 = and i32 %27, 1
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* @buffer, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* @buffer, align 4
  %31 = load i32, i32* @bits_to_go, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* @bits_to_go, align 4
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @uncompress(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 1
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.42, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

17:                                               ; preds = %2
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = call i64 @fread(i8* bitcast (i32* @size to i8*), i64 4, i64 1, %struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = call i64 @fread(i8* bitcast (i32* @orgpos to i8*), i64 4, i64 1, %struct._IO_FILE* %20)
  %22 = load i32, i32* @size, align 4
  %23 = mul i32 2, %22
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 1
  %26 = call noalias i8* @malloc(i64 %25) #7
  store i8* %26, i8** @in, align 8
  %27 = load i32, i32* @size, align 4
  %28 = mul i32 2, %27
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 1
  %31 = call noalias i8* @malloc(i64 %30) #7
  store i8* %31, i8** @deari, align 8
  %32 = load i32, i32* @size, align 4
  %33 = mul i32 2, %32
  %34 = zext i32 %33 to i64
  %35 = mul i64 %34, 1
  %36 = call noalias i8* @malloc(i64 %35) #7
  store i8* %36, i8** @derle, align 8
  %37 = load i32, i32* @size, align 4
  %38 = mul i32 2, %37
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 1
  %41 = call noalias i8* @malloc(i64 %40) #7
  store i8* %41, i8** @debw, align 8
  %42 = load i8*, i8** @in, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %17
  %45 = load i8*, i8** @deari, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i8*, i8** @derle, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i8*, i8** @debw, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50, %47, %44, %17
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2.43, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

56:                                               ; preds = %50
  %57 = load i8*, i8** @in, align 8
  %58 = load i32, i32* @size, align 4
  %59 = mul i32 2, %58
  %60 = zext i32 %59 to i64
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %62 = call i64 @fread(i8* %57, i64 1, i64 %60, %struct._IO_FILE* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %6, align 4
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* %64)
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @do_deari(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i8*, i8** @in, align 8
  call void @free(i8* %68) #7
  %69 = load i32, i32* %7, align 4
  call void @do_derle(i32 %69)
  %70 = load i8*, i8** @deari, align 8
  call void @free(i8* %70) #7
  call void @do_debwe()
  %71 = load i8*, i8** @derle, align 8
  call void @free(i8* %71) #7
  %72 = load i8*, i8** @debw, align 8
  %73 = load i32, i32* @size, align 4
  %74 = zext i32 %73 to i64
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %76 = call i64 @fwrite(i8* %72, i64 1, i64 %74, %struct._IO_FILE* %75)
  %77 = load i8*, i8** @debw, align 8
  call void @free(i8* %77) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_derle(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %81, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %6
  %11 = load i8*, i8** @deari, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = and i32 %16, 128
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %48

19:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %42, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i8*, i8** @deari, align 8
  %23 = load i32, i32* %3, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 127
  %29 = icmp ult i32 %21, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %20
  %31 = load i8*, i8** @deari, align 8
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** @derle, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %5, align 4
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  store i8 %36, i8* %41, align 1
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %20

45:                                               ; preds = %20
  %46 = load i32, i32* %3, align 4
  %47 = add i32 %46, 2
  store i32 %47, i32* %3, align 4
  br label %81

48:                                               ; preds = %10
  %49 = load i8*, i8** @derle, align 8
  %50 = load i32, i32* %5, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8*, i8** @deari, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8*, i8** @deari, align 8
  %59 = load i32, i32* %3, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %57, i64 %63, i1 false)
  %64 = load i8*, i8** @deari, align 8
  %65 = load i32, i32* %3, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %5, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i8*, i8** @deari, align 8
  %73 = load i32, i32* %3, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 1
  %79 = load i32, i32* %3, align 4
  %80 = add i32 %79, %78
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %48, %45
  br label %6

82:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_debwe() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i8*, i8** @derle, align 8
  store i8* %9, i8** %1, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @size, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 4
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %2, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %22, %0
  %16 = load i32, i32* %5, align 4
  %17 = icmp ult i32 %16, 256
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %20
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %15

25:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @size, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i8*, i8** %1, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %45, 256
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %59
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %44

64:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %94, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @size, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i8*, i8** %1, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [256 x i32], [256 x i32]* %4, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add i32 %79, %83
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [256 x i32], [256 x i32]* %3, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %6, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %65

97:                                               ; preds = %65
  %98 = load i8*, i8** %1, align 8
  %99 = load i32, i32* @orgpos, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** @debw, align 8
  %104 = load i32, i32* @size, align 4
  %105 = sub i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %103, i64 %106
  store i8 %102, i8* %107, align 1
  store i32 1, i32* %5, align 4
  br label %108

108:                                              ; preds = %134, %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @size, align 4
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %108
  %113 = load i8*, i8** %1, align 8
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* @orgpos, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** @debw, align 8
  %123 = load i32, i32* @size, align 4
  %124 = load i32, i32* %5, align 4
  %125 = sub i32 %123, %124
  %126 = sub i32 %125, 1
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %122, i64 %127
  store i8 %121, i8* %128, align 1
  %129 = load i32*, i32** %2, align 8
  %130 = load i32, i32* @orgpos, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* @orgpos, align 4
  br label %134

134:                                              ; preds = %112
  %135 = load i32, i32* %5, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %108

137:                                              ; preds = %108
  %138 = load i32*, i32** %2, align 8
  %139 = bitcast i32* %138 to i8*
  call void @free(i8* %139) #7
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
