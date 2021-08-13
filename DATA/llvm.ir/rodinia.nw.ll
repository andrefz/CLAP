; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@blosum62 = dso_local global [24 x [24 x i32]] [[24 x i32] [i32 4, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 0, i32 -3, i32 -2, i32 0, i32 -2, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -1, i32 5, i32 0, i32 -2, i32 -3, i32 1, i32 0, i32 -2, i32 0, i32 -3, i32 -2, i32 2, i32 -1, i32 -3, i32 -2, i32 -1, i32 -1, i32 -3, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 6, i32 1, i32 -3, i32 0, i32 0, i32 0, i32 1, i32 -3, i32 -3, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 0, i32 -4, i32 -2, i32 -3, i32 3, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 1, i32 6, i32 -3, i32 0, i32 2, i32 -1, i32 -1, i32 -3, i32 -4, i32 -1, i32 -3, i32 -3, i32 -1, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 9, i32 -3, i32 -4, i32 -3, i32 -3, i32 -1, i32 -1, i32 -3, i32 -1, i32 -2, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -1, i32 1, i32 0, i32 0, i32 -3, i32 5, i32 2, i32 -2, i32 0, i32 -3, i32 -2, i32 1, i32 0, i32 -3, i32 -1, i32 0, i32 -1, i32 -2, i32 -1, i32 -2, i32 0, i32 3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 2, i32 -4, i32 2, i32 5, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -2, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -2, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 6, i32 -2, i32 -4, i32 -4, i32 -2, i32 -3, i32 -3, i32 -2, i32 0, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 0, i32 1, i32 -1, i32 -3, i32 0, i32 0, i32 -2, i32 8, i32 -3, i32 -3, i32 -1, i32 -2, i32 -1, i32 -2, i32 -1, i32 -2, i32 -2, i32 2, i32 -3, i32 0, i32 0, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -3, i32 -3, i32 -3, i32 -1, i32 -3, i32 -3, i32 -4, i32 -3, i32 4, i32 2, i32 -3, i32 1, i32 0, i32 -3, i32 -2, i32 -1, i32 -3, i32 -1, i32 3, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -3, i32 -4, i32 -1, i32 -2, i32 -3, i32 -4, i32 -3, i32 2, i32 4, i32 -2, i32 2, i32 0, i32 -3, i32 -2, i32 -1, i32 -2, i32 -1, i32 1, i32 -4, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 2, i32 0, i32 -1, i32 -3, i32 1, i32 1, i32 -2, i32 -1, i32 -3, i32 -2, i32 5, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 0, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -1, i32 -2, i32 -3, i32 -1, i32 0, i32 -2, i32 -3, i32 -2, i32 1, i32 2, i32 -1, i32 5, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 1, i32 -3, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -3, i32 -3, i32 -3, i32 -2, i32 -3, i32 -3, i32 -3, i32 -1, i32 0, i32 0, i32 -3, i32 0, i32 6, i32 -4, i32 -2, i32 -2, i32 1, i32 3, i32 -1, i32 -3, i32 -3, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 -2, i32 -2, i32 -1, i32 -3, i32 -1, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 -1, i32 -2, i32 -4, i32 7, i32 -1, i32 -1, i32 -4, i32 -3, i32 -2, i32 -2, i32 -1, i32 -2, i32 -4], [24 x i32] [i32 1, i32 -1, i32 1, i32 0, i32 -1, i32 0, i32 0, i32 0, i32 -1, i32 -2, i32 -2, i32 0, i32 -1, i32 -2, i32 -1, i32 4, i32 1, i32 -3, i32 -2, i32 -2, i32 0, i32 0, i32 0, i32 -4], [24 x i32] [i32 0, i32 -1, i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 1, i32 5, i32 -2, i32 -2, i32 0, i32 -1, i32 -1, i32 0, i32 -4], [24 x i32] [i32 -3, i32 -3, i32 -4, i32 -4, i32 -2, i32 -2, i32 -3, i32 -2, i32 -2, i32 -3, i32 -2, i32 -3, i32 -1, i32 1, i32 -4, i32 -3, i32 -2, i32 11, i32 2, i32 -3, i32 -4, i32 -3, i32 -2, i32 -4], [24 x i32] [i32 -2, i32 -2, i32 -2, i32 -3, i32 -2, i32 -1, i32 -2, i32 -3, i32 2, i32 -1, i32 -1, i32 -2, i32 -1, i32 3, i32 -3, i32 -2, i32 -2, i32 2, i32 7, i32 -1, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -3, i32 -3, i32 -3, i32 -1, i32 -2, i32 -2, i32 -3, i32 -3, i32 3, i32 1, i32 -2, i32 1, i32 -1, i32 -2, i32 -2, i32 0, i32 -3, i32 -1, i32 4, i32 -3, i32 -2, i32 -1, i32 -4], [24 x i32] [i32 -2, i32 -1, i32 3, i32 4, i32 -3, i32 0, i32 1, i32 -1, i32 0, i32 -3, i32 -4, i32 0, i32 -3, i32 -3, i32 -2, i32 0, i32 -1, i32 -4, i32 -3, i32 -3, i32 4, i32 1, i32 -1, i32 -4], [24 x i32] [i32 -1, i32 0, i32 0, i32 1, i32 -3, i32 3, i32 4, i32 -2, i32 0, i32 -3, i32 -3, i32 1, i32 -1, i32 -3, i32 -1, i32 0, i32 -1, i32 -3, i32 -2, i32 -2, i32 1, i32 4, i32 -1, i32 -4], [24 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -2, i32 0, i32 0, i32 -2, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -4], [24 x i32] [i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 -4, i32 1]], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"error: can not allocate memory\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Start Needleman-Wunsch\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Processing top-left matrix\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"result.txt\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"print traceback value GPU:\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Processing bottom-right matrix\0A\00", align 1
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s <max_rows/max_cols> <penalty> \0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\09<dimension>      - x and y dimensions\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\09<penalty>        - penalty(positive integer)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @_Z8get_timev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #7
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @_Z7maximumiii(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %8, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %4, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @_Z7gettimev() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #7
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = sitofp i64 %4 to double
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fmul double %8, 0x3EB0C6F7A0B5ED8D
  %10 = fadd double %5, %9
  ret double %10
}

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i8**, i8*** %5, align 8
  call void @_Z7runTestiPPc(i32 %6, i8** %7)
  ret i32 0
}

