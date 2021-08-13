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

@t_chip = dso_local global float 0x3F40624DE0000000, align 4
@chip_height = dso_local global float 0x3F90624DE0000000, align 4
@chip_width = dso_local global float 0x3F90624DE0000000, align 4
@amb_temp = dso_local global float 8.000000e+01, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [11 x i8] c"Error: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"The file was not opened\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Error reading file\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"not enough lines in file\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"invalid file format\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"The file was not opened\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%d\09%g\0A\00", align 1
@.str.10 = private unnamed_addr constant [81 x i8] c"Usage: %s <rows/cols> <layers> <iterations> <powerFile> <tempFile> <outputFile>\0A\00", align 1
@.str.11 = private unnamed_addr constant [68 x i8] c"\09<rows/cols>  - number of rows/cols in the grid (positive integer)\0A\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"\09<layers>  - number of layers in the grid (positive integer)\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\09<iteration> - number of iterations\0A\00", align 1
@.str.14 = private unnamed_addr constant [83 x i8] c"\09<powerFile>  - name of the file containing the initial power values of each cell\0A\00", align 1
@.str.15 = private unnamed_addr constant [88 x i8] c"\09<tempFile>  - name of the file containing the initial temperature values of each cell\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"\09<outputFile - output file\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Accuracy: %e\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @fatal(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %4)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @readinput(float* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca float, align 4
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %14, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  call void @fatal(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %21

21:                                               ; preds = %20, %5
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %79, %21
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp sle i32 %23, %25
  br i1 %26, label %27, label %82

27:                                               ; preds = %22
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp sle i32 %29, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %71, %33
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp sle i32 %35, %37
  br i1 %38, label %39, label %74

39:                                               ; preds = %34
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %42 = call i8* @fgets(i8* %40, i32 256, %struct._IO_FILE* %41)
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %47 = call i32 @feof(%struct._IO_FILE* %46) #6
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @fatal(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %52 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), float* %16) #6
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %54, %50
  %56 = load float, float* %16, align 4
  %57 = load float*, float** %6, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %57, i64 %69
  store float %56, float* %70, align 4
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  br label %34

74:                                               ; preds = %34
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %28

78:                                               ; preds = %28
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %22

82:                                               ; preds = %22
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %84 = call i32 @fclose(%struct._IO_FILE* %83)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @writeoutput(float* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca [256 x i8], align 16
  store float* %0, float** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %10, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %15, align 8
  %19 = icmp eq %struct._IO_FILE* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %5
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %73

27:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %62, %32
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %65

37:                                               ; preds = %33
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %39 = load i32, i32* %14, align 4
  %40 = load float*, float** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %48, %49
  %51 = add nsw i32 %45, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %40, i64 %52
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %39, double %55) #6
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %59 = call i32 @fputs(i8* %57, %struct._IO_FILE* %58)
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %37
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %33

65:                                               ; preds = %33
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %28

69:                                               ; preds = %28
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %75 = call i32 @fclose(%struct._IO_FILE* %74)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @computeTempCPU(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8, float %9, float %10, i32 %11) #0 {
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca float*, align 8
  store float* %0, float** %13, align 8
  store float* %1, float** %14, align 8
  store float* %2, float** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store i32 %11, i32* %24, align 4
  %45 = load float, float* %23, align 4
  %46 = load float, float* %19, align 4
  %47 = fdiv float %45, %46
  store float %47, float* %32, align 4
  %48 = load float, float* %32, align 4
  %49 = load float, float* %20, align 4
  %50 = fdiv float %48, %49
  store float %50, float* %26, align 4
  store float %50, float* %25, align 4
  %51 = load float, float* %32, align 4
  %52 = load float, float* %21, align 4
  %53 = fdiv float %51, %52
  store float %53, float* %28, align 4
  store float %53, float* %27, align 4
  %54 = load float, float* %32, align 4
  %55 = load float, float* %22, align 4
  %56 = fdiv float %54, %55
  store float %56, float* %30, align 4
  store float %56, float* %29, align 4
  %57 = load float, float* %25, align 4
  %58 = fpext float %57 to double
  %59 = fmul double 2.000000e+00, %58
  %60 = load float, float* %27, align 4
  %61 = fpext float %60 to double
  %62 = fmul double 2.000000e+00, %61
  %63 = fadd double %59, %62
  %64 = load float, float* %29, align 4
  %65 = fpext float %64 to double
  %66 = fmul double 3.000000e+00, %65
  %67 = fadd double %63, %66
  %68 = fsub double 1.000000e+00, %67
  %69 = fptrunc double %68 to float
  store float %69, float* %31, align 4
  store i32 0, i32* %43, align 4
  br label %70

70:                                               ; preds = %255, %12
  store i32 0, i32* %42, align 4
  br label %71

71:                                               ; preds = %246, %70
  %72 = load i32, i32* %42, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %249

75:                                               ; preds = %71
  store i32 0, i32* %41, align 4
  br label %76

76:                                               ; preds = %242, %75
  %77 = load i32, i32* %41, align 4
  %78 = load i32, i32* %17, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %245

80:                                               ; preds = %76
  store i32 0, i32* %40, align 4
  br label %81

81:                                               ; preds = %238, %80
  %82 = load i32, i32* %40, align 4
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %241

85:                                               ; preds = %81
  %86 = load i32, i32* %40, align 4
  %87 = load i32, i32* %41, align 4
  %88 = load i32, i32* %16, align 4
  %89 = mul nsw i32 %87, %88
  %90 = add nsw i32 %86, %89
  %91 = load i32, i32* %42, align 4
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %17, align 4
  %95 = mul nsw i32 %93, %94
  %96 = add nsw i32 %90, %95
  store i32 %96, i32* %33, align 4
  %97 = load i32, i32* %40, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %33, align 4
  br label %104

101:                                              ; preds = %85
  %102 = load i32, i32* %33, align 4
  %103 = sub nsw i32 %102, 1
  br label %104

104:                                              ; preds = %101, %99
  %105 = phi i32 [ %100, %99 ], [ %103, %101 ]
  store i32 %105, i32* %34, align 4
  %106 = load i32, i32* %40, align 4
  %107 = load i32, i32* %16, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %33, align 4
  br label %115

112:                                              ; preds = %104
  %113 = load i32, i32* %33, align 4
  %114 = add nsw i32 %113, 1
  br label %115

115:                                              ; preds = %112, %110
  %116 = phi i32 [ %111, %110 ], [ %114, %112 ]
  store i32 %116, i32* %35, align 4
  %117 = load i32, i32* %41, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i32, i32* %33, align 4
  br label %125

121:                                              ; preds = %115
  %122 = load i32, i32* %33, align 4
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %122, %123
  br label %125

125:                                              ; preds = %121, %119
  %126 = phi i32 [ %120, %119 ], [ %124, %121 ]
  store i32 %126, i32* %36, align 4
  %127 = load i32, i32* %41, align 4
  %128 = load i32, i32* %17, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %125
  %132 = load i32, i32* %33, align 4
  br label %137

133:                                              ; preds = %125
  %134 = load i32, i32* %33, align 4
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %134, %135
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i32 [ %132, %131 ], [ %136, %133 ]
  store i32 %138, i32* %37, align 4
  %139 = load i32, i32* %42, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %33, align 4
  br label %149

143:                                              ; preds = %137
  %144 = load i32, i32* %33, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* %17, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sub nsw i32 %144, %147
  br label %149

149:                                              ; preds = %143, %141
  %150 = phi i32 [ %142, %141 ], [ %148, %143 ]
  store i32 %150, i32* %38, align 4
  %151 = load i32, i32* %42, align 4
  %152 = load i32, i32* %18, align 4
  %153 = sub nsw i32 %152, 1
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load i32, i32* %33, align 4
  br label %163

157:                                              ; preds = %149
  %158 = load i32, i32* %33, align 4
  %159 = load i32, i32* %16, align 4
  %160 = load i32, i32* %17, align 4
  %161 = mul nsw i32 %159, %160
  %162 = add nsw i32 %158, %161
  br label %163

163:                                              ; preds = %157, %155
  %164 = phi i32 [ %156, %155 ], [ %162, %157 ]
  store i32 %164, i32* %39, align 4
  %165 = load float*, float** %14, align 8
  %166 = load i32, i32* %33, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %165, i64 %167
  %169 = load float, float* %168, align 4
  %170 = load float, float* %31, align 4
  %171 = fmul float %169, %170
  %172 = load float*, float** %14, align 8
  %173 = load i32, i32* %36, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds float, float* %172, i64 %174
  %176 = load float, float* %175, align 4
  %177 = load float, float* %27, align 4
  %178 = fmul float %176, %177
  %179 = fadd float %171, %178
  %180 = load float*, float** %14, align 8
  %181 = load i32, i32* %37, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = load float, float* %28, align 4
  %186 = fmul float %184, %185
  %187 = fadd float %179, %186
  %188 = load float*, float** %14, align 8
  %189 = load i32, i32* %35, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = load float, float* %25, align 4
  %194 = fmul float %192, %193
  %195 = fadd float %187, %194
  %196 = load float*, float** %14, align 8
  %197 = load i32, i32* %34, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* %26, align 4
  %202 = fmul float %200, %201
  %203 = fadd float %195, %202
  %204 = load float*, float** %14, align 8
  %205 = load i32, i32* %39, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float, float* %29, align 4
  %210 = fmul float %208, %209
  %211 = fadd float %203, %210
  %212 = load float*, float** %14, align 8
  %213 = load i32, i32* %38, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  %216 = load float, float* %215, align 4
  %217 = load float, float* %30, align 4
  %218 = fmul float %216, %217
  %219 = fadd float %211, %218
  %220 = load float, float* %23, align 4
  %221 = load float, float* %19, align 4
  %222 = fdiv float %220, %221
  %223 = load float*, float** %13, align 8
  %224 = load i32, i32* %33, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, float* %223, i64 %225
  %227 = load float, float* %226, align 4
  %228 = fmul float %222, %227
  %229 = fadd float %219, %228
  %230 = load float, float* %29, align 4
  %231 = load float, float* @amb_temp, align 4
  %232 = fmul float %230, %231
  %233 = fadd float %229, %232
  %234 = load float*, float** %15, align 8
  %235 = load i32, i32* %33, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  store float %233, float* %237, align 4
  br label %238

238:                                              ; preds = %163
  %239 = load i32, i32* %40, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %40, align 4
  br label %81

241:                                              ; preds = %81
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %41, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %41, align 4
  br label %76

245:                                              ; preds = %76
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %42, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %42, align 4
  br label %71

249:                                              ; preds = %71
  %250 = load float*, float** %14, align 8
  store float* %250, float** %44, align 8
  %251 = load float*, float** %15, align 8
  store float* %251, float** %14, align 8
  %252 = load float*, float** %44, align 8
  store float* %252, float** %15, align 8
  %253 = load i32, i32* %43, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %43, align 4
  br label %255

255:                                              ; preds = %249
  %256 = load i32, i32* %43, align 4
  %257 = load i32, i32* %24, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %70, label %259

259:                                              ; preds = %255
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @accuracy(float* %0, float* %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store float* %1, float** %5, align 8
  store i32 %2, i32* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %39, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %42

13:                                               ; preds = %9
  %14 = load float*, float** %4, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds float, float* %14, i64 %16
  %18 = load float, float* %17, align 4
  %19 = load float*, float** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fsub float %18, %23
  %25 = load float*, float** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = load float*, float** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds float, float* %30, i64 %32
  %34 = load float, float* %33, align 4
  %35 = fsub float %29, %34
  %36 = fmul float %24, %35
  %37 = load float, float* %7, align 4
  %38 = fadd float %37, %36
  store float %38, float* %7, align 4
  br label %39

39:                                               ; preds = %13
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %9

42:                                               ; preds = %9
  %43 = load float, float* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %43, %45
  %47 = fpext float %46 to double
  %48 = call double @sqrt(double %47) #6
  %49 = fptrunc double %48 to float
  ret float %49
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @computeTempOMP(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, float %6, float %7, float %8, float %9, float %10, i32 %11) #0 {
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca float*, align 8
  %35 = alloca float*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca float*, align 8
  store float* %0, float** %13, align 8
  store float* %1, float** %14, align 8
  store float* %2, float** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store float %6, float* %19, align 4
  store float %7, float* %20, align 4
  store float %8, float* %21, align 4
  store float %9, float* %22, align 4
  store float %10, float* %23, align 4
  store i32 %11, i32* %24, align 4
  %47 = load float, float* %23, align 4
  %48 = load float, float* %19, align 4
  %49 = fdiv float %47, %48
  store float %49, float* %32, align 4
  %50 = load float, float* %32, align 4
  %51 = load float, float* %20, align 4
  %52 = fdiv float %50, %51
  store float %52, float* %26, align 4
  store float %52, float* %25, align 4
  %53 = load float, float* %32, align 4
  %54 = load float, float* %21, align 4
  %55 = fdiv float %53, %54
  store float %55, float* %28, align 4
  store float %55, float* %27, align 4
  %56 = load float, float* %32, align 4
  %57 = load float, float* %22, align 4
  %58 = fdiv float %56, %57
  store float %58, float* %30, align 4
  store float %58, float* %29, align 4
  %59 = load float, float* %25, align 4
  %60 = fpext float %59 to double
  %61 = fmul double 2.000000e+00, %60
  %62 = load float, float* %27, align 4
  %63 = fpext float %62 to double
  %64 = fmul double 2.000000e+00, %63
  %65 = fadd double %61, %64
  %66 = load float, float* %29, align 4
  %67 = fpext float %66 to double
  %68 = fmul double 3.000000e+00, %67
  %69 = fadd double %65, %68
  %70 = fsub double 1.000000e+00, %69
  %71 = fptrunc double %70 to float
  store float %71, float* %31, align 4
  store i32 0, i32* %33, align 4
  %72 = load float*, float** %14, align 8
  store float* %72, float** %34, align 8
  %73 = load float*, float** %15, align 8
  store float* %73, float** %35, align 8
  br label %74

74:                                               ; preds = %259, %12
  store i32 0, i32* %36, align 4
  br label %75

75:                                               ; preds = %250, %74
  %76 = load i32, i32* %36, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %253

79:                                               ; preds = %75
  store i32 0, i32* %37, align 4
  br label %80

80:                                               ; preds = %246, %79
  %81 = load i32, i32* %37, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %249

84:                                               ; preds = %80
  store i32 0, i32* %38, align 4
  br label %85

85:                                               ; preds = %242, %84
  %86 = load i32, i32* %38, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %245

89:                                               ; preds = %85
  %90 = load i32, i32* %38, align 4
  %91 = load i32, i32* %37, align 4
  %92 = load i32, i32* %16, align 4
  %93 = mul nsw i32 %91, %92
  %94 = add nsw i32 %90, %93
  %95 = load i32, i32* %36, align 4
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %17, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %94, %99
  store i32 %100, i32* %39, align 4
  %101 = load i32, i32* %38, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %89
  %104 = load i32, i32* %39, align 4
  br label %108

105:                                              ; preds = %89
  %106 = load i32, i32* %39, align 4
  %107 = sub nsw i32 %106, 1
  br label %108

108:                                              ; preds = %105, %103
  %109 = phi i32 [ %104, %103 ], [ %107, %105 ]
  store i32 %109, i32* %40, align 4
  %110 = load i32, i32* %38, align 4
  %111 = load i32, i32* %16, align 4
  %112 = sub nsw i32 %111, 1
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load i32, i32* %39, align 4
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* %39, align 4
  %118 = add nsw i32 %117, 1
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i32 [ %115, %114 ], [ %118, %116 ]
  store i32 %120, i32* %41, align 4
  %121 = load i32, i32* %37, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %39, align 4
  br label %129

125:                                              ; preds = %119
  %126 = load i32, i32* %39, align 4
  %127 = load i32, i32* %16, align 4
  %128 = sub nsw i32 %126, %127
  br label %129

129:                                              ; preds = %125, %123
  %130 = phi i32 [ %124, %123 ], [ %128, %125 ]
  store i32 %130, i32* %42, align 4
  %131 = load i32, i32* %37, align 4
  %132 = load i32, i32* %17, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %39, align 4
  br label %141

137:                                              ; preds = %129
  %138 = load i32, i32* %39, align 4
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %138, %139
  br label %141

141:                                              ; preds = %137, %135
  %142 = phi i32 [ %136, %135 ], [ %140, %137 ]
  store i32 %142, i32* %43, align 4
  %143 = load i32, i32* %36, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* %39, align 4
  br label %153

147:                                              ; preds = %141
  %148 = load i32, i32* %39, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %17, align 4
  %151 = mul nsw i32 %149, %150
  %152 = sub nsw i32 %148, %151
  br label %153

153:                                              ; preds = %147, %145
  %154 = phi i32 [ %146, %145 ], [ %152, %147 ]
  store i32 %154, i32* %44, align 4
  %155 = load i32, i32* %36, align 4
  %156 = load i32, i32* %18, align 4
  %157 = sub nsw i32 %156, 1
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = load i32, i32* %39, align 4
  br label %167

161:                                              ; preds = %153
  %162 = load i32, i32* %39, align 4
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %17, align 4
  %165 = mul nsw i32 %163, %164
  %166 = add nsw i32 %162, %165
  br label %167

167:                                              ; preds = %161, %159
  %168 = phi i32 [ %160, %159 ], [ %166, %161 ]
  store i32 %168, i32* %45, align 4
  %169 = load float, float* %31, align 4
  %170 = load float*, float** %34, align 8
  %171 = load i32, i32* %39, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  %175 = fmul float %169, %174
  %176 = load float, float* %26, align 4
  %177 = load float*, float** %34, align 8
  %178 = load i32, i32* %40, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fmul float %176, %181
  %183 = fadd float %175, %182
  %184 = load float, float* %25, align 4
  %185 = load float*, float** %34, align 8
  %186 = load i32, i32* %41, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = fmul float %184, %189
  %191 = fadd float %183, %190
  %192 = load float, float* %28, align 4
  %193 = load float*, float** %34, align 8
  %194 = load i32, i32* %43, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  %198 = fmul float %192, %197
  %199 = fadd float %191, %198
  %200 = load float, float* %27, align 4
  %201 = load float*, float** %34, align 8
  %202 = load i32, i32* %42, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  %205 = load float, float* %204, align 4
  %206 = fmul float %200, %205
  %207 = fadd float %199, %206
  %208 = load float, float* %30, align 4
  %209 = load float*, float** %34, align 8
  %210 = load i32, i32* %44, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  %214 = fmul float %208, %213
  %215 = fadd float %207, %214
  %216 = load float, float* %29, align 4
  %217 = load float*, float** %34, align 8
  %218 = load i32, i32* %45, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fmul float %216, %221
  %223 = fadd float %215, %222
  %224 = load float, float* %23, align 4
  %225 = load float, float* %19, align 4
  %226 = fdiv float %224, %225
  %227 = load float*, float** %13, align 8
  %228 = load i32, i32* %39, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fmul float %226, %231
  %233 = fadd float %223, %232
  %234 = load float, float* %29, align 4
  %235 = load float, float* @amb_temp, align 4
  %236 = fmul float %234, %235
  %237 = fadd float %233, %236
  %238 = load float*, float** %35, align 8
  %239 = load i32, i32* %39, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float, float* %238, i64 %240
  store float %237, float* %241, align 4
  br label %242

242:                                              ; preds = %167
  %243 = load i32, i32* %38, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %38, align 4
  br label %85

245:                                              ; preds = %85
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %37, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %37, align 4
  br label %80

249:                                              ; preds = %80
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %36, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %36, align 4
  br label %75

253:                                              ; preds = %75
  %254 = load float*, float** %34, align 8
  store float* %254, float** %46, align 8
  %255 = load float*, float** %35, align 8
  store float* %255, float** %34, align 8
  %256 = load float*, float** %46, align 8
  store float* %256, float** %35, align 8
  %257 = load i32, i32* %33, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %33, align 4
  br label %259

259:                                              ; preds = %253
  %260 = load i32, i32* %33, align 4
  %261 = load i32, i32* %24, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %74, label %263

263:                                              ; preds = %259
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0), i8* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.14, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.15, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca %struct.timeval, align 8
  %29 = alloca %struct.timeval, align 8
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 7
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  call void @usage(i32 %35, i8** %36)
  br label %37

37:                                               ; preds = %34, %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 3
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @atoi(i8* %40) #8
  store i32 %41, i32* %9, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 4
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 5
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 6
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %8, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @atoi(i8* %53) #8
  store i32 %54, i32* %10, align 4
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @atoi(i8* %57) #8
  store i32 %58, i32* %11, align 4
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @atoi(i8* %61) #8
  store i32 %62, i32* %12, align 4
  %63 = load float, float* @chip_height, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %63, %65
  store float %66, float* %13, align 4
  %67 = load float, float* @chip_width, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  store float %70, float* %14, align 4
  %71 = load float, float* @t_chip, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sitofp i32 %72 to float
  %74 = fdiv float %71, %73
  store float %74, float* %15, align 4
  %75 = load float, float* @t_chip, align 4
  %76 = fpext float %75 to double
  %77 = fmul double 8.750000e+05, %76
  %78 = load float, float* %13, align 4
  %79 = fpext float %78 to double
  %80 = fmul double %77, %79
  %81 = load float, float* %14, align 4
  %82 = fpext float %81 to double
  %83 = fmul double %80, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %16, align 4
  %85 = load float, float* %14, align 4
  %86 = fpext float %85 to double
  %87 = load float, float* @t_chip, align 4
  %88 = fpext float %87 to double
  %89 = fmul double 2.000000e+02, %88
  %90 = load float, float* %13, align 4
  %91 = fpext float %90 to double
  %92 = fmul double %89, %91
  %93 = fdiv double %86, %92
  %94 = fptrunc double %93 to float
  store float %94, float* %17, align 4
  %95 = load float, float* %13, align 4
  %96 = fpext float %95 to double
  %97 = load float, float* @t_chip, align 4
  %98 = fpext float %97 to double
  %99 = fmul double 2.000000e+02, %98
  %100 = load float, float* %14, align 4
  %101 = fpext float %100 to double
  %102 = fmul double %99, %101
  %103 = fdiv double %96, %102
  %104 = fptrunc double %103 to float
  store float %104, float* %18, align 4
  %105 = load float, float* %15, align 4
  %106 = load float, float* %13, align 4
  %107 = fmul float 1.000000e+02, %106
  %108 = load float, float* %14, align 4
  %109 = fmul float %107, %108
  %110 = fdiv float %105, %109
  store float %110, float* %19, align 4
  %111 = load float, float* @t_chip, align 4
  %112 = fpext float %111 to double
  %113 = fmul double 5.000000e-01, %112
  %114 = fmul double %113, 1.750000e+06
  %115 = fdiv double 3.000000e+06, %114
  %116 = fptrunc double %115 to float
  store float %116, float* %20, align 4
  %117 = load float, float* %20, align 4
  %118 = fpext float %117 to double
  %119 = fdiv double 1.000000e-03, %118
  %120 = fptrunc double %119 to float
  store float %120, float* %21, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = mul nsw i32 %123, %124
  store i32 %125, i32* %26, align 4
  %126 = load i32, i32* %26, align 4
  %127 = sext i32 %126 to i64
  %128 = call noalias i8* @calloc(i64 %127, i64 4) #6
  %129 = bitcast i8* %128 to float*
  store float* %129, float** %22, align 8
  %130 = load i32, i32* %26, align 4
  %131 = sext i32 %130 to i64
  %132 = mul i64 %131, 4
  %133 = call noalias i8* @malloc(i64 %132) #6
  %134 = bitcast i8* %133 to float*
  store float* %134, float** %25, align 8
  %135 = load i32, i32* %26, align 4
  %136 = sext i32 %135 to i64
  %137 = call noalias i8* @calloc(i64 %136, i64 4) #6
  %138 = bitcast i8* %137 to float*
  store float* %138, float** %24, align 8
  %139 = load i32, i32* %26, align 4
  %140 = sext i32 %139 to i64
  %141 = call noalias i8* @calloc(i64 %140, i64 4) #6
  %142 = bitcast i8* %141 to float*
  store float* %142, float** %23, align 8
  %143 = load i32, i32* %26, align 4
  %144 = sext i32 %143 to i64
  %145 = call noalias i8* @calloc(i64 %144, i64 4) #6
  %146 = bitcast i8* %145 to float*
  store float* %146, float** %27, align 8
  %147 = load float*, float** %22, align 8
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i8*, i8** %6, align 8
  call void @readinput(float* %147, i32 %148, i32 %149, i32 %150, i8* %151)
  %152 = load float*, float** %24, align 8
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i8*, i8** %7, align 8
  call void @readinput(float* %152, i32 %153, i32 %154, i32 %155, i8* %156)
  %157 = load float*, float** %25, align 8
  %158 = bitcast float* %157 to i8*
  %159 = load float*, float** %24, align 8
  %160 = bitcast float* %159 to i8*
  %161 = load i32, i32* %26, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %158, i8* align 4 %160, i64 %163, i1 false)
  %164 = call i32 @gettimeofday(%struct.timeval* %28, %struct.timezone* null) #6
  %165 = load float*, float** %22, align 8
  %166 = load float*, float** %24, align 8
  %167 = load float*, float** %23, align 8
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load float, float* %16, align 4
  %172 = load float, float* %17, align 4
  %173 = load float, float* %18, align 4
  %174 = load float, float* %19, align 4
  %175 = load float, float* %21, align 4
  %176 = load i32, i32* %9, align 4
  call void @computeTempOMP(float* %165, float* %166, float* %167, i32 %168, i32 %169, i32 %170, float %171, float %172, float %173, float %174, float %175, i32 %176)
  %177 = call i32 @gettimeofday(%struct.timeval* %29, %struct.timezone* null) #6
  %178 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = sub nsw i64 %179, %181
  %183 = sitofp i64 %182 to double
  %184 = fmul double %183, 0x3EB0C6F7A0B5ED8D
  %185 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = sitofp i64 %186 to double
  %188 = fadd double %184, %187
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = sitofp i64 %190 to double
  %192 = fsub double %188, %191
  %193 = fptrunc double %192 to float
  store float %193, float* %30, align 4
  %194 = load float*, float** %22, align 8
  %195 = load float*, float** %25, align 8
  %196 = load float*, float** %27, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = load float, float* %16, align 4
  %201 = load float, float* %17, align 4
  %202 = load float, float* %18, align 4
  %203 = load float, float* %19, align 4
  %204 = load float, float* %21, align 4
  %205 = load i32, i32* %9, align 4
  call void @computeTempCPU(float* %194, float* %195, float* %196, i32 %197, i32 %198, i32 %199, float %200, float %201, float %202, float %203, float %204, i32 %205)
  %206 = load float*, float** %23, align 8
  %207 = load float*, float** %27, align 8
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %10, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %12, align 4
  %212 = mul nsw i32 %210, %211
  %213 = call float @accuracy(float* %206, float* %207, i32 %212)
  store float %213, float* %31, align 4
  %214 = load float, float* %31, align 4
  %215 = fpext float %214 to double
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), double %215)
  %217 = load float*, float** %23, align 8
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %12, align 4
  %221 = load i8*, i8** %8, align 8
  call void @writeoutput(float* %217, i32 %218, i32 %219, i32 %220, i8* %221)
  %222 = load float*, float** %24, align 8
  %223 = bitcast float* %222 to i8*
  call void @free(i8* %223) #6
  %224 = load float*, float** %23, align 8
  %225 = bitcast float* %224 to i8*
  call void @free(i8* %225) #6
  %226 = load float*, float** %22, align 8
  %227 = bitcast float* %226 to i8*
  call void @free(i8* %227) #6
  ret i32 0
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
