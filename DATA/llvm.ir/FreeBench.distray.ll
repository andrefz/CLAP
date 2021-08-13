; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OBJ = type { %struct.VECTOR, double, %struct.TEXTURE }
%struct.VECTOR = type { double, double, double }
%struct.TEXTURE = type { %struct.VECTOR, double, double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@objs = dso_local global [4 x %struct.OBJ] [%struct.OBJ { %struct.VECTOR { double 0.000000e+00, double 4.000000e+00, double 1.000000e+00 }, double 1.000000e+00, %struct.TEXTURE { %struct.VECTOR { double 1.000000e+00, double 4.000000e-01, double 0.000000e+00 }, double 4.000000e-01, double 8.000000e-01, double 2.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 1.000000e+00 }, double 5.000000e-01, double 9.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -3.000000e-01, double 1.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 1.000000e-01, double 0x3FEE666666666666, double 2.000000e-01 }, double 6.000000e-01, double 8.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double 1.000000e+00, double 2.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 8.600000e-01, double 8.300000e-01, double 0.000000e+00 }, double 0x3FE6666666666666, double 6.000000e-01, double 1.000000e-02 } }], align 16
@Groundpos = dso_local global double 0.000000e+00, align 8
@Groundtxt = dso_local global [2 x %struct.TEXTURE] [%struct.TEXTURE { %struct.VECTOR { double 0.000000e+00, double 1.000000e-01, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 2.000000e-02 }, %struct.TEXTURE { %struct.VECTOR { double 6.000000e-01, double 1.000000e+00, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 1.000000e-02 }], align 16
@Lightpos = dso_local global %struct.VECTOR { double -3.000000e+00, double 1.000000e+00, double 5.000000e+00 }, align 8
@Lightr = dso_local global double 4.000000e-01, align 8
@Camerapos = dso_local global %struct.VECTOR { double 1.500000e+00, double -1.400000e+00, double 1.200000e+00 }, align 8
@Cameraright = dso_local global %struct.VECTOR { double 3.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 8
@Cameradir = dso_local global %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 0.000000e+00 }, align 8
@Cameraup = dso_local global %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.371700e+00 }, align 8
@Ambient = dso_local global double 3.000000e-01, align 8
@Skycolor = dso_local global [2 x %struct.VECTOR] [%struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 0x3FE6666666666666 }, %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.000000e-01 }], align 16
@rnd = dso_local global i64 1380328551, align 8
@DISTRIB = common dso_local global i32 0, align 4
@memory = common dso_local global [921600 x i8] zeroinitializer, align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"ERROR: Could not open indata file\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"255\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** %7, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

20:                                               ; preds = %2
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32* @DISTRIB)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i32 @fclose(%struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fputc(i32 10, %struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 640, i32 480)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 @fputc(i32 10, %struct._IO_FILE* %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 @fputc(i32 10, %struct._IO_FILE* %35)
  call void @TraceScene()
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %40, %20
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 921600
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, -2
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = call i32 @fputc(i32 %47, %struct._IO_FILE* %48)
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %55, -2
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %58 = call i32 @fputc(i32 %56, %struct._IO_FILE* %57)
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, -2
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i32 @fputc(i32 %65, %struct._IO_FILE* %66)
  br label %37

68:                                               ; preds = %37
  ret i32 0
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @TraceScene() #0 {
  %1 = alloca %struct.VECTOR, align 8
  %2 = alloca %struct.VECTOR, align 8
  %3 = alloca %struct.VECTOR, align 8
  %4 = alloca %struct.VECTOR, align 8
  %5 = alloca %struct.VECTOR, align 8
  %6 = alloca %struct.VECTOR, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  store double 1.000000e+00, double* %10, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %160, %0
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 480
  br i1 %13, label %14, label %163

14:                                               ; preds = %11
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 240, %15
  %17 = sitofp i32 %16 to double
  %18 = fdiv double %17, 4.800000e+02
  %19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 2
  store double %18, double* %19, align 8
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %156, %14
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 640
  br i1 %22, label %23, label %159

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = sub nsw i32 %24, 320
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %26, 6.400000e+02
  %28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 0
  store double %27, double* %28, align 8
  %29 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = fmul double %29, %31
  %33 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 0), align 8
  %34 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %35 = load double, double* %34, align 8
  %36 = fmul double %33, %35
  %37 = fadd double %32, %36
  %38 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fmul double %38, %40
  %42 = fadd double %37, %41
  %43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %3, i32 0, i32 0
  store double %42, double* %43, align 8
  %44 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 1), align 8
  %45 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = fmul double %44, %46
  %48 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 1), align 8
  %49 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %50 = load double, double* %49, align 8
  %51 = fmul double %48, %50
  %52 = fadd double %47, %51
  %53 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 1), align 8
  %54 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 2
  %55 = load double, double* %54, align 8
  %56 = fmul double %53, %55
  %57 = fadd double %52, %56
  %58 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %3, i32 0, i32 1
  store double %57, double* %58, align 8
  %59 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraright, i32 0, i32 2), align 8
  %60 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fmul double %59, %61
  %63 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameradir, i32 0, i32 2), align 8
  %64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 1
  %65 = load double, double* %64, align 8
  %66 = fmul double %63, %65
  %67 = fadd double %62, %66
  %68 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Cameraup, i32 0, i32 2), align 8
  %69 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %4, i32 0, i32 2
  %70 = load double, double* %69, align 8
  %71 = fmul double %68, %70
  %72 = fadd double %67, %71
  %73 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %3, i32 0, i32 2
  store double %72, double* %73, align 8
  %74 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 2
  store double 0.000000e+00, double* %74, align 8
  %75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 1
  store double 0.000000e+00, double* %75, align 8
  %76 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 0
  store double 0.000000e+00, double* %76, align 8
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %114, %23
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @DISTRIB, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %77
  call void @DistribVector(%struct.VECTOR* %6, %struct.VECTOR* %3, double 7.812500e-04, double 0x3F51111111111111)
  %82 = bitcast %struct.VECTOR* %5 to i8*
  %83 = bitcast %struct.VECTOR* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 24, i1 false)
  %84 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 0
  %85 = load double, double* %84, align 8
  %86 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %5, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = fadd double %87, %85
  store double %88, double* %86, align 8
  %89 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 1
  %90 = load double, double* %89, align 8
  %91 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %5, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fadd double %92, %90
  store double %93, double* %91, align 8
  %94 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 2
  %95 = load double, double* %94, align 8
  %96 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %5, i32 0, i32 2
  %97 = load double, double* %96, align 8
  %98 = fadd double %97, %95
  store double %98, double* %96, align 8
  call void @TraceLine(%struct.VECTOR* @Camerapos, %struct.VECTOR* %5, %struct.VECTOR* %2, i32 6)
  %99 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 0
  %102 = load double, double* %101, align 8
  %103 = fadd double %102, %100
  store double %103, double* %101, align 8
  %104 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = fadd double %107, %105
  store double %108, double* %106, align 8
  %109 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %2, i32 0, i32 2
  %110 = load double, double* %109, align 8
  %111 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 2
  %112 = load double, double* %111, align 8
  %113 = fadd double %112, %110
  store double %113, double* %111, align 8
  br label %114