; Function Attrs: noinline uwtable
define dso_local void @_Z7runTestiPPc(i32 %0, i8** %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct._IO_FILE*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 3
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @atoi(i8* %36) #8
  store i32 %37, i32* %5, align 4
  %38 = load i8**, i8*** %4, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @atoi(i8* %40) #8
  store i32 %41, i32* %6, align 4
  %42 = load i8**, i8*** %4, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @atoi(i8* %44) #8
  store i32 %45, i32* %7, align 4
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* %3, align 4
  %48 = load i8**, i8*** %4, align 8
  call void @_Z5usageiPPc(i32 %47, i8** %48)
  br label %49

49:                                               ; preds = %46, %33
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = call noalias i8* @malloc(i64 %58) #7
  %60 = bitcast i8* %59 to i32*
  store i32* %60, i32** %10, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = call noalias i8* @malloc(i64 %65) #7
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %8, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 4
  %73 = call noalias i8* @malloc(i64 %72) #7
  %74 = bitcast i8* %73 to i32*
  store i32* %74, i32** %9, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %49
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %49
  call void @srand(i32 7) #7
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %103, %80
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %99, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %86
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %6, align 4
  %94 = mul nsw i32 %92, %93
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %91, i64 %97
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %90
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %86

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %81

106:                                              ; preds = %81
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %108

108:                                              ; preds = %122, %106
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = call i32 @rand() #7
  %114 = srem i32 %113, 10
  %115 = add nsw i32 %114, 1
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %6, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %108

125:                                              ; preds = %108
  store i32 1, i32* %14, align 4
  br label %126

126:                                              ; preds = %138, %125
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %141

130:                                              ; preds = %126
  %131 = call i32 @rand() #7
  %132 = srem i32 %131, 10
  %133 = add nsw i32 %132, 1
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %126

141:                                              ; preds = %126
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %181, %141
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %6, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %184

146:                                              ; preds = %142
  store i32 1, i32* %16, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %180

151:                                              ; preds = %147
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %6, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %152, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [24 x [24 x i32]], [24 x [24 x i32]]* @blosum62, i64 0, i64 %159
  %161 = load i32*, i32** %8, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [24 x i32], [24 x i32]* %160, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %172, %173
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %169, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

177:                                              ; preds = %151
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %147

180:                                              ; preds = %147
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %15, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %15, align 4
  br label %142

184:                                              ; preds = %142
  store i32 1, i32* %17, align 4
  br label %185

185:                                              ; preds = %200, %184
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %5, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %185
  %190 = load i32, i32* %17, align 4
  %191 = sub nsw i32 0, %190
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 %191, %192
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* %6, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  store i32 %193, i32* %199, align 4
  br label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %185

203:                                              ; preds = %185
  store i32 1, i32* %18, align 4
  br label %204

204:                                              ; preds = %217, %203
  %205 = load i32, i32* %18, align 4
  %206 = load i32, i32* %6, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i32, i32* %18, align 4
  %210 = sub nsw i32 0, %209
  %211 = load i32, i32* %7, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i32, i32* %213, i64 %215
  store i32 %212, i32* %216, align 4
  br label %217

217:                                              ; preds = %208
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %204

220:                                              ; preds = %204
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %222 = call i64 @_Z8get_timev()
  store i64 %222, i64* %19, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = load i32*, i32** %10, align 8
  %226 = load i32, i32* %5, align 4
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %7, align 4
  call void @_Z12nw_optimizedPiS_S_iii(i32* %223, i32* %224, i32* %225, i32 %226, i32 %227, i32 %228)
  %229 = call i64 @_Z8get_timev()
  store i64 %229, i64* %20, align 8
  %230 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store %struct._IO_FILE* %230, %struct._IO_FILE** %21, align 8
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %233 = load i32, i32* %5, align 4
  %234 = sub nsw i32 %233, 2
  store i32 %234, i32* %22, align 4
  %235 = load i32, i32* %5, align 4
  %236 = sub nsw i32 %235, 2
  store i32 %236, i32* %23, align 4
  br label %237

237:                                              ; preds = %408, %402, %395, %386, %220
  %238 = load i32, i32* %22, align 4
  %239 = icmp sge i32 %238, 0
  %240 = load i32, i32* %23, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %409

242:                                              ; preds = %237
  %243 = load i32, i32* %22, align 4
  %244 = load i32, i32* %5, align 4
  %245 = sub nsw i32 %244, 2
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %264

247:                                              ; preds = %242
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %5, align 4
  %250 = sub nsw i32 %249, 2
  %251 = icmp eq i32 %248, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %247
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %254 = load i32*, i32** %8, align 8
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %6, align 4
  %257 = mul nsw i32 %255, %256
  %258 = load i32, i32* %23, align 4
  %259 = add nsw i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %254, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %253, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %262)
  br label %264

