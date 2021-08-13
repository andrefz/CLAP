; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.problem = type { i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.image = type { i32, i32, i32, %struct.pixel* }
%struct.pixel = type { i8, i8, i8 }
%struct.sphere = type { float, float, float, float, %struct.vector, %struct.vector, %struct.vector }
%struct.vector = type { float, float, float }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"width > 0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"image.c\00", align 1
@__PRETTY_FUNCTION__.image_create = private unnamed_addr constant [49 x i8] c"image_t image_create(unsigned int, unsigned int)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"height > 0\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"img != NULL\00", align 1
@__PRETTY_FUNCTION__.image_destroy = private unnamed_addr constant [35 x i8] c"void image_destroy(struct image *)\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@__PRETTY_FUNCTION__.image_export = private unnamed_addr constant [62 x i8] c"void image_export(const char *, struct image *, unsigned int)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"cannot image_export()\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"unknown image file type\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"P6\0A%u %u\0A255\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@verbose = dso_local global i32 0, align 4
@nthreads = dso_local global i32 1, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"initializing...\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [20 x i8] c"rendering scene...\0A\00", align 1
@p = internal global %struct.problem* @tiny, align 8
@.str.2.12 = private unnamed_addr constant [20 x i8] c"timing statistics:\0A\00", align 1
@tiny = internal global %struct.problem { i32 1280, i32 720, i32 10 }, align 4
@.str.3.13 = private unnamed_addr constant [5 x i8] c"tiny\00", align 1
@.str.4.14 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@small = internal global %struct.problem { i32 1600, i32 900, i32 30 }, align 4
@.str.5.15 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@standard = internal global %struct.problem { i32 1920, i32 1080, i32 50 }, align 4
@.str.6.16 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@large = internal global %struct.problem { i32 2048, i32 1152, i32 70 }, align 4
@.str.7.17 = private unnamed_addr constant [5 x i8] c"huge\00", align 1
@huge = internal global %struct.problem { i32 2560, i32 1440, i32 90 }, align 4
@.str.8.18 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.9.19 = private unnamed_addr constant [11 x i8] c"--nthreads\00", align 1
@.str.10.20 = private unnamed_addr constant [8 x i8] c"--class\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Usage: rt [options]\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Brief: Ray Tracing Benchmark Kernel\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"  --help             Display this information and exit\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"  --class <name>     Set problem class:\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"                       - tiny\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"                       - small\0A\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"                       - standard\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"                       - large\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"                       - huge\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"  --verbose          Be verbose\0A\00", align 1
@max_depth = internal global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"s != NULL\00", align 1
@.str.1.26 = private unnamed_addr constant [9 x i8] c"sphere.c\00", align 1
@__PRETTY_FUNCTION__.sphere_center = private unnamed_addr constant [45 x i8] c"struct vector sphere_center(struct sphere *)\00", align 1
@.str.2.29 = private unnamed_addr constant [6 x i8] c"r > 0\00", align 1
@__PRETTY_FUNCTION__.sphere_create = private unnamed_addr constant [89 x i8] c"sphere_t sphere_create(struct vector, float, struct vector, float, float, struct vector)\00", align 1
@.str.3.30 = private unnamed_addr constant [7 x i8] c"t >= 0\00", align 1
@__PRETTY_FUNCTION__.sphere_destroy = private unnamed_addr constant [37 x i8] c"void sphere_destroy(struct sphere *)\00", align 1
@__PRETTY_FUNCTION__.sphere_intersects = private unnamed_addr constant [87 x i8] c"int sphere_intersects(struct sphere *, struct vector, struct vector, float *, float *)\00", align 1
@timer_error = internal global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.41 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.1.44 = private unnamed_addr constant [13 x i8] c"warning: %s\0A\00", align 1
@.str.2.47 = private unnamed_addr constant [16 x i8] c"cannot malloc()\00", align 1
@.str.3.48 = private unnamed_addr constant [16 x i8] c"cannot calloc()\00", align 1
@.str.4.49 = private unnamed_addr constant [17 x i8] c"cannot realloc()\00", align 1
@randum_w = internal global i32 521288629, align 4
@randum_z = internal global i32 362436069, align 4
@normalnum.call = internal global i32 0, align 4
@normalnum.X2 = internal global double 0.000000e+00, align 8
@normalnum.X1 = internal global double 0.000000e+00, align 8
@prngseed = internal global i64 0, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.image* @image_create(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.image*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ugt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %11

10:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.image_create, i64 0, i64 0)) #7
  unreachable

11:                                               ; preds = %9
  %12 = load i32, i32* %4, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %16

15:                                               ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.image_create, i64 0, i64 0)) #7
  unreachable

16:                                               ; preds = %14
  %17 = call i8* @smalloc(i64 24)
  %18 = bitcast i8* %17 to %struct.image*
  store %struct.image* %18, %struct.image** %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.image*, %struct.image** %5, align 8
  %24 = getelementptr inbounds %struct.image, %struct.image* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.image*, %struct.image** %5, align 8
  %27 = getelementptr inbounds %struct.image, %struct.image* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.image*, %struct.image** %5, align 8
  %30 = getelementptr inbounds %struct.image, %struct.image* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = mul i64 %32, 3
  %34 = call i8* @smalloc(i64 %33)
  %35 = bitcast i8* %34 to %struct.pixel*
  %36 = load %struct.image*, %struct.image** %5, align 8
  %37 = getelementptr inbounds %struct.image, %struct.image* %36, i32 0, i32 3
  store %struct.pixel* %35, %struct.pixel** %37, align 8
  %38 = load %struct.image*, %struct.image** %5, align 8
  ret %struct.image* %38
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @image_destroy(%struct.image* %0) #0 {
  %2 = alloca %struct.image*, align 8
  store %struct.image* %0, %struct.image** %2, align 8
  %3 = load %struct.image*, %struct.image** %2, align 8
  %4 = icmp ne %struct.image* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.image_destroy, i64 0, i64 0)) #7
  unreachable

7:                                                ; preds = %5
  %8 = load %struct.image*, %struct.image** %2, align 8
  %9 = getelementptr inbounds %struct.image, %struct.image* %8, i32 0, i32 3
  %10 = load %struct.pixel*, %struct.pixel** %9, align 8
  %11 = bitcast %struct.pixel* %10 to i8*
  call void @free(i8* %11) #8
  %12 = load %struct.image*, %struct.image** %2, align 8
  %13 = bitcast %struct.image* %12 to i8*
  call void @free(i8* %13) #8
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @image_export(i8* %0, %struct.image* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.image*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.image* %1, %struct.image** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.image_export, i64 0, i64 0)) #7
  unreachable

12:                                               ; preds = %10
  %13 = load %struct.image*, %struct.image** %5, align 8
  %14 = icmp ne %struct.image* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %17

16:                                               ; preds = %12
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 71, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.image_export, i64 0, i64 0)) #7
  unreachable

17:                                               ; preds = %15
  %18 = load i8*, i8** %4, align 8
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %7, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %21 = icmp eq %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  call void @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %28 [
    i32 0, label %25
  ]

25:                                               ; preds = %23
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %27 = load %struct.image*, %struct.image** %5, align 8
  call void @image_export_ppm(%struct._IO_FILE* %26, %struct.image* %27)
  br label %29

28:                                               ; preds = %23
  call void @warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %29

29:                                               ; preds = %28, %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %31 = call i32 @fclose(%struct._IO_FILE* %30)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal void @image_export_ppm(%struct._IO_FILE* %0, %struct.image* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.image*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.image* %1, %struct.image** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = load %struct.image*, %struct.image** %4, align 8
  %8 = getelementptr inbounds %struct.image, %struct.image* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.image*, %struct.image** %4, align 8
  %11 = getelementptr inbounds %struct.image, %struct.image* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %9, i32 %12)
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %50, %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.image*, %struct.image** %4, align 8
  %17 = getelementptr inbounds %struct.image, %struct.image* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %22 = load %struct.image*, %struct.image** %4, align 8
  %23 = getelementptr inbounds %struct.image, %struct.image* %22, i32 0, i32 3
  %24 = load %struct.pixel*, %struct.pixel** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.pixel, %struct.pixel* %24, i64 %26
  %28 = getelementptr inbounds %struct.pixel, %struct.pixel* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.image*, %struct.image** %4, align 8
  %32 = getelementptr inbounds %struct.image, %struct.image* %31, i32 0, i32 3
  %33 = load %struct.pixel*, %struct.pixel** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.pixel, %struct.pixel* %33, i64 %35
  %37 = getelementptr inbounds %struct.pixel, %struct.pixel* %36, i32 0, i32 1
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load %struct.image*, %struct.image** %4, align 8
  %41 = getelementptr inbounds %struct.image, %struct.image* %40, i32 0, i32 3
  %42 = load %struct.pixel*, %struct.pixel** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.pixel, %struct.pixel* %42, i64 %44
  %46 = getelementptr inbounds %struct.pixel, %struct.pixel* %45, i32 0, i32 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %30, i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %14

