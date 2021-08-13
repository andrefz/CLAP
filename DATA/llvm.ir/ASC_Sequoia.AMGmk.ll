; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.hypre_CSRMatrix = type { double*, i32*, i32*, i32, i32, i32, i32*, i32, i32 }
%struct.hypre_Vector = type { double*, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%.14e\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Warning: No matrix data!\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"num_rows == hypre_CSRMatrixNumRows(B)\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"csr_matrix.c\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"col_map_offd_A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"col_map_offd_B\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"mc == num_nonzeros\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [41 x i8] c"num_vectors == hypre_VectorNumVectors(y)\00", align 1
@.str.2.15 = private unnamed_addr constant [13 x i8] c"csr_matvec.c\00", align 1
@hypre__global_error = dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"[No error] \00", align 1
@.str.1.19 = private unnamed_addr constant [17 x i8] c"[Generic error] \00", align 1
@.str.2.20 = private unnamed_addr constant [16 x i8] c"[Memory error] \00", align 1
@.str.3.21 = private unnamed_addr constant [24 x i8] c"[Error in argument %d] \00", align 1
@.str.4.22 = private unnamed_addr constant [27 x i8] c"[Method did not converge] \00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"Out of memory trying to allocate %d bytes\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1.24 = private unnamed_addr constant [15 x i8] c"hypre_memory.c\00", align 1
@testIter = dso_local constant i32 2000, align 4
@totalWallTime = dso_local global double 0.000000e+00, align 8
@totalCPUTime = dso_local global double 0.000000e+00, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.30 = private unnamed_addr constant [17 x i8] c"//------------ \0A\00", align 1
@.str.2.31 = private unnamed_addr constant [5 x i8] c"// \0A\00", align 1
@.str.3.32 = private unnamed_addr constant [36 x i8] c"//  Sequoia Benchmark Version 1.0 \0A\00", align 1
@.str.4.33 = private unnamed_addr constant [13 x i8] c"//   MATVEC\0A\00", align 1
@.str.5.34 = private unnamed_addr constant [12 x i8] c"//   Relax\0A\00", align 1
@.str.6.35 = private unnamed_addr constant [11 x i8] c"//   Axpy\0A\00", align 1
@.str.9.36 = private unnamed_addr constant [20 x i8] c" \0A Axpy: error: %e\0A\00", align 1
@.str.8.37 = private unnamed_addr constant [21 x i8] c" \0A Relax: error: %e\0A\00", align 1
@.str.7.38 = private unnamed_addr constant [22 x i8] c" \0A Matvec: error: %e\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.48 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2.49 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.3.50 = private unnamed_addr constant [25 x i8] c"hypre_assert failed: %s\0A\00", align 1
@.str.4.51 = private unnamed_addr constant [36 x i8] c"hypre_VectorNumVectors(vector) == 1\00", align 1
@.str.5.52 = private unnamed_addr constant [9 x i8] c"vector.c\00", align 1
@.str.6.53 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7.54 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.8.55 = private unnamed_addr constant [23 x i8] c"%d vectors of size %d\0A\00", align 1
@.str.9.56 = private unnamed_addr constant [11 x i8] c"vector %d\0A\00", align 1
@.str.10.57 = private unnamed_addr constant [7 x i8] c"%.14e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hypre_CSRMatrix*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i8* @hypre_CAlloc(i32 1, i32 56)
  %9 = bitcast i8* %8 to %struct.hypre_CSRMatrix*
  store %struct.hypre_CSRMatrix* %9, %struct.hypre_CSRMatrix** %7, align 8
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 0
  store double* null, double** %11, align 8
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %15 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %14, i32 0, i32 2
  store i32* null, i32** %15, align 8
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 6
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %28 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %27, i32 0, i32 8
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %31 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  ret %struct.hypre_CSRMatrix* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %5 = icmp ne %struct.hypre_CSRMatrix* %4, null
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to i8*
  call void @hypre_Free(i8* %10)
  %11 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %12 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %11, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 6
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %6
  %18 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %19 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  call void @hypre_Free(i8* %21)
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %6
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %31 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %30, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = bitcast double* %32 to i8*
  call void @hypre_Free(i8* %33)
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 0
  store double* null, double** %35, align 8
  %36 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %37 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to i8*
  call void @hypre_Free(i8* %39)
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 2
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %29, %24
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %44 = bitcast %struct.hypre_CSRMatrix* %43 to i8*
  call void @hypre_Free(i8* %44)
  store %struct.hypre_CSRMatrix* null, %struct.hypre_CSRMatrix** %2, align 8
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  %6 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  %15 = icmp ne double* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @hypre_CAlloc(i32 %20, i32 8)
  %22 = bitcast i8* %21 to double*
  %23 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %24 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %23, i32 0, i32 0
  store double* %22, double** %24, align 8
  br label %25

25:                                               ; preds = %19, %16, %1
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %27 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @hypre_CAlloc(i32 %32, i32 4)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %36 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %39 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @hypre_CAlloc(i32 %46, i32 4)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %50 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %49, i32 0, i32 2
  store i32* %48, i32** %50, align 8
  br label %51

51:                                               ; preds = %45, %42, %37
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixSetDataOwner(%struct.hypre_CSRMatrix* %0, i32 %1) #0 {
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %7, i32 0, i32 8
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  store i32 0, i32* %3, align 4
  %10 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %39, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %26, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %35, %20
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %16

42:                                               ; preds = %16
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %45 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %42
  %53 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %54 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  br label %93

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @hypre_CAlloc(i32 %56, i32 4)
  %58 = bitcast i8* %57 to i32*
  store i32* %58, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %86, %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %59
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %69, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %59

89:                                               ; preds = %59
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %92 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %91, i32 0, i32 6
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %89, %52
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixRead(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %13 = load i8*, i8** %2, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %4, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* @hypre_CAlloc(i32 %18, i32 4)
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %6, align 8
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load i32, i32* %11, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, %33
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %21

43:                                               ; preds = %21
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %49, i32 %50, i32 %55)
  store %struct.hypre_CSRMatrix* %56, %struct.hypre_CSRMatrix** %3, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %59 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %61 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %60)
  %62 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %63 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  store i32* %64, i32** %7, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %97, %43
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %100

69:                                               ; preds = %65
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %74)
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, %76
  store i32 %82, i32* %80, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %69
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %69
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %65

100:                                              ; preds = %65
  %101 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %102 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %101, i32 0, i32 0
  %103 = load double*, double** %102, align 8
  store double* %103, double** %5, align 8
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %119, %100
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %105, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %104
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = load double*, double** %5, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds double, double* %114, i64 %116
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double* %117)
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %12, align 4
  br label %104

122:                                              ; preds = %104
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %124 = call i32 @fclose(%struct._IO_FILE* %123)
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %127 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %126, i32 0, i32 5
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  %130 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %131 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 4
  %132 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  ret %struct.hypre_CSRMatrix* %132
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixPrint(%struct.hypre_CSRMatrix* %0, i8* %1) #0 {
  %3 = alloca %struct.hypre_CSRMatrix*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 0
  %15 = load double*, double** %14, align 8
  store double* %15, double** %6, align 8
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %3, align 8
  %23 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call %struct._IO_FILE* @fopen(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct._IO_FILE* %26, %struct._IO_FILE** %5, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %44, %2
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  br label %30

47:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %48

69:                                               ; preds = %48
  %70 = load double*, double** %6, align 8
  %71 = icmp ne double* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %89, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %74, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %73
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %83 = load double*, double** %6, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), double %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %73

92:                                               ; preds = %73
  br label %96

93:                                               ; preds = %69
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %96

96:                                               ; preds = %93, %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* %97)
  %99 = load i32, i32* %12, align 4
  ret i32 %99
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixCopy(%struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix* %1, i32 %2) #0 {
  %4 = alloca %struct.hypre_CSRMatrix*, align 8
  %5 = alloca %struct.hypre_CSRMatrix*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca double*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca double*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %4, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %18 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %21 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %24 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %27 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %30 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %13, align 8
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %74, %3
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %77

36:                                               ; preds = %32
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %70, %36
  %52 = load i32, i32* %16, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %52, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %60
  %71 = load i32, i32* %16, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %16, align 4
  br label %51

73:                                               ; preds = %51
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  br label %32

77:                                               ; preds = %32
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %133

89:                                               ; preds = %77
  %90 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %91 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %90, i32 0, i32 0
  %92 = load double*, double** %91, align 8
  store double* %92, double** %11, align 8
  %93 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %94 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %93, i32 0, i32 0
  %95 = load double*, double** %94, align 8
  store double* %95, double** %14, align 8
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %129, %89
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %132

100:                                              ; preds = %96
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %125, %100
  %107 = load i32, i32* %16, align 4
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %15, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %107, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %106
  %116 = load double*, double** %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %116, i64 %118
  %120 = load double, double* %119, align 8
  %121 = load double*, double** %14, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds double, double* %121, i64 %123
  store double %120, double* %124, align 8
  br label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %16, align 4
  br label %106

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %96

132:                                              ; preds = %96
  br label %133

133:                                              ; preds = %132, %77
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixClone(%struct.hypre_CSRMatrix* %0) #0 {
  %2 = alloca %struct.hypre_CSRMatrix*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hypre_CSRMatrix*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %2, align 8
  %13 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %20 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %22, i32 %23, i32 %24)
  store %struct.hypre_CSRMatrix* %25, %struct.hypre_CSRMatrix** %6, align 8
  %26 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %27 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %26)
  %28 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %29 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %7, align 8
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %8, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %9, align 8
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %55, %1
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %40

58:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %68, i32* %72, align 4
  br label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  br label %59

76:                                               ; preds = %59
  %77 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %78 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %81 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %2, align 8
  %83 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %88 = call i32 @hypre_CSRMatrixSetRownnz(%struct.hypre_CSRMatrix* %87)
  br label %89

89:                                               ; preds = %86, %76
  %90 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  ret %struct.hypre_CSRMatrix* %90
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @hypre_CSRMatrixUnion(%struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix* %1, i32* %2, i32* %3, i32** %4) #0 {
  %6 = alloca %struct.hypre_CSRMatrix*, align 8
  %7 = alloca %struct.hypre_CSRMatrix*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.hypre_CSRMatrix*, align 8
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %6, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** %4, i32*** %10, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %11, align 4
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %44 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %16, align 8
  %46 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %47 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %17, align 8
  %49 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %50 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %18, align 8
  %52 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %53 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  store i32* %54, i32** %19, align 8
  store i32* null, i32** %22, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %7, align 8
  %57 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %5
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 423, i32 1)
  br label %63

63:                                               ; preds = %60, %5
  %64 = load i32*, i32** %9, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 424, i32 1)
  br label %72

72:                                               ; preds = %69, %66
  br label %73

73:                                               ; preds = %72, %63
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32*, i32** %9, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 425, i32 1)
  br label %82

82:                                               ; preds = %79, %76
  br label %83

83:                                               ; preds = %82, %73
  %84 = load i32*, i32** %8, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = load i32, i32* %13, align 4
  br label %94

92:                                               ; preds = %86
  %93 = load i32, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  store i32 %95, i32* %14, align 4
  br label %144

96:                                               ; preds = %83
  %97 = load i32, i32* %13, align 4
  %98 = call i8* @hypre_CAlloc(i32 %97, i32 4)
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %22, align 8
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %14, align 4
  store i32 0, i32* %25, align 4
  br label %101

101:                                              ; preds = %140, %96
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %143

105:                                              ; preds = %101
  store i32 0, i32* %32, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %25, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %111

111:                                              ; preds = %125, %105
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %27, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %26, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 1, i32* %32, align 4
  br label %124

124:                                              ; preds = %123, %115
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* %32, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = load i32*, i32** %22, align 8
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %131, %128
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %25, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %25, align 4
  br label %101

143:                                              ; preds = %101
  br label %144

144:                                              ; preds = %143, %94
  %145 = load i32*, i32** %8, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %217

147:                                              ; preds = %144
  %148 = load i32, i32* %14, align 4
  %149 = call i8* @hypre_CAlloc(i32 %148, i32 4)
  %150 = bitcast i8* %149 to i32*
  %151 = load i32**, i32*** %10, align 8
  store i32* %150, i32** %151, align 8
  store i32 0, i32* %24, align 4
  br label %152

152:                                              ; preds = %167, %147
  %153 = load i32, i32* %24, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %24, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32**, i32*** %10, align 8
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %161, i32* %166, align 4
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %24, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %24, align 4
  br label %152

170:                                              ; preds = %152
  store i32 0, i32* %25, align 4
  br label %171

171:                                              ; preds = %213, %170
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %13, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %216

175:                                              ; preds = %171
  store i32 0, i32* %32, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %25, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %181

181:                                              ; preds = %195, %175
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = load i32*, i32** %8, align 8
  %187 = load i32, i32* %27, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %26, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %185
  store i32 1, i32* %32, align 4
  br label %194

194:                                              ; preds = %193, %185
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %27, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %27, align 4
  br label %181