114:                                              ; preds = %81
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %77

117:                                              ; preds = %77
  %118 = load i32, i32* @DISTRIB, align 4
  %119 = sitofp i32 %118 to double
  %120 = fdiv double 1.000000e+00, %119
  call void @ScaleVector(%struct.VECTOR* %1, double %120)
  %121 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 0
  %122 = load double, double* %121, align 8
  %123 = fmul double %122, 2.550000e+02
  %124 = fptoui double %123 to i8
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %8, align 4
  %127 = mul nsw i32 %126, 640
  %128 = add nsw i32 %125, %127
  %129 = mul nsw i32 3, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %130
  store i8 %124, i8* %131, align 1
  %132 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 1
  %133 = load double, double* %132, align 8
  %134 = fmul double %133, 2.550000e+02
  %135 = fptoui double %134 to i8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %8, align 4
  %138 = mul nsw i32 %137, 640
  %139 = add nsw i32 %136, %138
  %140 = mul nsw i32 3, %139
  %141 = add nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %142
  store i8 %135, i8* %143, align 1
  %144 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %1, i32 0, i32 2
  %145 = load double, double* %144, align 8
  %146 = fmul double %145, 2.550000e+02
  %147 = fptoui double %146 to i8
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = mul nsw i32 %149, 640
  %151 = add nsw i32 %148, %150
  %152 = mul nsw i32 3, %151
  %153 = add nsw i32 %152, 2
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [921600 x i8], [921600 x i8]* @memory, i64 0, i64 %154
  store i8 %147, i8* %155, align 1
  br label %156

156:                                              ; preds = %117
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %20

159:                                              ; preds = %20
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %11

163:                                              ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DistribVector(%struct.VECTOR* %0, %struct.VECTOR* %1, double %2, double %3) #0 {
  %5 = alloca %struct.VECTOR*, align 8
  %6 = alloca %struct.VECTOR*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca %struct.VECTOR, align 8
  %10 = alloca %struct.VECTOR, align 8
  %11 = alloca double, align 8
  store %struct.VECTOR* %0, %struct.VECTOR** %5, align 8
  store %struct.VECTOR* %1, %struct.VECTOR** %6, align 8
  store double %2, double* %7, align 8
  store double %3, double* %8, align 8
  %12 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %13 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 2
  %14 = load double, double* %13, align 8
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fcmp ogt double %15, 1.000000e-05
  br i1 %16, label %17, label %65

17:                                               ; preds = %4
  %18 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %22 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %21, i32 0, i32 2
  %23 = load double, double* %22, align 8
  %24 = fmul double %20, %23
  %25 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  store double %24, double* %25, align 8
  %26 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %27 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = fneg double %28
  %30 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %31 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = fmul double %29, %32
  %34 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  store double %33, double* %34, align 8
  %35 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 2
  store double 0.000000e+00, double* %35, align 8
  %36 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %39 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %38, i32 0, i32 2
  %40 = load double, double* %39, align 8
  %41 = fmul double %37, %40
  %42 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  store double %41, double* %42, align 8
  %43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  %44 = load double, double* %43, align 8
  %45 = fneg double %44
  %46 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %47 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %46, i32 0, i32 2
  %48 = load double, double* %47, align 8
  %49 = fmul double %45, %48
  %50 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  store double %49, double* %50, align 8
  %51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %54 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %53, i32 0, i32 1
  %55 = load double, double* %54, align 8
  %56 = fmul double %52, %55
  %57 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %60 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = fmul double %58, %61
  %63 = fsub double %56, %62
  %64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  store double %63, double* %64, align 8
  br label %79

65:                                               ; preds = %4
  %66 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %67 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %66, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  store double %68, double* %69, align 8
  %70 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %71 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %70, i32 0, i32 0
  %72 = load double, double* %71, align 8
  %73 = fneg double %72
  %74 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  store double %73, double* %74, align 8
  %75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 2
  store double 0.000000e+00, double* %75, align 8
  %76 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  store double 0.000000e+00, double* %76, align 8
  %77 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  store double 0.000000e+00, double* %77, align 8
  %78 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  store double 1.000000e+00, double* %78, align 8
  br label %79