53:                                               ; preds = %14
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.image*, align 8
  %8 = alloca [6 x %struct.sphere*], align 16
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.vector, align 4
  %12 = alloca { <2 x float>, float }, align 8
  %13 = alloca %struct.vector, align 4
  %14 = alloca { <2 x float>, float }, align 8
  %15 = alloca %struct.vector, align 8
  %16 = alloca { <2 x float>, float }, align 8
  %17 = alloca { <2 x float>, float }, align 4
  %18 = alloca { <2 x float>, float }, align 4
  %19 = alloca %struct.vector, align 4
  %20 = alloca { <2 x float>, float }, align 8
  %21 = alloca %struct.vector, align 4
  %22 = alloca { <2 x float>, float }, align 8
  %23 = alloca %struct.vector, align 8
  %24 = alloca { <2 x float>, float }, align 8
  %25 = alloca { <2 x float>, float }, align 4
  %26 = alloca { <2 x float>, float }, align 4
  %27 = alloca %struct.vector, align 4
  %28 = alloca { <2 x float>, float }, align 8
  %29 = alloca %struct.vector, align 4
  %30 = alloca { <2 x float>, float }, align 8
  %31 = alloca %struct.vector, align 8
  %32 = alloca { <2 x float>, float }, align 8
  %33 = alloca { <2 x float>, float }, align 4
  %34 = alloca { <2 x float>, float }, align 4
  %35 = alloca %struct.vector, align 4
  %36 = alloca { <2 x float>, float }, align 8
  %37 = alloca %struct.vector, align 4
  %38 = alloca { <2 x float>, float }, align 8
  %39 = alloca %struct.vector, align 8
  %40 = alloca { <2 x float>, float }, align 8
  %41 = alloca { <2 x float>, float }, align 4
  %42 = alloca { <2 x float>, float }, align 4
  %43 = alloca %struct.vector, align 4
  %44 = alloca { <2 x float>, float }, align 8
  %45 = alloca %struct.vector, align 4
  %46 = alloca { <2 x float>, float }, align 8
  %47 = alloca %struct.vector, align 8
  %48 = alloca { <2 x float>, float }, align 8
  %49 = alloca { <2 x float>, float }, align 4
  %50 = alloca { <2 x float>, float }, align 4
  %51 = alloca %struct.vector, align 4
  %52 = alloca { <2 x float>, float }, align 8
  %53 = alloca %struct.vector, align 4
  %54 = alloca { <2 x float>, float }, align 8
  %55 = alloca %struct.vector, align 8
  %56 = alloca { <2 x float>, float }, align 8
  %57 = alloca { <2 x float>, float }, align 4
  %58 = alloca { <2 x float>, float }, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  call void @readargs(i32 %59, i8** %60)
  call void @timer_init()
  %61 = load i32, i32* @verbose, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %2
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %2
  %66 = call i64 @timer_get()
  store i64 %66, i64* %10, align 8
  %67 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float -1.000400e+04, float -2.000000e+01)
  store { <2 x float>, float } %67, { <2 x float>, float }* %12, align 8
  %68 = bitcast { <2 x float>, float }* %12 to i8*
  %69 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 8 %68, i64 12, i1 false)
  %70 = call { <2 x float>, float } @VECTOR(float 0x3FC99999A0000000, float 0x3FC99999A0000000, float 0x3FC99999A0000000)
  store { <2 x float>, float } %70, { <2 x float>, float }* %14, align 8
  %71 = bitcast { <2 x float>, float }* %14 to i8*
  %72 = bitcast %struct.vector* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 8 %71, i64 12, i1 false)
  %73 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %73, { <2 x float>, float }* %16, align 8
  %74 = bitcast { <2 x float>, float }* %16 to i8*
  %75 = bitcast %struct.vector* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 8 %74, i64 12, i1 false)
  %76 = bitcast { <2 x float>, float }* %17 to i8*
  %77 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 12, i1 false)
  %78 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %17, i32 0, i32 0
  %79 = load <2 x float>, <2 x float>* %78, align 4
  %80 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %17, i32 0, i32 1
  %81 = load float, float* %80, align 4
  %82 = bitcast { <2 x float>, float }* %18 to i8*
  %83 = bitcast %struct.vector* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 12, i1 false)
  %84 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %18, i32 0, i32 0
  %85 = load <2 x float>, <2 x float>* %84, align 4
  %86 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %18, i32 0, i32 1
  %87 = load float, float* %86, align 4
  %88 = call %struct.sphere* @sphere_create(<2 x float> %79, float %81, float 1.000000e+04, <2 x float> %85, float %87, float 0.000000e+00, float 0.000000e+00, %struct.vector* byval(%struct.vector) align 8 %15)
  %89 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 0
  store %struct.sphere* %88, %struct.sphere** %89, align 16
  %90 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float -2.000000e+01)
  store { <2 x float>, float } %90, { <2 x float>, float }* %20, align 8
  %91 = bitcast { <2 x float>, float }* %20 to i8*
  %92 = bitcast %struct.vector* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 8 %91, i64 12, i1 false)
  %93 = call { <2 x float>, float } @VECTOR(float 1.000000e+00, float 0x3FD47AE140000000, float 0x3FD70A3D80000000)
  store { <2 x float>, float } %93, { <2 x float>, float }* %22, align 8
  %94 = bitcast { <2 x float>, float }* %22 to i8*
  %95 = bitcast %struct.vector* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 8 %94, i64 12, i1 false)
  %96 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %96, { <2 x float>, float }* %24, align 8
  %97 = bitcast { <2 x float>, float }* %24 to i8*
  %98 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 8 %97, i64 12, i1 false)
  %99 = bitcast { <2 x float>, float }* %25 to i8*
  %100 = bitcast %struct.vector* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %25, i32 0, i32 0
  %102 = load <2 x float>, <2 x float>* %101, align 4
  %103 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %25, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = bitcast { <2 x float>, float }* %26 to i8*
  %106 = bitcast %struct.vector* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 12, i1 false)
  %107 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 0
  %108 = load <2 x float>, <2 x float>* %107, align 4
  %109 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 1
  %110 = load float, float* %109, align 4
  %111 = call %struct.sphere* @sphere_create(<2 x float> %102, float %104, float 4.000000e+00, <2 x float> %108, float %110, float 1.000000e+00, float 5.000000e-01, %struct.vector* byval(%struct.vector) align 8 %23)
  %112 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 1
  store %struct.sphere* %111, %struct.sphere** %112, align 8
  %113 = call { <2 x float>, float } @VECTOR(float 5.000000e+00, float -1.000000e+00, float -1.500000e+01)
  store { <2 x float>, float } %113, { <2 x float>, float }* %28, align 8
  %114 = bitcast { <2 x float>, float }* %28 to i8*
  %115 = bitcast %struct.vector* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 8 %114, i64 12, i1 false)
  %116 = call { <2 x float>, float } @VECTOR(float 0x3FECCCCCC0000000, float 0x3FE851EB80000000, float 0x3FDD70A3E0000000)
  store { <2 x float>, float } %116, { <2 x float>, float }* %30, align 8
  %117 = bitcast { <2 x float>, float }* %30 to i8*
  %118 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 8 %117, i64 12, i1 false)
  %119 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %119, { <2 x float>, float }* %32, align 8
  %120 = bitcast { <2 x float>, float }* %32 to i8*
  %121 = bitcast %struct.vector* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 8 %120, i64 12, i1 false)
  %122 = bitcast { <2 x float>, float }* %33 to i8*
  %123 = bitcast %struct.vector* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 12, i1 false)
  %124 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %33, i32 0, i32 0
  %125 = load <2 x float>, <2 x float>* %124, align 4
  %126 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %33, i32 0, i32 1
  %127 = load float, float* %126, align 4
  %128 = bitcast { <2 x float>, float }* %34 to i8*
  %129 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %128, i8* align 4 %129, i64 12, i1 false)
  %130 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %34, i32 0, i32 0
  %131 = load <2 x float>, <2 x float>* %130, align 4
  %132 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %34, i32 0, i32 1
  %133 = load float, float* %132, align 4
  %134 = call %struct.sphere* @sphere_create(<2 x float> %125, float %127, float 2.000000e+00, <2 x float> %131, float %133, float 1.000000e+00, float 0.000000e+00, %struct.vector* byval(%struct.vector) align 8 %31)
  %135 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 2
  store %struct.sphere* %134, %struct.sphere** %135, align 16
  %136 = call { <2 x float>, float } @VECTOR(float 5.000000e+00, float 0.000000e+00, float -2.500000e+01)
  store { <2 x float>, float } %136, { <2 x float>, float }* %36, align 8
  %137 = bitcast { <2 x float>, float }* %36 to i8*
  %138 = bitcast %struct.vector* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %138, i8* align 8 %137, i64 12, i1 false)
  %139 = call { <2 x float>, float } @VECTOR(float 0x3FE4CCCCC0000000, float 0x3FE8A3D700000000, float 0x3FEF0A3D80000000)
  store { <2 x float>, float } %139, { <2 x float>, float }* %38, align 8
  %140 = bitcast { <2 x float>, float }* %38 to i8*
  %141 = bitcast %struct.vector* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 8 %140, i64 12, i1 false)
  %142 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %142, { <2 x float>, float }* %40, align 8
  %143 = bitcast { <2 x float>, float }* %40 to i8*
  %144 = bitcast %struct.vector* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 8 %143, i64 12, i1 false)
  %145 = bitcast { <2 x float>, float }* %41 to i8*
  %146 = bitcast %struct.vector* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 4 %146, i64 12, i1 false)
  %147 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %41, i32 0, i32 0
  %148 = load <2 x float>, <2 x float>* %147, align 4
  %149 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %41, i32 0, i32 1
  %150 = load float, float* %149, align 4
  %151 = bitcast { <2 x float>, float }* %42 to i8*
  %152 = bitcast %struct.vector* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %151, i8* align 4 %152, i64 12, i1 false)
  %153 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %42, i32 0, i32 0
  %154 = load <2 x float>, <2 x float>* %153, align 4
  %155 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %42, i32 0, i32 1
  %156 = load float, float* %155, align 4
  %157 = call %struct.sphere* @sphere_create(<2 x float> %148, float %150, float 3.000000e+00, <2 x float> %154, float %156, float 1.000000e+00, float 0.000000e+00, %struct.vector* byval(%struct.vector) align 8 %39)
  %158 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 3
  store %struct.sphere* %157, %struct.sphere** %158, align 8
  %159 = call { <2 x float>, float } @VECTOR(float -5.500000e+00, float 0.000000e+00, float -1.500000e+01)
  store { <2 x float>, float } %159, { <2 x float>, float }* %44, align 8
  %160 = bitcast { <2 x float>, float }* %44 to i8*
  %161 = bitcast %struct.vector* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 8 %160, i64 12, i1 false)
  %162 = call { <2 x float>, float } @VECTOR(float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000, float 0x3FECCCCCC0000000)
  store { <2 x float>, float } %162, { <2 x float>, float }* %46, align 8
  %163 = bitcast { <2 x float>, float }* %46 to i8*
  %164 = bitcast %struct.vector* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %164, i8* align 8 %163, i64 12, i1 false)
  %165 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %165, { <2 x float>, float }* %48, align 8
  %166 = bitcast { <2 x float>, float }* %48 to i8*
  %167 = bitcast %struct.vector* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 8 %166, i64 12, i1 false)
  %168 = bitcast { <2 x float>, float }* %49 to i8*
  %169 = bitcast %struct.vector* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 12, i1 false)
  %170 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %49, i32 0, i32 0
  %171 = load <2 x float>, <2 x float>* %170, align 4
  %172 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %49, i32 0, i32 1
  %173 = load float, float* %172, align 4
  %174 = bitcast { <2 x float>, float }* %50 to i8*
  %175 = bitcast %struct.vector* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %174, i8* align 4 %175, i64 12, i1 false)
  %176 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %50, i32 0, i32 0
  %177 = load <2 x float>, <2 x float>* %176, align 4
  %178 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %50, i32 0, i32 1
  %179 = load float, float* %178, align 4
  %180 = call %struct.sphere* @sphere_create(<2 x float> %171, float %173, float 3.000000e+00, <2 x float> %177, float %179, float 1.000000e+00, float 0.000000e+00, %struct.vector* byval(%struct.vector) align 8 %47)
  %181 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 4
  store %struct.sphere* %180, %struct.sphere** %181, align 16
  %182 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 3.000000e+01, float -3.000000e+01)
  store { <2 x float>, float } %182, { <2 x float>, float }* %52, align 8
  %183 = bitcast { <2 x float>, float }* %52 to i8*
  %184 = bitcast %struct.vector* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %184, i8* align 8 %183, i64 12, i1 false)
  %185 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %185, { <2 x float>, float }* %54, align 8
  %186 = bitcast { <2 x float>, float }* %54 to i8*
  %187 = bitcast %struct.vector* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %187, i8* align 8 %186, i64 12, i1 false)
  %188 = call { <2 x float>, float } @VECTOR(float 3.000000e+00, float 3.000000e+00, float 3.000000e+00)
  store { <2 x float>, float } %188, { <2 x float>, float }* %56, align 8
  %189 = bitcast { <2 x float>, float }* %56 to i8*
  %190 = bitcast %struct.vector* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %190, i8* align 8 %189, i64 12, i1 false)
  %191 = bitcast { <2 x float>, float }* %57 to i8*
  %192 = bitcast %struct.vector* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 4 %192, i64 12, i1 false)
  %193 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %57, i32 0, i32 0
  %194 = load <2 x float>, <2 x float>* %193, align 4
  %195 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %57, i32 0, i32 1
  %196 = load float, float* %195, align 4
  %197 = bitcast { <2 x float>, float }* %58 to i8*
  %198 = bitcast %struct.vector* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 12, i1 false)
  %199 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %58, i32 0, i32 0
  %200 = load <2 x float>, <2 x float>* %199, align 4
  %201 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %58, i32 0, i32 1
  %202 = load float, float* %201, align 4
  %203 = call %struct.sphere* @sphere_create(<2 x float> %194, float %196, float 3.000000e+00, <2 x float> %200, float %202, float 0.000000e+00, float 0.000000e+00, %struct.vector* byval(%struct.vector) align 8 %55)
  %204 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 5
  store %struct.sphere* %203, %struct.sphere** %204, align 8
  %205 = call i64 @timer_get()
  store i64 %205, i64* %9, align 8
  %206 = load i32, i32* @verbose, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %65
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1.11, i64 0, i64 0))
  br label %210

210:                                              ; preds = %208, %65
  %211 = call i64 @timer_get()
  store i64 %211, i64* %10, align 8
  %212 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 0
  %213 = load %struct.problem*, %struct.problem** @p, align 8
  %214 = getelementptr inbounds %struct.problem, %struct.problem* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.problem*, %struct.problem** @p, align 8
  %217 = getelementptr inbounds %struct.problem, %struct.problem* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.problem*, %struct.problem** @p, align 8
  %220 = getelementptr inbounds %struct.problem, %struct.problem* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call %struct.image* @render(%struct.sphere** %212, i32 6, i32 %215, i32 %218, i32 %221)
  store %struct.image* %222, %struct.image** %7, align 8
  %223 = call i64 @timer_get()
  store i64 %223, i64* %9, align 8
  %224 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.12, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %225

225:                                              ; preds = %233, %210
  %226 = load i32, i32* %6, align 4
  %227 = icmp slt i32 %226, 6
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [6 x %struct.sphere*], [6 x %struct.sphere*]* %8, i64 0, i64 %230
  %232 = load %struct.sphere*, %struct.sphere** %231, align 8
  call void @sphere_destroy(%struct.sphere* %232)
  br label %233

233:                                              ; preds = %228
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %225

236:                                              ; preds = %225
  %237 = load %struct.image*, %struct.image** %7, align 8
  call void @image_destroy(%struct.image* %237)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @readargs(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %5, align 4
  br label %8

8:                                                ; preds = %94, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %97

12:                                               ; preds = %8
  %13 = load i8**, i8*** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8*, i8** %13, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %12
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %73 [
    i32 2, label %22
  ]

22:                                               ; preds = %20
  %23 = load i8**, i8*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8*, i8** %23, i64 %25
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.13, i64 0, i64 0)) #9
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store %struct.problem* @tiny, %struct.problem** @p, align 8
  br label %72

31:                                               ; preds = %22
  %32 = load i8**, i8*** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.14, i64 0, i64 0)) #9
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  store %struct.problem* @small, %struct.problem** @p, align 8
  br label %71

40:                                               ; preds = %31
  %41 = load i8**, i8*** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.15, i64 0, i64 0)) #9
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  store %struct.problem* @standard, %struct.problem** @p, align 8
  br label %70

49:                                               ; preds = %40
  %50 = load i8**, i8*** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6.16, i64 0, i64 0)) #9
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  store %struct.problem* @large, %struct.problem** @p, align 8
  br label %69

58:                                               ; preds = %49
  %59 = load i8**, i8*** %4, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.17, i64 0, i64 0)) #9
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  store %struct.problem* @huge, %struct.problem** @p, align 8
  br label %68

67:                                               ; preds = %58
  call void @usage()
  br label %68

68:                                               ; preds = %67, %66
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69, %48
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71, %30
  store i32 0, i32* %7, align 4
  br label %74

73:                                               ; preds = %20
  call void @usage()
  br label %74

74:                                               ; preds = %73, %72
  br label %94

75:                                               ; preds = %12
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8.18, i64 0, i64 0)) #9
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 1, i32* @verbose, align 4
  br label %93

80:                                               ; preds = %75
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.19, i64 0, i64 0)) #9
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 1, i32* %7, align 4
  br label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = call i32 @strcmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.20, i64 0, i64 0)) #9
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 2, i32* %7, align 4
  br label %91

90:                                               ; preds = %85
  call void @usage()
  br label %91

91:                                               ; preds = %90, %89
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %79
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %8

97:                                               ; preds = %8
  %98 = load i32, i32* @nthreads, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  call void @usage()
  br label %101