198:                                              ; preds = %181
  %199 = load i32, i32* %32, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i32, i32* %26, align 4
  %203 = load i32**, i32*** %10, align 8
  %204 = load i32*, i32** %203, align 8
  %205 = load i32*, i32** %22, align 8
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %204, i64 %210
  store i32 %202, i32* %211, align 4
  br label %212

212:                                              ; preds = %201, %198
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %25, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %25, align 4
  br label %171

216:                                              ; preds = %171
  br label %217

217:                                              ; preds = %216, %144
  %218 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %6, align 8
  %219 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %15, align 4
  store i32 0, i32* %23, align 4
  br label %221

221:                                              ; preds = %312, %217
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %11, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %315

225:                                              ; preds = %221
  %226 = load i32*, i32** %16, align 8
  %227 = load i32, i32* %23, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  store i32 %230, i32* %30, align 4
  %231 = load i32*, i32** %16, align 8
  %232 = load i32, i32* %23, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %31, align 4
  %237 = load i32*, i32** %18, align 8
  %238 = load i32, i32* %23, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  store i32 %241, i32* %28, align 4
  br label %242

242:                                              ; preds = %308, %225
  %243 = load i32, i32* %28, align 4
  %244 = load i32*, i32** %18, align 8
  %245 = load i32, i32* %23, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %243, %249
  br i1 %250, label %251, label %311

251:                                              ; preds = %242
  %252 = load i32*, i32** %19, align 8
  %253 = load i32, i32* %28, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %25, align 4
  %257 = load i32*, i32** %9, align 8
  %258 = icmp ne i32* %257, null
  br i1 %258, label %259, label %265

259:                                              ; preds = %251
  %260 = load i32*, i32** %9, align 8
  %261 = load i32, i32* %25, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  store i32 %264, i32* %25, align 4
  br label %265

265:                                              ; preds = %259, %251
  store i32 0, i32* %32, align 4
  %266 = load i32, i32* %30, align 4
  store i32 %266, i32* %27, align 4
  br label %267

267:                                              ; preds = %298, %265
  %268 = load i32, i32* %27, align 4
  %269 = load i32, i32* %31, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %301

271:                                              ; preds = %267
  %272 = load i32*, i32** %17, align 8
  %273 = load i32, i32* %27, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %24, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %271
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %24, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  store i32 %284, i32* %24, align 4
  br label %285

285:                                              ; preds = %279, %271
  %286 = load i32, i32* %25, align 4
  %287 = load i32, i32* %24, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %285
  store i32 1, i32* %32, align 4
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* %30, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %296

293:                                              ; preds = %289
  %294 = load i32, i32* %30, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %30, align 4
  br label %296

296:                                              ; preds = %293, %289
  br label %301

297:                                              ; preds = %285
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %27, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %27, align 4
  br label %267

301:                                              ; preds = %296, %267
  %302 = load i32, i32* %32, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %301
  %305 = load i32, i32* %15, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %15, align 4
  br label %307

307:                                              ; preds = %304, %301
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %28, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %28, align 4
  br label %242

311:                                              ; preds = %242
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %23, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %23, align 4
  br label %221

315:                                              ; preds = %221
  %316 = load i32, i32* %11, align 4
  %317 = load i32, i32* %14, align 4
  %318 = load i32, i32* %15, align 4
  %319 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %316, i32 %317, i32 %318)
  store %struct.hypre_CSRMatrix* %319, %struct.hypre_CSRMatrix** %33, align 8
  %320 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %321 = call i32 @hypre_CSRMatrixInitialize(%struct.hypre_CSRMatrix* %320)
  %322 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %323 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  store i32* %324, i32** %20, align 8
  %325 = load i32*, i32** %20, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 0
  store i32 0, i32* %326, align 4
  %327 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  %328 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  store i32* %329, i32** %21, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %23, align 4
  br label %330

330:                                              ; preds = %461, %315
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %464

334:                                              ; preds = %330
  %335 = load i32*, i32** %16, align 8
  %336 = load i32, i32* %23, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* %30, align 4
  %340 = load i32*, i32** %16, align 8
  %341 = load i32, i32* %23, align 4
  %342 = add nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %31, align 4
  %346 = load i32, i32* %30, align 4
  store i32 %346, i32* %27, align 4
  br label %347

347:                                              ; preds = %363, %334
  %348 = load i32, i32* %27, align 4
  %349 = load i32, i32* %31, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %366

351:                                              ; preds = %347
  %352 = load i32*, i32** %17, align 8
  %353 = load i32, i32* %27, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32*, i32** %21, align 8
  %358 = load i32, i32* %29, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  store i32 %356, i32* %360, align 4
  %361 = load i32, i32* %29, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %29, align 4
  br label %363

363:                                              ; preds = %351
  %364 = load i32, i32* %27, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %27, align 4
  br label %347

366:                                              ; preds = %347
  %367 = load i32*, i32** %18, align 8
  %368 = load i32, i32* %23, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %367, i64 %369
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %28, align 4
  br label %372

372:                                              ; preds = %451, %366
  %373 = load i32, i32* %28, align 4
  %374 = load i32*, i32** %18, align 8
  %375 = load i32, i32* %23, align 4
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %373, %379
  br i1 %380, label %381, label %454

381:                                              ; preds = %372
  %382 = load i32*, i32** %19, align 8
  %383 = load i32, i32* %28, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %25, align 4
  %387 = load i32*, i32** %9, align 8
  %388 = icmp ne i32* %387, null
  br i1 %388, label %389, label %395

389:                                              ; preds = %381
  %390 = load i32*, i32** %9, align 8
  %391 = load i32, i32* %25, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  store i32 %394, i32* %25, align 4
  br label %395

395:                                              ; preds = %389, %381
  store i32 0, i32* %32, align 4
  %396 = load i32, i32* %30, align 4
  store i32 %396, i32* %27, align 4
  br label %397

397:                                              ; preds = %428, %395
  %398 = load i32, i32* %27, align 4
  %399 = load i32, i32* %31, align 4
  %400 = icmp slt i32 %398, %399
  br i1 %400, label %401, label %431

401:                                              ; preds = %397
  %402 = load i32*, i32** %17, align 8
  %403 = load i32, i32* %27, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  store i32 %406, i32* %24, align 4
  %407 = load i32*, i32** %8, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %415

409:                                              ; preds = %401
  %410 = load i32*, i32** %8, align 8
  %411 = load i32, i32* %24, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  store i32 %414, i32* %24, align 4
  br label %415

415:                                              ; preds = %409, %401
  %416 = load i32, i32* %25, align 4
  %417 = load i32, i32* %24, align 4
  %418 = icmp eq i32 %416, %417
  br i1 %418, label %419, label %427

419:                                              ; preds = %415
  store i32 1, i32* %32, align 4
  %420 = load i32, i32* %27, align 4
  %421 = load i32, i32* %30, align 4
  %422 = icmp eq i32 %420, %421
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load i32, i32* %30, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %30, align 4
  br label %426

426:                                              ; preds = %423, %419
  br label %431

427:                                              ; preds = %415
  br label %428

428:                                              ; preds = %427
  %429 = load i32, i32* %27, align 4
  %430 = add nsw i32 %429, 1
  store i32 %430, i32* %27, align 4
  br label %397

431:                                              ; preds = %426, %397
  %432 = load i32, i32* %32, align 4
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %450

434:                                              ; preds = %431
  %435 = load i32*, i32** %22, align 8
  %436 = load i32*, i32** %19, align 8
  %437 = load i32, i32* %28, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %435, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = load i32*, i32** %21, align 8
  %445 = load i32, i32* %29, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  store i32 %443, i32* %447, align 4
  %448 = load i32, i32* %29, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %29, align 4
  br label %450

450:                                              ; preds = %434, %431
  br label %451

451:                                              ; preds = %450
  %452 = load i32, i32* %28, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %28, align 4
  br label %372

454:                                              ; preds = %372
  %455 = load i32, i32* %29, align 4
  %456 = load i32*, i32** %20, align 8
  %457 = load i32, i32* %23, align 4
  %458 = add nsw i32 %457, 1
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds i32, i32* %456, i64 %459
  store i32 %455, i32* %460, align 4
  br label %461

461:                                              ; preds = %454
  %462 = load i32, i32* %23, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %23, align 4
  br label %330

464:                                              ; preds = %330
  %465 = load i32, i32* %29, align 4
  %466 = load i32, i32* %15, align 4
  %467 = icmp eq i32 %465, %466
  br i1 %467, label %471, label %468

468:                                              ; preds = %464
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %469, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 547, i32 1)
  br label %471

471:                                              ; preds = %468, %464
  %472 = load i32*, i32** %22, align 8
  %473 = icmp ne i32* %472, null
  br i1 %473, label %474, label %477

474:                                              ; preds = %471
  %475 = load i32*, i32** %22, align 8
  %476 = bitcast i32* %475 to i8*
  call void @hypre_Free(i8* %476)
  store i32* null, i32** %22, align 8
  br label %477

477:                                              ; preds = %474, %471
  %478 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %33, align 8
  ret %struct.hypre_CSRMatrix* %478
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec(double %0, %struct.hypre_CSRMatrix* %1, %struct.hypre_Vector* %2, double %3, %struct.hypre_Vector* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.hypre_CSRMatrix*, align 8
  %9 = alloca %struct.hypre_Vector*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_Vector*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca double, align 8
  %29 = alloca double, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca double, align 8
  %35 = alloca i32, align 4
  store double %0, double* %7, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %8, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %9, align 8
  store double %3, double* %10, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %11, align 8
  %36 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %37 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %36, i32 0, i32 0
  %38 = load double*, double** %37, align 8
  store double* %38, double** %12, align 8
  %39 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %40 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %13, align 8
  %42 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %43 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %14, align 8
  %45 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %46 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %15, align 4
  %48 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %49 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %16, align 4
  %51 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %52 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %17, align 8
  %54 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %55 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %18, align 4
  %57 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %58 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %57, i32 0, i32 0
  %59 = load double*, double** %58, align 8
  store double* %59, double** %19, align 8
  %60 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %61 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %60, i32 0, i32 0
  %62 = load double*, double** %61, align 8
  store double* %62, double** %20, align 8
  %63 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %64 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %21, align 4
  %66 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %67 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %22, align 4
  %69 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %70 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %23, align 4
  %72 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %73 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %24, align 4
  %75 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %76 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %25, align 4
  %78 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %79 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %26, align 4
  %81 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %82 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %27, align 4
  store double 0x3FE6666666666666, double* %34, align 8
  store i32 0, i32* %35, align 4
  %84 = load i32, i32* %23, align 4
  %85 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %86 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %5
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.14, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.15, i64 0, i64 0), i32 91, i32 1)
  br label %92

92:                                               ; preds = %89, %5
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %21, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %35, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %22, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 2, i32* %35, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %22, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 3, i32* %35, align 4
  br label %111

111:                                              ; preds = %110, %106, %102
  %112 = load double, double* %7, align 8
  %113 = fcmp oeq double %112, 0.000000e+00
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  store i32 0, i32* %30, align 4
  br label %115

115:                                              ; preds = %129, %114
  %116 = load i32, i32* %30, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %23, align 4
  %119 = mul nsw i32 %117, %118
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %115
  %122 = load double, double* %10, align 8
  %123 = load double*, double** %20, align 8
  %124 = load i32, i32* %30, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  %127 = load double, double* %126, align 8
  %128 = fmul double %127, %122
  store double %128, double* %126, align 8
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %30, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %30, align 4
  br label %115

132:                                              ; preds = %115
  %133 = load i32, i32* %35, align 4
  store i32 %133, i32* %6, align 4
  br label %484

134:                                              ; preds = %111
  %135 = load double, double* %10, align 8
  %136 = load double, double* %7, align 8
  %137 = fdiv double %135, %136
  store double %137, double* %28, align 8
  %138 = load double, double* %28, align 8
  %139 = fcmp une double %138, 1.000000e+00
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = load double, double* %28, align 8
  %142 = fcmp oeq double %141, 0.000000e+00
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  store i32 0, i32* %30, align 4
  br label %144

144:                                              ; preds = %155, %143
  %145 = load i32, i32* %30, align 4
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %23, align 4
  %148 = mul nsw i32 %146, %147
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %144
  %151 = load double*, double** %20, align 8
  %152 = load i32, i32* %30, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds double, double* %151, i64 %153
  store double 0.000000e+00, double* %154, align 8
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %30, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %30, align 4
  br label %144

158:                                              ; preds = %144
  br label %178

159:                                              ; preds = %140
  store i32 0, i32* %30, align 4
  br label %160

160:                                              ; preds = %174, %159
  %161 = load i32, i32* %30, align 4
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %23, align 4
  %164 = mul nsw i32 %162, %163
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %177

166:                                              ; preds = %160
  %167 = load double, double* %28, align 8
  %168 = load double*, double** %20, align 8
  %169 = load i32, i32* %30, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fmul double %172, %167
  store double %173, double* %171, align 8
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %30, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %30, align 4
  br label %160

177:                                              ; preds = %160
  br label %178