264:                                              ; preds = %252, %247, %242
  %265 = load i32, i32* %22, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i32, i32* %23, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %409

271:                                              ; preds = %267, %264
  %272 = load i32, i32* %22, align 4
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %309

274:                                              ; preds = %271
  %275 = load i32, i32* %23, align 4
  %276 = icmp sgt i32 %275, 0
  br i1 %276, label %277, label %309

277:                                              ; preds = %274
  %278 = load i32*, i32** %8, align 8
  %279 = load i32, i32* %22, align 4
  %280 = sub nsw i32 %279, 1
  %281 = load i32, i32* %6, align 4
  %282 = mul nsw i32 %280, %281
  %283 = load i32, i32* %23, align 4
  %284 = add nsw i32 %282, %283
  %285 = sub nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %278, i64 %286
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %24, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %22, align 4
  %291 = load i32, i32* %6, align 4
  %292 = mul nsw i32 %290, %291
  %293 = load i32, i32* %23, align 4
  %294 = add nsw i32 %292, %293
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %289, i64 %296
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %26, align 4
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %22, align 4
  %301 = sub nsw i32 %300, 1
  %302 = load i32, i32* %6, align 4
  %303 = mul nsw i32 %301, %302
  %304 = load i32, i32* %23, align 4
  %305 = add nsw i32 %303, %304
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %299, i64 %306
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %25, align 4
  br label %340