101:                                              ; preds = %100, %97
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal void @usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @raytrace(<2 x float> %0, float %1, <2 x float> %2, float %3, %struct.sphere** %4, i32 %5, i32 %6) #4 {
  %8 = alloca %struct.vector, align 4
  %9 = alloca %struct.vector, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca %struct.vector, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca %struct.sphere**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.sphere*, align 8
  %22 = alloca %struct.vector, align 4
  %23 = alloca %struct.vector, align 4
  %24 = alloca %struct.vector, align 4
  %25 = alloca %struct.vector, align 4
  %26 = alloca %struct.vector, align 4
  %27 = alloca %struct.vector, align 4
  %28 = alloca %struct.vector, align 4
  %29 = alloca %struct.vector, align 4
  %30 = alloca %struct.vector, align 4
  %31 = alloca %struct.vector, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca { <2 x float>, float }, align 4
  %41 = alloca { <2 x float>, float }, align 4
  %42 = alloca { <2 x float>, float }, align 8
  %43 = alloca %struct.vector, align 4
  %44 = alloca { <2 x float>, float }, align 8
  %45 = alloca %struct.vector, align 4
  %46 = alloca { <2 x float>, float }, align 4
  %47 = alloca { <2 x float>, float }, align 8
  %48 = alloca %struct.vector, align 4
  %49 = alloca { <2 x float>, float }, align 4
  %50 = alloca { <2 x float>, float }, align 4
  %51 = alloca { <2 x float>, float }, align 8
  %52 = alloca %struct.vector, align 4
  %53 = alloca %struct.vector, align 4
  %54 = alloca { <2 x float>, float }, align 8
  %55 = alloca { <2 x float>, float }, align 4
  %56 = alloca { <2 x float>, float }, align 4
  %57 = alloca { <2 x float>, float }, align 8
  %58 = alloca %struct.vector, align 4
  %59 = alloca { <2 x float>, float }, align 4
  %60 = alloca { <2 x float>, float }, align 8
  %61 = alloca { <2 x float>, float }, align 4
  %62 = alloca { <2 x float>, float }, align 4
  %63 = alloca %struct.vector, align 4
  %64 = alloca { <2 x float>, float }, align 4
  %65 = alloca { <2 x float>, float }, align 8
  %66 = alloca %struct.vector, align 4
  %67 = alloca { <2 x float>, float }, align 4
  %68 = alloca { <2 x float>, float }, align 8
  %69 = alloca %struct.vector, align 4
  %70 = alloca { <2 x float>, float }, align 4
  %71 = alloca { <2 x float>, float }, align 4
  %72 = alloca { <2 x float>, float }, align 8
  %73 = alloca { <2 x float>, float }, align 4
  %74 = alloca { <2 x float>, float }, align 4
  %75 = alloca %struct.vector, align 4
  %76 = alloca { <2 x float>, float }, align 4
  %77 = alloca { <2 x float>, float }, align 4
  %78 = alloca { <2 x float>, float }, align 4
  %79 = alloca { <2 x float>, float }, align 8
  %80 = alloca %struct.vector, align 4
  %81 = alloca { <2 x float>, float }, align 4
  %82 = alloca { <2 x float>, float }, align 4
  %83 = alloca { <2 x float>, float }, align 8
  %84 = alloca %struct.vector, align 4
  %85 = alloca { <2 x float>, float }, align 4
  %86 = alloca { <2 x float>, float }, align 8
  %87 = alloca %struct.vector, align 4
  %88 = alloca { <2 x float>, float }, align 4
  %89 = alloca { <2 x float>, float }, align 4
  %90 = alloca { <2 x float>, float }, align 8
  %91 = alloca %struct.vector, align 4
  %92 = alloca { <2 x float>, float }, align 8
  %93 = alloca { <2 x float>, float }, align 4
  %94 = alloca { <2 x float>, float }, align 4
  %95 = alloca %struct.vector, align 4
  %96 = alloca { <2 x float>, float }, align 4
  %97 = alloca { <2 x float>, float }, align 8
  %98 = alloca %struct.vector, align 4
  %99 = alloca { <2 x float>, float }, align 4
  %100 = alloca { <2 x float>, float }, align 8
  %101 = alloca %struct.vector, align 4
  %102 = alloca { <2 x float>, float }, align 4
  %103 = alloca { <2 x float>, float }, align 4
  %104 = alloca { <2 x float>, float }, align 8
  %105 = alloca %struct.vector, align 4
  %106 = alloca { <2 x float>, float }, align 4
  %107 = alloca { <2 x float>, float }, align 8
  %108 = alloca %struct.vector, align 4
  %109 = alloca { <2 x float>, float }, align 4
  %110 = alloca { <2 x float>, float }, align 8
  %111 = alloca %struct.vector, align 4
  %112 = alloca { <2 x float>, float }, align 4
  %113 = alloca { <2 x float>, float }, align 4
  %114 = alloca { <2 x float>, float }, align 8
  %115 = alloca %struct.vector, align 4
  %116 = alloca { <2 x float>, float }, align 4
  %117 = alloca { <2 x float>, float }, align 4
  %118 = alloca { <2 x float>, float }, align 8
  %119 = alloca %struct.vector, align 4
  %120 = alloca { <2 x float>, float }, align 4
  %121 = alloca { <2 x float>, float }, align 8
  %122 = alloca %struct.vector, align 4
  %123 = alloca { <2 x float>, float }, align 4
  %124 = alloca { <2 x float>, float }, align 8
  %125 = alloca %struct.vector, align 4
  %126 = alloca { <2 x float>, float }, align 4
  %127 = alloca { <2 x float>, float }, align 4
  %128 = alloca { <2 x float>, float }, align 8
  %129 = alloca %struct.vector, align 4
  %130 = alloca { <2 x float>, float }, align 4
  %131 = alloca { <2 x float>, float }, align 4
  %132 = alloca { <2 x float>, float }, align 8
  %133 = alloca %struct.vector, align 4
  %134 = alloca { <2 x float>, float }, align 4
  %135 = alloca { <2 x float>, float }, align 4
  %136 = alloca { <2 x float>, float }, align 8
  %137 = alloca %struct.vector, align 4
  %138 = alloca { <2 x float>, float }, align 4
  %139 = alloca { <2 x float>, float }, align 8
  %140 = alloca { <2 x float>, float }, align 4
  %141 = alloca { <2 x float>, float }, align 4
  %142 = alloca %struct.vector, align 4
  %143 = alloca { <2 x float>, float }, align 4
  %144 = alloca { <2 x float>, float }, align 4
  %145 = alloca { <2 x float>, float }, align 4
  %146 = alloca { <2 x float>, float }, align 8
  %147 = alloca %struct.vector, align 4
  %148 = alloca { <2 x float>, float }, align 4
  %149 = alloca { <2 x float>, float }, align 4
  %150 = alloca { <2 x float>, float }, align 8
  %151 = alloca %struct.vector, align 4
  %152 = alloca { <2 x float>, float }, align 4
  %153 = alloca { <2 x float>, float }, align 4
  %154 = alloca { <2 x float>, float }, align 8
  %155 = alloca { <2 x float>, float }, align 4
  %156 = alloca { <2 x float>, float }, align 4
  %157 = alloca { <2 x float>, float }, align 8
  %158 = alloca { <2 x float>, float }, align 8
  %159 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %159, align 4
  %160 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 1
  store float %1, float* %160, align 4
  %161 = bitcast %struct.vector* %9 to i8*
  %162 = bitcast { <2 x float>, float }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %161, i8* align 4 %162, i64 12, i1 false)
  %163 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %163, align 4
  %164 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  store float %3, float* %164, align 4
  %165 = bitcast %struct.vector* %11 to i8*
  %166 = bitcast { <2 x float>, float }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 12, i1 false)
  store %struct.sphere** %4, %struct.sphere*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float 0x47EFFFFFE0000000, float* %19, align 4
  store float 0x47EFFFFFE0000000, float* %20, align 4
  store float 0x47EFFFFFE0000000, float* %32, align 4
  store %struct.sphere* null, %struct.sphere** %21, align 8
  store i32 0, i32* %17, align 4
  br label %167

167:                                              ; preds = %209, %7
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %14, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %212

171:                                              ; preds = %167
  %172 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.sphere*, %struct.sphere** %172, i64 %174
  %176 = load %struct.sphere*, %struct.sphere** %175, align 8
  %177 = bitcast { <2 x float>, float }* %40 to i8*
  %178 = bitcast %struct.vector* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %177, i8* align 4 %178, i64 12, i1 false)
  %179 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %40, i32 0, i32 0
  %180 = load <2 x float>, <2 x float>* %179, align 4
  %181 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %40, i32 0, i32 1
  %182 = load float, float* %181, align 4
  %183 = bitcast { <2 x float>, float }* %41 to i8*
  %184 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 12, i1 false)
  %185 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %41, i32 0, i32 0
  %186 = load <2 x float>, <2 x float>* %185, align 4
  %187 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %41, i32 0, i32 1
  %188 = load float, float* %187, align 4
  %189 = call i32 @sphere_intersects(%struct.sphere* %176, <2 x float> %180, float %182, <2 x float> %186, float %188, float* %19, float* %20)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %171
  %192 = load float, float* %19, align 4
  %193 = fcmp olt float %192, 0.000000e+00
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load float, float* %20, align 4
  store float %195, float* %19, align 4
  br label %196

196:                                              ; preds = %194, %191
  %197 = load float, float* %19, align 4
  %198 = load float, float* %32, align 4
  %199 = fcmp olt float %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load float, float* %19, align 4
  store float %201, float* %32, align 4
  %202 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.sphere*, %struct.sphere** %202, i64 %204
  %206 = load %struct.sphere*, %struct.sphere** %205, align 8
  store %struct.sphere* %206, %struct.sphere** %21, align 8
  br label %207

207:                                              ; preds = %200, %196
  br label %208

208:                                              ; preds = %207, %171
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %17, align 4
  br label %167

212:                                              ; preds = %167
  %213 = load %struct.sphere*, %struct.sphere** %21, align 8
  %214 = icmp eq %struct.sphere* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %212
  %216 = call { <2 x float>, float } @VECTOR(float 2.000000e+00, float 2.000000e+00, float 2.000000e+00)
  store { <2 x float>, float } %216, { <2 x float>, float }* %42, align 8
  %217 = bitcast { <2 x float>, float }* %42 to i8*
  %218 = bitcast %struct.vector* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %218, i8* align 8 %217, i64 12, i1 false)
  br label %845

219:                                              ; preds = %212
  %220 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %220, { <2 x float>, float }* %44, align 8
  %221 = bitcast { <2 x float>, float }* %44 to i8*
  %222 = bitcast %struct.vector* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %222, i8* align 8 %221, i64 12, i1 false)
  %223 = bitcast %struct.vector* %22 to i8*
  %224 = bitcast %struct.vector* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 4 %224, i64 12, i1 false)
  %225 = load float, float* %32, align 4
  %226 = bitcast { <2 x float>, float }* %46 to i8*
  %227 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 4 %227, i64 12, i1 false)
  %228 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %46, i32 0, i32 0
  %229 = load <2 x float>, <2 x float>* %228, align 4
  %230 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %46, i32 0, i32 1
  %231 = load float, float* %230, align 4
  %232 = call { <2 x float>, float } @vector_scalar(<2 x float> %229, float %231, float %225)
  store { <2 x float>, float } %232, { <2 x float>, float }* %47, align 8
  %233 = bitcast { <2 x float>, float }* %47 to i8*
  %234 = bitcast %struct.vector* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %234, i8* align 8 %233, i64 12, i1 false)
  %235 = bitcast %struct.vector* %23 to i8*
  %236 = bitcast %struct.vector* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %235, i8* align 4 %236, i64 12, i1 false)
  %237 = bitcast { <2 x float>, float }* %49 to i8*
  %238 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %237, i8* align 4 %238, i64 12, i1 false)
  %239 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %49, i32 0, i32 0
  %240 = load <2 x float>, <2 x float>* %239, align 4
  %241 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %49, i32 0, i32 1
  %242 = load float, float* %241, align 4
  %243 = bitcast { <2 x float>, float }* %50 to i8*
  %244 = bitcast %struct.vector* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %243, i8* align 4 %244, i64 12, i1 false)
  %245 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %50, i32 0, i32 0
  %246 = load <2 x float>, <2 x float>* %245, align 4
  %247 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %50, i32 0, i32 1
  %248 = load float, float* %247, align 4
  %249 = call { <2 x float>, float } @vector_add(<2 x float> %240, float %242, <2 x float> %246, float %248)
  store { <2 x float>, float } %249, { <2 x float>, float }* %51, align 8
  %250 = bitcast { <2 x float>, float }* %51 to i8*
  %251 = bitcast %struct.vector* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %251, i8* align 8 %250, i64 12, i1 false)
  %252 = bitcast %struct.vector* %23 to i8*
  %253 = bitcast %struct.vector* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 12, i1 false)
  %254 = load %struct.sphere*, %struct.sphere** %21, align 8
  %255 = call { <2 x float>, float } @sphere_center(%struct.sphere* %254)
  store { <2 x float>, float } %255, { <2 x float>, float }* %54, align 8
  %256 = bitcast { <2 x float>, float }* %54 to i8*
  %257 = bitcast %struct.vector* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %257, i8* align 8 %256, i64 12, i1 false)
  %258 = bitcast { <2 x float>, float }* %55 to i8*
  %259 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %258, i8* align 4 %259, i64 12, i1 false)
  %260 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %55, i32 0, i32 0
  %261 = load <2 x float>, <2 x float>* %260, align 4
  %262 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %55, i32 0, i32 1
  %263 = load float, float* %262, align 4
  %264 = bitcast { <2 x float>, float }* %56 to i8*
  %265 = bitcast %struct.vector* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %264, i8* align 4 %265, i64 12, i1 false)
  %266 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %56, i32 0, i32 0
  %267 = load <2 x float>, <2 x float>* %266, align 4
  %268 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %56, i32 0, i32 1
  %269 = load float, float* %268, align 4
  %270 = call { <2 x float>, float } @vector_sub(<2 x float> %261, float %263, <2 x float> %267, float %269)
  store { <2 x float>, float } %270, { <2 x float>, float }* %57, align 8
  %271 = bitcast { <2 x float>, float }* %57 to i8*
  %272 = bitcast %struct.vector* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %272, i8* align 8 %271, i64 12, i1 false)
  %273 = bitcast %struct.vector* %24 to i8*
  %274 = bitcast %struct.vector* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %273, i8* align 4 %274, i64 12, i1 false)
  %275 = bitcast { <2 x float>, float }* %59 to i8*
  %276 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %275, i8* align 4 %276, i64 12, i1 false)
  %277 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %59, i32 0, i32 0
  %278 = load <2 x float>, <2 x float>* %277, align 4
  %279 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %59, i32 0, i32 1
  %280 = load float, float* %279, align 4
  %281 = call { <2 x float>, float } @vector_normalize(<2 x float> %278, float %280)
  store { <2 x float>, float } %281, { <2 x float>, float }* %60, align 8
  %282 = bitcast { <2 x float>, float }* %60 to i8*
  %283 = bitcast %struct.vector* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %283, i8* align 8 %282, i64 12, i1 false)
  %284 = bitcast %struct.vector* %24 to i8*
  %285 = bitcast %struct.vector* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %284, i8* align 4 %285, i64 12, i1 false)
  store i32 0, i32* %16, align 4
  %286 = bitcast { <2 x float>, float }* %61 to i8*
  %287 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %286, i8* align 4 %287, i64 12, i1 false)
  %288 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %61, i32 0, i32 0
  %289 = load <2 x float>, <2 x float>* %288, align 4
  %290 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %61, i32 0, i32 1
  %291 = load float, float* %290, align 4
  %292 = bitcast { <2 x float>, float }* %62 to i8*
  %293 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %292, i8* align 4 %293, i64 12, i1 false)
  %294 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %62, i32 0, i32 0
  %295 = load <2 x float>, <2 x float>* %294, align 4
  %296 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %62, i32 0, i32 1
  %297 = load float, float* %296, align 4
  %298 = call float @vector_dot(<2 x float> %289, float %291, <2 x float> %295, float %297)
  %299 = fcmp ogt float %298, 0.000000e+00
  br i1 %299, label %300, label %312

300:                                              ; preds = %219
  %301 = bitcast { <2 x float>, float }* %64 to i8*
  %302 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %301, i8* align 4 %302, i64 12, i1 false)
  %303 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %64, i32 0, i32 0
  %304 = load <2 x float>, <2 x float>* %303, align 4
  %305 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %64, i32 0, i32 1
  %306 = load float, float* %305, align 4
  %307 = call { <2 x float>, float } @vector_invert(<2 x float> %304, float %306)
  store { <2 x float>, float } %307, { <2 x float>, float }* %65, align 8
  %308 = bitcast { <2 x float>, float }* %65 to i8*
  %309 = bitcast %struct.vector* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %309, i8* align 8 %308, i64 12, i1 false)
  %310 = bitcast %struct.vector* %24 to i8*
  %311 = bitcast %struct.vector* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %310, i8* align 4 %311, i64 12, i1 false)
  store i32 1, i32* %16, align 4
  br label %312