178:                                              ; preds = %177, %158
  br label %179

179:                                              ; preds = %178, %134
  %180 = load i32, i32* %18, align 4
  %181 = sitofp i32 %180 to double
  %182 = load double, double* %34, align 8
  %183 = load i32, i32* %15, align 4
  %184 = sitofp i32 %183 to double
  %185 = fmul double %182, %184
  %186 = fcmp olt double %181, %185
  br i1 %186, label %187, label %326

187:                                              ; preds = %179
  store i32 0, i32* %30, align 4
  br label %188

188:                                              ; preds = %322, %187
  %189 = load i32, i32* %30, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %325

192:                                              ; preds = %188
  %193 = load i32*, i32** %17, align 8
  %194 = load i32, i32* %30, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %33, align 4
  %198 = load i32, i32* %23, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %247

200:                                              ; preds = %192
  %201 = load double*, double** %20, align 8
  %202 = load i32, i32* %33, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds double, double* %201, i64 %203
  %205 = load double, double* %204, align 8
  store double %205, double* %29, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i32, i32* %33, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  store i32 %210, i32* %32, align 4
  br label %211

211:                                              ; preds = %238, %200
  %212 = load i32, i32* %32, align 4
  %213 = load i32*, i32** %13, align 8
  %214 = load i32, i32* %33, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp slt i32 %212, %218
  br i1 %219, label %220, label %241

220:                                              ; preds = %211
  %221 = load double*, double** %12, align 8
  %222 = load i32, i32* %32, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds double, double* %221, i64 %223
  %225 = load double, double* %224, align 8
  %226 = load double*, double** %19, align 8
  %227 = load i32*, i32** %14, align 8
  %228 = load i32, i32* %32, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds double, double* %226, i64 %232
  %234 = load double, double* %233, align 8
  %235 = fmul double %225, %234
  %236 = load double, double* %29, align 8
  %237 = fadd double %236, %235
  store double %237, double* %29, align 8
  br label %238

238:                                              ; preds = %220
  %239 = load i32, i32* %32, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %32, align 4
  br label %211

241:                                              ; preds = %211
  %242 = load double, double* %29, align 8
  %243 = load double*, double** %20, align 8
  %244 = load i32, i32* %33, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds double, double* %243, i64 %245
  store double %242, double* %246, align 8
  br label %321

247:                                              ; preds = %192
  store i32 0, i32* %31, align 4
  br label %248

248:                                              ; preds = %317, %247
  %249 = load i32, i32* %31, align 4
  %250 = load i32, i32* %23, align 4
  %251 = icmp slt i32 %249, %250
  br i1 %251, label %252, label %320

252:                                              ; preds = %248
  %253 = load double*, double** %20, align 8
  %254 = load i32, i32* %31, align 4
  %255 = load i32, i32* %25, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %33, align 4
  %258 = load i32, i32* %24, align 4
  %259 = mul nsw i32 %257, %258
  %260 = add nsw i32 %256, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %253, i64 %261
  %263 = load double, double* %262, align 8
  store double %263, double* %29, align 8
  %264 = load i32*, i32** %13, align 8
  %265 = load i32, i32* %33, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %32, align 4
  br label %269

269:                                              ; preds = %302, %252
  %270 = load i32, i32* %32, align 4
  %271 = load i32*, i32** %13, align 8
  %272 = load i32, i32* %33, align 4
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  %276 = load i32, i32* %275, align 4
  %277 = icmp slt i32 %270, %276
  br i1 %277, label %278, label %305

278:                                              ; preds = %269
  %279 = load double*, double** %12, align 8
  %280 = load i32, i32* %32, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds double, double* %279, i64 %281
  %283 = load double, double* %282, align 8
  %284 = load double*, double** %19, align 8
  %285 = load i32, i32* %31, align 4
  %286 = load i32, i32* %27, align 4
  %287 = mul nsw i32 %285, %286
  %288 = load i32*, i32** %14, align 8
  %289 = load i32, i32* %32, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %26, align 4
  %294 = mul nsw i32 %292, %293
  %295 = add nsw i32 %287, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds double, double* %284, i64 %296
  %298 = load double, double* %297, align 8
  %299 = fmul double %283, %298
  %300 = load double, double* %29, align 8
  %301 = fadd double %300, %299
  store double %301, double* %29, align 8
  br label %302

302:                                              ; preds = %278
  %303 = load i32, i32* %32, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %32, align 4
  br label %269

305:                                              ; preds = %269
  %306 = load double, double* %29, align 8
  %307 = load double*, double** %20, align 8
  %308 = load i32, i32* %31, align 4
  %309 = load i32, i32* %25, align 4
  %310 = mul nsw i32 %308, %309
  %311 = load i32, i32* %33, align 4
  %312 = load i32, i32* %24, align 4
  %313 = mul nsw i32 %311, %312
  %314 = add nsw i32 %310, %313
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds double, double* %307, i64 %315
  store double %306, double* %316, align 8
  br label %317

317:                                              ; preds = %305
  %318 = load i32, i32* %31, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %31, align 4
  br label %248

320:                                              ; preds = %248
  br label %321

321:                                              ; preds = %320, %241
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %30, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %30, align 4
  br label %188

325:                                              ; preds = %188
  br label %460

326:                                              ; preds = %179
  store i32 0, i32* %30, align 4
  br label %327

327:                                              ; preds = %456, %326
  %328 = load i32, i32* %30, align 4
  %329 = load i32, i32* %15, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %459

331:                                              ; preds = %327
  %332 = load i32, i32* %23, align 4
  %333 = icmp eq i32 %332, 1
  br i1 %333, label %334, label %381

334:                                              ; preds = %331
  %335 = load double*, double** %20, align 8
  %336 = load i32, i32* %30, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, double* %335, i64 %337
  %339 = load double, double* %338, align 8
  store double %339, double* %28, align 8
  %340 = load i32*, i32** %13, align 8
  %341 = load i32, i32* %30, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %32, align 4
  br label %345

345:                                              ; preds = %372, %334
  %346 = load i32, i32* %32, align 4
  %347 = load i32*, i32** %13, align 8
  %348 = load i32, i32* %30, align 4
  %349 = add nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %347, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %346, %352
  br i1 %353, label %354, label %375

354:                                              ; preds = %345
  %355 = load double*, double** %12, align 8
  %356 = load i32, i32* %32, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds double, double* %355, i64 %357
  %359 = load double, double* %358, align 8
  %360 = load double*, double** %19, align 8
  %361 = load i32*, i32** %14, align 8
  %362 = load i32, i32* %32, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds double, double* %360, i64 %366
  %368 = load double, double* %367, align 8
  %369 = fmul double %359, %368
  %370 = load double, double* %28, align 8
  %371 = fadd double %370, %369
  store double %371, double* %28, align 8
  br label %372

372:                                              ; preds = %354
  %373 = load i32, i32* %32, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %32, align 4
  br label %345

375:                                              ; preds = %345
  %376 = load double, double* %28, align 8
  %377 = load double*, double** %20, align 8
  %378 = load i32, i32* %30, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds double, double* %377, i64 %379
  store double %376, double* %380, align 8
  br label %455

381:                                              ; preds = %331
  store i32 0, i32* %31, align 4
  br label %382

382:                                              ; preds = %451, %381
  %383 = load i32, i32* %31, align 4
  %384 = load i32, i32* %23, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %386, label %454

386:                                              ; preds = %382
  %387 = load double*, double** %20, align 8
  %388 = load i32, i32* %31, align 4
  %389 = load i32, i32* %25, align 4
  %390 = mul nsw i32 %388, %389
  %391 = load i32, i32* %30, align 4
  %392 = load i32, i32* %24, align 4
  %393 = mul nsw i32 %391, %392
  %394 = add nsw i32 %390, %393
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds double, double* %387, i64 %395
  %397 = load double, double* %396, align 8
  store double %397, double* %28, align 8
  %398 = load i32*, i32** %13, align 8
  %399 = load i32, i32* %30, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, i32* %398, i64 %400
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %32, align 4
  br label %403

403:                                              ; preds = %436, %386
  %404 = load i32, i32* %32, align 4
  %405 = load i32*, i32** %13, align 8
  %406 = load i32, i32* %30, align 4
  %407 = add nsw i32 %406, 1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32, i32* %405, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = icmp slt i32 %404, %410
  br i1 %411, label %412, label %439

412:                                              ; preds = %403
  %413 = load double*, double** %12, align 8
  %414 = load i32, i32* %32, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds double, double* %413, i64 %415
  %417 = load double, double* %416, align 8
  %418 = load double*, double** %19, align 8
  %419 = load i32, i32* %31, align 4
  %420 = load i32, i32* %27, align 4
  %421 = mul nsw i32 %419, %420
  %422 = load i32*, i32** %14, align 8
  %423 = load i32, i32* %32, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i32, i32* %422, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %26, align 4
  %428 = mul nsw i32 %426, %427
  %429 = add nsw i32 %421, %428
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds double, double* %418, i64 %430
  %432 = load double, double* %431, align 8
  %433 = fmul double %417, %432
  %434 = load double, double* %28, align 8
  %435 = fadd double %434, %433
  store double %435, double* %28, align 8
  br label %436

436:                                              ; preds = %412
  %437 = load i32, i32* %32, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %32, align 4
  br label %403

439:                                              ; preds = %403
  %440 = load double, double* %28, align 8
  %441 = load double*, double** %20, align 8
  %442 = load i32, i32* %31, align 4
  %443 = load i32, i32* %25, align 4
  %444 = mul nsw i32 %442, %443
  %445 = load i32, i32* %30, align 4
  %446 = load i32, i32* %24, align 4
  %447 = mul nsw i32 %445, %446
  %448 = add nsw i32 %444, %447
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds double, double* %441, i64 %449
  store double %440, double* %450, align 8
  br label %451

451:                                              ; preds = %439
  %452 = load i32, i32* %31, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %31, align 4
  br label %382

454:                                              ; preds = %382
  br label %455

455:                                              ; preds = %454, %375
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %30, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %30, align 4
  br label %327

459:                                              ; preds = %327
  br label %460

460:                                              ; preds = %459, %325
  %461 = load double, double* %7, align 8
  %462 = fcmp une double %461, 1.000000e+00
  br i1 %462, label %463, label %482

463:                                              ; preds = %460
  store i32 0, i32* %30, align 4
  br label %464

464:                                              ; preds = %478, %463
  %465 = load i32, i32* %30, align 4
  %466 = load i32, i32* %15, align 4
  %467 = load i32, i32* %23, align 4
  %468 = mul nsw i32 %466, %467
  %469 = icmp slt i32 %465, %468
  br i1 %469, label %470, label %481

470:                                              ; preds = %464
  %471 = load double, double* %7, align 8
  %472 = load double*, double** %20, align 8
  %473 = load i32, i32* %30, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds double, double* %472, i64 %474
  %476 = load double, double* %475, align 8
  %477 = fmul double %476, %471
  store double %477, double* %475, align 8
  br label %478

478:                                              ; preds = %470
  %479 = load i32, i32* %30, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %30, align 4
  br label %464

481:                                              ; preds = %464
  br label %482

482:                                              ; preds = %481, %460
  %483 = load i32, i32* %35, align 4
  store i32 %483, i32* %6, align 4
  br label %484

484:                                              ; preds = %482, %132
  %485 = load i32, i32* %6, align 4
  ret i32 %485
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvecT(double %0, %struct.hypre_CSRMatrix* %1, %struct.hypre_Vector* %2, double %3, %struct.hypre_Vector* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca %struct.hypre_CSRMatrix*, align 8
  %9 = alloca %struct.hypre_Vector*, align 8
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_Vector*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca double*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  store double %0, double* %7, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %8, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %9, align 8
  store double %3, double* %10, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %11, align 8
  %38 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %39 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %38, i32 0, i32 0
  %40 = load double*, double** %39, align 8
  store double* %40, double** %12, align 8
  %41 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %42 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %13, align 8
  %44 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %45 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %14, align 8
  %47 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %48 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %15, align 4
  %50 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %8, align 8
  %51 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %54 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %53, i32 0, i32 0
  %55 = load double*, double** %54, align 8
  store double* %55, double** %17, align 8
  %56 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %57 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %56, i32 0, i32 0
  %58 = load double*, double** %57, align 8
  store double* %58, double** %18, align 8
  %59 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %60 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %19, align 4
  %62 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %63 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %20, align 4
  %65 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %66 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %21, align 4
  %68 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %69 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %22, align 4
  %71 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %72 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %23, align 4
  %74 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %75 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %24, align 4
  %77 = load %struct.hypre_Vector*, %struct.hypre_Vector** %9, align 8
  %78 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %25, align 4
  store i32 0, i32* %37, align 4
  %80 = load i32, i32* %21, align 4
  %81 = load %struct.hypre_Vector*, %struct.hypre_Vector** %11, align 8
  %82 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %88, label %85

85:                                               ; preds = %5
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.14, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.15, i64 0, i64 0), i32 258, i32 1)
  br label %88

