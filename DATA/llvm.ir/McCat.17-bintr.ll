; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.binaryTree = type { i32, %struct.binaryTree*, %struct.binaryTree* }

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"(%d <L \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" L> <R \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" R>)\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Constructing tree\0A\0A\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2.7 = private unnamed_addr constant [22 x i8] c"\0A\0ATree constructed\0A\0A\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [32 x i8] c"Constructing array of values\0A\0A\0A\00", align 1
@.str.4.9 = private unnamed_addr constant [33 x i8] c"\0A\0AArray of values constructed\0A\0A\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [24 x i8] c"Beginning of program\0A\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Summary of sorted binary tree\0A=============================\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Size                   : %d\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Sum                    : %f\0A\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Arithmetic Mean        : %f\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%d is in the tree.\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%d is NOT in the tree.\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\0A\0AEnd of program\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binaryTree* @createBinaryTree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.binaryTree*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.binaryTree* null, %struct.binaryTree** %3, align 8
  %4 = call noalias i8* @malloc(i64 24) #3
  %5 = bitcast i8* %4 to %struct.binaryTree*
  store %struct.binaryTree* %5, %struct.binaryTree** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %9, i32 0, i32 2
  store %struct.binaryTree* null, %struct.binaryTree** %10, align 8
  %11 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %12 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %11, i32 0, i32 1
  store %struct.binaryTree* null, %struct.binaryTree** %12, align 8
  %13 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  ret %struct.binaryTree* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @printBinaryTree(%struct.binaryTree* %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = icmp eq %struct.binaryTree* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %20

7:                                                ; preds = %1
  %8 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %9 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 1
  %14 = load %struct.binaryTree*, %struct.binaryTree** %13, align 8
  call void @printBinaryTree(%struct.binaryTree* %14)
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %17 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %16, i32 0, i32 2
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  call void @printBinaryTree(%struct.binaryTree* %18)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @printSortedBinaryTree(%struct.binaryTree* %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = icmp ne %struct.binaryTree* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %7 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %6, i32 0, i32 1
  %8 = load %struct.binaryTree*, %struct.binaryTree** %7, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* %8)
  %9 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %10 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %11)
  %13 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %14 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %13, i32 0, i32 2
  %15 = load %struct.binaryTree*, %struct.binaryTree** %14, align 8
  call void @printSortedBinaryTree(%struct.binaryTree* %15)
  br label %16

16:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.binaryTree* @insertSortedBinaryTree(i32 %0, %struct.binaryTree** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.binaryTree**, align 8
  %5 = alloca %struct.binaryTree*, align 8
  %6 = alloca %struct.binaryTree*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.binaryTree** %1, %struct.binaryTree*** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.binaryTree* @createBinaryTree(i32 %8)
  store %struct.binaryTree* %9, %struct.binaryTree** %5, align 8
  store %struct.binaryTree* null, %struct.binaryTree** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  %11 = load %struct.binaryTree*, %struct.binaryTree** %10, align 8
  %12 = icmp eq %struct.binaryTree* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %15 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  store %struct.binaryTree* %14, %struct.binaryTree** %15, align 8
  br label %67

16:                                               ; preds = %2
  %17 = load %struct.binaryTree**, %struct.binaryTree*** %4, align 8
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  store %struct.binaryTree* %18, %struct.binaryTree** %6, align 8
  br label %19

19:                                               ; preds = %62, %16
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %22 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %27 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %26, i32 0, i32 1
  %28 = load %struct.binaryTree*, %struct.binaryTree** %27, align 8
  %29 = icmp eq %struct.binaryTree* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %32 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %33 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %32, i32 0, i32 1
  store %struct.binaryTree* %31, %struct.binaryTree** %33, align 8
  store i32 1, i32* %7, align 4
  br label %38

34:                                               ; preds = %25
  %35 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %36 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %35, i32 0, i32 1
  %37 = load %struct.binaryTree*, %struct.binaryTree** %36, align 8
  store %struct.binaryTree* %37, %struct.binaryTree** %6, align 8
  br label %38

38:                                               ; preds = %34, %30
  br label %61

39:                                               ; preds = %19
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %42 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %47 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %46, i32 0, i32 2
  %48 = load %struct.binaryTree*, %struct.binaryTree** %47, align 8
  %49 = icmp eq %struct.binaryTree* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %52 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %53 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %52, i32 0, i32 2
  store %struct.binaryTree* %51, %struct.binaryTree** %53, align 8
  store i32 1, i32* %7, align 4
  br label %58

54:                                               ; preds = %45
  %55 = load %struct.binaryTree*, %struct.binaryTree** %6, align 8
  %56 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %55, i32 0, i32 2
  %57 = load %struct.binaryTree*, %struct.binaryTree** %56, align 8
  store %struct.binaryTree* %57, %struct.binaryTree** %6, align 8
  br label %58

58:                                               ; preds = %54, %50
  br label %60

59:                                               ; preds = %39
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %61

61:                                               ; preds = %60, %38
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br i1 %65, label %19, label %66

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %13
  %68 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  ret %struct.binaryTree* %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getArithmeticMeanBinaryTree(%struct.binaryTree* %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  %3 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %4 = call double @getSumBinaryTree(%struct.binaryTree* %3)
  %5 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %6 = call i32 @getSizeBinaryTree(%struct.binaryTree* %5)
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %4, %7
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getSumBinaryTree(%struct.binaryTree* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %5 = icmp ne %struct.binaryTree* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  %11 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %12 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %11, i32 0, i32 1
  %13 = load %struct.binaryTree*, %struct.binaryTree** %12, align 8
  %14 = call double @getSumBinaryTree(%struct.binaryTree* %13)
  %15 = fadd double %10, %14
  %16 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %17 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %16, i32 0, i32 2
  %18 = load %struct.binaryTree*, %struct.binaryTree** %17, align 8
  %19 = call double @getSumBinaryTree(%struct.binaryTree* %18)
  %20 = fadd double %15, %19
  store double %20, double* %2, align 8
  br label %22

21:                                               ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %22

22:                                               ; preds = %21, %6
  %23 = load double, double* %2, align 8
  ret double %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @getSizeBinaryTree(%struct.binaryTree* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.binaryTree*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  %4 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %5 = icmp ne %struct.binaryTree* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %8 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %7, i32 0, i32 1
  %9 = load %struct.binaryTree*, %struct.binaryTree** %8, align 8
  %10 = call i32 @getSizeBinaryTree(%struct.binaryTree* %9)
  %11 = add nsw i32 1, %10
  %12 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 2
  %14 = load %struct.binaryTree*, %struct.binaryTree** %13, align 8
  %15 = call i32 @getSizeBinaryTree(%struct.binaryTree* %14)
  %16 = add nsw i32 %11, %15
  store i32 %16, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %6
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @getArithmeticMeanOptimized(%struct.binaryTree* %0) #0 {
  %2 = alloca %struct.binaryTree*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  %5 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %5, double* %3, double* %4)
  %6 = load double, double* %3, align 8
  %7 = load double, double* %4, align 8
  %8 = fdiv double %6, %7
  ret double %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %0, double* %1, double* %2) #0 {
  %4 = alloca %struct.binaryTree*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %4, align 8
  store double* %1, double** %5, align 8
  store double* %2, double** %6, align 8
  %7 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %8 = icmp ne %struct.binaryTree* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %3
  %10 = load double*, double** %5, align 8
  %11 = load double, double* %10, align 8
  %12 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %13 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sitofp i32 %14 to double
  %16 = fadd double %11, %15
  %17 = load double*, double** %5, align 8
  store double %16, double* %17, align 8
  %18 = load double*, double** %6, align 8
  %19 = load double, double* %18, align 8
  %20 = fadd double %19, 1.000000e+00
  %21 = load double*, double** %6, align 8
  store double %20, double* %21, align 8
  %22 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %23 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %22, i32 0, i32 1
  %24 = load %struct.binaryTree*, %struct.binaryTree** %23, align 8
  %25 = load double*, double** %5, align 8
  %26 = load double*, double** %6, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %24, double* %25, double* %26)
  %27 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %28 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %27, i32 0, i32 2
  %29 = load %struct.binaryTree*, %struct.binaryTree** %28, align 8
  %30 = load double*, double** %5, align 8
  %31 = load double*, double** %6, align 8
  call void @getArithmeticMeanOptimizedRecurs(%struct.binaryTree* %29, double* %30, double* %31)
  br label %32

32:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memberOfBinaryTree(%struct.binaryTree* %0, i32 %1) #0 {
  %3 = alloca %struct.binaryTree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  %7 = load i32, i32* %4, align 4
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %6, i32 %7, i32* %5)
  %8 = load i32, i32* %5, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @memberOfBinaryTreeRecurs(%struct.binaryTree* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.binaryTree*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.binaryTree* %0, %struct.binaryTree** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %8 = icmp ne %struct.binaryTree* %7, null
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %11 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32*, i32** %6, align 8
  store i32 1, i32* %16, align 4
  br label %33

17:                                               ; preds = %9
  %18 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %19 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %18, i32 0, i32 1
  %20 = load %struct.binaryTree*, %struct.binaryTree** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %20, i32 %21, i32* %22)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.binaryTree*, %struct.binaryTree** %4, align 8
  %28 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %27, i32 0, i32 2
  %29 = load %struct.binaryTree*, %struct.binaryTree** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32*, i32** %6, align 8
  call void @memberOfBinaryTreeRecurs(%struct.binaryTree* %29, i32 %30, i32* %31)
  br label %32