79:                                               ; preds = %65, %17
  %80 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %81 = call double @VectorLength(%struct.VECTOR* %80)
  store double %81, double* %11, align 8
  %82 = load double, double* %7, align 8
  %83 = load double, double* %11, align 8
  %84 = call double @VectorLength(%struct.VECTOR* %9)
  %85 = fdiv double %83, %84
  %86 = fmul double %82, %85
  %87 = call double @Jitter()
  %88 = fmul double %86, %87
  call void @ScaleVector(%struct.VECTOR* %9, double %88)
  %89 = load double, double* %8, align 8
  %90 = load double, double* %11, align 8
  %91 = call double @VectorLength(%struct.VECTOR* %10)
  %92 = fdiv double %90, %91
  %93 = fmul double %89, %92
  %94 = call double @Jitter()
  %95 = fmul double %93, %94
  call void @ScaleVector(%struct.VECTOR* %10, double %95)
  %96 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  %97 = load double, double* %96, align 8
  %98 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  %99 = load double, double* %98, align 8
  %100 = fadd double %97, %99
  %101 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %102 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %101, i32 0, i32 0
  store double %100, double* %102, align 8
  %103 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  %104 = load double, double* %103, align 8
  %105 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  %106 = load double, double* %105, align 8
  %107 = fadd double %104, %106
  %108 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %109 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %108, i32 0, i32 1
  store double %107, double* %109, align 8
  %110 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %113 = load double, double* %112, align 8
  %114 = fadd double %111, %113
  %115 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %116 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %115, i32 0, i32 2
  store double %114, double* %116, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define internal void @TraceLine(%struct.VECTOR* %0, %struct.VECTOR* %1, %struct.VECTOR* %2, i32 %3) #0 {
  %5 = alloca %struct.VECTOR*, align 8
  %6 = alloca %struct.VECTOR*, align 8
  %7 = alloca %struct.VECTOR*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.VECTOR, align 8
  %10 = alloca %struct.VECTOR, align 8
  %11 = alloca %struct.VECTOR, align 8
  %12 = alloca %struct.VECTOR, align 8
  %13 = alloca %struct.VECTOR, align 8
  %14 = alloca %struct.VECTOR, align 8
  %15 = alloca %struct.VECTOR, align 8
  %16 = alloca %struct.VECTOR, align 8
  %17 = alloca %struct.VECTOR, align 8
  %18 = alloca %struct.VECTOR, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.TEXTURE*, align 8
  %23 = alloca %struct.TEXTURE*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.VECTOR* %0, %struct.VECTOR** %5, align 8
  store %struct.VECTOR* %1, %struct.VECTOR** %6, align 8
  store %struct.VECTOR* %2, %struct.VECTOR** %7, align 8
  store i32 %3, i32* %8, align 4
  %27 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %27, i32 0, i32 2
  store double 0.000000e+00, double* %28, align 8
  %29 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %30 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %29, i32 0, i32 1
  store double 0.000000e+00, double* %30, align 8
  %31 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %32 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %31, i32 0, i32 0
  store double 0.000000e+00, double* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %413

35:                                               ; preds = %4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 6, %36
  %38 = icmp slt i32 %37, 3
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %26, align 4
  %41 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %42 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %43 = call double @IntersectObjs(%struct.VECTOR* %41, %struct.VECTOR* %42, %struct.VECTOR* %9, %struct.VECTOR* %10, %struct.TEXTURE** %22)
  store double %43, double* %19, align 8
  %44 = load double, double* %19, align 8
  %45 = fcmp ogt double %44, 1.000000e-05
  br i1 %45, label %46, label %328

46:                                               ; preds = %35
  %47 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = fsub double %47, %49
  %51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 0
  store double %50, double* %51, align 8
  %52 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 1), align 8
  %53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = fsub double %52, %54
  %56 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 1
  store double %55, double* %56, align 8
  %57 = load double, double* getelementptr inbounds (%struct.VECTOR, %struct.VECTOR* @Lightpos, i32 0, i32 2), align 8
  %58 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 2
  %59 = load double, double* %58, align 8
  %60 = fsub double %57, %59
  %61 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 2
  store double %60, double* %61, align 8
  %62 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 0
  %63 = load double, double* %62, align 8
  %64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fmul double %63, %65
  %67 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 1
  %68 = load double, double* %67, align 8
  %69 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  %70 = load double, double* %69, align 8
  %71 = fmul double %68, %70
  %72 = fadd double %66, %71
  %73 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 2
  %74 = load double, double* %73, align 8
  %75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %76 = load double, double* %75, align 8
  %77 = fmul double %74, %76
  %78 = fadd double %72, %77
  store double %78, double* %21, align 8
  %79 = load double, double* %21, align 8
  %80 = fcmp ogt double %79, 0.000000e+00
  br i1 %80, label %81, label %192

81:                                               ; preds = %46
  store i32 0, i32* %25, align 4
  %82 = load i32, i32* %26, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  %85 = load double, double* @Lightr, align 8
  %86 = call double @VectorLength(%struct.VECTOR* %11)
  %87 = fdiv double %85, %86
  store double %87, double* %20, align 8
  store i32 0, i32* %24, align 4
  br label %88

88:                                               ; preds = %122, %84
  %89 = load i32, i32* %24, align 4
  %90 = load i32, i32* @DISTRIB, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %125

92:                                               ; preds = %88
  %93 = load double, double* %20, align 8
  %94 = load double, double* %20, align 8
  call void @DistribVector(%struct.VECTOR* %18, %struct.VECTOR* %11, double %93, double %94)
  %95 = bitcast %struct.VECTOR* %12 to i8*
  %96 = bitcast %struct.VECTOR* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 8 %96, i64 24, i1 false)
  %97 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 0
  %100 = load double, double* %99, align 8
  %101 = fadd double %100, %98
  store double %101, double* %99, align 8
  %102 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 1
  %105 = load double, double* %104, align 8
  %106 = fadd double %105, %103
  store double %106, double* %104, align 8
  %107 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %108 = load double, double* %107, align 8
  %109 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 2
  %110 = load double, double* %109, align 8
  %111 = fadd double %110, %108
  store double %111, double* %109, align 8
  %112 = call double @IntersectObjs(%struct.VECTOR* %9, %struct.VECTOR* %12, %struct.VECTOR* %16, %struct.VECTOR* %17, %struct.TEXTURE** %23)
  store double %112, double* %19, align 8
  %113 = load double, double* %19, align 8
  %114 = fcmp olt double %113, 1.000000e-05
  br i1 %114, label %118, label %115

115:                                              ; preds = %92
  %116 = load double, double* %19, align 8
  %117 = fcmp ogt double %116, 1.000000e+00
  br i1 %117, label %118, label %121

118:                                              ; preds = %115, %92
  %119 = load i32, i32* %25, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %25, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %24, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %24, align 4
  br label %88

125:                                              ; preds = %88
  br label %136

126:                                              ; preds = %81
  %127 = call double @IntersectObjs(%struct.VECTOR* %9, %struct.VECTOR* %11, %struct.VECTOR* %16, %struct.VECTOR* %17, %struct.TEXTURE** %23)
  store double %127, double* %19, align 8
  %128 = load double, double* %19, align 8
  %129 = fcmp olt double %128, 1.000000e-05
  br i1 %129, label %133, label %130