88:                                               ; preds = %85, %5
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 1, i32* %37, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 2, i32* %37, align 4
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 3, i32* %37, align 4
  br label %107

107:                                              ; preds = %106, %102, %98
  %108 = load double, double* %7, align 8
  %109 = fcmp oeq double %108, 0.000000e+00
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  store i32 0, i32* %27, align 4
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %27, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %21, align 4
  %115 = mul nsw i32 %113, %114
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load double, double* %10, align 8
  %119 = load double*, double** %18, align 8
  %120 = load i32, i32* %27, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds double, double* %119, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fmul double %123, %118
  store double %124, double* %122, align 8
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %27, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %27, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* %37, align 4
  store i32 %129, i32* %6, align 4
  br label %513

130:                                              ; preds = %107
  %131 = load double, double* %10, align 8
  %132 = load double, double* %7, align 8
  %133 = fdiv double %131, %132
  store double %133, double* %26, align 8
  %134 = load double, double* %26, align 8
  %135 = fcmp une double %134, 1.000000e+00
  br i1 %135, label %136, label %175

136:                                              ; preds = %130
  %137 = load double, double* %26, align 8
  %138 = fcmp oeq double %137, 0.000000e+00
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  store i32 0, i32* %27, align 4
  br label %140

140:                                              ; preds = %151, %139
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %16, align 4
  %143 = load i32, i32* %21, align 4
  %144 = mul nsw i32 %142, %143
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %140
  %147 = load double*, double** %18, align 8
  %148 = load i32, i32* %27, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds double, double* %147, i64 %149
  store double 0.000000e+00, double* %150, align 8
  br label %151

151:                                              ; preds = %146
  %152 = load i32, i32* %27, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %27, align 4
  br label %140

154:                                              ; preds = %140
  br label %174

155:                                              ; preds = %136
  store i32 0, i32* %27, align 4
  br label %156

156:                                              ; preds = %170, %155
  %157 = load i32, i32* %27, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load i32, i32* %21, align 4
  %160 = mul nsw i32 %158, %159
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load double, double* %26, align 8
  %164 = load double*, double** %18, align 8
  %165 = load i32, i32* %27, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds double, double* %164, i64 %166
  %168 = load double, double* %167, align 8
  %169 = fmul double %168, %163
  store double %169, double* %167, align 8
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %27, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %27, align 4
  br label %156

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %154
  br label %175

175:                                              ; preds = %174, %130
  store i32 1, i32* %36, align 4
  %176 = load i32, i32* %36, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %371

178:                                              ; preds = %175
  store i32 0, i32* %28, align 4
  br label %179

179:                                              ; preds = %367, %178
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* %36, align 4
  %182 = icmp slt i32 %180, %181
  br i1 %182, label %183, label %370

183:                                              ; preds = %179
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %36, align 4
  %186 = sdiv i32 %184, %185
  store i32 %186, i32* %34, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32, i32* %34, align 4
  %189 = load i32, i32* %36, align 4
  %190 = mul nsw i32 %188, %189
  %191 = sub nsw i32 %187, %190
  store i32 %191, i32* %35, align 4
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %35, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %209

195:                                              ; preds = %183
  %196 = load i32, i32* %28, align 4
  %197 = load i32, i32* %34, align 4
  %198 = mul nsw i32 %196, %197
  %199 = load i32, i32* %28, align 4
  %200 = add nsw i32 %198, %199
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %32, align 4
  %202 = load i32, i32* %28, align 4
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %34, align 4
  %205 = mul nsw i32 %203, %204
  %206 = load i32, i32* %28, align 4
  %207 = add nsw i32 %205, %206
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %33, align 4
  br label %222

209:                                              ; preds = %183
  %210 = load i32, i32* %28, align 4
  %211 = load i32, i32* %34, align 4
  %212 = mul nsw i32 %210, %211
  %213 = load i32, i32* %35, align 4
  %214 = add nsw i32 %212, %213
  %215 = sub nsw i32 %214, 1
  store i32 %215, i32* %32, align 4
  %216 = load i32, i32* %28, align 4
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* %34, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* %35, align 4
  %221 = add nsw i32 %219, %220
  store i32 %221, i32* %33, align 4
  br label %222

222:                                              ; preds = %209, %195
  %223 = load i32, i32* %21, align 4
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %285

225:                                              ; preds = %222
  store i32 0, i32* %27, align 4
  br label %226

226:                                              ; preds = %281, %225
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %15, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %284

230:                                              ; preds = %226
  %231 = load i32*, i32** %13, align 8
  %232 = load i32, i32* %27, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  store i32 %235, i32* %31, align 4
  br label %236

236:                                              ; preds = %277, %230
  %237 = load i32, i32* %31, align 4
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %27, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %237, %243
  br i1 %244, label %245, label %280

245:                                              ; preds = %236
  %246 = load i32*, i32** %14, align 8
  %247 = load i32, i32* %31, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %29, align 4
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %32, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %276

254:                                              ; preds = %245
  %255 = load i32, i32* %29, align 4
  %256 = load i32, i32* %33, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %276

258:                                              ; preds = %254
  %259 = load double*, double** %12, align 8
  %260 = load i32, i32* %31, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds double, double* %259, i64 %261
  %263 = load double, double* %262, align 8
  %264 = load double*, double** %17, align 8
  %265 = load i32, i32* %27, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double, double* %264, i64 %266
  %268 = load double, double* %267, align 8
  %269 = fmul double %263, %268
  %270 = load double*, double** %18, align 8
  %271 = load i32, i32* %29, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds double, double* %270, i64 %272
  %274 = load double, double* %273, align 8
  %275 = fadd double %274, %269
  store double %275, double* %273, align 8
  br label %276

276:                                              ; preds = %258, %254, %245
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %31, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %31, align 4
  br label %236

280:                                              ; preds = %236
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %27, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %27, align 4
  br label %226

284:                                              ; preds = %226
  br label %366

285:                                              ; preds = %222
  store i32 0, i32* %27, align 4
  br label %286

286:                                              ; preds = %362, %285
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* %15, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %365

290:                                              ; preds = %286
  store i32 0, i32* %30, align 4
  br label %291

291:                                              ; preds = %358, %290
  %292 = load i32, i32* %30, align 4
  %293 = load i32, i32* %21, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %361

295:                                              ; preds = %291
  %296 = load i32*, i32** %13, align 8
  %297 = load i32, i32* %27, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %31, align 4
  br label %301

301:                                              ; preds = %354, %295
  %302 = load i32, i32* %31, align 4
  %303 = load i32*, i32** %13, align 8
  %304 = load i32, i32* %27, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %303, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = icmp slt i32 %302, %308
  br i1 %309, label %310, label %357

310:                                              ; preds = %301
  %311 = load i32*, i32** %14, align 8
  %312 = load i32, i32* %31, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %29, align 4
  %316 = load i32, i32* %29, align 4
  %317 = load i32, i32* %32, align 4
  %318 = icmp sgt i32 %316, %317
  br i1 %318, label %319, label %353

319:                                              ; preds = %310
  %320 = load i32, i32* %29, align 4
  %321 = load i32, i32* %33, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %353

323:                                              ; preds = %319
  %324 = load double*, double** %12, align 8
  %325 = load i32, i32* %31, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds double, double* %324, i64 %326
  %328 = load double, double* %327, align 8
  %329 = load double*, double** %17, align 8
  %330 = load i32, i32* %27, align 4
  %331 = load i32, i32* %24, align 4
  %332 = mul nsw i32 %330, %331
  %333 = load i32, i32* %30, align 4
  %334 = load i32, i32* %25, align 4
  %335 = mul nsw i32 %333, %334
  %336 = add nsw i32 %332, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds double, double* %329, i64 %337
  %339 = load double, double* %338, align 8
  %340 = fmul double %328, %339
  %341 = load double*, double** %18, align 8
  %342 = load i32, i32* %29, align 4
  %343 = load i32, i32* %22, align 4
  %344 = mul nsw i32 %342, %343
  %345 = load i32, i32* %30, align 4
  %346 = load i32, i32* %23, align 4
  %347 = mul nsw i32 %345, %346
  %348 = add nsw i32 %344, %347
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds double, double* %341, i64 %349
  %351 = load double, double* %350, align 8
  %352 = fadd double %351, %340
  store double %352, double* %350, align 8
  br label %353

353:                                              ; preds = %323, %319, %310
  br label %354

354:                                              ; preds = %353
  %355 = load i32, i32* %31, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %31, align 4
  br label %301

357:                                              ; preds = %301
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %30, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %30, align 4
  br label %291

361:                                              ; preds = %291
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %27, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %27, align 4
  br label %286

365:                                              ; preds = %286
  br label %366

366:                                              ; preds = %365, %284
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %28, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %28, align 4
  br label %179

370:                                              ; preds = %179
  br label %489

371:                                              ; preds = %175
  store i32 0, i32* %27, align 4
  br label %372

372:                                              ; preds = %485, %371
  %373 = load i32, i32* %27, align 4
  %374 = load i32, i32* %15, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %488

376:                                              ; preds = %372
  %377 = load i32, i32* %21, align 4
  %378 = icmp eq i32 %377, 1
  br i1 %378, label %379, label %421

379:                                              ; preds = %376
  %380 = load i32*, i32** %13, align 8
  %381 = load i32, i32* %27, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %31, align 4
  br label %385

385:                                              ; preds = %417, %379
  %386 = load i32, i32* %31, align 4
  %387 = load i32*, i32** %13, align 8
  %388 = load i32, i32* %27, align 4
  %389 = add nsw i32 %388, 1
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %387, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = icmp slt i32 %386, %392
  br i1 %393, label %394, label %420

394:                                              ; preds = %385
  %395 = load i32*, i32** %14, align 8
  %396 = load i32, i32* %31, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %29, align 4
  %400 = load double*, double** %12, align 8
  %401 = load i32, i32* %31, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds double, double* %400, i64 %402
  %404 = load double, double* %403, align 8
  %405 = load double*, double** %17, align 8
  %406 = load i32, i32* %27, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds double, double* %405, i64 %407
  %409 = load double, double* %408, align 8
  %410 = fmul double %404, %409
  %411 = load double*, double** %18, align 8
  %412 = load i32, i32* %29, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds double, double* %411, i64 %413
  %415 = load double, double* %414, align 8
  %416 = fadd double %415, %410
  store double %416, double* %414, align 8
  br label %417

417:                                              ; preds = %394
  %418 = load i32, i32* %31, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %31, align 4
  br label %385

420:                                              ; preds = %385
  br label %484

421:                                              ; preds = %376
  store i32 0, i32* %30, align 4
  br label %422

422:                                              ; preds = %480, %421
  %423 = load i32, i32* %30, align 4
  %424 = load i32, i32* %21, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %483

426:                                              ; preds = %422
  %427 = load i32*, i32** %13, align 8
  %428 = load i32, i32* %27, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  store i32 %431, i32* %31, align 4
  br label %432

432:                                              ; preds = %476, %426
  %433 = load i32, i32* %31, align 4
  %434 = load i32*, i32** %13, align 8
  %435 = load i32, i32* %27, align 4
  %436 = add nsw i32 %435, 1
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %434, i64 %437
  %439 = load i32, i32* %438, align 4
  %440 = icmp slt i32 %433, %439
  br i1 %440, label %441, label %479

441:                                              ; preds = %432
  %442 = load i32*, i32** %14, align 8
  %443 = load i32, i32* %31, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32, i32* %442, i64 %444
  %446 = load i32, i32* %445, align 4
  store i32 %446, i32* %29, align 4
  %447 = load double*, double** %12, align 8
  %448 = load i32, i32* %31, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds double, double* %447, i64 %449
  %451 = load double, double* %450, align 8
  %452 = load double*, double** %17, align 8
  %453 = load i32, i32* %27, align 4
  %454 = load i32, i32* %24, align 4
  %455 = mul nsw i32 %453, %454
  %456 = load i32, i32* %30, align 4
  %457 = load i32, i32* %25, align 4
  %458 = mul nsw i32 %456, %457
  %459 = add nsw i32 %455, %458
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds double, double* %452, i64 %460
  %462 = load double, double* %461, align 8
  %463 = fmul double %451, %462
  %464 = load double*, double** %18, align 8
  %465 = load i32, i32* %29, align 4
  %466 = load i32, i32* %22, align 4
  %467 = mul nsw i32 %465, %466
  %468 = load i32, i32* %30, align 4
  %469 = load i32, i32* %23, align 4
  %470 = mul nsw i32 %468, %469
  %471 = add nsw i32 %467, %470
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds double, double* %464, i64 %472
  %474 = load double, double* %473, align 8
  %475 = fadd double %474, %463
  store double %475, double* %473, align 8
  br label %476

476:                                              ; preds = %441
  %477 = load i32, i32* %31, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %31, align 4
  br label %432

479:                                              ; preds = %432
  br label %480

480:                                              ; preds = %479
  %481 = load i32, i32* %30, align 4
  %482 = add nsw i32 %481, 1
  store i32 %482, i32* %30, align 4
  br label %422

