; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Random_struct = type { [17 x i32], i32, i32, i32, i32, double, double, double }
%struct.Stopwatch_struct = type { i32, double, double }

@.str = private unnamed_addr constant [43 x i8] c"FFT: Data length is not a power of 2!: %d \00", align 1
@dm1 = internal global double 0.000000e+00, align 8
@RESOLUTION_DEFAULT = dso_local constant double 2.000000e+00, align 8
@RANDOM_SEED = dso_local constant i32 101010, align 4
@FFT_SIZE = dso_local constant i32 1024, align 4
@SOR_SIZE = dso_local constant i32 100, align 4
@SPARSE_SIZE_M = dso_local constant i32 1000, align 4
@SPARSE_SIZE_nz = dso_local constant i32 5000, align 4
@LU_SIZE = dso_local constant i32 100, align 4
@LG_FFT_SIZE = dso_local constant i32 1048576, align 4
@LG_SOR_SIZE = dso_local constant i32 1000, align 4
@LG_SPARSE_SIZE_M = dso_local constant i32 100000, align 4
@LG_SPARSE_SIZE_nz = dso_local constant i32 1000000, align 4
@LG_LU_SIZE = dso_local constant i32 1000, align 4
@TINY_FFT_SIZE = dso_local constant i32 16, align 4
@TINY_SOR_SIZE = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_M = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_N = dso_local constant i32 10, align 4
@TINY_SPARSE_SIZE_nz = dso_local constant i32 50, align 4
@TINY_LU_SIZE = dso_local constant i32 10, align 4
@.str.19 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Usage: [-large] [minimum_time]\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"-large\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Using %10.2f seconds min time per kenel.\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"NOTE!!! All Mflops disabled to prevent diffs from failing!\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"Composite Score:        %8.2f\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"FFT             Mflops: %8.2f    (N=%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"SOR             Mflops: %8.2f    (%d x %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"MonteCarlo:     Mflops: %8.2f\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Sparse matmult  Mflops: %8.2f    (N=%d, nz=%d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"LU              Mflops: %8.2f    (M=%d, N=%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"**                                                              **\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"** SciMark2 Numeric Benchmark, see http://math.nist.gov/scimark **\0A\00", align 1
@.str.14 = private unnamed_addr constant [68 x i8] c"** for details. (Results can be submitted to pozo@nist.gov)     **\0A\00", align 1
@seconds.t = internal global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local double** @new_Array2D_double(i32 %0, i32 %1) #0 {
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = call noalias i8* @malloc(i64 %11) #7
  %13 = bitcast i8* %12 to double**
  store double** %13, double*** %8, align 8
  %14 = load double**, double*** %8, align 8
  %15 = icmp eq double** %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store double** null, double*** %3, align 8
  br label %67

17:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %40, %17
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call noalias i8* @malloc(i64 %25) #7
  %27 = bitcast i8* %26 to double*
  %28 = load double**, double*** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double*, double** %28, i64 %30
  store double* %27, double** %31, align 8
  %32 = load double**, double*** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double*, double** %32, i64 %34
  %36 = load double*, double** %35, align 8
  %37 = icmp eq double* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %22
  store i32 1, i32* %7, align 4
  br label %43

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %18

43:                                               ; preds = %38, %18
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %59, %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load double**, double*** %8, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double*, double** %53, i64 %55
  %57 = load double*, double** %56, align 8
  %58 = bitcast double* %57 to i8*
  call void @free(i8* %58) #7
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %6, align 4
  br label %49

62:                                               ; preds = %49
  %63 = load double**, double*** %8, align 8
  %64 = bitcast double** %63 to i8*
  call void @free(i8* %64) #7
  store double** null, double*** %3, align 8
  br label %67

65:                                               ; preds = %43
  %66 = load double**, double*** %8, align 8
  store double** %66, double*** %3, align 8
  br label %67

67:                                               ; preds = %65, %62, %16
  %68 = load double**, double*** %3, align 8
  ret double** %68
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Array2D_double_delete(i32 %0, i32 %1, double** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double**, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store double** %2, double*** %6, align 8
  %8 = load double**, double*** %6, align 8
  %9 = icmp eq double** %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %29

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load double**, double*** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds double*, double** %17, i64 %19
  %21 = load double*, double** %20, align 8
  %22 = bitcast double* %21 to i8*
  call void @free(i8* %22) #7
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load double**, double*** %6, align 8
  %28 = bitcast double** %27 to i8*
  call void @free(i8* %28) #7
  br label %29

29:                                               ; preds = %26, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Array2D_double_copy(i32 %0, i32 %1, double** %2, double** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double** %2, double*** %7, align 8
  store double** %3, double*** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 3
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %101, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %16
  %21 = load double**, double*** %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double*, double** %21, i64 %23
  %25 = load double*, double** %24, align 8
  store double* %25, double** %12, align 8
  %26 = load double**, double*** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double*, double** %26, i64 %28
  %30 = load double*, double** %29, align 8
  store double* %30, double** %13, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %45, %20
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load double*, double** %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds double, double* %36, i64 %38
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %12, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds double, double* %41, i64 %43
  store double %40, double* %44, align 8
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %31

48:                                               ; preds = %31
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %97, %48
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  %55 = load double*, double** %13, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  %59 = load double, double* %58, align 8
  %60 = load double*, double** %12, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = load double*, double** %13, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %64, i64 %67
  %69 = load double, double* %68, align 8
  %70 = load double*, double** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  store double %69, double* %74, align 8
  %75 = load double*, double** %13, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 2
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds double, double* %75, i64 %78
  %80 = load double, double* %79, align 8
  %81 = load double*, double** %12, align 8
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double, double* %81, i64 %84
  store double %80, double* %85, align 8
  %86 = load double*, double** %13, align 8
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 3
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %86, i64 %89
  %91 = load double, double* %90, align 8
  %92 = load double*, double** %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 3
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds double, double* %92, i64 %95
  store double %91, double* %96, align 8
  br label %97

97:                                               ; preds = %54
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 4
  store i32 %99, i32* %11, align 4
  br label %50

100:                                              ; preds = %50
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %16

104:                                              ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @FFT_num_flops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to double
  store double %6, double* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @int_log2(i32 %7)
  %9 = sitofp i32 %8 to double
  store double %9, double* %4, align 8
  %10 = load double, double* %3, align 8
  %11 = fmul double 5.000000e+00, %10
  %12 = fsub double %11, 2.000000e+00
  %13 = load double, double* %4, align 8
  %14 = fmul double %12, %13
  %15 = load double, double* %3, align 8
  %16 = fadd double %15, 1.000000e+00
  %17 = fmul double 2.000000e+00, %16
  %18 = fadd double %14, %17
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @int_log2(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %10, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  br label %10

10:                                               ; preds = %9
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 2
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %5

15:                                               ; preds = %5
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 1, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %2, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %21)
  call void @exit(i32 1) #8
  unreachable

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_bitreverse(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %90, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %93

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 1
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %75

32:                                               ; preds = %22
  %33 = load double*, double** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %33, i64 %35
  %37 = load double, double* %36, align 8
  store double %37, double* %12, align 8
  %38 = load double*, double** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double, double* %38, i64 %41
  %43 = load double, double* %42, align 8
  store double %43, double* %13, align 8
  %44 = load double*, double** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = load double*, double** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  store double %48, double* %52, align 8
  %53 = load double*, double** %4, align 8
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, double* %53, i64 %56
  %58 = load double, double* %57, align 8
  %59 = load double*, double** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %59, i64 %62
  store double %58, double* %63, align 8
  %64 = load double, double* %12, align 8
  %65 = load double*, double** %4, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds double, double* %65, i64 %67
  store double %64, double* %68, align 8
  %69 = load double, double* %13, align 8
  %70 = load double*, double** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %70, i64 %73
  store double %69, double* %74, align 8
  br label %75

75:                                               ; preds = %32, %22
  br label %76

76:                                               ; preds = %80, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp sle i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = ashr i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %76

86:                                               ; preds = %76
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %18

93:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_transform(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load double*, double** %4, align 8
  call void @FFT_transform_internal(i32 %5, double* %6, i32 -1)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FFT_transform_internal(i32 %0, double* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double* %1, double** %5, align 8
  store i32 %2, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %253

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @int_log2(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %253

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = load double*, double** %5, align 8
  call void @FFT_bitreverse(i32 %43, double* %44)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %248, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %253

49:                                               ; preds = %45
  store double 1.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sitofp i32 %50 to double
  %52 = fmul double 2.000000e+00, %51
  %53 = fmul double %52, 0x400921FB54442D18
  %54 = load i32, i32* %10, align 4
  %55 = sitofp i32 %54 to double
  %56 = fmul double 2.000000e+00, %55
  %57 = fdiv double %53, %56
  store double %57, double* %15, align 8
  %58 = load double, double* %15, align 8
  %59 = call double @sin(double %58) #7
  store double %59, double* %16, align 8
  %60 = load double, double* %15, align 8
  %61 = fdiv double %60, 2.000000e+00
  %62 = call double @sin(double %61) #7
  store double %62, double* %17, align 8
  %63 = load double, double* %17, align 8
  %64 = fmul double 2.000000e+00, %63
  %65 = load double, double* %17, align 8
  %66 = fmul double %64, %65
  store double %66, double* %18, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %128, %49
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = mul nsw i32 2, %72
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 2, %76
  store i32 %77, i32* %20, align 4
  %78 = load double*, double** %5, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds double, double* %78, i64 %80
  %82 = load double, double* %81, align 8
  store double %82, double* %21, align 8
  %83 = load double*, double** %5, align 8
  %84 = load i32, i32* %20, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %83, i64 %86
  %88 = load double, double* %87, align 8
  store double %88, double* %22, align 8
  %89 = load double*, double** %5, align 8
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = load double, double* %21, align 8
  %95 = fsub double %93, %94
  %96 = load double*, double** %5, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  store double %95, double* %99, align 8
  %100 = load double*, double** %5, align 8
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %100, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load double, double* %22, align 8
  %107 = fsub double %105, %106
  %108 = load double*, double** %5, align 8
  %109 = load i32, i32* %20, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %108, i64 %111
  store double %107, double* %112, align 8
  %113 = load double, double* %21, align 8
  %114 = load double*, double** %5, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = fadd double %118, %113
  store double %119, double* %117, align 8
  %120 = load double, double* %22, align 8
  %121 = load double*, double** %5, align 8
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds double, double* %121, i64 %124
  %126 = load double, double* %125, align 8
  %127 = fadd double %126, %120
  store double %127, double* %125, align 8
  br label %128

128:                                              ; preds = %71
  %129 = load i32, i32* %10, align 4
  %130 = mul nsw i32 2, %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %14, align 4
  br label %67

133:                                              ; preds = %67
  store i32 1, i32* %13, align 4
  br label %134

134:                                              ; preds = %244, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %247

138:                                              ; preds = %134
  %139 = load double, double* %11, align 8
  %140 = load double, double* %16, align 8
  %141 = load double, double* %12, align 8
  %142 = fmul double %140, %141
  %143 = fsub double %139, %142
  %144 = load double, double* %18, align 8
  %145 = load double, double* %11, align 8
  %146 = fmul double %144, %145
  %147 = fsub double %143, %146
  store double %147, double* %23, align 8
  %148 = load double, double* %12, align 8
  %149 = load double, double* %16, align 8
  %150 = load double, double* %11, align 8
  %151 = fmul double %149, %150
  %152 = fadd double %148, %151
  %153 = load double, double* %18, align 8
  %154 = load double, double* %12, align 8
  %155 = fmul double %153, %154
  %156 = fsub double %152, %155
  store double %156, double* %24, align 8
  %157 = load double, double* %23, align 8
  store double %157, double* %11, align 8
  %158 = load double, double* %24, align 8
  store double %158, double* %12, align 8
  store i32 0, i32* %14, align 4
  br label %159

159:                                              ; preds = %238, %138
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %243

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = load i32, i32* %13, align 4
  %166 = add nsw i32 %164, %165
  %167 = mul nsw i32 2, %166
  store i32 %167, i32* %25, align 4
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = mul nsw i32 2, %172
  store i32 %173, i32* %26, align 4
  %174 = load double*, double** %5, align 8
  %175 = load i32, i32* %26, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds double, double* %174, i64 %176
  %178 = load double, double* %177, align 8
  store double %178, double* %27, align 8
  %179 = load double*, double** %5, align 8
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds double, double* %179, i64 %182
  %184 = load double, double* %183, align 8
  store double %184, double* %28, align 8
  %185 = load double, double* %11, align 8
  %186 = load double, double* %27, align 8
  %187 = fmul double %185, %186
  %188 = load double, double* %12, align 8
  %189 = load double, double* %28, align 8
  %190 = fmul double %188, %189
  %191 = fsub double %187, %190
  store double %191, double* %29, align 8
  %192 = load double, double* %11, align 8
  %193 = load double, double* %28, align 8
  %194 = fmul double %192, %193
  %195 = load double, double* %12, align 8
  %196 = load double, double* %27, align 8
  %197 = fmul double %195, %196
  %198 = fadd double %194, %197
  store double %198, double* %30, align 8
  %199 = load double*, double** %5, align 8
  %200 = load i32, i32* %25, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds double, double* %199, i64 %201
  %203 = load double, double* %202, align 8
  %204 = load double, double* %29, align 8
  %205 = fsub double %203, %204
  %206 = load double*, double** %5, align 8
  %207 = load i32, i32* %26, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds double, double* %206, i64 %208
  store double %205, double* %209, align 8
  %210 = load double*, double** %5, align 8
  %211 = load i32, i32* %25, align 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %210, i64 %213
  %215 = load double, double* %214, align 8
  %216 = load double, double* %30, align 8
  %217 = fsub double %215, %216
  %218 = load double*, double** %5, align 8
  %219 = load i32, i32* %26, align 4
  %220 = add nsw i32 %219, 1
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds double, double* %218, i64 %221
  store double %217, double* %222, align 8
  %223 = load double, double* %29, align 8
  %224 = load double*, double** %5, align 8
  %225 = load i32, i32* %25, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds double, double* %224, i64 %226
  %228 = load double, double* %227, align 8
  %229 = fadd double %228, %223
  store double %229, double* %227, align 8
  %230 = load double, double* %30, align 8
  %231 = load double*, double** %5, align 8
  %232 = load i32, i32* %25, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds double, double* %231, i64 %234
  %236 = load double, double* %235, align 8
  %237 = fadd double %236, %230
  store double %237, double* %235, align 8
  br label %238

238:                                              ; preds = %163
  %239 = load i32, i32* %10, align 4
  %240 = mul nsw i32 2, %239
  %241 = load i32, i32* %14, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %14, align 4
  br label %159

243:                                              ; preds = %159
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %13, align 4
  br label %134

247:                                              ; preds = %134
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %8, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %10, align 4
  %252 = mul nsw i32 %251, 2
  store i32 %252, i32* %10, align 4
  br label %45

253:                                              ; preds = %45, %41, %35
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FFT_inverse(i32 %0, double* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store double* %1, double** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %5, align 4
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load double*, double** %4, align 8
  call void @FFT_transform_internal(i32 %10, double* %11, i32 1)
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double 1.000000e+00, %13
  store double %14, double* %6, align 8
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %27, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load double, double* %6, align 8
  %21 = load double*, double** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double, double* %21, i64 %23
  %25 = load double, double* %24, align 8
  %26 = fmul double %25, %20
  store double %26, double* %24, align 8
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %7, align 4
  br label %15

30:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureFFT(i32 %0, double %1, %struct.Random_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca double*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = mul nsw i32 2, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %17 = call double* @RandomVector(i32 %15, %struct.Random_struct* %16)
  store double* %17, double** %8, align 8
  store i64 1, i64* %9, align 8
  %18 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %18, %struct.Stopwatch_struct** %10, align 8
  store i32 0, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  br label %19

19:                                               ; preds = %40, %3
  %20 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %20)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %32, %19
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %9, align 8
  %25 = mul nsw i64 %24, 8
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = load double*, double** %8, align 8
  call void @FFT_transform(i32 %28, double* %29)
  %30 = load i32, i32* %7, align 4
  %31 = load double*, double** %8, align 8
  call void @FFT_inverse(i32 %30, double* %31)
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %11, align 4
  br label %21

35:                                               ; preds = %21
  %36 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %36)
  %37 = load i64, i64* %9, align 8
  %38 = icmp sgt i64 %37, 4096
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = mul nsw i64 %41, 2
  store i64 %42, i64* %9, align 8
  br label %19

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call double @FFT_num_flops(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = sitofp i64 %46 to double
  %48 = fmul double %45, %47
  %49 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %50 = call double @Stopwatch_read(%struct.Stopwatch_struct* %49)
  %51 = fdiv double %48, %50
  %52 = fmul double %51, 0x3EB0C6F7A0B5ED8D
  store double %52, double* %12, align 8
  %53 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %53)
  %54 = load double*, double** %8, align 8
  %55 = bitcast double* %54 to i8*
  call void @free(i8* %55) #7
  %56 = load double, double* %12, align 8
  ret double %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSOR(i32 %0, double %1, %struct.Random_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.Stopwatch_struct*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %14 = call double** @RandomMatrix(i32 %11, i32 %12, %struct.Random_struct* %13)
  store double** %14, double*** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %15 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %15, %struct.Stopwatch_struct** %9, align 8
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %27, %3
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %17)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load double**, double*** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = mul nsw i32 %21, 16
  call void @SOR_execute(i32 %18, i32 %19, double 1.250000e+00, double** %20, i32 %22)
  %23 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %23)
  %24 = load i32, i32* %10, align 4
  %25 = icmp sgt i32 %24, 4096
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %30

27:                                               ; preds = %16
  %28 = load i32, i32* %10, align 4
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %10, align 4
  br label %16

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call double @SOR_num_flops(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  %36 = call double @Stopwatch_read(%struct.Stopwatch_struct* %35)
  %37 = fdiv double %34, %36
  %38 = fmul double %37, 0x3EB0C6F7A0B5ED8D
  store double %38, double* %8, align 8
  %39 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %9, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %39)
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 %40, i32 %41, double** %42)
  %43 = load double, double* %8, align 8
  ret double %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureMonteCarlo(double %0, %struct.Random_struct* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.Random_struct*, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.Stopwatch_struct*, align 8
  %7 = alloca i32, align 4
  store double %0, double* %3, align 8
  store %struct.Random_struct* %1, %struct.Random_struct** %4, align 8
  store double 0.000000e+00, double* %5, align 8
  %8 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %8, %struct.Stopwatch_struct** %6, align 8
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %18, %2
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %10)
  %11 = load i32, i32* %7, align 4
  %12 = mul nsw i32 %11, 65536
  %13 = call double @MonteCarlo_integrate(i32 %12)
  %14 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %14)
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 4096
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  br label %21

18:                                               ; preds = %9
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 2
  store i32 %20, i32* %7, align 4
  br label %9

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = call double @MonteCarlo_num_flops(i32 %22)
  %24 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  %25 = call double @Stopwatch_read(%struct.Stopwatch_struct* %24)
  %26 = fdiv double %23, %25
  %27 = fmul double %26, 0x3EB0C6F7A0B5ED8D
  store double %27, double* %5, align 8
  %28 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %6, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %28)
  %29 = load double, double* %5, align 8
  ret double %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureSparseMatMult(i32 %0, i32 %1, double %2, %struct.Random_struct* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.Random_struct*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.Stopwatch_struct*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store %struct.Random_struct* %3, %struct.Random_struct** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %25 = call double* @RandomVector(i32 %23, %struct.Random_struct* %24)
  store double* %25, double** %9, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 8, %27
  %29 = call noalias i8* @malloc(i64 %28) #7
  %30 = bitcast i8* %29 to double*
  store double* %30, double** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.Random_struct*, %struct.Random_struct** %8, align 8
  %39 = call double* @RandomVector(i32 %37, %struct.Random_struct* %38)
  store double* %39, double** %14, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = call noalias i8* @malloc(i64 %42) #7
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %15, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = call noalias i8* @malloc(i64 %48) #7
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %51 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %51, %struct.Stopwatch_struct** %19, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  store i32 0, i32* %53, align 4
  store i32 0, i32* %17, align 4
  br label %54

54:                                               ; preds = %97, %4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %54
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %64, %65
  store i32 %66, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %17, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %21, align 4
  %76 = icmp slt i32 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %58
  store i32 1, i32* %21, align 4
  br label %78

78:                                               ; preds = %77, %58
  store i32 0, i32* %22, align 4
  br label %79

79:                                               ; preds = %93, %78
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %21, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %22, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %87, i64 %91
  store i32 %86, i32* %92, align 4
  br label %93

93:                                               ; preds = %83
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %79

96:                                               ; preds = %79
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %54

100:                                              ; preds = %54
  br label %101

101:                                              ; preds = %115, %100
  %102 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %102)
  %103 = load i32, i32* %5, align 4
  %104 = load double*, double** %10, align 8
  %105 = load double*, double** %14, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = load double*, double** %9, align 8
  %109 = load i32, i32* %18, align 4
  %110 = mul nsw i32 %109, 64
  call void @SparseCompRow_matmult(i32 %103, double* %104, double* %105, i32* %106, i32* %107, double* %108, i32 %110)
  %111 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %111)
  %112 = load i32, i32* %18, align 4
  %113 = icmp sgt i32 %112, 4096
  br i1 %113, label %114, label %115

114:                                              ; preds = %101
  br label %118

115:                                              ; preds = %101
  %116 = load i32, i32* %18, align 4
  %117 = mul nsw i32 %116, 2
  store i32 %117, i32* %18, align 4
  br label %101

118:                                              ; preds = %114
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %18, align 4
  %122 = call double @SparseCompRow_num_flops(i32 %119, i32 %120, i32 %121)
  %123 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  %124 = call double @Stopwatch_read(%struct.Stopwatch_struct* %123)
  %125 = fdiv double %122, %124
  %126 = fmul double %125, 0x3EB0C6F7A0B5ED8D
  store double %126, double* %11, align 8
  %127 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %19, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %127)
  %128 = load i32*, i32** %16, align 8
  %129 = bitcast i32* %128 to i8*
  call void @free(i8* %129) #7
  %130 = load i32*, i32** %15, align 8
  %131 = bitcast i32* %130 to i8*
  call void @free(i8* %131) #7
  %132 = load double*, double** %14, align 8
  %133 = bitcast double* %132 to i8*
  call void @free(i8* %133) #7
  %134 = load double*, double** %10, align 8
  %135 = bitcast double* %134 to i8*
  call void @free(i8* %135) #7
  %136 = load double*, double** %9, align 8
  %137 = bitcast double* %136 to i8*
  call void @free(i8* %137) #7
  %138 = load double, double* %11, align 8
  ret double %138
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @kernel_measureLU(i32 %0, double %1, %struct.Random_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %struct.Random_struct*, align 8
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.Stopwatch_struct*, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store %struct.Random_struct* %2, %struct.Random_struct** %6, align 8
  store double** null, double*** %7, align 8
  store double** null, double*** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = call %struct.Stopwatch_struct* @new_Stopwatch()
  store %struct.Stopwatch_struct* %14, %struct.Stopwatch_struct** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.Random_struct*, %struct.Random_struct** %6, align 8
  %18 = call double** @RandomMatrix(i32 %15, i32 %16, %struct.Random_struct* %17)
  store double** %18, double*** %7, align 8
  %19 = icmp eq double** %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  call void @exit(i32 1) #8
  unreachable

21:                                               ; preds = %3
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call double** @new_Array2D_double(i32 %22, i32 %23)
  store double** %24, double*** %8, align 8
  %25 = icmp eq double** %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  call void @exit(i32 1) #8
  unreachable

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 %30) #7
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %9, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  call void @exit(i32 1) #8
  unreachable

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %60, %35
  %37 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_start(%struct.Stopwatch_struct* %37)
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %52, %36
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load double**, double*** %8, align 8
  %46 = load double**, double*** %7, align 8
  call void @Array2D_double_copy(i32 %43, i32 %44, double** %45, double** %46)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load double**, double*** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @LU_factor(i32 %47, i32 %48, double** %49, i32* %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_stop(%struct.Stopwatch_struct* %56)
  %57 = load i32, i32* %13, align 4
  %58 = icmp sgt i32 %57, 4096
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 2
  store i32 %62, i32* %13, align 4
  br label %36

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = call double @LU_num_flops(i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = sitofp i32 %66 to double
  %68 = fmul double %65, %67
  %69 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  %70 = call double @Stopwatch_read(%struct.Stopwatch_struct* %69)
  %71 = fdiv double %68, %70
  %72 = fmul double %71, 0x3EB0C6F7A0B5ED8D
  store double %72, double* %11, align 8
  %73 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %10, align 8
  call void @Stopwatch_delete(%struct.Stopwatch_struct* %73)
  %74 = load i32*, i32** %9, align 8
  %75 = bitcast i32* %74 to i8*
  call void @free(i8* %75) #7
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = load double**, double*** %8, align 8
  call void @Array2D_double_delete(i32 %76, i32 %77, double** %78)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load double**, double*** %7, align 8
  call void @Array2D_double_delete(i32 %79, i32 %80, double** %81)
  %82 = load double, double* %11, align 8
  ret double %82
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @LU_num_flops(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sitofp i32 %4 to double
  store double %5, double* %3, align 8
  %6 = load double, double* %3, align 8
  %7 = fmul double 2.000000e+00, %6
  %8 = load double, double* %3, align 8
  %9 = fmul double %7, %8
  %10 = load double, double* %3, align 8
  %11 = fmul double %9, %10
  %12 = fdiv double %11, 3.000000e+00
  ret double %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LU_copy_matrix(i32 %0, i32 %1, double** %2, double** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double**, align 8
  %8 = alloca double**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store double** %2, double*** %7, align 8
  store double** %3, double*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %42, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %45

15:                                               ; preds = %11
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %38, %15
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load double**, double*** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds double*, double** %21, i64 %23
  %25 = load double*, double** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = load double, double* %28, align 8
  %30 = load double**, double*** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  %34 = load double*, double** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %29, double* %37, align 8
  br label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %16

41:                                               ; preds = %16
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %11

45:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @LU_factor(i32 %0, i32 %1, double** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double** %2, double*** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %11, align 4
  br label %33

33:                                               ; preds = %212, %31
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %215

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %12, align 4
  %39 = load double**, double*** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds double, double* %43, i64 %45
  %47 = load double, double* %46, align 8
  %48 = call double @llvm.fabs.f64(double %47)
  store double %48, double* %14, align 8
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %73, %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load double**, double*** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double*, double** %56, i64 %58
  %60 = load double*, double** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  %64 = load double, double* %63, align 8
  %65 = call double @llvm.fabs.f64(double %64)
  store double %65, double* %15, align 8
  %66 = load double, double* %15, align 8
  %67 = load double, double* %14, align 8
  %68 = fcmp ogt double %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %12, align 4
  %71 = load double, double* %15, align 8
  store double %71, double* %14, align 8
  br label %72

72:                                               ; preds = %69, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %13, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load double**, double*** %8, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds double*, double** %82, i64 %84
  %86 = load double*, double** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds double, double* %86, i64 %88
  %90 = load double, double* %89, align 8
  %91 = fcmp oeq double %90, 0.000000e+00
  br i1 %91, label %92, label %93

92:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %216

93:                                               ; preds = %76
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %117

97:                                               ; preds = %93
  %98 = load double**, double*** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double*, double** %98, i64 %100
  %102 = load double*, double** %101, align 8
  store double* %102, double** %16, align 8
  %103 = load double**, double*** %8, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds double*, double** %103, i64 %105
  %107 = load double*, double** %106, align 8
  %108 = load double**, double*** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds double*, double** %108, i64 %110
  store double* %107, double** %111, align 8
  %112 = load double*, double** %16, align 8
  %113 = load double**, double*** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds double*, double** %113, i64 %115
  store double* %112, double** %116, align 8
  br label %117

117:                                              ; preds = %97, %93
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %155

122:                                              ; preds = %117
  %123 = load double**, double*** %8, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double*, double** %123, i64 %125
  %127 = load double*, double** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds double, double* %127, i64 %129
  %131 = load double, double* %130, align 8
  %132 = fdiv double 1.000000e+00, %131
  store double %132, double* %17, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %135

135:                                              ; preds = %151, %122
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %154

139:                                              ; preds = %135
  %140 = load double, double* %17, align 8
  %141 = load double**, double*** %8, align 8
  %142 = load i32, i32* %18, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds double*, double** %141, i64 %143
  %145 = load double*, double** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds double, double* %145, i64 %147
  %149 = load double, double* %148, align 8
  %150 = fmul double %149, %140
  store double %150, double* %148, align 8
  br label %151

151:                                              ; preds = %139
  %152 = load i32, i32* %18, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %18, align 4
  br label %135

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %117
  %156 = load i32, i32* %11, align 4
  %157 = load i32, i32* %10, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %211

160:                                              ; preds = %155
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %207, %160
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %210

167:                                              ; preds = %163
  %168 = load double**, double*** %8, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double*, double** %168, i64 %170
  %172 = load double*, double** %171, align 8
  store double* %172, double** %20, align 8
  %173 = load double**, double*** %8, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds double*, double** %173, i64 %175
  %177 = load double*, double** %176, align 8
  store double* %177, double** %21, align 8
  %178 = load double*, double** %20, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds double, double* %178, i64 %180
  %182 = load double, double* %181, align 8
  store double %182, double* %22, align 8
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %23, align 4
  br label %185

185:                                              ; preds = %203, %167
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %206

189:                                              ; preds = %185
  %190 = load double, double* %22, align 8
  %191 = load double*, double** %21, align 8
  %192 = load i32, i32* %23, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds double, double* %191, i64 %193
  %195 = load double, double* %194, align 8
  %196 = fmul double %190, %195
  %197 = load double*, double** %20, align 8
  %198 = load i32, i32* %23, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds double, double* %197, i64 %199
  %201 = load double, double* %200, align 8
  %202 = fsub double %201, %196
  store double %202, double* %200, align 8
  br label %203

203:                                              ; preds = %189
  %204 = load i32, i32* %23, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %23, align 4
  br label %185

206:                                              ; preds = %185
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %163

210:                                              ; preds = %163
  br label %211

211:                                              ; preds = %210, %155
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %33

215:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %215, %92
  %217 = load i32, i32* %5, align 4
  ret i32 %217
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local double @MonteCarlo_num_flops(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sitofp i32 %3 to double
  %5 = fmul double %4, 4.000000e+00
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @MonteCarlo_integrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %8 = call %struct.Random_struct* @new_Random_seed(i32 113)
  store %struct.Random_struct* %8, %struct.Random_struct** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = call double @Random_nextDouble(%struct.Random_struct* %14)
  store double %15, double* %6, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %17 = call double @Random_nextDouble(%struct.Random_struct* %16)
  store double %17, double* %7, align 8
  %18 = load double, double* %6, align 8
  %19 = load double, double* %6, align 8
  %20 = fmul double %18, %19
  %21 = load double, double* %7, align 8
  %22 = load double, double* %7, align 8
  %23 = fmul double %21, %22
  %24 = fadd double %20, %23
  %25 = fcmp ole double %24, 1.000000e+00
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %13
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  call void @Random_delete(%struct.Random_struct* %34)
  %35 = load i32, i32* %4, align 4
  %36 = sitofp i32 %35 to double
  %37 = load i32, i32* %2, align 4
  %38 = sitofp i32 %37 to double
  %39 = fdiv double %36, %38
  %40 = fmul double %39, 4.000000e+00
  ret double %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Random_struct* @new_Random_seed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Random_struct*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call noalias i8* @malloc(i64 112) #7
  %5 = bitcast i8* %4 to %struct.Random_struct*
  store %struct.Random_struct* %5, %struct.Random_struct** %3, align 8
  %6 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %7 = load i32, i32* %2, align 4
  call void @initialize(%struct.Random_struct* %6, i32 %7)
  %8 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %8, i32 0, i32 5
  store double 0.000000e+00, double* %9, align 8
  %10 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %11 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %10, i32 0, i32 6
  store double 1.000000e+00, double* %11, align 8
  %12 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %13 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %12, i32 0, i32 7
  store double 1.000000e+00, double* %13, align 8
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %14, i32 0, i32 4
  store i32 0, i32* %15, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  ret %struct.Random_struct* %16
}

; Function Attrs: noinline nounwind uwtable
define internal void @initialize(%struct.Random_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  store double 0x3E00000000200000, double* @dm1, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %13 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2147483647
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  br label %25

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 2147483647, %24 ]
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %25
  store i32 9069, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = srem i32 %34, 65536
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sdiv i32 %36, 65536
  store i32 %37, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %38

38:                                               ; preds = %67, %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 17
  br i1 %40, label %41, label %70

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 65536
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 %47, %48
  %50 = add nsw i32 %46, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %50, %53
  %55 = srem i32 %54, 32768
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %5, align 4
  %57 = srem i32 %56, 65536
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 65536, %59
  %61 = add nsw i32 %58, %60
  %62 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %63 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [17 x i32], [17 x i32]* %63, i64 0, i64 %65
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %41
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %38

70:                                               ; preds = %38
  %71 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %72 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %71, i32 0, i32 2
  store i32 4, i32* %72, align 8
  %73 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %74 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %73, i32 0, i32 3
  store i32 16, i32* %74, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Random_struct* @new_Random(i32 %0, double %1, double %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.Random_struct*, align 8
  store i32 %0, i32* %4, align 4
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %8 = call noalias i8* @malloc(i64 112) #7
  %9 = bitcast i8* %8 to %struct.Random_struct*
  store %struct.Random_struct* %9, %struct.Random_struct** %7, align 8
  %10 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %11 = load i32, i32* %4, align 4
  call void @initialize(%struct.Random_struct* %10, i32 %11)
  %12 = load double, double* %5, align 8
  %13 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %14 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %13, i32 0, i32 5
  store double %12, double* %14, align 8
  %15 = load double, double* %6, align 8
  %16 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %17 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %16, i32 0, i32 6
  store double %15, double* %17, align 8
  %18 = load double, double* %6, align 8
  %19 = load double, double* %5, align 8
  %20 = fsub double %18, %19
  %21 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %22 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %21, i32 0, i32 7
  store double %20, double* %22, align 8
  %23 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %24 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %23, i32 0, i32 4
  store i32 1, i32* %24, align 8
  %25 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  ret %struct.Random_struct* %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Random_delete(%struct.Random_struct* %0) #0 {
  %2 = alloca %struct.Random_struct*, align 8
  store %struct.Random_struct* %0, %struct.Random_struct** %2, align 8
  %3 = load %struct.Random_struct*, %struct.Random_struct** %2, align 8
  %4 = bitcast %struct.Random_struct* %3 to i8*
  call void @free(i8* %4) #7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Random_nextDouble(%struct.Random_struct* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.Random_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.Random_struct* %0, %struct.Random_struct** %3, align 8
  %8 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %9 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %12 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %15 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds [17 x i32], [17 x i32]* %15, i64 0, i64 0
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 2147483647
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %1
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %36 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [17 x i32], [17 x i32]* %36, i64 0, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 16, i32* %5, align 4
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %43, %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %49 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 16, i32* %6, align 4
  br label %56

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %59 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %61 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %56
  %65 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %66 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %65, i32 0, i32 5
  %67 = load double, double* %66, align 8
  %68 = load double, double* @dm1, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double %68, %70
  %72 = load %struct.Random_struct*, %struct.Random_struct** %3, align 8
  %73 = getelementptr inbounds %struct.Random_struct, %struct.Random_struct* %72, i32 0, i32 7
  %74 = load double, double* %73, align 8
  %75 = fmul double %71, %74
  %76 = fadd double %67, %75
  store double %76, double* %2, align 8
  br label %82

77:                                               ; preds = %56
  %78 = load double, double* @dm1, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sitofp i32 %79 to double
  %81 = fmul double %78, %80
  store double %81, double* %2, align 8
  br label %82

82:                                               ; preds = %77, %64
  %83 = load double, double* %2, align 8
  ret double %83
}

; Function Attrs: noinline nounwind uwtable
define dso_local double* @RandomVector(i32 %0, %struct.Random_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Random_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.Random_struct* %1, %struct.Random_struct** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = call noalias i8* @malloc(i64 %9) #7
  %11 = bitcast i8* %10 to double*
  store double* %11, double** %6, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load %struct.Random_struct*, %struct.Random_struct** %4, align 8
  %18 = call double @Random_nextDouble(%struct.Random_struct* %17)
  %19 = load double*, double** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  store double %18, double* %22, align 8
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = load double*, double** %6, align 8
  ret double* %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @RandomMatrix(i32 %0, i32 %1, %struct.Random_struct* %2) #0 {
  %4 = alloca double**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Random_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.Random_struct* %2, %struct.Random_struct** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 8, %12
  %14 = call noalias i8* @malloc(i64 %13) #7
  %15 = bitcast i8* %14 to double**
  store double** %15, double*** %10, align 8
  %16 = load double**, double*** %10, align 8
  %17 = icmp eq double** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store double** null, double*** %4, align 8
  br label %68

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %66

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = call noalias i8* @malloc(i64 %27) #7
  %29 = bitcast i8* %28 to double*
  %30 = load double**, double*** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds double*, double** %30, i64 %32
  store double* %29, double** %33, align 8
  %34 = load double**, double*** %10, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double*, double** %34, i64 %36
  %38 = load double*, double** %37, align 8
  %39 = icmp eq double* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load double**, double*** %10, align 8
  %42 = bitcast double** %41 to i8*
  call void @free(i8* %42) #7
  store double** null, double*** %4, align 8
  br label %68

43:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.Random_struct*, %struct.Random_struct** %7, align 8
  %50 = call double @Random_nextDouble(%struct.Random_struct* %49)
  %51 = load double**, double*** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %51, i64 %53
  %55 = load double*, double** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds double, double* %55, i64 %57
  store double %50, double* %58, align 8
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load double**, double*** %10, align 8
  store double** %67, double*** %4, align 8
  br label %68

68:                                               ; preds = %66, %40, %18
  %69 = load double**, double*** %4, align 8
  ret double** %69
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x double], align 16
  %14 = alloca %struct.Random_struct*, align 8
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store double 2.000000e+00, double* %6, align 8
  store i32 1024, i32* %7, align 4
  store i32 100, i32* %8, align 4
  store i32 1000, i32* %9, align 4
  store i32 5000, i32* %10, align 4
  store i32 100, i32* %11, align 4
  %16 = bitcast [6 x double]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 48, i1 false)
  %17 = call %struct.Random_struct* @new_Random_seed(i32 101010)
  store %struct.Random_struct* %17, %struct.Random_struct** %14, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  store i32 1, i32* %15, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26, %20
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

35:                                               ; preds = %26
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #9
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  store i32 1048576, i32* %7, align 4
  store i32 1000, i32* %8, align 4
  store i32 100000, i32* %9, align 4
  store i32 1000000, i32* %10, align 4
  store i32 1000, i32* %11, align 4
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i8**, i8*** %5, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call double @atof(i8* %53) #9
  store double %54, double* %6, align 8
  br label %55

55:                                               ; preds = %48, %44
  br label %56

56:                                               ; preds = %55, %2
  call void @print_banner()
  %57 = load double, double* %6, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), double %57)
  %59 = load i32, i32* %7, align 4
  %60 = load double, double* %6, align 8
  %61 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %62 = call double @kernel_measureFFT(i32 %59, double %60, %struct.Random_struct* %61)
  %63 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  store double %62, double* %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load double, double* %6, align 8
  %66 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %67 = call double @kernel_measureSOR(i32 %64, double %65, %struct.Random_struct* %66)
  %68 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  store double %67, double* %68, align 16
  %69 = load double, double* %6, align 8
  %70 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %71 = call double @kernel_measureMonteCarlo(double %69, %struct.Random_struct* %70)
  %72 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  store double %71, double* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load double, double* %6, align 8
  %76 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %77 = call double @kernel_measureSparseMatMult(i32 %73, i32 %74, double %75, %struct.Random_struct* %76)
  %78 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  store double %77, double* %78, align 16
  %79 = load i32, i32* %11, align 4
  %80 = load double, double* %6, align 8
  %81 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  %82 = call double @kernel_measureLU(i32 %79, double %80, %struct.Random_struct* %81)
  %83 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  store double %82, double* %83, align 8
  store i32 10000000, i32* %12, align 4
  %84 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %85 = load double, double* %84, align 8
  %86 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %87 = load double, double* %86, align 16
  %88 = fadd double %85, %87
  %89 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %90 = load double, double* %89, align 8
  %91 = fadd double %88, %90
  %92 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %93 = load double, double* %92, align 16
  %94 = fadd double %91, %93
  %95 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %96 = load double, double* %95, align 8
  %97 = fadd double %94, %96
  %98 = fdiv double %97, 5.000000e+00
  %99 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  store double %98, double* %99, align 16
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0))
  %101 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 0
  %102 = load double, double* %101, align 16
  %103 = load i32, i32* %12, align 4
  %104 = sitofp i32 %103 to double
  %105 = fdiv double %102, %104
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), double %105)
  %107 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 1
  %108 = load double, double* %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = load i32, i32* %7, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), double %111, i32 %112)
  %114 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 2
  %115 = load double, double* %114, align 16
  %116 = load i32, i32* %12, align 4
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %115, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), double %118, i32 %119, i32 %120)
  %122 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 3
  %123 = load double, double* %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %123, %125
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), double %126)
  %128 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 4
  %129 = load double, double* %128, align 16
  %130 = load i32, i32* %12, align 4
  %131 = sitofp i32 %130 to double
  %132 = fdiv double %129, %131
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), double %132, i32 %133, i32 %134)
  %136 = getelementptr inbounds [6 x double], [6 x double]* %13, i64 0, i64 5
  %137 = load double, double* %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %137, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), double %140, i32 %141, i32 %142)
  %144 = load %struct.Random_struct*, %struct.Random_struct** %14, align 8
  call void @Random_delete(%struct.Random_struct* %144)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #6

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_banner() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.14, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @SOR_num_flops(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sitofp i32 %10 to double
  store double %11, double* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sitofp i32 %12 to double
  store double %13, double* %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sitofp i32 %14 to double
  store double %15, double* %9, align 8
  %16 = load double, double* %7, align 8
  %17 = fsub double %16, 1.000000e+00
  %18 = load double, double* %8, align 8
  %19 = fsub double %18, 1.000000e+00
  %20 = fmul double %17, %19
  %21 = load double, double* %9, align 8
  %22 = fmul double %20, %21
  %23 = fmul double %22, 6.000000e+00
  ret double %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SOR_execute(i32 %0, i32 %1, double %2, double** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double**, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store double %2, double* %8, align 8
  store double** %3, double*** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load double, double* %8, align 8
  %22 = fmul double %21, 2.500000e-01
  store double %22, double* %11, align 8
  %23 = load double, double* %8, align 8
  %24 = fsub double 1.000000e+00, %23
  store double %24, double* %12, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %108, %5
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %29
  store i32 1, i32* %16, align 4
  br label %34

34:                                               ; preds = %104, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %107

38:                                               ; preds = %34
  %39 = load double**, double*** %9, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds double*, double** %39, i64 %41
  %43 = load double*, double** %42, align 8
  store double* %43, double** %18, align 8
  %44 = load double**, double*** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds double*, double** %44, i64 %47
  %49 = load double*, double** %48, align 8
  store double* %49, double** %19, align 8
  %50 = load double**, double*** %9, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double*, double** %50, i64 %53
  %55 = load double*, double** %54, align 8
  store double* %55, double** %20, align 8
  store i32 1, i32* %17, align 4
  br label %56

56:                                               ; preds = %100, %38
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %103

60:                                               ; preds = %56
  %61 = load double, double* %11, align 8
  %62 = load double*, double** %19, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = load double*, double** %20, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds double, double* %67, i64 %69
  %71 = load double, double* %70, align 8
  %72 = fadd double %66, %71
  %73 = load double*, double** %18, align 8
  %74 = load i32, i32* %17, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds double, double* %73, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fadd double %72, %78
  %80 = load double*, double** %18, align 8
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds double, double* %80, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fadd double %79, %85
  %87 = fmul double %61, %86
  %88 = load double, double* %12, align 8
  %89 = load double*, double** %18, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fmul double %88, %93
  %95 = fadd double %87, %94
  %96 = load double*, double** %18, align 8
  %97 = load i32, i32* %17, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  store double %95, double* %99, align 8
  br label %100

100:                                              ; preds = %60
  %101 = load i32, i32* %17, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %17, align 4
  br label %56

103:                                              ; preds = %56
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %34

107:                                              ; preds = %34
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %15, align 4
  br label %29

111:                                              ; preds = %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @SparseCompRow_num_flops(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %8, %9
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sitofp i32 %13 to double
  %15 = fmul double %14, 2.000000e+00
  %16 = load i32, i32* %6, align 4
  %17 = sitofp i32 %16 to double
  %18 = fmul double %15, %17
  ret double %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SparseCompRow_matmult(i32 %0, double* %1, double* %2, i32* %3, i32* %4, double* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca double*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store double* %1, double** %9, align 8
  store double* %2, double** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store double* %5, double** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %21

21:                                               ; preds = %78, %7
  %22 = load i32, i32* %15, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %81

25:                                               ; preds = %21
  store i32 0, i32* %16, align 4
  br label %26

26:                                               ; preds = %74, %25
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %26
  store double 0.000000e+00, double* %18, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %16, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %19, align 4
  store i32 %42, i32* %17, align 4
  br label %43

43:                                               ; preds = %65, %30
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load double*, double** %13, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds double, double* %48, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double*, double** %10, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fmul double %56, %61
  %63 = load double, double* %18, align 8
  %64 = fadd double %63, %62
  store double %64, double* %18, align 8
  br label %65

65:                                               ; preds = %47
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %17, align 4
  br label %43

68:                                               ; preds = %43
  %69 = load double, double* %18, align 8
  %70 = load double*, double** %9, align 8
  %71 = load i32, i32* %16, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds double, double* %70, i64 %72
  store double %69, double* %73, align 8
  br label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %16, align 4
  br label %26

77:                                               ; preds = %26
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %21

81:                                               ; preds = %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @seconds() #0 {
  %1 = load double, double* @seconds.t, align 8
  %2 = fadd double %1, 1.000000e+00
  store double %2, double* @seconds.t, align 8
  ret double %2
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwtach_reset(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %6 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %5, i32 0, i32 1
  store double 0.000000e+00, double* %6, align 8
  %7 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %8 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %7, i32 0, i32 2
  store double 0.000000e+00, double* %8, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Stopwatch_struct* @new_Stopwatch() #0 {
  %1 = alloca %struct.Stopwatch_struct*, align 8
  %2 = alloca %struct.Stopwatch_struct*, align 8
  %3 = call noalias i8* @malloc(i64 24) #7
  %4 = bitcast i8* %3 to %struct.Stopwatch_struct*
  store %struct.Stopwatch_struct* %4, %struct.Stopwatch_struct** %2, align 8
  %5 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %6 = icmp eq %struct.Stopwatch_struct* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.Stopwatch_struct* null, %struct.Stopwatch_struct** %1, align 8
  br label %11

8:                                                ; preds = %0
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  call void @Stopwtach_reset(%struct.Stopwatch_struct* %9)
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  store %struct.Stopwatch_struct* %10, %struct.Stopwatch_struct** %1, align 8
  br label %11

11:                                               ; preds = %8, %7
  %12 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %1, align 8
  ret %struct.Stopwatch_struct* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_delete(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = icmp ne %struct.Stopwatch_struct* %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %7 = bitcast %struct.Stopwatch_struct* %6 to i8*
  call void @free(i8* %7) #7
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_start(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %9 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %11 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %10, i32 0, i32 2
  store double 0.000000e+00, double* %11, align 8
  %12 = call double @seconds()
  %13 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %14 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %13, i32 0, i32 1
  store double %12, double* %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_resume(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = call double @seconds()
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %10 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %9, i32 0, i32 1
  store double %8, double* %10, align 8
  %11 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stopwatch_stop(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %4 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call double @seconds()
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %10 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %9, i32 0, i32 1
  %11 = load double, double* %10, align 8
  %12 = fsub double %8, %11
  %13 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %14 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %13, i32 0, i32 2
  %15 = load double, double* %14, align 8
  %16 = fadd double %15, %12
  store double %16, double* %14, align 8
  %17 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %18 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @Stopwatch_read(%struct.Stopwatch_struct* %0) #0 {
  %2 = alloca %struct.Stopwatch_struct*, align 8
  %3 = alloca double, align 8
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %2, align 8
  %4 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %5 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = call double @seconds()
  store double %9, double* %3, align 8
  %10 = load double, double* %3, align 8
  %11 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %12 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fsub double %10, %13
  %15 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %16 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %15, i32 0, i32 2
  %17 = load double, double* %16, align 8
  %18 = fadd double %17, %14
  store double %18, double* %16, align 8
  %19 = load double, double* %3, align 8
  %20 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %21 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %20, i32 0, i32 1
  store double %19, double* %21, align 8
  br label %22

22:                                               ; preds = %8, %1
  %23 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %2, align 8
  %24 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %23, i32 0, i32 2
  %25 = load double, double* %24, align 8
  ret double %25
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
