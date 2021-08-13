; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashentry = type { i64 }

@nplies = common dso_local global i32 0, align 4
@color = common dso_local global [2 x i64] zeroinitializer, align 16
@height = common dso_local global [7 x i8] zeroinitializer, align 1
@moves = common dso_local global [42 x i32] zeroinitializer, align 16
@ht = common dso_local global %struct.hashentry* null, align 8
@posed = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@htindex = common dso_local global i32 0, align 4
@history = common dso_local global [2 x [49 x i32]] zeroinitializer, align 16
@nodes = common dso_local global i64 0, align 8
@msecs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@millisecs.Time = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"#-<=>+\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Fhourstones 3.1 (C)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Boardsize = %dx%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Using %d transposition table entries.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0ASolving %d-ply position after \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @reset() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* @nplies, align 4
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 1), align 8
  store i64 0, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 0), align 16
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 7
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = mul nsw i32 7, %6
  %8 = trunc i32 %7 to i8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %10
  store i8 %8, i8* %11, align 1
  br label %12

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2

15:                                               ; preds = %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @positioncode() #0 {
  %1 = load i32, i32* @nplies, align 4
  %2 = and i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %3
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 0), align 16
  %7 = add i64 %5, %6
  %8 = load i64, i64* getelementptr inbounds ([2 x i64], [2 x i64]* @color, i64 0, i64 1), align 8
  %9 = add i64 %7, %8
  %10 = add i64 %9, 4432676798593
  ret i64 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printMoves() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %13, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @nplies, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 1, %10
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %2