130:                                              ; preds = %126
  %131 = load double, double* %19, align 8
  %132 = fcmp ogt double %131, 1.000000e+00
  br i1 %132, label %133, label %135

133:                                              ; preds = %130, %126
  %134 = load i32, i32* @DISTRIB, align 4
  store i32 %134, i32* %25, align 4
  br label %135

135:                                              ; preds = %133, %130
  br label %136

136:                                              ; preds = %135, %125
  %137 = load i32, i32* %25, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %139, label %190

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  %141 = load double, double* %140, align 8
  %142 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 0
  %143 = load double, double* %142, align 8
  %144 = fmul double %141, %143
  %145 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  %146 = load double, double* %145, align 8
  %147 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  %148 = load double, double* %147, align 8
  %149 = fmul double %146, %148
  %150 = fadd double %144, %149
  %151 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 2
  %154 = load double, double* %153, align 8
  %155 = fmul double %152, %154
  %156 = fadd double %150, %155
  store double %156, double* %20, align 8
  %157 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 0
  %158 = load double, double* %157, align 8
  %159 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 0
  %160 = load double, double* %159, align 8
  %161 = fmul double %158, %160
  %162 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 1
  %163 = load double, double* %162, align 8
  %164 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 1
  %165 = load double, double* %164, align 8
  %166 = fmul double %163, %165
  %167 = fadd double %161, %166
  %168 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 2
  %169 = load double, double* %168, align 8
  %170 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 2
  %171 = load double, double* %170, align 8
  %172 = fmul double %169, %171
  %173 = fadd double %167, %172
  %174 = load double, double* %20, align 8
  %175 = fmul double %174, %173
  store double %175, double* %20, align 8
  %176 = load double, double* %21, align 8
  %177 = load double, double* %20, align 8
  %178 = call double @sqrt(double %177) #7
  %179 = fdiv double %176, %178
  %180 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %181 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %180, i32 0, i32 1
  %182 = load double, double* %181, align 8
  %183 = fmul double %179, %182
  %184 = load i32, i32* %25, align 4
  %185 = sitofp i32 %184 to double
  %186 = fmul double %183, %185
  %187 = load i32, i32* @DISTRIB, align 4
  %188 = sitofp i32 %187 to double
  %189 = fdiv double %186, %188
  store double %189, double* %21, align 8
  br label %191

190:                                              ; preds = %136
  store double 0.000000e+00, double* %21, align 8
  br label %191

191:                                              ; preds = %190, %139
  br label %193

192:                                              ; preds = %46
  store double 0.000000e+00, double* %21, align 8
  br label %193

193:                                              ; preds = %192, %191
  %194 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %195 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %195, i32 0, i32 0
  %197 = load double, double* %196, align 8
  %198 = load double, double* @Ambient, align 8
  %199 = load double, double* %21, align 8
  %200 = fadd double %198, %199
  %201 = fmul double %197, %200
  %202 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %203 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %202, i32 0, i32 0
  store double %201, double* %203, align 8
  %204 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %205 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %205, i32 0, i32 1
  %207 = load double, double* %206, align 8
  %208 = load double, double* @Ambient, align 8
  %209 = load double, double* %21, align 8
  %210 = fadd double %208, %209
  %211 = fmul double %207, %210
  %212 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %213 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %212, i32 0, i32 1
  store double %211, double* %213, align 8
  %214 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %215 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %215, i32 0, i32 2
  %217 = load double, double* %216, align 8
  %218 = load double, double* @Ambient, align 8
  %219 = load double, double* %21, align 8
  %220 = fadd double %218, %219
  %221 = fmul double %217, %220
  %222 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %223 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %222, i32 0, i32 2
  store double %221, double* %223, align 8
  %224 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %225 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %224, i32 0, i32 2
  %226 = load double, double* %225, align 8
  %227 = fcmp ogt double %226, 1.000000e-05
  br i1 %227, label %228, label %327

228:                                              ; preds = %193
  %229 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  call void @ReflectVector(%struct.VECTOR* %12, %struct.VECTOR* %229, %struct.VECTOR* %10)
  %230 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 2
  store double 0.000000e+00, double* %230, align 8
  %231 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 1
  store double 0.000000e+00, double* %231, align 8
  %232 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 0
  store double 0.000000e+00, double* %232, align 8
  %233 = load i32, i32* %26, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %293

235:                                              ; preds = %228
  %236 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %237 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %236, i32 0, i32 3
  %238 = load double, double* %237, align 8
  %239 = fcmp ogt double %238, 1.000000e-05
  br i1 %239, label %240, label %293

240:                                              ; preds = %235
  store i32 0, i32* %24, align 4
  br label %241

241:                                              ; preds = %286, %240
  %242 = load i32, i32* %24, align 4
  %243 = load i32, i32* @DISTRIB, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %289

245:                                              ; preds = %241
  %246 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %247 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %246, i32 0, i32 3
  %248 = load double, double* %247, align 8
  %249 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %250 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %249, i32 0, i32 3
  %251 = load double, double* %250, align 8
  call void @DistribVector(%struct.VECTOR* %18, %struct.VECTOR* %12, double %248, double %251)
  %252 = bitcast %struct.VECTOR* %13 to i8*
  %253 = bitcast %struct.VECTOR* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %252, i8* align 8 %253, i64 24, i1 false)
  %254 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %255 = load double, double* %254, align 8
  %256 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %13, i32 0, i32 0
  %257 = load double, double* %256, align 8
  %258 = fadd double %257, %255
  store double %258, double* %256, align 8
  %259 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %13, i32 0, i32 1
  %262 = load double, double* %261, align 8
  %263 = fadd double %262, %260
  store double %263, double* %261, align 8
  %264 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %265 = load double, double* %264, align 8
  %266 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %13, i32 0, i32 2
  %267 = load double, double* %266, align 8
  %268 = fadd double %267, %265
  store double %268, double* %266, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sub nsw i32 %269, 1
  call void @TraceLine(%struct.VECTOR* %9, %struct.VECTOR* %13, %struct.VECTOR* %15, i32 %270)
  %271 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %15, i32 0, i32 0
  %272 = load double, double* %271, align 8
  %273 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 0
  %274 = load double, double* %273, align 8
  %275 = fadd double %274, %272
  store double %275, double* %273, align 8
  %276 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %15, i32 0, i32 1
  %277 = load double, double* %276, align 8
  %278 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 1
  %279 = load double, double* %278, align 8
  %280 = fadd double %279, %277
  store double %280, double* %278, align 8
  %281 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %15, i32 0, i32 2
  %282 = load double, double* %281, align 8
  %283 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 2
  %284 = load double, double* %283, align 8
  %285 = fadd double %284, %282
  store double %285, double* %283, align 8
  br label %286

