; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.linked_list_int = type { i32, i8* }
%struct.linked_list_lli = type { %struct.linked_list_int*, i8* }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Usage: five11 [infile]\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linked_list_int* @cons1(i32 %0, %struct.linked_list_int* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linked_list_int*, align 8
  %5 = alloca %struct.linked_list_int*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.linked_list_int* %1, %struct.linked_list_int** %4, align 8
  %6 = call noalias i8* @malloc(i64 16) #4
  %7 = bitcast i8* %6 to %struct.linked_list_int*
  store %struct.linked_list_int* %7, %struct.linked_list_int** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.linked_list_int*, %struct.linked_list_int** %5, align 8
  %10 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load %struct.linked_list_int*, %struct.linked_list_int** %4, align 8
  %12 = bitcast %struct.linked_list_int* %11 to i8*
  %13 = load %struct.linked_list_int*, %struct.linked_list_int** %5, align 8
  %14 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.linked_list_int*, %struct.linked_list_int** %5, align 8
  ret %struct.linked_list_int* %15
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linked_list_lli* @cons2(%struct.linked_list_int* %0, %struct.linked_list_lli* %1) #0 {
  %3 = alloca %struct.linked_list_int*, align 8
  %4 = alloca %struct.linked_list_lli*, align 8
  %5 = alloca %struct.linked_list_lli*, align 8
  store %struct.linked_list_int* %0, %struct.linked_list_int** %3, align 8
  store %struct.linked_list_lli* %1, %struct.linked_list_lli** %4, align 8
  %6 = call noalias i8* @malloc(i64 16) #4
  %7 = bitcast i8* %6 to %struct.linked_list_lli*
  store %struct.linked_list_lli* %7, %struct.linked_list_lli** %5, align 8
  %8 = load %struct.linked_list_int*, %struct.linked_list_int** %3, align 8
  %9 = load %struct.linked_list_lli*, %struct.linked_list_lli** %5, align 8
  %10 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %9, i32 0, i32 0
  store %struct.linked_list_int* %8, %struct.linked_list_int** %10, align 8
  %11 = load %struct.linked_list_lli*, %struct.linked_list_lli** %4, align 8
  %12 = bitcast %struct.linked_list_lli* %11 to i8*
  %13 = load %struct.linked_list_lli*, %struct.linked_list_lli** %5, align 8
  %14 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load %struct.linked_list_lli*, %struct.linked_list_lli** %5, align 8
  ret %struct.linked_list_lli* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_list1(%struct.linked_list_int* %0) #0 {
  %2 = alloca %struct.linked_list_int*, align 8
  %3 = alloca %struct.linked_list_int*, align 8
  store %struct.linked_list_int* %0, %struct.linked_list_int** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %6 = icmp ne %struct.linked_list_int* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %9 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  %11 = bitcast i8* %10 to %struct.linked_list_int*
  store %struct.linked_list_int* %11, %struct.linked_list_int** %3, align 8
  %12 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %13 = bitcast %struct.linked_list_int* %12 to i8*
  call void @free(i8* %13) #4
  %14 = load %struct.linked_list_int*, %struct.linked_list_int** %3, align 8
  store %struct.linked_list_int* %14, %struct.linked_list_int** %2, align 8
  br label %4

15:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_list2(%struct.linked_list_lli* %0) #0 {
  %2 = alloca %struct.linked_list_lli*, align 8
  %3 = alloca %struct.linked_list_lli*, align 8
  %4 = alloca %struct.linked_list_int*, align 8
  store %struct.linked_list_lli* %0, %struct.linked_list_lli** %2, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %7 = icmp ne %struct.linked_list_lli* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %10 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.linked_list_lli*
  store %struct.linked_list_lli* %12, %struct.linked_list_lli** %3, align 8
  %13 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %14 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %13, i32 0, i32 0
  %15 = load %struct.linked_list_int*, %struct.linked_list_int** %14, align 8
  store %struct.linked_list_int* %15, %struct.linked_list_int** %4, align 8
  %16 = load %struct.linked_list_int*, %struct.linked_list_int** %4, align 8
  call void @free_list1(%struct.linked_list_int* %16)
  %17 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %18 = bitcast %struct.linked_list_lli* %17 to i8*
  call void @free(i8* %18) #4
  %19 = load %struct.linked_list_lli*, %struct.linked_list_lli** %3, align 8
  store %struct.linked_list_lli* %19, %struct.linked_list_lli** %2, align 8
  br label %5

20:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_x_bits(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 3
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 7
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 8, %16
  store i32 %17, i32* %10, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 255
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = shl i32 1, %26
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %25, %28
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %34, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, 255
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 8
  store i32 %49, i32* %10, align 4
  br label %30

50:                                               ; preds = %30
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %52, %53
  %55 = ashr i32 %51, %54
  ret i32 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_11_bits(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = ashr i32 %14, 3
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 7
  %18 = sub nsw i32 8, %17
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 255
  store i32 %25, i32* %11, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %32, 255
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 11, %35
  %37 = shl i32 %34, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp sge i32 %38, 3
  br i1 %39, label %40, label %48

40:                                               ; preds = %2
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, 3
  %45 = ashr i32 %42, %44
  %46 = or i32 %41, %45
  %47 = and i32 %46, 2047
  store i32 %47, i32* %3, align 4
  br label %70

48:                                               ; preds = %2
  %49 = load i8*, i8** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, 255
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = shl i32 %59, %61
  %63 = or i32 %58, %62
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 5
  %67 = ashr i32 %64, %66
  %68 = or i32 %63, %67
  %69 = and i32 %68, 2047
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %40
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.linked_list_lli* @five11(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.linked_list_int*, align 8
  %10 = alloca %struct.linked_list_lli*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.linked_list_int* null, %struct.linked_list_int** %9, align 8
  store %struct.linked_list_lli* null, %struct.linked_list_lli** %10, align 8
  store i32 0, i32* %3, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @read_x_bits(i8* %11, i32 %12, i32 16)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 16
  store i32 %15, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %50, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @read_x_bits(i8* %21, i32 %22, i32 5)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 5
  store i32 %25, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %39, %20
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i8*, i8** %2, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @read_11_bits(i8* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 11
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.linked_list_int*, %struct.linked_list_int** %9, align 8
  %38 = call %struct.linked_list_int* @cons1(i32 %36, %struct.linked_list_int* %37)
  store %struct.linked_list_int* %38, %struct.linked_list_int** %9, align 8
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pad_size(i32 %44)
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %3, align 4
  %47 = load %struct.linked_list_int*, %struct.linked_list_int** %9, align 8
  %48 = load %struct.linked_list_lli*, %struct.linked_list_lli** %10, align 8
  %49 = call %struct.linked_list_lli* @cons2(%struct.linked_list_int* %47, %struct.linked_list_lli* %48)
  store %struct.linked_list_lli* %49, %struct.linked_list_lli** %10, align 8
  store %struct.linked_list_int* null, %struct.linked_list_int** %9, align 8
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %16

53:                                               ; preds = %16
  %54 = load %struct.linked_list_lli*, %struct.linked_list_lli** %10, align 8
  ret %struct.linked_list_lli* %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pad_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = mul nsw i32 %4, 11
  %6 = add nsw i32 5, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 7
  %9 = sub nsw i32 8, %8
  %10 = and i32 %9, 7
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_sum2(%struct.linked_list_lli* %0) #0 {
  %2 = alloca %struct.linked_list_lli*, align 8
  %3 = alloca %struct.linked_list_lli*, align 8
  %4 = alloca %struct.linked_list_int*, align 8
  %5 = alloca i32, align 4
  store %struct.linked_list_lli* %0, %struct.linked_list_lli** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %8 = icmp ne %struct.linked_list_lli* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %11 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.linked_list_lli*
  store %struct.linked_list_lli* %13, %struct.linked_list_lli** %3, align 8
  %14 = load %struct.linked_list_lli*, %struct.linked_list_lli** %2, align 8
  %15 = getelementptr inbounds %struct.linked_list_lli, %struct.linked_list_lli* %14, i32 0, i32 0
  %16 = load %struct.linked_list_int*, %struct.linked_list_int** %15, align 8
  store %struct.linked_list_int* %16, %struct.linked_list_int** %4, align 8
  %17 = load %struct.linked_list_int*, %struct.linked_list_int** %4, align 8
  %18 = call i32 @calc_sum1(%struct.linked_list_int* %17)
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.linked_list_lli*, %struct.linked_list_lli** %3, align 8
  store %struct.linked_list_lli* %21, %struct.linked_list_lli** %2, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_sum1(%struct.linked_list_int* %0) #0 {
  %2 = alloca %struct.linked_list_int*, align 8
  %3 = alloca %struct.linked_list_int*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.linked_list_int* %0, %struct.linked_list_int** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %8 = icmp ne %struct.linked_list_int* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %11 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %10, i32 0, i32 1
  %12 = load i8*, i8** %11, align 8
  %13 = bitcast i8* %12 to %struct.linked_list_int*
  store %struct.linked_list_int* %13, %struct.linked_list_int** %3, align 8
  %14 = load %struct.linked_list_int*, %struct.linked_list_int** %2, align 8
  %15 = getelementptr inbounds %struct.linked_list_int, %struct.linked_list_int* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.linked_list_int*, %struct.linked_list_int** %3, align 8
  store %struct.linked_list_int* %20, %struct.linked_list_int** %2, align 8
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.linked_list_lli*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call noalias i8* @malloc(i64 150000) #4
  store i8* %17, i8** %12, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %6, align 8
  %25 = icmp eq %struct._IO_FILE* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  call void @perror(i8* %29)
  call void @exit(i32 1) #5
  unreachable

30:                                               ; preds = %20
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i32 1
  store i8** %32, i8*** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %36, %struct._IO_FILE** %6, align 8
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 2) #5
  unreachable

42:                                               ; preds = %37
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = call i64 @read_data(%struct._IO_FILE* %43, i8* %44)
  store i64 %45, i64* %8, align 8
  %46 = call i32 @gettimeofday(%struct.timeval* %15, %struct.timezone* null) #4
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %56, %42
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 10000
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i8*, i8** %12, align 8
  %52 = call %struct.linked_list_lli* @five11(i8* %51)
  store %struct.linked_list_lli* %52, %struct.linked_list_lli** %11, align 8
  %53 = load %struct.linked_list_lli*, %struct.linked_list_lli** %11, align 8
  %54 = call i32 @calc_sum2(%struct.linked_list_lli* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.linked_list_lli*, %struct.linked_list_lli** %11, align 8
  call void @free_list2(%struct.linked_list_lli* %55)
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %47

59:                                               ; preds = %47
  %60 = call i32 @gettimeofday(%struct.timeval* %16, %struct.timezone* null) #4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  call void @exit(i32 0) #5
  unreachable
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i64 @read_data(%struct._IO_FILE* %0, i8* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = call i64 @fread(i8* %5, i64 1, i64 150000, %struct._IO_FILE* %6)
  ret i64 %7
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