483:                                              ; preds = %422
  br label %484

484:                                              ; preds = %483, %420
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %27, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %27, align 4
  br label %372

488:                                              ; preds = %372
  br label %489

489:                                              ; preds = %488, %370
  %490 = load double, double* %7, align 8
  %491 = fcmp une double %490, 1.000000e+00
  br i1 %491, label %492, label %511

492:                                              ; preds = %489
  store i32 0, i32* %27, align 4
  br label %493

493:                                              ; preds = %507, %492
  %494 = load i32, i32* %27, align 4
  %495 = load i32, i32* %16, align 4
  %496 = load i32, i32* %21, align 4
  %497 = mul nsw i32 %495, %496
  %498 = icmp slt i32 %494, %497
  br i1 %498, label %499, label %510

499:                                              ; preds = %493
  %500 = load double, double* %7, align 8
  %501 = load double*, double** %18, align 8
  %502 = load i32, i32* %27, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds double, double* %501, i64 %503
  %505 = load double, double* %504, align 8
  %506 = fmul double %505, %500
  store double %506, double* %504, align 8
  br label %507

507:                                              ; preds = %499
  %508 = load i32, i32* %27, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %27, align 4
  br label %493

510:                                              ; preds = %493
  br label %511

511:                                              ; preds = %510, %489
  %512 = load i32, i32* %37, align 4
  store i32 %512, i32* %6, align 4
  br label %513

513:                                              ; preds = %511, %128
  %514 = load i32, i32* %6, align 4
  ret i32 %514
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_CSRMatrixMatvec_FF(double %0, %struct.hypre_CSRMatrix* %1, %struct.hypre_Vector* %2, double %3, %struct.hypre_Vector* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.hypre_CSRMatrix*, align 8
  %12 = alloca %struct.hypre_Vector*, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.hypre_Vector*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca double*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca double*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca double, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store double %0, double* %10, align 8
  store %struct.hypre_CSRMatrix* %1, %struct.hypre_CSRMatrix** %11, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %12, align 8
  store double %3, double* %13, align 8
  store %struct.hypre_Vector* %4, %struct.hypre_Vector** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  store double* %33, double** %18, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %19, align 8
  %37 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %38 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %20, align 8
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %41 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %21, align 4
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %11, align 8
  %44 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %22, align 4
  %46 = load %struct.hypre_Vector*, %struct.hypre_Vector** %12, align 8
  %47 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %46, i32 0, i32 0
  %48 = load double*, double** %47, align 8
  store double* %48, double** %23, align 8
  %49 = load %struct.hypre_Vector*, %struct.hypre_Vector** %14, align 8
  %50 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %49, i32 0, i32 0
  %51 = load double*, double** %50, align 8
  store double* %51, double** %24, align 8
  %52 = load %struct.hypre_Vector*, %struct.hypre_Vector** %12, align 8
  %53 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %25, align 4
  %55 = load %struct.hypre_Vector*, %struct.hypre_Vector** %14, align 8
  %56 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %26, align 4
  store i32 0, i32* %30, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %25, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %8
  store i32 1, i32* %30, align 4
  br label %62

62:                                               ; preds = %61, %8
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %26, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  store i32 2, i32* %30, align 4
  br label %67

67:                                               ; preds = %66, %62
  %68 = load i32, i32* %22, align 4
  %69 = load i32, i32* %25, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* %21, align 4
  %73 = load i32, i32* %26, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 3, i32* %30, align 4
  br label %76

76:                                               ; preds = %75, %71, %67
  %77 = load double, double* %10, align 8
  %78 = fcmp oeq double %77, 0.000000e+00
  br i1 %78, label %79, label %106

79:                                               ; preds = %76
  store i32 0, i32* %28, align 4
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i32, i32* %28, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load i32*, i32** %15, align 8
  %86 = load i32, i32* %28, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %17, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %84
  %93 = load double, double* %13, align 8
  %94 = load double*, double** %24, align 8
  %95 = load i32, i32* %28, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fmul double %98, %93
  store double %99, double* %97, align 8
  br label %100

100:                                              ; preds = %92, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %28, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %28, align 4
  br label %80

104:                                              ; preds = %80
  %105 = load i32, i32* %30, align 4
  store i32 %105, i32* %9, align 4
  br label %273

106:                                              ; preds = %76
  %107 = load double, double* %13, align 8
  %108 = load double, double* %10, align 8
  %109 = fdiv double %107, %108
  store double %109, double* %27, align 8
  %110 = load double, double* %27, align 8
  %111 = fcmp une double %110, 1.000000e+00
  br i1 %111, label %112, label %165

112:                                              ; preds = %106
  %113 = load double, double* %27, align 8
  %114 = fcmp oeq double %113, 0.000000e+00
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  store i32 0, i32* %28, align 4
  br label %116

116:                                              ; preds = %134, %115
  %117 = load i32, i32* %28, align 4
  %118 = load i32, i32* %21, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %137

120:                                              ; preds = %116
  %121 = load i32*, i32** %15, align 8
  %122 = load i32, i32* %28, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %17, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %120
  %129 = load double*, double** %24, align 8
  %130 = load i32, i32* %28, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds double, double* %129, i64 %131
  store double 0.000000e+00, double* %132, align 8
  br label %133

133:                                              ; preds = %128, %120
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %28, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %28, align 4
  br label %116

137:                                              ; preds = %116
  br label %164

138:                                              ; preds = %112
  store i32 0, i32* %28, align 4
  br label %139

139:                                              ; preds = %160, %138
  %140 = load i32, i32* %28, align 4
  %141 = load i32, i32* %21, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %28, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load double, double* %27, align 8
  %153 = load double*, double** %24, align 8
  %154 = load i32, i32* %28, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds double, double* %153, i64 %155
  %157 = load double, double* %156, align 8
  %158 = fmul double %157, %152
  store double %158, double* %156, align 8
  br label %159

159:                                              ; preds = %151, %143
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %28, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %28, align 4
  br label %139

163:                                              ; preds = %139
  br label %164

164:                                              ; preds = %163, %137
  br label %165

165:                                              ; preds = %164, %106
  store i32 0, i32* %28, align 4
  br label %166

166:                                              ; preds = %239, %165
  %167 = load i32, i32* %28, align 4
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %242

170:                                              ; preds = %166
  %171 = load i32*, i32** %15, align 8
  %172 = load i32, i32* %28, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %238

178:                                              ; preds = %170
  %179 = load double*, double** %24, align 8
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds double, double* %179, i64 %181
  %183 = load double, double* %182, align 8
  store double %183, double* %27, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32, i32* %28, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  store i32 %188, i32* %29, align 4
  br label %189

189:                                              ; preds = %229, %178
  %190 = load i32, i32* %29, align 4
  %191 = load i32*, i32** %19, align 8
  %192 = load i32, i32* %28, align 4
  %193 = add nsw i32 %192, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp slt i32 %190, %196
  br i1 %197, label %198, label %232

198:                                              ; preds = %189
  %199 = load i32*, i32** %16, align 8
  %200 = load i32*, i32** %20, align 8
  %201 = load i32, i32* %29, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %17, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %228

210:                                              ; preds = %198
  %211 = load double*, double** %18, align 8
  %212 = load i32, i32* %29, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds double, double* %211, i64 %213
  %215 = load double, double* %214, align 8
  %216 = load double*, double** %23, align 8
  %217 = load i32*, i32** %20, align 8
  %218 = load i32, i32* %29, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds double, double* %216, i64 %222
  %224 = load double, double* %223, align 8
  %225 = fmul double %215, %224
  %226 = load double, double* %27, align 8
  %227 = fadd double %226, %225
  store double %227, double* %27, align 8
  br label %228

228:                                              ; preds = %210, %198
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %29, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %29, align 4
  br label %189

232:                                              ; preds = %189
  %233 = load double, double* %27, align 8
  %234 = load double*, double** %24, align 8
  %235 = load i32, i32* %28, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds double, double* %234, i64 %236
  store double %233, double* %237, align 8
  br label %238

238:                                              ; preds = %232, %170
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %28, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %28, align 4
  br label %166

242:                                              ; preds = %166
  %243 = load double, double* %10, align 8
  %244 = fcmp une double %243, 1.000000e+00
  br i1 %244, label %245, label %271

245:                                              ; preds = %242
  store i32 0, i32* %28, align 4
  br label %246

246:                                              ; preds = %267, %245
  %247 = load i32, i32* %28, align 4
  %248 = load i32, i32* %21, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %270

250:                                              ; preds = %246
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %28, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %17, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %250
  %259 = load double, double* %10, align 8
  %260 = load double*, double** %24, align 8
  %261 = load i32, i32* %28, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds double, double* %260, i64 %262
  %264 = load double, double* %263, align 8
  %265 = fmul double %264, %259
  store double %265, double* %263, align 8
  br label %266

266:                                              ; preds = %258, %250
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %28, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %28, align 4
  br label %246

270:                                              ; preds = %246
  br label %271

271:                                              ; preds = %270, %242
  %272 = load i32, i32* %30, align 4
  store i32 %272, i32* %9, align 4
  br label %273

273:                                              ; preds = %271, %104
  %274 = load i32, i32* %9, align 4
  ret i32 %274
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @hypre_error_handler(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @hypre__global_error, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* @hypre__global_error, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_GetError() #0 {
  %1 = load i32, i32* @hypre__global_error, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_CheckError(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = and i32 %5, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @HYPRE_DescribeError(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0)) #4
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.19, i64 0, i64 0)) #4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.20, i64 0, i64 0)) #4
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @HYPRE_GetErrorArg()
  %31 = call i32 (i8*, i8*, ...) @sprintf(i8* %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3.21, i64 0, i64 0), i32 %30) #4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, 256
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.22, i64 0, i64 0)) #4
  br label %39

39:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HYPRE_GetErrorArg() #0 {
  %1 = load i32, i32* @hypre__global_error, align 4
  %2 = ashr i32 %1, 3
  %3 = and i32 %2, 31
  ret i32 %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_OutOfMemory(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  call void @hypre_error_handler(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.24, i64 0, i64 0), i32 78, i32 2)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_MAlloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = call noalias i8* @malloc(i64 %8) #4
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @hypre_OutOfMemory(i32 %13)
  br label %15

15:                                               ; preds = %12, %6
  br label %17

16:                                               ; preds = %1
  store i8* null, i8** %3, align 8
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_CAlloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 %14, i64 %16) #4
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @hypre_OutOfMemory(i32 %21)
  br label %23

23:                                               ; preds = %20, %12
  br label %25

24:                                               ; preds = %2
  store i8* null, i8** %5, align 8
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8*, i8** %5, align 8
  ret i8* %26
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @hypre_ReAlloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = call noalias i8* @malloc(i64 %9) #4
  store i8* %10, i8** %3, align 8
  br label %16

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = call i8* @realloc(i8* %12, i64 %14) #4
  store i8* %15, i8** %3, align 8
  br label %16