286:                                              ; preds = %245
  %287 = load i32, i32* %24, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %24, align 4
  br label %241

289:                                              ; preds = %241
  %290 = load i32, i32* @DISTRIB, align 4
  %291 = sitofp i32 %290 to double
  %292 = fdiv double 1.000000e+00, %291
  call void @ScaleVector(%struct.VECTOR* %14, double %292)
  br label %296

293:                                              ; preds = %235, %228
  %294 = load i32, i32* %8, align 4
  %295 = sub nsw i32 %294, 1
  call void @TraceLine(%struct.VECTOR* %9, %struct.VECTOR* %12, %struct.VECTOR* %14, i32 %295)
  br label %296

296:                                              ; preds = %293, %289
  %297 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 0
  %298 = load double, double* %297, align 8
  %299 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %300 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %299, i32 0, i32 2
  %301 = load double, double* %300, align 8
  %302 = fmul double %298, %301
  %303 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %304 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %303, i32 0, i32 0
  %305 = load double, double* %304, align 8
  %306 = fadd double %305, %302
  store double %306, double* %304, align 8
  %307 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 1
  %308 = load double, double* %307, align 8
  %309 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %310 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %309, i32 0, i32 2
  %311 = load double, double* %310, align 8
  %312 = fmul double %308, %311
  %313 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %314 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %313, i32 0, i32 1
  %315 = load double, double* %314, align 8
  %316 = fadd double %315, %312
  store double %316, double* %314, align 8
  %317 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %14, i32 0, i32 2
  %318 = load double, double* %317, align 8
  %319 = load %struct.TEXTURE*, %struct.TEXTURE** %22, align 8
  %320 = getelementptr inbounds %struct.TEXTURE, %struct.TEXTURE* %319, i32 0, i32 2
  %321 = load double, double* %320, align 8
  %322 = fmul double %318, %321
  %323 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %324 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %323, i32 0, i32 2
  %325 = load double, double* %324, align 8
  %326 = fadd double %325, %322
  store double %326, double* %324, align 8
  br label %327

327:                                              ; preds = %296, %193
  br label %388

328:                                              ; preds = %35
  %329 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %330 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %329, i32 0, i32 0
  %331 = load double, double* %330, align 8
  %332 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %333 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %332, i32 0, i32 0
  %334 = load double, double* %333, align 8
  %335 = fmul double %331, %334
  %336 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %337 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %336, i32 0, i32 1
  %338 = load double, double* %337, align 8
  %339 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %340 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %339, i32 0, i32 1
  %341 = load double, double* %340, align 8
  %342 = fmul double %338, %341
  %343 = fadd double %335, %342
  %344 = call double @sqrt(double %343) #7
  store double %344, double* %20, align 8
  %345 = load double, double* %20, align 8
  %346 = fcmp ogt double %345, 0.000000e+00
  br i1 %346, label %347, label %356

347:                                              ; preds = %328
  %348 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %349 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %348, i32 0, i32 2
  %350 = load double, double* %349, align 8
  %351 = call double @llvm.fabs.f64(double %350)
  %352 = load double, double* %20, align 8
  %353 = fdiv double %351, %352
  %354 = call double @atan(double %353) #7
  %355 = fmul double %354, 0x3FE45F306C8462A6
  store double %355, double* %20, align 8
  br label %357

356:                                              ; preds = %328
  store double 1.000000e+00, double* %20, align 8
  br label %357

357:                                              ; preds = %356, %347
  %358 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 1, i32 0), align 8
  %359 = load double, double* %20, align 8
  %360 = fmul double %358, %359
  %361 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 0, i32 0), align 16
  %362 = load double, double* %20, align 8
  %363 = fsub double 1.000000e+00, %362
  %364 = fmul double %361, %363
  %365 = fadd double %360, %364
  %366 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %367 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %366, i32 0, i32 0
  store double %365, double* %367, align 8
  %368 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 1, i32 1), align 8
  %369 = load double, double* %20, align 8
  %370 = fmul double %368, %369
  %371 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 0, i32 1), align 8
  %372 = load double, double* %20, align 8
  %373 = fsub double 1.000000e+00, %372
  %374 = fmul double %371, %373
  %375 = fadd double %370, %374
  %376 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %377 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %376, i32 0, i32 1
  store double %375, double* %377, align 8
  %378 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 1, i32 2), align 8
  %379 = load double, double* %20, align 8
  %380 = fmul double %378, %379
  %381 = load double, double* getelementptr inbounds ([2 x %struct.VECTOR], [2 x %struct.VECTOR]* @Skycolor, i64 0, i64 0, i32 2), align 16
  %382 = load double, double* %20, align 8
  %383 = fsub double 1.000000e+00, %382
  %384 = fmul double %381, %383
  %385 = fadd double %380, %384
  %386 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %387 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %386, i32 0, i32 2
  store double %385, double* %387, align 8
  br label %388

388:                                              ; preds = %357, %327
  %389 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %390 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %389, i32 0, i32 0
  %391 = load double, double* %390, align 8
  %392 = fcmp ogt double %391, 1.000000e+00
  br i1 %392, label %393, label %396

393:                                              ; preds = %388
  %394 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %395 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %394, i32 0, i32 0
  store double 1.000000e+00, double* %395, align 8
  br label %396

396:                                              ; preds = %393, %388
  %397 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %398 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %397, i32 0, i32 1
  %399 = load double, double* %398, align 8
  %400 = fcmp ogt double %399, 1.000000e+00
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %403 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %402, i32 0, i32 1
  store double 1.000000e+00, double* %403, align 8
  br label %404