312:                                              ; preds = %300, %219
  %313 = bitcast { <2 x float>, float }* %67 to i8*
  %314 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %313, i8* align 4 %314, i64 12, i1 false)
  %315 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %67, i32 0, i32 0
  %316 = load <2 x float>, <2 x float>* %315, align 4
  %317 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %67, i32 0, i32 1
  %318 = load float, float* %317, align 4
  %319 = call { <2 x float>, float } @vector_scalar(<2 x float> %316, float %318, float 0x3F50624DE0000000)
  store { <2 x float>, float } %319, { <2 x float>, float }* %68, align 8
  %320 = bitcast { <2 x float>, float }* %68 to i8*
  %321 = bitcast %struct.vector* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %321, i8* align 8 %320, i64 12, i1 false)
  %322 = bitcast %struct.vector* %29 to i8*
  %323 = bitcast %struct.vector* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %322, i8* align 4 %323, i64 12, i1 false)
  %324 = bitcast { <2 x float>, float }* %70 to i8*
  %325 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %324, i8* align 4 %325, i64 12, i1 false)
  %326 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %70, i32 0, i32 0
  %327 = load <2 x float>, <2 x float>* %326, align 4
  %328 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %70, i32 0, i32 1
  %329 = load float, float* %328, align 4
  %330 = bitcast { <2 x float>, float }* %71 to i8*
  %331 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %330, i8* align 4 %331, i64 12, i1 false)
  %332 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %71, i32 0, i32 0
  %333 = load <2 x float>, <2 x float>* %332, align 4
  %334 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %71, i32 0, i32 1
  %335 = load float, float* %334, align 4
  %336 = call { <2 x float>, float } @vector_add(<2 x float> %327, float %329, <2 x float> %333, float %335)
  store { <2 x float>, float } %336, { <2 x float>, float }* %72, align 8
  %337 = bitcast { <2 x float>, float }* %72 to i8*
  %338 = bitcast %struct.vector* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %338, i8* align 8 %337, i64 12, i1 false)
  %339 = bitcast %struct.vector* %29 to i8*
  %340 = bitcast %struct.vector* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %339, i8* align 4 %340, i64 12, i1 false)
  %341 = load %struct.sphere*, %struct.sphere** %21, align 8
  %342 = getelementptr inbounds %struct.sphere, %struct.sphere* %341, i32 0, i32 2
  %343 = load float, float* %342, align 4
  %344 = fcmp ogt float %343, 0.000000e+00
  br i1 %344, label %350, label %345

345:                                              ; preds = %312
  %346 = load %struct.sphere*, %struct.sphere** %21, align 8
  %347 = getelementptr inbounds %struct.sphere, %struct.sphere* %346, i32 0, i32 3
  %348 = load float, float* %347, align 4
  %349 = fcmp ogt float %348, 0.000000e+00
  br i1 %349, label %350, label %666

350:                                              ; preds = %345, %312
  %351 = load i32, i32* %15, align 4
  %352 = load i32, i32* @max_depth, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %666

354:                                              ; preds = %350
  %355 = bitcast { <2 x float>, float }* %73 to i8*
  %356 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %355, i8* align 4 %356, i64 12, i1 false)
  %357 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %73, i32 0, i32 0
  %358 = load <2 x float>, <2 x float>* %357, align 4
  %359 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %73, i32 0, i32 1
  %360 = load float, float* %359, align 4
  %361 = bitcast { <2 x float>, float }* %74 to i8*
  %362 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %361, i8* align 4 %362, i64 12, i1 false)
  %363 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %74, i32 0, i32 0
  %364 = load <2 x float>, <2 x float>* %363, align 4
  %365 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %74, i32 0, i32 1
  %366 = load float, float* %365, align 4
  %367 = call float @vector_dot(<2 x float> %358, float %360, <2 x float> %364, float %366)
  %368 = fneg float %367
  store float %368, float* %33, align 4
  %369 = load float, float* %33, align 4
  %370 = fsub float 1.000000e+00, %369
  %371 = fpext float %370 to double
  %372 = call double @pow(double %371, double 3.000000e+00) #8
  %373 = fptrunc double %372 to float
  %374 = call float @mix(float %373, float 1.000000e+00, float 0x3FB99999A0000000)
  store float %374, float* %34, align 4
  %375 = bitcast { <2 x float>, float }* %76 to i8*
  %376 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %375, i8* align 4 %376, i64 12, i1 false)
  %377 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %76, i32 0, i32 0
  %378 = load <2 x float>, <2 x float>* %377, align 4
  %379 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %76, i32 0, i32 1
  %380 = load float, float* %379, align 4
  %381 = bitcast { <2 x float>, float }* %77 to i8*
  %382 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %381, i8* align 4 %382, i64 12, i1 false)
  %383 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %77, i32 0, i32 0
  %384 = load <2 x float>, <2 x float>* %383, align 4
  %385 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %77, i32 0, i32 1
  %386 = load float, float* %385, align 4
  %387 = call float @vector_dot(<2 x float> %378, float %380, <2 x float> %384, float %386)
  %388 = fmul float 2.000000e+00, %387
  %389 = bitcast { <2 x float>, float }* %78 to i8*
  %390 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %389, i8* align 4 %390, i64 12, i1 false)
  %391 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %78, i32 0, i32 0
  %392 = load <2 x float>, <2 x float>* %391, align 4
  %393 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %78, i32 0, i32 1
  %394 = load float, float* %393, align 4
  %395 = call { <2 x float>, float } @vector_scalar(<2 x float> %392, float %394, float %388)
  store { <2 x float>, float } %395, { <2 x float>, float }* %79, align 8
  %396 = bitcast { <2 x float>, float }* %79 to i8*
  %397 = bitcast %struct.vector* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %397, i8* align 8 %396, i64 12, i1 false)
  %398 = bitcast %struct.vector* %28 to i8*
  %399 = bitcast %struct.vector* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %398, i8* align 4 %399, i64 12, i1 false)
  %400 = bitcast { <2 x float>, float }* %81 to i8*
  %401 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %400, i8* align 4 %401, i64 12, i1 false)
  %402 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %81, i32 0, i32 0
  %403 = load <2 x float>, <2 x float>* %402, align 4
  %404 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %81, i32 0, i32 1
  %405 = load float, float* %404, align 4
  %406 = bitcast { <2 x float>, float }* %82 to i8*
  %407 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %406, i8* align 4 %407, i64 12, i1 false)
  %408 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %82, i32 0, i32 0
  %409 = load <2 x float>, <2 x float>* %408, align 4
  %410 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %82, i32 0, i32 1
  %411 = load float, float* %410, align 4
  %412 = call { <2 x float>, float } @vector_sub(<2 x float> %403, float %405, <2 x float> %409, float %411)
  store { <2 x float>, float } %412, { <2 x float>, float }* %83, align 8
  %413 = bitcast { <2 x float>, float }* %83 to i8*
  %414 = bitcast %struct.vector* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %414, i8* align 8 %413, i64 12, i1 false)
  %415 = bitcast %struct.vector* %26 to i8*
  %416 = bitcast %struct.vector* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %415, i8* align 4 %416, i64 12, i1 false)
  %417 = bitcast { <2 x float>, float }* %85 to i8*
  %418 = bitcast %struct.vector* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %417, i8* align 4 %418, i64 12, i1 false)
  %419 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %85, i32 0, i32 0
  %420 = load <2 x float>, <2 x float>* %419, align 4
  %421 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %85, i32 0, i32 1
  %422 = load float, float* %421, align 4
  %423 = call { <2 x float>, float } @vector_normalize(<2 x float> %420, float %422)
  store { <2 x float>, float } %423, { <2 x float>, float }* %86, align 8
  %424 = bitcast { <2 x float>, float }* %86 to i8*
  %425 = bitcast %struct.vector* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %425, i8* align 8 %424, i64 12, i1 false)
  %426 = bitcast %struct.vector* %26 to i8*
  %427 = bitcast %struct.vector* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %426, i8* align 4 %427, i64 12, i1 false)
  %428 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* %15, align 4
  %431 = add nsw i32 %430, 1
  %432 = bitcast { <2 x float>, float }* %88 to i8*
  %433 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %432, i8* align 4 %433, i64 12, i1 false)
  %434 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %88, i32 0, i32 0
  %435 = load <2 x float>, <2 x float>* %434, align 4
  %436 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %88, i32 0, i32 1
  %437 = load float, float* %436, align 4
  %438 = bitcast { <2 x float>, float }* %89 to i8*
  %439 = bitcast %struct.vector* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %438, i8* align 4 %439, i64 12, i1 false)
  %440 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %89, i32 0, i32 0
  %441 = load <2 x float>, <2 x float>* %440, align 4
  %442 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %89, i32 0, i32 1
  %443 = load float, float* %442, align 4
  %444 = call { <2 x float>, float } @raytrace(<2 x float> %435, float %437, <2 x float> %441, float %443, %struct.sphere** %428, i32 %429, i32 %431)
  store { <2 x float>, float } %444, { <2 x float>, float }* %90, align 8
  %445 = bitcast { <2 x float>, float }* %90 to i8*
  %446 = bitcast %struct.vector* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %446, i8* align 8 %445, i64 12, i1 false)
  %447 = bitcast %struct.vector* %30 to i8*
  %448 = bitcast %struct.vector* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %447, i8* align 4 %448, i64 12, i1 false)
  %449 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %449, { <2 x float>, float }* %92, align 8
  %450 = bitcast { <2 x float>, float }* %92 to i8*
  %451 = bitcast %struct.vector* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %451, i8* align 8 %450, i64 12, i1 false)
  %452 = bitcast %struct.vector* %31 to i8*
  %453 = bitcast %struct.vector* %91 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %452, i8* align 4 %453, i64 12, i1 false)
  %454 = load %struct.sphere*, %struct.sphere** %21, align 8
  %455 = getelementptr inbounds %struct.sphere, %struct.sphere* %454, i32 0, i32 2
  %456 = load float, float* %455, align 4
  %457 = fcmp ogt float %456, 0.000000e+00
  br i1 %457, label %458, label %600

458:                                              ; preds = %354
  store float 0x3FF19999A0000000, float* %35, align 4
  %459 = load i32, i32* %16, align 4
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = load float, float* %35, align 4
  br label %466

463:                                              ; preds = %458
  %464 = load float, float* %35, align 4
  %465 = fdiv float 1.000000e+00, %464
  br label %466

466:                                              ; preds = %463, %461
  %467 = phi float [ %462, %461 ], [ %465, %463 ]
  store float %467, float* %38, align 4
  %468 = bitcast { <2 x float>, float }* %93 to i8*
  %469 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %468, i8* align 4 %469, i64 12, i1 false)
  %470 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %93, i32 0, i32 0
  %471 = load <2 x float>, <2 x float>* %470, align 4
  %472 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %93, i32 0, i32 1
  %473 = load float, float* %472, align 4
  %474 = bitcast { <2 x float>, float }* %94 to i8*
  %475 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %474, i8* align 4 %475, i64 12, i1 false)
  %476 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %94, i32 0, i32 0
  %477 = load <2 x float>, <2 x float>* %476, align 4
  %478 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %94, i32 0, i32 1
  %479 = load float, float* %478, align 4
  %480 = call float @vector_dot(<2 x float> %471, float %473, <2 x float> %477, float %479)
  %481 = fneg float %480
  store float %481, float* %36, align 4
  %482 = load float, float* %38, align 4
  %483 = load float, float* %38, align 4
  %484 = fmul float %482, %483
  %485 = load float, float* %36, align 4
  %486 = load float, float* %36, align 4
  %487 = fmul float %485, %486
  %488 = fsub float 1.000000e+00, %487
  %489 = fmul float %484, %488
  %490 = fsub float 1.000000e+00, %489
  store float %490, float* %37, align 4
  %491 = load float, float* %38, align 4
  %492 = bitcast { <2 x float>, float }* %96 to i8*
  %493 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %492, i8* align 4 %493, i64 12, i1 false)
  %494 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %96, i32 0, i32 0
  %495 = load <2 x float>, <2 x float>* %494, align 4
  %496 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %96, i32 0, i32 1
  %497 = load float, float* %496, align 4
  %498 = call { <2 x float>, float } @vector_scalar(<2 x float> %495, float %497, float %491)
  store { <2 x float>, float } %498, { <2 x float>, float }* %97, align 8
  %499 = bitcast { <2 x float>, float }* %97 to i8*
  %500 = bitcast %struct.vector* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %500, i8* align 8 %499, i64 12, i1 false)
  %501 = bitcast %struct.vector* %27 to i8*
  %502 = bitcast %struct.vector* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %501, i8* align 4 %502, i64 12, i1 false)
  %503 = load float, float* %38, align 4
  %504 = load float, float* %36, align 4
  %505 = fmul float %503, %504
  %506 = fpext float %505 to double
  %507 = load float, float* %37, align 4
  %508 = fpext float %507 to double
  %509 = call double @sqrt(double %508) #8
  %510 = fsub double %506, %509
  %511 = fptrunc double %510 to float
  %512 = bitcast { <2 x float>, float }* %99 to i8*
  %513 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %512, i8* align 4 %513, i64 12, i1 false)
  %514 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %99, i32 0, i32 0
  %515 = load <2 x float>, <2 x float>* %514, align 4
  %516 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %99, i32 0, i32 1
  %517 = load float, float* %516, align 4
  %518 = call { <2 x float>, float } @vector_scalar(<2 x float> %515, float %517, float %511)
  store { <2 x float>, float } %518, { <2 x float>, float }* %100, align 8
  %519 = bitcast { <2 x float>, float }* %100 to i8*
  %520 = bitcast %struct.vector* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %520, i8* align 8 %519, i64 12, i1 false)
  %521 = bitcast %struct.vector* %28 to i8*
  %522 = bitcast %struct.vector* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %521, i8* align 4 %522, i64 12, i1 false)
  %523 = bitcast { <2 x float>, float }* %102 to i8*
  %524 = bitcast %struct.vector* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %523, i8* align 4 %524, i64 12, i1 false)
  %525 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %102, i32 0, i32 0
  %526 = load <2 x float>, <2 x float>* %525, align 4
  %527 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %102, i32 0, i32 1
  %528 = load float, float* %527, align 4
  %529 = bitcast { <2 x float>, float }* %103 to i8*
  %530 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %529, i8* align 4 %530, i64 12, i1 false)
  %531 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %103, i32 0, i32 0
  %532 = load <2 x float>, <2 x float>* %531, align 4
  %533 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %103, i32 0, i32 1
  %534 = load float, float* %533, align 4
  %535 = call { <2 x float>, float } @vector_add(<2 x float> %526, float %528, <2 x float> %532, float %534)
  store { <2 x float>, float } %535, { <2 x float>, float }* %104, align 8
  %536 = bitcast { <2 x float>, float }* %104 to i8*
  %537 = bitcast %struct.vector* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %537, i8* align 8 %536, i64 12, i1 false)
  %538 = bitcast %struct.vector* %27 to i8*
  %539 = bitcast %struct.vector* %101 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %538, i8* align 4 %539, i64 12, i1 false)
  %540 = bitcast { <2 x float>, float }* %106 to i8*
  %541 = bitcast %struct.vector* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %540, i8* align 4 %541, i64 12, i1 false)
  %542 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %106, i32 0, i32 0
  %543 = load <2 x float>, <2 x float>* %542, align 4
  %544 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %106, i32 0, i32 1
  %545 = load float, float* %544, align 4
  %546 = call { <2 x float>, float } @vector_normalize(<2 x float> %543, float %545)
  store { <2 x float>, float } %546, { <2 x float>, float }* %107, align 8
  %547 = bitcast { <2 x float>, float }* %107 to i8*
  %548 = bitcast %struct.vector* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %548, i8* align 8 %547, i64 12, i1 false)
  %549 = bitcast %struct.vector* %27 to i8*
  %550 = bitcast %struct.vector* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %549, i8* align 4 %550, i64 12, i1 false)
  %551 = bitcast { <2 x float>, float }* %109 to i8*
  %552 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %551, i8* align 4 %552, i64 12, i1 false)
  %553 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %109, i32 0, i32 0
  %554 = load <2 x float>, <2 x float>* %553, align 4
  %555 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %109, i32 0, i32 1
  %556 = load float, float* %555, align 4
  %557 = call { <2 x float>, float } @vector_scalar(<2 x float> %554, float %556, float 0x3F50624DE0000000)
  store { <2 x float>, float } %557, { <2 x float>, float }* %110, align 8
  %558 = bitcast { <2 x float>, float }* %110 to i8*
  %559 = bitcast %struct.vector* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %559, i8* align 8 %558, i64 12, i1 false)
  %560 = bitcast %struct.vector* %29 to i8*
  %561 = bitcast %struct.vector* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %560, i8* align 4 %561, i64 12, i1 false)
  %562 = bitcast { <2 x float>, float }* %112 to i8*
  %563 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %562, i8* align 4 %563, i64 12, i1 false)
  %564 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %112, i32 0, i32 0
  %565 = load <2 x float>, <2 x float>* %564, align 4
  %566 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %112, i32 0, i32 1
  %567 = load float, float* %566, align 4
  %568 = bitcast { <2 x float>, float }* %113 to i8*
  %569 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %568, i8* align 4 %569, i64 12, i1 false)
  %570 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %113, i32 0, i32 0
  %571 = load <2 x float>, <2 x float>* %570, align 4
  %572 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %113, i32 0, i32 1
  %573 = load float, float* %572, align 4
  %574 = call { <2 x float>, float } @vector_sub(<2 x float> %565, float %567, <2 x float> %571, float %573)
  store { <2 x float>, float } %574, { <2 x float>, float }* %114, align 8
  %575 = bitcast { <2 x float>, float }* %114 to i8*
  %576 = bitcast %struct.vector* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %576, i8* align 8 %575, i64 12, i1 false)
  %577 = bitcast %struct.vector* %29 to i8*
  %578 = bitcast %struct.vector* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %577, i8* align 4 %578, i64 12, i1 false)
  %579 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %580 = load i32, i32* %14, align 4
  %581 = load i32, i32* %15, align 4
  %582 = add nsw i32 %581, 1
  %583 = bitcast { <2 x float>, float }* %116 to i8*
  %584 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %583, i8* align 4 %584, i64 12, i1 false)
  %585 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %116, i32 0, i32 0
  %586 = load <2 x float>, <2 x float>* %585, align 4
  %587 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %116, i32 0, i32 1
  %588 = load float, float* %587, align 4
  %589 = bitcast { <2 x float>, float }* %117 to i8*
  %590 = bitcast %struct.vector* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %589, i8* align 4 %590, i64 12, i1 false)
  %591 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %117, i32 0, i32 0
  %592 = load <2 x float>, <2 x float>* %591, align 4
  %593 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %117, i32 0, i32 1
  %594 = load float, float* %593, align 4
  %595 = call { <2 x float>, float } @raytrace(<2 x float> %586, float %588, <2 x float> %592, float %594, %struct.sphere** %579, i32 %580, i32 %582)
  store { <2 x float>, float } %595, { <2 x float>, float }* %118, align 8
  %596 = bitcast { <2 x float>, float }* %118 to i8*
  %597 = bitcast %struct.vector* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %597, i8* align 8 %596, i64 12, i1 false)
  %598 = bitcast %struct.vector* %31 to i8*
  %599 = bitcast %struct.vector* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %598, i8* align 4 %599, i64 12, i1 false)
  br label %600