309:                                              ; preds = %274, %271
  %310 = load i32, i32* %22, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  store i32 -999, i32* %25, align 4
  store i32 -999, i32* %24, align 4
  %313 = load i32*, i32** %8, align 8
  %314 = load i32, i32* %22, align 4
  %315 = load i32, i32* %6, align 4
  %316 = mul nsw i32 %314, %315
  %317 = load i32, i32* %23, align 4
  %318 = add nsw i32 %316, %317
  %319 = sub nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %313, i64 %320
  %322 = load i32, i32* %321, align 4
  store i32 %322, i32* %26, align 4
  br label %339

323:                                              ; preds = %309
  %324 = load i32, i32* %23, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %337

326:                                              ; preds = %323
  store i32 -999, i32* %26, align 4
  store i32 -999, i32* %24, align 4
  %327 = load i32*, i32** %8, align 8
  %328 = load i32, i32* %22, align 4
  %329 = sub nsw i32 %328, 1
  %330 = load i32, i32* %6, align 4
  %331 = mul nsw i32 %329, %330
  %332 = load i32, i32* %23, align 4
  %333 = add nsw i32 %331, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %327, i64 %334
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %25, align 4
  br label %338

337:                                              ; preds = %323
  br label %338

338:                                              ; preds = %337, %326
  br label %339

339:                                              ; preds = %338, %312
  br label %340

340:                                              ; preds = %339, %277
  %341 = load i32, i32* %24, align 4
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* %6, align 4
  %345 = mul nsw i32 %343, %344
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %342, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %341, %350
  store i32 %351, i32* %28, align 4
  %352 = load i32, i32* %26, align 4
  %353 = load i32, i32* %7, align 4
  %354 = sub nsw i32 %352, %353
  store i32 %354, i32* %29, align 4
  %355 = load i32, i32* %25, align 4
  %356 = load i32, i32* %7, align 4
  %357 = sub nsw i32 %355, %356
  store i32 %357, i32* %30, align 4
  %358 = load i32, i32* %28, align 4
  %359 = load i32, i32* %29, align 4
  %360 = load i32, i32* %30, align 4
  %361 = call i32 @_Z7maximumiii(i32 %358, i32 %359, i32 %360)
  store i32 %361, i32* %27, align 4
  %362 = load i32, i32* %27, align 4
  %363 = load i32, i32* %28, align 4
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %340
  %366 = load i32, i32* %24, align 4
  store i32 %366, i32* %27, align 4
  br label %367

367:                                              ; preds = %365, %340
  %368 = load i32, i32* %27, align 4
  %369 = load i32, i32* %29, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %373

371:                                              ; preds = %367
  %372 = load i32, i32* %26, align 4
  store i32 %372, i32* %27, align 4
  br label %373

373:                                              ; preds = %371, %367
  %374 = load i32, i32* %27, align 4
  %375 = load i32, i32* %30, align 4
  %376 = icmp eq i32 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load i32, i32* %25, align 4
  store i32 %378, i32* %27, align 4
  br label %379

379:                                              ; preds = %377, %373
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %381 = load i32, i32* %27, align 4
  %382 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %380, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %381)
  %383 = load i32, i32* %27, align 4
  %384 = load i32, i32* %24, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %391

386:                                              ; preds = %379
  %387 = load i32, i32* %22, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %22, align 4
  %389 = load i32, i32* %23, align 4
  %390 = add nsw i32 %389, -1
  store i32 %390, i32* %23, align 4
  br label %237

