; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Mat = type { float*, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@omega = dso_local global float 0x3FE99999A0000000, align 4
@p = common dso_local global %struct.Mat zeroinitializer, align 8
@bnd = common dso_local global %struct.Mat zeroinitializer, align 8
@wrk1 = common dso_local global %struct.Mat zeroinitializer, align 8
@wrk2 = common dso_local global %struct.Mat zeroinitializer, align 8
@a = common dso_local global %struct.Mat zeroinitializer, align 8
@b = common dso_local global %struct.Mat zeroinitializer, align 8
@c = common dso_local global %struct.Mat zeroinitializer, align 8
@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"XS\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"xs\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"xl\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Invalid input character !!\0A\00", align 1
@second.base_sec = internal global i32 0, align 4
@second.base_usec = internal global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
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
  %16 = alloca [3 x i32], align 4
  %17 = alloca float, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 64, i32* %22, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 64, i32* %23, align 4
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 128, i32* %24, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %13, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @newMat(%struct.Mat* @p, i32 1, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @newMat(%struct.Mat* @bnd, i32 1, i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @newMat(%struct.Mat* @wrk1, i32 1, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @newMat(%struct.Mat* @wrk2, i32 1, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @newMat(%struct.Mat* @a, i32 4, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @newMat(%struct.Mat* @b, i32 3, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @newMat(%struct.Mat* @c, i32 3, i32 %69, i32 %70, i32 %71)
  call void @mat_set_init(%struct.Mat* @p)
  call void @mat_set(%struct.Mat* @bnd, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @wrk1, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @wrk2, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 2, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @a, i32 3, float 0x3FC5555560000000)
  call void @mat_set(%struct.Mat* @b, i32 0, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 1, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @b, i32 2, float 0.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 0, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 1, float 1.000000e+00)
  call void @mat_set(%struct.Mat* @c, i32 2, float 1.000000e+00)
  store i32 64, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call float @jacobi(i32 %73, %struct.Mat* @a, %struct.Mat* @b, %struct.Mat* @c, %struct.Mat* @p, %struct.Mat* @bnd, %struct.Mat* @wrk1, %struct.Mat* @wrk2)
  store float %74, float* %17, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load float, float* %17, align 4
  %78 = fpext float %77 to double
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), double %78)
  call void @clearMat(%struct.Mat* @p)
  call void @clearMat(%struct.Mat* @bnd)
  call void @clearMat(%struct.Mat* @wrk1)
  call void @clearMat(%struct.Mat* @wrk2)
  call void @clearMat(%struct.Mat* @a)
  call void @clearMat(%struct.Mat* @b)
  call void @clearMat(%struct.Mat* @c)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @newMat(%struct.Mat* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.Mat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Mat* %0, %struct.Mat** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.Mat*, %struct.Mat** %6, align 8
  %13 = getelementptr inbounds %struct.Mat, %struct.Mat* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.Mat*, %struct.Mat** %6, align 8
  %16 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.Mat*, %struct.Mat** %6, align 8
  %19 = getelementptr inbounds %struct.Mat, %struct.Mat* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.Mat*, %struct.Mat** %6, align 8
  %22 = getelementptr inbounds %struct.Mat, %struct.Mat* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.Mat*, %struct.Mat** %6, align 8
  %24 = getelementptr inbounds %struct.Mat, %struct.Mat* %23, i32 0, i32 0
  store float* null, float** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 %25, %26
  %28 = load i32, i32* %9, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %10, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call noalias i8* @malloc(i64 %33) #5
  %35 = bitcast i8* %34 to float*
  %36 = load %struct.Mat*, %struct.Mat** %6, align 8
  %37 = getelementptr inbounds %struct.Mat, %struct.Mat* %36, i32 0, i32 0
  store float* %35, float** %37, align 8
  %38 = load %struct.Mat*, %struct.Mat** %6, align 8
  %39 = getelementptr inbounds %struct.Mat, %struct.Mat* %38, i32 0, i32 0
  %40 = load float*, float** %39, align 8
  %41 = icmp ne float* %40, null
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mat_set_init(%struct.Mat* %0) #0 {
  %2 = alloca %struct.Mat*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.Mat* %0, %struct.Mat** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %87, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.Mat*, %struct.Mat** %2, align 8
  %11 = getelementptr inbounds %struct.Mat, %struct.Mat* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %90

14:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %83, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.Mat*, %struct.Mat** %2, align 8
  %18 = getelementptr inbounds %struct.Mat, %struct.Mat* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %86

21:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %79, %21
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Mat*, %struct.Mat** %2, align 8
  %25 = getelementptr inbounds %struct.Mat, %struct.Mat* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %82

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sitofp i32 %31 to float
  %33 = load %struct.Mat*, %struct.Mat** %2, align 8
  %34 = getelementptr inbounds %struct.Mat, %struct.Mat* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.Mat*, %struct.Mat** %2, align 8
  %38 = getelementptr inbounds %struct.Mat, %struct.Mat* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = mul nsw i32 %36, %40
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %32, %42
  %44 = load %struct.Mat*, %struct.Mat** %2, align 8
  %45 = getelementptr inbounds %struct.Mat, %struct.Mat* %44, i32 0, i32 0
  %46 = load float*, float** %45, align 8
  %47 = load %struct.Mat*, %struct.Mat** %2, align 8
  %48 = getelementptr inbounds %struct.Mat, %struct.Mat* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 0, %49
  %51 = load %struct.Mat*, %struct.Mat** %2, align 8
  %52 = getelementptr inbounds %struct.Mat, %struct.Mat* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load %struct.Mat*, %struct.Mat** %2, align 8
  %56 = getelementptr inbounds %struct.Mat, %struct.Mat* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %54, %57
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.Mat*, %struct.Mat** %2, align 8
  %61 = getelementptr inbounds %struct.Mat, %struct.Mat* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %59, %62
  %64 = load %struct.Mat*, %struct.Mat** %2, align 8
  %65 = getelementptr inbounds %struct.Mat, %struct.Mat* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = add nsw i32 %58, %67
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.Mat*, %struct.Mat** %2, align 8
  %71 = getelementptr inbounds %struct.Mat, %struct.Mat* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = add nsw i32 %68, %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %46, i64 %77
  store float %43, float* %78, align 4
  br label %79

79:                                               ; preds = %28
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %22

82:                                               ; preds = %22
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %15

86:                                               ; preds = %15
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %3, align 4
  br label %8

90:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @mat_set(%struct.Mat* %0, i32 %1, float %2) #0 {
  %4 = alloca %struct.Mat*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Mat* %0, %struct.Mat** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %76, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.Mat*, %struct.Mat** %4, align 8
  %13 = getelementptr inbounds %struct.Mat, %struct.Mat* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %10
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %72, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.Mat*, %struct.Mat** %4, align 8
  %20 = getelementptr inbounds %struct.Mat, %struct.Mat* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %68, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.Mat*, %struct.Mat** %4, align 8
  %27 = getelementptr inbounds %struct.Mat, %struct.Mat* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %24
  %31 = load float, float* %6, align 4
  %32 = load %struct.Mat*, %struct.Mat** %4, align 8
  %33 = getelementptr inbounds %struct.Mat, %struct.Mat* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.Mat*, %struct.Mat** %4, align 8
  %37 = getelementptr inbounds %struct.Mat, %struct.Mat* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %35, %38
  %40 = load %struct.Mat*, %struct.Mat** %4, align 8
  %41 = getelementptr inbounds %struct.Mat, %struct.Mat* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = mul nsw i32 %39, %42
  %44 = load %struct.Mat*, %struct.Mat** %4, align 8
  %45 = getelementptr inbounds %struct.Mat, %struct.Mat* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.Mat*, %struct.Mat** %4, align 8
  %50 = getelementptr inbounds %struct.Mat, %struct.Mat* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = load %struct.Mat*, %struct.Mat** %4, align 8
  %54 = getelementptr inbounds %struct.Mat, %struct.Mat* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = add nsw i32 %47, %56
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.Mat*, %struct.Mat** %4, align 8
  %60 = getelementptr inbounds %struct.Mat, %struct.Mat* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %58, %61
  %63 = add nsw i32 %57, %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %34, i64 %66
  store float %31, float* %67, align 4
  br label %68

68:                                               ; preds = %30
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %24

71:                                               ; preds = %24
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %17

75:                                               ; preds = %17
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %10

79:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @jacobi(i32 %0, %struct.Mat* %1, %struct.Mat* %2, %struct.Mat* %3, %struct.Mat* %4, %struct.Mat* %5, %struct.Mat* %6, %struct.Mat* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.Mat*, align 8
  %11 = alloca %struct.Mat*, align 8
  %12 = alloca %struct.Mat*, align 8
  %13 = alloca %struct.Mat*, align 8
  %14 = alloca %struct.Mat*, align 8
  %15 = alloca %struct.Mat*, align 8
  %16 = alloca %struct.Mat*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  store i32 %0, i32* %9, align 4
  store %struct.Mat* %1, %struct.Mat** %10, align 8
  store %struct.Mat* %2, %struct.Mat** %11, align 8
  store %struct.Mat* %3, %struct.Mat** %12, align 8
  store %struct.Mat* %4, %struct.Mat** %13, align 8
  store %struct.Mat* %5, %struct.Mat** %14, align 8
  store %struct.Mat* %6, %struct.Mat** %15, align 8
  store %struct.Mat* %7, %struct.Mat** %16, align 8
  %27 = load %struct.Mat*, %struct.Mat** %13, align 8
  %28 = getelementptr inbounds %struct.Mat, %struct.Mat* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %21, align 4
  %31 = load %struct.Mat*, %struct.Mat** %13, align 8
  %32 = getelementptr inbounds %struct.Mat, %struct.Mat* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %22, align 4
  %35 = load %struct.Mat*, %struct.Mat** %13, align 8
  %36 = getelementptr inbounds %struct.Mat, %struct.Mat* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %23, align 4
  store i32 0, i32* %20, align 4
  br label %39

39:                                               ; preds = %1426, %8
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %1429

43:                                               ; preds = %39
  store float 0.000000e+00, float* %24, align 4
  store i32 1, i32* %17, align 4
  br label %44

44:                                               ; preds = %1324, %43
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %1327

48:                                               ; preds = %44
  store i32 1, i32* %18, align 4
  br label %49

49:                                               ; preds = %1320, %48
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %22, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %1323

53:                                               ; preds = %49
  store i32 1, i32* %19, align 4
  br label %54

54:                                               ; preds = %1316, %53
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* %23, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %1319

58:                                               ; preds = %54
  %59 = load %struct.Mat*, %struct.Mat** %10, align 8
  %60 = getelementptr inbounds %struct.Mat, %struct.Mat* %59, i32 0, i32 0
  %61 = load float*, float** %60, align 8
  %62 = load %struct.Mat*, %struct.Mat** %10, align 8
  %63 = getelementptr inbounds %struct.Mat, %struct.Mat* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 0, %64
  %66 = load %struct.Mat*, %struct.Mat** %10, align 8
  %67 = getelementptr inbounds %struct.Mat, %struct.Mat* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.Mat*, %struct.Mat** %10, align 8
  %71 = getelementptr inbounds %struct.Mat, %struct.Mat* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* %17, align 4
  %75 = load %struct.Mat*, %struct.Mat** %10, align 8
  %76 = getelementptr inbounds %struct.Mat, %struct.Mat* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %74, %77
  %79 = load %struct.Mat*, %struct.Mat** %10, align 8
  %80 = getelementptr inbounds %struct.Mat, %struct.Mat* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = add nsw i32 %73, %82
  %84 = load i32, i32* %18, align 4
  %85 = load %struct.Mat*, %struct.Mat** %10, align 8
  %86 = getelementptr inbounds %struct.Mat, %struct.Mat* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %83, %88
  %90 = load i32, i32* %19, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %61, i64 %92
  %94 = load float, float* %93, align 4
  %95 = load %struct.Mat*, %struct.Mat** %13, align 8
  %96 = getelementptr inbounds %struct.Mat, %struct.Mat* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = load %struct.Mat*, %struct.Mat** %13, align 8
  %99 = getelementptr inbounds %struct.Mat, %struct.Mat* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 0, %100
  %102 = load %struct.Mat*, %struct.Mat** %13, align 8
  %103 = getelementptr inbounds %struct.Mat, %struct.Mat* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = load %struct.Mat*, %struct.Mat** %13, align 8
  %107 = getelementptr inbounds %struct.Mat, %struct.Mat* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %105, %108
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %110, 1
  %112 = load %struct.Mat*, %struct.Mat** %13, align 8
  %113 = getelementptr inbounds %struct.Mat, %struct.Mat* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = load %struct.Mat*, %struct.Mat** %13, align 8
  %117 = getelementptr inbounds %struct.Mat, %struct.Mat* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = add nsw i32 %109, %119
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.Mat*, %struct.Mat** %13, align 8
  %123 = getelementptr inbounds %struct.Mat, %struct.Mat* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = add nsw i32 %120, %125
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %97, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %94, %131
  %133 = load %struct.Mat*, %struct.Mat** %10, align 8
  %134 = getelementptr inbounds %struct.Mat, %struct.Mat* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  %136 = load %struct.Mat*, %struct.Mat** %10, align 8
  %137 = getelementptr inbounds %struct.Mat, %struct.Mat* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 1, %138
  %140 = load %struct.Mat*, %struct.Mat** %10, align 8
  %141 = getelementptr inbounds %struct.Mat, %struct.Mat* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %139, %142
  %144 = load %struct.Mat*, %struct.Mat** %10, align 8
  %145 = getelementptr inbounds %struct.Mat, %struct.Mat* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = mul nsw i32 %143, %146
  %148 = load i32, i32* %17, align 4
  %149 = load %struct.Mat*, %struct.Mat** %10, align 8
  %150 = getelementptr inbounds %struct.Mat, %struct.Mat* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = mul nsw i32 %148, %151
  %153 = load %struct.Mat*, %struct.Mat** %10, align 8
  %154 = getelementptr inbounds %struct.Mat, %struct.Mat* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = mul nsw i32 %152, %155
  %157 = add nsw i32 %147, %156
  %158 = load i32, i32* %18, align 4
  %159 = load %struct.Mat*, %struct.Mat** %10, align 8
  %160 = getelementptr inbounds %struct.Mat, %struct.Mat* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %158, %161
  %163 = add nsw i32 %157, %162
  %164 = load i32, i32* %19, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds float, float* %135, i64 %166
  %168 = load float, float* %167, align 4
  %169 = load %struct.Mat*, %struct.Mat** %13, align 8
  %170 = getelementptr inbounds %struct.Mat, %struct.Mat* %169, i32 0, i32 0
  %171 = load float*, float** %170, align 8
  %172 = load %struct.Mat*, %struct.Mat** %13, align 8
  %173 = getelementptr inbounds %struct.Mat, %struct.Mat* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 0, %174
  %176 = load %struct.Mat*, %struct.Mat** %13, align 8
  %177 = getelementptr inbounds %struct.Mat, %struct.Mat* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = load %struct.Mat*, %struct.Mat** %13, align 8
  %181 = getelementptr inbounds %struct.Mat, %struct.Mat* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %179, %182
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.Mat*, %struct.Mat** %13, align 8
  %186 = getelementptr inbounds %struct.Mat, %struct.Mat* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = mul nsw i32 %184, %187
  %189 = load %struct.Mat*, %struct.Mat** %13, align 8
  %190 = getelementptr inbounds %struct.Mat, %struct.Mat* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  %193 = add nsw i32 %183, %192
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  %196 = load %struct.Mat*, %struct.Mat** %13, align 8
  %197 = getelementptr inbounds %struct.Mat, %struct.Mat* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = mul nsw i32 %195, %198
  %200 = add nsw i32 %193, %199
  %201 = load i32, i32* %19, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %171, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fmul float %168, %205
  %207 = fadd float %132, %206
  %208 = load %struct.Mat*, %struct.Mat** %10, align 8
  %209 = getelementptr inbounds %struct.Mat, %struct.Mat* %208, i32 0, i32 0
  %210 = load float*, float** %209, align 8
  %211 = load %struct.Mat*, %struct.Mat** %10, align 8
  %212 = getelementptr inbounds %struct.Mat, %struct.Mat* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 2, %213
  %215 = load %struct.Mat*, %struct.Mat** %10, align 8
  %216 = getelementptr inbounds %struct.Mat, %struct.Mat* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %214, %217
  %219 = load %struct.Mat*, %struct.Mat** %10, align 8
  %220 = getelementptr inbounds %struct.Mat, %struct.Mat* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  %223 = load i32, i32* %17, align 4
  %224 = load %struct.Mat*, %struct.Mat** %10, align 8
  %225 = getelementptr inbounds %struct.Mat, %struct.Mat* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %223, %226
  %228 = load %struct.Mat*, %struct.Mat** %10, align 8
  %229 = getelementptr inbounds %struct.Mat, %struct.Mat* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %227, %230
  %232 = add nsw i32 %222, %231
  %233 = load i32, i32* %18, align 4
  %234 = load %struct.Mat*, %struct.Mat** %10, align 8
  %235 = getelementptr inbounds %struct.Mat, %struct.Mat* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = mul nsw i32 %233, %236
  %238 = add nsw i32 %232, %237
  %239 = load i32, i32* %19, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %210, i64 %241
  %243 = load float, float* %242, align 4
  %244 = load %struct.Mat*, %struct.Mat** %13, align 8
  %245 = getelementptr inbounds %struct.Mat, %struct.Mat* %244, i32 0, i32 0
  %246 = load float*, float** %245, align 8
  %247 = load %struct.Mat*, %struct.Mat** %13, align 8
  %248 = getelementptr inbounds %struct.Mat, %struct.Mat* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 0, %249
  %251 = load %struct.Mat*, %struct.Mat** %13, align 8
  %252 = getelementptr inbounds %struct.Mat, %struct.Mat* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  %254 = mul nsw i32 %250, %253
  %255 = load %struct.Mat*, %struct.Mat** %13, align 8
  %256 = getelementptr inbounds %struct.Mat, %struct.Mat* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = mul nsw i32 %254, %257
  %259 = load i32, i32* %17, align 4
  %260 = load %struct.Mat*, %struct.Mat** %13, align 8
  %261 = getelementptr inbounds %struct.Mat, %struct.Mat* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = mul nsw i32 %259, %262
  %264 = load %struct.Mat*, %struct.Mat** %13, align 8
  %265 = getelementptr inbounds %struct.Mat, %struct.Mat* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %263, %266
  %268 = add nsw i32 %258, %267
  %269 = load i32, i32* %18, align 4
  %270 = load %struct.Mat*, %struct.Mat** %13, align 8
  %271 = getelementptr inbounds %struct.Mat, %struct.Mat* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = mul nsw i32 %269, %272
  %274 = add nsw i32 %268, %273
  %275 = load i32, i32* %19, align 4
  %276 = add nsw i32 %275, 1
  %277 = add nsw i32 %274, %276
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %246, i64 %278
  %280 = load float, float* %279, align 4
  %281 = fmul float %243, %280
  %282 = fadd float %207, %281
  %283 = load %struct.Mat*, %struct.Mat** %11, align 8
  %284 = getelementptr inbounds %struct.Mat, %struct.Mat* %283, i32 0, i32 0
  %285 = load float*, float** %284, align 8
  %286 = load %struct.Mat*, %struct.Mat** %11, align 8
  %287 = getelementptr inbounds %struct.Mat, %struct.Mat* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = mul nsw i32 0, %288
  %290 = load %struct.Mat*, %struct.Mat** %11, align 8
  %291 = getelementptr inbounds %struct.Mat, %struct.Mat* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = mul nsw i32 %289, %292
  %294 = load %struct.Mat*, %struct.Mat** %11, align 8
  %295 = getelementptr inbounds %struct.Mat, %struct.Mat* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 4
  %297 = mul nsw i32 %293, %296
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.Mat*, %struct.Mat** %11, align 8
  %300 = getelementptr inbounds %struct.Mat, %struct.Mat* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = mul nsw i32 %298, %301
  %303 = load %struct.Mat*, %struct.Mat** %11, align 8
  %304 = getelementptr inbounds %struct.Mat, %struct.Mat* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %302, %305
  %307 = add nsw i32 %297, %306
  %308 = load i32, i32* %18, align 4
  %309 = load %struct.Mat*, %struct.Mat** %11, align 8
  %310 = getelementptr inbounds %struct.Mat, %struct.Mat* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 4
  %312 = mul nsw i32 %308, %311
  %313 = add nsw i32 %307, %312
  %314 = load i32, i32* %19, align 4
  %315 = add nsw i32 %313, %314
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float, float* %285, i64 %316
  %318 = load float, float* %317, align 4
  %319 = load %struct.Mat*, %struct.Mat** %13, align 8
  %320 = getelementptr inbounds %struct.Mat, %struct.Mat* %319, i32 0, i32 0
  %321 = load float*, float** %320, align 8
  %322 = load %struct.Mat*, %struct.Mat** %13, align 8
  %323 = getelementptr inbounds %struct.Mat, %struct.Mat* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = mul nsw i32 0, %324
  %326 = load %struct.Mat*, %struct.Mat** %13, align 8
  %327 = getelementptr inbounds %struct.Mat, %struct.Mat* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = mul nsw i32 %325, %328
  %330 = load %struct.Mat*, %struct.Mat** %13, align 8
  %331 = getelementptr inbounds %struct.Mat, %struct.Mat* %330, i32 0, i32 4
  %332 = load i32, i32* %331, align 4
  %333 = mul nsw i32 %329, %332
  %334 = load i32, i32* %17, align 4
  %335 = add nsw i32 %334, 1
  %336 = load %struct.Mat*, %struct.Mat** %13, align 8
  %337 = getelementptr inbounds %struct.Mat, %struct.Mat* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = mul nsw i32 %335, %338
  %340 = load %struct.Mat*, %struct.Mat** %13, align 8
  %341 = getelementptr inbounds %struct.Mat, %struct.Mat* %340, i32 0, i32 4
  %342 = load i32, i32* %341, align 4
  %343 = mul nsw i32 %339, %342
  %344 = add nsw i32 %333, %343
  %345 = load i32, i32* %18, align 4
  %346 = add nsw i32 %345, 1
  %347 = load %struct.Mat*, %struct.Mat** %13, align 8
  %348 = getelementptr inbounds %struct.Mat, %struct.Mat* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 4
  %350 = mul nsw i32 %346, %349
  %351 = add nsw i32 %344, %350
  %352 = load i32, i32* %19, align 4
  %353 = add nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %321, i64 %354
  %356 = load float, float* %355, align 4
  %357 = load %struct.Mat*, %struct.Mat** %13, align 8
  %358 = getelementptr inbounds %struct.Mat, %struct.Mat* %357, i32 0, i32 0
  %359 = load float*, float** %358, align 8
  %360 = load %struct.Mat*, %struct.Mat** %13, align 8
  %361 = getelementptr inbounds %struct.Mat, %struct.Mat* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = mul nsw i32 0, %362
  %364 = load %struct.Mat*, %struct.Mat** %13, align 8
  %365 = getelementptr inbounds %struct.Mat, %struct.Mat* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = mul nsw i32 %363, %366
  %368 = load %struct.Mat*, %struct.Mat** %13, align 8
  %369 = getelementptr inbounds %struct.Mat, %struct.Mat* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = mul nsw i32 %367, %370
  %372 = load i32, i32* %17, align 4
  %373 = add nsw i32 %372, 1
  %374 = load %struct.Mat*, %struct.Mat** %13, align 8
  %375 = getelementptr inbounds %struct.Mat, %struct.Mat* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = mul nsw i32 %373, %376
  %378 = load %struct.Mat*, %struct.Mat** %13, align 8
  %379 = getelementptr inbounds %struct.Mat, %struct.Mat* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 4
  %381 = mul nsw i32 %377, %380
  %382 = add nsw i32 %371, %381
  %383 = load i32, i32* %18, align 4
  %384 = sub nsw i32 %383, 1
  %385 = load %struct.Mat*, %struct.Mat** %13, align 8
  %386 = getelementptr inbounds %struct.Mat, %struct.Mat* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = mul nsw i32 %384, %387
  %389 = add nsw i32 %382, %388
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds float, float* %359, i64 %392
  %394 = load float, float* %393, align 4
  %395 = fsub float %356, %394
  %396 = load %struct.Mat*, %struct.Mat** %13, align 8
  %397 = getelementptr inbounds %struct.Mat, %struct.Mat* %396, i32 0, i32 0
  %398 = load float*, float** %397, align 8
  %399 = load %struct.Mat*, %struct.Mat** %13, align 8
  %400 = getelementptr inbounds %struct.Mat, %struct.Mat* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = mul nsw i32 0, %401
  %403 = load %struct.Mat*, %struct.Mat** %13, align 8
  %404 = getelementptr inbounds %struct.Mat, %struct.Mat* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = mul nsw i32 %402, %405
  %407 = load %struct.Mat*, %struct.Mat** %13, align 8
  %408 = getelementptr inbounds %struct.Mat, %struct.Mat* %407, i32 0, i32 4
  %409 = load i32, i32* %408, align 4
  %410 = mul nsw i32 %406, %409
  %411 = load i32, i32* %17, align 4
  %412 = sub nsw i32 %411, 1
  %413 = load %struct.Mat*, %struct.Mat** %13, align 8
  %414 = getelementptr inbounds %struct.Mat, %struct.Mat* %413, i32 0, i32 3
  %415 = load i32, i32* %414, align 8
  %416 = mul nsw i32 %412, %415
  %417 = load %struct.Mat*, %struct.Mat** %13, align 8
  %418 = getelementptr inbounds %struct.Mat, %struct.Mat* %417, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = mul nsw i32 %416, %419
  %421 = add nsw i32 %410, %420
  %422 = load i32, i32* %18, align 4
  %423 = add nsw i32 %422, 1
  %424 = load %struct.Mat*, %struct.Mat** %13, align 8
  %425 = getelementptr inbounds %struct.Mat, %struct.Mat* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 4
  %427 = mul nsw i32 %423, %426
  %428 = add nsw i32 %421, %427
  %429 = load i32, i32* %19, align 4
  %430 = add nsw i32 %428, %429
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds float, float* %398, i64 %431
  %433 = load float, float* %432, align 4
  %434 = fsub float %395, %433
  %435 = load %struct.Mat*, %struct.Mat** %13, align 8
  %436 = getelementptr inbounds %struct.Mat, %struct.Mat* %435, i32 0, i32 0
  %437 = load float*, float** %436, align 8
  %438 = load %struct.Mat*, %struct.Mat** %13, align 8
  %439 = getelementptr inbounds %struct.Mat, %struct.Mat* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 4
  %441 = mul nsw i32 0, %440
  %442 = load %struct.Mat*, %struct.Mat** %13, align 8
  %443 = getelementptr inbounds %struct.Mat, %struct.Mat* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 8
  %445 = mul nsw i32 %441, %444
  %446 = load %struct.Mat*, %struct.Mat** %13, align 8
  %447 = getelementptr inbounds %struct.Mat, %struct.Mat* %446, i32 0, i32 4
  %448 = load i32, i32* %447, align 4
  %449 = mul nsw i32 %445, %448
  %450 = load i32, i32* %17, align 4
  %451 = sub nsw i32 %450, 1
  %452 = load %struct.Mat*, %struct.Mat** %13, align 8
  %453 = getelementptr inbounds %struct.Mat, %struct.Mat* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 8
  %455 = mul nsw i32 %451, %454
  %456 = load %struct.Mat*, %struct.Mat** %13, align 8
  %457 = getelementptr inbounds %struct.Mat, %struct.Mat* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = mul nsw i32 %455, %458
  %460 = add nsw i32 %449, %459
  %461 = load i32, i32* %18, align 4
  %462 = sub nsw i32 %461, 1
  %463 = load %struct.Mat*, %struct.Mat** %13, align 8
  %464 = getelementptr inbounds %struct.Mat, %struct.Mat* %463, i32 0, i32 4
  %465 = load i32, i32* %464, align 4
  %466 = mul nsw i32 %462, %465
  %467 = add nsw i32 %460, %466
  %468 = load i32, i32* %19, align 4
  %469 = add nsw i32 %467, %468
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds float, float* %437, i64 %470
  %472 = load float, float* %471, align 4
  %473 = fadd float %434, %472
  %474 = fmul float %318, %473
  %475 = fadd float %282, %474
  %476 = load %struct.Mat*, %struct.Mat** %11, align 8
  %477 = getelementptr inbounds %struct.Mat, %struct.Mat* %476, i32 0, i32 0
  %478 = load float*, float** %477, align 8
  %479 = load %struct.Mat*, %struct.Mat** %11, align 8
  %480 = getelementptr inbounds %struct.Mat, %struct.Mat* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = mul nsw i32 1, %481
  %483 = load %struct.Mat*, %struct.Mat** %11, align 8
  %484 = getelementptr inbounds %struct.Mat, %struct.Mat* %483, i32 0, i32 3
  %485 = load i32, i32* %484, align 8
  %486 = mul nsw i32 %482, %485
  %487 = load %struct.Mat*, %struct.Mat** %11, align 8
  %488 = getelementptr inbounds %struct.Mat, %struct.Mat* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 4
  %490 = mul nsw i32 %486, %489
  %491 = load i32, i32* %17, align 4
  %492 = load %struct.Mat*, %struct.Mat** %11, align 8
  %493 = getelementptr inbounds %struct.Mat, %struct.Mat* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 8
  %495 = mul nsw i32 %491, %494
  %496 = load %struct.Mat*, %struct.Mat** %11, align 8
  %497 = getelementptr inbounds %struct.Mat, %struct.Mat* %496, i32 0, i32 4
  %498 = load i32, i32* %497, align 4
  %499 = mul nsw i32 %495, %498
  %500 = add nsw i32 %490, %499
  %501 = load i32, i32* %18, align 4
  %502 = load %struct.Mat*, %struct.Mat** %11, align 8
  %503 = getelementptr inbounds %struct.Mat, %struct.Mat* %502, i32 0, i32 4
  %504 = load i32, i32* %503, align 4
  %505 = mul nsw i32 %501, %504
  %506 = add nsw i32 %500, %505
  %507 = load i32, i32* %19, align 4
  %508 = add nsw i32 %506, %507
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds float, float* %478, i64 %509
  %511 = load float, float* %510, align 4
  %512 = load %struct.Mat*, %struct.Mat** %13, align 8
  %513 = getelementptr inbounds %struct.Mat, %struct.Mat* %512, i32 0, i32 0
  %514 = load float*, float** %513, align 8
  %515 = load %struct.Mat*, %struct.Mat** %13, align 8
  %516 = getelementptr inbounds %struct.Mat, %struct.Mat* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = mul nsw i32 0, %517
  %519 = load %struct.Mat*, %struct.Mat** %13, align 8
  %520 = getelementptr inbounds %struct.Mat, %struct.Mat* %519, i32 0, i32 3
  %521 = load i32, i32* %520, align 8
  %522 = mul nsw i32 %518, %521
  %523 = load %struct.Mat*, %struct.Mat** %13, align 8
  %524 = getelementptr inbounds %struct.Mat, %struct.Mat* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 4
  %526 = mul nsw i32 %522, %525
  %527 = load i32, i32* %17, align 4
  %528 = load %struct.Mat*, %struct.Mat** %13, align 8
  %529 = getelementptr inbounds %struct.Mat, %struct.Mat* %528, i32 0, i32 3
  %530 = load i32, i32* %529, align 8
  %531 = mul nsw i32 %527, %530
  %532 = load %struct.Mat*, %struct.Mat** %13, align 8
  %533 = getelementptr inbounds %struct.Mat, %struct.Mat* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 4
  %535 = mul nsw i32 %531, %534
  %536 = add nsw i32 %526, %535
  %537 = load i32, i32* %18, align 4
  %538 = add nsw i32 %537, 1
  %539 = load %struct.Mat*, %struct.Mat** %13, align 8
  %540 = getelementptr inbounds %struct.Mat, %struct.Mat* %539, i32 0, i32 4
  %541 = load i32, i32* %540, align 4
  %542 = mul nsw i32 %538, %541
  %543 = add nsw i32 %536, %542
  %544 = load i32, i32* %19, align 4
  %545 = add nsw i32 %544, 1
  %546 = add nsw i32 %543, %545
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds float, float* %514, i64 %547
  %549 = load float, float* %548, align 4
  %550 = load %struct.Mat*, %struct.Mat** %13, align 8
  %551 = getelementptr inbounds %struct.Mat, %struct.Mat* %550, i32 0, i32 0
  %552 = load float*, float** %551, align 8
  %553 = load %struct.Mat*, %struct.Mat** %13, align 8
  %554 = getelementptr inbounds %struct.Mat, %struct.Mat* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = mul nsw i32 0, %555
  %557 = load %struct.Mat*, %struct.Mat** %13, align 8
  %558 = getelementptr inbounds %struct.Mat, %struct.Mat* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = mul nsw i32 %556, %559
  %561 = load %struct.Mat*, %struct.Mat** %13, align 8
  %562 = getelementptr inbounds %struct.Mat, %struct.Mat* %561, i32 0, i32 4
  %563 = load i32, i32* %562, align 4
  %564 = mul nsw i32 %560, %563
  %565 = load i32, i32* %17, align 4
  %566 = load %struct.Mat*, %struct.Mat** %13, align 8
  %567 = getelementptr inbounds %struct.Mat, %struct.Mat* %566, i32 0, i32 3
  %568 = load i32, i32* %567, align 8
  %569 = mul nsw i32 %565, %568
  %570 = load %struct.Mat*, %struct.Mat** %13, align 8
  %571 = getelementptr inbounds %struct.Mat, %struct.Mat* %570, i32 0, i32 4
  %572 = load i32, i32* %571, align 4
  %573 = mul nsw i32 %569, %572
  %574 = add nsw i32 %564, %573
  %575 = load i32, i32* %18, align 4
  %576 = sub nsw i32 %575, 1
  %577 = load %struct.Mat*, %struct.Mat** %13, align 8
  %578 = getelementptr inbounds %struct.Mat, %struct.Mat* %577, i32 0, i32 4
  %579 = load i32, i32* %578, align 4
  %580 = mul nsw i32 %576, %579
  %581 = add nsw i32 %574, %580
  %582 = load i32, i32* %19, align 4
  %583 = add nsw i32 %582, 1
  %584 = add nsw i32 %581, %583
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds float, float* %552, i64 %585
  %587 = load float, float* %586, align 4
  %588 = fsub float %549, %587
  %589 = load %struct.Mat*, %struct.Mat** %13, align 8
  %590 = getelementptr inbounds %struct.Mat, %struct.Mat* %589, i32 0, i32 0
  %591 = load float*, float** %590, align 8
  %592 = load %struct.Mat*, %struct.Mat** %13, align 8
  %593 = getelementptr inbounds %struct.Mat, %struct.Mat* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 4
  %595 = mul nsw i32 0, %594
  %596 = load %struct.Mat*, %struct.Mat** %13, align 8
  %597 = getelementptr inbounds %struct.Mat, %struct.Mat* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 8
  %599 = mul nsw i32 %595, %598
  %600 = load %struct.Mat*, %struct.Mat** %13, align 8
  %601 = getelementptr inbounds %struct.Mat, %struct.Mat* %600, i32 0, i32 4
  %602 = load i32, i32* %601, align 4
  %603 = mul nsw i32 %599, %602
  %604 = load i32, i32* %17, align 4
  %605 = load %struct.Mat*, %struct.Mat** %13, align 8
  %606 = getelementptr inbounds %struct.Mat, %struct.Mat* %605, i32 0, i32 3
  %607 = load i32, i32* %606, align 8
  %608 = mul nsw i32 %604, %607
  %609 = load %struct.Mat*, %struct.Mat** %13, align 8
  %610 = getelementptr inbounds %struct.Mat, %struct.Mat* %609, i32 0, i32 4
  %611 = load i32, i32* %610, align 4
  %612 = mul nsw i32 %608, %611
  %613 = add nsw i32 %603, %612
  %614 = load i32, i32* %18, align 4
  %615 = add nsw i32 %614, 1
  %616 = load %struct.Mat*, %struct.Mat** %13, align 8
  %617 = getelementptr inbounds %struct.Mat, %struct.Mat* %616, i32 0, i32 4
  %618 = load i32, i32* %617, align 4
  %619 = mul nsw i32 %615, %618
  %620 = add nsw i32 %613, %619
  %621 = load i32, i32* %19, align 4
  %622 = sub nsw i32 %621, 1
  %623 = add nsw i32 %620, %622
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds float, float* %591, i64 %624
  %626 = load float, float* %625, align 4
  %627 = fsub float %588, %626
  %628 = load %struct.Mat*, %struct.Mat** %13, align 8
  %629 = getelementptr inbounds %struct.Mat, %struct.Mat* %628, i32 0, i32 0
  %630 = load float*, float** %629, align 8
  %631 = load %struct.Mat*, %struct.Mat** %13, align 8
  %632 = getelementptr inbounds %struct.Mat, %struct.Mat* %631, i32 0, i32 2
  %633 = load i32, i32* %632, align 4
  %634 = mul nsw i32 0, %633
  %635 = load %struct.Mat*, %struct.Mat** %13, align 8
  %636 = getelementptr inbounds %struct.Mat, %struct.Mat* %635, i32 0, i32 3
  %637 = load i32, i32* %636, align 8
  %638 = mul nsw i32 %634, %637
  %639 = load %struct.Mat*, %struct.Mat** %13, align 8
  %640 = getelementptr inbounds %struct.Mat, %struct.Mat* %639, i32 0, i32 4
  %641 = load i32, i32* %640, align 4
  %642 = mul nsw i32 %638, %641
  %643 = load i32, i32* %17, align 4
  %644 = load %struct.Mat*, %struct.Mat** %13, align 8
  %645 = getelementptr inbounds %struct.Mat, %struct.Mat* %644, i32 0, i32 3
  %646 = load i32, i32* %645, align 8
  %647 = mul nsw i32 %643, %646
  %648 = load %struct.Mat*, %struct.Mat** %13, align 8
  %649 = getelementptr inbounds %struct.Mat, %struct.Mat* %648, i32 0, i32 4
  %650 = load i32, i32* %649, align 4
  %651 = mul nsw i32 %647, %650
  %652 = add nsw i32 %642, %651
  %653 = load i32, i32* %18, align 4
  %654 = sub nsw i32 %653, 1
  %655 = load %struct.Mat*, %struct.Mat** %13, align 8
  %656 = getelementptr inbounds %struct.Mat, %struct.Mat* %655, i32 0, i32 4
  %657 = load i32, i32* %656, align 4
  %658 = mul nsw i32 %654, %657
  %659 = add nsw i32 %652, %658
  %660 = load i32, i32* %19, align 4
  %661 = sub nsw i32 %660, 1
  %662 = add nsw i32 %659, %661
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds float, float* %630, i64 %663
  %665 = load float, float* %664, align 4
  %666 = fadd float %627, %665
  %667 = fmul float %511, %666
  %668 = fadd float %475, %667
  %669 = load %struct.Mat*, %struct.Mat** %11, align 8
  %670 = getelementptr inbounds %struct.Mat, %struct.Mat* %669, i32 0, i32 0
  %671 = load float*, float** %670, align 8
  %672 = load %struct.Mat*, %struct.Mat** %11, align 8
  %673 = getelementptr inbounds %struct.Mat, %struct.Mat* %672, i32 0, i32 2
  %674 = load i32, i32* %673, align 4
  %675 = mul nsw i32 2, %674
  %676 = load %struct.Mat*, %struct.Mat** %11, align 8
  %677 = getelementptr inbounds %struct.Mat, %struct.Mat* %676, i32 0, i32 3
  %678 = load i32, i32* %677, align 8
  %679 = mul nsw i32 %675, %678
  %680 = load %struct.Mat*, %struct.Mat** %11, align 8
  %681 = getelementptr inbounds %struct.Mat, %struct.Mat* %680, i32 0, i32 4
  %682 = load i32, i32* %681, align 4
  %683 = mul nsw i32 %679, %682
  %684 = load i32, i32* %17, align 4
  %685 = load %struct.Mat*, %struct.Mat** %11, align 8
  %686 = getelementptr inbounds %struct.Mat, %struct.Mat* %685, i32 0, i32 3
  %687 = load i32, i32* %686, align 8
  %688 = mul nsw i32 %684, %687
  %689 = load %struct.Mat*, %struct.Mat** %11, align 8
  %690 = getelementptr inbounds %struct.Mat, %struct.Mat* %689, i32 0, i32 4
  %691 = load i32, i32* %690, align 4
  %692 = mul nsw i32 %688, %691
  %693 = add nsw i32 %683, %692
  %694 = load i32, i32* %18, align 4
  %695 = load %struct.Mat*, %struct.Mat** %11, align 8
  %696 = getelementptr inbounds %struct.Mat, %struct.Mat* %695, i32 0, i32 4
  %697 = load i32, i32* %696, align 4
  %698 = mul nsw i32 %694, %697
  %699 = add nsw i32 %693, %698
  %700 = load i32, i32* %19, align 4
  %701 = add nsw i32 %699, %700
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds float, float* %671, i64 %702
  %704 = load float, float* %703, align 4
  %705 = load %struct.Mat*, %struct.Mat** %13, align 8
  %706 = getelementptr inbounds %struct.Mat, %struct.Mat* %705, i32 0, i32 0
  %707 = load float*, float** %706, align 8
  %708 = load %struct.Mat*, %struct.Mat** %13, align 8
  %709 = getelementptr inbounds %struct.Mat, %struct.Mat* %708, i32 0, i32 2
  %710 = load i32, i32* %709, align 4
  %711 = mul nsw i32 0, %710
  %712 = load %struct.Mat*, %struct.Mat** %13, align 8
  %713 = getelementptr inbounds %struct.Mat, %struct.Mat* %712, i32 0, i32 3
  %714 = load i32, i32* %713, align 8
  %715 = mul nsw i32 %711, %714
  %716 = load %struct.Mat*, %struct.Mat** %13, align 8
  %717 = getelementptr inbounds %struct.Mat, %struct.Mat* %716, i32 0, i32 4
  %718 = load i32, i32* %717, align 4
  %719 = mul nsw i32 %715, %718
  %720 = load i32, i32* %17, align 4
  %721 = add nsw i32 %720, 1
  %722 = load %struct.Mat*, %struct.Mat** %13, align 8
  %723 = getelementptr inbounds %struct.Mat, %struct.Mat* %722, i32 0, i32 3
  %724 = load i32, i32* %723, align 8
  %725 = mul nsw i32 %721, %724
  %726 = load %struct.Mat*, %struct.Mat** %13, align 8
  %727 = getelementptr inbounds %struct.Mat, %struct.Mat* %726, i32 0, i32 4
  %728 = load i32, i32* %727, align 4
  %729 = mul nsw i32 %725, %728
  %730 = add nsw i32 %719, %729
  %731 = load i32, i32* %18, align 4
  %732 = load %struct.Mat*, %struct.Mat** %13, align 8
  %733 = getelementptr inbounds %struct.Mat, %struct.Mat* %732, i32 0, i32 4
  %734 = load i32, i32* %733, align 4
  %735 = mul nsw i32 %731, %734
  %736 = add nsw i32 %730, %735
  %737 = load i32, i32* %19, align 4
  %738 = add nsw i32 %737, 1
  %739 = add nsw i32 %736, %738
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds float, float* %707, i64 %740
  %742 = load float, float* %741, align 4
  %743 = load %struct.Mat*, %struct.Mat** %13, align 8
  %744 = getelementptr inbounds %struct.Mat, %struct.Mat* %743, i32 0, i32 0
  %745 = load float*, float** %744, align 8
  %746 = load %struct.Mat*, %struct.Mat** %13, align 8
  %747 = getelementptr inbounds %struct.Mat, %struct.Mat* %746, i32 0, i32 2
  %748 = load i32, i32* %747, align 4
  %749 = mul nsw i32 0, %748
  %750 = load %struct.Mat*, %struct.Mat** %13, align 8
  %751 = getelementptr inbounds %struct.Mat, %struct.Mat* %750, i32 0, i32 3
  %752 = load i32, i32* %751, align 8
  %753 = mul nsw i32 %749, %752
  %754 = load %struct.Mat*, %struct.Mat** %13, align 8
  %755 = getelementptr inbounds %struct.Mat, %struct.Mat* %754, i32 0, i32 4
  %756 = load i32, i32* %755, align 4
  %757 = mul nsw i32 %753, %756
  %758 = load i32, i32* %17, align 4
  %759 = sub nsw i32 %758, 1
  %760 = load %struct.Mat*, %struct.Mat** %13, align 8
  %761 = getelementptr inbounds %struct.Mat, %struct.Mat* %760, i32 0, i32 3
  %762 = load i32, i32* %761, align 8
  %763 = mul nsw i32 %759, %762
  %764 = load %struct.Mat*, %struct.Mat** %13, align 8
  %765 = getelementptr inbounds %struct.Mat, %struct.Mat* %764, i32 0, i32 4
  %766 = load i32, i32* %765, align 4
  %767 = mul nsw i32 %763, %766
  %768 = add nsw i32 %757, %767
  %769 = load i32, i32* %18, align 4
  %770 = load %struct.Mat*, %struct.Mat** %13, align 8
  %771 = getelementptr inbounds %struct.Mat, %struct.Mat* %770, i32 0, i32 4
  %772 = load i32, i32* %771, align 4
  %773 = mul nsw i32 %769, %772
  %774 = add nsw i32 %768, %773
  %775 = load i32, i32* %19, align 4
  %776 = add nsw i32 %775, 1
  %777 = add nsw i32 %774, %776
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds float, float* %745, i64 %778
  %780 = load float, float* %779, align 4
  %781 = fsub float %742, %780
  %782 = load %struct.Mat*, %struct.Mat** %13, align 8
  %783 = getelementptr inbounds %struct.Mat, %struct.Mat* %782, i32 0, i32 0
  %784 = load float*, float** %783, align 8
  %785 = load %struct.Mat*, %struct.Mat** %13, align 8
  %786 = getelementptr inbounds %struct.Mat, %struct.Mat* %785, i32 0, i32 2
  %787 = load i32, i32* %786, align 4
  %788 = mul nsw i32 0, %787
  %789 = load %struct.Mat*, %struct.Mat** %13, align 8
  %790 = getelementptr inbounds %struct.Mat, %struct.Mat* %789, i32 0, i32 3
  %791 = load i32, i32* %790, align 8
  %792 = mul nsw i32 %788, %791
  %793 = load %struct.Mat*, %struct.Mat** %13, align 8
  %794 = getelementptr inbounds %struct.Mat, %struct.Mat* %793, i32 0, i32 4
  %795 = load i32, i32* %794, align 4
  %796 = mul nsw i32 %792, %795
  %797 = load i32, i32* %17, align 4
  %798 = add nsw i32 %797, 1
  %799 = load %struct.Mat*, %struct.Mat** %13, align 8
  %800 = getelementptr inbounds %struct.Mat, %struct.Mat* %799, i32 0, i32 3
  %801 = load i32, i32* %800, align 8
  %802 = mul nsw i32 %798, %801
  %803 = load %struct.Mat*, %struct.Mat** %13, align 8
  %804 = getelementptr inbounds %struct.Mat, %struct.Mat* %803, i32 0, i32 4
  %805 = load i32, i32* %804, align 4
  %806 = mul nsw i32 %802, %805
  %807 = add nsw i32 %796, %806
  %808 = load i32, i32* %18, align 4
  %809 = load %struct.Mat*, %struct.Mat** %13, align 8
  %810 = getelementptr inbounds %struct.Mat, %struct.Mat* %809, i32 0, i32 4
  %811 = load i32, i32* %810, align 4
  %812 = mul nsw i32 %808, %811
  %813 = add nsw i32 %807, %812
  %814 = load i32, i32* %19, align 4
  %815 = sub nsw i32 %814, 1
  %816 = add nsw i32 %813, %815
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds float, float* %784, i64 %817
  %819 = load float, float* %818, align 4
  %820 = fsub float %781, %819
  %821 = load %struct.Mat*, %struct.Mat** %13, align 8
  %822 = getelementptr inbounds %struct.Mat, %struct.Mat* %821, i32 0, i32 0
  %823 = load float*, float** %822, align 8
  %824 = load %struct.Mat*, %struct.Mat** %13, align 8
  %825 = getelementptr inbounds %struct.Mat, %struct.Mat* %824, i32 0, i32 2
  %826 = load i32, i32* %825, align 4
  %827 = mul nsw i32 0, %826
  %828 = load %struct.Mat*, %struct.Mat** %13, align 8
  %829 = getelementptr inbounds %struct.Mat, %struct.Mat* %828, i32 0, i32 3
  %830 = load i32, i32* %829, align 8
  %831 = mul nsw i32 %827, %830
  %832 = load %struct.Mat*, %struct.Mat** %13, align 8
  %833 = getelementptr inbounds %struct.Mat, %struct.Mat* %832, i32 0, i32 4
  %834 = load i32, i32* %833, align 4
  %835 = mul nsw i32 %831, %834
  %836 = load i32, i32* %17, align 4
  %837 = sub nsw i32 %836, 1
  %838 = load %struct.Mat*, %struct.Mat** %13, align 8
  %839 = getelementptr inbounds %struct.Mat, %struct.Mat* %838, i32 0, i32 3
  %840 = load i32, i32* %839, align 8
  %841 = mul nsw i32 %837, %840
  %842 = load %struct.Mat*, %struct.Mat** %13, align 8
  %843 = getelementptr inbounds %struct.Mat, %struct.Mat* %842, i32 0, i32 4
  %844 = load i32, i32* %843, align 4
  %845 = mul nsw i32 %841, %844
  %846 = add nsw i32 %835, %845
  %847 = load i32, i32* %18, align 4
  %848 = load %struct.Mat*, %struct.Mat** %13, align 8
  %849 = getelementptr inbounds %struct.Mat, %struct.Mat* %848, i32 0, i32 4
  %850 = load i32, i32* %849, align 4
  %851 = mul nsw i32 %847, %850
  %852 = add nsw i32 %846, %851
  %853 = load i32, i32* %19, align 4
  %854 = sub nsw i32 %853, 1
  %855 = add nsw i32 %852, %854
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds float, float* %823, i64 %856
  %858 = load float, float* %857, align 4
  %859 = fadd float %820, %858
  %860 = fmul float %704, %859
  %861 = fadd float %668, %860
  %862 = load %struct.Mat*, %struct.Mat** %12, align 8
  %863 = getelementptr inbounds %struct.Mat, %struct.Mat* %862, i32 0, i32 0
  %864 = load float*, float** %863, align 8
  %865 = load %struct.Mat*, %struct.Mat** %12, align 8
  %866 = getelementptr inbounds %struct.Mat, %struct.Mat* %865, i32 0, i32 2
  %867 = load i32, i32* %866, align 4
  %868 = mul nsw i32 0, %867
  %869 = load %struct.Mat*, %struct.Mat** %12, align 8
  %870 = getelementptr inbounds %struct.Mat, %struct.Mat* %869, i32 0, i32 3
  %871 = load i32, i32* %870, align 8
  %872 = mul nsw i32 %868, %871
  %873 = load %struct.Mat*, %struct.Mat** %12, align 8
  %874 = getelementptr inbounds %struct.Mat, %struct.Mat* %873, i32 0, i32 4
  %875 = load i32, i32* %874, align 4
  %876 = mul nsw i32 %872, %875
  %877 = load i32, i32* %17, align 4
  %878 = load %struct.Mat*, %struct.Mat** %12, align 8
  %879 = getelementptr inbounds %struct.Mat, %struct.Mat* %878, i32 0, i32 3
  %880 = load i32, i32* %879, align 8
  %881 = mul nsw i32 %877, %880
  %882 = load %struct.Mat*, %struct.Mat** %12, align 8
  %883 = getelementptr inbounds %struct.Mat, %struct.Mat* %882, i32 0, i32 4
  %884 = load i32, i32* %883, align 4
  %885 = mul nsw i32 %881, %884
  %886 = add nsw i32 %876, %885
  %887 = load i32, i32* %18, align 4
  %888 = load %struct.Mat*, %struct.Mat** %12, align 8
  %889 = getelementptr inbounds %struct.Mat, %struct.Mat* %888, i32 0, i32 4
  %890 = load i32, i32* %889, align 4
  %891 = mul nsw i32 %887, %890
  %892 = add nsw i32 %886, %891
  %893 = load i32, i32* %19, align 4
  %894 = add nsw i32 %892, %893
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds float, float* %864, i64 %895
  %897 = load float, float* %896, align 4
  %898 = load %struct.Mat*, %struct.Mat** %13, align 8
  %899 = getelementptr inbounds %struct.Mat, %struct.Mat* %898, i32 0, i32 0
  %900 = load float*, float** %899, align 8
  %901 = load %struct.Mat*, %struct.Mat** %13, align 8
  %902 = getelementptr inbounds %struct.Mat, %struct.Mat* %901, i32 0, i32 2
  %903 = load i32, i32* %902, align 4
  %904 = mul nsw i32 0, %903
  %905 = load %struct.Mat*, %struct.Mat** %13, align 8
  %906 = getelementptr inbounds %struct.Mat, %struct.Mat* %905, i32 0, i32 3
  %907 = load i32, i32* %906, align 8
  %908 = mul nsw i32 %904, %907
  %909 = load %struct.Mat*, %struct.Mat** %13, align 8
  %910 = getelementptr inbounds %struct.Mat, %struct.Mat* %909, i32 0, i32 4
  %911 = load i32, i32* %910, align 4
  %912 = mul nsw i32 %908, %911
  %913 = load i32, i32* %17, align 4
  %914 = sub nsw i32 %913, 1
  %915 = load %struct.Mat*, %struct.Mat** %13, align 8
  %916 = getelementptr inbounds %struct.Mat, %struct.Mat* %915, i32 0, i32 3
  %917 = load i32, i32* %916, align 8
  %918 = mul nsw i32 %914, %917
  %919 = load %struct.Mat*, %struct.Mat** %13, align 8
  %920 = getelementptr inbounds %struct.Mat, %struct.Mat* %919, i32 0, i32 4
  %921 = load i32, i32* %920, align 4
  %922 = mul nsw i32 %918, %921
  %923 = add nsw i32 %912, %922
  %924 = load i32, i32* %18, align 4
  %925 = load %struct.Mat*, %struct.Mat** %13, align 8
  %926 = getelementptr inbounds %struct.Mat, %struct.Mat* %925, i32 0, i32 4
  %927 = load i32, i32* %926, align 4
  %928 = mul nsw i32 %924, %927
  %929 = add nsw i32 %923, %928
  %930 = load i32, i32* %19, align 4
  %931 = add nsw i32 %929, %930
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds float, float* %900, i64 %932
  %934 = load float, float* %933, align 4
  %935 = fmul float %897, %934
  %936 = fadd float %861, %935
  %937 = load %struct.Mat*, %struct.Mat** %12, align 8
  %938 = getelementptr inbounds %struct.Mat, %struct.Mat* %937, i32 0, i32 0
  %939 = load float*, float** %938, align 8
  %940 = load %struct.Mat*, %struct.Mat** %12, align 8
  %941 = getelementptr inbounds %struct.Mat, %struct.Mat* %940, i32 0, i32 2
  %942 = load i32, i32* %941, align 4
  %943 = mul nsw i32 1, %942
  %944 = load %struct.Mat*, %struct.Mat** %12, align 8
  %945 = getelementptr inbounds %struct.Mat, %struct.Mat* %944, i32 0, i32 3
  %946 = load i32, i32* %945, align 8
  %947 = mul nsw i32 %943, %946
  %948 = load %struct.Mat*, %struct.Mat** %12, align 8
  %949 = getelementptr inbounds %struct.Mat, %struct.Mat* %948, i32 0, i32 4
  %950 = load i32, i32* %949, align 4
  %951 = mul nsw i32 %947, %950
  %952 = load i32, i32* %17, align 4
  %953 = load %struct.Mat*, %struct.Mat** %12, align 8
  %954 = getelementptr inbounds %struct.Mat, %struct.Mat* %953, i32 0, i32 3
  %955 = load i32, i32* %954, align 8
  %956 = mul nsw i32 %952, %955
  %957 = load %struct.Mat*, %struct.Mat** %12, align 8
  %958 = getelementptr inbounds %struct.Mat, %struct.Mat* %957, i32 0, i32 4
  %959 = load i32, i32* %958, align 4
  %960 = mul nsw i32 %956, %959
  %961 = add nsw i32 %951, %960
  %962 = load i32, i32* %18, align 4
  %963 = load %struct.Mat*, %struct.Mat** %12, align 8
  %964 = getelementptr inbounds %struct.Mat, %struct.Mat* %963, i32 0, i32 4
  %965 = load i32, i32* %964, align 4
  %966 = mul nsw i32 %962, %965
  %967 = add nsw i32 %961, %966
  %968 = load i32, i32* %19, align 4
  %969 = add nsw i32 %967, %968
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds float, float* %939, i64 %970
  %972 = load float, float* %971, align 4
  %973 = load %struct.Mat*, %struct.Mat** %13, align 8
  %974 = getelementptr inbounds %struct.Mat, %struct.Mat* %973, i32 0, i32 0
  %975 = load float*, float** %974, align 8
  %976 = load %struct.Mat*, %struct.Mat** %13, align 8
  %977 = getelementptr inbounds %struct.Mat, %struct.Mat* %976, i32 0, i32 2
  %978 = load i32, i32* %977, align 4
  %979 = mul nsw i32 0, %978
  %980 = load %struct.Mat*, %struct.Mat** %13, align 8
  %981 = getelementptr inbounds %struct.Mat, %struct.Mat* %980, i32 0, i32 3
  %982 = load i32, i32* %981, align 8
  %983 = mul nsw i32 %979, %982
  %984 = load %struct.Mat*, %struct.Mat** %13, align 8
  %985 = getelementptr inbounds %struct.Mat, %struct.Mat* %984, i32 0, i32 4
  %986 = load i32, i32* %985, align 4
  %987 = mul nsw i32 %983, %986
  %988 = load i32, i32* %17, align 4
  %989 = load %struct.Mat*, %struct.Mat** %13, align 8
  %990 = getelementptr inbounds %struct.Mat, %struct.Mat* %989, i32 0, i32 3
  %991 = load i32, i32* %990, align 8
  %992 = mul nsw i32 %988, %991
  %993 = load %struct.Mat*, %struct.Mat** %13, align 8
  %994 = getelementptr inbounds %struct.Mat, %struct.Mat* %993, i32 0, i32 4
  %995 = load i32, i32* %994, align 4
  %996 = mul nsw i32 %992, %995
  %997 = add nsw i32 %987, %996
  %998 = load i32, i32* %18, align 4
  %999 = sub nsw i32 %998, 1
  %1000 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1001 = getelementptr inbounds %struct.Mat, %struct.Mat* %1000, i32 0, i32 4
  %1002 = load i32, i32* %1001, align 4
  %1003 = mul nsw i32 %999, %1002
  %1004 = add nsw i32 %997, %1003
  %1005 = load i32, i32* %19, align 4
  %1006 = add nsw i32 %1004, %1005
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds float, float* %975, i64 %1007
  %1009 = load float, float* %1008, align 4
  %1010 = fmul float %972, %1009
  %1011 = fadd float %936, %1010
  %1012 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1013 = getelementptr inbounds %struct.Mat, %struct.Mat* %1012, i32 0, i32 0
  %1014 = load float*, float** %1013, align 8
  %1015 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1016 = getelementptr inbounds %struct.Mat, %struct.Mat* %1015, i32 0, i32 2
  %1017 = load i32, i32* %1016, align 4
  %1018 = mul nsw i32 2, %1017
  %1019 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1020 = getelementptr inbounds %struct.Mat, %struct.Mat* %1019, i32 0, i32 3
  %1021 = load i32, i32* %1020, align 8
  %1022 = mul nsw i32 %1018, %1021
  %1023 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1024 = getelementptr inbounds %struct.Mat, %struct.Mat* %1023, i32 0, i32 4
  %1025 = load i32, i32* %1024, align 4
  %1026 = mul nsw i32 %1022, %1025
  %1027 = load i32, i32* %17, align 4
  %1028 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1029 = getelementptr inbounds %struct.Mat, %struct.Mat* %1028, i32 0, i32 3
  %1030 = load i32, i32* %1029, align 8
  %1031 = mul nsw i32 %1027, %1030
  %1032 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1033 = getelementptr inbounds %struct.Mat, %struct.Mat* %1032, i32 0, i32 4
  %1034 = load i32, i32* %1033, align 4
  %1035 = mul nsw i32 %1031, %1034
  %1036 = add nsw i32 %1026, %1035
  %1037 = load i32, i32* %18, align 4
  %1038 = load %struct.Mat*, %struct.Mat** %12, align 8
  %1039 = getelementptr inbounds %struct.Mat, %struct.Mat* %1038, i32 0, i32 4
  %1040 = load i32, i32* %1039, align 4
  %1041 = mul nsw i32 %1037, %1040
  %1042 = add nsw i32 %1036, %1041
  %1043 = load i32, i32* %19, align 4
  %1044 = add nsw i32 %1042, %1043
  %1045 = sext i32 %1044 to i64
  %1046 = getelementptr inbounds float, float* %1014, i64 %1045
  %1047 = load float, float* %1046, align 4
  %1048 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1049 = getelementptr inbounds %struct.Mat, %struct.Mat* %1048, i32 0, i32 0
  %1050 = load float*, float** %1049, align 8
  %1051 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1052 = getelementptr inbounds %struct.Mat, %struct.Mat* %1051, i32 0, i32 2
  %1053 = load i32, i32* %1052, align 4
  %1054 = mul nsw i32 0, %1053
  %1055 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1056 = getelementptr inbounds %struct.Mat, %struct.Mat* %1055, i32 0, i32 3
  %1057 = load i32, i32* %1056, align 8
  %1058 = mul nsw i32 %1054, %1057
  %1059 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1060 = getelementptr inbounds %struct.Mat, %struct.Mat* %1059, i32 0, i32 4
  %1061 = load i32, i32* %1060, align 4
  %1062 = mul nsw i32 %1058, %1061
  %1063 = load i32, i32* %17, align 4
  %1064 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1065 = getelementptr inbounds %struct.Mat, %struct.Mat* %1064, i32 0, i32 3
  %1066 = load i32, i32* %1065, align 8
  %1067 = mul nsw i32 %1063, %1066
  %1068 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1069 = getelementptr inbounds %struct.Mat, %struct.Mat* %1068, i32 0, i32 4
  %1070 = load i32, i32* %1069, align 4
  %1071 = mul nsw i32 %1067, %1070
  %1072 = add nsw i32 %1062, %1071
  %1073 = load i32, i32* %18, align 4
  %1074 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1075 = getelementptr inbounds %struct.Mat, %struct.Mat* %1074, i32 0, i32 4
  %1076 = load i32, i32* %1075, align 4
  %1077 = mul nsw i32 %1073, %1076
  %1078 = add nsw i32 %1072, %1077
  %1079 = load i32, i32* %19, align 4
  %1080 = sub nsw i32 %1079, 1
  %1081 = add nsw i32 %1078, %1080
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds float, float* %1050, i64 %1082
  %1084 = load float, float* %1083, align 4
  %1085 = fmul float %1047, %1084
  %1086 = fadd float %1011, %1085
  %1087 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1088 = getelementptr inbounds %struct.Mat, %struct.Mat* %1087, i32 0, i32 0
  %1089 = load float*, float** %1088, align 8
  %1090 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1091 = getelementptr inbounds %struct.Mat, %struct.Mat* %1090, i32 0, i32 2
  %1092 = load i32, i32* %1091, align 4
  %1093 = mul nsw i32 0, %1092
  %1094 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1095 = getelementptr inbounds %struct.Mat, %struct.Mat* %1094, i32 0, i32 3
  %1096 = load i32, i32* %1095, align 8
  %1097 = mul nsw i32 %1093, %1096
  %1098 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1099 = getelementptr inbounds %struct.Mat, %struct.Mat* %1098, i32 0, i32 4
  %1100 = load i32, i32* %1099, align 4
  %1101 = mul nsw i32 %1097, %1100
  %1102 = load i32, i32* %17, align 4
  %1103 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1104 = getelementptr inbounds %struct.Mat, %struct.Mat* %1103, i32 0, i32 3
  %1105 = load i32, i32* %1104, align 8
  %1106 = mul nsw i32 %1102, %1105
  %1107 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1108 = getelementptr inbounds %struct.Mat, %struct.Mat* %1107, i32 0, i32 4
  %1109 = load i32, i32* %1108, align 4
  %1110 = mul nsw i32 %1106, %1109
  %1111 = add nsw i32 %1101, %1110
  %1112 = load i32, i32* %18, align 4
  %1113 = load %struct.Mat*, %struct.Mat** %15, align 8
  %1114 = getelementptr inbounds %struct.Mat, %struct.Mat* %1113, i32 0, i32 4
  %1115 = load i32, i32* %1114, align 4
  %1116 = mul nsw i32 %1112, %1115
  %1117 = add nsw i32 %1111, %1116
  %1118 = load i32, i32* %19, align 4
  %1119 = add nsw i32 %1117, %1118
  %1120 = sext i32 %1119 to i64
  %1121 = getelementptr inbounds float, float* %1089, i64 %1120
  %1122 = load float, float* %1121, align 4
  %1123 = fadd float %1086, %1122
  store float %1123, float* %25, align 4
  %1124 = load float, float* %25, align 4
  %1125 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1126 = getelementptr inbounds %struct.Mat, %struct.Mat* %1125, i32 0, i32 0
  %1127 = load float*, float** %1126, align 8
  %1128 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1129 = getelementptr inbounds %struct.Mat, %struct.Mat* %1128, i32 0, i32 2
  %1130 = load i32, i32* %1129, align 4
  %1131 = mul nsw i32 3, %1130
  %1132 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1133 = getelementptr inbounds %struct.Mat, %struct.Mat* %1132, i32 0, i32 3
  %1134 = load i32, i32* %1133, align 8
  %1135 = mul nsw i32 %1131, %1134
  %1136 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1137 = getelementptr inbounds %struct.Mat, %struct.Mat* %1136, i32 0, i32 4
  %1138 = load i32, i32* %1137, align 4
  %1139 = mul nsw i32 %1135, %1138
  %1140 = load i32, i32* %17, align 4
  %1141 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1142 = getelementptr inbounds %struct.Mat, %struct.Mat* %1141, i32 0, i32 3
  %1143 = load i32, i32* %1142, align 8
  %1144 = mul nsw i32 %1140, %1143
  %1145 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1146 = getelementptr inbounds %struct.Mat, %struct.Mat* %1145, i32 0, i32 4
  %1147 = load i32, i32* %1146, align 4
  %1148 = mul nsw i32 %1144, %1147
  %1149 = add nsw i32 %1139, %1148
  %1150 = load i32, i32* %18, align 4
  %1151 = load %struct.Mat*, %struct.Mat** %10, align 8
  %1152 = getelementptr inbounds %struct.Mat, %struct.Mat* %1151, i32 0, i32 4
  %1153 = load i32, i32* %1152, align 4
  %1154 = mul nsw i32 %1150, %1153
  %1155 = add nsw i32 %1149, %1154
  %1156 = load i32, i32* %19, align 4
  %1157 = add nsw i32 %1155, %1156
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds float, float* %1127, i64 %1158
  %1160 = load float, float* %1159, align 4
  %1161 = fmul float %1124, %1160
  %1162 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1163 = getelementptr inbounds %struct.Mat, %struct.Mat* %1162, i32 0, i32 0
  %1164 = load float*, float** %1163, align 8
  %1165 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1166 = getelementptr inbounds %struct.Mat, %struct.Mat* %1165, i32 0, i32 2
  %1167 = load i32, i32* %1166, align 4
  %1168 = mul nsw i32 0, %1167
  %1169 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1170 = getelementptr inbounds %struct.Mat, %struct.Mat* %1169, i32 0, i32 3
  %1171 = load i32, i32* %1170, align 8
  %1172 = mul nsw i32 %1168, %1171
  %1173 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1174 = getelementptr inbounds %struct.Mat, %struct.Mat* %1173, i32 0, i32 4
  %1175 = load i32, i32* %1174, align 4
  %1176 = mul nsw i32 %1172, %1175
  %1177 = load i32, i32* %17, align 4
  %1178 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1179 = getelementptr inbounds %struct.Mat, %struct.Mat* %1178, i32 0, i32 3
  %1180 = load i32, i32* %1179, align 8
  %1181 = mul nsw i32 %1177, %1180
  %1182 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1183 = getelementptr inbounds %struct.Mat, %struct.Mat* %1182, i32 0, i32 4
  %1184 = load i32, i32* %1183, align 4
  %1185 = mul nsw i32 %1181, %1184
  %1186 = add nsw i32 %1176, %1185
  %1187 = load i32, i32* %18, align 4
  %1188 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1189 = getelementptr inbounds %struct.Mat, %struct.Mat* %1188, i32 0, i32 4
  %1190 = load i32, i32* %1189, align 4
  %1191 = mul nsw i32 %1187, %1190
  %1192 = add nsw i32 %1186, %1191
  %1193 = load i32, i32* %19, align 4
  %1194 = add nsw i32 %1192, %1193
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds float, float* %1164, i64 %1195
  %1197 = load float, float* %1196, align 4
  %1198 = fsub float %1161, %1197
  %1199 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1200 = getelementptr inbounds %struct.Mat, %struct.Mat* %1199, i32 0, i32 0
  %1201 = load float*, float** %1200, align 8
  %1202 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1203 = getelementptr inbounds %struct.Mat, %struct.Mat* %1202, i32 0, i32 2
  %1204 = load i32, i32* %1203, align 4
  %1205 = mul nsw i32 0, %1204
  %1206 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1207 = getelementptr inbounds %struct.Mat, %struct.Mat* %1206, i32 0, i32 3
  %1208 = load i32, i32* %1207, align 8
  %1209 = mul nsw i32 %1205, %1208
  %1210 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1211 = getelementptr inbounds %struct.Mat, %struct.Mat* %1210, i32 0, i32 4
  %1212 = load i32, i32* %1211, align 4
  %1213 = mul nsw i32 %1209, %1212
  %1214 = load i32, i32* %17, align 4
  %1215 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1216 = getelementptr inbounds %struct.Mat, %struct.Mat* %1215, i32 0, i32 3
  %1217 = load i32, i32* %1216, align 8
  %1218 = mul nsw i32 %1214, %1217
  %1219 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1220 = getelementptr inbounds %struct.Mat, %struct.Mat* %1219, i32 0, i32 4
  %1221 = load i32, i32* %1220, align 4
  %1222 = mul nsw i32 %1218, %1221
  %1223 = add nsw i32 %1213, %1222
  %1224 = load i32, i32* %18, align 4
  %1225 = load %struct.Mat*, %struct.Mat** %14, align 8
  %1226 = getelementptr inbounds %struct.Mat, %struct.Mat* %1225, i32 0, i32 4
  %1227 = load i32, i32* %1226, align 4
  %1228 = mul nsw i32 %1224, %1227
  %1229 = add nsw i32 %1223, %1228
  %1230 = load i32, i32* %19, align 4
  %1231 = add nsw i32 %1229, %1230
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds float, float* %1201, i64 %1232
  %1234 = load float, float* %1233, align 4
  %1235 = fmul float %1198, %1234
  store float %1235, float* %26, align 4
  %1236 = load float, float* %26, align 4
  %1237 = load float, float* %26, align 4
  %1238 = fmul float %1236, %1237
  %1239 = load float, float* %24, align 4
  %1240 = fadd float %1239, %1238
  store float %1240, float* %24, align 4
  %1241 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1242 = getelementptr inbounds %struct.Mat, %struct.Mat* %1241, i32 0, i32 0
  %1243 = load float*, float** %1242, align 8
  %1244 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1245 = getelementptr inbounds %struct.Mat, %struct.Mat* %1244, i32 0, i32 2
  %1246 = load i32, i32* %1245, align 4
  %1247 = mul nsw i32 0, %1246
  %1248 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1249 = getelementptr inbounds %struct.Mat, %struct.Mat* %1248, i32 0, i32 3
  %1250 = load i32, i32* %1249, align 8
  %1251 = mul nsw i32 %1247, %1250
  %1252 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1253 = getelementptr inbounds %struct.Mat, %struct.Mat* %1252, i32 0, i32 4
  %1254 = load i32, i32* %1253, align 4
  %1255 = mul nsw i32 %1251, %1254
  %1256 = load i32, i32* %17, align 4
  %1257 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1258 = getelementptr inbounds %struct.Mat, %struct.Mat* %1257, i32 0, i32 3
  %1259 = load i32, i32* %1258, align 8
  %1260 = mul nsw i32 %1256, %1259
  %1261 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1262 = getelementptr inbounds %struct.Mat, %struct.Mat* %1261, i32 0, i32 4
  %1263 = load i32, i32* %1262, align 4
  %1264 = mul nsw i32 %1260, %1263
  %1265 = add nsw i32 %1255, %1264
  %1266 = load i32, i32* %18, align 4
  %1267 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1268 = getelementptr inbounds %struct.Mat, %struct.Mat* %1267, i32 0, i32 4
  %1269 = load i32, i32* %1268, align 4
  %1270 = mul nsw i32 %1266, %1269
  %1271 = add nsw i32 %1265, %1270
  %1272 = load i32, i32* %19, align 4
  %1273 = add nsw i32 %1271, %1272
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds float, float* %1243, i64 %1274
  %1276 = load float, float* %1275, align 4
  %1277 = load float, float* @omega, align 4
  %1278 = load float, float* %26, align 4
  %1279 = fmul float %1277, %1278
  %1280 = fadd float %1276, %1279
  %1281 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1282 = getelementptr inbounds %struct.Mat, %struct.Mat* %1281, i32 0, i32 0
  %1283 = load float*, float** %1282, align 8
  %1284 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1285 = getelementptr inbounds %struct.Mat, %struct.Mat* %1284, i32 0, i32 2
  %1286 = load i32, i32* %1285, align 4
  %1287 = mul nsw i32 0, %1286
  %1288 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1289 = getelementptr inbounds %struct.Mat, %struct.Mat* %1288, i32 0, i32 3
  %1290 = load i32, i32* %1289, align 8
  %1291 = mul nsw i32 %1287, %1290
  %1292 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1293 = getelementptr inbounds %struct.Mat, %struct.Mat* %1292, i32 0, i32 4
  %1294 = load i32, i32* %1293, align 4
  %1295 = mul nsw i32 %1291, %1294
  %1296 = load i32, i32* %17, align 4
  %1297 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1298 = getelementptr inbounds %struct.Mat, %struct.Mat* %1297, i32 0, i32 3
  %1299 = load i32, i32* %1298, align 8
  %1300 = mul nsw i32 %1296, %1299
  %1301 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1302 = getelementptr inbounds %struct.Mat, %struct.Mat* %1301, i32 0, i32 4
  %1303 = load i32, i32* %1302, align 4
  %1304 = mul nsw i32 %1300, %1303
  %1305 = add nsw i32 %1295, %1304
  %1306 = load i32, i32* %18, align 4
  %1307 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1308 = getelementptr inbounds %struct.Mat, %struct.Mat* %1307, i32 0, i32 4
  %1309 = load i32, i32* %1308, align 4
  %1310 = mul nsw i32 %1306, %1309
  %1311 = add nsw i32 %1305, %1310
  %1312 = load i32, i32* %19, align 4
  %1313 = add nsw i32 %1311, %1312
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds float, float* %1283, i64 %1314
  store float %1280, float* %1315, align 4
  br label %1316

1316:                                             ; preds = %58
  %1317 = load i32, i32* %19, align 4
  %1318 = add nsw i32 %1317, 1
  store i32 %1318, i32* %19, align 4
  br label %54

1319:                                             ; preds = %54
  br label %1320

1320:                                             ; preds = %1319
  %1321 = load i32, i32* %18, align 4
  %1322 = add nsw i32 %1321, 1
  store i32 %1322, i32* %18, align 4
  br label %49

1323:                                             ; preds = %49
  br label %1324

1324:                                             ; preds = %1323
  %1325 = load i32, i32* %17, align 4
  %1326 = add nsw i32 %1325, 1
  store i32 %1326, i32* %17, align 4
  br label %44

1327:                                             ; preds = %44
  store i32 1, i32* %17, align 4
  br label %1328

1328:                                             ; preds = %1422, %1327
  %1329 = load i32, i32* %17, align 4
  %1330 = load i32, i32* %21, align 4
  %1331 = icmp slt i32 %1329, %1330
  br i1 %1331, label %1332, label %1425

1332:                                             ; preds = %1328
  store i32 1, i32* %18, align 4
  br label %1333

1333:                                             ; preds = %1418, %1332
  %1334 = load i32, i32* %18, align 4
  %1335 = load i32, i32* %22, align 4
  %1336 = icmp slt i32 %1334, %1335
  br i1 %1336, label %1337, label %1421

1337:                                             ; preds = %1333
  store i32 1, i32* %19, align 4
  br label %1338

1338:                                             ; preds = %1414, %1337
  %1339 = load i32, i32* %19, align 4
  %1340 = load i32, i32* %23, align 4
  %1341 = icmp slt i32 %1339, %1340
  br i1 %1341, label %1342, label %1417

1342:                                             ; preds = %1338
  %1343 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1344 = getelementptr inbounds %struct.Mat, %struct.Mat* %1343, i32 0, i32 0
  %1345 = load float*, float** %1344, align 8
  %1346 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1347 = getelementptr inbounds %struct.Mat, %struct.Mat* %1346, i32 0, i32 2
  %1348 = load i32, i32* %1347, align 4
  %1349 = mul nsw i32 0, %1348
  %1350 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1351 = getelementptr inbounds %struct.Mat, %struct.Mat* %1350, i32 0, i32 3
  %1352 = load i32, i32* %1351, align 8
  %1353 = mul nsw i32 %1349, %1352
  %1354 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1355 = getelementptr inbounds %struct.Mat, %struct.Mat* %1354, i32 0, i32 4
  %1356 = load i32, i32* %1355, align 4
  %1357 = mul nsw i32 %1353, %1356
  %1358 = load i32, i32* %17, align 4
  %1359 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1360 = getelementptr inbounds %struct.Mat, %struct.Mat* %1359, i32 0, i32 3
  %1361 = load i32, i32* %1360, align 8
  %1362 = mul nsw i32 %1358, %1361
  %1363 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1364 = getelementptr inbounds %struct.Mat, %struct.Mat* %1363, i32 0, i32 4
  %1365 = load i32, i32* %1364, align 4
  %1366 = mul nsw i32 %1362, %1365
  %1367 = add nsw i32 %1357, %1366
  %1368 = load i32, i32* %18, align 4
  %1369 = load %struct.Mat*, %struct.Mat** %16, align 8
  %1370 = getelementptr inbounds %struct.Mat, %struct.Mat* %1369, i32 0, i32 4
  %1371 = load i32, i32* %1370, align 4
  %1372 = mul nsw i32 %1368, %1371
  %1373 = add nsw i32 %1367, %1372
  %1374 = load i32, i32* %19, align 4
  %1375 = add nsw i32 %1373, %1374
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds float, float* %1345, i64 %1376
  %1378 = load float, float* %1377, align 4
  %1379 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1380 = getelementptr inbounds %struct.Mat, %struct.Mat* %1379, i32 0, i32 0
  %1381 = load float*, float** %1380, align 8
  %1382 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1383 = getelementptr inbounds %struct.Mat, %struct.Mat* %1382, i32 0, i32 2
  %1384 = load i32, i32* %1383, align 4
  %1385 = mul nsw i32 0, %1384
  %1386 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1387 = getelementptr inbounds %struct.Mat, %struct.Mat* %1386, i32 0, i32 3
  %1388 = load i32, i32* %1387, align 8
  %1389 = mul nsw i32 %1385, %1388
  %1390 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1391 = getelementptr inbounds %struct.Mat, %struct.Mat* %1390, i32 0, i32 4
  %1392 = load i32, i32* %1391, align 4
  %1393 = mul nsw i32 %1389, %1392
  %1394 = load i32, i32* %17, align 4
  %1395 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1396 = getelementptr inbounds %struct.Mat, %struct.Mat* %1395, i32 0, i32 3
  %1397 = load i32, i32* %1396, align 8
  %1398 = mul nsw i32 %1394, %1397
  %1399 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1400 = getelementptr inbounds %struct.Mat, %struct.Mat* %1399, i32 0, i32 4
  %1401 = load i32, i32* %1400, align 4
  %1402 = mul nsw i32 %1398, %1401
  %1403 = add nsw i32 %1393, %1402
  %1404 = load i32, i32* %18, align 4
  %1405 = load %struct.Mat*, %struct.Mat** %13, align 8
  %1406 = getelementptr inbounds %struct.Mat, %struct.Mat* %1405, i32 0, i32 4
  %1407 = load i32, i32* %1406, align 4
  %1408 = mul nsw i32 %1404, %1407
  %1409 = add nsw i32 %1403, %1408
  %1410 = load i32, i32* %19, align 4
  %1411 = add nsw i32 %1409, %1410
  %1412 = sext i32 %1411 to i64
  %1413 = getelementptr inbounds float, float* %1381, i64 %1412
  store float %1378, float* %1413, align 4
  br label %1414

1414:                                             ; preds = %1342
  %1415 = load i32, i32* %19, align 4
  %1416 = add nsw i32 %1415, 1
  store i32 %1416, i32* %19, align 4
  br label %1338

1417:                                             ; preds = %1338
  br label %1418

1418:                                             ; preds = %1417
  %1419 = load i32, i32* %18, align 4
  %1420 = add nsw i32 %1419, 1
  store i32 %1420, i32* %18, align 4
  br label %1333

1421:                                             ; preds = %1333
  br label %1422

1422:                                             ; preds = %1421
  %1423 = load i32, i32* %17, align 4
  %1424 = add nsw i32 %1423, 1
  store i32 %1424, i32* %17, align 4
  br label %1328

1425:                                             ; preds = %1328
  br label %1426

1426:                                             ; preds = %1425
  %1427 = load i32, i32* %20, align 4
  %1428 = add nsw i32 %1427, 1
  store i32 %1428, i32* %20, align 4
  br label %39

1429:                                             ; preds = %39
  %1430 = load float, float* %24, align 4
  ret float %1430
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @clearMat(%struct.Mat* %0) #0 {
  %2 = alloca %struct.Mat*, align 8
  store %struct.Mat* %0, %struct.Mat** %2, align 8
  %3 = load %struct.Mat*, %struct.Mat** %2, align 8
  %4 = getelementptr inbounds %struct.Mat, %struct.Mat* %3, i32 0, i32 0
  %5 = load float*, float** %4, align 8
  %6 = icmp ne float* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.Mat*, %struct.Mat** %2, align 8
  %9 = getelementptr inbounds %struct.Mat, %struct.Mat* %8, i32 0, i32 0
  %10 = load float*, float** %9, align 8
  %11 = bitcast float* %10 to i8*
  call void @free(i8* %11) #5
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.Mat*, %struct.Mat** %2, align 8
  %14 = getelementptr inbounds %struct.Mat, %struct.Mat* %13, i32 0, i32 0
  store float* null, float** %14, align 8
  %15 = load %struct.Mat*, %struct.Mat** %2, align 8
  %16 = getelementptr inbounds %struct.Mat, %struct.Mat* %15, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = load %struct.Mat*, %struct.Mat** %2, align 8
  %18 = getelementptr inbounds %struct.Mat, %struct.Mat* %17, i32 0, i32 3
  store i32 0, i32* %18, align 8
  %19 = load %struct.Mat*, %struct.Mat** %2, align 8
  %20 = getelementptr inbounds %struct.Mat, %struct.Mat* %19, i32 0, i32 2
  store i32 0, i32* %20, align 4
  %21 = load %struct.Mat*, %struct.Mat** %2, align 8
  %22 = getelementptr inbounds %struct.Mat, %struct.Mat* %21, i32 0, i32 4
  store i32 0, i32* %22, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @fflop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = sub nsw i32 %7, 2
  %9 = sitofp i32 %8 to double
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 2
  %12 = sitofp i32 %11 to double
  %13 = fmul double %9, %12
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 2
  %16 = sitofp i32 %15 to double
  %17 = fmul double %13, %16
  %18 = fmul double %17, 3.400000e+01
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @mflops(i32 %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %7 = load double, double* %6, align 8
  %8 = load double, double* %5, align 8
  %9 = fdiv double %7, %8
  %10 = fmul double %9, 0x3EB0C6F7A0B5ED8D
  %11 = load i32, i32* %4, align 4
  %12 = sitofp i32 %11 to double
  %13 = fmul double %10, %12
  ret double %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_param(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8, %2
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 32, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 32, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 64, i32* %18, align 4
  br label %81

19:                                               ; preds = %8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)) #6
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #6
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23, %19
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 64, i32* %29, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 64, i32* %31, align 4
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  store i32 128, i32* %33, align 4
  br label %81

34:                                               ; preds = %23
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)) #6
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38, %34
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 128, i32* %44, align 4
  %45 = load i32*, i32** %3, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 128, i32* %46, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 256, i32* %48, align 4
  br label %81

49:                                               ; preds = %38
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)) #6
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)) #6
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53, %49
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 256, i32* %59, align 4
  %60 = load i32*, i32** %3, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 256, i32* %61, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  store i32 512, i32* %63, align 4
  br label %81

64:                                               ; preds = %53
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #6
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #6
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %64
  %73 = load i32*, i32** %3, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 512, i32* %74, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 512, i32* %76, align 4
  %77 = load i32*, i32** %3, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 1024, i32* %78, align 4
  br label %81

79:                                               ; preds = %68
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 6) #7
  unreachable

81:                                               ; preds = %72, %57, %42, %27, %12
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @second() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca double, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #5
  %4 = load i32, i32* @second.base_sec, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = load i32, i32* @second.base_usec, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* @second.base_sec, align 4
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @second.base_usec, align 4
  store double 0.000000e+00, double* %2, align 8
  br label %31

16:                                               ; preds = %6, %0
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @second.base_sec, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %18, %20
  %22 = sitofp i64 %21 to double
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @second.base_usec, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %24, %26
  %28 = sitofp i64 %27 to double
  %29 = fdiv double %28, 1.000000e+06
  %30 = fadd double %22, %29
  store double %30, double* %2, align 8
  br label %31

31:                                               ; preds = %16, %9
  %32 = load double, double* %2, align 8
  ret double %32
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