600:                                              ; preds = %466, %354
  %601 = load float, float* %34, align 4
  %602 = fsub float 1.000000e+00, %601
  %603 = load %struct.sphere*, %struct.sphere** %21, align 8
  %604 = getelementptr inbounds %struct.sphere, %struct.sphere* %603, i32 0, i32 2
  %605 = load float, float* %604, align 4
  %606 = fmul float %602, %605
  %607 = bitcast { <2 x float>, float }* %120 to i8*
  %608 = bitcast %struct.vector* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %607, i8* align 4 %608, i64 12, i1 false)
  %609 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %120, i32 0, i32 0
  %610 = load <2 x float>, <2 x float>* %609, align 4
  %611 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %120, i32 0, i32 1
  %612 = load float, float* %611, align 4
  %613 = call { <2 x float>, float } @vector_scalar(<2 x float> %610, float %612, float %606)
  store { <2 x float>, float } %613, { <2 x float>, float }* %121, align 8
  %614 = bitcast { <2 x float>, float }* %121 to i8*
  %615 = bitcast %struct.vector* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %615, i8* align 8 %614, i64 12, i1 false)
  %616 = bitcast %struct.vector* %31 to i8*
  %617 = bitcast %struct.vector* %119 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %616, i8* align 4 %617, i64 12, i1 false)
  %618 = load float, float* %34, align 4
  %619 = bitcast { <2 x float>, float }* %123 to i8*
  %620 = bitcast %struct.vector* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %619, i8* align 4 %620, i64 12, i1 false)
  %621 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %123, i32 0, i32 0
  %622 = load <2 x float>, <2 x float>* %621, align 4
  %623 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %123, i32 0, i32 1
  %624 = load float, float* %623, align 4
  %625 = call { <2 x float>, float } @vector_scalar(<2 x float> %622, float %624, float %618)
  store { <2 x float>, float } %625, { <2 x float>, float }* %124, align 8
  %626 = bitcast { <2 x float>, float }* %124 to i8*
  %627 = bitcast %struct.vector* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %627, i8* align 8 %626, i64 12, i1 false)
  %628 = bitcast %struct.vector* %30 to i8*
  %629 = bitcast %struct.vector* %122 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %628, i8* align 4 %629, i64 12, i1 false)
  %630 = bitcast { <2 x float>, float }* %126 to i8*
  %631 = bitcast %struct.vector* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %630, i8* align 4 %631, i64 12, i1 false)
  %632 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %126, i32 0, i32 0
  %633 = load <2 x float>, <2 x float>* %632, align 4
  %634 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %126, i32 0, i32 1
  %635 = load float, float* %634, align 4
  %636 = bitcast { <2 x float>, float }* %127 to i8*
  %637 = bitcast %struct.vector* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %636, i8* align 4 %637, i64 12, i1 false)
  %638 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %127, i32 0, i32 0
  %639 = load <2 x float>, <2 x float>* %638, align 4
  %640 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %127, i32 0, i32 1
  %641 = load float, float* %640, align 4
  %642 = call { <2 x float>, float } @vector_add(<2 x float> %633, float %635, <2 x float> %639, float %641)
  store { <2 x float>, float } %642, { <2 x float>, float }* %128, align 8
  %643 = bitcast { <2 x float>, float }* %128 to i8*
  %644 = bitcast %struct.vector* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %644, i8* align 8 %643, i64 12, i1 false)
  %645 = bitcast %struct.vector* %28 to i8*
  %646 = bitcast %struct.vector* %125 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %645, i8* align 4 %646, i64 12, i1 false)
  %647 = load %struct.sphere*, %struct.sphere** %21, align 8
  %648 = getelementptr inbounds %struct.sphere, %struct.sphere* %647, i32 0, i32 4
  %649 = bitcast { <2 x float>, float }* %130 to i8*
  %650 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %649, i8* align 4 %650, i64 12, i1 false)
  %651 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %130, i32 0, i32 0
  %652 = load <2 x float>, <2 x float>* %651, align 4
  %653 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %130, i32 0, i32 1
  %654 = load float, float* %653, align 4
  %655 = bitcast { <2 x float>, float }* %131 to i8*
  %656 = bitcast %struct.vector* %648 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %655, i8* align 4 %656, i64 12, i1 false)
  %657 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %131, i32 0, i32 0
  %658 = load <2 x float>, <2 x float>* %657, align 4
  %659 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %131, i32 0, i32 1
  %660 = load float, float* %659, align 4
  %661 = call { <2 x float>, float } @vector_cross(<2 x float> %652, float %654, <2 x float> %658, float %660)
  store { <2 x float>, float } %661, { <2 x float>, float }* %132, align 8
  %662 = bitcast { <2 x float>, float }* %132 to i8*
  %663 = bitcast %struct.vector* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %663, i8* align 8 %662, i64 12, i1 false)
  %664 = bitcast %struct.vector* %22 to i8*
  %665 = bitcast %struct.vector* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %664, i8* align 4 %665, i64 12, i1 false)
  br label %827

666:                                              ; preds = %350, %345
  store i32 0, i32* %17, align 4
  br label %667

667:                                              ; preds = %823, %666
  %668 = load i32, i32* %17, align 4
  %669 = load i32, i32* %14, align 4
  %670 = icmp slt i32 %668, %669
  br i1 %670, label %671, label %826

671:                                              ; preds = %667
  %672 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %673 = load i32, i32* %17, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds %struct.sphere*, %struct.sphere** %672, i64 %674
  %676 = load %struct.sphere*, %struct.sphere** %675, align 8
  %677 = getelementptr inbounds %struct.sphere, %struct.sphere* %676, i32 0, i32 5
  %678 = getelementptr inbounds %struct.vector, %struct.vector* %677, i32 0, i32 0
  %679 = load float, float* %678, align 4
  %680 = fcmp ogt float %679, 0.000000e+00
  br i1 %680, label %681, label %822

681:                                              ; preds = %671
  store i32 1, i32* %39, align 4
  %682 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %683 = load i32, i32* %17, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.sphere*, %struct.sphere** %682, i64 %684
  %686 = load %struct.sphere*, %struct.sphere** %685, align 8
  %687 = getelementptr inbounds %struct.sphere, %struct.sphere* %686, i32 0, i32 6
  %688 = bitcast { <2 x float>, float }* %134 to i8*
  %689 = bitcast %struct.vector* %687 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %688, i8* align 4 %689, i64 12, i1 false)
  %690 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %134, i32 0, i32 0
  %691 = load <2 x float>, <2 x float>* %690, align 4
  %692 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %134, i32 0, i32 1
  %693 = load float, float* %692, align 4
  %694 = bitcast { <2 x float>, float }* %135 to i8*
  %695 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %694, i8* align 4 %695, i64 12, i1 false)
  %696 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %135, i32 0, i32 0
  %697 = load <2 x float>, <2 x float>* %696, align 4
  %698 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %135, i32 0, i32 1
  %699 = load float, float* %698, align 4
  %700 = call { <2 x float>, float } @vector_sub(<2 x float> %691, float %693, <2 x float> %697, float %699)
  store { <2 x float>, float } %700, { <2 x float>, float }* %136, align 8
  %701 = bitcast { <2 x float>, float }* %136 to i8*
  %702 = bitcast %struct.vector* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %702, i8* align 8 %701, i64 12, i1 false)
  %703 = bitcast %struct.vector* %25 to i8*
  %704 = bitcast %struct.vector* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %703, i8* align 4 %704, i64 12, i1 false)
  %705 = bitcast { <2 x float>, float }* %138 to i8*
  %706 = bitcast %struct.vector* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %705, i8* align 4 %706, i64 12, i1 false)
  %707 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %138, i32 0, i32 0
  %708 = load <2 x float>, <2 x float>* %707, align 4
  %709 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %138, i32 0, i32 1
  %710 = load float, float* %709, align 4
  %711 = call { <2 x float>, float } @vector_normalize(<2 x float> %708, float %710)
  store { <2 x float>, float } %711, { <2 x float>, float }* %139, align 8
  %712 = bitcast { <2 x float>, float }* %139 to i8*
  %713 = bitcast %struct.vector* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %713, i8* align 8 %712, i64 12, i1 false)
  %714 = bitcast %struct.vector* %25 to i8*
  %715 = bitcast %struct.vector* %137 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %714, i8* align 4 %715, i64 12, i1 false)
  store i32 0, i32* %18, align 4
  br label %716

716:                                              ; preds = %747, %681
  %717 = load i32, i32* %18, align 4
  %718 = load i32, i32* %14, align 4
  %719 = icmp slt i32 %717, %718
  br i1 %719, label %720, label %750

720:                                              ; preds = %716
  %721 = load i32, i32* %17, align 4
  %722 = load i32, i32* %18, align 4
  %723 = icmp eq i32 %721, %722
  br i1 %723, label %724, label %725

724:                                              ; preds = %720
  br label %747

725:                                              ; preds = %720
  %726 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %727 = load i32, i32* %18, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.sphere*, %struct.sphere** %726, i64 %728
  %730 = load %struct.sphere*, %struct.sphere** %729, align 8
  %731 = bitcast { <2 x float>, float }* %140 to i8*
  %732 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %731, i8* align 4 %732, i64 12, i1 false)
  %733 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %140, i32 0, i32 0
  %734 = load <2 x float>, <2 x float>* %733, align 4
  %735 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %140, i32 0, i32 1
  %736 = load float, float* %735, align 4
  %737 = bitcast { <2 x float>, float }* %141 to i8*
  %738 = bitcast %struct.vector* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %737, i8* align 4 %738, i64 12, i1 false)
  %739 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %141, i32 0, i32 0
  %740 = load <2 x float>, <2 x float>* %739, align 4
  %741 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %141, i32 0, i32 1
  %742 = load float, float* %741, align 4
  %743 = call i32 @sphere_intersects(%struct.sphere* %730, <2 x float> %734, float %736, <2 x float> %740, float %742, float* null, float* null)
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %745, label %746

745:                                              ; preds = %725
  store i32 0, i32* %39, align 4
  br label %750

746:                                              ; preds = %725
  br label %747

747:                                              ; preds = %746, %724
  %748 = load i32, i32* %18, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %18, align 4
  br label %716

750:                                              ; preds = %745, %716
  %751 = load i32, i32* %39, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %821

