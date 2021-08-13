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
%struct.BPNN = type { i32, i32, i32, float*, float*, float*, float*, float*, float*, float**, float**, float**, float** }

@.str = private unnamed_addr constant [28 x i8] c"Performing CPU computation\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"ALLOC_1D_DBL: Couldn't allocate array of floats\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [51 x i8] c"ALLOC_2D_DBL: Couldn't allocate array of dbl ptrs\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Random number generator seed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"BPNN_CREATE: Couldn't allocate neural network\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Saving %dx%dx%d network to '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Reading '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"'%s' contains a %dx%dx%d network\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Reading input weights...\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Done\0AReading hidden weights...\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1
@layer_size = dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Input layer size : %d\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [26 x i8] c"Starting training kernel\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [15 x i8] c"Training done\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3.16 = private unnamed_addr constant [41 x i8] c"usage: backprop <num of input elements>\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local double @gettime() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #5
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

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8**, i8*** %4, align 8
  %7 = call i32 @setup(i32 %5, i8** %6)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_train_kernel(%struct.BPNN* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.BPNN*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.BPNN* %0, %struct.BPNN** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %12 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %13 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %16 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %19 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %23 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %22, i32 0, i32 3
  %24 = load float*, float** %23, align 8
  %25 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %26 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %25, i32 0, i32 4
  %27 = load float*, float** %26, align 8
  %28 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %29 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %28, i32 0, i32 9
  %30 = load float**, float*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  call void @bpnn_layerforward(float* %24, float* %27, float** %30, i32 %31, i32 %32)
  %33 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %34 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %33, i32 0, i32 4
  %35 = load float*, float** %34, align 8
  %36 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %37 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %36, i32 0, i32 5
  %38 = load float*, float** %37, align 8
  %39 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %40 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %39, i32 0, i32 10
  %41 = load float**, float*** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  call void @bpnn_layerforward(float* %35, float* %38, float** %41, i32 %42, i32 %43)
  %44 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %45 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %44, i32 0, i32 7
  %46 = load float*, float** %45, align 8
  %47 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %48 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %47, i32 0, i32 8
  %49 = load float*, float** %48, align 8
  %50 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %51 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %50, i32 0, i32 5
  %52 = load float*, float** %51, align 8
  %53 = load i32, i32* %9, align 4
  call void @bpnn_output_error(float* %46, float* %49, float* %52, i32 %53, float* %10)
  %54 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %55 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %54, i32 0, i32 6
  %56 = load float*, float** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %59 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %58, i32 0, i32 7
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %63 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %62, i32 0, i32 10
  %64 = load float**, float*** %63, align 8
  %65 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %66 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %65, i32 0, i32 4
  %67 = load float*, float** %66, align 8
  call void @bpnn_hidden_error(float* %56, i32 %57, float* %60, i32 %61, float** %64, float* %67, float* %11)
  %68 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %69 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %68, i32 0, i32 7
  %70 = load float*, float** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %73 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %72, i32 0, i32 4
  %74 = load float*, float** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %77 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %76, i32 0, i32 10
  %78 = load float**, float*** %77, align 8
  %79 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %80 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %79, i32 0, i32 12
  %81 = load float**, float*** %80, align 8
  call void @bpnn_adjust_weights(float* %70, i32 %71, float* %74, i32 %75, float** %78, float** %81)
  %82 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %83 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %82, i32 0, i32 6
  %84 = load float*, float** %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %87 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %86, i32 0, i32 3
  %88 = load float*, float** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %91 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %90, i32 0, i32 9
  %92 = load float**, float*** %91, align 8
  %93 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %94 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %93, i32 0, i32 11
  %95 = load float**, float*** %94, align 8
  call void @bpnn_adjust_weights(float* %84, i32 %85, float* %88, i32 %89, float** %92, float** %95)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local float @drnd() #0 {
  %1 = call i32 @rand() #5
  %2 = sitofp i32 %1 to float
  %3 = fdiv float %2, 0x41E0000000000000
  ret float %3
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @dpn1() #0 {
  %1 = call float @drnd()
  %2 = fpext float %1 to double
  %3 = fmul double %2, 2.000000e+00
  %4 = fsub double %3, 1.000000e+00
  %5 = fptrunc double %4 to float
  ret float %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @squash(double %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  %4 = fptrunc double %0 to float
  store float %4, float* %2, align 4
  %5 = load float, float* %2, align 4
  %6 = fneg float %5
  %7 = fpext float %6 to double
  %8 = call double @exp(double %7) #5
  %9 = fadd double 1.000000e+00, %8
  %10 = fdiv double 1.000000e+00, %9
  %11 = fptrunc double %10 to float
  ret float %11
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float* @alloc_1d_dbl(i32 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = zext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 %9) #5
  %11 = bitcast i8* %10 to float*
  store float* %11, float** %4, align 8
  %12 = load float*, float** %4, align 8
  %13 = icmp eq float* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store float* null, float** %2, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load float*, float** %4, align 8
  store float* %17, float** %2, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load float*, float** %2, align 8
  ret float* %19
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float** @alloc_2d_dbl(i32 %0, i32 %1) #0 {
  %3 = alloca float**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = trunc i64 %10 to i32
  %12 = zext i32 %11 to i64
  %13 = call noalias i8* @malloc(i64 %12) #5
  %14 = bitcast i8* %13 to float**
  store float** %14, float*** %7, align 8
  %15 = load float**, float*** %7, align 8
  %16 = icmp eq float** %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.2, i64 0, i64 0))
  store float** null, float*** %3, align 8
  br label %36

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call float* @alloc_1d_dbl(i32 %25)
  %27 = load float**, float*** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float*, float** %27, i64 %29
  store float* %26, float** %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load float**, float*** %7, align 8
  store float** %35, float*** %3, align 8
  br label %36

