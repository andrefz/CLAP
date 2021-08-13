; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__stopwatch_t = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"dismatch at (%d, %d): (o)%f (n)%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"::vi:\00", align 1
@long_options = internal global [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 1, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 1, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16
@optarg = external dso_local global i8*, align 8
@do_verify = internal global i32 0, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1.6 = private unnamed_addr constant [30 x i8] c"Usage: %s [-v] -i input_file\0A\00", align 1
@optind = external dso_local global i32, align 4
@.str.2.7 = private unnamed_addr constant [29 x i8] c"Reading matrix from file %s\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [34 x i8] c"error create matrix from file %s\0A\00", align 1
@.str.4.9 = private unnamed_addr constant [26 x i8] c"No input file specified!\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [12 x i8] c"Before LUD\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"After LUD\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c">>>Verify<<<<\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"verify\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @stopwatch_start(%struct.__stopwatch_t* %0) #0 {
  %2 = alloca %struct.__stopwatch_t*, align 8
  store %struct.__stopwatch_t* %0, %struct.__stopwatch_t** %2, align 8
  %3 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %4 = icmp eq %struct.__stopwatch_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %8 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %7, i32 0, i32 0
  %9 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %11 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %10, i32 0, i32 1
  %12 = bitcast %struct.timeval* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %14 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %13, i32 0, i32 0
  %15 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #5
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @stopwatch_stop(%struct.__stopwatch_t* %0) #0 {
  %2 = alloca %struct.__stopwatch_t*, align 8
  store %struct.__stopwatch_t* %0, %struct.__stopwatch_t** %2, align 8
  %3 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %4 = icmp eq %struct.__stopwatch_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %2, align 8
  %8 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %7, i32 0, i32 1
  %9 = call i32 @gettimeofday(%struct.timeval* %8, %struct.timezone* null) #5
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @get_interval_by_sec(%struct.__stopwatch_t* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.__stopwatch_t*, align 8
  store %struct.__stopwatch_t* %0, %struct.__stopwatch_t** %3, align 8
  %4 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %5 = icmp eq %struct.__stopwatch_t* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store double 0.000000e+00, double* %2, align 8
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %9 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %13 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %11, %15
  %17 = sitofp i64 %16 to double
  %18 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %19 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %23 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = sitofp i64 %26 to double
  %28 = fdiv double %27, 1.000000e+06
  %29 = fadd double %17, %28
  store double %29, double* %2, align 8
  br label %30

30:                                               ; preds = %7, %6
  %31 = load double, double* %2, align 8
  ret double %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_interval_by_usec(%struct.__stopwatch_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.__stopwatch_t*, align 8
  store %struct.__stopwatch_t* %0, %struct.__stopwatch_t** %3, align 8
  %4 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %5 = icmp eq %struct.__stopwatch_t* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

7:                                                ; preds = %1
  %8 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %9 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %13 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %11, %15
  %17 = mul nsw i64 %16, 1000000
  %18 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %19 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.__stopwatch_t*, %struct.__stopwatch_t** %3, align 8
  %23 = getelementptr inbounds %struct.__stopwatch_t, %struct.__stopwatch_t* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %21, %25
  %27 = add nsw i64 %17, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %7, %6
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_matrix_from_file(float** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  store float** %0, float*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %12, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %70

18:                                               ; preds = %3
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %23, %25
  %27 = call noalias i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to float*
  store float* %28, float** %11, align 8
  %29 = load float*, float** %11, align 8
  %30 = icmp eq float* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %33 = call i32 @fclose(%struct._IO_FILE* %32)
  store i32 1, i32* %4, align 4
  br label %70

34:                                               ; preds = %18
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %46 = load float*, float** %11, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds float, float* %46, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds float, float* %51, i64 %53
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), float* %54)
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %35

63:                                               ; preds = %35
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %65 = call i32 @fclose(%struct._IO_FILE* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load float*, float** %11, align 8
  %69 = load float**, float*** %5, align 8
  store float* %68, float** %69, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %63, %31, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_matrix_from_random(float** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float** %0, float*** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call i64 @time(i64* null) #5
  %13 = trunc i64 %12 to i32
  call void @srand(i32 %13) #5
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = call noalias i8* @malloc(i64 %18) #5
  %20 = bitcast i8* %19 to float*
  store float* %20, float** %6, align 8
  %21 = load float*, float** %6, align 8
  %22 = icmp eq float* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %206

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call noalias i8* @malloc(i64 %29) #5
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %7, align 8
  %32 = load float*, float** %7, align 8
  %33 = icmp eq float* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load float*, float** %6, align 8
  %36 = bitcast float* %35 to i8*
  call void @free(i8* %36) #5
  store i32 1, i32* %3, align 4
  br label %206

37:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %91, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %87, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = call i32 @rand() #5
  %53 = sitofp i32 %52 to float
  %54 = fdiv float %53, 0x41E0000000000000
  %55 = load float*, float** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %55, i64 %61
  store float %54, float* %62, align 4
  br label %86

63:                                               ; preds = %47
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load float*, float** %6, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %68, i64 %74
  store float 1.000000e+00, float* %75, align 4
  br label %85

76:                                               ; preds = %63
  %77 = load float*, float** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %5, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %77, i64 %83
  store float 0.000000e+00, float* %84, align 4
  br label %85

85:                                               ; preds = %76, %67
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %43

90:                                               ; preds = %43
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %38

94:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %134, %94
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %137

99:                                               ; preds = %95
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %130, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load float*, float** %7, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %5, align 4
  %112 = mul nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %109, i64 %115
  store float 0.000000e+00, float* %116, align 4
  br label %129

117:                                              ; preds = %104
  %118 = call i32 @rand() #5
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %119, 0x41E0000000000000
  %121 = load float*, float** %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 %122, %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %121, i64 %127
  store float %120, float* %128, align 4
  br label %129

129:                                              ; preds = %117, %108
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %100

133:                                              ; preds = %100
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %95

137:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %196, %137
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %199

142:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %143

143:                                              ; preds = %192, %142
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %195

147:                                              ; preds = %143
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %188, %147
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %9, align 4
  br label %157

155:                                              ; preds = %148
  %156 = load i32, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i32 [ %154, %153 ], [ %156, %155 ]
  %159 = icmp sle i32 %149, %158
  br i1 %159, label %160, label %191

160:                                              ; preds = %157
  %161 = load float*, float** %6, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 %162, %163
  %165 = load i32, i32* %11, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %161, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float*, float** %7, align 8
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %5, align 4
  %173 = mul nsw i32 %171, %172
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds float, float* %170, i64 %176
  %178 = load float, float* %177, align 4
  %179 = fmul float %169, %178
  %180 = load float*, float** %8, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %5, align 4
  %183 = mul nsw i32 %181, %182
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %180, i64 %186
  store float %179, float* %187, align 4
  br label %188

188:                                              ; preds = %160
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %11, align 4
  br label %148

191:                                              ; preds = %157
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %10, align 4
  br label %143

195:                                              ; preds = %143
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %9, align 4
  br label %138

199:                                              ; preds = %138
  %200 = load float*, float** %6, align 8
  %201 = bitcast float* %200 to i8*
  call void @free(i8* %201) #5
  %202 = load float*, float** %7, align 8
  %203 = bitcast float* %202 to i8*
  call void @free(i8* %203) #5
  %204 = load float*, float** %8, align 8
  %205 = load float**, float*** %4, align 8
  store float* %204, float** %205, align 8
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %199, %34, %23
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrix_multiply(float* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %62, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %58, %16
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load float*, float** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %27, i64 %33
  %35 = load float, float* %34, align 4
  %36 = load float*, float** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds float, float* %36, i64 %42
  %44 = load float, float* %43, align 4
  %45 = fmul float %35, %44
  %46 = load float*, float** %7, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %46, i64 %52
  store float %45, float* %53, align 4
  br label %54

54:                                               ; preds = %26
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %22

57:                                               ; preds = %22
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %17

61:                                               ; preds = %17
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  br label %12

65:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @lud_verify(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store float* %0, float** %5, align 8
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = call noalias i8* @malloc(i64 %19) #5
  %21 = bitcast i8* %20 to float*
  store float* %21, float** %11, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %91, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %94

26:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %87, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %74, %31
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = icmp sle i32 %33, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store float 1.000000e+00, float* %13, align 4
  br label %59

49:                                               ; preds = %44
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float, float* %50, i64 %56
  %58 = load float, float* %57, align 4
  store float %58, float* %13, align 4
  br label %59

59:                                               ; preds = %49, %48
  %60 = load float*, float** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %7, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %60, i64 %66
  %68 = load float, float* %67, align 4
  store float %68, float* %14, align 4
  %69 = load float, float* %13, align 4
  %70 = load float, float* %14, align 4
  %71 = fmul float %69, %70
  %72 = load float, float* %12, align 4
  %73 = fadd float %72, %71
  store float %73, float* %12, align 4
  br label %74

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  br label %32

77:                                               ; preds = %41
  %78 = load float, float* %12, align 4
  %79 = load float*, float** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %79, i64 %85
  store float %78, float* %86, align 4
  br label %87

87:                                               ; preds = %77
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %27

90:                                               ; preds = %27
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %22

94:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %156, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %159

99:                                               ; preds = %95
  store i32 0, i32* %9, align 4
  br label %100

100:                                              ; preds = %152, %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %155

104:                                              ; preds = %100
  %105 = load float*, float** %5, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %108, %109
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds float, float* %105, i64 %111
  %113 = load float, float* %112, align 4
  %114 = load float*, float** %11, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %114, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fsub float %113, %122
  %124 = fpext float %123 to double
  %125 = call double @llvm.fabs.f64(double %124)
  %126 = fcmp ogt double %125, 1.000000e-04
  br i1 %126, label %127, label %151

127:                                              ; preds = %104
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load float*, float** %5, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %130, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = load float*, float** %11, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %141, %142
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %140, i64 %146
  %148 = load float, float* %147, align 4
  %149 = fpext float %148 to double
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %128, i32 %129, double %139, double %149)
  br label %151

151:                                              ; preds = %127, %104
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %100

155:                                              ; preds = %100
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %95

159:                                              ; preds = %95
  %160 = load float*, float** %11, align 8
  %161 = bitcast float* %160 to i8*
  call void @free(i8* %161) #5
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #4

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @matrix_duplicate(float* %0, float** %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  store float* %0, float** %4, align 8
  store float** %1, float*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = mul nsw i32 %9, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @malloc(i64 %16) #5
  %18 = bitcast i8* %17 to float*
  store float* %18, float** %8, align 8
  %19 = load float*, float** %8, align 8
  %20 = bitcast float* %19 to i8*
  %21 = load float*, float** %4, align 8
  %22 = bitcast float* %21 to i8*
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %22, i64 %24, i1 false)
  %25 = load float*, float** %8, align 8
  %26 = load float**, float*** %5, align 8
  store float* %25, float** %26, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_matrix(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %33, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load float*, float** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds float, float* %17, i64 %23
  %25 = load float, float* %24, align 4
  %26 = fpext float %25 to double
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %12

31:                                               ; preds = %12
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %7

36:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @create_matrix(float** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float**, align 8
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  store float** %0, float*** %4, align 8
  store i32 %1, i32* %5, align 4
  store float 0xBF50624DE0000000, float* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 2, %14
  %16 = sub nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca float, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store float 0.000000e+00, float* %12, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %49, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load float, float* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sitofp i32 %26 to float
  %28 = fmul float %25, %27
  %29 = fpext float %28 to double
  %30 = call double @exp(double %29) #5
  %31 = fmul double 1.000000e+01, %30
  %32 = fptrunc double %31 to float
  store float %32, float* %12, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load float, float* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %19, i64 %39
  store float %37, float* %40, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %8, align 4
  %45 = load float, float* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %19, i64 %47
  store float %45, float* %48, align 4
  br label %49

49:                                               ; preds = %24
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 %55, %57
  %59 = call noalias i8* @malloc(i64 %58) #5
  %60 = bitcast i8* %59 to float*
  store float* %60, float** %6, align 8
  %61 = load float*, float** %6, align 8
  %62 = icmp eq float* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

64:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %96, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %99

69:                                               ; preds = %65
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %92, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load i32, i32* %5, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %19, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float*, float** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %5, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %84, i64 %90
  store float %83, float* %91, align 4
  br label %92

92:                                               ; preds = %74
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %70

95:                                               ; preds = %70
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %65

99:                                               ; preds = %65
  %100 = load float*, float** %6, align 8
  %101 = load float**, float*** %4, align 8
  store float* %100, float** %101, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %102

102:                                              ; preds = %99, %63
  %103 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: nounwind
declare dso_local double @exp(double) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @lud_base(float* %0, i32 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %141, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %144

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %68, %13
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load float*, float** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float, float* %20, i64 %26
  %28 = load float, float* %27, align 4
  store float %28, float* %8, align 4
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %55, %19
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %29
  %34 = load float*, float** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %34, i64 %40
  %42 = load float, float* %41, align 4
  %43 = load float*, float** %3, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = mul nsw i32 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %43, i64 %49
  %51 = load float, float* %50, align 4
  %52 = fmul float %42, %51
  %53 = load float, float* %8, align 4
  %54 = fsub float %53, %52
  store float %54, float* %8, align 4
  br label %55

55:                                               ; preds = %33
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load float, float* %8, align 4
  %60 = load float*, float** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds float, float* %60, i64 %66
  store float %59, float* %67, align 4
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %15

71:                                               ; preds = %15
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %137, %71
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %140

78:                                               ; preds = %74
  %79 = load float*, float** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %4, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds float, float* %79, i64 %85
  %87 = load float, float* %86, align 4
  store float %87, float* %8, align 4
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %114, %78
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load float*, float** %3, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %4, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds float, float* %93, i64 %99
  %101 = load float, float* %100, align 4
  %102 = load float*, float** %3, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %4, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %102, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fmul float %101, %110
  %112 = load float, float* %8, align 4
  %113 = fsub float %112, %111
  store float %113, float* %8, align 4
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %88

117:                                              ; preds = %88
  %118 = load float, float* %8, align 4
  %119 = load float*, float** %3, align 8
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %4, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds float, float* %119, i64 %125
  %127 = load float, float* %126, align 4
  %128 = fdiv float %118, %127
  %129 = load float*, float** %3, align 8
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %4, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %129, i64 %135
  store float %128, float* %136, align 4
  br label %137

137:                                              ; preds = %117
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %74

140:                                              ; preds = %74
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %5, align 4
  br label %9

144:                                              ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca %struct.__stopwatch_t, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 32, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  br label %14

14:                                               ; preds = %30, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = call i32 @getopt_long(i32 %15, i8** %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @long_options, i64 0, i64 0), i32* %8) #5
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %31

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %30 [
    i32 105, label %21
    i32 118, label %23
    i32 63, label %24
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** @optarg, align 8
  store i8* %22, i8** %10, align 8
  br label %30

23:                                               ; preds = %19
  store i32 1, i32* @do_verify, align 4
  br label %30

24:                                               ; preds = %19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.6, i64 0, i64 0), i8* %28)
  call void @exit(i32 1) #7
  unreachable

30:                                               ; preds = %23, %21, %19
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* @optind, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @optind, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %44

38:                                               ; preds = %35, %31
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.6, i64 0, i64 0), i8* %42)
  call void @exit(i32 1) #7
  unreachable

44:                                               ; preds = %35
  %45 = load i8*, i8** %10, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2.7, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %10, align 8
  %51 = call i32 @create_matrix_from_file(float** %11, i8* %50, i32* %6)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  store float* null, float** %11, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3.8, i64 0, i64 0), i8* %56)
  call void @exit(i32 1) #7
  unreachable

58:                                               ; preds = %47
  br label %61

59:                                               ; preds = %44
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4.9, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

61:                                               ; preds = %58
  %62 = load i32, i32* @do_verify, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.10, i64 0, i64 0))
  %66 = load float*, float** %11, align 8
  %67 = load i32, i32* %6, align 4
  call void @print_matrix(float* %66, i32 %67)
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %6, align 4
  call void @matrix_duplicate(float* %68, float** %12, i32 %69)
  br label %70

70:                                               ; preds = %64, %61
  call void @stopwatch_start(%struct.__stopwatch_t* %13)
  %71 = load float*, float** %11, align 8
  %72 = load i32, i32* %6, align 4
  call void @lud_base(float* %71, i32 %72)
  call void @stopwatch_stop(%struct.__stopwatch_t* %13)
  %73 = load i32, i32* @do_verify, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %77 = load float*, float** %11, align 8
  %78 = load i32, i32* %6, align 4
  call void @print_matrix(float* %77, i32 %78)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %80 = load float*, float** %12, align 8
  %81 = load float*, float** %11, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @lud_verify(float* %80, float* %81, i32 %82)
  %84 = load float*, float** %12, align 8
  %85 = bitcast float* %84 to i8*
  call void @free(i8* %85) #5
  br label %86

86:                                               ; preds = %75, %70
  %87 = load float*, float** %11, align 8
  %88 = bitcast float* %87 to i8*
  call void @free(i8* %88) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #6

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