753:                                              ; preds = %750
  %754 = load %struct.sphere*, %struct.sphere** %21, align 8
  %755 = getelementptr inbounds %struct.sphere, %struct.sphere* %754, i32 0, i32 4
  %756 = bitcast { <2 x float>, float }* %143 to i8*
  %757 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %756, i8* align 4 %757, i64 12, i1 false)
  %758 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %143, i32 0, i32 0
  %759 = load <2 x float>, <2 x float>* %758, align 4
  %760 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %143, i32 0, i32 1
  %761 = load float, float* %760, align 4
  %762 = bitcast { <2 x float>, float }* %144 to i8*
  %763 = bitcast %struct.vector* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %762, i8* align 4 %763, i64 12, i1 false)
  %764 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %144, i32 0, i32 0
  %765 = load <2 x float>, <2 x float>* %764, align 4
  %766 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %144, i32 0, i32 1
  %767 = load float, float* %766, align 4
  %768 = call float @vector_dot(<2 x float> %759, float %761, <2 x float> %765, float %767)
  %769 = call float @max(float 0.000000e+00, float %768)
  %770 = bitcast { <2 x float>, float }* %145 to i8*
  %771 = bitcast %struct.vector* %755 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %770, i8* align 4 %771, i64 12, i1 false)
  %772 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %145, i32 0, i32 0
  %773 = load <2 x float>, <2 x float>* %772, align 4
  %774 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %145, i32 0, i32 1
  %775 = load float, float* %774, align 4
  %776 = call { <2 x float>, float } @vector_scalar(<2 x float> %773, float %775, float %769)
  store { <2 x float>, float } %776, { <2 x float>, float }* %146, align 8
  %777 = bitcast { <2 x float>, float }* %146 to i8*
  %778 = bitcast %struct.vector* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %778, i8* align 8 %777, i64 12, i1 false)
  %779 = bitcast %struct.vector* %28 to i8*
  %780 = bitcast %struct.vector* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %779, i8* align 4 %780, i64 12, i1 false)
  %781 = load %struct.sphere**, %struct.sphere*** %13, align 8
  %782 = load i32, i32* %17, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds %struct.sphere*, %struct.sphere** %781, i64 %783
  %785 = load %struct.sphere*, %struct.sphere** %784, align 8
  %786 = getelementptr inbounds %struct.sphere, %struct.sphere* %785, i32 0, i32 5
  %787 = bitcast { <2 x float>, float }* %148 to i8*
  %788 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %787, i8* align 4 %788, i64 12, i1 false)
  %789 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %148, i32 0, i32 0
  %790 = load <2 x float>, <2 x float>* %789, align 4
  %791 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %148, i32 0, i32 1
  %792 = load float, float* %791, align 4
  %793 = bitcast { <2 x float>, float }* %149 to i8*
  %794 = bitcast %struct.vector* %786 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %793, i8* align 4 %794, i64 12, i1 false)
  %795 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %149, i32 0, i32 0
  %796 = load <2 x float>, <2 x float>* %795, align 4
  %797 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %149, i32 0, i32 1
  %798 = load float, float* %797, align 4
  %799 = call { <2 x float>, float } @vector_cross(<2 x float> %790, float %792, <2 x float> %796, float %798)
  store { <2 x float>, float } %799, { <2 x float>, float }* %150, align 8
  %800 = bitcast { <2 x float>, float }* %150 to i8*
  %801 = bitcast %struct.vector* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %801, i8* align 8 %800, i64 12, i1 false)
  %802 = bitcast %struct.vector* %28 to i8*
  %803 = bitcast %struct.vector* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %802, i8* align 4 %803, i64 12, i1 false)
  %804 = bitcast { <2 x float>, float }* %152 to i8*
  %805 = bitcast %struct.vector* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %804, i8* align 4 %805, i64 12, i1 false)
  %806 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %152, i32 0, i32 0
  %807 = load <2 x float>, <2 x float>* %806, align 4
  %808 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %152, i32 0, i32 1
  %809 = load float, float* %808, align 4
  %810 = bitcast { <2 x float>, float }* %153 to i8*
  %811 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %810, i8* align 4 %811, i64 12, i1 false)
  %812 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %153, i32 0, i32 0
  %813 = load <2 x float>, <2 x float>* %812, align 4
  %814 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %153, i32 0, i32 1
  %815 = load float, float* %814, align 4
  %816 = call { <2 x float>, float } @vector_add(<2 x float> %807, float %809, <2 x float> %813, float %815)
  store { <2 x float>, float } %816, { <2 x float>, float }* %154, align 8
  %817 = bitcast { <2 x float>, float }* %154 to i8*
  %818 = bitcast %struct.vector* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %818, i8* align 8 %817, i64 12, i1 false)
  %819 = bitcast %struct.vector* %22 to i8*
  %820 = bitcast %struct.vector* %151 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %819, i8* align 4 %820, i64 12, i1 false)
  br label %821

821:                                              ; preds = %753, %750
  br label %822

822:                                              ; preds = %821, %671
  br label %823

823:                                              ; preds = %822
  %824 = load i32, i32* %17, align 4
  %825 = add nsw i32 %824, 1
  store i32 %825, i32* %17, align 4
  br label %667

826:                                              ; preds = %667
  br label %827

827:                                              ; preds = %826, %600
  %828 = load %struct.sphere*, %struct.sphere** %21, align 8
  %829 = getelementptr inbounds %struct.sphere, %struct.sphere* %828, i32 0, i32 5
  %830 = bitcast { <2 x float>, float }* %155 to i8*
  %831 = bitcast %struct.vector* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %830, i8* align 4 %831, i64 12, i1 false)
  %832 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %155, i32 0, i32 0
  %833 = load <2 x float>, <2 x float>* %832, align 4
  %834 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %155, i32 0, i32 1
  %835 = load float, float* %834, align 4
  %836 = bitcast { <2 x float>, float }* %156 to i8*
  %837 = bitcast %struct.vector* %829 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %836, i8* align 4 %837, i64 12, i1 false)
  %838 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %156, i32 0, i32 0
  %839 = load <2 x float>, <2 x float>* %838, align 4
  %840 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %156, i32 0, i32 1
  %841 = load float, float* %840, align 4
  %842 = call { <2 x float>, float } @vector_add(<2 x float> %833, float %835, <2 x float> %839, float %841)
  store { <2 x float>, float } %842, { <2 x float>, float }* %157, align 8
  %843 = bitcast { <2 x float>, float }* %157 to i8*
  %844 = bitcast %struct.vector* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %844, i8* align 8 %843, i64 12, i1 false)
  br label %845

845:                                              ; preds = %827, %215
  %846 = bitcast { <2 x float>, float }* %158 to i8*
  %847 = bitcast %struct.vector* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %846, i8* align 4 %847, i64 12, i1 false)
  %848 = load { <2 x float>, float }, { <2 x float>, float }* %158, align 8
  ret { <2 x float>, float } %848
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: noinline nounwind uwtable
define internal float @mix(float %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %7 = load float, float* %5, align 4
  %8 = load float, float* %6, align 4
  %9 = fmul float %7, %8
  %10 = fpext float %9 to double
  %11 = load float, float* %4, align 4
  %12 = fpext float %11 to double
  %13 = load float, float* %6, align 4
  %14 = fpext float %13 to double
  %15 = fsub double 1.000000e+00, %14
  %16 = fmul double %12, %15
  %17 = fadd double %10, %16
  %18 = fptrunc double %17 to float
  ret float %18
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define internal float @max(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp ogt float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.image* @render(%struct.sphere** %0, i32 %1, i32 %2, i32 %3, i32 %4) #4 {
  %6 = alloca %struct.sphere**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vector, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.image*, align 8
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.vector, align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.vector, align 4
  %24 = alloca %struct.vector, align 4
  %25 = alloca { <2 x float>, float }, align 8
  %26 = alloca { <2 x float>, float }, align 4
  %27 = alloca { <2 x float>, float }, align 8
  %28 = alloca %struct.vector, align 4
  %29 = alloca %struct.vector, align 4
  %30 = alloca { <2 x float>, float }, align 8
  %31 = alloca { <2 x float>, float }, align 4
  %32 = alloca { <2 x float>, float }, align 4
  %33 = alloca { <2 x float>, float }, align 8
  store %struct.sphere** %0, %struct.sphere*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* @max_depth, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.image* @image_create(i32 %35, i32 %36)
  store %struct.image* %37, %struct.image** %16, align 8
  %38 = load i32, i32* %8, align 4
  %39 = uitofp i32 %38 to double
  %40 = fdiv double 1.000000e+00, %39
  %41 = fptrunc double %40 to float
  store float %41, float* %17, align 4
  %42 = load i32, i32* %9, align 4
  %43 = uitofp i32 %42 to double
  %44 = fdiv double 1.000000e+00, %43
  %45 = fptrunc double %44 to float
  store float %45, float* %18, align 4
  store float 3.000000e+01, float* %20, align 4
  %46 = load i32, i32* %8, align 4
  %47 = uitofp i32 %46 to float
  %48 = load i32, i32* %9, align 4
  %49 = uitofp i32 %48 to float
  %50 = fdiv float %47, %49
  store float %50, float* %22, align 4
  %51 = load float, float* %20, align 4
  %52 = fpext float %51 to double
  %53 = fmul double 0x3FF921FB54442D18, %52
  %54 = fdiv double %53, 1.800000e+02
  %55 = call double @tan(double %54) #8
  %56 = fptrunc double %55 to float
  store float %56, float* %19, align 4
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %190, %5
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %193

61:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %62

62:                                               ; preds = %186, %61
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %189

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = uitofp i32 %67 to double
  %69 = fadd double %68, 5.000000e-01
  %70 = load float, float* %17, align 4
  %71 = fpext float %70 to double
  %72 = fmul double %69, %71
  %73 = fmul double 2.000000e+00, %72
  %74 = fsub double %73, 1.000000e+00
  %75 = load float, float* %19, align 4
  %76 = fpext float %75 to double
  %77 = fmul double %74, %76
  %78 = load float, float* %22, align 4
  %79 = fpext float %78 to double
  %80 = fmul double %77, %79
  %81 = fptrunc double %80 to float
  store float %81, float* %14, align 4
  %82 = load i32, i32* %13, align 4
  %83 = uitofp i32 %82 to double
  %84 = fadd double %83, 5.000000e-01
  %85 = load float, float* %18, align 4
  %86 = fpext float %85 to double
  %87 = fmul double %84, %86
  %88 = fmul double 2.000000e+00, %87
  %89 = fsub double 1.000000e+00, %88
  %90 = load float, float* %19, align 4
  %91 = fpext float %90 to double
  %92 = fmul double %89, %91
  %93 = fptrunc double %92 to float
  store float %93, float* %15, align 4
  %94 = load float, float* %14, align 4
  %95 = load float, float* %15, align 4
  %96 = call { <2 x float>, float } @VECTOR(float %94, float %95, float -1.000000e+00)
  store { <2 x float>, float } %96, { <2 x float>, float }* %25, align 8
  %97 = bitcast { <2 x float>, float }* %25 to i8*
  %98 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %98, i8* align 8 %97, i64 12, i1 false)
  %99 = bitcast { <2 x float>, float }* %26 to i8*
  %100 = bitcast %struct.vector* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 12, i1 false)
  %101 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 0
  %102 = load <2 x float>, <2 x float>* %101, align 4
  %103 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = call { <2 x float>, float } @vector_normalize(<2 x float> %102, float %104)
  store { <2 x float>, float } %105, { <2 x float>, float }* %27, align 8
  %106 = bitcast { <2 x float>, float }* %27 to i8*
  %107 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 8 %106, i64 12, i1 false)
  %108 = bitcast %struct.vector* %11 to i8*
  %109 = bitcast %struct.vector* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 12, i1 false)
  %110 = call { <2 x float>, float } @VECTOR(float 0.000000e+00, float 0.000000e+00, float 0.000000e+00)
  store { <2 x float>, float } %110, { <2 x float>, float }* %30, align 8
  %111 = bitcast { <2 x float>, float }* %30 to i8*
  %112 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 8 %111, i64 12, i1 false)
  %113 = load %struct.sphere**, %struct.sphere*** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = bitcast { <2 x float>, float }* %31 to i8*
  %116 = bitcast %struct.vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 4 %116, i64 12, i1 false)
  %117 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %31, i32 0, i32 0
  %118 = load <2 x float>, <2 x float>* %117, align 4
  %119 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %31, i32 0, i32 1
  %120 = load float, float* %119, align 4
  %121 = bitcast { <2 x float>, float }* %32 to i8*
  %122 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 12, i1 false)
  %123 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %32, i32 0, i32 0
  %124 = load <2 x float>, <2 x float>* %123, align 4
  %125 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %32, i32 0, i32 1
  %126 = load float, float* %125, align 4
  %127 = call { <2 x float>, float } @raytrace(<2 x float> %118, float %120, <2 x float> %124, float %126, %struct.sphere** %113, i32 %114, i32 0)
  store { <2 x float>, float } %127, { <2 x float>, float }* %33, align 8
  %128 = bitcast { <2 x float>, float }* %33 to i8*
  %129 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 8 %128, i64 12, i1 false)
  %130 = bitcast %struct.vector* %21 to i8*
  %131 = bitcast %struct.vector* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 12, i1 false)
  %132 = getelementptr inbounds %struct.vector, %struct.vector* %21, i32 0, i32 0
  %133 = load float, float* %132, align 4
  %134 = call float @min(float 1.000000e+00, float %133)
  %135 = fmul float %134, 2.550000e+02
  %136 = fptoui float %135 to i8
  %137 = load %struct.image*, %struct.image** %16, align 8
  %138 = getelementptr inbounds %struct.image, %struct.image* %137, i32 0, i32 3
  %139 = load %struct.pixel*, %struct.pixel** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.image*, %struct.image** %16, align 8
  %142 = getelementptr inbounds %struct.image, %struct.image* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = mul i32 %140, %143
  %145 = load i32, i32* %12, align 4
  %146 = add i32 %144, %145
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.pixel, %struct.pixel* %139, i64 %147
  %149 = getelementptr inbounds %struct.pixel, %struct.pixel* %148, i32 0, i32 0
  store i8 %136, i8* %149, align 1
  %150 = getelementptr inbounds %struct.vector, %struct.vector* %21, i32 0, i32 1
  %151 = load float, float* %150, align 4
  %152 = call float @min(float 1.000000e+00, float %151)
  %153 = fmul float %152, 2.550000e+02
  %154 = fptoui float %153 to i8
  %155 = load %struct.image*, %struct.image** %16, align 8
  %156 = getelementptr inbounds %struct.image, %struct.image* %155, i32 0, i32 3
  %157 = load %struct.pixel*, %struct.pixel** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load %struct.image*, %struct.image** %16, align 8
  %160 = getelementptr inbounds %struct.image, %struct.image* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = mul i32 %158, %161
  %163 = load i32, i32* %12, align 4
  %164 = add i32 %162, %163
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.pixel, %struct.pixel* %157, i64 %165
  %167 = getelementptr inbounds %struct.pixel, %struct.pixel* %166, i32 0, i32 1
  store i8 %154, i8* %167, align 1
  %168 = getelementptr inbounds %struct.vector, %struct.vector* %21, i32 0, i32 2
  %169 = load float, float* %168, align 4
  %170 = call float @min(float 1.000000e+00, float %169)
  %171 = fmul float %170, 2.550000e+02
  %172 = fptoui float %171 to i8
  %173 = load %struct.image*, %struct.image** %16, align 8
  %174 = getelementptr inbounds %struct.image, %struct.image* %173, i32 0, i32 3
  %175 = load %struct.pixel*, %struct.pixel** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = load %struct.image*, %struct.image** %16, align 8
  %178 = getelementptr inbounds %struct.image, %struct.image* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul i32 %176, %179
  %181 = load i32, i32* %12, align 4
  %182 = add i32 %180, %181
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.pixel, %struct.pixel* %175, i64 %183
  %185 = getelementptr inbounds %struct.pixel, %struct.pixel* %184, i32 0, i32 2
  store i8 %172, i8* %185, align 1
  br label %186