391:                                              ; preds = %379
  %392 = load i32, i32* %27, align 4
  %393 = load i32, i32* %26, align 4
  %394 = icmp eq i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i32, i32* %23, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %23, align 4
  br label %237

398:                                              ; preds = %391
  %399 = load i32, i32* %27, align 4
  %400 = load i32, i32* %25, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %405

402:                                              ; preds = %398
  %403 = load i32, i32* %22, align 4
  %404 = add nsw i32 %403, -1
  store i32 %404, i32* %22, align 4
  br label %237

405:                                              ; preds = %398
  br label %406

406:                                              ; preds = %405
  br label %407

407:                                              ; preds = %406
  br label %408

408:                                              ; preds = %407
  br label %237

409:                                              ; preds = %270, %237
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %21, align 8
  %411 = call i32 @fclose(%struct._IO_FILE* %410)
  %412 = load i32*, i32** %10, align 8
  %413 = bitcast i32* %412 to i8*
  call void @free(i8* %413) #7
  %414 = load i32*, i32** %8, align 8
  %415 = bitcast i32* %414 to i8*
  call void @free(i8* %415) #7
  %416 = load i32*, i32** %9, align 8
  %417 = bitcast i32* %416 to i8*
  call void @free(i8* %417) #7
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z5usageiPPc(i32 %0, i8** %1) #3 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline uwtable
define dso_local void @_Z12nw_optimizedPiS_S_iii(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #3 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [289 x i32], align 64
  %17 = alloca [256 x i32], align 64
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [289 x i32], align 64
  %30 = alloca [256 x i32], align 64
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %39

39:                                               ; preds = %238, %6
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %11, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sdiv i32 %42, 16
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %241

45:                                               ; preds = %39
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %234, %45
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %237

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %14, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  store i32 0, i32* %18, align 4
  br label %55

55:                                               ; preds = %90, %50
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 16
  br i1 %57, label %58, label %93

58:                                               ; preds = %55
  store i32 0, i32* %19, align 4
  br label %59

59:                                               ; preds = %86, %58
  %60 = load i32, i32* %19, align 4
  %61 = icmp slt i32 %60, 16
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = mul nsw i32 %65, 16
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %66, %67
  %69 = add nsw i32 %68, 1
  %70 = mul nsw i32 %64, %69
  %71 = load i32, i32* %14, align 4
  %72 = mul nsw i32 %71, 16
  %73 = add nsw i32 %70, %72
  %74 = load i32, i32* %19, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %63, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %18, align 4
  %81 = mul nsw i32 %80, 16
  %82 = load i32, i32* %19, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %84
  store i32 %79, i32* %85, align 4
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  br label %59

89:                                               ; preds = %59
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  br label %55

93:                                               ; preds = %55
  store i32 0, i32* %20, align 4
  br label %94

94:                                               ; preds = %127, %93
  %95 = load i32, i32* %20, align 4
  %96 = icmp slt i32 %95, 17
  br i1 %96, label %97, label %130

97:                                               ; preds = %94
  store i32 0, i32* %21, align 4
  br label %98

98:                                               ; preds = %123, %97
  %99 = load i32, i32* %21, align 4
  %100 = icmp slt i32 %99, 17
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %15, align 4
  %105 = mul nsw i32 %104, 16
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %105, %106
  %108 = mul nsw i32 %103, %107
  %109 = load i32, i32* %14, align 4
  %110 = mul nsw i32 %109, 16
  %111 = add nsw i32 %108, %110
  %112 = load i32, i32* %21, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %102, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %20, align 4
  %118 = mul nsw i32 %117, 17
  %119 = load i32, i32* %21, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %101
  %124 = load i32, i32* %21, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %21, align 4
  br label %98

126:                                              ; preds = %98
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %20, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %20, align 4
  br label %94

130:                                              ; preds = %94
  store i32 1, i32* %22, align 4
  br label %131

131:                                              ; preds = %189, %130
  %132 = load i32, i32* %22, align 4
  %133 = icmp slt i32 %132, 17
  br i1 %133, label %134, label %192

134:                                              ; preds = %131
  store i32 1, i32* %23, align 4
  br label %135

135:                                              ; preds = %185, %134
  %136 = load i32, i32* %23, align 4
  %137 = icmp slt i32 %136, 17
  br i1 %137, label %138, label %188

138:                                              ; preds = %135
  %139 = load i32, i32* %22, align 4
  %140 = sub nsw i32 %139, 1
  %141 = mul nsw i32 %140, 17
  %142 = load i32, i32* %23, align 4
  %143 = add nsw i32 %141, %142
  %144 = sub nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %22, align 4
  %149 = sub nsw i32 %148, 1
  %150 = mul nsw i32 %149, 16
  %151 = load i32, i32* %23, align 4
  %152 = add nsw i32 %150, %151
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %147, %156
  %158 = load i32, i32* %22, align 4
  %159 = mul nsw i32 %158, 17
  %160 = load i32, i32* %23, align 4
  %161 = add nsw i32 %159, %160
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %12, align 4
  %167 = sub nsw i32 %165, %166
  %168 = load i32, i32* %22, align 4
  %169 = sub nsw i32 %168, 1
  %170 = mul nsw i32 %169, 17
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %12, align 4
  %177 = sub nsw i32 %175, %176
  %178 = call i32 @_Z7maximumiii(i32 %157, i32 %167, i32 %177)
  %179 = load i32, i32* %22, align 4
  %180 = mul nsw i32 %179, 17
  %181 = load i32, i32* %23, align 4
  %182 = add nsw i32 %180, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %183
  store i32 %178, i32* %184, align 4
  br label %185

185:                                              ; preds = %138
  %186 = load i32, i32* %23, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %23, align 4
  br label %135

188:                                              ; preds = %135
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %22, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %22, align 4
  br label %131

192:                                              ; preds = %131
  store i32 0, i32* %24, align 4
  br label %193

193:                                              ; preds = %230, %192
  %194 = load i32, i32* %24, align 4
  %195 = icmp slt i32 %194, 16
  br i1 %195, label %196, label %233

196:                                              ; preds = %193
  store i32 0, i32* %25, align 4
  br label %197

197:                                              ; preds = %226, %196
  %198 = load i32, i32* %25, align 4
  %199 = icmp slt i32 %198, 16
  br i1 %199, label %200, label %229

200:                                              ; preds = %197
  %201 = load i32, i32* %24, align 4
  %202 = add nsw i32 %201, 1
  %203 = mul nsw i32 %202, 17
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %203, %204
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [289 x i32], [289 x i32]* %16, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %7, align 8
  %211 = load i32, i32* %11, align 4
  %212 = load i32, i32* %15, align 4
  %213 = mul nsw i32 %212, 16
  %214 = load i32, i32* %24, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 1
  %217 = mul nsw i32 %211, %216
  %218 = load i32, i32* %14, align 4
  %219 = mul nsw i32 %218, 16
  %220 = add nsw i32 %217, %219
  %221 = load i32, i32* %25, align 4
  %222 = add nsw i32 %220, %221
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %210, i64 %224
  store i32 %209, i32* %225, align 4
  br label %226

226:                                              ; preds = %200
  %227 = load i32, i32* %25, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %25, align 4
  br label %197

229:                                              ; preds = %197
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %24, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %24, align 4
  br label %193

233:                                              ; preds = %193
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %14, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %14, align 4
  br label %46

237:                                              ; preds = %46
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %39

241:                                              ; preds = %39
  %242 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 2, i32* %26, align 4
  br label %243

243:                                              ; preds = %450, %241
  %244 = load i32, i32* %26, align 4
  %245 = load i32, i32* %11, align 4
  %246 = sub nsw i32 %245, 1
  %247 = sdiv i32 %246, 16
  %248 = icmp sle i32 %244, %247
  br i1 %248, label %249, label %453

249:                                              ; preds = %243
  %250 = load i32, i32* %26, align 4
  %251 = sub nsw i32 %250, 1
  store i32 %251, i32* %27, align 4
  br label %252

252:                                              ; preds = %446, %249
  %253 = load i32, i32* %27, align 4
  %254 = load i32, i32* %11, align 4
  %255 = sub nsw i32 %254, 1
  %256 = sdiv i32 %255, 16
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %449

258:                                              ; preds = %252
  %259 = load i32, i32* %11, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sdiv i32 %260, 16
  %262 = load i32, i32* %26, align 4
  %263 = add nsw i32 %261, %262
  %264 = sub nsw i32 %263, 2
  %265 = load i32, i32* %27, align 4
  %266 = sub nsw i32 %264, %265
  store i32 %266, i32* %28, align 4
  store i32 0, i32* %31, align 4
  br label %267

267:                                              ; preds = %302, %258
  %268 = load i32, i32* %31, align 4
  %269 = icmp slt i32 %268, 16
  br i1 %269, label %270, label %305

270:                                              ; preds = %267
  store i32 0, i32* %32, align 4
  br label %271

271:                                              ; preds = %298, %270
  %272 = load i32, i32* %32, align 4
  %273 = icmp slt i32 %272, 16
  br i1 %273, label %274, label %301

274:                                              ; preds = %271
  %275 = load i32*, i32** %9, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %28, align 4
  %278 = mul nsw i32 %277, 16
  %279 = load i32, i32* %31, align 4
  %280 = add nsw i32 %278, %279
  %281 = add nsw i32 %280, 1
  %282 = mul nsw i32 %276, %281
  %283 = load i32, i32* %27, align 4
  %284 = mul nsw i32 %283, 16
  %285 = add nsw i32 %282, %284
  %286 = load i32, i32* %32, align 4
  %287 = add nsw i32 %285, %286
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %275, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %31, align 4
  %293 = mul nsw i32 %292, 16
  %294 = load i32, i32* %32, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [256 x i32], [256 x i32]* %30, i64 0, i64 %296
  store i32 %291, i32* %297, align 4
  br label %298

298:                                              ; preds = %274
  %299 = load i32, i32* %32, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %32, align 4
  br label %271

301:                                              ; preds = %271
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %31, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %31, align 4
  br label %267

305:                                              ; preds = %267
  store i32 0, i32* %33, align 4
  br label %306

306:                                              ; preds = %339, %305
  %307 = load i32, i32* %33, align 4
  %308 = icmp slt i32 %307, 17
  br i1 %308, label %309, label %342

309:                                              ; preds = %306
  store i32 0, i32* %34, align 4
  br label %310

310:                                              ; preds = %335, %309
  %311 = load i32, i32* %34, align 4
  %312 = icmp slt i32 %311, 17
  br i1 %312, label %313, label %338

313:                                              ; preds = %310
  %314 = load i32*, i32** %7, align 8
  %315 = load i32, i32* %11, align 4
  %316 = load i32, i32* %28, align 4
  %317 = mul nsw i32 %316, 16
  %318 = load i32, i32* %33, align 4
  %319 = add nsw i32 %317, %318
  %320 = mul nsw i32 %315, %319
  %321 = load i32, i32* %27, align 4
  %322 = mul nsw i32 %321, 16
  %323 = add nsw i32 %320, %322
  %324 = load i32, i32* %34, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %314, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %33, align 4
  %330 = mul nsw i32 %329, 17
  %331 = load i32, i32* %34, align 4
  %332 = add nsw i32 %330, %331
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %333
  store i32 %328, i32* %334, align 4
  br label %335

335:                                              ; preds = %313
  %336 = load i32, i32* %34, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %34, align 4
  br label %310

338:                                              ; preds = %310
  br label %339

339:                                              ; preds = %338
  %340 = load i32, i32* %33, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %33, align 4
  br label %306

342:                                              ; preds = %306
  store i32 1, i32* %35, align 4
  br label %343

343:                                              ; preds = %401, %342
  %344 = load i32, i32* %35, align 4
  %345 = icmp slt i32 %344, 17
  br i1 %345, label %346, label %404

346:                                              ; preds = %343
  store i32 1, i32* %36, align 4
  br label %347

347:                                              ; preds = %397, %346
  %348 = load i32, i32* %36, align 4
  %349 = icmp slt i32 %348, 17
  br i1 %349, label %350, label %400

350:                                              ; preds = %347
  %351 = load i32, i32* %35, align 4
  %352 = sub nsw i32 %351, 1
  %353 = mul nsw i32 %352, 17
  %354 = load i32, i32* %36, align 4
  %355 = add nsw i32 %353, %354
  %356 = sub nsw i32 %355, 1
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %35, align 4
  %361 = sub nsw i32 %360, 1
  %362 = mul nsw i32 %361, 16
  %363 = load i32, i32* %36, align 4
  %364 = add nsw i32 %362, %363
  %365 = sub nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [256 x i32], [256 x i32]* %30, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = add nsw i32 %359, %368
  %370 = load i32, i32* %35, align 4
  %371 = mul nsw i32 %370, 17
  %372 = load i32, i32* %36, align 4
  %373 = add nsw i32 %371, %372
  %374 = sub nsw i32 %373, 1
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* %12, align 4
  %379 = sub nsw i32 %377, %378
  %380 = load i32, i32* %35, align 4
  %381 = sub nsw i32 %380, 1
  %382 = mul nsw i32 %381, 17
  %383 = load i32, i32* %36, align 4
  %384 = add nsw i32 %382, %383
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %385
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* %12, align 4
  %389 = sub nsw i32 %387, %388
  %390 = call i32 @_Z7maximumiii(i32 %369, i32 %379, i32 %389)
  %391 = load i32, i32* %35, align 4
  %392 = mul nsw i32 %391, 17
  %393 = load i32, i32* %36, align 4
  %394 = add nsw i32 %392, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %395
  store i32 %390, i32* %396, align 4
  br label %397

397:                                              ; preds = %350
  %398 = load i32, i32* %36, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %36, align 4
  br label %347

400:                                              ; preds = %347
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %35, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %35, align 4
  br label %343

404:                                              ; preds = %343
  store i32 0, i32* %37, align 4
  br label %405

405:                                              ; preds = %442, %404
  %406 = load i32, i32* %37, align 4
  %407 = icmp slt i32 %406, 16
  br i1 %407, label %408, label %445

408:                                              ; preds = %405
  store i32 0, i32* %38, align 4
  br label %409

409:                                              ; preds = %438, %408
  %410 = load i32, i32* %38, align 4
  %411 = icmp slt i32 %410, 16
  br i1 %411, label %412, label %441

412:                                              ; preds = %409
  %413 = load i32, i32* %37, align 4
  %414 = add nsw i32 %413, 1
  %415 = mul nsw i32 %414, 17
  %416 = load i32, i32* %38, align 4
  %417 = add nsw i32 %415, %416
  %418 = add nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [289 x i32], [289 x i32]* %29, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = load i32*, i32** %7, align 8
  %423 = load i32, i32* %11, align 4
  %424 = load i32, i32* %28, align 4
  %425 = mul nsw i32 %424, 16
  %426 = load i32, i32* %37, align 4
  %427 = add nsw i32 %425, %426
  %428 = add nsw i32 %427, 1
  %429 = mul nsw i32 %423, %428
  %430 = load i32, i32* %27, align 4
  %431 = mul nsw i32 %430, 16
  %432 = add nsw i32 %429, %431
  %433 = load i32, i32* %38, align 4
  %434 = add nsw i32 %432, %433
  %435 = add nsw i32 %434, 1
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32, i32* %422, i64 %436
  store i32 %421, i32* %437, align 4
  br label %438

438:                                              ; preds = %412
  %439 = load i32, i32* %38, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %38, align 4
  br label %409

441:                                              ; preds = %409
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %37, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %37, align 4
  br label %405

445:                                              ; preds = %405
  br label %446

446:                                              ; preds = %445
  %447 = load i32, i32* %27, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %27, align 4
  br label %252

449:                                              ; preds = %252
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %26, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %26, align 4
  br label %243

453:                                              ; preds = %243
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
