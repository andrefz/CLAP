; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@DEPTH = dso_local global i32 3, align 4
@off = dso_local global i32 0, align 4
@C4VERT = common dso_local global i64 0, align 8
@C3VERT = common dso_local global i64 0, align 8
@C2VERT = common dso_local global i64 0, align 8
@C4HORIZ = common dso_local global i64 0, align 8
@C3HORIZ = common dso_local global i64 0, align 8
@C2HORIZ = common dso_local global i64 0, align 8
@C4UP_R = common dso_local global i64 0, align 8
@C3UP_R = common dso_local global i64 0, align 8
@C2UP_R = common dso_local global i64 0, align 8
@C4UP_L = common dso_local global i64 0, align 8
@C3UP_L = common dso_local global i64 0, align 8
@C2UP_L = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ERROR: Unknown player.\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Using pruning method 1\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Using pruning method 2\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"The player is the winner.\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"The computer is the winner.\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"It's a tie.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_patterns() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  %6 = load i64, i64* @C4VERT, align 8
  %7 = or i64 %6, 1
  store i64 %7, i64* @C4VERT, align 8
  %8 = load i64, i64* @C4VERT, align 8
  %9 = shl i64 %8, 7
  store i64 %9, i64* @C4VERT, align 8
  br label %10

10:                                               ; preds = %5
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  %14 = load i64, i64* @C4VERT, align 8
  %15 = or i64 %14, 1
  store i64 %15, i64* @C4VERT, align 8
  %16 = load i64, i64* @C4VERT, align 8
  %17 = lshr i64 %16, 7
  store i64 %17, i64* @C3VERT, align 8
  %18 = load i64, i64* @C3VERT, align 8
  %19 = lshr i64 %18, 7
  store i64 %19, i64* @C2VERT, align 8
  store i64 15, i64* @C4HORIZ, align 8
  %20 = load i64, i64* @C4HORIZ, align 8
  %21 = lshr i64 %20, 1
  store i64 %21, i64* @C3HORIZ, align 8
  %22 = load i64, i64* @C3HORIZ, align 8
  %23 = lshr i64 %22, 1
  store i64 %23, i64* @C2HORIZ, align 8
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %32, %13
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 3
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i64, i64* @C4UP_R, align 8
  %29 = or i64 %28, 1
  store i64 %29, i64* @C4UP_R, align 8
  %30 = load i64, i64* @C4UP_R, align 8
  %31 = shl i64 %30, 8
  store i64 %31, i64* @C4UP_R, align 8
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load i64, i64* @C4UP_R, align 8
  %37 = or i64 %36, 1
  store i64 %37, i64* @C4UP_R, align 8
  %38 = load i64, i64* @C4UP_R, align 8
  %39 = lshr i64 %38, 8
  store i64 %39, i64* @C3UP_R, align 8
  %40 = load i64, i64* @C3UP_R, align 8
  %41 = lshr i64 %40, 8
  store i64 %41, i64* @C2UP_R, align 8
  store i32 0, i32* %1, align 4
  br label %42

42:                                               ; preds = %50, %35
  %43 = load i32, i32* %1, align 4
  %44 = icmp slt i32 %43, 3
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i64, i64* @C4UP_L, align 8
  %47 = or i64 %46, 8
  store i64 %47, i64* @C4UP_L, align 8
  %48 = load i64, i64* @C4UP_L, align 8
  %49 = shl i64 %48, 6
  store i64 %49, i64* @C4UP_L, align 8
  br label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %42

53:                                               ; preds = %42
  %54 = load i64, i64* @C4UP_L, align 8
  %55 = or i64 %54, 8
  store i64 %55, i64* @C4UP_L, align 8
  %56 = load i64, i64* @C4UP_L, align 8
  %57 = lshr i64 %56, 6
  store i64 %57, i64* @C3UP_L, align 8
  %58 = load i64, i64* @C3UP_L, align 8
  %59 = lshr i64 %58, 6
  store i64 %59, i64* @C2UP_L, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_board([7 x i8]* %0) #0 {
  %2 = alloca [7 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 7
  br i1 %7, label %8, label %27

8:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %20, %8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = load [7 x i8]*, [7 x i8]** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 %15
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [7 x i8], [7 x i8]* %16, i64 0, i64 %18
  store i8 46, i8* %19, align 1
  br label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %9

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %5

27:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load [7 x i8]*, [7 x i8]** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x i8], [7 x i8]* %32, i64 %34
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %35, i64 0, i64 6
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %28

40:                                               ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_board([7 x i8]* %0) #0 {
  %2 = alloca [7 x i8]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %2, align 8
  %5 = call i32 @putchar(i32 32)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load [7 x i8]*, [7 x i8]** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 %12
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 6
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = call i32 @putchar(i32 10)
  store i32 5, i32* %4, align 4
  br label %23

23:                                               ; preds = %48, %21
  %24 = load i32, i32* %4, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %43, %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 7
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load [7 x i8]*, [7 x i8]** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [7 x i8], [7 x i8]* %33, i64 %35
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %36, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %29