404:                                              ; preds = %401, %396
  %405 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %406 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %405, i32 0, i32 2
  %407 = load double, double* %406, align 8
  %408 = fcmp ogt double %407, 1.000000e+00
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %411 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %410, i32 0, i32 2
  store double 1.000000e+00, double* %411, align 8
  br label %412

412:                                              ; preds = %409, %404
  br label %413

413:                                              ; preds = %412, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ScaleVector(%struct.VECTOR* %0, double %1) #0 {
  %3 = alloca %struct.VECTOR*, align 8
  %4 = alloca double, align 8
  store %struct.VECTOR* %0, %struct.VECTOR** %3, align 8
  store double %1, double* %4, align 8
  %5 = load double, double* %4, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %3, align 8
  %7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fmul double %8, %5
  store double %9, double* %7, align 8
  %10 = load double, double* %4, align 8
  %11 = load %struct.VECTOR*, %struct.VECTOR** %3, align 8
  %12 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %11, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = fmul double %13, %10
  store double %14, double* %12, align 8
  %15 = load double, double* %4, align 8
  %16 = load %struct.VECTOR*, %struct.VECTOR** %3, align 8
  %17 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %16, i32 0, i32 2
  %18 = load double, double* %17, align 8
  %19 = fmul double %18, %15
  store double %19, double* %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @IntersectObjs(%struct.VECTOR* %0, %struct.VECTOR* %1, %struct.VECTOR* %2, %struct.VECTOR* %3, %struct.TEXTURE** %4) #0 {
  %6 = alloca %struct.VECTOR*, align 8
  %7 = alloca %struct.VECTOR*, align 8
  %8 = alloca %struct.VECTOR*, align 8
  %9 = alloca %struct.VECTOR*, align 8
  %10 = alloca %struct.TEXTURE**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.VECTOR, align 8
  store %struct.VECTOR* %0, %struct.VECTOR** %6, align 8
  store %struct.VECTOR* %1, %struct.VECTOR** %7, align 8
  store %struct.VECTOR* %2, %struct.VECTOR** %8, align 8
  store %struct.VECTOR* %3, %struct.VECTOR** %9, align 8
  store %struct.TEXTURE** %4, %struct.TEXTURE*** %10, align 8
  store double -1.000000e+00, double* %13, align 8
  %19 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  %22 = call double @llvm.fabs.f64(double %21)
  %23 = fcmp ogt double %22, 1.000000e-05
  br i1 %23, label %24, label %97

24:                                               ; preds = %5
  %25 = load double, double* @Groundpos, align 8
  %26 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %27 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %26, i32 0, i32 2
  %28 = load double, double* %27, align 8
  %29 = fsub double %25, %28
  %30 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %31 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = fdiv double %29, %32
  store double %33, double* %14, align 8
  %34 = load double, double* %14, align 8
  %35 = fcmp ogt double %34, 1.000000e-05
  br i1 %35, label %36, label %96

36:                                               ; preds = %24
  %37 = load double, double* %14, align 8
  %38 = fcmp olt double %37, 1.000000e+05
  br i1 %38, label %39, label %96

39:                                               ; preds = %36
  %40 = load double, double* %14, align 8
  store double %40, double* %13, align 8
  %41 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %42 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %45 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %44, i32 0, i32 0
  %46 = load double, double* %45, align 8
  %47 = load double, double* %13, align 8
  %48 = fmul double %46, %47
  %49 = fadd double %43, %48
  %50 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %50, i32 0, i32 0
  store double %49, double* %51, align 8
  %52 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %53 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %52, i32 0, i32 1
  %54 = load double, double* %53, align 8
  %55 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %56 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %55, i32 0, i32 1
  %57 = load double, double* %56, align 8
  %58 = load double, double* %13, align 8
  %59 = fmul double %57, %58
  %60 = fadd double %54, %59
  %61 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %62 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %61, i32 0, i32 1
  store double %60, double* %62, align 8
  %63 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %63, i32 0, i32 2
  %65 = load double, double* %64, align 8
  %66 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %67 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %66, i32 0, i32 2
  %68 = load double, double* %67, align 8
  %69 = load double, double* %13, align 8
  %70 = fmul double %68, %69
  %71 = fadd double %65, %70
  %72 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %73 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %72, i32 0, i32 2
  store double %71, double* %73, align 8
  %74 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %74, i32 0, i32 0
  store double 0.000000e+00, double* %75, align 8
  %76 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %77 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %76, i32 0, i32 1
  store double 0.000000e+00, double* %77, align 8
  %78 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %79 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %78, i32 0, i32 2
  store double 1.000000e+00, double* %79, align 8
  %80 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %81 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %80, i32 0, i32 0
  %82 = load double, double* %81, align 8
  %83 = fadd double %82, 5.000000e+04
  %84 = fptosi double %83 to i32
  %85 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %86 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %85, i32 0, i32 1
  %87 = load double, double* %86, align 8
  %88 = fadd double %87, 5.000000e+04
  %89 = fptosi double %88 to i32
  %90 = add nsw i32 %84, %89
  %91 = and i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x %struct.TEXTURE], [2 x %struct.TEXTURE]* @Groundtxt, i64 0, i64 %93
  %95 = load %struct.TEXTURE**, %struct.TEXTURE*** %10, align 8
  store %struct.TEXTURE* %94, %struct.TEXTURE** %95, align 8
  br label %96

96:                                               ; preds = %39, %36, %24
  br label %97

97:                                               ; preds = %96, %5
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %305, %97
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %308