16:                                               ; preds = %11, %7
  %17 = load i8*, i8** %3, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @hypre_OutOfMemory(i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %16
  %26 = load i8*, i8** %3, align 8
  ret i8* %26
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @hypre_Free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  call void @free(i8* %6) #4
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %0, i32 %1, i32 %2, double* %3, %struct.hypre_Vector** %4, %struct.hypre_Vector** %5, %struct.hypre_Vector** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca %struct.hypre_Vector**, align 8
  %13 = alloca %struct.hypre_Vector**, align 8
  %14 = alloca %struct.hypre_Vector**, align 8
  %15 = alloca %struct.hypre_CSRMatrix*, align 8
  %16 = alloca %struct.hypre_Vector*, align 8
  %17 = alloca %struct.hypre_Vector*, align 8
  %18 = alloca %struct.hypre_Vector*, align 8
  %19 = alloca double*, align 8
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca double*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store double* %3, double** %11, align 8
  store %struct.hypre_Vector** %4, %struct.hypre_Vector*** %12, align 8
  store %struct.hypre_Vector** %5, %struct.hypre_Vector*** %13, align 8
  store %struct.hypre_Vector** %6, %struct.hypre_Vector*** %14, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %32, align 4
  %38 = load i32, i32* %32, align 4
  %39 = add nsw i32 %38, 1
  %40 = call i8* @hypre_CAlloc(i32 %39, i32 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %22, align 8
  %42 = load i32, i32* %32, align 4
  %43 = call i8* @hypre_CAlloc(i32 %42, i32 8)
  %44 = bitcast i8* %43 to double*
  store double* %44, double** %19, align 8
  %45 = load i32, i32* %32, align 4
  %46 = call i8* @hypre_CAlloc(i32 %45, i32 8)
  %47 = bitcast i8* %46 to double*
  store double* %47, double** %20, align 8
  %48 = load i32, i32* %32, align 4
  %49 = call i8* @hypre_CAlloc(i32 %48, i32 8)
  %50 = bitcast i8* %49 to double*
  store double* %50, double** %21, align 8
  store i32 0, i32* %30, align 4
  br label %51

51:                                               ; preds = %68, %7
  %52 = load i32, i32* %30, align 4
  %53 = load i32, i32* %32, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load double*, double** %20, align 8
  %57 = load i32, i32* %30, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double 0.000000e+00, double* %59, align 8
  %60 = load double*, double** %21, align 8
  %61 = load i32, i32* %30, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds double, double* %60, i64 %62
  store double 0.000000e+00, double* %63, align 8
  %64 = load double*, double** %19, align 8
  %65 = load i32, i32* %30, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double, double* %64, i64 %66
  store double 1.000000e+00, double* %67, align 8
  br label %68

68:                                               ; preds = %55
  %69 = load i32, i32* %30, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %30, align 4
  br label %51

71:                                               ; preds = %51
  store i32 1, i32* %28, align 4
  %72 = load i32*, i32** %22, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  store i32 0, i32* %73, align 4
  store i32 0, i32* %27, align 4
  br label %74

74:                                               ; preds = %181, %71
  %75 = load i32, i32* %27, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %184

78:                                               ; preds = %74
  store i32 0, i32* %26, align 4
  br label %79

79:                                               ; preds = %177, %78
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %180

83:                                               ; preds = %79
  store i32 0, i32* %25, align 4
  br label %84

84:                                               ; preds = %173, %83
  %85 = load i32, i32* %25, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %176

88:                                               ; preds = %84
  %89 = load i32*, i32** %22, align 8
  %90 = load i32, i32* %28, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %22, align 8
  %96 = load i32, i32* %28, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  %99 = load i32*, i32** %22, align 8
  %100 = load i32, i32* %28, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* %27, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %88
  %108 = load i32*, i32** %22, align 8
  %109 = load i32, i32* %28, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %107, %88
  %115 = load i32, i32* %26, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32*, i32** %22, align 8
  %119 = load i32, i32* %28, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %117, %114
  %125 = load i32, i32* %25, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load i32*, i32** %22, align 8
  %129 = load i32, i32* %28, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %127, %124
  %135 = load i32, i32* %25, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load i32*, i32** %22, align 8
  %141 = load i32, i32* %28, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %139, %134
  %147 = load i32, i32* %26, align 4
  %148 = add nsw i32 %147, 1
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %146
  %152 = load i32*, i32** %22, align 8
  %153 = load i32, i32* %28, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %151, %146
  %159 = load i32, i32* %27, align 4
  %160 = add nsw i32 %159, 1
  %161 = load i32, i32* %10, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %158
  %164 = load i32*, i32** %22, align 8
  %165 = load i32, i32* %28, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %163, %158
  %171 = load i32, i32* %28, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %28, align 4
  br label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %25, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %25, align 4
  br label %84

176:                                              ; preds = %84
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %26, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %26, align 4
  br label %79

180:                                              ; preds = %79
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %27, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %27, align 4
  br label %74

184:                                              ; preds = %74
  %185 = load i32*, i32** %22, align 8
  %186 = load i32, i32* %32, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @hypre_CAlloc(i32 %189, i32 4)
  %191 = bitcast i8* %190 to i32*
  store i32* %191, i32** %23, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = load i32, i32* %32, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @hypre_CAlloc(i32 %196, i32 8)
  %198 = bitcast i8* %197 to double*
  store double* %198, double** %24, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %199

199:                                              ; preds = %359, %184
  %200 = load i32, i32* %27, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %362

203:                                              ; preds = %199
  store i32 0, i32* %26, align 4
  br label %204

204:                                              ; preds = %355, %203
  %205 = load i32, i32* %26, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %358

208:                                              ; preds = %204
  store i32 0, i32* %25, align 4
  br label %209

209:                                              ; preds = %351, %208
  %210 = load i32, i32* %25, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %210, %211
  br i1 %212, label %213, label %354

213:                                              ; preds = %209
  %214 = load i32, i32* %29, align 4
  %215 = load i32*, i32** %23, align 8
  %216 = load i32, i32* %28, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 %214, i32* %218, align 4
  %219 = load double*, double** %11, align 8
  %220 = getelementptr inbounds double, double* %219, i64 0
  %221 = load double, double* %220, align 8
  %222 = load double*, double** %24, align 8
  %223 = load i32, i32* %28, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %28, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds double, double* %222, i64 %225
  store double %221, double* %226, align 8
  %227 = load i32, i32* %27, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %247

229:                                              ; preds = %213
  %230 = load i32, i32* %29, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %231, %232
  %234 = sub nsw i32 %230, %233
  %235 = load i32*, i32** %23, align 8
  %236 = load i32, i32* %28, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  store i32 %234, i32* %238, align 4
  %239 = load double*, double** %11, align 8
  %240 = getelementptr inbounds double, double* %239, i64 3
  %241 = load double, double* %240, align 8
  %242 = load double*, double** %24, align 8
  %243 = load i32, i32* %28, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %28, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds double, double* %242, i64 %245
  store double %241, double* %246, align 8
  br label %247

247:                                              ; preds = %229, %213
  %248 = load i32, i32* %26, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %247
  %251 = load i32, i32* %29, align 4
  %252 = load i32, i32* %8, align 4
  %253 = sub nsw i32 %251, %252
  %254 = load i32*, i32** %23, align 8
  %255 = load i32, i32* %28, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  store i32 %253, i32* %257, align 4
  %258 = load double*, double** %11, align 8
  %259 = getelementptr inbounds double, double* %258, i64 2
  %260 = load double, double* %259, align 8
  %261 = load double*, double** %24, align 8
  %262 = load i32, i32* %28, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %28, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds double, double* %261, i64 %264
  store double %260, double* %265, align 8
  br label %266

266:                                              ; preds = %250, %247
  %267 = load i32, i32* %25, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  %270 = load i32, i32* %29, align 4
  %271 = sub nsw i32 %270, 1
  %272 = load i32*, i32** %23, align 8
  %273 = load i32, i32* %28, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  %276 = load double*, double** %11, align 8
  %277 = getelementptr inbounds double, double* %276, i64 1
  %278 = load double, double* %277, align 8
  %279 = load double*, double** %24, align 8
  %280 = load i32, i32* %28, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %28, align 4
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds double, double* %279, i64 %282
  store double %278, double* %283, align 8
  br label %284

284:                                              ; preds = %269, %266
  %285 = load i32, i32* %25, align 4
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %8, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %304

289:                                              ; preds = %284
  %290 = load i32, i32* %29, align 4
  %291 = add nsw i32 %290, 1
  %292 = load i32*, i32** %23, align 8
  %293 = load i32, i32* %28, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %291, i32* %295, align 4
  %296 = load double*, double** %11, align 8
  %297 = getelementptr inbounds double, double* %296, i64 1
  %298 = load double, double* %297, align 8
  %299 = load double*, double** %24, align 8
  %300 = load i32, i32* %28, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %28, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds double, double* %299, i64 %302
  store double %298, double* %303, align 8
  br label %304

304:                                              ; preds = %289, %284
  %305 = load i32, i32* %26, align 4
  %306 = add nsw i32 %305, 1
  %307 = load i32, i32* %9, align 4
  %308 = icmp slt i32 %306, %307
  br i1 %308, label %309, label %325

309:                                              ; preds = %304
  %310 = load i32, i32* %29, align 4
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32*, i32** %23, align 8
  %314 = load i32, i32* %28, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %312, i32* %316, align 4
  %317 = load double*, double** %11, align 8
  %318 = getelementptr inbounds double, double* %317, i64 2
  %319 = load double, double* %318, align 8
  %320 = load double*, double** %24, align 8
  %321 = load i32, i32* %28, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %28, align 4
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds double, double* %320, i64 %323
  store double %319, double* %324, align 8
  br label %325

325:                                              ; preds = %309, %304
  %326 = load i32, i32* %27, align 4
  %327 = add nsw i32 %326, 1
  %328 = load i32, i32* %10, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %348

330:                                              ; preds = %325
  %331 = load i32, i32* %29, align 4
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* %9, align 4
  %334 = mul nsw i32 %332, %333
  %335 = add nsw i32 %331, %334
  %336 = load i32*, i32** %23, align 8
  %337 = load i32, i32* %28, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  store i32 %335, i32* %339, align 4
  %340 = load double*, double** %11, align 8
  %341 = getelementptr inbounds double, double* %340, i64 3
  %342 = load double, double* %341, align 8
  %343 = load double*, double** %24, align 8
  %344 = load i32, i32* %28, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %28, align 4
  %346 = sext i32 %344 to i64
  %347 = getelementptr inbounds double, double* %343, i64 %346
  store double %342, double* %347, align 8
  br label %348

348:                                              ; preds = %330, %325
  %349 = load i32, i32* %29, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %29, align 4
  br label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %25, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %25, align 4
  br label %209

354:                                              ; preds = %209
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %26, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %26, align 4
  br label %204

358:                                              ; preds = %204
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %27, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %27, align 4
  br label %199

362:                                              ; preds = %199
  %363 = load i32, i32* %32, align 4
  %364 = load i32, i32* %32, align 4
  %365 = load i32*, i32** %22, align 8
  %366 = load i32, i32* %32, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = call %struct.hypre_CSRMatrix* @hypre_CSRMatrixCreate(i32 %363, i32 %364, i32 %369)
  store %struct.hypre_CSRMatrix* %370, %struct.hypre_CSRMatrix** %15, align 8
  %371 = load i32, i32* %32, align 4
  %372 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %371)
  store %struct.hypre_Vector* %372, %struct.hypre_Vector** %16, align 8
  %373 = load double*, double** %19, align 8
  %374 = load %struct.hypre_Vector*, %struct.hypre_Vector** %16, align 8
  %375 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %374, i32 0, i32 0
  store double* %373, double** %375, align 8
  %376 = load i32, i32* %32, align 4
  %377 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %376)
  store %struct.hypre_Vector* %377, %struct.hypre_Vector** %17, align 8
  %378 = load double*, double** %20, align 8
  %379 = load %struct.hypre_Vector*, %struct.hypre_Vector** %17, align 8
  %380 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %379, i32 0, i32 0
  store double* %378, double** %380, align 8
  store i32 0, i32* %30, align 4
  br label %381

381:                                              ; preds = %416, %362
  %382 = load i32, i32* %30, align 4
  %383 = load i32, i32* %32, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %419

385:                                              ; preds = %381
  %386 = load i32*, i32** %22, align 8
  %387 = load i32, i32* %30, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  store i32 %390, i32* %31, align 4
  br label %391

391:                                              ; preds = %412, %385
  %392 = load i32, i32* %31, align 4
  %393 = load i32*, i32** %22, align 8
  %394 = load i32, i32* %30, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32, i32* %393, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = icmp slt i32 %392, %398
  br i1 %399, label %400, label %415

400:                                              ; preds = %391
  %401 = load double*, double** %24, align 8
  %402 = load i32, i32* %31, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds double, double* %401, i64 %403
  %405 = load double, double* %404, align 8
  %406 = load double*, double** %21, align 8
  %407 = load i32, i32* %30, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds double, double* %406, i64 %408
  %410 = load double, double* %409, align 8
  %411 = fadd double %410, %405
  store double %411, double* %409, align 8
  br label %412

412:                                              ; preds = %400
  %413 = load i32, i32* %31, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %31, align 4
  br label %391

415:                                              ; preds = %391
  br label %416

416:                                              ; preds = %415
  %417 = load i32, i32* %30, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %30, align 4
  br label %381