36:                                               ; preds = %34, %17
  %37 = load float**, float*** %3, align 8
  ret float** %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bpnn_randomize_weights(float** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float** %0, float*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %35, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = call i32 @rand() #5
  %21 = sitofp i32 %20 to float
  %22 = fdiv float %21, 0x41E0000000000000
  %23 = load float**, float*** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float*, float** %23, i64 %25
  %27 = load float*, float** %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %27, i64 %29
  store float %22, float* %30, align 4
  br label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bpnn_randomize_row(float* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %16, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load float*, float** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %12, i64 %14
  store float 0x3FB99999A0000000, float* %15, align 4
  br label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %6, align 4
  br label %7

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @bpnn_zero_weights(float** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store float** %0, float*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %28, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load float**, float*** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float*, float** %20, i64 %22
  %24 = load float*, float** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %24, i64 %26
  store float 0.000000e+00, float* %27, align 4
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %15

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_initialize(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* %2, align 4
  call void @srand(i32 %5) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BPNN* @bpnn_internal_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.BPNN*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.BPNN*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call noalias i8* @malloc(i64 96) #5
  %10 = bitcast i8* %9 to %struct.BPNN*
  store %struct.BPNN* %10, %struct.BPNN** %8, align 8
  %11 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %12 = icmp eq %struct.BPNN* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  store %struct.BPNN* null, %struct.BPNN** %4, align 8
  br label %84

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %18 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %21 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %24 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = call float* @alloc_1d_dbl(i32 %26)
  %28 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %29 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %28, i32 0, i32 3
  store float* %27, float** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = call float* @alloc_1d_dbl(i32 %31)
  %33 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %34 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %33, i32 0, i32 4
  store float* %32, float** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  %37 = call float* @alloc_1d_dbl(i32 %36)
  %38 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %39 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %38, i32 0, i32 5
  store float* %37, float** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = call float* @alloc_1d_dbl(i32 %41)
  %43 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %44 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %43, i32 0, i32 6
  store float* %42, float** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  %47 = call float* @alloc_1d_dbl(i32 %46)
  %48 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %49 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %48, i32 0, i32 7
  store float* %47, float** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = call float* @alloc_1d_dbl(i32 %51)
  %53 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %54 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %53, i32 0, i32 8
  store float* %52, float** %54, align 8
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = call float** @alloc_2d_dbl(i32 %56, i32 %58)
  %60 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %61 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %60, i32 0, i32 9
  store float** %59, float*** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = call float** @alloc_2d_dbl(i32 %63, i32 %65)
  %67 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %68 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %67, i32 0, i32 10
  store float** %66, float*** %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = call float** @alloc_2d_dbl(i32 %70, i32 %72)
  %74 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %75 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %74, i32 0, i32 11
  store float** %73, float*** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = call float** @alloc_2d_dbl(i32 %77, i32 %79)
  %81 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  %82 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %81, i32 0, i32 12
  store float** %80, float*** %82, align 8
  %83 = load %struct.BPNN*, %struct.BPNN** %8, align 8
  store %struct.BPNN* %83, %struct.BPNN** %4, align 8
  br label %84

84:                                               ; preds = %15, %13
  %85 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  ret %struct.BPNN* %85
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_free(%struct.BPNN* %0) #0 {
  %2 = alloca %struct.BPNN*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BPNN* %0, %struct.BPNN** %2, align 8
  %6 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %7 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %10 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %13 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %12, i32 0, i32 3
  %14 = load float*, float** %13, align 8
  %15 = bitcast float* %14 to i8*
  call void @free(i8* %15) #5
  %16 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %17 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %16, i32 0, i32 4
  %18 = load float*, float** %17, align 8
  %19 = bitcast float* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %21 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %20, i32 0, i32 5
  %22 = load float*, float** %21, align 8
  %23 = bitcast float* %22 to i8*
  call void @free(i8* %23) #5
  %24 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %25 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %24, i32 0, i32 6
  %26 = load float*, float** %25, align 8
  %27 = bitcast float* %26 to i8*
  call void @free(i8* %27) #5
  %28 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %29 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %28, i32 0, i32 7
  %30 = load float*, float** %29, align 8
  %31 = bitcast float* %30 to i8*
  call void @free(i8* %31) #5
  %32 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %33 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %32, i32 0, i32 8
  %34 = load float*, float** %33, align 8
  %35 = bitcast float* %34 to i8*
  call void @free(i8* %35) #5
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %57, %1
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %42 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %41, i32 0, i32 9
  %43 = load float**, float*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float*, float** %43, i64 %45
  %47 = load float*, float** %46, align 8
  %48 = bitcast float* %47 to i8*
  call void @free(i8* %48) #5
  %49 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %50 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %49, i32 0, i32 11
  %51 = load float**, float*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float*, float** %51, i64 %53
  %55 = load float*, float** %54, align 8
  %56 = bitcast float* %55 to i8*
  call void @free(i8* %56) #5
  br label %57

57:                                               ; preds = %40
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %36

60:                                               ; preds = %36
  %61 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %62 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %61, i32 0, i32 9
  %63 = load float**, float*** %62, align 8
  %64 = bitcast float** %63 to i8*
  call void @free(i8* %64) #5
  %65 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %66 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %65, i32 0, i32 11
  %67 = load float**, float*** %66, align 8
  %68 = bitcast float** %67 to i8*
  call void @free(i8* %68) #5
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %90, %60
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  %74 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %75 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %74, i32 0, i32 10
  %76 = load float**, float*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float*, float** %76, i64 %78
  %80 = load float*, float** %79, align 8
  %81 = bitcast float* %80 to i8*
  call void @free(i8* %81) #5
  %82 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %83 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %82, i32 0, i32 12
  %84 = load float**, float*** %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float*, float** %84, i64 %86
  %88 = load float*, float** %87, align 8
  %89 = bitcast float* %88 to i8*
  call void @free(i8* %89) #5
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %69

93:                                               ; preds = %69
  %94 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %95 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %94, i32 0, i32 10
  %96 = load float**, float*** %95, align 8
  %97 = bitcast float** %96 to i8*
  call void @free(i8* %97) #5
  %98 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %99 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %98, i32 0, i32 12
  %100 = load float**, float*** %99, align 8
  %101 = bitcast float** %100 to i8*
  call void @free(i8* %101) #5
  %102 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %103 = bitcast %struct.BPNN* %102 to i8*
  call void @free(i8* %103) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BPNN* @bpnn_create(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.BPNN*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.BPNN* @bpnn_internal_create(i32 %8, i32 %9, i32 %10)
  store %struct.BPNN* %11, %struct.BPNN** %7, align 8
  %12 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  %13 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %12, i32 0, i32 9
  %14 = load float**, float*** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bpnn_randomize_weights(float** %14, i32 %15, i32 %16)
  %18 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  %19 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %18, i32 0, i32 10
  %20 = load float**, float*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bpnn_randomize_weights(float** %20, i32 %21, i32 %22)
  %24 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  %25 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %24, i32 0, i32 11
  %26 = load float**, float*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @bpnn_zero_weights(float** %26, i32 %27, i32 %28)
  %30 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  %31 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %30, i32 0, i32 12
  %32 = load float**, float*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bpnn_zero_weights(float** %32, i32 %33, i32 %34)
  %36 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  %37 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %36, i32 0, i32 8
  %38 = load float*, float** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @bpnn_randomize_row(float* %38, i32 %39)
  %41 = load %struct.BPNN*, %struct.BPNN** %7, align 8
  ret %struct.BPNN* %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_layerforward(float* %0, float* %1, float** %2, i32 %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float** %2, float*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load float*, float** %6, align 8
  %15 = getelementptr inbounds float, float* %14, i64 0
  store float 1.000000e+00, float* %15, align 4
  store i32 1, i32* %12, align 4
  br label %16

16:                                               ; preds = %54, %5
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %16
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load float**, float*** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float*, float** %26, i64 %28
  %30 = load float*, float** %29, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = load float*, float** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fmul float %34, %39
  %41 = load float, float* %11, align 4
  %42 = fadd float %41, %40
  store float %42, float* %11, align 4
  br label %43

43:                                               ; preds = %25
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load float, float* %11, align 4
  %48 = fpext float %47 to double
  %49 = call float @squash(double %48)
  %50 = load float*, float** %7, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float %49, float* %53, align 4
  br label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %16

57:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_output_error(float* %0, float* %1, float* %2, i32 %3, float* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store i32 %3, i32* %9, align 4
  store float* %4, float** %10, align 8
  store float 0.000000e+00, float* %14, align 4
  store i32 1, i32* %11, align 4
  br label %15

15:                                               ; preds = %70, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %15
  %20 = load float*, float** %8, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, float* %20, i64 %22
  %24 = load float, float* %23, align 4
  store float %24, float* %12, align 4
  %25 = load float*, float** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  store float %29, float* %13, align 4
  %30 = load float, float* %12, align 4
  %31 = fpext float %30 to double
  %32 = load float, float* %12, align 4
  %33 = fpext float %32 to double
  %34 = fsub double 1.000000e+00, %33
  %35 = fmul double %31, %34
  %36 = load float, float* %13, align 4
  %37 = load float, float* %12, align 4
  %38 = fsub float %36, %37
  %39 = fpext float %38 to double
  %40 = fmul double %35, %39
  %41 = fptrunc double %40 to float
  %42 = load float*, float** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  store float %41, float* %45, align 4
  %46 = load float*, float** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fcmp ogt double %51, 0.000000e+00
  br i1 %52, label %53, label %59

53:                                               ; preds = %19
  %54 = load float*, float** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %54, i64 %56
  %58 = load float, float* %57, align 4
  br label %66

59:                                               ; preds = %19
  %60 = load float*, float** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fneg float %64
  br label %66

66:                                               ; preds = %59, %53
  %67 = phi float [ %58, %53 ], [ %65, %59 ]
  %68 = load float, float* %14, align 4
  %69 = fadd float %68, %67
  store float %69, float* %14, align 4
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %15

73:                                               ; preds = %15
  %74 = load float, float* %14, align 4
  %75 = load float*, float** %10, align 8
  store float %74, float* %75, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_hidden_error(float* %0, i32 %1, float* %2, i32 %3, float** %4, float* %5, float* %6) #0 {
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float**, align 8
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  store float* %0, float** %8, align 8
  store i32 %1, i32* %9, align 4
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store float** %4, float*** %12, align 8
  store float* %5, float** %13, align 8
  store float* %6, float** %14, align 8
  store float 0.000000e+00, float* %19, align 4
  store i32 1, i32* %15, align 4
  br label %20

20:                                               ; preds = %94, %7
  %21 = load i32, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %97

24:                                               ; preds = %20
  %25 = load float*, float** %13, align 8
  %26 = load i32, i32* %15, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  store float %29, float* %17, align 4
  store float 0.000000e+00, float* %18, align 4
  store i32 1, i32* %16, align 4
  br label %30

30:                                               ; preds = %52, %24
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load float*, float** %10, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = load float**, float*** %12, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float*, float** %40, i64 %42
  %44 = load float*, float** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fmul float %39, %48
  %50 = load float, float* %18, align 4
  %51 = fadd float %50, %49
  store float %51, float* %18, align 4
  br label %52

52:                                               ; preds = %34
  %53 = load i32, i32* %16, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %16, align 4
  br label %30

55:                                               ; preds = %30
  %56 = load float, float* %17, align 4
  %57 = fpext float %56 to double
  %58 = load float, float* %17, align 4
  %59 = fpext float %58 to double
  %60 = fsub double 1.000000e+00, %59
  %61 = fmul double %57, %60
  %62 = load float, float* %18, align 4
  %63 = fpext float %62 to double
  %64 = fmul double %61, %63
  %65 = fptrunc double %64 to float
  %66 = load float*, float** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  store float %65, float* %69, align 4
  %70 = load float*, float** %8, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fpext float %74 to double
  %76 = fcmp ogt double %75, 0.000000e+00
  br i1 %76, label %77, label %83

77:                                               ; preds = %55
  %78 = load float*, float** %8, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  %82 = load float, float* %81, align 4
  br label %90

83:                                               ; preds = %55
  %84 = load float*, float** %8, align 8
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds float, float* %84, i64 %86
  %88 = load float, float* %87, align 4
  %89 = fneg float %88
  br label %90

90:                                               ; preds = %83, %77
  %91 = phi float [ %82, %77 ], [ %89, %83 ]
  %92 = load float, float* %19, align 4
  %93 = fadd float %92, %91
  store float %93, float* %19, align 4
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %20

97:                                               ; preds = %20
  %98 = load float, float* %19, align 4
  %99 = load float*, float** %14, align 8
  store float %98, float* %99, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_adjust_weights(float* %0, i32 %1, float* %2, i32 %3, float** %4, float** %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float**, align 8
  %12 = alloca float**, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float** %4, float*** %11, align 8
  store float** %5, float*** %12, align 8
  %16 = load float*, float** %9, align 8
  %17 = getelementptr inbounds float, float* %16, i64 0
  store float 1.000000e+00, float* %17, align 4
  store i32 1, i32* %15, align 4
  br label %18

18:                                               ; preds = %79, %6
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %82

22:                                               ; preds = %18
  store i32 0, i32* %14, align 4
  br label %23

23:                                               ; preds = %75, %22
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load float*, float** %7, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = fpext float %32 to double
  %34 = fmul double 3.000000e-01, %33
  %35 = load float*, float** %9, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %35, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fpext float %39 to double
  %41 = fmul double %34, %40
  %42 = load float**, float*** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float*, float** %42, i64 %44
  %46 = load float*, float** %45, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds float, float* %46, i64 %48
  %50 = load float, float* %49, align 4
  %51 = fpext float %50 to double
  %52 = fmul double 3.000000e-01, %51
  %53 = fadd double %41, %52
  %54 = fptrunc double %53 to float
  store float %54, float* %13, align 4
  %55 = load float, float* %13, align 4
  %56 = load float**, float*** %11, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float*, float** %56, i64 %58
  %60 = load float*, float** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fadd float %64, %55
  store float %65, float* %63, align 4
  %66 = load float, float* %13, align 4
  %67 = load float**, float*** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float*, float** %67, i64 %69
  %71 = load float*, float** %70, align 8
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float, float* %71, i64 %73
  store float %66, float* %74, align 4
  br label %75

75:                                               ; preds = %27
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %23

78:                                               ; preds = %23
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %18

82:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_feedforward(%struct.BPNN* %0) #0 {
  %2 = alloca %struct.BPNN*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BPNN* %0, %struct.BPNN** %2, align 8
  %6 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %7 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %10 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %13 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %16 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %15, i32 0, i32 3
  %17 = load float*, float** %16, align 8
  %18 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %19 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %18, i32 0, i32 4
  %20 = load float*, float** %19, align 8
  %21 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %22 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %21, i32 0, i32 9
  %23 = load float**, float*** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  call void @bpnn_layerforward(float* %17, float* %20, float** %23, i32 %24, i32 %25)
  %26 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %27 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %26, i32 0, i32 4
  %28 = load float*, float** %27, align 8
  %29 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %30 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %29, i32 0, i32 5
  %31 = load float*, float** %30, align 8
  %32 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %33 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %32, i32 0, i32 10
  %34 = load float**, float*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  call void @bpnn_layerforward(float* %28, float* %31, float** %34, i32 %35, i32 %36)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_train(%struct.BPNN* %0, float* %1, float* %2) #0 {
  %4 = alloca %struct.BPNN*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.BPNN* %0, %struct.BPNN** %4, align 8
  store float* %1, float** %5, align 8
  store float* %2, float** %6, align 8
  %12 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %13 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %16 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %19 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %22 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %21, i32 0, i32 3
  %23 = load float*, float** %22, align 8
  %24 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %25 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %24, i32 0, i32 4
  %26 = load float*, float** %25, align 8
  %27 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %28 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %27, i32 0, i32 9
  %29 = load float**, float*** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  call void @bpnn_layerforward(float* %23, float* %26, float** %29, i32 %30, i32 %31)
  %32 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %33 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %32, i32 0, i32 4
  %34 = load float*, float** %33, align 8
  %35 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %36 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %35, i32 0, i32 5
  %37 = load float*, float** %36, align 8
  %38 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %39 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %38, i32 0, i32 10
  %40 = load float**, float*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  call void @bpnn_layerforward(float* %34, float* %37, float** %40, i32 %41, i32 %42)
  %43 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %44 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %43, i32 0, i32 7
  %45 = load float*, float** %44, align 8
  %46 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %47 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %46, i32 0, i32 8
  %48 = load float*, float** %47, align 8
  %49 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %50 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %49, i32 0, i32 5
  %51 = load float*, float** %50, align 8
  %52 = load i32, i32* %9, align 4
  call void @bpnn_output_error(float* %45, float* %48, float* %51, i32 %52, float* %10)
  %53 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %54 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %53, i32 0, i32 6
  %55 = load float*, float** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %58 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %57, i32 0, i32 7
  %59 = load float*, float** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %62 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %61, i32 0, i32 10
  %63 = load float**, float*** %62, align 8
  %64 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %65 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %64, i32 0, i32 4
  %66 = load float*, float** %65, align 8
  call void @bpnn_hidden_error(float* %55, i32 %56, float* %59, i32 %60, float** %63, float* %66, float* %11)
  %67 = load float, float* %10, align 4
  %68 = load float*, float** %5, align 8
  store float %67, float* %68, align 4
  %69 = load float, float* %11, align 4
  %70 = load float*, float** %6, align 8
  store float %69, float* %70, align 4
  %71 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %72 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %71, i32 0, i32 7
  %73 = load float*, float** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %76 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %75, i32 0, i32 4
  %77 = load float*, float** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %80 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %79, i32 0, i32 10
  %81 = load float**, float*** %80, align 8
  %82 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %83 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %82, i32 0, i32 12
  %84 = load float**, float*** %83, align 8
  call void @bpnn_adjust_weights(float* %73, i32 %74, float* %77, i32 %78, float** %81, float** %84)
  %85 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %86 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %85, i32 0, i32 6
  %87 = load float*, float** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %90 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %89, i32 0, i32 3
  %91 = load float*, float** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %94 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %93, i32 0, i32 9
  %95 = load float**, float*** %94, align 8
  %96 = load %struct.BPNN*, %struct.BPNN** %4, align 8
  %97 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %96, i32 0, i32 11
  %98 = load float**, float*** %97, align 8
  call void @bpnn_adjust_weights(float* %87, i32 %88, float* %91, i32 %92, float** %95, float** %98)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bpnn_save(%struct.BPNN* %0, i8* %1) #0 {
  %3 = alloca %struct.BPNN*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.BPNN* %0, %struct.BPNN** %3, align 8
  store i8* %1, i8** %4, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %14, align 8
  %25 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %26 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %29 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %32 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i8* %37)
  %39 = bitcast i32* %5 to i8*
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %41 = call i64 @fwrite(i8* %39, i64 1, i64 1, %struct._IO_FILE* %40)
  %42 = bitcast i32* %6 to i8*
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %44 = call i64 @fwrite(i8* %42, i64 1, i64 1, %struct._IO_FILE* %43)
  %45 = bitcast i32* %7 to i8*
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %47 = call i64 @fwrite(i8* %45, i64 1, i64 1, %struct._IO_FILE* %46)
  store i32 0, i32* %10, align 4
  %48 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %49 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %48, i32 0, i32 9
  %50 = load float**, float*** %49, align 8
  store float** %50, float*** %12, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = mul nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = zext i32 %58 to i64
  %60 = call noalias i8* @malloc(i64 %59) #5
  store i8* %60, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %107, %2
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %110

65:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %103, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %106

70:                                               ; preds = %66
  %71 = load float**, float*** %12, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds float*, float** %71, i64 %73
  %75 = load float*, float** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  %79 = load float, float* %78, align 4
  store float %79, float* %11, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  store i8* %83, i8** %15, align 8
  %84 = bitcast float* %11 to i8*
  store i8* %84, i8** %16, align 8
  store i32 4, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %95, %70
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %85
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %16, align 8
  %92 = load i8, i8* %90, align 1
  %93 = load i8*, i8** %15, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %15, align 8
  store i8 %92, i8* %93, align 1
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 4
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %66

106:                                              ; preds = %66
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %61

110:                                              ; preds = %61
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  %116 = mul nsw i32 %113, %115
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = zext i32 %119 to i64
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %122 = call i64 @fwrite(i8* %111, i64 4, i64 %120, %struct._IO_FILE* %121)
  %123 = load i8*, i8** %13, align 8
  call void @free(i8* %123) #5
  store i32 0, i32* %10, align 4
  %124 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %125 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %124, i32 0, i32 10
  %126 = load float**, float*** %125, align 8
  store float** %126, float*** %12, align 8
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %129, 1
  %131 = mul nsw i32 %128, %130
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = zext i32 %134 to i64
  %136 = call noalias i8* @malloc(i64 %135) #5
  store i8* %136, i8** %13, align 8
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %183, %110
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp sle i32 %138, %139
  br i1 %140, label %141, label %186

141:                                              ; preds = %137
  store i32 0, i32* %9, align 4
  br label %142

142:                                              ; preds = %179, %141
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp sle i32 %143, %144
  br i1 %145, label %146, label %182

146:                                              ; preds = %142
  %147 = load float**, float*** %12, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float*, float** %147, i64 %149
  %151 = load float*, float** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %151, i64 %153
  %155 = load float, float* %154, align 4
  store float %155, float* %11, align 4
  %156 = load i8*, i8** %13, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  store i8* %159, i8** %19, align 8
  %160 = bitcast float* %11 to i8*
  store i8* %160, i8** %20, align 8
  store i32 4, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %161

161:                                              ; preds = %171, %146
  %162 = load i32, i32* %21, align 4
  %163 = load i32, i32* %22, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i8*, i8** %20, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %20, align 8
  %168 = load i8, i8* %166, align 1
  %169 = load i8*, i8** %19, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %19, align 8
  store i8 %168, i8* %169, align 1
  br label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %21, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %21, align 4
  br label %161

174:                                              ; preds = %161
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = add i64 %176, 4
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %9, align 4
  br label %142

182:                                              ; preds = %142
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %8, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %8, align 4
  br label %137

186:                                              ; preds = %137
  %187 = load i8*, i8** %13, align 8
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  %192 = mul nsw i32 %189, %191
  %193 = sext i32 %192 to i64
  %194 = mul i64 %193, 4
  %195 = trunc i64 %194 to i32
  %196 = zext i32 %195 to i64
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %198 = call i64 @fwrite(i8* %187, i64 4, i64 %196, %struct._IO_FILE* %197)
  %199 = load i8*, i8** %13, align 8
  call void @free(i8* %199) #5
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %201 = call i32 @fclose(%struct._IO_FILE* %200)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BPNN* @bpnn_read(i8* %0) #0 {
  %2 = alloca %struct.BPNN*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.BPNN*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @open to i32 (i8*, i32, i32, ...)*)(i8* %21, i32 0, i32 420)
  store i32 %22, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.BPNN* null, %struct.BPNN** %2, align 8
  br label %208

25:                                               ; preds = %1
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = bitcast i32* %7 to i8*
  %30 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %28, i8* %29, i64 4)
  %31 = load i32, i32* %6, align 4
  %32 = bitcast i32* %8 to i8*
  %33 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %31, i8* %32, i64 4)
  %34 = load i32, i32* %6, align 4
  %35 = bitcast i32* %9 to i8*
  %36 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %34, i8* %35, i64 4)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call %struct.BPNN* @bpnn_internal_create(i32 %37, i32 %38, i32 %39)
  store %struct.BPNN* %40, %struct.BPNN** %5, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %41, i32 %42, i32 %43, i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = zext i32 %54 to i64
  %56 = call noalias i8* @malloc(i64 %55) #5
  store i8* %56, i8** %4, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = mul nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %57, i8* %58, i64 %65)
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %114, %25
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %110, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %72
  %77 = load %struct.BPNN*, %struct.BPNN** %5, align 8
  %78 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %77, i32 0, i32 9
  %79 = load float**, float*** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float*, float** %79, i64 %81
  %83 = load float*, float** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %83, i64 %85
  %87 = bitcast float* %86 to i8*
  store i8* %87, i8** %13, align 8
  %88 = load i8*, i8** %4, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  store i8* %91, i8** %14, align 8
  store i32 4, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %92

92:                                               ; preds = %102, %76
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %92
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %14, align 8
  %99 = load i8, i8* %97, align 1
  %100 = load i8*, i8** %13, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %13, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %92

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %72

113:                                              ; preds = %72
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %67

117:                                              ; preds = %67
  %118 = load i8*, i8** %4, align 8
  call void @free(i8* %118) #5
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  %124 = mul nsw i32 %121, %123
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = zext i32 %127 to i64
  %129 = call noalias i8* @malloc(i64 %128) #5
  store i8* %129, i8** %4, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  %136 = mul nsw i32 %133, %135
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = call i32 (i32, i8*, i64, ...) bitcast (i32 (...)* @read to i32 (i32, i8*, i64, ...)*)(i32 %130, i8* %131, i64 %138)
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %187, %117
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = icmp sle i32 %141, %142
  br i1 %143, label %144, label %190

144:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %183, %144
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp sle i32 %146, %147
  br i1 %148, label %149, label %186

149:                                              ; preds = %145
  %150 = load %struct.BPNN*, %struct.BPNN** %5, align 8
  %151 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %150, i32 0, i32 10
  %152 = load float**, float*** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float*, float** %152, i64 %154
  %156 = load float*, float** %155, align 8
  %157 = load i32, i32* %11, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds float, float* %156, i64 %158
  %160 = bitcast float* %159 to i8*
  store i8* %160, i8** %17, align 8
  %161 = load i8*, i8** %4, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  store i8* %164, i8** %18, align 8
  store i32 4, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %165

165:                                              ; preds = %175, %149
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %178

169:                                              ; preds = %165
  %170 = load i8*, i8** %18, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %18, align 8
  %172 = load i8, i8* %170, align 1
  %173 = load i8*, i8** %17, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %17, align 8
  store i8 %172, i8* %173, align 1
  br label %175

175:                                              ; preds = %169
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %165

178:                                              ; preds = %165
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = add i64 %180, 4
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  br label %145

186:                                              ; preds = %145
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  br label %140

190:                                              ; preds = %140
  %191 = load i8*, i8** %4, align 8
  call void @free(i8* %191) #5
  %192 = load i32, i32* %6, align 4
  %193 = call i32 (i32, ...) bitcast (i32 (...)* @close to i32 (i32, ...)*)(i32 %192)
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %195 = load %struct.BPNN*, %struct.BPNN** %5, align 8
  %196 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %195, i32 0, i32 11
  %197 = load float**, float*** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %8, align 4
  %200 = call i32 @bpnn_zero_weights(float** %197, i32 %198, i32 %199)
  %201 = load %struct.BPNN*, %struct.BPNN** %5, align 8
  %202 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %201, i32 0, i32 12
  %203 = load float**, float*** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @bpnn_zero_weights(float** %203, i32 %204, i32 %205)
  %207 = load %struct.BPNN*, %struct.BPNN** %5, align 8
  store %struct.BPNN* %207, %struct.BPNN** %2, align 8
  br label %208

208:                                              ; preds = %190, %24
  %209 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  ret %struct.BPNN* %209
}

declare dso_local i32 @open(...) #2

declare dso_local i32 @read(...) #2

declare dso_local i32 @close(...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @backprop_face() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.BPNN*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = load i32, i32* @layer_size, align 4
  %7 = call %struct.BPNN* (i32, i32, i32, ...) bitcast (%struct.BPNN* (i32, i32, i32)* @bpnn_create to %struct.BPNN* (i32, i32, i32, ...)*)(i32 %6, i32 16, i32 1)
  store %struct.BPNN* %7, %struct.BPNN** %2, align 8
  %8 = load i32, i32* @layer_size, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i32 %8)
  %10 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %11 = call i32 (%struct.BPNN*, ...) bitcast (i32 (%struct.BPNN*)* @load to i32 (%struct.BPNN*, ...)*)(%struct.BPNN* %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1.12, i64 0, i64 0))
  %13 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  %14 = call i32 (%struct.BPNN*, float*, float*, ...) bitcast (void (%struct.BPNN*, float*, float*)* @bpnn_train_kernel to i32 (%struct.BPNN*, float*, float*, ...)*)(%struct.BPNN* %13, float* %4, float* %5)
  %15 = load %struct.BPNN*, %struct.BPNN** %2, align 8
  call void (%struct.BPNN*, ...) bitcast (void (%struct.BPNN*)* @bpnn_free to void (%struct.BPNN*, ...)*)(%struct.BPNN* %15)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2.13, i64 0, i64 0))
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @setup(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.16, i64 0, i64 0))
  call void @exit(i32 0) #6
  unreachable

11:                                               ; preds = %2
  %12 = load i8**, i8*** %4, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @atoi(i8* %14) #7
  store i32 %15, i32* @layer_size, align 4
  store i32 7, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  call void (i32, ...) bitcast (void (i32)* @bpnn_initialize to void (i32, ...)*)(i32 %16)
  %17 = call i32 @backprop_face()
  call void @exit(i32 0) #6
  unreachable
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @load(%struct.BPNN* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BPNN*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.BPNN* %0, %struct.BPNN** %3, align 8
  %11 = load i32, i32* @layer_size, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load %struct.BPNN*, %struct.BPNN** %3, align 8
  %16 = getelementptr inbounds %struct.BPNN, %struct.BPNN* %15, i32 0, i32 3
  %17 = load float*, float** %16, align 8
  store float* %17, float** %4, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = call i32 @rand() #5
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %24, 0x41E0000000000000
  %26 = load float*, float** %4, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  store float %25, float* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