186:                                              ; preds = %66
  %187 = load i32, i32* %12, align 4
  %188 = add i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %62

189:                                              ; preds = %62
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %13, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %13, align 4
  br label %57

193:                                              ; preds = %57
  %194 = load %struct.image*, %struct.image** %16, align 8
  ret %struct.image* %194
}

; Function Attrs: nounwind
declare dso_local double @tan(double) #2

; Function Attrs: noinline nounwind uwtable
define internal float @min(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fcmp olt float %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load float, float* %3, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load float, float* %4, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi float [ %9, %8 ], [ %11, %10 ]
  ret float %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @sphere_center(%struct.sphere* %0) #0 {
  %2 = alloca %struct.vector, align 4
  %3 = alloca %struct.sphere*, align 8
  %4 = alloca { <2 x float>, float }, align 8
  store %struct.sphere* %0, %struct.sphere** %3, align 8
  %5 = load %struct.sphere*, %struct.sphere** %3, align 8
  %6 = icmp ne %struct.sphere* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %9

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__.sphere_center, i64 0, i64 0)) #7
  unreachable

9:                                                ; preds = %7
  %10 = load %struct.sphere*, %struct.sphere** %3, align 8
  %11 = getelementptr inbounds %struct.sphere, %struct.sphere* %10, i32 0, i32 6
  %12 = bitcast %struct.vector* %2 to i8*
  %13 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  %14 = bitcast { <2 x float>, float }* %4 to i8*
  %15 = bitcast %struct.vector* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 4 %15, i64 12, i1 false)
  %16 = load { <2 x float>, float }, { <2 x float>, float }* %4, align 8
  ret { <2 x float>, float } %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.sphere* @sphere_create(<2 x float> %0, float %1, float %2, <2 x float> %3, float %4, float %5, float %6, %struct.vector* byval(%struct.vector) align 8 %7) #4 {
  %9 = alloca %struct.vector, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca %struct.vector, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.sphere*, align 8
  %17 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %17, align 4
  %18 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 1
  store float %1, float* %18, align 4
  %19 = bitcast %struct.vector* %9 to i8*
  %20 = bitcast { <2 x float>, float }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 12, i1 false)
  %21 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %21, align 4
  %22 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  store float %4, float* %22, align 4
  %23 = bitcast %struct.vector* %11 to i8*
  %24 = bitcast { <2 x float>, float }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  store float %2, float* %13, align 4
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  %25 = load float, float* %13, align 4
  %26 = fcmp ogt float %25, 0.000000e+00
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %29

28:                                               ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.29, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 31, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.sphere_create, i64 0, i64 0)) #7
  unreachable

29:                                               ; preds = %27
  %30 = load float, float* %15, align 4
  %31 = fcmp oge float %30, 0.000000e+00
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %34

33:                                               ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 32, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.sphere_create, i64 0, i64 0)) #7
  unreachable

34:                                               ; preds = %32
  %35 = load float, float* %15, align 4
  %36 = fcmp oge float %35, 0.000000e+00
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %39

38:                                               ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @__PRETTY_FUNCTION__.sphere_create, i64 0, i64 0)) #7
  unreachable

39:                                               ; preds = %37
  %40 = call i8* @smalloc(i64 52)
  %41 = bitcast i8* %40 to %struct.sphere*
  store %struct.sphere* %41, %struct.sphere** %16, align 8
  %42 = load float, float* %13, align 4
  %43 = load %struct.sphere*, %struct.sphere** %16, align 8
  %44 = getelementptr inbounds %struct.sphere, %struct.sphere* %43, i32 0, i32 0
  store float %42, float* %44, align 4
  %45 = load float, float* %13, align 4
  %46 = load float, float* %13, align 4
  %47 = fmul float %45, %46
  %48 = load %struct.sphere*, %struct.sphere** %16, align 8
  %49 = getelementptr inbounds %struct.sphere, %struct.sphere* %48, i32 0, i32 1
  store float %47, float* %49, align 4
  %50 = load float, float* %15, align 4
  %51 = load %struct.sphere*, %struct.sphere** %16, align 8
  %52 = getelementptr inbounds %struct.sphere, %struct.sphere* %51, i32 0, i32 2
  store float %50, float* %52, align 4
  %53 = load float, float* %14, align 4
  %54 = load %struct.sphere*, %struct.sphere** %16, align 8
  %55 = getelementptr inbounds %struct.sphere, %struct.sphere* %54, i32 0, i32 3
  store float %53, float* %55, align 4
  %56 = load %struct.sphere*, %struct.sphere** %16, align 8
  %57 = getelementptr inbounds %struct.sphere, %struct.sphere* %56, i32 0, i32 4
  %58 = bitcast %struct.vector* %57 to i8*
  %59 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = load %struct.sphere*, %struct.sphere** %16, align 8
  %61 = getelementptr inbounds %struct.sphere, %struct.sphere* %60, i32 0, i32 5
  %62 = bitcast %struct.vector* %61 to i8*
  %63 = bitcast %struct.vector* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 8 %63, i64 12, i1 false)
  %64 = load %struct.sphere*, %struct.sphere** %16, align 8
  %65 = getelementptr inbounds %struct.sphere, %struct.sphere* %64, i32 0, i32 6
  %66 = bitcast %struct.vector* %65 to i8*
  %67 = bitcast %struct.vector* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = load %struct.sphere*, %struct.sphere** %16, align 8
  ret %struct.sphere* %68
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sphere_destroy(%struct.sphere* %0) #0 {
  %2 = alloca %struct.sphere*, align 8
  store %struct.sphere* %0, %struct.sphere** %2, align 8
  %3 = load %struct.sphere*, %struct.sphere** %2, align 8
  %4 = icmp ne %struct.sphere* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.sphere_destroy, i64 0, i64 0)) #7
  unreachable

7:                                                ; preds = %5
  %8 = load %struct.sphere*, %struct.sphere** %2, align 8
  %9 = bitcast %struct.sphere* %8 to i8*
  call void @free(i8* %9) #8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @sphere_intersects(%struct.sphere* %0, <2 x float> %1, float %2, <2 x float> %3, float %4, float* %5, float* %6) #4 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vector, align 4
  %10 = alloca { <2 x float>, float }, align 4
  %11 = alloca %struct.vector, align 4
  %12 = alloca { <2 x float>, float }, align 4
  %13 = alloca %struct.sphere*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca %struct.vector, align 4
  %20 = alloca %struct.vector, align 4
  %21 = alloca { <2 x float>, float }, align 4
  %22 = alloca { <2 x float>, float }, align 4
  %23 = alloca { <2 x float>, float }, align 8
  %24 = alloca { <2 x float>, float }, align 4
  %25 = alloca { <2 x float>, float }, align 4
  %26 = alloca { <2 x float>, float }, align 4
  %27 = alloca { <2 x float>, float }, align 4
  %28 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 0
  store <2 x float> %1, <2 x float>* %28, align 4
  %29 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %10, i32 0, i32 1
  store float %2, float* %29, align 4
  %30 = bitcast %struct.vector* %9 to i8*
  %31 = bitcast { <2 x float>, float }* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 12, i1 false)
  %32 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 0
  store <2 x float> %3, <2 x float>* %32, align 4
  %33 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %12, i32 0, i32 1
  store float %4, float* %33, align 4
  %34 = bitcast %struct.vector* %11 to i8*
  %35 = bitcast { <2 x float>, float }* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %34, i8* align 4 %35, i64 12, i1 false)
  store %struct.sphere* %0, %struct.sphere** %13, align 8
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  %36 = load %struct.sphere*, %struct.sphere** %13, align 8
  %37 = icmp ne %struct.sphere* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  br label %40

39:                                               ; preds = %7
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.26, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @__PRETTY_FUNCTION__.sphere_intersects, i64 0, i64 0)) #7
  unreachable

40:                                               ; preds = %38
  %41 = load %struct.sphere*, %struct.sphere** %13, align 8
  %42 = getelementptr inbounds %struct.sphere, %struct.sphere* %41, i32 0, i32 6
  %43 = bitcast { <2 x float>, float }* %21 to i8*
  %44 = bitcast %struct.vector* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 12, i1 false)
  %45 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %21, i32 0, i32 0
  %46 = load <2 x float>, <2 x float>* %45, align 4
  %47 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %21, i32 0, i32 1
  %48 = load float, float* %47, align 4
  %49 = bitcast { <2 x float>, float }* %22 to i8*
  %50 = bitcast %struct.vector* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %22, i32 0, i32 0
  %52 = load <2 x float>, <2 x float>* %51, align 4
  %53 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %22, i32 0, i32 1
  %54 = load float, float* %53, align 4
  %55 = call { <2 x float>, float } @vector_sub(<2 x float> %46, float %48, <2 x float> %52, float %54)
  store { <2 x float>, float } %55, { <2 x float>, float }* %23, align 8
  %56 = bitcast { <2 x float>, float }* %23 to i8*
  %57 = bitcast %struct.vector* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 8 %56, i64 12, i1 false)
  %58 = bitcast %struct.vector* %19 to i8*
  %59 = bitcast %struct.vector* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  %60 = bitcast { <2 x float>, float }* %24 to i8*
  %61 = bitcast %struct.vector* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 12, i1 false)
  %62 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %24, i32 0, i32 0
  %63 = load <2 x float>, <2 x float>* %62, align 4
  %64 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %24, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = bitcast { <2 x float>, float }* %25 to i8*
  %67 = bitcast %struct.vector* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 12, i1 false)
  %68 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %25, i32 0, i32 0
  %69 = load <2 x float>, <2 x float>* %68, align 4
  %70 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %25, i32 0, i32 1
  %71 = load float, float* %70, align 4
  %72 = call float @vector_dot(<2 x float> %63, float %65, <2 x float> %69, float %71)
  store float %72, float* %17, align 4
  %73 = load float, float* %17, align 4
  %74 = fcmp olt float %73, 0.000000e+00
  br i1 %74, label %75, label %76

75:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %124

76:                                               ; preds = %40
  %77 = bitcast { <2 x float>, float }* %26 to i8*
  %78 = bitcast %struct.vector* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 12, i1 false)
  %79 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 0
  %80 = load <2 x float>, <2 x float>* %79, align 4
  %81 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %26, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = bitcast { <2 x float>, float }* %27 to i8*
  %84 = bitcast %struct.vector* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 12, i1 false)
  %85 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %27, i32 0, i32 0
  %86 = load <2 x float>, <2 x float>* %85, align 4
  %87 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %27, i32 0, i32 1
  %88 = load float, float* %87, align 4
  %89 = call float @vector_dot(<2 x float> %80, float %82, <2 x float> %86, float %88)
  %90 = load float, float* %17, align 4
  %91 = load float, float* %17, align 4
  %92 = fmul float %90, %91
  %93 = fsub float %89, %92
  store float %93, float* %16, align 4
  %94 = load float, float* %16, align 4
  %95 = load %struct.sphere*, %struct.sphere** %13, align 8
  %96 = getelementptr inbounds %struct.sphere, %struct.sphere* %95, i32 0, i32 1
  %97 = load float, float* %96, align 4
  %98 = fcmp ogt float %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %124

100:                                              ; preds = %76
  %101 = load %struct.sphere*, %struct.sphere** %13, align 8
  %102 = getelementptr inbounds %struct.sphere, %struct.sphere* %101, i32 0, i32 1
  %103 = load float, float* %102, align 4
  %104 = load float, float* %16, align 4
  %105 = fsub float %103, %104
  %106 = fpext float %105 to double
  %107 = call double @sqrt(double %106) #8
  %108 = fptrunc double %107 to float
  store float %108, float* %18, align 4
  %109 = load float*, float** %14, align 8
  %110 = icmp ne float* %109, null
  br i1 %110, label %111, label %123

111:                                              ; preds = %100
  %112 = load float*, float** %15, align 8
  %113 = icmp ne float* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load float, float* %17, align 4
  %116 = load float, float* %18, align 4
  %117 = fsub float %115, %116
  %118 = load float*, float** %14, align 8
  store float %117, float* %118, align 4
  %119 = load float, float* %17, align 4
  %120 = load float, float* %18, align 4
  %121 = fadd float %119, %120
  %122 = load float*, float** %15, align 8
  store float %121, float* %122, align 4
  br label %123

123:                                              ; preds = %114, %111, %100
  store i32 1, i32* %8, align 4
  br label %124

124:                                              ; preds = %123, %99, %75
  %125 = load i32, i32* %8, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_get() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = call i32 @gettimeofday(%struct.timeval* %2, %struct.timezone* null) #8
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = mul i64 1000000, %5
  store i64 %6, i64* %1, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %2, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* %1, align 8
  %10 = add i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  ret i64 %11
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @timer_diff(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = sub i64 %5, %6
  %8 = load i64, i64* @timer_error, align 8
  %9 = sub i64 %7, %8
  ret i64 %9
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @timer_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i64 @timer_get()
  store i64 %3, i64* %1, align 8
  %4 = call i64 @timer_get()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* %1, align 8
  %7 = sub i64 %5, %6
  store i64 %7, i64* @timer_error, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i64 0, i64 0), i8* %4)
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @warning(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.44, i64 0, i64 0), i8* %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @smalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #8
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.47, i64 0, i64 0))
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i8*, i8** %3, align 8
  ret i8* %10
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @scalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.48, i64 0, i64 0))
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i8*, i8** %5, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @srealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i8* @realloc(i8* %5, i64 %6) #8
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  call void @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.49, i64 0, i64 0))
  br label %11