101:                                              ; preds = %98
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %104, i32 0, i32 0
  %106 = bitcast %struct.VECTOR* %18 to i8*
  %107 = bitcast %struct.VECTOR* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %106, i8* align 16 %107, i64 24, i1 false)
  %108 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %109 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %108, i32 0, i32 0
  %110 = load double, double* %109, align 8
  %111 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = fsub double %112, %110
  store double %113, double* %111, align 8
  %114 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %115 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %114, i32 0, i32 1
  %116 = load double, double* %115, align 8
  %117 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %118 = load double, double* %117, align 8
  %119 = fsub double %118, %116
  store double %119, double* %117, align 8
  %120 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %121 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %120, i32 0, i32 2
  %122 = load double, double* %121, align 8
  %123 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %124 = load double, double* %123, align 8
  %125 = fsub double %124, %122
  store double %125, double* %123, align 8
  %126 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %127 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %126, i32 0, i32 0
  %128 = load double, double* %127, align 8
  %129 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %130 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %129, i32 0, i32 0
  %131 = load double, double* %130, align 8
  %132 = fmul double %128, %131
  %133 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %134 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %133, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %137 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %136, i32 0, i32 1
  %138 = load double, double* %137, align 8
  %139 = fmul double %135, %138
  %140 = fadd double %132, %139
  %141 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %142 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %141, i32 0, i32 2
  %143 = load double, double* %142, align 8
  %144 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %145 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %144, i32 0, i32 2
  %146 = load double, double* %145, align 8
  %147 = fmul double %143, %146
  %148 = fadd double %140, %147
  %149 = fdiv double 1.000000e+00, %148
  store double %149, double* %15, align 8
  %150 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %151 = load double, double* %150, align 8
  %152 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %153 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = fmul double %151, %154
  %156 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %159 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %158, i32 0, i32 1
  %160 = load double, double* %159, align 8
  %161 = fmul double %157, %160
  %162 = fadd double %155, %161
  %163 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %164 = load double, double* %163, align 8
  %165 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %166 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %165, i32 0, i32 2
  %167 = load double, double* %166, align 8
  %168 = fmul double %164, %167
  %169 = fadd double %162, %168
  %170 = load double, double* %15, align 8
  %171 = fmul double %169, %170
  store double %171, double* %16, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %174, i32 0, i32 1
  %176 = load double, double* %175, align 8
  %177 = load i32, i32* %11, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %179, i32 0, i32 1
  %181 = load double, double* %180, align 8
  %182 = fmul double %176, %181
  %183 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %184 = load double, double* %183, align 8
  %185 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %186 = load double, double* %185, align 8
  %187 = fmul double %184, %186
  %188 = fsub double %182, %187
  %189 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %190 = load double, double* %189, align 8
  %191 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %192 = load double, double* %191, align 8
  %193 = fmul double %190, %192
  %194 = fsub double %188, %193
  %195 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %196 = load double, double* %195, align 8
  %197 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %198 = load double, double* %197, align 8
  %199 = fmul double %196, %198
  %200 = fsub double %194, %199
  %201 = load double, double* %15, align 8
  %202 = fmul double %200, %201
  store double %202, double* %17, align 8
  %203 = load double, double* %17, align 8
  %204 = load double, double* %16, align 8
  %205 = load double, double* %16, align 8
  %206 = fmul double %204, %205
  %207 = fadd double %203, %206
  store double %207, double* %15, align 8
  %208 = fcmp ogt double %207, 0.000000e+00
  br i1 %208, label %209, label %304

209:                                              ; preds = %101
  %210 = load double, double* %15, align 8
  %211 = call double @sqrt(double %210) #7
  store double %211, double* %15, align 8
  %212 = load double, double* %16, align 8
  %213 = load double, double* %15, align 8
  %214 = fsub double %212, %213
  store double %214, double* %14, align 8
  %215 = fcmp olt double %214, 1.000000e-05
  br i1 %215, label %216, label %220

216:                                              ; preds = %209
  %217 = load double, double* %16, align 8
  %218 = load double, double* %15, align 8
  %219 = fadd double %217, %218
  store double %219, double* %14, align 8
  br label %220

220:                                              ; preds = %216, %209
  %221 = load double, double* %14, align 8
  %222 = fcmp olt double 1.000000e-05, %221
  br i1 %222, label %223, label %303

223:                                              ; preds = %220
  %224 = load double, double* %14, align 8
  %225 = load double, double* %13, align 8
  %226 = fcmp olt double %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = load double, double* %13, align 8
  %229 = fcmp olt double %228, 0.000000e+00
  br i1 %229, label %230, label %303

230:                                              ; preds = %227, %223
  %231 = load double, double* %14, align 8
  store double %231, double* %13, align 8
  %232 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %233 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %232, i32 0, i32 0
  %234 = load double, double* %233, align 8
  %235 = load double, double* %13, align 8
  %236 = fmul double %234, %235
  %237 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %238 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %237, i32 0, i32 0
  store double %236, double* %238, align 8
  %239 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %240 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %239, i32 0, i32 1
  %241 = load double, double* %240, align 8
  %242 = load double, double* %13, align 8
  %243 = fmul double %241, %242
  %244 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %245 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %244, i32 0, i32 1
  store double %243, double* %245, align 8
  %246 = load %struct.VECTOR*, %struct.VECTOR** %7, align 8
  %247 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %246, i32 0, i32 2
  %248 = load double, double* %247, align 8
  %249 = load double, double* %13, align 8
  %250 = fmul double %248, %249
  %251 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %252 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %251, i32 0, i32 2
  store double %250, double* %252, align 8
  %253 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %254 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %253, i32 0, i32 0
  %255 = load double, double* %254, align 8
  %256 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 0
  %257 = load double, double* %256, align 8
  %258 = fsub double %255, %257
  %259 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %260 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %259, i32 0, i32 0
  store double %258, double* %260, align 8
  %261 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %262 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %261, i32 0, i32 1
  %263 = load double, double* %262, align 8
  %264 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 1
  %265 = load double, double* %264, align 8
  %266 = fsub double %263, %265
  %267 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %268 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %267, i32 0, i32 1
  store double %266, double* %268, align 8
  %269 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %270 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %269, i32 0, i32 2
  %271 = load double, double* %270, align 8
  %272 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %273 = load double, double* %272, align 8
  %274 = fsub double %271, %273
  %275 = load %struct.VECTOR*, %struct.VECTOR** %9, align 8
  %276 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %275, i32 0, i32 2
  store double %274, double* %276, align 8
  %277 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %278 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %277, i32 0, i32 0
  %279 = load double, double* %278, align 8
  %280 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %281 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %280, i32 0, i32 0
  %282 = load double, double* %281, align 8
  %283 = fadd double %282, %279
  store double %283, double* %281, align 8
  %284 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %285 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %284, i32 0, i32 1
  %286 = load double, double* %285, align 8
  %287 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %288 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %287, i32 0, i32 1
  %289 = load double, double* %288, align 8
  %290 = fadd double %289, %286
  store double %290, double* %288, align 8
  %291 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %292 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %291, i32 0, i32 2
  %293 = load double, double* %292, align 8
  %294 = load %struct.VECTOR*, %struct.VECTOR** %8, align 8
  %295 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %294, i32 0, i32 2
  %296 = load double, double* %295, align 8
  %297 = fadd double %296, %293
  store double %297, double* %295, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x %struct.OBJ], [4 x %struct.OBJ]* @objs, i64 0, i64 %299
  %301 = getelementptr inbounds %struct.OBJ, %struct.OBJ* %300, i32 0, i32 2
  %302 = load %struct.TEXTURE**, %struct.TEXTURE*** %10, align 8
  store %struct.TEXTURE* %301, %struct.TEXTURE** %302, align 8
  br label %303