46:                                               ; preds = %29
  %47 = call i32 @putchar(i32 10)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %4, align 4
  br label %23

51:                                               ; preds = %23
  %52 = call i32 @putchar(i32 32)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %59, %51
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %53

62:                                               ; preds = %53
  %63 = call i32 @putchar(i32 10)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @putchar(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @place_piece(i32 %0, i32 %1, [7 x i8]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [7 x i8]*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store [7 x i8]* %2, [7 x i8]** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 6
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  store i32 1, i32* %4, align 4
  br label %71

16:                                               ; preds = %10
  %17 = load [7 x i8]*, [7 x i8]** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %17, i64 %19
  %21 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 6
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sge i32 %23, 6
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %71

26:                                               ; preds = %16
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load [7 x i8]*, [7 x i8]** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [7 x i8], [7 x i8]* %30, i64 %32
  %34 = load [7 x i8]*, [7 x i8]** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %34, i64 %36
  %38 = getelementptr inbounds [7 x i8], [7 x i8]* %37, i64 0, i64 6
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %33, i64 0, i64 %41
  store i8 111, i8* %42, align 1
  br label %63

43:                                               ; preds = %26
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load [7 x i8]*, [7 x i8]** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* %47, i64 %49
  %51 = load [7 x i8]*, [7 x i8]** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %51, i64 %53
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %54, i64 0, i64 6
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* %50, i64 0, i64 %58
  store i8 120, i8* %59, align 1
  br label %62

60:                                               ; preds = %43
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %71

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %29
  %64 = load [7 x i8]*, [7 x i8]** %7, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i8], [7 x i8]* %64, i64 %66
  %68 = getelementptr inbounds [7 x i8], [7 x i8]* %67, i64 0, i64 6
  %69 = load i8, i8* %68, align 1
  %70 = add i8 %69, 1
  store i8 %70, i8* %68, align 1
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %63, %60, %25, %13
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @board_full([7 x i8]* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %19, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load [7 x i8]*, [7 x i8]** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [7 x i8], [7 x i8]* %10, i64 %12
  %14 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 6
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %6

22:                                               ; preds = %6
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 42
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @find_winner_p([7 x i8]* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store [7 x i8]* %0, [7 x i8]** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %9 = load [7 x i8]*, [7 x i8]** %3, align 8
  %10 = call i32 @board_full([7 x i8]* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %179

13:                                               ; preds = %1
  store i8 111, i8* %8, align 1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 6
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load [7 x i8]*, [7 x i8]** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %38, 7
  %40 = add i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %35, %42
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %34, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp ult i32 %54, 21
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @C4VERT, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %58, %60
  %62 = and i64 %57, %61
  %63 = load i64, i64* @C4VERT, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %179

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp ult i32 %75, 6
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %101, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @C4HORIZ, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = mul i32 %85, 7
  %87 = add i32 %84, %86
  %88 = zext i32 %87 to i64
  %89 = shl i64 %83, %88
  %90 = and i64 %82, %89
  %91 = load i64, i64* @C4HORIZ, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = mul i32 %93, 7
  %95 = add i32 %92, %94
  %96 = zext i32 %95 to i64
  %97 = shl i64 %91, %96
  %98 = icmp eq i64 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  br label %179

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %78

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %74

108:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %140, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %143

112:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %136, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @C4UP_R, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = mul i32 %120, 7
  %122 = add i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %118, %123
  %125 = and i64 %117, %124
  %126 = load i64, i64* @C4UP_R, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = mul i32 %128, 7
  %130 = add i32 %127, %129
  %131 = zext i32 %130 to i64
  %132 = shl i64 %126, %131
  %133 = icmp eq i64 %125, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  store i32 1, i32* %2, align 4
  br label %179

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %113

139:                                              ; preds = %113
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %109

143:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %175, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %174

151:                                              ; preds = %148
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @C4UP_L, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = mul i32 %155, 7
  %157 = add i32 %154, %156
  %158 = zext i32 %157 to i64
  %159 = shl i64 %153, %158
  %160 = and i64 %152, %159
  %161 = load i64, i64* @C4UP_L, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %4, align 4
  %164 = mul i32 %163, 7
  %165 = add i32 %162, %164
  %166 = zext i32 %165 to i64
  %167 = shl i64 %161, %166
  %168 = icmp eq i64 %160, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  store i32 1, i32* %2, align 4
  br label %179

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %5, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %148

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %144

178:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %169, %134, %99, %68, %12
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @find_winner_c([7 x i8]* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [7 x i8]*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  store [7 x i8]* %0, [7 x i8]** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 1, i64* %7, align 8
  %9 = load [7 x i8]*, [7 x i8]** %3, align 8
  %10 = call i32 @board_full([7 x i8]* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 2, i32* %2, align 4
  br label %179

13:                                               ; preds = %1
  store i8 120, i8* %8, align 1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %49, %13
  %15 = load i32, i32* %5, align 4
  %16 = icmp ult i32 %15, 6
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load [7 x i8]*, [7 x i8]** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = mul i32 %38, 7
  %40 = add i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %35, %42
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %34, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %14

52:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp ult i32 %54, 21
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @C4VERT, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 %58, %60
  %62 = and i64 %57, %61
  %63 = load i64, i64* @C4VERT, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = shl i64 %63, %65
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %179

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %105, %73
  %75 = load i32, i32* %4, align 4
  %76 = icmp ult i32 %75, 6
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %101, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp ult i32 %79, 4
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @C4HORIZ, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = mul i32 %85, 7
  %87 = add i32 %84, %86
  %88 = zext i32 %87 to i64
  %89 = shl i64 %83, %88
  %90 = and i64 %82, %89
  %91 = load i64, i64* @C4HORIZ, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %4, align 4
  %94 = mul i32 %93, 7
  %95 = add i32 %92, %94
  %96 = zext i32 %95 to i64
  %97 = shl i64 %91, %96
  %98 = icmp eq i64 %90, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  br label %179

100:                                              ; preds = %81
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %78

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %4, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %4, align 4
  br label %74

108:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %140, %108
  %110 = load i32, i32* %4, align 4
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %143

112:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %136, %112
  %114 = load i32, i32* %5, align 4
  %115 = icmp ult i32 %114, 4
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @C4UP_R, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %4, align 4
  %121 = mul i32 %120, 7
  %122 = add i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %118, %123
  %125 = and i64 %117, %124
  %126 = load i64, i64* @C4UP_R, align 8
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* %4, align 4
  %129 = mul i32 %128, 7
  %130 = add i32 %127, %129
  %131 = zext i32 %130 to i64
  %132 = shl i64 %126, %131
  %133 = icmp eq i64 %125, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  store i32 1, i32* %2, align 4
  br label %179

135:                                              ; preds = %116
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %113

139:                                              ; preds = %113
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %4, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %109

143:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %175, %143
  %145 = load i32, i32* %4, align 4
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %171, %147
  %149 = load i32, i32* %5, align 4
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %174

151:                                              ; preds = %148
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @C4UP_L, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %4, align 4
  %156 = mul i32 %155, 7
  %157 = add i32 %154, %156
  %158 = zext i32 %157 to i64
  %159 = shl i64 %153, %158
  %160 = and i64 %152, %159
  %161 = load i64, i64* @C4UP_L, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* %4, align 4
  %164 = mul i32 %163, 7
  %165 = add i32 %162, %164
  %166 = zext i32 %165 to i64
  %167 = shl i64 %161, %166
  %168 = icmp eq i64 %160, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  store i32 1, i32* %2, align 4
  br label %179

170:                                              ; preds = %151
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %5, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %5, align 4
  br label %148

174:                                              ; preds = %148
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %4, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %4, align 4
  br label %144

178:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %169, %134, %99, %68, %12
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @value(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %499, %2
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %502

15:                                               ; preds = %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* %3, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i32, i32* @off, align 4
  %22 = sitofp i32 %21 to float
  %23 = fdiv float %22, 1.000000e+01
  %24 = fadd float -1.000000e+00, %23
  store float %24, float* %10, align 4
  br label %32

25:                                               ; preds = %15
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i32, i32* @off, align 4
  %29 = sitofp i32 %28 to float
  %30 = fdiv float %29, 1.000000e+01
  %31 = fadd float 1.000000e+00, %30
  store float %31, float* %10, align 4
  br label %32

32:                                               ; preds = %25, %18
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 21
  br i1 %35, label %36, label %59

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @C4VERT, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %38, %40
  %42 = and i64 %37, %41
  %43 = load i64, i64* @C4VERT, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = shl i64 %43, %45
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load float, float* %10, align 4
  %50 = fmul float 1.000000e+03, %49
  %51 = load i32, i32* %11, align 4
  %52 = sitofp i32 %51 to float
  %53 = fadd float %52, %50
  %54 = fptosi float %53 to i32
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %48, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %33

59:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %93, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %96

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @C4HORIZ, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %5, align 4
  %72 = mul nsw i32 %71, 6
  %73 = add nsw i32 %70, %72
  %74 = zext i32 %73 to i64
  %75 = shl i64 %69, %74
  %76 = and i64 %68, %75
  %77 = load i64, i64* @C4HORIZ, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %79, 6
  %81 = add nsw i32 %78, %80
  %82 = zext i32 %81 to i64
  %83 = shl i64 %77, %82
  %84 = icmp eq i64 %76, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %67
  %86 = load float, float* %10, align 4
  %87 = fmul float 1.000000e+03, %86
  %88 = load i32, i32* %11, align 4
  %89 = sitofp i32 %88 to float
  %90 = fadd float %89, %87
  %91 = fptosi float %90 to i32
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %85, %67
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %64

96:                                               ; preds = %64
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %60

100:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %138, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 3
  br i1 %103, label %104, label %141

104:                                              ; preds = %101
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %134, %104
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %137

108:                                              ; preds = %105
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @C4UP_R, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 6
  %114 = add nsw i32 %111, %113
  %115 = zext i32 %114 to i64
  %116 = shl i64 %110, %115
  %117 = and i64 %109, %116
  %118 = load i64, i64* @C4UP_R, align 8
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %5, align 4
  %121 = mul nsw i32 %120, 6
  %122 = add nsw i32 %119, %121
  %123 = zext i32 %122 to i64
  %124 = shl i64 %118, %123
  %125 = icmp eq i64 %117, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %108
  %127 = load float, float* %10, align 4
  %128 = fmul float 1.000000e+03, %127
  %129 = load i32, i32* %11, align 4
  %130 = sitofp i32 %129 to float
  %131 = fadd float %130, %128
  %132 = fptosi float %131 to i32
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %126, %108
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %6, align 4
  br label %105

137:                                              ; preds = %105
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %5, align 4
  br label %101

141:                                              ; preds = %101
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %179, %141
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 3
  br i1 %144, label %145, label %182

145:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %175, %145
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 4
  br i1 %148, label %149, label %178

149:                                              ; preds = %146
  %150 = load i64, i64* %8, align 8
  %151 = load i64, i64* @C4UP_L, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %5, align 4
  %154 = mul nsw i32 %153, 6
  %155 = add nsw i32 %152, %154
  %156 = zext i32 %155 to i64
  %157 = shl i64 %151, %156
  %158 = and i64 %150, %157
  %159 = load i64, i64* @C4UP_L, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %5, align 4
  %162 = mul nsw i32 %161, 6
  %163 = add nsw i32 %160, %162
  %164 = zext i32 %163 to i64
  %165 = shl i64 %159, %164
  %166 = icmp eq i64 %158, %165
  br i1 %166, label %167, label %174

167:                                              ; preds = %149
  %168 = load float, float* %10, align 4
  %169 = fmul float 1.000000e+03, %168
  %170 = load i32, i32* %11, align 4
  %171 = sitofp i32 %170 to float
  %172 = fadd float %171, %169
  %173 = fptosi float %172 to i32
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %167, %149
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %146

178:                                              ; preds = %146
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %142

182:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %214, %182
  %184 = load i32, i32* %5, align 4
  %185 = icmp slt i32 %184, 21
  br i1 %185, label %186, label %217

186:                                              ; preds = %183
  %187 = load i64, i64* %8, align 8
  %188 = load i64, i64* @C3VERT, align 8
  %189 = load i32, i32* %5, align 4
  %190 = zext i32 %189 to i64
  %191 = shl i64 %188, %190
  %192 = and i64 %187, %191
  %193 = load i64, i64* @C3VERT, align 8
  %194 = load i32, i32* %5, align 4
  %195 = zext i32 %194 to i64
  %196 = shl i64 %193, %195
  %197 = icmp eq i64 %192, %196
  br i1 %197, label %198, label %213

198:                                              ; preds = %186
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* @C4VERT, align 8
  %201 = load i32, i32* %5, align 4
  %202 = zext i32 %201 to i64
  %203 = shl i64 %200, %202
  %204 = and i64 %199, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %213, label %206

206:                                              ; preds = %198
  %207 = load float, float* %10, align 4
  %208 = fmul float 2.000000e+01, %207
  %209 = load i32, i32* %11, align 4
  %210 = sitofp i32 %209 to float
  %211 = fadd float %210, %208
  %212 = fptosi float %211 to i32
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %206, %198, %186
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %5, align 4
  br label %183

217:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %255, %217
  %219 = load i32, i32* %5, align 4
  %220 = icmp slt i32 %219, 6
  br i1 %220, label %221, label %258

221:                                              ; preds = %218
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %251, %221
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 5
  br i1 %224, label %225, label %254

225:                                              ; preds = %222
  %226 = load i64, i64* %8, align 8
  %227 = load i64, i64* @C3HORIZ, align 8
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %5, align 4
  %230 = mul nsw i32 %229, 6
  %231 = add nsw i32 %228, %230
  %232 = zext i32 %231 to i64
  %233 = shl i64 %227, %232
  %234 = and i64 %226, %233
  %235 = load i64, i64* @C3HORIZ, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %5, align 4
  %238 = mul nsw i32 %237, 6
  %239 = add nsw i32 %236, %238
  %240 = zext i32 %239 to i64
  %241 = shl i64 %235, %240
  %242 = icmp eq i64 %234, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %225
  %244 = load float, float* %10, align 4
  %245 = fmul float 2.000000e+01, %244
  %246 = load i32, i32* %11, align 4
  %247 = sitofp i32 %246 to float
  %248 = fadd float %247, %245
  %249 = fptosi float %248 to i32
  store i32 %249, i32* %11, align 4
  br label %250

250:                                              ; preds = %243, %225
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %6, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %6, align 4
  br label %222

254:                                              ; preds = %222
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %5, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %5, align 4
  br label %218

258:                                              ; preds = %218
  store i32 0, i32* %5, align 4
  br label %259

259:                                              ; preds = %296, %258
  %260 = load i32, i32* %5, align 4
  %261 = icmp slt i32 %260, 3
  br i1 %261, label %262, label %299

262:                                              ; preds = %259
  store i32 0, i32* %6, align 4
  br label %263

263:                                              ; preds = %292, %262
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %264, 4
  br i1 %265, label %266, label %295

266:                                              ; preds = %263
  %267 = load i64, i64* %8, align 8
  %268 = load i64, i64* @C3UP_R, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* %5, align 4
  %271 = mul nsw i32 %270, 6
  %272 = add nsw i32 %269, %271
  %273 = zext i32 %272 to i64
  %274 = shl i64 %268, %273
  %275 = and i64 %267, %274
  %276 = load i64, i64* @C3UP_R, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load i32, i32* %5, align 4
  %279 = mul nsw i32 %278, 6
  %280 = add nsw i32 %277, %279
  %281 = zext i32 %280 to i64
  %282 = shl i64 %276, %281
  %283 = icmp eq i64 %275, %282
  br i1 %283, label %284, label %291

284:                                              ; preds = %266
  %285 = load float, float* %10, align 4
  %286 = fmul float 2.000000e+01, %285
  %287 = load i32, i32* %11, align 4
  %288 = sitofp i32 %287 to float
  %289 = fadd float %288, %286
  %290 = fptosi float %289 to i32
  store i32 %290, i32* %11, align 4
  br label %291

291:                                              ; preds = %284, %266
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %6, align 4
  br label %263

295:                                              ; preds = %263
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %5, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %5, align 4
  br label %259

299:                                              ; preds = %259
  store i32 0, i32* %5, align 4
  br label %300

300:                                              ; preds = %337, %299
  %301 = load i32, i32* %5, align 4
  %302 = icmp slt i32 %301, 3
  br i1 %302, label %303, label %340

303:                                              ; preds = %300
  store i32 0, i32* %6, align 4
  br label %304

304:                                              ; preds = %333, %303
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %305, 4
  br i1 %306, label %307, label %336

307:                                              ; preds = %304
  %308 = load i64, i64* %8, align 8
  %309 = load i64, i64* @C3UP_L, align 8
  %310 = load i32, i32* %6, align 4
  %311 = load i32, i32* %5, align 4
  %312 = mul nsw i32 %311, 6
  %313 = add nsw i32 %310, %312
  %314 = zext i32 %313 to i64
  %315 = shl i64 %309, %314
  %316 = and i64 %308, %315
  %317 = load i64, i64* @C3UP_L, align 8
  %318 = load i32, i32* %6, align 4
  %319 = load i32, i32* %5, align 4
  %320 = mul nsw i32 %319, 6
  %321 = add nsw i32 %318, %320
  %322 = zext i32 %321 to i64
  %323 = shl i64 %317, %322
  %324 = icmp eq i64 %316, %323
  br i1 %324, label %325, label %332

325:                                              ; preds = %307
  %326 = load float, float* %10, align 4
  %327 = fmul float 2.000000e+01, %326
  %328 = load i32, i32* %11, align 4
  %329 = sitofp i32 %328 to float
  %330 = fadd float %329, %327
  %331 = fptosi float %330 to i32
  store i32 %331, i32* %11, align 4
  br label %332

332:                                              ; preds = %325, %307
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %6, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %6, align 4
  br label %304

336:                                              ; preds = %304
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %5, align 4
  br label %300

340:                                              ; preds = %300
  store i32 0, i32* %5, align 4
  br label %341

341:                                              ; preds = %372, %340
  %342 = load i32, i32* %5, align 4
  %343 = icmp slt i32 %342, 21
  br i1 %343, label %344, label %375

344:                                              ; preds = %341
  %345 = load i64, i64* %8, align 8
  %346 = load i64, i64* @C2VERT, align 8
  %347 = load i32, i32* %5, align 4
  %348 = zext i32 %347 to i64
  %349 = shl i64 %346, %348
  %350 = and i64 %345, %349
  %351 = load i64, i64* @C2VERT, align 8
  %352 = load i32, i32* %5, align 4
  %353 = zext i32 %352 to i64
  %354 = shl i64 %351, %353
  %355 = icmp eq i64 %350, %354
  br i1 %355, label %356, label %371

356:                                              ; preds = %344
  %357 = load i64, i64* %9, align 8
  %358 = load i64, i64* @C4VERT, align 8
  %359 = load i32, i32* %5, align 4
  %360 = zext i32 %359 to i64
  %361 = shl i64 %358, %360
  %362 = and i64 %357, %361
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %371, label %364

364:                                              ; preds = %356
  %365 = load float, float* %10, align 4
  %366 = fmul float 5.000000e+00, %365
  %367 = load i32, i32* %11, align 4
  %368 = sitofp i32 %367 to float
  %369 = fadd float %368, %366
  %370 = fptosi float %369 to i32
  store i32 %370, i32* %11, align 4
  br label %371

371:                                              ; preds = %364, %356, %344
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %5, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %5, align 4
  br label %341

375:                                              ; preds = %341
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %413, %375
  %377 = load i32, i32* %5, align 4
  %378 = icmp slt i32 %377, 6
  br i1 %378, label %379, label %416

379:                                              ; preds = %376
  store i32 0, i32* %6, align 4
  br label %380

380:                                              ; preds = %409, %379
  %381 = load i32, i32* %6, align 4
  %382 = icmp slt i32 %381, 6
  br i1 %382, label %383, label %412

383:                                              ; preds = %380
  %384 = load i64, i64* %8, align 8
  %385 = load i64, i64* @C2HORIZ, align 8
  %386 = load i32, i32* %6, align 4
  %387 = load i32, i32* %5, align 4
  %388 = mul nsw i32 %387, 6
  %389 = add nsw i32 %386, %388
  %390 = zext i32 %389 to i64
  %391 = shl i64 %385, %390
  %392 = and i64 %384, %391
  %393 = load i64, i64* @C2HORIZ, align 8
  %394 = load i32, i32* %6, align 4
  %395 = load i32, i32* %5, align 4
  %396 = mul nsw i32 %395, 6
  %397 = add nsw i32 %394, %396
  %398 = zext i32 %397 to i64
  %399 = shl i64 %393, %398
  %400 = icmp eq i64 %392, %399
  br i1 %400, label %401, label %408

401:                                              ; preds = %383
  %402 = load float, float* %10, align 4
  %403 = fmul float 5.000000e+00, %402
  %404 = load i32, i32* %11, align 4
  %405 = sitofp i32 %404 to float
  %406 = fadd float %405, %403
  %407 = fptosi float %406 to i32
  store i32 %407, i32* %11, align 4
  br label %408

408:                                              ; preds = %401, %383
  br label %409

409:                                              ; preds = %408
  %410 = load i32, i32* %6, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %6, align 4
  br label %380

412:                                              ; preds = %380
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %5, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %5, align 4
  br label %376

416:                                              ; preds = %376
  store i32 0, i32* %5, align 4
  br label %417

417:                                              ; preds = %454, %416
  %418 = load i32, i32* %5, align 4
  %419 = icmp slt i32 %418, 3
  br i1 %419, label %420, label %457

420:                                              ; preds = %417
  store i32 0, i32* %6, align 4
  br label %421

421:                                              ; preds = %450, %420
  %422 = load i32, i32* %6, align 4
  %423 = icmp slt i32 %422, 4
  br i1 %423, label %424, label %453

424:                                              ; preds = %421
  %425 = load i64, i64* %8, align 8
  %426 = load i64, i64* @C2UP_R, align 8
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %5, align 4
  %429 = mul nsw i32 %428, 6
  %430 = add nsw i32 %427, %429
  %431 = zext i32 %430 to i64
  %432 = shl i64 %426, %431
  %433 = and i64 %425, %432
  %434 = load i64, i64* @C2UP_R, align 8
  %435 = load i32, i32* %6, align 4
  %436 = load i32, i32* %5, align 4
  %437 = mul nsw i32 %436, 6
  %438 = add nsw i32 %435, %437
  %439 = zext i32 %438 to i64
  %440 = shl i64 %434, %439
  %441 = icmp eq i64 %433, %440
  br i1 %441, label %442, label %449

442:                                              ; preds = %424
  %443 = load float, float* %10, align 4
  %444 = fmul float 5.000000e+00, %443
  %445 = load i32, i32* %11, align 4
  %446 = sitofp i32 %445 to float
  %447 = fadd float %446, %444
  %448 = fptosi float %447 to i32
  store i32 %448, i32* %11, align 4
  br label %449

449:                                              ; preds = %442, %424
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %6, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %6, align 4
  br label %421

453:                                              ; preds = %421
  br label %454

454:                                              ; preds = %453
  %455 = load i32, i32* %5, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %5, align 4
  br label %417

457:                                              ; preds = %417
  store i32 0, i32* %5, align 4
  br label %458

458:                                              ; preds = %495, %457
  %459 = load i32, i32* %5, align 4
  %460 = icmp slt i32 %459, 3
  br i1 %460, label %461, label %498

461:                                              ; preds = %458
  store i32 0, i32* %6, align 4
  br label %462

462:                                              ; preds = %491, %461
  %463 = load i32, i32* %6, align 4
  %464 = icmp slt i32 %463, 4
  br i1 %464, label %465, label %494

465:                                              ; preds = %462
  %466 = load i64, i64* %8, align 8
  %467 = load i64, i64* @C2UP_L, align 8
  %468 = load i32, i32* %6, align 4
  %469 = load i32, i32* %5, align 4
  %470 = mul nsw i32 %469, 6
  %471 = add nsw i32 %468, %470
  %472 = zext i32 %471 to i64
  %473 = shl i64 %467, %472
  %474 = and i64 %466, %473
  %475 = load i64, i64* @C2UP_L, align 8
  %476 = load i32, i32* %6, align 4
  %477 = load i32, i32* %5, align 4
  %478 = mul nsw i32 %477, 6
  %479 = add nsw i32 %476, %478
  %480 = zext i32 %479 to i64
  %481 = shl i64 %475, %480
  %482 = icmp eq i64 %474, %481
  br i1 %482, label %483, label %490

483:                                              ; preds = %465
  %484 = load float, float* %10, align 4
  %485 = fmul float 5.000000e+00, %484
  %486 = load i32, i32* %11, align 4
  %487 = sitofp i32 %486 to float
  %488 = fadd float %487, %485
  %489 = fptosi float %488 to i32
  store i32 %489, i32* %11, align 4
  br label %490

490:                                              ; preds = %483, %465
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %6, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %6, align 4
  br label %462

494:                                              ; preds = %462
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %5, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %5, align 4
  br label %458

498:                                              ; preds = %458
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %7, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %7, align 4
  br label %12

502:                                              ; preds = %12
  %503 = load i32, i32* %11, align 4
  ret i32 %503
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @think([7 x i8]* %0, i32 %1, i32 %2) #0 {
  %4 = alloca [7 x i8]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store [7 x i8]* %0, [7 x i8]** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 1, i64* %9, align 8
  store i8 111, i8* %12, align 1
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %49, %3
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 6
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load [7 x i8]*, [7 x i8]** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 %24
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %12, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %21
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 7
  %40 = add nsw i32 %37, %39
  %41 = zext i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %35, %42
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %34, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %18

48:                                               ; preds = %18
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %14

52:                                               ; preds = %14
  store i8 120, i8* %12, align 1
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %88, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 6
  br i1 %55, label %56, label %91

56:                                               ; preds = %53
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %84, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 7
  br i1 %59, label %60, label %87

60:                                               ; preds = %57
  %61 = load [7 x i8]*, [7 x i8]** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %61, i64 %63
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [7 x i8], [7 x i8]* %64, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* %12, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %60
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = mul nsw i32 %77, 7
  %79 = add nsw i32 %76, %78
  %80 = zext i32 %79 to i64
  %81 = shl i64 %75, %80
  %82 = or i64 %74, %81
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %73, %60
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %57

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %109

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @minimax_comp_ab(i32 1, i64 %98, i64 %99, i32* %13, i32 -100000, i32 100000)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @minimax_player_ab(i32 1, i64 %105, i64 %106, i32* %13, i32 -100000, i32 100000)
  br label %108

108:                                              ; preds = %104, %101
  br label %143

109:                                              ; preds = %91
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %112, label %127

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @minimax_comp_ab2(i32 1, i64 %116, i64 %117, i32* %13, i32 100000)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @minimax_player_ab2(i32 1, i64 %123, i64 %124, i32* %13, i32 -100000)
  br label %126

126:                                              ; preds = %122, %119
  br label %142

127:                                              ; preds = %109
  %128 = load i32, i32* %5, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i64, i64* %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = call i32 @minimax_comp(i32 1, i64 %131, i64 %132, i32* %13)
  br label %134

134:                                              ; preds = %130, %127
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %141

137:                                              ; preds = %134
  %138 = load i64, i64* %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = call i32 @minimax_player(i32 1, i64 %138, i64 %139, i32* %13)
  br label %141

141:                                              ; preds = %137, %134
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %108
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @bit_place_piece(i32 %144, i32 2, i64* %7, i64* %8)
  %146 = load i32, i32* %13, align 4
  ret i32 %146
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_comp_ab(i32 %0, i64 %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DEPTH, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @value(i64 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  br label %66

27:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %62

37:                                               ; preds = %35
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %18, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @bit_place_piece(i32 %39, i32 2, i64* %9, i64* %18)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %59

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @minimax_player_ab(i32 %45, i64 %46, i64 %47, i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %28

62:                                               ; preds = %35
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_player_ab(i32 %0, i64 %1, i64 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @DEPTH, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @value(i64 %24, i64 %25)
  store i32 %26, i32* %7, align 4
  br label %66

27:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %59, %27
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 7
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %32, %33
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  br i1 %36, label %37, label %62

37:                                               ; preds = %35
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* %18, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @bit_place_piece(i32 %39, i32 1, i64* %18, i64* %10)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %59

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call i32 @minimax_comp_ab(i32 %45, i64 %46, i64 %47, i32* %48, i32 %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %43
  %56 = load i32, i32* %17, align 4
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %16, align 4
  br label %58

58:                                               ; preds = %55, %43
  br label %59

59:                                               ; preds = %58, %42
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %28

62:                                               ; preds = %35
  %63 = load i32, i32* %16, align 4
  %64 = load i32*, i32** %11, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %15, align 4
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_comp_ab2(i32 %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 -100000, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DEPTH, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @value(i64 %21, i64 %22)
  store i32 %23, i32* %6, align 4
  br label %62

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bit_place_piece(i32 %30, i32 2, i64* %8, i64* %16)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %55

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @minimax_player_ab2(i32 %36, i64 %37, i64 %38, i32* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %52, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_player_ab2(i32 %0, i64 %1, i64 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 100000, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DEPTH, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @value(i64 %21, i64 %22)
  store i32 %23, i32* %6, align 4
  br label %62

24:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %55, %24
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 7
  br i1 %27, label %28, label %58

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %16, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @bit_place_piece(i32 %30, i32 1, i64* %16, i64* %9)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %55

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i64, i64* %16, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @minimax_comp_ab2(i32 %36, i64 %37, i64 %38, i32* %39, i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %15, align 4
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %45, %34
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %6, align 4
  br label %62

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %33
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %10, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %52, %20
  %63 = load i32, i32* %6, align 4
  ret i32 %63
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_comp(i32 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 -100000, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DEPTH, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @value(i64 %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @bit_place_piece(i32 %28, i32 2, i64* %7, i64* %14)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @minimax_player(i32 %34, i64 %35, i64 %36, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @minimax_player(i32 %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 100000, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DEPTH, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @value(i64 %19, i64 %20)
  store i32 %21, i32* %5, align 4
  br label %53

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %46, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 7
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @bit_place_piece(i32 %28, i32 1, i64* %14, i64* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %46

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @minimax_comp(i32 %34, i64 %35, i64 %36, i32* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* %13, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %32
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %23

49:                                               ; preds = %23
  %50 = load i32, i32* %12, align 4
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bit_place_piece(i32 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64*, i64** %8, align 8
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %14, %16
  store i64 %17, i64* %10, align 8
  store i64 1, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %61, %4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 6
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = load i32, i32* %12, align 4
  %25 = mul nsw i32 %24, 7
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = shl i64 %23, %28
  %30 = and i64 %22, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %60, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i64*, i64** %8, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = mul nsw i32 %39, 7
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = shl i64 %38, %43
  %45 = or i64 %37, %44
  %46 = load i64*, i64** %8, align 8
  store i64 %45, i64* %46, align 8
  br label %59

47:                                               ; preds = %32
  %48 = load i64*, i64** %9, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %12, align 4
  %52 = mul nsw i32 %51, 7
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %52, %53
  %55 = zext i32 %54 to i64
  %56 = shl i64 %50, %55
  %57 = or i64 %49, %56
  %58 = load i64*, i64** %9, align 8
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %47, %35
  store i32 0, i32* %5, align 4
  br label %65

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %18

64:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %59
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [7 x [7 x i8]], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0))
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %10, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store %struct._IO_FILE* %22, %struct._IO_FILE** %10, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %24 = icmp ne %struct._IO_FILE* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 1) #3
  unreachable

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32* @DEPTH)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32* %7)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %34 = call i32 @fclose(%struct._IO_FILE* %33)
  %35 = load i32, i32* @DEPTH, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %28
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  call void @init_patterns()
  %52 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  call void @init_board([7 x i8]* %52)
  %53 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  call void @print_board([7 x i8]* %53)
  br label %54

54:                                               ; preds = %82, %80, %51
  %55 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %56 = call i32 @find_winner_p([7 x i8]* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %60 = call i32 @find_winner_c([7 x i8]* %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i1 [ true, %54 ], [ %61, %58 ]
  %64 = xor i1 %63, true
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @think([7 x i8]* %69, i32 1, i32 %70)
  %72 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %73 = call i32 @place_piece(i32 %71, i32 1, [7 x i8]* %72)
  br label %82

74:                                               ; preds = %65
  %75 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32* %9)
  %76 = load i32, i32* %9, align 4
  %77 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %78 = call i32 @place_piece(i32 %76, i32 1, [7 x i8]* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %54

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %68
  %83 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @think([7 x i8]* %83, i32 2, i32 %84)
  %86 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %87 = call i32 @place_piece(i32 %85, i32 2, [7 x i8]* %86)
  %88 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  call void @print_board([7 x i8]* %88)
  br label %54

89:                                               ; preds = %62
  %90 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %91 = call i32 @find_winner_p([7 x i8]* %90)
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %95 = call i32 @find_winner_c([7 x i8]* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %93, %89
  %100 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %101 = call i32 @find_winner_c([7 x i8]* %100)
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %105 = call i32 @find_winner_p([7 x i8]* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %103, %99
  %110 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %111 = call i32 @find_winner_p([7 x i8]* %110)
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %115 = call i32 @find_winner_c([7 x i8]* %114)
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = getelementptr inbounds [7 x [7 x i8]], [7 x [7 x i8]]* %6, i64 0, i64 0
  %119 = call i32 @find_winner_p([7 x i8]* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117, %109
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %117, %113
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