11:                                               ; preds = %10, %2
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @srandnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = mul nsw i32 %5, 104623
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 521288629, %11 ]
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* %2, align 4
  %15 = mul nsw i32 %14, 48947
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 362436069, %20 ]
  store i32 %22, i32* @randum_z, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @randum_z, align 4
  %3 = and i32 %2, 65535
  %4 = mul i32 36969, %3
  %5 = load i32, i32* @randum_z, align 4
  %6 = lshr i32 %5, 16
  %7 = add i32 %4, %6
  store i32 %7, i32* @randum_z, align 4
  %8 = load i32, i32* @randum_w, align 4
  %9 = and i32 %8, 65535
  %10 = mul i32 18000, %9
  %11 = load i32, i32* @randum_w, align 4
  %12 = lshr i32 %11, 16
  %13 = add i32 %10, %12
  store i32 %13, i32* @randum_w, align 4
  %14 = load i32, i32* @randum_z, align 4
  %15 = shl i32 %14, 16
  %16 = load i32, i32* @randum_w, align 4
  %17 = add i32 %15, %16
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @normalnum(double %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  %10 = load i32, i32* @normalnum.call, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load i32, i32* @normalnum.call, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* @normalnum.call, align 4
  %17 = load double, double* %4, align 8
  %18 = load double, double* %5, align 8
  %19 = load double, double* @normalnum.X2, align 8
  %20 = fmul double %18, %19
  %21 = fadd double %17, %20
  store double %21, double* %3, align 8
  br label %69

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %45, %22
  %24 = call i32 @randnum()
  %25 = uitofp i32 %24 to double
  %26 = fdiv double %25, 0x41DFFFFFFFC00000
  %27 = fmul double %26, 2.000000e+00
  %28 = fadd double -1.000000e+00, %27
  store double %28, double* %6, align 8
  %29 = call i32 @randnum()
  %30 = uitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = fmul double %31, 2.000000e+00
  %33 = fadd double -1.000000e+00, %32
  store double %33, double* %7, align 8
  %34 = load double, double* %6, align 8
  %35 = call double @pow(double %34, double 2.000000e+00) #8
  %36 = load double, double* %7, align 8
  %37 = call double @pow(double %36, double 2.000000e+00) #8
  %38 = fadd double %35, %37
  store double %38, double* %8, align 8
  br label %39

39:                                               ; preds = %23
  %40 = load double, double* %8, align 8
  %41 = fcmp oge double %40, 1.000000e+00
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load double, double* %8, align 8
  %44 = fcmp oeq double %43, 0.000000e+00
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ true, %39 ], [ %44, %42 ]
  br i1 %46, label %23, label %47

47:                                               ; preds = %45
  %48 = load double, double* %8, align 8
  %49 = call double @log(double %48) #8
  %50 = fmul double -2.000000e+00, %49
  %51 = load double, double* %8, align 8
  %52 = fdiv double %50, %51
  %53 = call double @sqrt(double %52) #8
  store double %53, double* %9, align 8
  %54 = load double, double* %6, align 8
  %55 = load double, double* %9, align 8
  %56 = fmul double %54, %55
  store double %56, double* @normalnum.X1, align 8
  %57 = load double, double* %7, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  store double %59, double* @normalnum.X2, align 8
  %60 = load i32, i32* @normalnum.call, align 4
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* @normalnum.call, align 4
  %64 = load double, double* %4, align 8
  %65 = load double, double* %5, align 8
  %66 = load double, double* @normalnum.X1, align 8
  %67 = fmul double %65, %66
  %68 = fadd double %64, %67
  store double %68, double* %3, align 8
  br label %69

69:                                               ; preds = %47, %12
  %70 = load double, double* %3, align 8
  ret double %70
}

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local double @prngnum() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 44488, i64* %1, align 8
  store i64 3399, i64* %2, align 8
  %4 = load i64, i64* @prngseed, align 8
  %5 = srem i64 %4, 44488
  %6 = mul nsw i64 48271, %5
  %7 = load i64, i64* @prngseed, align 8
  %8 = sdiv i64 %7, 44488
  %9 = mul nsw i64 3399, %8
  %10 = sub nsw i64 %6, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %0
  %14 = load i64, i64* %3, align 8
  store i64 %14, i64* @prngseed, align 8
  br label %18

15:                                               ; preds = %0
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 2147483647
  store i64 %17, i64* @prngseed, align 8
  br label %18

18:                                               ; preds = %15, %13
  %19 = load i64, i64* @prngseed, align 8
  %20 = sitofp i64 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  ret double %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @prng_set_seed(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  store i64 %4, i64* @prngseed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @VECTOR(float %0, float %1, float %2) #0 {
  %4 = alloca %struct.vector, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %9 = load float, float* %5, align 4
  %10 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  store float %9, float* %10, align 4
  %11 = load float, float* %6, align 4
  %12 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  store float %11, float* %12, align 4
  %13 = load float, float* %7, align 4
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  store float %13, float* %14, align 4
  %15 = bitcast { <2 x float>, float }* %8 to i8*
  %16 = bitcast %struct.vector* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = load { <2 x float>, float }, { <2 x float>, float }* %8, align 8
  ret { <2 x float>, float } %17
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_add(<2 x float> %0, float %1, <2 x float> %2, float %3) #4 {
  %5 = alloca %struct.vector, align 4
  %6 = alloca %struct.vector, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %struct.vector, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %11, align 4
  %12 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 1
  store float %1, float* %12, align 4
  %13 = bitcast %struct.vector* %6 to i8*
  %14 = bitcast { <2 x float>, float }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %15, align 4
  %16 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 1
  store float %3, float* %16, align 4
  %17 = bitcast %struct.vector* %8 to i8*
  %18 = bitcast { <2 x float>, float }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = fadd float %20, %22
  %24 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  store float %23, float* %24, align 4
  %25 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fadd float %26, %28
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  store float %29, float* %30, align 4
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 2
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = fadd float %32, %34
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  store float %35, float* %36, align 4
  %37 = bitcast { <2 x float>, float }* %10 to i8*
  %38 = bitcast %struct.vector* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load { <2 x float>, float }, { <2 x float>, float }* %10, align 8
  ret { <2 x float>, float } %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_cross(<2 x float> %0, float %1, <2 x float> %2, float %3) #4 {
  %5 = alloca %struct.vector, align 4
  %6 = alloca %struct.vector, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %struct.vector, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %11, align 4
  %12 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 1
  store float %1, float* %12, align 4
  %13 = bitcast %struct.vector* %6 to i8*
  %14 = bitcast { <2 x float>, float }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %15, align 4
  %16 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 1
  store float %3, float* %16, align 4
  %17 = bitcast %struct.vector* %8 to i8*
  %18 = bitcast { <2 x float>, float }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = fmul float %20, %22
  %24 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  store float %23, float* %24, align 4
  %25 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fmul float %26, %28
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  store float %29, float* %30, align 4
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 2
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = fmul float %32, %34
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  store float %35, float* %36, align 4
  %37 = bitcast { <2 x float>, float }* %10 to i8*
  %38 = bitcast %struct.vector* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load { <2 x float>, float }, { <2 x float>, float }* %10, align 8
  ret { <2 x float>, float } %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @vector_dot(<2 x float> %0, float %1, <2 x float> %2, float %3) #4 {
  %5 = alloca %struct.vector, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca %struct.vector, align 4
  %8 = alloca { <2 x float>, float }, align 4
  %9 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %9, align 4
  %10 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 1
  store float %1, float* %10, align 4
  %11 = bitcast %struct.vector* %5 to i8*
  %12 = bitcast { <2 x float>, float }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %8, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %13, align 4
  %14 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %8, i32 0, i32 1
  store float %3, float* %14, align 4
  %15 = bitcast %struct.vector* %7 to i8*
  %16 = bitcast { <2 x float>, float }* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  %17 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  %23 = load float, float* %22, align 4
  %24 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 1
  %25 = load float, float* %24, align 4
  %26 = fmul float %23, %25
  %27 = fadd float %21, %26
  %28 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  %29 = load float, float* %28, align 4
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %7, i32 0, i32 2
  %31 = load float, float* %30, align 4
  %32 = fmul float %29, %31
  %33 = fadd float %27, %32
  ret float %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_invert(<2 x float> %0, float %1) #4 {
  %3 = alloca %struct.vector, align 4
  %4 = alloca %struct.vector, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = alloca { <2 x float>, float }, align 8
  %7 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %5, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %7, align 4
  %8 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %5, i32 0, i32 1
  store float %1, float* %8, align 4
  %9 = bitcast %struct.vector* %4 to i8*
  %10 = bitcast { <2 x float>, float }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  %11 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %12 = load float, float* %11, align 4
  %13 = fneg float %12
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  store float %13, float* %14, align 4
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %16 = load float, float* %15, align 4
  %17 = fneg float %16
  %18 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  store float %17, float* %18, align 4
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %20 = load float, float* %19, align 4
  %21 = fneg float %20
  %22 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  store float %21, float* %22, align 4
  %23 = bitcast %struct.vector* %3 to i8*
  %24 = bitcast %struct.vector* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 12, i1 false)
  %25 = bitcast { <2 x float>, float }* %6 to i8*
  %26 = bitcast %struct.vector* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = load { <2 x float>, float }, { <2 x float>, float }* %6, align 8
  ret { <2 x float>, float } %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_normalize(<2 x float> %0, float %1) #4 {
  %3 = alloca %struct.vector, align 4
  %4 = alloca %struct.vector, align 4
  %5 = alloca { <2 x float>, float }, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %5, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %9, align 4
  %10 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %5, i32 0, i32 1
  store float %1, float* %10, align 4
  %11 = bitcast %struct.vector* %4 to i8*
  %12 = bitcast { <2 x float>, float }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  %13 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %14 = load float, float* %13, align 4
  %15 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %16 = load float, float* %15, align 4
  %17 = fmul float %14, %16
  %18 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %21 = load float, float* %20, align 4
  %22 = fmul float %19, %21
  %23 = fadd float %17, %22
  %24 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %25 = load float, float* %24, align 4
  %26 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %27 = load float, float* %26, align 4
  %28 = fmul float %25, %27
  %29 = fadd float %23, %28
  store float %29, float* %6, align 4
  %30 = load float, float* %6, align 4
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = bitcast %struct.vector* %3 to i8*
  %34 = bitcast %struct.vector* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  br label %55

35:                                               ; preds = %2
  %36 = load float, float* %6, align 4
  %37 = fpext float %36 to double
  %38 = call double @sqrt(double %37) #8
  %39 = fdiv double 1.000000e+00, %38
  %40 = fptrunc double %39 to float
  store float %40, float* %7, align 4
  %41 = load float, float* %7, align 4
  %42 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 0
  %43 = load float, float* %42, align 4
  %44 = fmul float %43, %41
  store float %44, float* %42, align 4
  %45 = load float, float* %7, align 4
  %46 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 1
  %47 = load float, float* %46, align 4
  %48 = fmul float %47, %45
  store float %48, float* %46, align 4
  %49 = load float, float* %7, align 4
  %50 = getelementptr inbounds %struct.vector, %struct.vector* %4, i32 0, i32 2
  %51 = load float, float* %50, align 4
  %52 = fmul float %51, %49
  store float %52, float* %50, align 4
  %53 = bitcast %struct.vector* %3 to i8*
  %54 = bitcast %struct.vector* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 12, i1 false)
  br label %55

55:                                               ; preds = %35, %32
  %56 = bitcast { <2 x float>, float }* %8 to i8*
  %57 = bitcast %struct.vector* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = load { <2 x float>, float }, { <2 x float>, float }* %8, align 8
  ret { <2 x float>, float } %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_scalar(<2 x float> %0, float %1, float %2) #4 {
  %4 = alloca %struct.vector, align 4
  %5 = alloca %struct.vector, align 4
  %6 = alloca { <2 x float>, float }, align 4
  %7 = alloca float, align 4
  %8 = alloca { <2 x float>, float }, align 8
  %9 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %9, align 4
  %10 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %6, i32 0, i32 1
  store float %1, float* %10, align 4
  %11 = bitcast %struct.vector* %5 to i8*
  %12 = bitcast { <2 x float>, float }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 12, i1 false)
  store float %2, float* %7, align 4
  %13 = load float, float* %7, align 4
  %14 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  %15 = load float, float* %14, align 4
  %16 = fmul float %15, %13
  store float %16, float* %14, align 4
  %17 = load float, float* %7, align 4
  %18 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  %19 = load float, float* %18, align 4
  %20 = fmul float %19, %17
  store float %20, float* %18, align 4
  %21 = load float, float* %7, align 4
  %22 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fmul float %23, %21
  store float %24, float* %22, align 4
  %25 = bitcast %struct.vector* %4 to i8*
  %26 = bitcast %struct.vector* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 12, i1 false)
  %27 = bitcast { <2 x float>, float }* %8 to i8*
  %28 = bitcast %struct.vector* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 12, i1 false)
  %29 = load { <2 x float>, float }, { <2 x float>, float }* %8, align 8
  ret { <2 x float>, float } %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local { <2 x float>, float } @vector_sub(<2 x float> %0, float %1, <2 x float> %2, float %3) #4 {
  %5 = alloca %struct.vector, align 4
  %6 = alloca %struct.vector, align 4
  %7 = alloca { <2 x float>, float }, align 4
  %8 = alloca %struct.vector, align 4
  %9 = alloca { <2 x float>, float }, align 4
  %10 = alloca { <2 x float>, float }, align 8
  %11 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 0
  store <2 x float> %0, <2 x float>* %11, align 4
  %12 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %7, i32 0, i32 1
  store float %1, float* %12, align 4
  %13 = bitcast %struct.vector* %6 to i8*
  %14 = bitcast { <2 x float>, float }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 12, i1 false)
  %15 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 0
  store <2 x float> %2, <2 x float>* %15, align 4
  %16 = getelementptr inbounds { <2 x float>, float }, { <2 x float>, float }* %9, i32 0, i32 1
  store float %3, float* %16, align 4
  %17 = bitcast %struct.vector* %8 to i8*
  %18 = bitcast { <2 x float>, float }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 0
  %20 = load float, float* %19, align 4
  %21 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 0
  %22 = load float, float* %21, align 4
  %23 = fsub float %20, %22
  %24 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 0
  store float %23, float* %24, align 4
  %25 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 1
  %28 = load float, float* %27, align 4
  %29 = fsub float %26, %28
  %30 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 1
  store float %29, float* %30, align 4
  %31 = getelementptr inbounds %struct.vector, %struct.vector* %6, i32 0, i32 2
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.vector, %struct.vector* %8, i32 0, i32 2
  %34 = load float, float* %33, align 4
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds %struct.vector, %struct.vector* %5, i32 0, i32 2
  store float %35, float* %36, align 4
  %37 = bitcast { <2 x float>, float }* %10 to i8*
  %38 = bitcast %struct.vector* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load { <2 x float>, float }, { <2 x float>, float }* %10, align 8
  ret { <2 x float>, float } %39
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