303:                                              ; preds = %230, %227, %220
  br label %304

304:                                              ; preds = %303, %101
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %11, align 4
  br label %98

308:                                              ; preds = %98
  %309 = load double, double* %13, align 8
  ret double %309
}

; Function Attrs: noinline nounwind uwtable
define internal double @VectorLength(%struct.VECTOR* %0) #0 {
  %2 = alloca %struct.VECTOR*, align 8
  store %struct.VECTOR* %0, %struct.VECTOR** %2, align 8
  %3 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %4 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %7 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %6, i32 0, i32 0
  %8 = load double, double* %7, align 8
  %9 = fmul double %5, %8
  %10 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %11 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  %13 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %14 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %13, i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fmul double %12, %15
  %17 = fadd double %9, %16
  %18 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %19 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %18, i32 0, i32 2
  %20 = load double, double* %19, align 8
  %21 = load %struct.VECTOR*, %struct.VECTOR** %2, align 8
  %22 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %21, i32 0, i32 2
  %23 = load double, double* %22, align 8
  %24 = fmul double %20, %23
  %25 = fadd double %17, %24
  %26 = call double @sqrt(double %25) #7
  ret double %26
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #4

; Function Attrs: noinline nounwind uwtable
define internal void @ReflectVector(%struct.VECTOR* %0, %struct.VECTOR* %1, %struct.VECTOR* %2) #0 {
  %4 = alloca %struct.VECTOR*, align 8
  %5 = alloca %struct.VECTOR*, align 8
  %6 = alloca %struct.VECTOR*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store %struct.VECTOR* %0, %struct.VECTOR** %4, align 8
  store %struct.VECTOR* %1, %struct.VECTOR** %5, align 8
  store %struct.VECTOR* %2, %struct.VECTOR** %6, align 8
  %9 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %10 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %13 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = fmul double %11, %14
  %16 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %17 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  %19 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %20 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %19, i32 0, i32 1
  %21 = load double, double* %20, align 8
  %22 = fmul double %18, %21
  %23 = fadd double %15, %22
  %24 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %25 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %24, i32 0, i32 2
  %26 = load double, double* %25, align 8
  %27 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %28 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %27, i32 0, i32 2
  %29 = load double, double* %28, align 8
  %30 = fmul double %26, %29
  %31 = fadd double %23, %30
  store double %31, double* %8, align 8
  %32 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %33 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %32, i32 0, i32 0
  %34 = load double, double* %33, align 8
  %35 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %36 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fmul double %34, %37
  %39 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %40 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %39, i32 0, i32 1
  %41 = load double, double* %40, align 8
  %42 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %43 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %42, i32 0, i32 1
  %44 = load double, double* %43, align 8
  %45 = fmul double %41, %44
  %46 = fadd double %38, %45
  %47 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %48 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %47, i32 0, i32 2
  %49 = load double, double* %48, align 8
  %50 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %51 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %50, i32 0, i32 2
  %52 = load double, double* %51, align 8
  %53 = fmul double %49, %52
  %54 = fadd double %46, %53
  store double %54, double* %7, align 8
  %55 = load double, double* %7, align 8
  %56 = fmul double -2.000000e+00, %55
  %57 = load double, double* %8, align 8
  %58 = fdiv double %56, %57
  store double %58, double* %7, align 8
  %59 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %60 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %59, i32 0, i32 0
  %61 = load double, double* %60, align 8
  %62 = load double, double* %7, align 8
  %63 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %64 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fmul double %62, %65
  %67 = fadd double %61, %66
  %68 = load %struct.VECTOR*, %struct.VECTOR** %4, align 8
  %69 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %68, i32 0, i32 0
  store double %67, double* %69, align 8
  %70 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %71 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %70, i32 0, i32 1
  %72 = load double, double* %71, align 8
  %73 = load double, double* %7, align 8
  %74 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %75 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %74, i32 0, i32 1
  %76 = load double, double* %75, align 8
  %77 = fmul double %73, %76
  %78 = fadd double %72, %77
  %79 = load %struct.VECTOR*, %struct.VECTOR** %4, align 8
  %80 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %79, i32 0, i32 1
  store double %78, double* %80, align 8
  %81 = load %struct.VECTOR*, %struct.VECTOR** %5, align 8
  %82 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %81, i32 0, i32 2
  %83 = load double, double* %82, align 8
  %84 = load double, double* %7, align 8
  %85 = load %struct.VECTOR*, %struct.VECTOR** %6, align 8
  %86 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %85, i32 0, i32 2
  %87 = load double, double* %86, align 8
  %88 = fmul double %84, %87
  %89 = fadd double %83, %88
  %90 = load %struct.VECTOR*, %struct.VECTOR** %4, align 8
  %91 = getelementptr inbounds %struct.VECTOR, %struct.VECTOR* %90, i32 0, i32 2
  store double %89, double* %91, align 8
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nounwind
declare dso_local double @atan(double) #4

; Function Attrs: noinline nounwind uwtable
define internal double @Jitter() #0 {
  %1 = load i64, i64* @rnd, align 8
  %2 = mul i64 1103515245, %1
  %3 = add i64 %2, 12345
  %4 = and i64 %3, 2147483647
  store i64 %4, i64* @rnd, align 8
  %5 = load i64, i64* @rnd, align 8
  %6 = uitofp i64 %5 to double
  %7 = fdiv double %6, 0x41CFFFFFFF800000
  %8 = fsub double 1.000000e+00, %7
  ret double %8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