16:                                               ; preds = %2
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @islegal(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = and i64 %3, 283691315109952
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isplayable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @nplies, align 4
  %4 = and i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = or i64 %7, %14
  %16 = call i32 @islegal(i64 %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @haswon(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = lshr i64 %6, 6
  %8 = and i64 %5, %7
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = lshr i64 %10, 12
  %12 = and i64 %9, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* %3, align 8
  %18 = lshr i64 %17, 7
  %19 = and i64 %16, %18
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = lshr i64 %21, 14
  %23 = and i64 %20, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %48

26:                                               ; preds = %15
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = lshr i64 %28, 8
  %30 = and i64 %27, %29
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = lshr i64 %32, 16
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %48

37:                                               ; preds = %26
  %38 = load i64, i64* %3, align 8
  %39 = load i64, i64* %3, align 8
  %40 = lshr i64 %39, 1
  %41 = and i64 %38, %40
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = lshr i64 %43, 2
  %45 = and i64 %42, %44
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %37, %36, %25, %14
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @islegalhaswon(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @islegal(i64 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i64, i64* %2, align 8
  %8 = call i32 @haswon(i64 %7)
  %9 = icmp ne i32 %8, 0
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @backmove() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @nplies, align 4
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* @nplies, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %4
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = add i8 %10, -1
  store i8 %11, i8* %9, align 1
  %12 = sext i8 %11 to i32
  %13 = zext i32 %12 to i64
  %14 = shl i64 1, %13
  %15 = load i32, i32* @nplies, align 4
  %16 = and i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = xor i64 %19, %14
  store i64 %20, i64* %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @makemove(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, align 1
  %8 = sext i8 %6 to i32
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = load i32, i32* @nplies, align 4
  %12 = and i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = xor i64 %15, %10
  store i64 %16, i64* %14, align 8
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @nplies, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @nplies, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [42 x i32], [42 x i32]* @moves, i64 0, i64 %20
  store i32 %17, i32* %21, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @trans_init() #0 {
  %1 = call noalias i8* @calloc(i64 8306069, i64 8) #4
  %2 = bitcast i8* %1 to %struct.hashentry*
  store %struct.hashentry* %2, %struct.hashentry** @ht, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @emptyTT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hashentry, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %28, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 8306069
  br i1 %5, label %6, label %31

6:                                                ; preds = %3
  %7 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %7, i64 %9
  %11 = bitcast %struct.hashentry* %2 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = and i64 %12, -67108864
  store i64 %13, i64* %11, align 4
  %14 = bitcast %struct.hashentry* %2 to i64*
  %15 = load i64, i64* %14, align 4
  %16 = and i64 %15, -4227858433
  store i64 %16, i64* %14, align 4
  %17 = bitcast %struct.hashentry* %2 to i64*
  %18 = load i64, i64* %17, align 4
  %19 = and i64 %18, -288230371856744449
  store i64 %19, i64* %17, align 4
  %20 = bitcast %struct.hashentry* %2 to i64*
  %21 = load i64, i64* %20, align 4
  %22 = and i64 %21, -2017612633061982209
  store i64 %22, i64* %20, align 4
  %23 = bitcast %struct.hashentry* %2 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = and i64 %24, 2305843009213693951
  store i64 %25, i64* %23, align 4
  %26 = bitcast %struct.hashentry* %10 to i8*
  %27 = bitcast %struct.hashentry* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 8, i1 false)
  br label %28

28:                                               ; preds = %6
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %3

31:                                               ; preds = %3
  store i64 0, i64* @posed, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @hash() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @positioncode()
  store i64 %4, i64* %2, align 8
  %5 = load i32, i32* @nplies, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %28

7:                                                ; preds = %0
  store i64 0, i64* %3, align 8
  %8 = load i64, i64* %2, align 8
  store i64 %8, i64* %1, align 8
  br label %9

9:                                                ; preds = %18, %7
  %10 = load i64, i64* %1, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = shl i64 %13, 7
  %15 = load i64, i64* %1, align 8
  %16 = and i64 %15, 127
  %17 = or i64 %14, %16
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load i64, i64* %1, align 8
  %20 = lshr i64 %19, 7
  store i64 %20, i64* %1, align 8
  br label %9

21:                                               ; preds = %9
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %2, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %3, align 8
  store i64 %26, i64* %2, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %0
  %29 = load i64, i64* %2, align 8
  %30 = lshr i64 %29, 23
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @lock, align 4
  %32 = load i64, i64* %2, align 8
  %33 = urem i64 %32, 8306069
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @htindex, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @transpose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.hashentry, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @hash()
  %5 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %6 = load i32, i32* @htindex, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %5, i64 %7
  %9 = bitcast %struct.hashentry* %2 to i8*
  %10 = bitcast %struct.hashentry* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 8, i1 false)
  %11 = bitcast %struct.hashentry* %2 to i64*
  %12 = load i64, i64* %11, align 4
  %13 = and i64 %12, 67108863
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @lock, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %0
  %18 = bitcast %struct.hashentry* %2 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = lshr i64 %19, 61
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %1, align 4
  br label %37

22:                                               ; preds = %0
  %23 = bitcast %struct.hashentry* %2 to i64*
  %24 = load i64, i64* %23, align 4
  %25 = lshr i64 %24, 32
  %26 = and i64 %25, 67108863
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @lock, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = bitcast %struct.hashentry* %2 to i64*
  %32 = load i64, i64* %31, align 4
  %33 = lshr i64 %32, 58
  %34 = and i64 %33, 7
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %1, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %36, %30, %17
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @transtore(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hashentry, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* @posed, align 8
  %11 = add i64 %10, 1
  store i64 %11, i64* @posed, align 8
  %12 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %12, i64 %14
  %16 = bitcast %struct.hashentry* %9 to i8*
  %17 = bitcast %struct.hashentry* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 8, i1 false)
  %18 = bitcast %struct.hashentry* %9 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = and i64 %19, 67108863
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = bitcast %struct.hashentry* %9 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = lshr i64 %27, 26
  %29 = and i64 %28, 63
  %30 = trunc i64 %29 to i32
  %31 = icmp sge i32 %25, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %24, %4
  %33 = load i32, i32* %6, align 4
  %34 = bitcast %struct.hashentry* %9 to i64*
  %35 = zext i32 %33 to i64
  %36 = load i64, i64* %34, align 4
  %37 = and i64 %35, 67108863
  %38 = and i64 %36, -67108864
  %39 = or i64 %38, %37
  store i64 %39, i64* %34, align 4
  %40 = trunc i64 %37 to i32
  %41 = load i32, i32* %7, align 4
  %42 = bitcast %struct.hashentry* %9 to i64*
  %43 = zext i32 %41 to i64
  %44 = load i64, i64* %42, align 4
  %45 = and i64 %43, 7
  %46 = shl i64 %45, 61
  %47 = and i64 %44, 2305843009213693951
  %48 = or i64 %47, %46
  store i64 %48, i64* %42, align 4
  %49 = trunc i64 %45 to i32
  %50 = load i32, i32* %8, align 4
  %51 = bitcast %struct.hashentry* %9 to i64*
  %52 = zext i32 %50 to i64
  %53 = load i64, i64* %51, align 4
  %54 = and i64 %52, 63
  %55 = shl i64 %54, 26
  %56 = and i64 %53, -4227858433
  %57 = or i64 %56, %55
  store i64 %57, i64* %51, align 4
  %58 = trunc i64 %54 to i32
  br label %78

59:                                               ; preds = %24
  %60 = load i32, i32* %6, align 4
  %61 = bitcast %struct.hashentry* %9 to i64*
  %62 = zext i32 %60 to i64
  %63 = load i64, i64* %61, align 4
  %64 = and i64 %62, 67108863
  %65 = shl i64 %64, 32
  %66 = and i64 %63, -288230371856744449
  %67 = or i64 %66, %65
  store i64 %67, i64* %61, align 4
  %68 = trunc i64 %64 to i32
  %69 = load i32, i32* %7, align 4
  %70 = bitcast %struct.hashentry* %9 to i64*
  %71 = zext i32 %69 to i64
  %72 = load i64, i64* %70, align 4
  %73 = and i64 %71, 7
  %74 = shl i64 %73, 58
  %75 = and i64 %72, -2017612633061982209
  %76 = or i64 %75, %74
  store i64 %76, i64* %70, align 4
  %77 = trunc i64 %73 to i32
  br label %78

78:                                               ; preds = %59, %32
  %79 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %79, i64 %81
  %83 = bitcast %struct.hashentry* %82 to i8*
  %84 = bitcast %struct.hashentry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 8, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @htstat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca %struct.hashentry, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %10
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %5

15:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %58, %15
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 8306069
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load %struct.hashentry*, %struct.hashentry** @ht, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hashentry, %struct.hashentry* %20, i64 %22
  %24 = bitcast %struct.hashentry* %4 to i8*
  %25 = bitcast %struct.hashentry* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 8, i1 false)
  %26 = bitcast %struct.hashentry* %4 to i64*
  %27 = load i64, i64* %26, align 4
  %28 = and i64 %27, 67108863
  %29 = trunc i64 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %19
  %32 = bitcast %struct.hashentry* %4 to i64*
  %33 = load i64, i64* %32, align 4
  %34 = lshr i64 %33, 61
  %35 = trunc i64 %34 to i32
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %31, %19
  %41 = bitcast %struct.hashentry* %4 to i64*
  %42 = load i64, i64* %41, align 4
  %43 = lshr i64 %42, 32
  %44 = and i64 %43, 67108863
  %45 = trunc i64 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %40
  %48 = bitcast %struct.hashentry* %4 to i64*
  %49 = load i64, i64* %48, align 4
  %50 = lshr i64 %49, 58
  %51 = and i64 %50, 7
  %52 = trunc i64 %51 to i32
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %47, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %16

61:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %72, %61
  %63 = load i32, i32* %2, align 4
  %64 = icmp sle i32 %63, 5
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %2, align 4
  br label %62

75:                                               ; preds = %62
  %76 = load i32, i32* %1, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %75
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = sitofp i32 %80 to double
  %82 = load i32, i32* %1, align 4
  %83 = sitofp i32 %82 to double
  %84 = fdiv double %81, %83
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = sitofp i32 %86 to double
  %88 = load i32, i32* %1, align 4
  %89 = sitofp i32 %88 to double
  %90 = fdiv double %87, %89
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = sitofp i32 %92 to double
  %94 = load i32, i32* %1, align 4
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %93, %95
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = sitofp i32 %98 to double
  %100 = load i32, i32* %1, align 4
  %101 = sitofp i32 %100 to double
  %102 = fdiv double %99, %101
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %104 = load i32, i32* %103, align 4
  %105 = sitofp i32 %104 to double
  %106 = load i32, i32* %1, align 4
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %105, %107
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), double %84, double %90, double %96, double %102, double %108)
  br label %110

110:                                              ; preds = %78, %75
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @millisecs() #0 {
  %1 = load i64, i64* @millisecs.Time, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @millisecs.Time, align 8
  ret i64 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @min(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @max(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @inithistory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %85, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %7, label %88

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %81, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %84

11:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %77, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %15, label %80

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @min(i32 3, i32 %16)
  %18 = add nsw i32 4, %17
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @min(i32 3, i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 3, %21
  %23 = call i32 @max(i32 0, i32 %22)
  %24 = sub nsw i32 %20, %23
  %25 = call i32 @max(i32 -1, i32 %24)
  %26 = add nsw i32 %18, %25
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = call i32 @min(i32 3, i32 %29)
  %31 = add nsw i32 %26, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @min(i32 3, i32 %32)
  %34 = add nsw i32 %31, %33
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %36
  %38 = load i32, i32* %2, align 4
  %39 = sub nsw i32 6, %38
  %40 = mul nsw i32 7, %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [49 x i32], [49 x i32]* %37, i64 0, i64 %43
  store i32 %34, i32* %44, align 4
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %46
  %48 = load i32, i32* %2, align 4
  %49 = mul nsw i32 7, %48
  %50 = add nsw i32 %49, 6
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %3, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [49 x i32], [49 x i32]* %47, i64 0, i64 %54
  store i32 %34, i32* %55, align 4
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %57
  %59 = load i32, i32* %2, align 4
  %60 = sub nsw i32 6, %59
  %61 = mul nsw i32 7, %60
  %62 = add nsw i32 %61, 6
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %3, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [49 x i32], [49 x i32]* %58, i64 0, i64 %66
  store i32 %34, i32* %67, align 4
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %69
  %71 = load i32, i32* %2, align 4
  %72 = mul nsw i32 7, %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [49 x i32], [49 x i32]* %70, i64 0, i64 %75
  store i32 %34, i32* %76, align 4
  br label %77

77:                                               ; preds = %15
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %12

80:                                               ; preds = %12
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %2, align 4
  br label %8

84:                                               ; preds = %8
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %1, align 4
  br label %4

88:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ab(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [7 x i32], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %25 = load i64, i64* @nodes, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* @nodes, align 8
  %27 = load i32, i32* @nplies, align 4
  %28 = icmp eq i32 %27, 41
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 3, i32* %3, align 4
  br label %353

30:                                               ; preds = %2
  %31 = load i32, i32* @nplies, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %21, align 4
  %33 = xor i32 %32, 1
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %20, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %108, %30
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 7
  br i1 %40, label %41, label %111

41:                                               ; preds = %38
  %42 = load i64, i64* %20, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = zext i32 %47 to i64
  %49 = shl i64 1, %48
  %50 = or i64 %42, %49
  store i64 %50, i64* %19, align 8
  %51 = load i64, i64* %19, align 8
  %52 = call i32 @islegal(i64 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %108

55:                                               ; preds = %41
  %56 = load i64, i64* %20, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = zext i32 %61 to i64
  %63 = shl i64 2, %62
  %64 = or i64 %56, %63
  %65 = call i32 @islegalhaswon(i64 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i64, i64* %19, align 8
  %67 = call i32 @haswon(i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %98

69:                                               ; preds = %55
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %353

73:                                               ; preds = %69
  store i32 0, i32* %16, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %77
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %96, %73
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  %82 = icmp slt i32 %81, 7
  br i1 %82, label %83, label %97

83:                                               ; preds = %79
  %84 = load i64, i64* %20, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = zext i32 %89 to i64
  %91 = shl i64 1, %90
  %92 = or i64 %84, %91
  %93 = call i32 @islegalhaswon(i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 1, i32* %3, align 4
  br label %353

96:                                               ; preds = %83
  br label %79

97:                                               ; preds = %79
  br label %111

98:                                               ; preds = %55
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %105
  store i32 %102, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %98
  br label %108

108:                                              ; preds = %107, %54
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %38

111:                                              ; preds = %97, %38
  %112 = load i32, i32* %16, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 1, i32* %3, align 4
  br label %353

115:                                              ; preds = %111
  %116 = load i32, i32* @nplies, align 4
  %117 = icmp eq i32 %116, 40
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 3, i32* %3, align 4
  br label %353

119:                                              ; preds = %115
  %120 = load i32, i32* %16, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  call void @makemove(i32 %124)
  %125 = load i32, i32* %5, align 4
  %126 = sub nsw i32 6, %125
  %127 = load i32, i32* %4, align 4
  %128 = sub nsw i32 6, %127
  %129 = call i32 @ab(i32 %126, i32 %128)
  %130 = sub nsw i32 6, %129
  store i32 %130, i32* %12, align 4
  call void @backmove()
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %3, align 4
  br label %353

132:                                              ; preds = %119
  %133 = call i32 @transpose()
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = load i32, i32* %13, align 4
  %138 = icmp eq i32 %137, 2
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  store i32 3, i32* %5, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp sle i32 3, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  store i32 %143, i32* %3, align 4
  br label %353

144:                                              ; preds = %139
  br label %157

145:                                              ; preds = %136
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, 4
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  store i32 3, i32* %4, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp sge i32 3, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %3, align 4
  br label %353

153:                                              ; preds = %148
  br label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %3, align 4
  br label %353

156:                                              ; preds = %153
  br label %157

157:                                              ; preds = %156, %144
  br label %158

158:                                              ; preds = %157, %132
  %159 = load i32, i32* @htindex, align 4
  store i32 %159, i32* %23, align 4
  %160 = load i32, i32* @lock, align 4
  store i32 %160, i32* %24, align 4
  %161 = load i64, i64* @posed, align 8
  store i64 %161, i64* %18, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %315, %158
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %318

166:                                              ; preds = %162
  %167 = load i32, i32* %21, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %168
  %170 = load i32, i32* %7, align 4
  store i32 %170, i32* %9, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [49 x i32], [49 x i32]* %169, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %209, %166
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %212

187:                                              ; preds = %183
  %188 = load i32, i32* %21, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %189
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [49 x i32], [49 x i32]* %190, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %10, align 4
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp sgt i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %187
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %9, align 4
  br label %208

208:                                              ; preds = %205, %187
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %8, align 4
  br label %183

212:                                              ; preds = %183
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %230, %212
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp sgt i32 %218, %219
  br i1 %220, label %221, label %233

221:                                              ; preds = %217
  %222 = load i32, i32* %9, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %228
  store i32 %226, i32* %229, align 4
  br label %230

230:                                              ; preds = %221
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, -1
  store i32 %232, i32* %9, align 4
  br label %217

233:                                              ; preds = %217
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %236
  store i32 %234, i32* %237, align 4
  call void @makemove(i32 %234)
  %238 = load i32, i32* %5, align 4
  %239 = sub nsw i32 6, %238
  %240 = load i32, i32* %4, align 4
  %241 = sub nsw i32 6, %240
  %242 = call i32 @ab(i32 %239, i32 %241)
  %243 = sub nsw i32 6, %242
  store i32 %243, i32* %11, align 4
  call void @backmove()
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %314

247:                                              ; preds = %233
  %248 = load i32, i32* %7, align 4
  store i32 %248, i32* %6, align 4
  %249 = load i32, i32* %11, align 4
  store i32 %249, i32* %12, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp sgt i32 %249, %250
  br i1 %251, label %252, label %313

252:                                              ; preds = %247
  %253 = load i32, i32* @nplies, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %313

255:                                              ; preds = %252
  %256 = load i32, i32* %11, align 4
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp sge i32 %256, %257
  br i1 %258, label %259, label %313

259:                                              ; preds = %255
  %260 = load i32, i32* %12, align 4
  %261 = icmp eq i32 %260, 3
  br i1 %261, label %262, label %268

262:                                              ; preds = %259
  %263 = load i32, i32* %7, align 4
  %264 = load i32, i32* %16, align 4
  %265 = sub nsw i32 %264, 1
  %266 = icmp slt i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %262
  store i32 4, i32* %12, align 4
  br label %268

268:                                              ; preds = %267, %262, %259
  %269 = load i32, i32* %6, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %312

271:                                              ; preds = %268
  store i32 0, i32* %7, align 4
  br label %272

272:                                              ; preds = %292, %271
  %273 = load i32, i32* %7, align 4
  %274 = load i32, i32* %6, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %295

276:                                              ; preds = %272
  %277 = load i32, i32* %21, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %278
  %280 = load i32, i32* %7, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [49 x i32], [49 x i32]* %279, i64 0, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %276
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  br label %272

295:                                              ; preds = %272
  %296 = load i32, i32* %6, align 4
  %297 = load i32, i32* %21, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x [49 x i32]], [2 x [49 x i32]]* @history, i64 0, i64 %298
  %300 = load i32, i32* %6, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [7 x i32], [7 x i32]* %17, i64 0, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [49 x i32], [49 x i32]* %299, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %296
  store i32 %311, i32* %309, align 4
  br label %312

312:                                              ; preds = %295, %268
  br label %318

313:                                              ; preds = %255, %252, %247
  br label %314

314:                                              ; preds = %313, %233
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %7, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %7, align 4
  br label %162

318:                                              ; preds = %312, %162
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %13, align 4
  %321 = sub nsw i32 6, %320
  %322 = icmp eq i32 %319, %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  store i32 3, i32* %12, align 4
  br label %324

324:                                              ; preds = %323, %318
  %325 = load i64, i64* @posed, align 8
  %326 = load i64, i64* %18, align 8
  %327 = sub i64 %325, %326
  store i64 %327, i64* %18, align 8
  store i32 0, i32* %15, align 4
  br label %328

328:                                              ; preds = %333, %324
  %329 = load i64, i64* %18, align 8
  %330 = lshr i64 %329, 1
  store i64 %330, i64* %18, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %15, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %15, align 4
  br label %328

336:                                              ; preds = %328
  %337 = load i32, i32* %23, align 4
  %338 = load i32, i32* %24, align 4
  %339 = load i32, i32* %12, align 4
  %340 = load i32, i32* %15, align 4
  call void @transtore(i32 %337, i32 %338, i32 %339, i32 %340)
  %341 = load i32, i32* @nplies, align 4
  %342 = icmp sle i32 %341, -1
  br i1 %342, label %343, label %351

343:                                              ; preds = %336
  call void @printMoves()
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i64 0, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = sext i8 %347 to i32
  %349 = load i32, i32* %15, align 4
  %350 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %348, i32 %349)
  br label %351

351:                                              ; preds = %343, %336
  %352 = load i32, i32* %12, align 4
  store i32 %352, i32* %3, align 4
  br label %353

353:                                              ; preds = %351, %154, %151, %142, %122, %118, %114, %95, %72, %29
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @solve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @nplies, align 4
  %7 = and i32 %6, 1
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = xor i32 %8, 1
  store i32 %9, i32* %4, align 4
  store i64 0, i64* @nodes, align 8
  store i64 1, i64* @msecs, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @haswon(i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %49

17:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %38, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 7
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* @color, i64 0, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* @height, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = zext i32 %30 to i64
  %32 = shl i64 1, %31
  %33 = or i64 %25, %32
  %34 = call i32 @islegalhaswon(i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %21
  store i32 5, i32* %1, align 4
  br label %49

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %18

41:                                               ; preds = %18
  call void @inithistory()
  %42 = call i64 @millisecs()
  store i64 %42, i64* @msecs, align 8
  %43 = call i32 @ab(i32 1, i32 5)
  store i32 %43, i32* %5, align 4
  %44 = call i64 @millisecs()
  %45 = add i64 1, %44
  %46 = load i64, i64* @msecs, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* @msecs, align 8
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %41, %36, %16
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @trans_init()
  %6 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 7, i32 6)
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 8306069)
  br label %9

9:                                                ; preds = %46, %0
  call void @reset()
  br label %10

10:                                               ; preds = %27, %9
  %11 = call i32 @getchar()
  store i32 %11, i32* %2, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 49
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = icmp sle i32 %17, 55
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 %20, 49
  call void @makemove(i32 %21)
  br label %27

22:                                               ; preds = %16, %13
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %19
  br label %10

28:                                               ; preds = %25, %10
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %55

32:                                               ; preds = %28
  %33 = load i32, i32* @nplies, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  call void @printMoves()
  %35 = call i32 @puts(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  call void @emptyTT()
  %36 = call i32 @solve()
  store i32 %36, i32* %3, align 4
  %37 = load i64, i64* @posed, align 8
  store i64 %37, i64* %5, align 8
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %43, %32
  %39 = load i64, i64* %5, align 8
  %40 = lshr i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %38

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [7 x i8], [7 x i8]* @.str.3, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %47, i32 %52, i32 %53)
  call void @htstat()
  br label %9

55:                                               ; preds = %31
  ret i32 0
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @getchar() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