32:                                               ; preds = %26, %17
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memberOfSortedBinaryTree(%struct.binaryTree* %0, i32 %1) #0 {
  %3 = alloca %struct.binaryTree*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.binaryTree*, align 8
  %6 = alloca i32, align 4
  store %struct.binaryTree* %0, %struct.binaryTree** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.binaryTree*, %struct.binaryTree** %3, align 8
  store %struct.binaryTree* %7, %struct.binaryTree** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %38, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %13 = icmp ne %struct.binaryTree* %12, null
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i1 [ false, %8 ], [ %13, %11 ]
  br i1 %15, label %16, label %39

16:                                               ; preds = %14
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %19 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %24 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %23, i32 0, i32 1
  %25 = load %struct.binaryTree*, %struct.binaryTree** %24, align 8
  store %struct.binaryTree* %25, %struct.binaryTree** %5, align 8
  br label %38

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %29 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load %struct.binaryTree*, %struct.binaryTree** %5, align 8
  %34 = getelementptr inbounds %struct.binaryTree, %struct.binaryTree* %33, i32 0, i32 2
  %35 = load %struct.binaryTree*, %struct.binaryTree** %34, align 8
  store %struct.binaryTree* %35, %struct.binaryTree** %5, align 8
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %36, %32
  br label %38

38:                                               ; preds = %37, %22
  br label %8

39:                                               ; preds = %14
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillTree(%struct.binaryTree** %0) #0 {
  %2 = alloca %struct.binaryTree**, align 8
  %3 = alloca i32, align 4
  store %struct.binaryTree** %0, %struct.binaryTree*** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.6, i64 0, i64 0), i32* %3)
  br label %6

6:                                                ; preds = %9, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.binaryTree**, %struct.binaryTree*** %2, align 8
  %12 = call %struct.binaryTree* @insertSortedBinaryTree(i32 %10, %struct.binaryTree** %11)
  %13 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.6, i64 0, i64 0), i32* %3)
  br label %6

14:                                               ; preds = %6
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @__isoc99_scanf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @fillSearchedValues(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.8, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.6, i64 0, i64 0), i32* %3)
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 100
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %24

15:                                               ; preds = %13
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.6, i64 0, i64 0), i32* %3)
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %7

24:                                               ; preds = %13
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4.9, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.binaryTree*, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store %struct.binaryTree* null, %struct.binaryTree** %2, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5.10, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  br label %6

16:                                               ; preds = %6
  call void @fillTree(%struct.binaryTree** %2)
  %17 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 0
  call void @fillSearchedValues(i32* %17)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %19 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %20 = call i32 @getSizeBinaryTree(%struct.binaryTree* %19)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %22 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %23 = call double @getSumBinaryTree(%struct.binaryTree* %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), double %23)
  %25 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %26 = call double @getArithmeticMeanBinaryTree(%struct.binaryTree* %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %52, %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 100
  br i1 %30, label %31, label %55

31:                                               ; preds = %28
  %32 = load %struct.binaryTree*, %struct.binaryTree** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memberOfBinaryTree(%struct.binaryTree* %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %43)
  br label %51

45:                                               ; preds = %31
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %28

55:                                               ; preds = %28
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
