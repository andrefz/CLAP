; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rc4_state = type { i32, i32, [256 x i32] }

@.str = private unnamed_addr constant [26 x i8] c"\0A RC4 Validation Tests:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" Test %d \00", align 1
@data = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }>, [30 x i8] }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\01#Eg\89\AB\CD\EF\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\00\00\00\00\00\00\00\00\FF", [21 x i8] zeroinitializer }>, <{ [21 x i8], [9 x i8] }> <{ [21 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF", [9 x i8] zeroinitializer }>, [30 x i8] c"\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\9A\BC\DE\F0\124Vx\FF\00", <{ [11 x i8], [19 x i8] }> <{ [11 x i8] c"\00\00\00\00\00\00\00\00\00\00\FF", [19 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@data_len = internal global [7 x i8] c"\08\08\08\14\1C\0A\00", align 1
@keys = internal global <{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }> <{ <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, [29 x i8] }> <{ i8 8, [29 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }>, <{ [9 x i8], [21 x i8] }> <{ [9 x i8] c"\08\01#Eg\89\AB\CD\EF", [21 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, i8, [25 x i8] }> <{ i8 4, i8 -17, i8 1, i8 35, i8 69, [25 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@output = internal global <{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }>, [30 x i8] }> <{ <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"u\B7\87\80\99\E0\C5\96", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"t\94\C2\E7\10K\08y", [22 x i8] zeroinitializer }>, <{ [8 x i8], [22 x i8] }> <{ [8 x i8] c"\DE\18\89A\A37]:", [22 x i8] zeroinitializer }>, <{ [20 x i8], [10 x i8] }> <{ [20 x i8] c"\D6\A1A\A7\EC<8\DF\BDaZ\11b\E1\C7\BA6\B6xX", [10 x i8] zeroinitializer }>, [30 x i8] c"f\A0\94\9F\8A\F7\D6\89\1F\7F\83+\A83\C0\0C\89.\BE0\14<\E2\87@\01\1E\CF\00\00", <{ [10 x i8], [20 x i8] }> <{ [10 x i8] c"\D6\A1A\A7\EC<8\DF\BDa", [20 x i8] zeroinitializer }>, [30 x i8] zeroinitializer }>, align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"failed!\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"passed.\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @rc4_setup(%struct.rc4_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rc4_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.rc4_state* %0, %struct.rc4_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %13 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %15 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %17 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %16, i32 0, i32 2
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  store i32* %18, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %28, %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 256
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %19

31:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %73, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 256
  br i1 %34, label %35, label %76

35:                                               ; preds = %32
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %43, %49
  %51 = trunc i32 %50 to i8
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %71, %35
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %32

76:                                               ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @rc4_crypt(%struct.rc4_state* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rc4_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rc4_state* %0, %struct.rc4_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %14 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %17 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %20 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds [256 x i32], [256 x i32]* %20, i64 0, i64 0
  store i32* %21, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %71, %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  %29 = trunc i32 %28 to i8
  %30 = zext i8 %29 to i32
  store i32 %30, i32* %8, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %36, %37
  %39 = trunc i32 %38 to i8
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %56, %57
  %59 = trunc i32 %58 to i8
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds i32, i32* %55, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = xor i32 %68, %62
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 1
  br label %71

71:                                               ; preds = %26
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %22

74:                                               ; preds = %22
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %77 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.rc4_state*, %struct.rc4_state** %4, align 8
  %80 = getelementptr inbounds %struct.rc4_state, %struct.rc4_state* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rc4_state, align 4
  %9 = alloca [30 x i8], align 16
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 200000, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @atoi(i8* %16) #4
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %78, %18
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 6
  br i1 %22, label %23, label %81

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %58, %23
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ [21 x i8], [9 x i8] }>, [30 x i8], <{ [11 x i8], [19 x i8] }>, [30 x i8] }>* @data to [7 x [30 x i8]]*), i64 0, i64 %34
  %36 = getelementptr inbounds [30 x i8], [30 x i8]* %35, i64 0, i64 0
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %32, i8* align 2 %36, i64 %41, i1 false)
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }>* @keys to [7 x [30 x i8]]*), i64 0, i64 %43
  %45 = getelementptr inbounds [30 x i8], [30 x i8]* %44, i64 0, i64 1
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [9 x i8], [21 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, [29 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, <{ [9 x i8], [21 x i8] }>, <{ i8, i8, i8, i8, i8, [25 x i8] }>, [30 x i8] }>* @keys to [7 x [30 x i8]]*), i64 0, i64 %47
  %49 = getelementptr inbounds [30 x i8], [30 x i8]* %48, i64 0, i64 0
  %50 = load i8, i8* %49, align 2
  %51 = zext i8 %50 to i32
  call void @rc4_setup(%struct.rc4_state* %8, i8* %45, i32 %51)
  %52 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  call void @rc4_crypt(%struct.rc4_state* %8, i8* %52, i32 %57)
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %27

61:                                               ; preds = %27
  %62 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [7 x [30 x i8]], [7 x [30 x i8]]* bitcast (<{ <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [8 x i8], [22 x i8] }>, <{ [20 x i8], [10 x i8] }>, [30 x i8], <{ [10 x i8], [20 x i8] }>, [30 x i8] }>* @output to [7 x [30 x i8]]*), i64 0, i64 %64
  %66 = getelementptr inbounds [30 x i8], [30 x i8]* %65, i64 0, i64 0
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [7 x i8], [7 x i8]* @data_len, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i64
  %72 = call i32 @memcmp(i8* %62, i8* %66, i64 %71) #4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %83

76:                                               ; preds = %61
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %20

81:                                               ; preds = %20
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