419:                                              ; preds = %381
  %420 = load i32, i32* %32, align 4
  %421 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %420)
  store %struct.hypre_Vector* %421, %struct.hypre_Vector** %18, align 8
  %422 = load double*, double** %21, align 8
  %423 = load %struct.hypre_Vector*, %struct.hypre_Vector** %18, align 8
  %424 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %423, i32 0, i32 0
  store double* %422, double** %424, align 8
  %425 = load i32*, i32** %22, align 8
  %426 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %427 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %426, i32 0, i32 1
  store i32* %425, i32** %427, align 8
  %428 = load i32*, i32** %23, align 8
  %429 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %430 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %429, i32 0, i32 2
  store i32* %428, i32** %430, align 8
  %431 = load double*, double** %24, align 8
  %432 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  %433 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %432, i32 0, i32 0
  store double* %431, double** %433, align 8
  %434 = load %struct.hypre_Vector*, %struct.hypre_Vector** %16, align 8
  %435 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %12, align 8
  store %struct.hypre_Vector* %434, %struct.hypre_Vector** %435, align 8
  %436 = load %struct.hypre_Vector*, %struct.hypre_Vector** %17, align 8
  %437 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %13, align 8
  store %struct.hypre_Vector* %436, %struct.hypre_Vector** %437, align 8
  %438 = load %struct.hypre_Vector*, %struct.hypre_Vector** %18, align 8
  %439 = load %struct.hypre_Vector**, %struct.hypre_Vector*** %14, align 8
  store %struct.hypre_Vector* %438, %struct.hypre_Vector** %439, align 8
  %440 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %15, align 8
  ret %struct.hypre_CSRMatrix* %440
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store double 0.000000e+00, double* %10, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.32, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %17 = call i32 @gettimeofday(%struct.timeval* %6, %struct.timezone* null) #4
  %18 = call i64 @clock() #4
  store i64 %18, i64* %8, align 8
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Matvec()
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.33, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Relax()
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.34, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  store double 0.000000e+00, double* @totalWallTime, align 8
  store double 0.000000e+00, double* @totalCPUTime, align 8
  call void @test_Axpy()
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6.35, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.31, i64 0, i64 0))
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.30, i64 0, i64 0))
  %37 = call i32 @gettimeofday(%struct.timeval* %7, %struct.timezone* null) #4
  %38 = call i64 @clock() #4
  store i64 %38, i64* %9, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %40, %42
  %44 = sitofp i64 %43 to double
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %46, %48
  %50 = sitofp i64 %49 to double
  %51 = fdiv double %50, 1.000000e+06
  %52 = fadd double %44, %51
  store double %52, double* %10, align 8
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind
declare dso_local i64 @clock() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_Matvec() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hypre_CSRMatrix*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca %struct.hypre_Vector*, align 8
  %8 = alloca %struct.hypre_Vector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 50, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i32 50, i32* %11, align 4
  %18 = call i8* @hypre_CAlloc(i32 4, i32 8)
  %19 = bitcast i8* %18 to double*
  store double* %19, double** %13, align 8
  %20 = load double*, double** %13, align 8
  %21 = getelementptr inbounds double, double* %20, i64 0
  store double 6.000000e+00, double* %21, align 8
  %22 = load double*, double** %13, align 8
  %23 = getelementptr inbounds double, double* %22, i64 1
  store double -1.000000e+00, double* %23, align 8
  %24 = load double*, double** %13, align 8
  %25 = getelementptr inbounds double, double* %24, i64 2
  store double -1.000000e+00, double* %25, align 8
  %26 = load double*, double** %13, align 8
  %27 = getelementptr inbounds double, double* %26, i64 3
  store double -1.000000e+00, double* %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load double*, double** %13, align 8
  %32 = call %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %28, i32 %29, i32 %30, double* %31, %struct.hypre_Vector** %7, %struct.hypre_Vector** %6, %struct.hypre_Vector** %8)
  store %struct.hypre_CSRMatrix* %32, %struct.hypre_CSRMatrix** %5, align 8
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %34 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %33, double 1.000000e+00)
  %35 = load %struct.hypre_Vector*, %struct.hypre_Vector** %7, align 8
  %36 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %35, double 0.000000e+00)
  %37 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #4
  %38 = call i64 @clock() #4
  store i64 %38, i64* %3, align 8
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %47, %0
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 2000
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %44 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %45 = load %struct.hypre_Vector*, %struct.hypre_Vector** %7, align 8
  %46 = call i32 @hypre_CSRMatrixMatvec(double 1.000000e+00, %struct.hypre_CSRMatrix* %43, %struct.hypre_Vector* %44, double 0.000000e+00, %struct.hypre_Vector* %45)
  br label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %39

50:                                               ; preds = %39
  %51 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #4
  %52 = call i64 @clock() #4
  store i64 %52, i64* %4, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %54, %56
  %58 = sitofp i64 %57 to double
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %60, %62
  %64 = sitofp i64 %63 to double
  %65 = fdiv double %64, 1.000000e+06
  %66 = fadd double %58, %65
  %67 = load double, double* @totalWallTime, align 8
  %68 = fadd double %67, %66
  store double %68, double* @totalWallTime, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* %3, align 8
  %71 = sub nsw i64 %69, %70
  %72 = sitofp i64 %71 to double
  %73 = fdiv double %72, 1.000000e+06
  %74 = load double, double* @totalCPUTime, align 8
  %75 = fadd double %74, %73
  store double %75, double* @totalCPUTime, align 8
  %76 = load %struct.hypre_Vector*, %struct.hypre_Vector** %7, align 8
  %77 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %76, i32 0, i32 0
  %78 = load double*, double** %77, align 8
  store double* %78, double** %14, align 8
  %79 = load %struct.hypre_Vector*, %struct.hypre_Vector** %8, align 8
  %80 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %79, i32 0, i32 0
  %81 = load double*, double** %80, align 8
  store double* %81, double** %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %12, align 4
  br label %82

82:                                               ; preds = %109, %50
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %84, %85
  %87 = load i32, i32* %11, align 4
  %88 = mul nsw i32 %86, %87
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %112

90:                                               ; preds = %82
  %91 = load double*, double** %14, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = load double*, double** %15, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds double, double* %96, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fsub double %95, %100
  %102 = call double @llvm.fabs.f64(double %101)
  store double %102, double* %17, align 8
  %103 = load double, double* %17, align 8
  %104 = load double, double* %16, align 8
  %105 = fcmp ogt double %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %90
  %107 = load double, double* %17, align 8
  store double %107, double* %16, align 8
  br label %108

108:                                              ; preds = %106, %90
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %82

112:                                              ; preds = %82
  %113 = load double, double* %16, align 8
  %114 = fcmp ogt double %113, 0.000000e+00
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load double, double* %16, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7.38, i64 0, i64 0), double %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load double*, double** %13, align 8
  %120 = bitcast double* %119 to i8*
  call void @hypre_Free(i8* %120)
  store double* null, double** %13, align 8
  %121 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %122 = call i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %121)
  %123 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %124 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %123)
  %125 = load %struct.hypre_Vector*, %struct.hypre_Vector** %7, align 8
  %126 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %125)
  %127 = load %struct.hypre_Vector*, %struct.hypre_Vector** %8, align 8
  %128 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %127)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_Relax() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hypre_CSRMatrix*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca %struct.hypre_Vector*, align 8
  %8 = alloca %struct.hypre_Vector*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store i32 50, i32* %9, align 4
  store i32 50, i32* %10, align 4
  store i32 50, i32* %11, align 4
  %17 = call i8* @hypre_CAlloc(i32 4, i32 8)
  %18 = bitcast i8* %17 to double*
  store double* %18, double** %13, align 8
  %19 = load double*, double** %13, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  store double 6.000000e+00, double* %20, align 8
  %21 = load double*, double** %13, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double -1.000000e+00, double* %22, align 8
  %23 = load double*, double** %13, align 8
  %24 = getelementptr inbounds double, double* %23, i64 2
  store double -1.000000e+00, double* %24, align 8
  %25 = load double*, double** %13, align 8
  %26 = getelementptr inbounds double, double* %25, i64 3
  store double -1.000000e+00, double* %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load double*, double** %13, align 8
  %31 = call %struct.hypre_CSRMatrix* @GenerateSeqLaplacian(i32 %27, i32 %28, i32 %29, double* %30, %struct.hypre_Vector** %7, %struct.hypre_Vector** %6, %struct.hypre_Vector** %8)
  store %struct.hypre_CSRMatrix* %31, %struct.hypre_CSRMatrix** %5, align 8
  %32 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %33 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %32, double 1.000000e+00)
  %34 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #4
  %35 = call i64 @clock() #4
  store i64 %35, i64* %3, align 8
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %44, %0
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 2000
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %41 = load %struct.hypre_Vector*, %struct.hypre_Vector** %8, align 8
  %42 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %43 = call i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* %40, %struct.hypre_Vector* %41, %struct.hypre_Vector* %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  br label %36

47:                                               ; preds = %36
  %48 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #4
  %49 = call i64 @clock() #4
  store i64 %49, i64* %4, align 8
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %51, %53
  %55 = sitofp i64 %54 to double
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %57, %59
  %61 = sitofp i64 %60 to double
  %62 = fdiv double %61, 1.000000e+06
  %63 = fadd double %55, %62
  %64 = load double, double* @totalWallTime, align 8
  %65 = fadd double %64, %63
  store double %65, double* @totalWallTime, align 8
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %3, align 8
  %68 = sub nsw i64 %66, %67
  %69 = sitofp i64 %68 to double
  %70 = fdiv double %69, 1.000000e+06
  %71 = load double, double* @totalCPUTime, align 8
  %72 = fadd double %71, %70
  store double %72, double* @totalCPUTime, align 8
  %73 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %74 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %73, i32 0, i32 0
  %75 = load double*, double** %74, align 8
  store double* %75, double** %14, align 8
  store double 0.000000e+00, double* %16, align 8
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %98, %47
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %11, align 4
  %82 = mul nsw i32 %80, %81
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %76
  %85 = load double*, double** %14, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fsub double %89, 1.000000e+00
  %91 = call double @llvm.fabs.f64(double %90)
  store double %91, double* %15, align 8
  %92 = load double, double* %15, align 8
  %93 = load double, double* %16, align 8
  %94 = fcmp ogt double %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load double, double* %15, align 8
  store double %96, double* %16, align 8
  br label %97

97:                                               ; preds = %95, %84
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load double, double* %16, align 8
  %103 = fcmp ogt double %102, 0.000000e+00
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load double, double* %16, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8.37, i64 0, i64 0), double %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load double*, double** %13, align 8
  %109 = bitcast double* %108 to i8*
  call void @hypre_Free(i8* %109)
  store double* null, double** %13, align 8
  %110 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %5, align 8
  %111 = call i32 @hypre_CSRMatrixDestroy(%struct.hypre_CSRMatrix* %110)
  %112 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %113 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %112)
  %114 = load %struct.hypre_Vector*, %struct.hypre_Vector** %7, align 8
  %115 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %114)
  %116 = load %struct.hypre_Vector*, %struct.hypre_Vector** %8, align 8
  %117 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %116)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @test_Axpy() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hypre_Vector*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double*, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  store double 5.000000e-01, double* %9, align 8
  store i32 125000, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %13)
  store %struct.hypre_Vector* %14, %struct.hypre_Vector** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %15)
  store %struct.hypre_Vector* %16, %struct.hypre_Vector** %6, align 8
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %18 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %17)
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %20 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %19)
  %21 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %22 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %21, double 1.000000e+00)
  %23 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %24 = call i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %23, double 1.000000e+00)
  %25 = call i32 @gettimeofday(%struct.timeval* %1, %struct.timezone* null) #4
  %26 = call i64 @clock() #4
  store i64 %26, i64* %3, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %35, %0
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2000
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load double, double* %9, align 8
  %32 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %34 = call i32 @hypre_SeqVectorAxpy(double %31, %struct.hypre_Vector* %32, %struct.hypre_Vector* %33)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %27

38:                                               ; preds = %27
  %39 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #4
  %40 = call i64 @clock() #4
  store i64 %40, i64* %4, align 8
  %41 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %42 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %41, i32 0, i32 0
  %43 = load double*, double** %42, align 8
  store double* %43, double** %12, align 8
  store double 0.000000e+00, double* %11, align 8
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %38
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load double*, double** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %49, i64 %51
  %53 = load double, double* %52, align 8
  %54 = fsub double %53, 1.000000e+00
  %55 = fsub double %54, 1.000000e+03
  %56 = call double @llvm.fabs.f64(double %55)
  store double %56, double* %10, align 8
  %57 = load double, double* %10, align 8
  %58 = load double, double* %11, align 8
  %59 = fcmp ogt double %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load double, double* %10, align 8
  store double %61, double* %11, align 8
  br label %62

62:                                               ; preds = %60, %48
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load double, double* %11, align 8
  %68 = fcmp ogt double %67, 0.000000e+00
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load double, double* %11, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9.36, i64 0, i64 0), double %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %74, %76
  %78 = sitofp i64 %77 to double
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %80, %82
  %84 = sitofp i64 %83 to double
  %85 = fdiv double %84, 1.000000e+06
  %86 = fadd double %78, %85
  %87 = load double, double* @totalWallTime, align 8
  %88 = fadd double %87, %86
  store double %88, double* @totalWallTime, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %3, align 8
  %91 = sub nsw i64 %89, %90
  %92 = sitofp i64 %91 to double
  %93 = fdiv double %92, 1.000000e+06
  %94 = load double, double* @totalCPUTime, align 8
  %95 = fadd double %94, %93
  store double %95, double* @totalCPUTime, align 8
  %96 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %97 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %96)
  %98 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %99 = call i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %98)
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_BoomerAMGSeqRelax(%struct.hypre_CSRMatrix* %0, %struct.hypre_Vector* %1, %struct.hypre_Vector* %2) #0 {
  %4 = alloca %struct.hypre_CSRMatrix*, align 8
  %5 = alloca %struct.hypre_Vector*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca double*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hypre_CSRMatrix* %0, %struct.hypre_CSRMatrix** %4, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %5, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %6, align 8
  %25 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %26 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %25, i32 0, i32 0
  %27 = load double*, double** %26, align 8
  store double* %27, double** %7, align 8
  %28 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %29 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %8, align 8
  %31 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %32 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = load %struct.hypre_CSRMatrix*, %struct.hypre_CSRMatrix** %4, align 8
  %35 = getelementptr inbounds %struct.hypre_CSRMatrix, %struct.hypre_CSRMatrix* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %38 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %37, i32 0, i32 0
  %39 = load double*, double** %38, align 8
  store double* %39, double** %11, align 8
  %40 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %41 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %40, i32 0, i32 0
  %42 = load double*, double** %41, align 8
  store double* %42, double** %12, align 8
  store i32 0, i32* %23, align 4
  store i32 1, i32* %24, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @hypre_CAlloc(i32 %43, i32 8)
  %45 = bitcast i8* %44 to double*
  store double* %45, double** %13, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %60, %3
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load double*, double** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds double, double* %51, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  store double %55, double* %59, align 8
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %46

63:                                               ; preds = %46
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %209, %63
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %24, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %212

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %24, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %21, align 4
  %74 = load i32, i32* %24, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sub nsw i32 %72, %75
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %16, align 4
  %78 = load i32, i32* %22, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %68
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %21, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %19, align 4
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  %88 = load i32, i32* %21, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %20, align 4
  br label %105

93:                                               ; preds = %68
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %21, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %16, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* %21, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* %22, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %93, %80
  %106 = load i32, i32* %19, align 4
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %205, %105
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %208

111:                                              ; preds = %107
  %112 = load double*, double** %7, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %15, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds double, double* %112, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fcmp une double %120, 0.000000e+00
  br i1 %121, label %122, label %204

122:                                              ; preds = %111
  %123 = load double*, double** %12, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds double, double* %123, i64 %125
  %127 = load double, double* %126, align 8
  store double %127, double* %14, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %185, %122
  %135 = load i32, i32* %18, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %135, %141
  br i1 %142, label %143, label %188

143:                                              ; preds = %134
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %170

152:                                              ; preds = %143
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %20, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load double*, double** %7, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds double, double* %157, i64 %159
  %161 = load double, double* %160, align 8
  %162 = load double*, double** %11, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = fmul double %161, %166
  %168 = load double, double* %14, align 8
  %169 = fsub double %168, %167
  store double %169, double* %14, align 8
  br label %184

170:                                              ; preds = %152, %143
  %171 = load double*, double** %7, align 8
  %172 = load i32, i32* %18, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds double, double* %171, i64 %173
  %175 = load double, double* %174, align 8
  %176 = load double*, double** %13, align 8
  %177 = load i32, i32* %17, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, double* %176, i64 %178
  %180 = load double, double* %179, align 8
  %181 = fmul double %175, %180
  %182 = load double, double* %14, align 8
  %183 = fsub double %182, %181
  store double %183, double* %14, align 8
  br label %184

184:                                              ; preds = %170, %156
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %134

188:                                              ; preds = %134
  %189 = load double, double* %14, align 8
  %190 = load double*, double** %7, align 8
  %191 = load i32*, i32** %8, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds double, double* %190, i64 %196
  %198 = load double, double* %197, align 8
  %199 = fdiv double %189, %198
  %200 = load double*, double** %11, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds double, double* %200, i64 %202
  store double %199, double* %203, align 8
  br label %204

204:                                              ; preds = %188, %111
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %107

208:                                              ; preds = %107
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %64

212:                                              ; preds = %64
  %213 = load double*, double** %13, align 8
  %214 = bitcast double* %213 to i8*
  call void @hypre_Free(i8* %214)
  store double* null, double** %13, align 8
  %215 = load i32, i32* %23, align 4
  ret i32 %215
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hypre_Vector*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i8* @hypre_CAlloc(i32 1, i32 32)
  %5 = bitcast i8* %4 to %struct.hypre_Vector*
  store %struct.hypre_Vector* %5, %struct.hypre_Vector** %3, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %7 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 0
  store double* null, double** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %12 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %11, i32 0, i32 3
  store i32 1, i32* %12, align 8
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %14 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %13, i32 0, i32 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  ret %struct.hypre_Vector* %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_Vector*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %6)
  store %struct.hypre_Vector* %7, %struct.hypre_Vector** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  ret %struct.hypre_Vector* %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorDestroy(%struct.hypre_Vector* %0) #0 {
  %2 = alloca %struct.hypre_Vector*, align 8
  %3 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %5 = icmp ne %struct.hypre_Vector* %4, null
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %13 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  %15 = bitcast double* %14 to i8*
  call void @hypre_Free(i8* %15)
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %17 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 0
  store double* null, double** %17, align 8
  br label %18

18:                                               ; preds = %11, %6
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %20 = bitcast %struct.hypre_Vector* %19 to i8*
  call void @hypre_Free(i8* %20)
  store %struct.hypre_Vector* null, %struct.hypre_Vector** %2, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %0) #0 {
  %2 = alloca %struct.hypre_Vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %2, align 8
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %11 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %14 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %17 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 0
  %18 = load double*, double** %17, align 8
  %19 = icmp ne double* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %21, %22
  %24 = call i8* @hypre_CAlloc(i32 %23, i32 8)
  %25 = bitcast i8* %24 to double*
  %26 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %27 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %26, i32 0, i32 0
  store double* %25, double** %27, align 8
  br label %28

28:                                               ; preds = %20, %1
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %34 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %36 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %35, i32 0, i32 6
  store i32 1, i32* %36, align 4
  br label %50

37:                                               ; preds = %28
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %42 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %41, i32 0, i32 5
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %45 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  br label %49

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorSetDataOwner(%struct.hypre_Vector* %0, i32 %1) #0 {
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_Vector* @hypre_SeqVectorRead(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %4, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.48, i64 0, i64 0), i32* %6)
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.hypre_Vector* @hypre_SeqVectorCreate(i32 %12)
  store %struct.hypre_Vector* %13, %struct.hypre_Vector** %3, align 8
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %15 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %14)
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 0
  %18 = load double*, double** %17, align 8
  store double* %18, double** %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %25 = load double*, double** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, double* %25, i64 %27
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.49, i64 0, i64 0), double* %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %19

33:                                               ; preds = %19
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %35 = call i32 @fclose(%struct._IO_FILE* %34)
  %36 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %37 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.50, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4.51, i64 0, i64 0))
  call void @hypre_error_handler(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.52, i64 0, i64 0), i32 177, i32 1)
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  ret %struct.hypre_Vector* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorPrint(%struct.hypre_Vector* %0, i8* %1) #0 {
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %15 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %18 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %21 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %24 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %23, i32 0, i32 0
  %25 = load double*, double** %24, align 8
  store double* %25, double** %6, align 8
  %26 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %27 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct._IO_FILE* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.53, i64 0, i64 0))
  store %struct._IO_FILE* %30, %struct._IO_FILE** %5, align 8
  %31 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %32 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7.54, i64 0, i64 0), i32 %37)
  br label %44

39:                                               ; preds = %2
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.55, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %8, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %78, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.56, i64 0, i64 0), i32 %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %74, %52
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %62 = load double*, double** %6, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %62, i64 %70
  %72 = load double, double* %71, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.57, i64 0, i64 0), double %72)
  br label %74

74:                                               ; preds = %60
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %56

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %48

81:                                               ; preds = %48
  br label %99

82:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %95, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %89 = load double*, double** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.57, i64 0, i64 0), double %93)
  br label %95

95:                                               ; preds = %87
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %83

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %101 = call i32 @fclose(%struct._IO_FILE* %100)
  %102 = load i32, i32* %13, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorSetConstantValues(%struct.hypre_Vector* %0, double %1) #0 {
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca double, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %3, align 8
  store double %1, double* %4, align 8
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 0
  %11 = load double*, double** %10, align 8
  store double* %11, double** %5, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %13 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %30, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load double, double* %4, align 8
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  store double %25, double* %29, align 8
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorCopy(%struct.hypre_Vector* %0, %struct.hypre_Vector* %1) #0 {
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca %struct.hypre_Vector*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %3, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %4, align 8
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %11 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 0
  %12 = load double*, double** %11, align 8
  store double* %12, double** %5, align 8
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %4, align 8
  %14 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %13, i32 0, i32 0
  %15 = load double*, double** %14, align 8
  store double* %15, double** %6, align 8
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %20 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load double*, double** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load double*, double** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %33, double* %37, align 8
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_Vector* @hypre_SeqVectorCloneDeep(%struct.hypre_Vector* %0) #0 {
  %2 = alloca %struct.hypre_Vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_Vector*, align 8
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %2, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %7 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %12, i32 %13)
  store %struct.hypre_Vector* %14, %struct.hypre_Vector** %5, align 8
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %19 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %21 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %24 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %26 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %29 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %31 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %30)
  %32 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %34 = call i32 @hypre_SeqVectorCopy(%struct.hypre_Vector* %32, %struct.hypre_Vector* %33)
  %35 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  ret %struct.hypre_Vector* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.hypre_Vector* @hypre_SeqVectorCloneShallow(%struct.hypre_Vector* %0) #0 {
  %2 = alloca %struct.hypre_Vector*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hypre_Vector*, align 8
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %2, align 8
  %6 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %7 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.hypre_Vector* @hypre_SeqMultiVectorCreate(i32 %12, i32 %13)
  store %struct.hypre_Vector* %14, %struct.hypre_Vector** %5, align 8
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %19 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %21 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %24 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %26 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %29 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %31 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %30, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %34 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %33, i32 0, i32 0
  store double* %32, double** %34, align 8
  %35 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %36 = call i32 @hypre_SeqVectorSetDataOwner(%struct.hypre_Vector* %35, i32 0)
  %37 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %38 = call i32 @hypre_SeqVectorInitialize(%struct.hypre_Vector* %37)
  %39 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  ret %struct.hypre_Vector* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorScale(double %0, %struct.hypre_Vector* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.hypre_Vector*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store double %0, double* %3, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %4, align 8
  %9 = load %struct.hypre_Vector*, %struct.hypre_Vector** %4, align 8
  %10 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %9, i32 0, i32 0
  %11 = load double*, double** %10, align 8
  store double* %11, double** %5, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %4, align 8
  %13 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %4, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %32, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load double, double* %3, align 8
  %26 = load double*, double** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, double* %26, i64 %28
  %30 = load double, double* %29, align 8
  %31 = fmul double %30, %25
  store double %31, double* %29, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hypre_SeqVectorAxpy(double %0, %struct.hypre_Vector* %1, %struct.hypre_Vector* %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca %struct.hypre_Vector*, align 8
  %6 = alloca %struct.hypre_Vector*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store double %0, double* %4, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %5, align 8
  store %struct.hypre_Vector* %2, %struct.hypre_Vector** %6, align 8
  %12 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %13 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %12, i32 0, i32 0
  %14 = load double*, double** %13, align 8
  store double* %14, double** %7, align 8
  %15 = load %struct.hypre_Vector*, %struct.hypre_Vector** %6, align 8
  %16 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %15, i32 0, i32 0
  %17 = load double*, double** %16, align 8
  store double* %17, double** %8, align 8
  %18 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %19 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.hypre_Vector*, %struct.hypre_Vector** %5, align 8
  %22 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = mul nsw i32 %24, %23
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %44, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load double, double* %4, align 8
  %32 = load double*, double** %7, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fmul double %31, %36
  %38 = load double*, double** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  %43 = fadd double %42, %37
  store double %43, double* %41, align 8
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hypre_SeqVectorInnerProd(%struct.hypre_Vector* %0, %struct.hypre_Vector* %1) #0 {
  %3 = alloca %struct.hypre_Vector*, align 8
  %4 = alloca %struct.hypre_Vector*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %3, align 8
  store %struct.hypre_Vector* %1, %struct.hypre_Vector** %4, align 8
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %11 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 0
  %12 = load double*, double** %11, align 8
  store double* %12, double** %5, align 8
  %13 = load %struct.hypre_Vector*, %struct.hypre_Vector** %4, align 8
  %14 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %13, i32 0, i32 0
  %15 = load double*, double** %14, align 8
  store double* %15, double** %6, align 8
  %16 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %17 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  store double 0.000000e+00, double* %9, align 8
  %19 = load %struct.hypre_Vector*, %struct.hypre_Vector** %3, align 8
  %20 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, %21
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %42, %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %24
  %29 = load double*, double** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load double*, double** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %33, %38
  %40 = load double, double* %9, align 8
  %41 = fadd double %40, %39
  store double %41, double* %9, align 8
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %24

45:                                               ; preds = %24
  %46 = load double, double* %9, align 8
  ret double %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @hypre_VectorSumElts(%struct.hypre_Vector* %0) #0 {
  %2 = alloca %struct.hypre_Vector*, align 8
  %3 = alloca double, align 8
  %4 = alloca double*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hypre_Vector* %0, %struct.hypre_Vector** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %7 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %8 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %7, i32 0, i32 0
  %9 = load double*, double** %8, align 8
  store double* %9, double** %4, align 8
  %10 = load %struct.hypre_Vector*, %struct.hypre_Vector** %2, align 8
  %11 = getelementptr inbounds %struct.hypre_Vector, %struct.hypre_Vector* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %25, %1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load double*, double** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double, double* %18, i64 %20
  %22 = load double, double* %21, align 8
  %23 = load double, double* %3, align 8
  %24 = fadd double %23, %22
  store double %24, double* %3, align 8
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %13

28:                                               ; preds = %13
  %29 = load double, double* %3, align 8
  ret double %29
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
