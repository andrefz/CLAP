; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.avi_t = type { i64, i64, i64, i64, double, [8 x i8], [8 x i8], i64, i64, [4 x i8], i64, i64, [8 x %struct.track_s], i64, i64, i64, i64, i64, [16 x i8]*, %struct.audio_index_entry*, i64, i64, i32, i64, i32, i32 }
%struct.track_s = type { i64, i64, i64, i64, i64, i64, i64, i64, [4 x i8], i64, i64, i64, i64, %struct.audio_index_entry* }
%struct.audio_index_entry = type { i64, i64, i64 }
%struct.public_struct = type { i32, i32, i32, float, i32, i32, i32*, i32*, i32*, i32*, float*, i32, i32, i32*, i32*, i32*, i32*, float*, i32, %struct.avi_t*, i32, i32, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.private_struct = type { i32, i32, i32*, i32*, i32*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, i32* }

@AVI_errno = common dso_local global i64 0, align 8
@avi_errors = dso_local global [15 x i8*] [i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.20 = private unnamed_addr constant [18 x i8] c"avilib - No Error\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"avilib - AVI file size limit reached\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"avilib - Error opening AVI file\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"avilib - Error reading from AVI file\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"avilib - Error writing to AVI file\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"avilib - Error writing index (file may still be useable)\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"avilib - Error closing AVI file\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"avilib - Operation (read/write) not permitted\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"avilib - Out of memory (malloc failed)\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"avilib - Not an AVI file\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"avilib - AVI file has no header list (corrupted?)\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"avilib - AVI file has no MOVI list (corrupted?)\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"avilib - AVI file has no video data\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"avilib - operation needs an index\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"avilib - Unkown Error\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"RGB\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"AVI \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"hdrl\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"avih\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"strl\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"strh\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"vids\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"strf\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"auds\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"AVI_close_output_file: # of header bytes too small\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"JUNK\00", align 1
@id_str = internal global [64 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"%s-%s\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"my\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"0.00\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"movi\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error - only %d audio tracks supported\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"0%1dwb\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"00db\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"idx1\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"ISFT\00", align 1
@num_avi_errors = internal global i32 15, align 4
@.str.35 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"REASON\00", align 1
@error_string = internal global [4096 x i8] zeroinitializer, align 16
@.str.37 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Error with AVI_read_frame\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.1.43 = private unnamed_addr constant [37 x i8] c"The file was not opened for writing\0A\00", align 1
@.str.2.44 = private unnamed_addr constant [22 x i8] c"Total AVI Frames: %d\0A\00", align 1
@.str.3.45 = private unnamed_addr constant [22 x i8] c"Frames Processed: %d\0A\00", align 1
@.str.4.46 = private unnamed_addr constant [16 x i8] c"endoPoints: %d\0A\00", align 1
@.str.5.47 = private unnamed_addr constant [14 x i8] c"epiPoints: %d\00", align 1
@.str.6.48 = private unnamed_addr constant [16 x i8] c"\0A---Frame %d---\00", align 1
@.str.7.49 = private unnamed_addr constant [11 x i8] c"\0A--endo--\0A\00", align 1
@.str.8.50 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.9.51 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10.52 = private unnamed_addr constant [10 x i8] c"\0A--epi--\0A\00", align 1
@.str.11.53 = private unnamed_addr constant [53 x i8] c"ERROR: usage: heartwall <inputfile> <num of frames>\0A\00", align 1
@.str.12.54 = private unnamed_addr constant [31 x i8] c"Error with AVI_open_input_file\00", align 1
@.str.13.55 = private unnamed_addr constant [83 x i8] c"ERROR: %d is an incorrect number of frames specified, select in the range of 0-%d\0A\00", align 1
@.str.14.56 = private unnamed_addr constant [17 x i8] c"frame progress: \00", align 1
@.str.15.57 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.avi_t* @AVI_open_output_file(i8* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2048 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = call noalias i8* @malloc(i64 1088) #7
  %9 = bitcast i8* %8 to %struct.avi_t*
  store %struct.avi_t* %9, %struct.avi_t** %4, align 8
  %10 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %11 = icmp eq %struct.avi_t* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 8, i64* @AVI_errno, align 8
  store %struct.avi_t* null, %struct.avi_t** %2, align 8
  br label %70

13:                                               ; preds = %1
  %14 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %15 = bitcast %struct.avi_t* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %15, i8 0, i64 1088, i1 false)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 420, %18
  %20 = call i32 (i8*, i32, ...) @open(i8* %16, i32 66, i32 %19)
  %21 = sext i32 %20 to i64
  %22 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %25 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  store i64 2, i64* @AVI_errno, align 8
  %29 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %30 = bitcast %struct.avi_t* %29 to i8*
  call void @free(i8* %30) #7
  store %struct.avi_t* null, %struct.avi_t** %2, align 8
  br label %70

31:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %39, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 2048
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 %37
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %32

42:                                               ; preds = %32
  %43 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %44 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %7, i64 0, i64 0
  %48 = call i64 @avi_write(i32 %46, i8* %47, i64 2048)
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 2048
  br i1 %51, label %52, label %60

52:                                               ; preds = %42
  %53 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %54 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = call i32 @close(i32 %56)
  store i64 4, i64* @AVI_errno, align 8
  %58 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %59 = bitcast %struct.avi_t* %58 to i8*
  call void @free(i8* %59) #7
  store %struct.avi_t* null, %struct.avi_t** %2, align 8
  br label %70

60:                                               ; preds = %42
  %61 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %62 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %61, i32 0, i32 13
  store i64 2048, i64* %62, align 8
  %63 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %64 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  %65 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %66 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %65, i32 0, i32 24
  store i32 0, i32* %66, align 8
  %67 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %68 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %67, i32 0, i32 25
  store i32 0, i32* %68, align 4
  %69 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  store %struct.avi_t* %69, %struct.avi_t** %2, align 8
  br label %70

70:                                               ; preds = %60, %52, %28, %12
  %71 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  ret %struct.avi_t* %71
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @avi_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub i64 %19, %20
  %22 = call i64 @write(i32 %15, i8* %18, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %33

27:                                               ; preds = %14
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %9, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

declare dso_local i32 @close(i32) #3

declare dso_local i64 @write(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @AVI_set_video(%struct.avi_t* %0, i32 %1, i32 %2, double %3, i8* %4) #0 {
  %6 = alloca %struct.avi_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %12 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  br label %46

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %20 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %24 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %23, i32 0, i32 3
  store i64 %22, i64* %24, align 8
  %25 = load double, double* %9, align 8
  %26 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %27 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %26, i32 0, i32 4
  store double %25, double* %27, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 3) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %33 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %32, i32 0, i32 5
  %34 = getelementptr inbounds [8 x i8], [8 x i8]* %33, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 4, i1 false)
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %37 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %36, i32 0, i32 5
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %37, i64 0, i64 0
  %39 = load i8*, i8** %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 1 %39, i64 4, i1 false)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %42 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %41, i32 0, i32 5
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %42, i64 0, i64 4
  store i8 0, i8* %43, align 4
  %44 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %45 = call i32 @avi_update_header(%struct.avi_t* %44)
  br label %46

46:                                               ; preds = %40, %15
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @avi_update_header(%struct.avi_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avi_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2048 x i8], align 16
  %15 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  store i32 -16781309, i32* %10, align 4
  store i32 1, i32* %6, align 4
  %16 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %17 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %16, i32 0, i32 4
  %18 = load double, double* %17, align 8
  %19 = fcmp olt double %18, 1.000000e-03
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 4
  %24 = load double, double* %23, align 8
  %25 = fmul double 1.000000e+06, %24
  %26 = fadd double %25, 5.000000e-01
  %27 = fptosi double %26 to i32
  store i32 %27, i32* %8, align 4
  %28 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 4
  %30 = load double, double* %29, align 8
  %31 = fdiv double 1.000000e+06, %30
  %32 = fadd double %31, 5.000000e-01
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %21, %20
  store i64 0, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp sle i64 %35, 2044
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %39 = load i64, i64* %15, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i1 false)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %15, align 8
  %43 = add nsw i64 %42, 4
  store i64 %43, i64* %15, align 8
  %44 = load i64, i64* %15, align 8
  %45 = icmp sle i64 %44, 2044
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %48 = load i64, i64* %15, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i32, i32* %10, align 4
  call void @long2str(i8* %49, i32 %50)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i64, i64* %15, align 8
  %53 = add nsw i64 %52, 4
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp sle i64 %54, 2044
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %58 = load i64, i64* %15, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 4, i1 false)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load i64, i64* %15, align 8
  %62 = add nsw i64 %61, 4
  store i64 %62, i64* %15, align 8
  %63 = load i64, i64* %15, align 8
  %64 = icmp sle i64 %63, 2044
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %67 = load i64, i64* %15, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %68, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i64, i64* %15, align 8
  %71 = add nsw i64 %70, 4
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %15, align 8
  %73 = icmp sle i64 %72, 2044
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %76 = load i64, i64* %15, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  call void @long2str(i8* %77, i32 0)
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i64, i64* %15, align 8
  %80 = add nsw i64 %79, 4
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load i64, i64* %15, align 8
  %84 = icmp sle i64 %83, 2044
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %87 = load i64, i64* %15, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %88, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4, i1 false)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load i64, i64* %15, align 8
  %91 = add nsw i64 %90, 4
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp sle i64 %92, 2044
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %96 = load i64, i64* %15, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %97, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4, i1 false)
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i64, i64* %15, align 8
  %100 = add nsw i64 %99, 4
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %15, align 8
  %102 = icmp sle i64 %101, 2044
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %105 = load i64, i64* %15, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  call void @long2str(i8* %106, i32 56)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load i64, i64* %15, align 8
  %109 = add nsw i64 %108, 4
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %15, align 8
  %111 = icmp sle i64 %110, 2044
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %114 = load i64, i64* %15, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i32, i32* %7, align 4
  call void @long2str(i8* %115, i32 %116)
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i64, i64* %15, align 8
  %119 = add nsw i64 %118, 4
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = icmp sle i64 %120, 2044
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %124 = load i64, i64* %15, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  call void @long2str(i8* %125, i32 0)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i64, i64* %15, align 8
  %128 = add nsw i64 %127, 4
  store i64 %128, i64* %15, align 8
  %129 = load i64, i64* %15, align 8
  %130 = icmp sle i64 %129, 2044
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %133 = load i64, i64* %15, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  call void @long2str(i8* %134, i32 0)
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i64, i64* %15, align 8
  %137 = add nsw i64 %136, 4
  store i64 %137, i64* %15, align 8
  store i32 256, i32* %9, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, 16
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %148 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %147, i32 0, i32 22
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* %9, align 4
  %153 = or i32 %152, 32
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %151, %146, %143
  %155 = load i64, i64* %15, align 8
  %156 = icmp sle i64 %155, 2044
  br i1 %156, label %157, label %162

157:                                              ; preds = %154
  %158 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %159 = load i64, i64* %15, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  %161 = load i32, i32* %9, align 4
  call void @long2str(i8* %160, i32 %161)
  br label %162

162:                                              ; preds = %157, %154
  %163 = load i64, i64* %15, align 8
  %164 = add nsw i64 %163, 4
  store i64 %164, i64* %15, align 8
  %165 = load i64, i64* %15, align 8
  %166 = icmp sle i64 %165, 2044
  br i1 %166, label %167, label %171

167:                                              ; preds = %162
  %168 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %169 = load i64, i64* %15, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  call void @long2str(i8* %170, i32 0)
  br label %171

171:                                              ; preds = %167, %162
  %172 = load i64, i64* %15, align 8
  %173 = add nsw i64 %172, 4
  store i64 %173, i64* %15, align 8
  %174 = load i64, i64* %15, align 8
  %175 = icmp sle i64 %174, 2044
  br i1 %175, label %176, label %180

176:                                              ; preds = %171
  %177 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %178 = load i64, i64* %15, align 8
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  call void @long2str(i8* %179, i32 0)
  br label %180

180:                                              ; preds = %176, %171
  %181 = load i64, i64* %15, align 8
  %182 = add nsw i64 %181, 4
  store i64 %182, i64* %15, align 8
  %183 = load i64, i64* %15, align 8
  %184 = icmp sle i64 %183, 2044
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %187 = load i64, i64* %15, align 8
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  %189 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %190 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %189, i32 0, i32 24
  %191 = load i32, i32* %190, align 8
  %192 = add nsw i32 %191, 1
  call void @long2str(i8* %188, i32 %192)
  br label %193

193:                                              ; preds = %185, %180
  %194 = load i64, i64* %15, align 8
  %195 = add nsw i64 %194, 4
  store i64 %195, i64* %15, align 8
  %196 = load i64, i64* %15, align 8
  %197 = icmp sle i64 %196, 2044
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %200 = load i64, i64* %15, align 8
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  call void @long2str(i8* %201, i32 0)
  br label %202

202:                                              ; preds = %198, %193
  %203 = load i64, i64* %15, align 8
  %204 = add nsw i64 %203, 4
  store i64 %204, i64* %15, align 8
  %205 = load i64, i64* %15, align 8
  %206 = icmp sle i64 %205, 2044
  br i1 %206, label %207, label %215

207:                                              ; preds = %202
  %208 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %209 = load i64, i64* %15, align 8
  %210 = getelementptr inbounds i8, i8* %208, i64 %209
  %211 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %212 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = trunc i64 %213 to i32
  call void @long2str(i8* %210, i32 %214)
  br label %215

215:                                              ; preds = %207, %202
  %216 = load i64, i64* %15, align 8
  %217 = add nsw i64 %216, 4
  store i64 %217, i64* %15, align 8
  %218 = load i64, i64* %15, align 8
  %219 = icmp sle i64 %218, 2044
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %222 = load i64, i64* %15, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %225 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = trunc i64 %226 to i32
  call void @long2str(i8* %223, i32 %227)
  br label %228

228:                                              ; preds = %220, %215
  %229 = load i64, i64* %15, align 8
  %230 = add nsw i64 %229, 4
  store i64 %230, i64* %15, align 8
  %231 = load i64, i64* %15, align 8
  %232 = icmp sle i64 %231, 2044
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %235 = load i64, i64* %15, align 8
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  call void @long2str(i8* %236, i32 0)
  br label %237

237:                                              ; preds = %233, %228
  %238 = load i64, i64* %15, align 8
  %239 = add nsw i64 %238, 4
  store i64 %239, i64* %15, align 8
  %240 = load i64, i64* %15, align 8
  %241 = icmp sle i64 %240, 2044
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %244 = load i64, i64* %15, align 8
  %245 = getelementptr inbounds i8, i8* %243, i64 %244
  call void @long2str(i8* %245, i32 0)
  br label %246

246:                                              ; preds = %242, %237
  %247 = load i64, i64* %15, align 8
  %248 = add nsw i64 %247, 4
  store i64 %248, i64* %15, align 8
  %249 = load i64, i64* %15, align 8
  %250 = icmp sle i64 %249, 2044
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %253 = load i64, i64* %15, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  call void @long2str(i8* %254, i32 0)
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i64, i64* %15, align 8
  %257 = add nsw i64 %256, 4
  store i64 %257, i64* %15, align 8
  %258 = load i64, i64* %15, align 8
  %259 = icmp sle i64 %258, 2044
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %262 = load i64, i64* %15, align 8
  %263 = getelementptr inbounds i8, i8* %261, i64 %262
  call void @long2str(i8* %263, i32 0)
  br label %264

264:                                              ; preds = %260, %255
  %265 = load i64, i64* %15, align 8
  %266 = add nsw i64 %265, 4
  store i64 %266, i64* %15, align 8
  %267 = load i64, i64* %15, align 8
  %268 = icmp sle i64 %267, 2044
  br i1 %268, label %269, label %273

269:                                              ; preds = %264
  %270 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %271 = load i64, i64* %15, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %272, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %273

273:                                              ; preds = %269, %264
  %274 = load i64, i64* %15, align 8
  %275 = add nsw i64 %274, 4
  store i64 %275, i64* %15, align 8
  %276 = load i64, i64* %15, align 8
  %277 = icmp sle i64 %276, 2044
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %280 = load i64, i64* %15, align 8
  %281 = getelementptr inbounds i8, i8* %279, i64 %280
  call void @long2str(i8* %281, i32 0)
  br label %282

282:                                              ; preds = %278, %273
  %283 = load i64, i64* %15, align 8
  %284 = add nsw i64 %283, 4
  store i64 %284, i64* %15, align 8
  %285 = load i64, i64* %15, align 8
  %286 = trunc i64 %285 to i32
  store i32 %286, i32* %12, align 4
  %287 = load i64, i64* %15, align 8
  %288 = icmp sle i64 %287, 2044
  br i1 %288, label %289, label %293

289:                                              ; preds = %282
  %290 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %291 = load i64, i64* %15, align 8
  %292 = getelementptr inbounds i8, i8* %290, i64 %291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %292, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4, i1 false)
  br label %293

293:                                              ; preds = %289, %282
  %294 = load i64, i64* %15, align 8
  %295 = add nsw i64 %294, 4
  store i64 %295, i64* %15, align 8
  %296 = load i64, i64* %15, align 8
  %297 = icmp sle i64 %296, 2044
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %300 = load i64, i64* %15, align 8
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %301, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i1 false)
  br label %302

302:                                              ; preds = %298, %293
  %303 = load i64, i64* %15, align 8
  %304 = add nsw i64 %303, 4
  store i64 %304, i64* %15, align 8
  %305 = load i64, i64* %15, align 8
  %306 = icmp sle i64 %305, 2044
  br i1 %306, label %307, label %311

307:                                              ; preds = %302
  %308 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %309 = load i64, i64* %15, align 8
  %310 = getelementptr inbounds i8, i8* %308, i64 %309
  call void @long2str(i8* %310, i32 56)
  br label %311

311:                                              ; preds = %307, %302
  %312 = load i64, i64* %15, align 8
  %313 = add nsw i64 %312, 4
  store i64 %313, i64* %15, align 8
  %314 = load i64, i64* %15, align 8
  %315 = icmp sle i64 %314, 2044
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %318 = load i64, i64* %15, align 8
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %319, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 4, i1 false)
  br label %320

320:                                              ; preds = %316, %311
  %321 = load i64, i64* %15, align 8
  %322 = add nsw i64 %321, 4
  store i64 %322, i64* %15, align 8
  %323 = load i64, i64* %15, align 8
  %324 = icmp sle i64 %323, 2044
  br i1 %324, label %325, label %332

325:                                              ; preds = %320
  %326 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %327 = load i64, i64* %15, align 8
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  %329 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %330 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %329, i32 0, i32 5
  %331 = getelementptr inbounds [8 x i8], [8 x i8]* %330, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %328, i8* align 8 %331, i64 4, i1 false)
  br label %332

332:                                              ; preds = %325, %320
  %333 = load i64, i64* %15, align 8
  %334 = add nsw i64 %333, 4
  store i64 %334, i64* %15, align 8
  %335 = load i64, i64* %15, align 8
  %336 = icmp sle i64 %335, 2044
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %339 = load i64, i64* %15, align 8
  %340 = getelementptr inbounds i8, i8* %338, i64 %339
  call void @long2str(i8* %340, i32 0)
  br label %341

341:                                              ; preds = %337, %332
  %342 = load i64, i64* %15, align 8
  %343 = add nsw i64 %342, 4
  store i64 %343, i64* %15, align 8
  %344 = load i64, i64* %15, align 8
  %345 = icmp sle i64 %344, 2044
  br i1 %345, label %346, label %350

346:                                              ; preds = %341
  %347 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %348 = load i64, i64* %15, align 8
  %349 = getelementptr inbounds i8, i8* %347, i64 %348
  call void @long2str(i8* %349, i32 0)
  br label %350

350:                                              ; preds = %346, %341
  %351 = load i64, i64* %15, align 8
  %352 = add nsw i64 %351, 4
  store i64 %352, i64* %15, align 8
  %353 = load i64, i64* %15, align 8
  %354 = icmp sle i64 %353, 2044
  br i1 %354, label %355, label %359

355:                                              ; preds = %350
  %356 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %357 = load i64, i64* %15, align 8
  %358 = getelementptr inbounds i8, i8* %356, i64 %357
  call void @long2str(i8* %358, i32 0)
  br label %359

359:                                              ; preds = %355, %350
  %360 = load i64, i64* %15, align 8
  %361 = add nsw i64 %360, 4
  store i64 %361, i64* %15, align 8
  %362 = load i64, i64* %15, align 8
  %363 = icmp sle i64 %362, 2044
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %366 = load i64, i64* %15, align 8
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  call void @long2str(i8* %367, i32 1000000)
  br label %368

368:                                              ; preds = %364, %359
  %369 = load i64, i64* %15, align 8
  %370 = add nsw i64 %369, 4
  store i64 %370, i64* %15, align 8
  %371 = load i64, i64* %15, align 8
  %372 = icmp sle i64 %371, 2044
  br i1 %372, label %373, label %378

373:                                              ; preds = %368
  %374 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %375 = load i64, i64* %15, align 8
  %376 = getelementptr inbounds i8, i8* %374, i64 %375
  %377 = load i32, i32* %8, align 4
  call void @long2str(i8* %376, i32 %377)
  br label %378

378:                                              ; preds = %373, %368
  %379 = load i64, i64* %15, align 8
  %380 = add nsw i64 %379, 4
  store i64 %380, i64* %15, align 8
  %381 = load i64, i64* %15, align 8
  %382 = icmp sle i64 %381, 2044
  br i1 %382, label %383, label %387

383:                                              ; preds = %378
  %384 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %385 = load i64, i64* %15, align 8
  %386 = getelementptr inbounds i8, i8* %384, i64 %385
  call void @long2str(i8* %386, i32 0)
  br label %387

387:                                              ; preds = %383, %378
  %388 = load i64, i64* %15, align 8
  %389 = add nsw i64 %388, 4
  store i64 %389, i64* %15, align 8
  %390 = load i64, i64* %15, align 8
  %391 = icmp sle i64 %390, 2044
  br i1 %391, label %392, label %396

392:                                              ; preds = %387
  %393 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %394 = load i64, i64* %15, align 8
  %395 = getelementptr inbounds i8, i8* %393, i64 %394
  call void @long2str(i8* %395, i32 0)
  br label %396

396:                                              ; preds = %392, %387
  %397 = load i64, i64* %15, align 8
  %398 = add nsw i64 %397, 4
  store i64 %398, i64* %15, align 8
  %399 = load i64, i64* %15, align 8
  %400 = icmp sle i64 %399, 2044
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %403 = load i64, i64* %15, align 8
  %404 = getelementptr inbounds i8, i8* %402, i64 %403
  call void @long2str(i8* %404, i32 0)
  br label %405

405:                                              ; preds = %401, %396
  %406 = load i64, i64* %15, align 8
  %407 = add nsw i64 %406, 4
  store i64 %407, i64* %15, align 8
  %408 = load i64, i64* %15, align 8
  %409 = icmp sle i64 %408, 2044
  br i1 %409, label %410, label %414

410:                                              ; preds = %405
  %411 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %412 = load i64, i64* %15, align 8
  %413 = getelementptr inbounds i8, i8* %411, i64 %412
  call void @long2str(i8* %413, i32 -1)
  br label %414

414:                                              ; preds = %410, %405
  %415 = load i64, i64* %15, align 8
  %416 = add nsw i64 %415, 4
  store i64 %416, i64* %15, align 8
  %417 = load i64, i64* %15, align 8
  %418 = icmp sle i64 %417, 2044
  br i1 %418, label %419, label %423

419:                                              ; preds = %414
  %420 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %421 = load i64, i64* %15, align 8
  %422 = getelementptr inbounds i8, i8* %420, i64 %421
  call void @long2str(i8* %422, i32 0)
  br label %423

423:                                              ; preds = %419, %414
  %424 = load i64, i64* %15, align 8
  %425 = add nsw i64 %424, 4
  store i64 %425, i64* %15, align 8
  %426 = load i64, i64* %15, align 8
  %427 = icmp sle i64 %426, 2044
  br i1 %427, label %428, label %432

428:                                              ; preds = %423
  %429 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %430 = load i64, i64* %15, align 8
  %431 = getelementptr inbounds i8, i8* %429, i64 %430
  call void @long2str(i8* %431, i32 0)
  br label %432

432:                                              ; preds = %428, %423
  %433 = load i64, i64* %15, align 8
  %434 = add nsw i64 %433, 4
  store i64 %434, i64* %15, align 8
  %435 = load i64, i64* %15, align 8
  %436 = icmp sle i64 %435, 2044
  br i1 %436, label %437, label %441

437:                                              ; preds = %432
  %438 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %439 = load i64, i64* %15, align 8
  %440 = getelementptr inbounds i8, i8* %438, i64 %439
  call void @long2str(i8* %440, i32 0)
  br label %441

441:                                              ; preds = %437, %432
  %442 = load i64, i64* %15, align 8
  %443 = add nsw i64 %442, 4
  store i64 %443, i64* %15, align 8
  %444 = load i64, i64* %15, align 8
  %445 = icmp sle i64 %444, 2044
  br i1 %445, label %446, label %450

446:                                              ; preds = %441
  %447 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %448 = load i64, i64* %15, align 8
  %449 = getelementptr inbounds i8, i8* %447, i64 %448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %449, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i1 false)
  br label %450

450:                                              ; preds = %446, %441
  %451 = load i64, i64* %15, align 8
  %452 = add nsw i64 %451, 4
  store i64 %452, i64* %15, align 8
  %453 = load i64, i64* %15, align 8
  %454 = icmp sle i64 %453, 2044
  br i1 %454, label %455, label %459

455:                                              ; preds = %450
  %456 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %457 = load i64, i64* %15, align 8
  %458 = getelementptr inbounds i8, i8* %456, i64 %457
  call void @long2str(i8* %458, i32 40)
  br label %459

459:                                              ; preds = %455, %450
  %460 = load i64, i64* %15, align 8
  %461 = add nsw i64 %460, 4
  store i64 %461, i64* %15, align 8
  %462 = load i64, i64* %15, align 8
  %463 = icmp sle i64 %462, 2044
  br i1 %463, label %464, label %468

464:                                              ; preds = %459
  %465 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %466 = load i64, i64* %15, align 8
  %467 = getelementptr inbounds i8, i8* %465, i64 %466
  call void @long2str(i8* %467, i32 40)
  br label %468

468:                                              ; preds = %464, %459
  %469 = load i64, i64* %15, align 8
  %470 = add nsw i64 %469, 4
  store i64 %470, i64* %15, align 8
  %471 = load i64, i64* %15, align 8
  %472 = icmp sle i64 %471, 2044
  br i1 %472, label %473, label %481

473:                                              ; preds = %468
  %474 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %475 = load i64, i64* %15, align 8
  %476 = getelementptr inbounds i8, i8* %474, i64 %475
  %477 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %478 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %477, i32 0, i32 2
  %479 = load i64, i64* %478, align 8
  %480 = trunc i64 %479 to i32
  call void @long2str(i8* %476, i32 %480)
  br label %481

481:                                              ; preds = %473, %468
  %482 = load i64, i64* %15, align 8
  %483 = add nsw i64 %482, 4
  store i64 %483, i64* %15, align 8
  %484 = load i64, i64* %15, align 8
  %485 = icmp sle i64 %484, 2044
  br i1 %485, label %486, label %494

486:                                              ; preds = %481
  %487 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %488 = load i64, i64* %15, align 8
  %489 = getelementptr inbounds i8, i8* %487, i64 %488
  %490 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %491 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %490, i32 0, i32 3
  %492 = load i64, i64* %491, align 8
  %493 = trunc i64 %492 to i32
  call void @long2str(i8* %489, i32 %493)
  br label %494

494:                                              ; preds = %486, %481
  %495 = load i64, i64* %15, align 8
  %496 = add nsw i64 %495, 4
  store i64 %496, i64* %15, align 8
  %497 = load i64, i64* %15, align 8
  %498 = icmp sle i64 %497, 2046
  br i1 %498, label %499, label %505

499:                                              ; preds = %494
  %500 = load i64, i64* %15, align 8
  %501 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %500
  store i8 1, i8* %501, align 1
  %502 = load i64, i64* %15, align 8
  %503 = add nsw i64 %502, 1
  %504 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %503
  store i8 0, i8* %504, align 1
  br label %505

505:                                              ; preds = %499, %494
  %506 = load i64, i64* %15, align 8
  %507 = add nsw i64 %506, 2
  store i64 %507, i64* %15, align 8
  %508 = load i64, i64* %15, align 8
  %509 = icmp sle i64 %508, 2046
  br i1 %509, label %510, label %516

510:                                              ; preds = %505
  %511 = load i64, i64* %15, align 8
  %512 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %511
  store i8 24, i8* %512, align 1
  %513 = load i64, i64* %15, align 8
  %514 = add nsw i64 %513, 1
  %515 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %514
  store i8 0, i8* %515, align 1
  br label %516

516:                                              ; preds = %510, %505
  %517 = load i64, i64* %15, align 8
  %518 = add nsw i64 %517, 2
  store i64 %518, i64* %15, align 8
  %519 = load i64, i64* %15, align 8
  %520 = icmp sle i64 %519, 2044
  br i1 %520, label %521, label %528

521:                                              ; preds = %516
  %522 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %523 = load i64, i64* %15, align 8
  %524 = getelementptr inbounds i8, i8* %522, i64 %523
  %525 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %526 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %525, i32 0, i32 5
  %527 = getelementptr inbounds [8 x i8], [8 x i8]* %526, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %524, i8* align 8 %527, i64 4, i1 false)
  br label %528

528:                                              ; preds = %521, %516
  %529 = load i64, i64* %15, align 8
  %530 = add nsw i64 %529, 4
  store i64 %530, i64* %15, align 8
  %531 = load i64, i64* %15, align 8
  %532 = icmp sle i64 %531, 2044
  br i1 %532, label %533, label %546

533:                                              ; preds = %528
  %534 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %535 = load i64, i64* %15, align 8
  %536 = getelementptr inbounds i8, i8* %534, i64 %535
  %537 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %538 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %537, i32 0, i32 2
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %541 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %540, i32 0, i32 3
  %542 = load i64, i64* %541, align 8
  %543 = mul nsw i64 %539, %542
  %544 = mul nsw i64 %543, 3
  %545 = trunc i64 %544 to i32
  call void @long2str(i8* %536, i32 %545)
  br label %546

546:                                              ; preds = %533, %528
  %547 = load i64, i64* %15, align 8
  %548 = add nsw i64 %547, 4
  store i64 %548, i64* %15, align 8
  %549 = load i64, i64* %15, align 8
  %550 = icmp sle i64 %549, 2044
  br i1 %550, label %551, label %555

551:                                              ; preds = %546
  %552 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %553 = load i64, i64* %15, align 8
  %554 = getelementptr inbounds i8, i8* %552, i64 %553
  call void @long2str(i8* %554, i32 0)
  br label %555

555:                                              ; preds = %551, %546
  %556 = load i64, i64* %15, align 8
  %557 = add nsw i64 %556, 4
  store i64 %557, i64* %15, align 8
  %558 = load i64, i64* %15, align 8
  %559 = icmp sle i64 %558, 2044
  br i1 %559, label %560, label %564

560:                                              ; preds = %555
  %561 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %562 = load i64, i64* %15, align 8
  %563 = getelementptr inbounds i8, i8* %561, i64 %562
  call void @long2str(i8* %563, i32 0)
  br label %564

564:                                              ; preds = %560, %555
  %565 = load i64, i64* %15, align 8
  %566 = add nsw i64 %565, 4
  store i64 %566, i64* %15, align 8
  %567 = load i64, i64* %15, align 8
  %568 = icmp sle i64 %567, 2044
  br i1 %568, label %569, label %573

569:                                              ; preds = %564
  %570 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %571 = load i64, i64* %15, align 8
  %572 = getelementptr inbounds i8, i8* %570, i64 %571
  call void @long2str(i8* %572, i32 0)
  br label %573

573:                                              ; preds = %569, %564
  %574 = load i64, i64* %15, align 8
  %575 = add nsw i64 %574, 4
  store i64 %575, i64* %15, align 8
  %576 = load i64, i64* %15, align 8
  %577 = icmp sle i64 %576, 2044
  br i1 %577, label %578, label %582

578:                                              ; preds = %573
  %579 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %580 = load i64, i64* %15, align 8
  %581 = getelementptr inbounds i8, i8* %579, i64 %580
  call void @long2str(i8* %581, i32 0)
  br label %582

582:                                              ; preds = %578, %573
  %583 = load i64, i64* %15, align 8
  %584 = add nsw i64 %583, 4
  store i64 %584, i64* %15, align 8
  %585 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %586 = load i32, i32* %12, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i8, i8* %585, i64 %587
  %589 = getelementptr inbounds i8, i8* %588, i64 -4
  %590 = load i64, i64* %15, align 8
  %591 = load i32, i32* %12, align 4
  %592 = sext i32 %591 to i64
  %593 = sub nsw i64 %590, %592
  %594 = trunc i64 %593 to i32
  call void @long2str(i8* %589, i32 %594)
  store i32 0, i32* %13, align 4
  br label %595

595:                                              ; preds = %978, %582
  %596 = load i32, i32* %13, align 4
  %597 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %598 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %597, i32 0, i32 24
  %599 = load i32, i32* %598, align 8
  %600 = icmp slt i32 %596, %599
  br i1 %600, label %601, label %981

601:                                              ; preds = %595
  %602 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %603 = load i32, i32* %13, align 4
  %604 = call i32 @avi_sampsize(%struct.avi_t* %602, i32 %603)
  store i32 %604, i32* %5, align 4
  %605 = load i64, i64* %15, align 8
  %606 = icmp sle i64 %605, 2044
  br i1 %606, label %607, label %611

607:                                              ; preds = %601
  %608 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %609 = load i64, i64* %15, align 8
  %610 = getelementptr inbounds i8, i8* %608, i64 %609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %610, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %611

611:                                              ; preds = %607, %601
  %612 = load i64, i64* %15, align 8
  %613 = add nsw i64 %612, 4
  store i64 %613, i64* %15, align 8
  %614 = load i64, i64* %15, align 8
  %615 = icmp sle i64 %614, 2044
  br i1 %615, label %616, label %620

616:                                              ; preds = %611
  %617 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %618 = load i64, i64* %15, align 8
  %619 = getelementptr inbounds i8, i8* %617, i64 %618
  call void @long2str(i8* %619, i32 0)
  br label %620

620:                                              ; preds = %616, %611
  %621 = load i64, i64* %15, align 8
  %622 = add nsw i64 %621, 4
  store i64 %622, i64* %15, align 8
  %623 = load i64, i64* %15, align 8
  %624 = trunc i64 %623 to i32
  store i32 %624, i32* %12, align 4
  %625 = load i64, i64* %15, align 8
  %626 = icmp sle i64 %625, 2044
  br i1 %626, label %627, label %631

627:                                              ; preds = %620
  %628 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %629 = load i64, i64* %15, align 8
  %630 = getelementptr inbounds i8, i8* %628, i64 %629
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %630, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4, i1 false)
  br label %631

631:                                              ; preds = %627, %620
  %632 = load i64, i64* %15, align 8
  %633 = add nsw i64 %632, 4
  store i64 %633, i64* %15, align 8
  %634 = load i64, i64* %15, align 8
  %635 = icmp sle i64 %634, 2044
  br i1 %635, label %636, label %640

636:                                              ; preds = %631
  %637 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %638 = load i64, i64* %15, align 8
  %639 = getelementptr inbounds i8, i8* %637, i64 %638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %639, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i1 false)
  br label %640

640:                                              ; preds = %636, %631
  %641 = load i64, i64* %15, align 8
  %642 = add nsw i64 %641, 4
  store i64 %642, i64* %15, align 8
  %643 = load i64, i64* %15, align 8
  %644 = icmp sle i64 %643, 2044
  br i1 %644, label %645, label %649

645:                                              ; preds = %640
  %646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %647 = load i64, i64* %15, align 8
  %648 = getelementptr inbounds i8, i8* %646, i64 %647
  call void @long2str(i8* %648, i32 56)
  br label %649

649:                                              ; preds = %645, %640
  %650 = load i64, i64* %15, align 8
  %651 = add nsw i64 %650, 4
  store i64 %651, i64* %15, align 8
  %652 = load i64, i64* %15, align 8
  %653 = icmp sle i64 %652, 2044
  br i1 %653, label %654, label %658

654:                                              ; preds = %649
  %655 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %656 = load i64, i64* %15, align 8
  %657 = getelementptr inbounds i8, i8* %655, i64 %656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %657, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4, i1 false)
  br label %658

658:                                              ; preds = %654, %649
  %659 = load i64, i64* %15, align 8
  %660 = add nsw i64 %659, 4
  store i64 %660, i64* %15, align 8
  %661 = load i64, i64* %15, align 8
  %662 = icmp sle i64 %661, 2044
  br i1 %662, label %663, label %667

663:                                              ; preds = %658
  %664 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %665 = load i64, i64* %15, align 8
  %666 = getelementptr inbounds i8, i8* %664, i64 %665
  call void @long2str(i8* %666, i32 0)
  br label %667

667:                                              ; preds = %663, %658
  %668 = load i64, i64* %15, align 8
  %669 = add nsw i64 %668, 4
  store i64 %669, i64* %15, align 8
  %670 = load i64, i64* %15, align 8
  %671 = icmp sle i64 %670, 2044
  br i1 %671, label %672, label %676

672:                                              ; preds = %667
  %673 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %674 = load i64, i64* %15, align 8
  %675 = getelementptr inbounds i8, i8* %673, i64 %674
  call void @long2str(i8* %675, i32 0)
  br label %676

676:                                              ; preds = %672, %667
  %677 = load i64, i64* %15, align 8
  %678 = add nsw i64 %677, 4
  store i64 %678, i64* %15, align 8
  %679 = load i64, i64* %15, align 8
  %680 = icmp sle i64 %679, 2044
  br i1 %680, label %681, label %685

681:                                              ; preds = %676
  %682 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %683 = load i64, i64* %15, align 8
  %684 = getelementptr inbounds i8, i8* %682, i64 %683
  call void @long2str(i8* %684, i32 0)
  br label %685

685:                                              ; preds = %681, %676
  %686 = load i64, i64* %15, align 8
  %687 = add nsw i64 %686, 4
  store i64 %687, i64* %15, align 8
  %688 = load i64, i64* %15, align 8
  %689 = icmp sle i64 %688, 2044
  br i1 %689, label %690, label %694

690:                                              ; preds = %685
  %691 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %692 = load i64, i64* %15, align 8
  %693 = getelementptr inbounds i8, i8* %691, i64 %692
  call void @long2str(i8* %693, i32 0)
  br label %694

694:                                              ; preds = %690, %685
  %695 = load i64, i64* %15, align 8
  %696 = add nsw i64 %695, 4
  store i64 %696, i64* %15, align 8
  %697 = load i64, i64* %15, align 8
  %698 = icmp sle i64 %697, 2044
  br i1 %698, label %699, label %705

699:                                              ; preds = %694
  %700 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %701 = load i64, i64* %15, align 8
  %702 = getelementptr inbounds i8, i8* %700, i64 %701
  %703 = load i32, i32* %5, align 4
  %704 = sdiv i32 %703, 4
  call void @long2str(i8* %702, i32 %704)
  br label %705

705:                                              ; preds = %699, %694
  %706 = load i64, i64* %15, align 8
  %707 = add nsw i64 %706, 4
  store i64 %707, i64* %15, align 8
  %708 = load i64, i64* %15, align 8
  %709 = icmp sle i64 %708, 2044
  br i1 %709, label %710, label %724

710:                                              ; preds = %705
  %711 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %712 = load i64, i64* %15, align 8
  %713 = getelementptr inbounds i8, i8* %711, i64 %712
  %714 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %715 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %714, i32 0, i32 12
  %716 = load i32, i32* %13, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %715, i64 0, i64 %717
  %719 = getelementptr inbounds %struct.track_s, %struct.track_s* %718, i32 0, i32 4
  %720 = load i64, i64* %719, align 8
  %721 = mul nsw i64 1000, %720
  %722 = sdiv i64 %721, 8
  %723 = trunc i64 %722 to i32
  call void @long2str(i8* %713, i32 %723)
  br label %724

724:                                              ; preds = %710, %705
  %725 = load i64, i64* %15, align 8
  %726 = add nsw i64 %725, 4
  store i64 %726, i64* %15, align 8
  %727 = load i64, i64* %15, align 8
  %728 = icmp sle i64 %727, 2044
  br i1 %728, label %729, label %733

729:                                              ; preds = %724
  %730 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %731 = load i64, i64* %15, align 8
  %732 = getelementptr inbounds i8, i8* %730, i64 %731
  call void @long2str(i8* %732, i32 0)
  br label %733

733:                                              ; preds = %729, %724
  %734 = load i64, i64* %15, align 8
  %735 = add nsw i64 %734, 4
  store i64 %735, i64* %15, align 8
  %736 = load i64, i64* %15, align 8
  %737 = icmp sle i64 %736, 2044
  br i1 %737, label %738, label %754

738:                                              ; preds = %733
  %739 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %740 = load i64, i64* %15, align 8
  %741 = getelementptr inbounds i8, i8* %739, i64 %740
  %742 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %743 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %742, i32 0, i32 12
  %744 = load i32, i32* %13, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %743, i64 0, i64 %745
  %747 = getelementptr inbounds %struct.track_s, %struct.track_s* %746, i32 0, i32 6
  %748 = load i64, i64* %747, align 8
  %749 = mul nsw i64 4, %748
  %750 = load i32, i32* %5, align 4
  %751 = sext i32 %750 to i64
  %752 = sdiv i64 %749, %751
  %753 = trunc i64 %752 to i32
  call void @long2str(i8* %741, i32 %753)
  br label %754

754:                                              ; preds = %738, %733
  %755 = load i64, i64* %15, align 8
  %756 = add nsw i64 %755, 4
  store i64 %756, i64* %15, align 8
  %757 = load i64, i64* %15, align 8
  %758 = icmp sle i64 %757, 2044
  br i1 %758, label %759, label %763

759:                                              ; preds = %754
  %760 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %761 = load i64, i64* %15, align 8
  %762 = getelementptr inbounds i8, i8* %760, i64 %761
  call void @long2str(i8* %762, i32 0)
  br label %763

763:                                              ; preds = %759, %754
  %764 = load i64, i64* %15, align 8
  %765 = add nsw i64 %764, 4
  store i64 %765, i64* %15, align 8
  %766 = load i64, i64* %15, align 8
  %767 = icmp sle i64 %766, 2044
  br i1 %767, label %768, label %772

768:                                              ; preds = %763
  %769 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %770 = load i64, i64* %15, align 8
  %771 = getelementptr inbounds i8, i8* %769, i64 %770
  call void @long2str(i8* %771, i32 -1)
  br label %772

772:                                              ; preds = %768, %763
  %773 = load i64, i64* %15, align 8
  %774 = add nsw i64 %773, 4
  store i64 %774, i64* %15, align 8
  %775 = load i64, i64* %15, align 8
  %776 = icmp sle i64 %775, 2044
  br i1 %776, label %777, label %783

777:                                              ; preds = %772
  %778 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %779 = load i64, i64* %15, align 8
  %780 = getelementptr inbounds i8, i8* %778, i64 %779
  %781 = load i32, i32* %5, align 4
  %782 = sdiv i32 %781, 4
  call void @long2str(i8* %780, i32 %782)
  br label %783

783:                                              ; preds = %777, %772
  %784 = load i64, i64* %15, align 8
  %785 = add nsw i64 %784, 4
  store i64 %785, i64* %15, align 8
  %786 = load i64, i64* %15, align 8
  %787 = icmp sle i64 %786, 2044
  br i1 %787, label %788, label %792

788:                                              ; preds = %783
  %789 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %790 = load i64, i64* %15, align 8
  %791 = getelementptr inbounds i8, i8* %789, i64 %790
  call void @long2str(i8* %791, i32 0)
  br label %792

792:                                              ; preds = %788, %783
  %793 = load i64, i64* %15, align 8
  %794 = add nsw i64 %793, 4
  store i64 %794, i64* %15, align 8
  %795 = load i64, i64* %15, align 8
  %796 = icmp sle i64 %795, 2044
  br i1 %796, label %797, label %801

797:                                              ; preds = %792
  %798 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %799 = load i64, i64* %15, align 8
  %800 = getelementptr inbounds i8, i8* %798, i64 %799
  call void @long2str(i8* %800, i32 0)
  br label %801

801:                                              ; preds = %797, %792
  %802 = load i64, i64* %15, align 8
  %803 = add nsw i64 %802, 4
  store i64 %803, i64* %15, align 8
  %804 = load i64, i64* %15, align 8
  %805 = icmp sle i64 %804, 2044
  br i1 %805, label %806, label %810

806:                                              ; preds = %801
  %807 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %808 = load i64, i64* %15, align 8
  %809 = getelementptr inbounds i8, i8* %807, i64 %808
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %809, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i1 false)
  br label %810

810:                                              ; preds = %806, %801
  %811 = load i64, i64* %15, align 8
  %812 = add nsw i64 %811, 4
  store i64 %812, i64* %15, align 8
  %813 = load i64, i64* %15, align 8
  %814 = icmp sle i64 %813, 2044
  br i1 %814, label %815, label %819

815:                                              ; preds = %810
  %816 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %817 = load i64, i64* %15, align 8
  %818 = getelementptr inbounds i8, i8* %816, i64 %817
  call void @long2str(i8* %818, i32 16)
  br label %819

819:                                              ; preds = %815, %810
  %820 = load i64, i64* %15, align 8
  %821 = add nsw i64 %820, 4
  store i64 %821, i64* %15, align 8
  %822 = load i64, i64* %15, align 8
  %823 = icmp sle i64 %822, 2046
  br i1 %823, label %824, label %849

824:                                              ; preds = %819
  %825 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %826 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %825, i32 0, i32 12
  %827 = load i32, i32* %13, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %826, i64 0, i64 %828
  %830 = getelementptr inbounds %struct.track_s, %struct.track_s* %829, i32 0, i32 0
  %831 = load i64, i64* %830, align 8
  %832 = and i64 %831, 255
  %833 = trunc i64 %832 to i8
  %834 = load i64, i64* %15, align 8
  %835 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %834
  store i8 %833, i8* %835, align 1
  %836 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %837 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %836, i32 0, i32 12
  %838 = load i32, i32* %13, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %837, i64 0, i64 %839
  %841 = getelementptr inbounds %struct.track_s, %struct.track_s* %840, i32 0, i32 0
  %842 = load i64, i64* %841, align 8
  %843 = ashr i64 %842, 8
  %844 = and i64 %843, 255
  %845 = trunc i64 %844 to i8
  %846 = load i64, i64* %15, align 8
  %847 = add nsw i64 %846, 1
  %848 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %847
  store i8 %845, i8* %848, align 1
  br label %849

849:                                              ; preds = %824, %819
  %850 = load i64, i64* %15, align 8
  %851 = add nsw i64 %850, 2
  store i64 %851, i64* %15, align 8
  %852 = load i64, i64* %15, align 8
  %853 = icmp sle i64 %852, 2046
  br i1 %853, label %854, label %879

854:                                              ; preds = %849
  %855 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %856 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %855, i32 0, i32 12
  %857 = load i32, i32* %13, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %856, i64 0, i64 %858
  %860 = getelementptr inbounds %struct.track_s, %struct.track_s* %859, i32 0, i32 1
  %861 = load i64, i64* %860, align 8
  %862 = and i64 %861, 255
  %863 = trunc i64 %862 to i8
  %864 = load i64, i64* %15, align 8
  %865 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %864
  store i8 %863, i8* %865, align 1
  %866 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %867 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %866, i32 0, i32 12
  %868 = load i32, i32* %13, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %867, i64 0, i64 %869
  %871 = getelementptr inbounds %struct.track_s, %struct.track_s* %870, i32 0, i32 1
  %872 = load i64, i64* %871, align 8
  %873 = ashr i64 %872, 8
  %874 = and i64 %873, 255
  %875 = trunc i64 %874 to i8
  %876 = load i64, i64* %15, align 8
  %877 = add nsw i64 %876, 1
  %878 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %877
  store i8 %875, i8* %878, align 1
  br label %879

879:                                              ; preds = %854, %849
  %880 = load i64, i64* %15, align 8
  %881 = add nsw i64 %880, 2
  store i64 %881, i64* %15, align 8
  %882 = load i64, i64* %15, align 8
  %883 = icmp sle i64 %882, 2044
  br i1 %883, label %884, label %896

884:                                              ; preds = %879
  %885 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %886 = load i64, i64* %15, align 8
  %887 = getelementptr inbounds i8, i8* %885, i64 %886
  %888 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %889 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %888, i32 0, i32 12
  %890 = load i32, i32* %13, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %889, i64 0, i64 %891
  %893 = getelementptr inbounds %struct.track_s, %struct.track_s* %892, i32 0, i32 2
  %894 = load i64, i64* %893, align 8
  %895 = trunc i64 %894 to i32
  call void @long2str(i8* %887, i32 %895)
  br label %896

896:                                              ; preds = %884, %879
  %897 = load i64, i64* %15, align 8
  %898 = add nsw i64 %897, 4
  store i64 %898, i64* %15, align 8
  %899 = load i64, i64* %15, align 8
  %900 = icmp sle i64 %899, 2044
  br i1 %900, label %901, label %915

901:                                              ; preds = %896
  %902 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %903 = load i64, i64* %15, align 8
  %904 = getelementptr inbounds i8, i8* %902, i64 %903
  %905 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %906 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %905, i32 0, i32 12
  %907 = load i32, i32* %13, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %906, i64 0, i64 %908
  %910 = getelementptr inbounds %struct.track_s, %struct.track_s* %909, i32 0, i32 4
  %911 = load i64, i64* %910, align 8
  %912 = mul nsw i64 1000, %911
  %913 = sdiv i64 %912, 8
  %914 = trunc i64 %913 to i32
  call void @long2str(i8* %904, i32 %914)
  br label %915

915:                                              ; preds = %901, %896
  %916 = load i64, i64* %15, align 8
  %917 = add nsw i64 %916, 4
  store i64 %917, i64* %15, align 8
  %918 = load i64, i64* %15, align 8
  %919 = icmp sle i64 %918, 2046
  br i1 %919, label %920, label %935

920:                                              ; preds = %915
  %921 = load i32, i32* %5, align 4
  %922 = sdiv i32 %921, 4
  %923 = and i32 %922, 255
  %924 = trunc i32 %923 to i8
  %925 = load i64, i64* %15, align 8
  %926 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %925
  store i8 %924, i8* %926, align 1
  %927 = load i32, i32* %5, align 4
  %928 = sdiv i32 %927, 4
  %929 = ashr i32 %928, 8
  %930 = and i32 %929, 255
  %931 = trunc i32 %930 to i8
  %932 = load i64, i64* %15, align 8
  %933 = add nsw i64 %932, 1
  %934 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %933
  store i8 %931, i8* %934, align 1
  br label %935

935:                                              ; preds = %920, %915
  %936 = load i64, i64* %15, align 8
  %937 = add nsw i64 %936, 2
  store i64 %937, i64* %15, align 8
  %938 = load i64, i64* %15, align 8
  %939 = icmp sle i64 %938, 2046
  br i1 %939, label %940, label %965

940:                                              ; preds = %935
  %941 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %942 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %941, i32 0, i32 12
  %943 = load i32, i32* %13, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %942, i64 0, i64 %944
  %946 = getelementptr inbounds %struct.track_s, %struct.track_s* %945, i32 0, i32 3
  %947 = load i64, i64* %946, align 8
  %948 = and i64 %947, 255
  %949 = trunc i64 %948 to i8
  %950 = load i64, i64* %15, align 8
  %951 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %950
  store i8 %949, i8* %951, align 1
  %952 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %953 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %952, i32 0, i32 12
  %954 = load i32, i32* %13, align 4
  %955 = sext i32 %954 to i64
  %956 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %953, i64 0, i64 %955
  %957 = getelementptr inbounds %struct.track_s, %struct.track_s* %956, i32 0, i32 3
  %958 = load i64, i64* %957, align 8
  %959 = ashr i64 %958, 8
  %960 = and i64 %959, 255
  %961 = trunc i64 %960 to i8
  %962 = load i64, i64* %15, align 8
  %963 = add nsw i64 %962, 1
  %964 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 %963
  store i8 %961, i8* %964, align 1
  br label %965

965:                                              ; preds = %940, %935
  %966 = load i64, i64* %15, align 8
  %967 = add nsw i64 %966, 2
  store i64 %967, i64* %15, align 8
  %968 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %969 = load i32, i32* %12, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds i8, i8* %968, i64 %970
  %972 = getelementptr inbounds i8, i8* %971, i64 -4
  %973 = load i64, i64* %15, align 8
  %974 = load i32, i32* %12, align 4
  %975 = sext i32 %974 to i64
  %976 = sub nsw i64 %973, %975
  %977 = trunc i64 %976 to i32
  call void @long2str(i8* %972, i32 %977)
  br label %978

978:                                              ; preds = %965
  %979 = load i32, i32* %13, align 4
  %980 = add nsw i32 %979, 1
  store i32 %980, i32* %13, align 4
  br label %595

981:                                              ; preds = %595
  %982 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %983 = load i32, i32* %11, align 4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds i8, i8* %982, i64 %984
  %986 = getelementptr inbounds i8, i8* %985, i64 -4
  %987 = load i64, i64* %15, align 8
  %988 = load i32, i32* %11, align 4
  %989 = sext i32 %988 to i64
  %990 = sub nsw i64 %987, %989
  %991 = trunc i64 %990 to i32
  call void @long2str(i8* %986, i32 %991)
  %992 = load i64, i64* %15, align 8
  %993 = sub nsw i64 2048, %992
  %994 = sub nsw i64 %993, 8
  %995 = sub nsw i64 %994, 12
  %996 = trunc i64 %995 to i32
  store i32 %996, i32* %4, align 4
  %997 = load i32, i32* %4, align 4
  %998 = icmp sle i32 %997, 0
  br i1 %998, label %999, label %1002

999:                                              ; preds = %981
  %1000 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1001 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1000, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

1002:                                             ; preds = %981
  %1003 = load i64, i64* %15, align 8
  %1004 = icmp sle i64 %1003, 2044
  br i1 %1004, label %1005, label %1009

1005:                                             ; preds = %1002
  %1006 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1007 = load i64, i64* %15, align 8
  %1008 = getelementptr inbounds i8, i8* %1006, i64 %1007
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1008, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4, i1 false)
  br label %1009

1009:                                             ; preds = %1005, %1002
  %1010 = load i64, i64* %15, align 8
  %1011 = add nsw i64 %1010, 4
  store i64 %1011, i64* %15, align 8
  %1012 = load i64, i64* %15, align 8
  %1013 = icmp sle i64 %1012, 2044
  br i1 %1013, label %1014, label %1019

1014:                                             ; preds = %1009
  %1015 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1016 = load i64, i64* %15, align 8
  %1017 = getelementptr inbounds i8, i8* %1015, i64 %1016
  %1018 = load i32, i32* %4, align 4
  call void @long2str(i8* %1017, i32 %1018)
  br label %1019

1019:                                             ; preds = %1014, %1009
  %1020 = load i64, i64* %15, align 8
  %1021 = add nsw i64 %1020, 4
  store i64 %1021, i64* %15, align 8
  %1022 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1023 = load i64, i64* %15, align 8
  %1024 = getelementptr inbounds i8, i8* %1022, i64 %1023
  %1025 = load i32, i32* %4, align 4
  %1026 = sext i32 %1025 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1024, i8 0, i64 %1026, i1 false)
  %1027 = load i32, i32* %4, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = call i64 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0)) #8
  %1030 = add i64 %1029, 8
  %1031 = icmp ugt i64 %1028, %1030
  br i1 %1031, label %1032, label %1038

1032:                                             ; preds = %1019
  %1033 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #7
  %1034 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1035 = load i64, i64* %15, align 8
  %1036 = getelementptr inbounds i8, i8* %1034, i64 %1035
  %1037 = call i64 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0)) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1036, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0), i64 %1037, i1 false)
  br label %1038

1038:                                             ; preds = %1032, %1019
  %1039 = load i32, i32* %4, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = load i64, i64* %15, align 8
  %1042 = add nsw i64 %1041, %1040
  store i64 %1042, i64* %15, align 8
  %1043 = load i64, i64* %15, align 8
  %1044 = icmp sle i64 %1043, 2044
  br i1 %1044, label %1045, label %1049

1045:                                             ; preds = %1038
  %1046 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1047 = load i64, i64* %15, align 8
  %1048 = getelementptr inbounds i8, i8* %1046, i64 %1047
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1048, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %1049

1049:                                             ; preds = %1045, %1038
  %1050 = load i64, i64* %15, align 8
  %1051 = add nsw i64 %1050, 4
  store i64 %1051, i64* %15, align 8
  %1052 = load i64, i64* %15, align 8
  %1053 = icmp sle i64 %1052, 2044
  br i1 %1053, label %1054, label %1059

1054:                                             ; preds = %1049
  %1055 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1056 = load i64, i64* %15, align 8
  %1057 = getelementptr inbounds i8, i8* %1055, i64 %1056
  %1058 = load i32, i32* %10, align 4
  call void @long2str(i8* %1057, i32 %1058)
  br label %1059

1059:                                             ; preds = %1054, %1049
  %1060 = load i64, i64* %15, align 8
  %1061 = add nsw i64 %1060, 4
  store i64 %1061, i64* %15, align 8
  %1062 = load i64, i64* %15, align 8
  %1063 = icmp sle i64 %1062, 2044
  br i1 %1063, label %1064, label %1068

1064:                                             ; preds = %1059
  %1065 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1066 = load i64, i64* %15, align 8
  %1067 = getelementptr inbounds i8, i8* %1065, i64 %1066
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1067, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4, i1 false)
  br label %1068

1068:                                             ; preds = %1064, %1059
  %1069 = load i64, i64* %15, align 8
  %1070 = add nsw i64 %1069, 4
  store i64 %1070, i64* %15, align 8
  %1071 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1072 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1071, i32 0, i32 0
  %1073 = load i64, i64* %1072, align 8
  %1074 = trunc i64 %1073 to i32
  %1075 = call i64 @lseek(i32 %1074, i64 0, i32 0) #7
  %1076 = icmp slt i64 %1075, 0
  br i1 %1076, label %1095, label %1077

1077:                                             ; preds = %1068
  %1078 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1079 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1078, i32 0, i32 0
  %1080 = load i64, i64* %1079, align 8
  %1081 = trunc i64 %1080 to i32
  %1082 = getelementptr inbounds [2048 x i8], [2048 x i8]* %14, i64 0, i64 0
  %1083 = call i64 @avi_write(i32 %1081, i8* %1082, i64 2048)
  %1084 = icmp ne i64 %1083, 2048
  br i1 %1084, label %1095, label %1085

1085:                                             ; preds = %1077
  %1086 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1087 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1086, i32 0, i32 0
  %1088 = load i64, i64* %1087, align 8
  %1089 = trunc i64 %1088 to i32
  %1090 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1091 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1090, i32 0, i32 13
  %1092 = load i64, i64* %1091, align 8
  %1093 = call i64 @lseek(i32 %1089, i64 %1092, i32 0) #7
  %1094 = icmp slt i64 %1093, 0
  br i1 %1094, label %1095, label %1096

1095:                                             ; preds = %1085, %1077, %1068
  store i64 6, i64* @AVI_errno, align 8
  store i32 -1, i32* %2, align 4
  br label %1097

1096:                                             ; preds = %1085
  store i32 0, i32* %2, align 4
  br label %1097

1097:                                             ; preds = %1096, %1095
  %1098 = load i32, i32* %2, align 4
  ret i32 %1098
}

; Function Attrs: noinline nounwind uwtable
define internal void @long2str(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = trunc i32 %6 to i8
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 %7, i8* %9, align 1
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 8
  %12 = and i32 %11, 255
  %13 = trunc i32 %12 to i8
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 %13, i8* %15, align 1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 %19, i8* %21, align 1
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 24
  %24 = and i32 %23, 255
  %25 = trunc i32 %24 to i8
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 %25, i8* %27, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @avi_sampsize(%struct.avi_t* %0, i32 %1) #0 {
  %3 = alloca %struct.avi_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 12
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %7, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.track_s, %struct.track_s* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 7
  %14 = sdiv i64 %13, 8
  %15 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 12
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %16, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.track_s, %struct.track_s* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = mul nsw i64 %14, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i64 @lseek(i32, i64, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AVI_set_audio(%struct.avi_t* %0, i32 %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.avi_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %13 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %14 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  br label %86

18:                                               ; preds = %6
  %19 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %20 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %19, i32 0, i32 24
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 25
  store i32 %21, i32* %23, align 4
  %24 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %25 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %24, i32 0, i32 24
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 24
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 8
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 8)
  call void @exit(i32 1) #9
  unreachable

35:                                               ; preds = %18
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %39 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %38, i32 0, i32 12
  %40 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %41 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %40, i32 0, i32 25
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %39, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.track_s, %struct.track_s* %44, i32 0, i32 1
  store i64 %37, i64* %45, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %48 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %47, i32 0, i32 12
  %49 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %50 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %49, i32 0, i32 25
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %48, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.track_s, %struct.track_s* %53, i32 0, i32 2
  store i64 %46, i64* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %58 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %57, i32 0, i32 12
  %59 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %60 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %59, i32 0, i32 25
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %58, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.track_s, %struct.track_s* %63, i32 0, i32 3
  store i64 %56, i64* %64, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %68 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %67, i32 0, i32 12
  %69 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %70 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %69, i32 0, i32 25
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %68, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.track_s, %struct.track_s* %73, i32 0, i32 0
  store i64 %66, i64* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %77 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %76, i32 0, i32 12
  %78 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %79 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %78, i32 0, i32 25
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %77, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.track_s, %struct.track_s* %82, i32 0, i32 4
  store i64 %75, i64* %83, align 8
  %84 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %85 = call i32 @avi_update_header(%struct.avi_t* %84)
  br label %86

86:                                               ; preds = %35, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_write_frame(%struct.avi_t* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.avi_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %12 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %5, align 4
  br label %38

16:                                               ; preds = %4
  %17 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %18 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %17, i32 0, i32 13
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  %20 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @avi_write_data(%struct.avi_t* %20, i8* %21, i64 %22, i32 0, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %38

27:                                               ; preds = %16
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %30 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %29, i32 0, i32 20
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %33 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %32, i32 0, i32 21
  store i64 %31, i64* %33, align 8
  %34 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %35 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %27, %26, %15
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @avi_write_data(%struct.avi_t* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.avi_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i8], align 1
  store %struct.avi_t* %0, %struct.avi_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %15 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 8
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %17, %18
  %20 = add i64 %19, 8
  %21 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %22 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %21, i32 0, i32 14
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = mul nsw i64 %24, 16
  %26 = add i64 %20, %25
  %27 = icmp ugt i64 %26, 4278188031
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store i64 1, i64* @AVI_errno, align 8
  store i32 -1, i32* %6, align 4
  br label %83

29:                                               ; preds = %5
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %31 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %32 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %31, i32 0, i32 25
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i32 %34) #7
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %40 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %41 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %42 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %41, i32 0, i32 13
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @avi_add_index_entry(%struct.avi_t* %39, i8* %40, i64 0, i64 %43, i64 %44)
  store i32 %45, i32* %12, align 4
  br label %58

46:                                               ; preds = %29
  %47 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 16, i32 0
  %52 = sext i32 %51 to i64
  %53 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %54 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @avi_add_index_entry(%struct.avi_t* %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 %52, i64 %55, i64 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %46, %38
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 -1, i32* %6, align 4
  br label %83

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %13, i64 0, i64 0
  %68 = load i8*, i8** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @avi_add_chunk(%struct.avi_t* %66, i8* %67, i8* %68, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %78

72:                                               ; preds = %62
  %73 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @avi_add_chunk(%struct.avi_t* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* %74, i32 %76)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %6, align 4
  br label %83

82:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %81, %61, %28
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @avi_add_index_entry(%struct.avi_t* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.avi_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %14 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %13, i32 0, i32 14
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %17 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %16, i32 0, i32 15
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %5
  %21 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %22 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %21, i32 0, i32 18
  %23 = load [16 x i8]*, [16 x i8]** %22, align 8
  %24 = bitcast [16 x i8]* %23 to i8*
  %25 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %26 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %25, i32 0, i32 15
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 4096
  %29 = mul nsw i64 %28, 16
  %30 = call i8* @realloc(i8* %24, i64 %29) #7
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  store i64 8, i64* @AVI_errno, align 8
  store i32 -1, i32* %6, align 4
  br label %100

34:                                               ; preds = %20
  %35 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %36 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %35, i32 0, i32 15
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 4096
  store i64 %38, i64* %36, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = bitcast i8* %39 to [16 x i8]*
  %41 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %42 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %41, i32 0, i32 18
  store [16 x i8]* %40, [16 x i8]** %42, align 8
  br label %43

43:                                               ; preds = %34, %5
  %44 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %45 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %44, i32 0, i32 18
  %46 = load [16 x i8]*, [16 x i8]** %45, align 8
  %47 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %48 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %47, i32 0, i32 14
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %46, i64 %49
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %50, i64 0, i64 0
  %52 = load i8*, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %51, i8* align 1 %52, i64 4, i1 false)
  %53 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %54 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %53, i32 0, i32 18
  %55 = load [16 x i8]*, [16 x i8]** %54, align 8
  %56 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %57 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %56, i32 0, i32 14
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %55, i64 %58
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %59, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  call void @long2str(i8* %61, i32 %63)
  %64 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %65 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %64, i32 0, i32 18
  %66 = load [16 x i8]*, [16 x i8]** %65, align 8
  %67 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %68 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %67, i32 0, i32 14
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %66, i64 %69
  %71 = getelementptr inbounds [16 x i8], [16 x i8]* %70, i64 0, i64 0
  %72 = getelementptr inbounds i8, i8* %71, i64 8
  %73 = load i64, i64* %10, align 8
  %74 = trunc i64 %73 to i32
  call void @long2str(i8* %72, i32 %74)
  %75 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %76 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %75, i32 0, i32 18
  %77 = load [16 x i8]*, [16 x i8]** %76, align 8
  %78 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %79 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %78, i32 0, i32 14
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %77, i64 %80
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %81, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %82, i64 12
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  call void @long2str(i8* %83, i32 %85)
  %86 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %87 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %86, i32 0, i32 14
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %92 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %91, i32 0, i32 11
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %90, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %43
  %96 = load i64, i64* %11, align 8
  %97 = load %struct.avi_t*, %struct.avi_t** %7, align 8
  %98 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %97, i32 0, i32 11
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %43
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %33
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @avi_add_chunk(%struct.avi_t* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.avi_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i8], align 1
  store %struct.avi_t* %0, %struct.avi_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %12 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %12, i64 4, i1 false)
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = load i32, i32* %9, align 4
  call void @long2str(i8* %14, i32 %15)
  %16 = load i32, i32* %9, align 4
  %17 = add nsw i32 %16, 1
  %18 = and i32 %17, -2
  store i32 %18, i32* %9, align 4
  %19 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %20 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %24 = call i64 @avi_write(i32 %22, i8* %23, i64 8)
  %25 = icmp ne i64 %24, 8
  br i1 %25, label %38, label %26

26:                                               ; preds = %4
  %27 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %28 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = call i64 @avi_write(i32 %30, i8* %31, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %26, %4
  %39 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %40 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %44 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %43, i32 0, i32 13
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @lseek(i32 %42, i64 %45, i32 0) #7
  store i64 4, i64* @AVI_errno, align 8
  store i32 -1, i32* %5, align 4
  br label %55

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 8, %48
  %50 = sext i32 %49 to i64
  %51 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %52 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %51, i32 0, i32 13
  %53 = load i64, i64* %52, align 8
  %54 = add i64 %53, %50
  store i64 %54, i64* %52, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %47, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_dup_frame(%struct.avi_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  %4 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %5 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %11 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %10, i32 0, i32 20
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %33

15:                                               ; preds = %9
  %16 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %17 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %18 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %17, i32 0, i32 20
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %21 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %20, i32 0, i32 21
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @avi_add_index_entry(%struct.avi_t* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i64 16, i64 %19, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %33

26:                                               ; preds = %15
  %27 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %28 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %27, i32 0, i32 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %32 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %31, i32 0, i32 22
  store i32 1, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %25, %14, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_write_audio(%struct.avi_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.avi_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %9 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %4, align 4
  br label %32

13:                                               ; preds = %3
  %14 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @avi_write_data(%struct.avi_t* %14, i8* %15, i64 %16, i32 1, i32 0)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %32

20:                                               ; preds = %13
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 12
  %24 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %25 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %24, i32 0, i32 25
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %23, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.track_s, %struct.track_s* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, %21
  store i64 %31, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %20, %19, %12
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_append_audio(%struct.avi_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.avi_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [4 x i8], align 1
  store %struct.avi_t* %0, %struct.avi_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %19 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 18
  %24 = load [16 x i8]*, [16 x i8]** %23, align 8
  %25 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %26 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %24, i64 %27
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %28, i64 0, i64 0
  %30 = getelementptr inbounds i8, i8* %29, i64 12
  %31 = call i64 @str2ulong(i8* %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %33 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %32, i32 0, i32 18
  %34 = load [16 x i8]*, [16 x i8]** %33, align 8
  %35 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %36 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %35, i32 0, i32 14
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %34, i64 %37
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %38, i64 0, i64 0
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  %41 = call i64 @str2ulong(i8* %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %43 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %42, i32 0, i32 18
  %44 = load [16 x i8]*, [16 x i8]** %43, align 8
  %45 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %46 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %45, i32 0, i32 14
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %44, i64 %47
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %48, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 12
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add nsw i64 %51, %52
  %54 = trunc i64 %53 to i32
  call void @long2str(i8* %50, i32 %54)
  %55 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %56 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %55, i32 0, i32 14
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %61 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %60, i32 0, i32 12
  %62 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %63 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %62, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %61, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.track_s, %struct.track_s* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, %59
  store i64 %69, i64* %67, align 8
  %70 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %71 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* %10, align 8
  %75 = add nsw i64 %74, 4
  %76 = call i64 @lseek(i32 %73, i64 %75, i32 0) #7
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %78, %79
  %81 = trunc i64 %80 to i32
  call void @long2str(i8* %77, i32 %81)
  %82 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %83 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %87 = call i64 @avi_write(i32 %85, i8* %86, i64 4)
  %88 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %89 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i64 @lseek(i32 %91, i64 %95, i32 0) #7
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = add nsw i64 %97, %98
  %100 = add nsw i64 %99, 1
  %101 = and i64 %100, -2
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = sub nsw i64 %102, %103
  store i64 %104, i64* %7, align 8
  %105 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %106 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i8*, i8** %6, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @avi_write(i32 %108, i8* %109, i64 %110)
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %112, 8
  %114 = load i64, i64* %8, align 8
  %115 = add nsw i64 %113, %114
  %116 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %117 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %116, i32 0, i32 13
  store i64 %115, i64* %117, align 8
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %17, %16
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @str2ulong(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = or i32 %6, %11
  %13 = load i8*, i8** %2, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 2
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl i32 %16, 16
  %18 = or i32 %12, %17
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 24
  %24 = or i32 %18, %23
  %25 = sext i32 %24 to i64
  ret i64 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_bytes_remain(%struct.avi_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  %4 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %5 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %11 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %10, i32 0, i32 13
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %15 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 16, %16
  %18 = add i64 %13, %17
  %19 = sub i64 4278188031, %18
  store i64 %19, i64* %2, align 8
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i64, i64* %2, align 8
  ret i64 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_bytes_written(%struct.avi_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  %4 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %5 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %11 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %10, i32 0, i32 13
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %15 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %14, i32 0, i32 14
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 16, %16
  %18 = add i64 %13, %17
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_set_audio_track(%struct.avi_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i32, align 4
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  %11 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %12 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %11, i32 0, i32 24
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %20

16:                                               ; preds = %8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %19 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %18, i32 0, i32 25
  store i32 %17, i32* %19, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_get_audio_track(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 25
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_close(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  %3 = alloca i32, align 4
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %4 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %5 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %10 = call i32 @avi_close_output_file(%struct.avi_t* %9)
  store i32 %10, i32* %3, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %14 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @close(i32 %16)
  %18 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %19 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %18, i32 0, i32 18
  %20 = load [16 x i8]*, [16 x i8]** %19, align 8
  %21 = icmp ne [16 x i8]* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %24 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %23, i32 0, i32 18
  %25 = load [16 x i8]*, [16 x i8]** %24, align 8
  %26 = bitcast [16 x i8]* %25 to i8*
  call void @free(i8* %26) #7
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 19
  %30 = load %struct.audio_index_entry*, %struct.audio_index_entry** %29, align 8
  %31 = icmp ne %struct.audio_index_entry* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %34 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %33, i32 0, i32 19
  %35 = load %struct.audio_index_entry*, %struct.audio_index_entry** %34, align 8
  %36 = bitcast %struct.audio_index_entry* %35 to i8*
  call void @free(i8* %36) #7
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %39 = bitcast %struct.avi_t* %38 to i8*
  call void @free(i8* %39) #7
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @avi_close_output_file(%struct.avi_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avi_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [2048 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  %19 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %20 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = sub i64 %21, 2048
  %23 = add i64 %22, 4
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %10, align 4
  %24 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %25 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %26 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %25, i32 0, i32 18
  %27 = load [16 x i8]*, [16 x i8]** %26, align 8
  %28 = bitcast [16 x i8]* %27 to i8*
  %29 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %30 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = mul nsw i64 %31, 16
  %33 = trunc i64 %32 to i32
  %34 = call i32 @avi_add_chunk(%struct.avi_t* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i8* %28, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %1
  store i32 1, i32* %10, align 4
  store i64 5, i64* @AVI_errno, align 8
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %43 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %42, i32 0, i32 4
  %44 = load double, double* %43, align 8
  %45 = fcmp olt double %44, 1.000000e-03
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %60

47:                                               ; preds = %41
  %48 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %49 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %48, i32 0, i32 4
  %50 = load double, double* %49, align 8
  %51 = fmul double 1.000000e+06, %50
  %52 = fadd double %51, 5.000000e-01
  %53 = fptosi double %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %55 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %54, i32 0, i32 4
  %56 = load double, double* %55, align 8
  %57 = fdiv double 1.000000e+06, %56
  %58 = fadd double %57, 5.000000e-01
  %59 = fptosi double %58 to i32
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %47, %46
  store i64 0, i64* %17, align 8
  %61 = load i64, i64* %17, align 8
  %62 = icmp sle i64 %61, 2044
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %65 = load i64, i64* %17, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4, i1 false)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i64, i64* %17, align 8
  %69 = add nsw i64 %68, 4
  store i64 %69, i64* %17, align 8
  %70 = load i64, i64* %17, align 8
  %71 = icmp sle i64 %70, 2044
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %74 = load i64, i64* %17, align 8
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  %76 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %77 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %76, i32 0, i32 13
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %78, 8
  %80 = trunc i64 %79 to i32
  call void @long2str(i8* %75, i32 %80)
  br label %81

81:                                               ; preds = %72, %67
  %82 = load i64, i64* %17, align 8
  %83 = add nsw i64 %82, 4
  store i64 %83, i64* %17, align 8
  %84 = load i64, i64* %17, align 8
  %85 = icmp sle i64 %84, 2044
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %88 = load i64, i64* %17, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %89, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 4, i1 false)
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i64, i64* %17, align 8
  %92 = add nsw i64 %91, 4
  store i64 %92, i64* %17, align 8
  %93 = load i64, i64* %17, align 8
  %94 = icmp sle i64 %93, 2044
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %97 = load i64, i64* %17, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %99

99:                                               ; preds = %95, %90
  %100 = load i64, i64* %17, align 8
  %101 = add nsw i64 %100, 4
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %17, align 8
  %103 = icmp sle i64 %102, 2044
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %106 = load i64, i64* %17, align 8
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  call void @long2str(i8* %107, i32 0)
  br label %108

108:                                              ; preds = %104, %99
  %109 = load i64, i64* %17, align 8
  %110 = add nsw i64 %109, 4
  store i64 %110, i64* %17, align 8
  %111 = load i64, i64* %17, align 8
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %13, align 4
  %113 = load i64, i64* %17, align 8
  %114 = icmp sle i64 %113, 2044
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %117 = load i64, i64* %17, align 8
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %118, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4, i1 false)
  br label %119

119:                                              ; preds = %115, %108
  %120 = load i64, i64* %17, align 8
  %121 = add nsw i64 %120, 4
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = icmp sle i64 %122, 2044
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %126 = load i64, i64* %17, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %127, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 4, i1 false)
  br label %128

128:                                              ; preds = %124, %119
  %129 = load i64, i64* %17, align 8
  %130 = add nsw i64 %129, 4
  store i64 %130, i64* %17, align 8
  %131 = load i64, i64* %17, align 8
  %132 = icmp sle i64 %131, 2044
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %135 = load i64, i64* %17, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  call void @long2str(i8* %136, i32 56)
  br label %137

137:                                              ; preds = %133, %128
  %138 = load i64, i64* %17, align 8
  %139 = add nsw i64 %138, 4
  store i64 %139, i64* %17, align 8
  %140 = load i64, i64* %17, align 8
  %141 = icmp sle i64 %140, 2044
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %144 = load i64, i64* %17, align 8
  %145 = getelementptr inbounds i8, i8* %143, i64 %144
  %146 = load i32, i32* %8, align 4
  call void @long2str(i8* %145, i32 %146)
  br label %147

147:                                              ; preds = %142, %137
  %148 = load i64, i64* %17, align 8
  %149 = add nsw i64 %148, 4
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = icmp sle i64 %150, 2044
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %154 = load i64, i64* %17, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  call void @long2str(i8* %155, i32 0)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load i64, i64* %17, align 8
  %158 = add nsw i64 %157, 4
  store i64 %158, i64* %17, align 8
  %159 = load i64, i64* %17, align 8
  %160 = icmp sle i64 %159, 2044
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %163 = load i64, i64* %17, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  call void @long2str(i8* %164, i32 0)
  br label %165

165:                                              ; preds = %161, %156
  %166 = load i64, i64* %17, align 8
  %167 = add nsw i64 %166, 4
  store i64 %167, i64* %17, align 8
  store i32 256, i32* %11, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %11, align 4
  %172 = or i32 %171, 16
  store i32 %172, i32* %11, align 4
  br label %173

173:                                              ; preds = %170, %165
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %178 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %177, i32 0, i32 22
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, 32
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %181, %176, %173
  %185 = load i64, i64* %17, align 8
  %186 = icmp sle i64 %185, 2044
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %189 = load i64, i64* %17, align 8
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  %191 = load i32, i32* %11, align 4
  call void @long2str(i8* %190, i32 %191)
  br label %192

192:                                              ; preds = %187, %184
  %193 = load i64, i64* %17, align 8
  %194 = add nsw i64 %193, 4
  store i64 %194, i64* %17, align 8
  %195 = load i64, i64* %17, align 8
  %196 = icmp sle i64 %195, 2044
  br i1 %196, label %197, label %205

197:                                              ; preds = %192
  %198 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %199 = load i64, i64* %17, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %202 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %201, i32 0, i32 8
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  call void @long2str(i8* %200, i32 %204)
  br label %205

205:                                              ; preds = %197, %192
  %206 = load i64, i64* %17, align 8
  %207 = add nsw i64 %206, 4
  store i64 %207, i64* %17, align 8
  %208 = load i64, i64* %17, align 8
  %209 = icmp sle i64 %208, 2044
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %212 = load i64, i64* %17, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  call void @long2str(i8* %213, i32 0)
  br label %214

214:                                              ; preds = %210, %205
  %215 = load i64, i64* %17, align 8
  %216 = add nsw i64 %215, 4
  store i64 %216, i64* %17, align 8
  %217 = load i64, i64* %17, align 8
  %218 = icmp sle i64 %217, 2044
  br i1 %218, label %219, label %227

219:                                              ; preds = %214
  %220 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %221 = load i64, i64* %17, align 8
  %222 = getelementptr inbounds i8, i8* %220, i64 %221
  %223 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %224 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %223, i32 0, i32 24
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  call void @long2str(i8* %222, i32 %226)
  br label %227

227:                                              ; preds = %219, %214
  %228 = load i64, i64* %17, align 8
  %229 = add nsw i64 %228, 4
  store i64 %229, i64* %17, align 8
  %230 = load i64, i64* %17, align 8
  %231 = icmp sle i64 %230, 2044
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %234 = load i64, i64* %17, align 8
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  call void @long2str(i8* %235, i32 0)
  br label %236

236:                                              ; preds = %232, %227
  %237 = load i64, i64* %17, align 8
  %238 = add nsw i64 %237, 4
  store i64 %238, i64* %17, align 8
  %239 = load i64, i64* %17, align 8
  %240 = icmp sle i64 %239, 2044
  br i1 %240, label %241, label %249

241:                                              ; preds = %236
  %242 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %243 = load i64, i64* %17, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %246 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  call void @long2str(i8* %244, i32 %248)
  br label %249

249:                                              ; preds = %241, %236
  %250 = load i64, i64* %17, align 8
  %251 = add nsw i64 %250, 4
  store i64 %251, i64* %17, align 8
  %252 = load i64, i64* %17, align 8
  %253 = icmp sle i64 %252, 2044
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %256 = load i64, i64* %17, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %259 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  call void @long2str(i8* %257, i32 %261)
  br label %262

262:                                              ; preds = %254, %249
  %263 = load i64, i64* %17, align 8
  %264 = add nsw i64 %263, 4
  store i64 %264, i64* %17, align 8
  %265 = load i64, i64* %17, align 8
  %266 = icmp sle i64 %265, 2044
  br i1 %266, label %267, label %271

267:                                              ; preds = %262
  %268 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %269 = load i64, i64* %17, align 8
  %270 = getelementptr inbounds i8, i8* %268, i64 %269
  call void @long2str(i8* %270, i32 0)
  br label %271

271:                                              ; preds = %267, %262
  %272 = load i64, i64* %17, align 8
  %273 = add nsw i64 %272, 4
  store i64 %273, i64* %17, align 8
  %274 = load i64, i64* %17, align 8
  %275 = icmp sle i64 %274, 2044
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %278 = load i64, i64* %17, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  call void @long2str(i8* %279, i32 0)
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i64, i64* %17, align 8
  %282 = add nsw i64 %281, 4
  store i64 %282, i64* %17, align 8
  %283 = load i64, i64* %17, align 8
  %284 = icmp sle i64 %283, 2044
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %287 = load i64, i64* %17, align 8
  %288 = getelementptr inbounds i8, i8* %286, i64 %287
  call void @long2str(i8* %288, i32 0)
  br label %289

289:                                              ; preds = %285, %280
  %290 = load i64, i64* %17, align 8
  %291 = add nsw i64 %290, 4
  store i64 %291, i64* %17, align 8
  %292 = load i64, i64* %17, align 8
  %293 = icmp sle i64 %292, 2044
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %296 = load i64, i64* %17, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  call void @long2str(i8* %297, i32 0)
  br label %298

298:                                              ; preds = %294, %289
  %299 = load i64, i64* %17, align 8
  %300 = add nsw i64 %299, 4
  store i64 %300, i64* %17, align 8
  %301 = load i64, i64* %17, align 8
  %302 = icmp sle i64 %301, 2044
  br i1 %302, label %303, label %307

303:                                              ; preds = %298
  %304 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %305 = load i64, i64* %17, align 8
  %306 = getelementptr inbounds i8, i8* %304, i64 %305
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %306, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %307

307:                                              ; preds = %303, %298
  %308 = load i64, i64* %17, align 8
  %309 = add nsw i64 %308, 4
  store i64 %309, i64* %17, align 8
  %310 = load i64, i64* %17, align 8
  %311 = icmp sle i64 %310, 2044
  br i1 %311, label %312, label %316

312:                                              ; preds = %307
  %313 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %314 = load i64, i64* %17, align 8
  %315 = getelementptr inbounds i8, i8* %313, i64 %314
  call void @long2str(i8* %315, i32 0)
  br label %316

316:                                              ; preds = %312, %307
  %317 = load i64, i64* %17, align 8
  %318 = add nsw i64 %317, 4
  store i64 %318, i64* %17, align 8
  %319 = load i64, i64* %17, align 8
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %14, align 4
  %321 = load i64, i64* %17, align 8
  %322 = icmp sle i64 %321, 2044
  br i1 %322, label %323, label %327

323:                                              ; preds = %316
  %324 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %325 = load i64, i64* %17, align 8
  %326 = getelementptr inbounds i8, i8* %324, i64 %325
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %326, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4, i1 false)
  br label %327

327:                                              ; preds = %323, %316
  %328 = load i64, i64* %17, align 8
  %329 = add nsw i64 %328, 4
  store i64 %329, i64* %17, align 8
  %330 = load i64, i64* %17, align 8
  %331 = icmp sle i64 %330, 2044
  br i1 %331, label %332, label %336

332:                                              ; preds = %327
  %333 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %334 = load i64, i64* %17, align 8
  %335 = getelementptr inbounds i8, i8* %333, i64 %334
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %335, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i1 false)
  br label %336

336:                                              ; preds = %332, %327
  %337 = load i64, i64* %17, align 8
  %338 = add nsw i64 %337, 4
  store i64 %338, i64* %17, align 8
  %339 = load i64, i64* %17, align 8
  %340 = icmp sle i64 %339, 2044
  br i1 %340, label %341, label %345

341:                                              ; preds = %336
  %342 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %343 = load i64, i64* %17, align 8
  %344 = getelementptr inbounds i8, i8* %342, i64 %343
  call void @long2str(i8* %344, i32 56)
  br label %345

345:                                              ; preds = %341, %336
  %346 = load i64, i64* %17, align 8
  %347 = add nsw i64 %346, 4
  store i64 %347, i64* %17, align 8
  %348 = load i64, i64* %17, align 8
  %349 = icmp sle i64 %348, 2044
  br i1 %349, label %350, label %354

350:                                              ; preds = %345
  %351 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %352 = load i64, i64* %17, align 8
  %353 = getelementptr inbounds i8, i8* %351, i64 %352
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %353, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 4, i1 false)
  br label %354

354:                                              ; preds = %350, %345
  %355 = load i64, i64* %17, align 8
  %356 = add nsw i64 %355, 4
  store i64 %356, i64* %17, align 8
  %357 = load i64, i64* %17, align 8
  %358 = icmp sle i64 %357, 2044
  br i1 %358, label %359, label %366

359:                                              ; preds = %354
  %360 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %361 = load i64, i64* %17, align 8
  %362 = getelementptr inbounds i8, i8* %360, i64 %361
  %363 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %364 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %363, i32 0, i32 5
  %365 = getelementptr inbounds [8 x i8], [8 x i8]* %364, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %362, i8* align 8 %365, i64 4, i1 false)
  br label %366

366:                                              ; preds = %359, %354
  %367 = load i64, i64* %17, align 8
  %368 = add nsw i64 %367, 4
  store i64 %368, i64* %17, align 8
  %369 = load i64, i64* %17, align 8
  %370 = icmp sle i64 %369, 2044
  br i1 %370, label %371, label %375

371:                                              ; preds = %366
  %372 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %373 = load i64, i64* %17, align 8
  %374 = getelementptr inbounds i8, i8* %372, i64 %373
  call void @long2str(i8* %374, i32 0)
  br label %375

375:                                              ; preds = %371, %366
  %376 = load i64, i64* %17, align 8
  %377 = add nsw i64 %376, 4
  store i64 %377, i64* %17, align 8
  %378 = load i64, i64* %17, align 8
  %379 = icmp sle i64 %378, 2044
  br i1 %379, label %380, label %384

380:                                              ; preds = %375
  %381 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %382 = load i64, i64* %17, align 8
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  call void @long2str(i8* %383, i32 0)
  br label %384

384:                                              ; preds = %380, %375
  %385 = load i64, i64* %17, align 8
  %386 = add nsw i64 %385, 4
  store i64 %386, i64* %17, align 8
  %387 = load i64, i64* %17, align 8
  %388 = icmp sle i64 %387, 2044
  br i1 %388, label %389, label %393

389:                                              ; preds = %384
  %390 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %391 = load i64, i64* %17, align 8
  %392 = getelementptr inbounds i8, i8* %390, i64 %391
  call void @long2str(i8* %392, i32 0)
  br label %393

393:                                              ; preds = %389, %384
  %394 = load i64, i64* %17, align 8
  %395 = add nsw i64 %394, 4
  store i64 %395, i64* %17, align 8
  %396 = load i64, i64* %17, align 8
  %397 = icmp sle i64 %396, 2044
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %400 = load i64, i64* %17, align 8
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  call void @long2str(i8* %401, i32 1000000)
  br label %402

402:                                              ; preds = %398, %393
  %403 = load i64, i64* %17, align 8
  %404 = add nsw i64 %403, 4
  store i64 %404, i64* %17, align 8
  %405 = load i64, i64* %17, align 8
  %406 = icmp sle i64 %405, 2044
  br i1 %406, label %407, label %412

407:                                              ; preds = %402
  %408 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %409 = load i64, i64* %17, align 8
  %410 = getelementptr inbounds i8, i8* %408, i64 %409
  %411 = load i32, i32* %9, align 4
  call void @long2str(i8* %410, i32 %411)
  br label %412

412:                                              ; preds = %407, %402
  %413 = load i64, i64* %17, align 8
  %414 = add nsw i64 %413, 4
  store i64 %414, i64* %17, align 8
  %415 = load i64, i64* %17, align 8
  %416 = icmp sle i64 %415, 2044
  br i1 %416, label %417, label %421

417:                                              ; preds = %412
  %418 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %419 = load i64, i64* %17, align 8
  %420 = getelementptr inbounds i8, i8* %418, i64 %419
  call void @long2str(i8* %420, i32 0)
  br label %421

421:                                              ; preds = %417, %412
  %422 = load i64, i64* %17, align 8
  %423 = add nsw i64 %422, 4
  store i64 %423, i64* %17, align 8
  %424 = load i64, i64* %17, align 8
  %425 = icmp sle i64 %424, 2044
  br i1 %425, label %426, label %434

426:                                              ; preds = %421
  %427 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %428 = load i64, i64* %17, align 8
  %429 = getelementptr inbounds i8, i8* %427, i64 %428
  %430 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %431 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %430, i32 0, i32 8
  %432 = load i64, i64* %431, align 8
  %433 = trunc i64 %432 to i32
  call void @long2str(i8* %429, i32 %433)
  br label %434

434:                                              ; preds = %426, %421
  %435 = load i64, i64* %17, align 8
  %436 = add nsw i64 %435, 4
  store i64 %436, i64* %17, align 8
  %437 = load i64, i64* %17, align 8
  %438 = icmp sle i64 %437, 2044
  br i1 %438, label %439, label %443

439:                                              ; preds = %434
  %440 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %441 = load i64, i64* %17, align 8
  %442 = getelementptr inbounds i8, i8* %440, i64 %441
  call void @long2str(i8* %442, i32 0)
  br label %443

443:                                              ; preds = %439, %434
  %444 = load i64, i64* %17, align 8
  %445 = add nsw i64 %444, 4
  store i64 %445, i64* %17, align 8
  %446 = load i64, i64* %17, align 8
  %447 = icmp sle i64 %446, 2044
  br i1 %447, label %448, label %452

448:                                              ; preds = %443
  %449 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %450 = load i64, i64* %17, align 8
  %451 = getelementptr inbounds i8, i8* %449, i64 %450
  call void @long2str(i8* %451, i32 -1)
  br label %452

452:                                              ; preds = %448, %443
  %453 = load i64, i64* %17, align 8
  %454 = add nsw i64 %453, 4
  store i64 %454, i64* %17, align 8
  %455 = load i64, i64* %17, align 8
  %456 = icmp sle i64 %455, 2044
  br i1 %456, label %457, label %461

457:                                              ; preds = %452
  %458 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %459 = load i64, i64* %17, align 8
  %460 = getelementptr inbounds i8, i8* %458, i64 %459
  call void @long2str(i8* %460, i32 0)
  br label %461

461:                                              ; preds = %457, %452
  %462 = load i64, i64* %17, align 8
  %463 = add nsw i64 %462, 4
  store i64 %463, i64* %17, align 8
  %464 = load i64, i64* %17, align 8
  %465 = icmp sle i64 %464, 2044
  br i1 %465, label %466, label %470

466:                                              ; preds = %461
  %467 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %468 = load i64, i64* %17, align 8
  %469 = getelementptr inbounds i8, i8* %467, i64 %468
  call void @long2str(i8* %469, i32 0)
  br label %470

470:                                              ; preds = %466, %461
  %471 = load i64, i64* %17, align 8
  %472 = add nsw i64 %471, 4
  store i64 %472, i64* %17, align 8
  %473 = load i64, i64* %17, align 8
  %474 = icmp sle i64 %473, 2044
  br i1 %474, label %475, label %479

475:                                              ; preds = %470
  %476 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %477 = load i64, i64* %17, align 8
  %478 = getelementptr inbounds i8, i8* %476, i64 %477
  call void @long2str(i8* %478, i32 0)
  br label %479

479:                                              ; preds = %475, %470
  %480 = load i64, i64* %17, align 8
  %481 = add nsw i64 %480, 4
  store i64 %481, i64* %17, align 8
  %482 = load i64, i64* %17, align 8
  %483 = icmp sle i64 %482, 2044
  br i1 %483, label %484, label %488

484:                                              ; preds = %479
  %485 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %486 = load i64, i64* %17, align 8
  %487 = getelementptr inbounds i8, i8* %485, i64 %486
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %487, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i1 false)
  br label %488

488:                                              ; preds = %484, %479
  %489 = load i64, i64* %17, align 8
  %490 = add nsw i64 %489, 4
  store i64 %490, i64* %17, align 8
  %491 = load i64, i64* %17, align 8
  %492 = icmp sle i64 %491, 2044
  br i1 %492, label %493, label %497

493:                                              ; preds = %488
  %494 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %495 = load i64, i64* %17, align 8
  %496 = getelementptr inbounds i8, i8* %494, i64 %495
  call void @long2str(i8* %496, i32 40)
  br label %497

497:                                              ; preds = %493, %488
  %498 = load i64, i64* %17, align 8
  %499 = add nsw i64 %498, 4
  store i64 %499, i64* %17, align 8
  %500 = load i64, i64* %17, align 8
  %501 = icmp sle i64 %500, 2044
  br i1 %501, label %502, label %506

502:                                              ; preds = %497
  %503 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %504 = load i64, i64* %17, align 8
  %505 = getelementptr inbounds i8, i8* %503, i64 %504
  call void @long2str(i8* %505, i32 40)
  br label %506

506:                                              ; preds = %502, %497
  %507 = load i64, i64* %17, align 8
  %508 = add nsw i64 %507, 4
  store i64 %508, i64* %17, align 8
  %509 = load i64, i64* %17, align 8
  %510 = icmp sle i64 %509, 2044
  br i1 %510, label %511, label %519

511:                                              ; preds = %506
  %512 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %513 = load i64, i64* %17, align 8
  %514 = getelementptr inbounds i8, i8* %512, i64 %513
  %515 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %516 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %515, i32 0, i32 2
  %517 = load i64, i64* %516, align 8
  %518 = trunc i64 %517 to i32
  call void @long2str(i8* %514, i32 %518)
  br label %519

519:                                              ; preds = %511, %506
  %520 = load i64, i64* %17, align 8
  %521 = add nsw i64 %520, 4
  store i64 %521, i64* %17, align 8
  %522 = load i64, i64* %17, align 8
  %523 = icmp sle i64 %522, 2044
  br i1 %523, label %524, label %532

524:                                              ; preds = %519
  %525 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %526 = load i64, i64* %17, align 8
  %527 = getelementptr inbounds i8, i8* %525, i64 %526
  %528 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %529 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %528, i32 0, i32 3
  %530 = load i64, i64* %529, align 8
  %531 = trunc i64 %530 to i32
  call void @long2str(i8* %527, i32 %531)
  br label %532

532:                                              ; preds = %524, %519
  %533 = load i64, i64* %17, align 8
  %534 = add nsw i64 %533, 4
  store i64 %534, i64* %17, align 8
  %535 = load i64, i64* %17, align 8
  %536 = icmp sle i64 %535, 2046
  br i1 %536, label %537, label %543

537:                                              ; preds = %532
  %538 = load i64, i64* %17, align 8
  %539 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %538
  store i8 1, i8* %539, align 1
  %540 = load i64, i64* %17, align 8
  %541 = add nsw i64 %540, 1
  %542 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %541
  store i8 0, i8* %542, align 1
  br label %543

543:                                              ; preds = %537, %532
  %544 = load i64, i64* %17, align 8
  %545 = add nsw i64 %544, 2
  store i64 %545, i64* %17, align 8
  %546 = load i64, i64* %17, align 8
  %547 = icmp sle i64 %546, 2046
  br i1 %547, label %548, label %554

548:                                              ; preds = %543
  %549 = load i64, i64* %17, align 8
  %550 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %549
  store i8 24, i8* %550, align 1
  %551 = load i64, i64* %17, align 8
  %552 = add nsw i64 %551, 1
  %553 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %552
  store i8 0, i8* %553, align 1
  br label %554

554:                                              ; preds = %548, %543
  %555 = load i64, i64* %17, align 8
  %556 = add nsw i64 %555, 2
  store i64 %556, i64* %17, align 8
  %557 = load i64, i64* %17, align 8
  %558 = icmp sle i64 %557, 2044
  br i1 %558, label %559, label %566

559:                                              ; preds = %554
  %560 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %561 = load i64, i64* %17, align 8
  %562 = getelementptr inbounds i8, i8* %560, i64 %561
  %563 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %564 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %563, i32 0, i32 5
  %565 = getelementptr inbounds [8 x i8], [8 x i8]* %564, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %562, i8* align 8 %565, i64 4, i1 false)
  br label %566

566:                                              ; preds = %559, %554
  %567 = load i64, i64* %17, align 8
  %568 = add nsw i64 %567, 4
  store i64 %568, i64* %17, align 8
  %569 = load i64, i64* %17, align 8
  %570 = icmp sle i64 %569, 2044
  br i1 %570, label %571, label %584

571:                                              ; preds = %566
  %572 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %573 = load i64, i64* %17, align 8
  %574 = getelementptr inbounds i8, i8* %572, i64 %573
  %575 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %576 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %575, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %579 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = mul nsw i64 %577, %580
  %582 = mul nsw i64 %581, 3
  %583 = trunc i64 %582 to i32
  call void @long2str(i8* %574, i32 %583)
  br label %584

584:                                              ; preds = %571, %566
  %585 = load i64, i64* %17, align 8
  %586 = add nsw i64 %585, 4
  store i64 %586, i64* %17, align 8
  %587 = load i64, i64* %17, align 8
  %588 = icmp sle i64 %587, 2044
  br i1 %588, label %589, label %593

589:                                              ; preds = %584
  %590 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %591 = load i64, i64* %17, align 8
  %592 = getelementptr inbounds i8, i8* %590, i64 %591
  call void @long2str(i8* %592, i32 0)
  br label %593

593:                                              ; preds = %589, %584
  %594 = load i64, i64* %17, align 8
  %595 = add nsw i64 %594, 4
  store i64 %595, i64* %17, align 8
  %596 = load i64, i64* %17, align 8
  %597 = icmp sle i64 %596, 2044
  br i1 %597, label %598, label %602

598:                                              ; preds = %593
  %599 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %600 = load i64, i64* %17, align 8
  %601 = getelementptr inbounds i8, i8* %599, i64 %600
  call void @long2str(i8* %601, i32 0)
  br label %602

602:                                              ; preds = %598, %593
  %603 = load i64, i64* %17, align 8
  %604 = add nsw i64 %603, 4
  store i64 %604, i64* %17, align 8
  %605 = load i64, i64* %17, align 8
  %606 = icmp sle i64 %605, 2044
  br i1 %606, label %607, label %611

607:                                              ; preds = %602
  %608 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %609 = load i64, i64* %17, align 8
  %610 = getelementptr inbounds i8, i8* %608, i64 %609
  call void @long2str(i8* %610, i32 0)
  br label %611

611:                                              ; preds = %607, %602
  %612 = load i64, i64* %17, align 8
  %613 = add nsw i64 %612, 4
  store i64 %613, i64* %17, align 8
  %614 = load i64, i64* %17, align 8
  %615 = icmp sle i64 %614, 2044
  br i1 %615, label %616, label %620

616:                                              ; preds = %611
  %617 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %618 = load i64, i64* %17, align 8
  %619 = getelementptr inbounds i8, i8* %617, i64 %618
  call void @long2str(i8* %619, i32 0)
  br label %620

620:                                              ; preds = %616, %611
  %621 = load i64, i64* %17, align 8
  %622 = add nsw i64 %621, 4
  store i64 %622, i64* %17, align 8
  %623 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %624 = load i32, i32* %14, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i8, i8* %623, i64 %625
  %627 = getelementptr inbounds i8, i8* %626, i64 -4
  %628 = load i64, i64* %17, align 8
  %629 = load i32, i32* %14, align 4
  %630 = sext i32 %629 to i64
  %631 = sub nsw i64 %628, %630
  %632 = trunc i64 %631 to i32
  call void @long2str(i8* %627, i32 %632)
  store i32 0, i32* %15, align 4
  br label %633

633:                                              ; preds = %1016, %620
  %634 = load i32, i32* %15, align 4
  %635 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %636 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %635, i32 0, i32 24
  %637 = load i32, i32* %636, align 8
  %638 = icmp slt i32 %634, %637
  br i1 %638, label %639, label %1019

639:                                              ; preds = %633
  %640 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %641 = load i32, i32* %15, align 4
  %642 = call i32 @avi_sampsize(%struct.avi_t* %640, i32 %641)
  store i32 %642, i32* %6, align 4
  %643 = load i64, i64* %17, align 8
  %644 = icmp sle i64 %643, 2044
  br i1 %644, label %645, label %649

645:                                              ; preds = %639
  %646 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %647 = load i64, i64* %17, align 8
  %648 = getelementptr inbounds i8, i8* %646, i64 %647
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %648, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %649

649:                                              ; preds = %645, %639
  %650 = load i64, i64* %17, align 8
  %651 = add nsw i64 %650, 4
  store i64 %651, i64* %17, align 8
  %652 = load i64, i64* %17, align 8
  %653 = icmp sle i64 %652, 2044
  br i1 %653, label %654, label %658

654:                                              ; preds = %649
  %655 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %656 = load i64, i64* %17, align 8
  %657 = getelementptr inbounds i8, i8* %655, i64 %656
  call void @long2str(i8* %657, i32 0)
  br label %658

658:                                              ; preds = %654, %649
  %659 = load i64, i64* %17, align 8
  %660 = add nsw i64 %659, 4
  store i64 %660, i64* %17, align 8
  %661 = load i64, i64* %17, align 8
  %662 = trunc i64 %661 to i32
  store i32 %662, i32* %14, align 4
  %663 = load i64, i64* %17, align 8
  %664 = icmp sle i64 %663, 2044
  br i1 %664, label %665, label %669

665:                                              ; preds = %658
  %666 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %667 = load i64, i64* %17, align 8
  %668 = getelementptr inbounds i8, i8* %666, i64 %667
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %668, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4, i1 false)
  br label %669

669:                                              ; preds = %665, %658
  %670 = load i64, i64* %17, align 8
  %671 = add nsw i64 %670, 4
  store i64 %671, i64* %17, align 8
  %672 = load i64, i64* %17, align 8
  %673 = icmp sle i64 %672, 2044
  br i1 %673, label %674, label %678

674:                                              ; preds = %669
  %675 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %676 = load i64, i64* %17, align 8
  %677 = getelementptr inbounds i8, i8* %675, i64 %676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %677, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4, i1 false)
  br label %678

678:                                              ; preds = %674, %669
  %679 = load i64, i64* %17, align 8
  %680 = add nsw i64 %679, 4
  store i64 %680, i64* %17, align 8
  %681 = load i64, i64* %17, align 8
  %682 = icmp sle i64 %681, 2044
  br i1 %682, label %683, label %687

683:                                              ; preds = %678
  %684 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %685 = load i64, i64* %17, align 8
  %686 = getelementptr inbounds i8, i8* %684, i64 %685
  call void @long2str(i8* %686, i32 56)
  br label %687

687:                                              ; preds = %683, %678
  %688 = load i64, i64* %17, align 8
  %689 = add nsw i64 %688, 4
  store i64 %689, i64* %17, align 8
  %690 = load i64, i64* %17, align 8
  %691 = icmp sle i64 %690, 2044
  br i1 %691, label %692, label %696

692:                                              ; preds = %687
  %693 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %694 = load i64, i64* %17, align 8
  %695 = getelementptr inbounds i8, i8* %693, i64 %694
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %695, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4, i1 false)
  br label %696

696:                                              ; preds = %692, %687
  %697 = load i64, i64* %17, align 8
  %698 = add nsw i64 %697, 4
  store i64 %698, i64* %17, align 8
  %699 = load i64, i64* %17, align 8
  %700 = icmp sle i64 %699, 2044
  br i1 %700, label %701, label %705

701:                                              ; preds = %696
  %702 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %703 = load i64, i64* %17, align 8
  %704 = getelementptr inbounds i8, i8* %702, i64 %703
  call void @long2str(i8* %704, i32 0)
  br label %705

705:                                              ; preds = %701, %696
  %706 = load i64, i64* %17, align 8
  %707 = add nsw i64 %706, 4
  store i64 %707, i64* %17, align 8
  %708 = load i64, i64* %17, align 8
  %709 = icmp sle i64 %708, 2044
  br i1 %709, label %710, label %714

710:                                              ; preds = %705
  %711 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %712 = load i64, i64* %17, align 8
  %713 = getelementptr inbounds i8, i8* %711, i64 %712
  call void @long2str(i8* %713, i32 0)
  br label %714

714:                                              ; preds = %710, %705
  %715 = load i64, i64* %17, align 8
  %716 = add nsw i64 %715, 4
  store i64 %716, i64* %17, align 8
  %717 = load i64, i64* %17, align 8
  %718 = icmp sle i64 %717, 2044
  br i1 %718, label %719, label %723

719:                                              ; preds = %714
  %720 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %721 = load i64, i64* %17, align 8
  %722 = getelementptr inbounds i8, i8* %720, i64 %721
  call void @long2str(i8* %722, i32 0)
  br label %723

723:                                              ; preds = %719, %714
  %724 = load i64, i64* %17, align 8
  %725 = add nsw i64 %724, 4
  store i64 %725, i64* %17, align 8
  %726 = load i64, i64* %17, align 8
  %727 = icmp sle i64 %726, 2044
  br i1 %727, label %728, label %732

728:                                              ; preds = %723
  %729 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %730 = load i64, i64* %17, align 8
  %731 = getelementptr inbounds i8, i8* %729, i64 %730
  call void @long2str(i8* %731, i32 0)
  br label %732

732:                                              ; preds = %728, %723
  %733 = load i64, i64* %17, align 8
  %734 = add nsw i64 %733, 4
  store i64 %734, i64* %17, align 8
  %735 = load i64, i64* %17, align 8
  %736 = icmp sle i64 %735, 2044
  br i1 %736, label %737, label %743

737:                                              ; preds = %732
  %738 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %739 = load i64, i64* %17, align 8
  %740 = getelementptr inbounds i8, i8* %738, i64 %739
  %741 = load i32, i32* %6, align 4
  %742 = sdiv i32 %741, 4
  call void @long2str(i8* %740, i32 %742)
  br label %743

743:                                              ; preds = %737, %732
  %744 = load i64, i64* %17, align 8
  %745 = add nsw i64 %744, 4
  store i64 %745, i64* %17, align 8
  %746 = load i64, i64* %17, align 8
  %747 = icmp sle i64 %746, 2044
  br i1 %747, label %748, label %762

748:                                              ; preds = %743
  %749 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %750 = load i64, i64* %17, align 8
  %751 = getelementptr inbounds i8, i8* %749, i64 %750
  %752 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %753 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %752, i32 0, i32 12
  %754 = load i32, i32* %15, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %753, i64 0, i64 %755
  %757 = getelementptr inbounds %struct.track_s, %struct.track_s* %756, i32 0, i32 4
  %758 = load i64, i64* %757, align 8
  %759 = mul nsw i64 1000, %758
  %760 = sdiv i64 %759, 8
  %761 = trunc i64 %760 to i32
  call void @long2str(i8* %751, i32 %761)
  br label %762

762:                                              ; preds = %748, %743
  %763 = load i64, i64* %17, align 8
  %764 = add nsw i64 %763, 4
  store i64 %764, i64* %17, align 8
  %765 = load i64, i64* %17, align 8
  %766 = icmp sle i64 %765, 2044
  br i1 %766, label %767, label %771

767:                                              ; preds = %762
  %768 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %769 = load i64, i64* %17, align 8
  %770 = getelementptr inbounds i8, i8* %768, i64 %769
  call void @long2str(i8* %770, i32 0)
  br label %771

771:                                              ; preds = %767, %762
  %772 = load i64, i64* %17, align 8
  %773 = add nsw i64 %772, 4
  store i64 %773, i64* %17, align 8
  %774 = load i64, i64* %17, align 8
  %775 = icmp sle i64 %774, 2044
  br i1 %775, label %776, label %792

776:                                              ; preds = %771
  %777 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %778 = load i64, i64* %17, align 8
  %779 = getelementptr inbounds i8, i8* %777, i64 %778
  %780 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %781 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %780, i32 0, i32 12
  %782 = load i32, i32* %15, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %781, i64 0, i64 %783
  %785 = getelementptr inbounds %struct.track_s, %struct.track_s* %784, i32 0, i32 6
  %786 = load i64, i64* %785, align 8
  %787 = mul nsw i64 4, %786
  %788 = load i32, i32* %6, align 4
  %789 = sext i32 %788 to i64
  %790 = sdiv i64 %787, %789
  %791 = trunc i64 %790 to i32
  call void @long2str(i8* %779, i32 %791)
  br label %792

792:                                              ; preds = %776, %771
  %793 = load i64, i64* %17, align 8
  %794 = add nsw i64 %793, 4
  store i64 %794, i64* %17, align 8
  %795 = load i64, i64* %17, align 8
  %796 = icmp sle i64 %795, 2044
  br i1 %796, label %797, label %801

797:                                              ; preds = %792
  %798 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %799 = load i64, i64* %17, align 8
  %800 = getelementptr inbounds i8, i8* %798, i64 %799
  call void @long2str(i8* %800, i32 0)
  br label %801

801:                                              ; preds = %797, %792
  %802 = load i64, i64* %17, align 8
  %803 = add nsw i64 %802, 4
  store i64 %803, i64* %17, align 8
  %804 = load i64, i64* %17, align 8
  %805 = icmp sle i64 %804, 2044
  br i1 %805, label %806, label %810

806:                                              ; preds = %801
  %807 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %808 = load i64, i64* %17, align 8
  %809 = getelementptr inbounds i8, i8* %807, i64 %808
  call void @long2str(i8* %809, i32 -1)
  br label %810

810:                                              ; preds = %806, %801
  %811 = load i64, i64* %17, align 8
  %812 = add nsw i64 %811, 4
  store i64 %812, i64* %17, align 8
  %813 = load i64, i64* %17, align 8
  %814 = icmp sle i64 %813, 2044
  br i1 %814, label %815, label %821

815:                                              ; preds = %810
  %816 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %817 = load i64, i64* %17, align 8
  %818 = getelementptr inbounds i8, i8* %816, i64 %817
  %819 = load i32, i32* %6, align 4
  %820 = sdiv i32 %819, 4
  call void @long2str(i8* %818, i32 %820)
  br label %821

821:                                              ; preds = %815, %810
  %822 = load i64, i64* %17, align 8
  %823 = add nsw i64 %822, 4
  store i64 %823, i64* %17, align 8
  %824 = load i64, i64* %17, align 8
  %825 = icmp sle i64 %824, 2044
  br i1 %825, label %826, label %830

826:                                              ; preds = %821
  %827 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %828 = load i64, i64* %17, align 8
  %829 = getelementptr inbounds i8, i8* %827, i64 %828
  call void @long2str(i8* %829, i32 0)
  br label %830

830:                                              ; preds = %826, %821
  %831 = load i64, i64* %17, align 8
  %832 = add nsw i64 %831, 4
  store i64 %832, i64* %17, align 8
  %833 = load i64, i64* %17, align 8
  %834 = icmp sle i64 %833, 2044
  br i1 %834, label %835, label %839

835:                                              ; preds = %830
  %836 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %837 = load i64, i64* %17, align 8
  %838 = getelementptr inbounds i8, i8* %836, i64 %837
  call void @long2str(i8* %838, i32 0)
  br label %839

839:                                              ; preds = %835, %830
  %840 = load i64, i64* %17, align 8
  %841 = add nsw i64 %840, 4
  store i64 %841, i64* %17, align 8
  %842 = load i64, i64* %17, align 8
  %843 = icmp sle i64 %842, 2044
  br i1 %843, label %844, label %848

844:                                              ; preds = %839
  %845 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %846 = load i64, i64* %17, align 8
  %847 = getelementptr inbounds i8, i8* %845, i64 %846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %847, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4, i1 false)
  br label %848

848:                                              ; preds = %844, %839
  %849 = load i64, i64* %17, align 8
  %850 = add nsw i64 %849, 4
  store i64 %850, i64* %17, align 8
  %851 = load i64, i64* %17, align 8
  %852 = icmp sle i64 %851, 2044
  br i1 %852, label %853, label %857

853:                                              ; preds = %848
  %854 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %855 = load i64, i64* %17, align 8
  %856 = getelementptr inbounds i8, i8* %854, i64 %855
  call void @long2str(i8* %856, i32 16)
  br label %857

857:                                              ; preds = %853, %848
  %858 = load i64, i64* %17, align 8
  %859 = add nsw i64 %858, 4
  store i64 %859, i64* %17, align 8
  %860 = load i64, i64* %17, align 8
  %861 = icmp sle i64 %860, 2046
  br i1 %861, label %862, label %887

862:                                              ; preds = %857
  %863 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %864 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %863, i32 0, i32 12
  %865 = load i32, i32* %15, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %864, i64 0, i64 %866
  %868 = getelementptr inbounds %struct.track_s, %struct.track_s* %867, i32 0, i32 0
  %869 = load i64, i64* %868, align 8
  %870 = and i64 %869, 255
  %871 = trunc i64 %870 to i8
  %872 = load i64, i64* %17, align 8
  %873 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %872
  store i8 %871, i8* %873, align 1
  %874 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %875 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %874, i32 0, i32 12
  %876 = load i32, i32* %15, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %875, i64 0, i64 %877
  %879 = getelementptr inbounds %struct.track_s, %struct.track_s* %878, i32 0, i32 0
  %880 = load i64, i64* %879, align 8
  %881 = ashr i64 %880, 8
  %882 = and i64 %881, 255
  %883 = trunc i64 %882 to i8
  %884 = load i64, i64* %17, align 8
  %885 = add nsw i64 %884, 1
  %886 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %885
  store i8 %883, i8* %886, align 1
  br label %887

887:                                              ; preds = %862, %857
  %888 = load i64, i64* %17, align 8
  %889 = add nsw i64 %888, 2
  store i64 %889, i64* %17, align 8
  %890 = load i64, i64* %17, align 8
  %891 = icmp sle i64 %890, 2046
  br i1 %891, label %892, label %917

892:                                              ; preds = %887
  %893 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %894 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %893, i32 0, i32 12
  %895 = load i32, i32* %15, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %894, i64 0, i64 %896
  %898 = getelementptr inbounds %struct.track_s, %struct.track_s* %897, i32 0, i32 1
  %899 = load i64, i64* %898, align 8
  %900 = and i64 %899, 255
  %901 = trunc i64 %900 to i8
  %902 = load i64, i64* %17, align 8
  %903 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %902
  store i8 %901, i8* %903, align 1
  %904 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %905 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %904, i32 0, i32 12
  %906 = load i32, i32* %15, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %905, i64 0, i64 %907
  %909 = getelementptr inbounds %struct.track_s, %struct.track_s* %908, i32 0, i32 1
  %910 = load i64, i64* %909, align 8
  %911 = ashr i64 %910, 8
  %912 = and i64 %911, 255
  %913 = trunc i64 %912 to i8
  %914 = load i64, i64* %17, align 8
  %915 = add nsw i64 %914, 1
  %916 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %915
  store i8 %913, i8* %916, align 1
  br label %917

917:                                              ; preds = %892, %887
  %918 = load i64, i64* %17, align 8
  %919 = add nsw i64 %918, 2
  store i64 %919, i64* %17, align 8
  %920 = load i64, i64* %17, align 8
  %921 = icmp sle i64 %920, 2044
  br i1 %921, label %922, label %934

922:                                              ; preds = %917
  %923 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %924 = load i64, i64* %17, align 8
  %925 = getelementptr inbounds i8, i8* %923, i64 %924
  %926 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %927 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %926, i32 0, i32 12
  %928 = load i32, i32* %15, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %927, i64 0, i64 %929
  %931 = getelementptr inbounds %struct.track_s, %struct.track_s* %930, i32 0, i32 2
  %932 = load i64, i64* %931, align 8
  %933 = trunc i64 %932 to i32
  call void @long2str(i8* %925, i32 %933)
  br label %934

934:                                              ; preds = %922, %917
  %935 = load i64, i64* %17, align 8
  %936 = add nsw i64 %935, 4
  store i64 %936, i64* %17, align 8
  %937 = load i64, i64* %17, align 8
  %938 = icmp sle i64 %937, 2044
  br i1 %938, label %939, label %953

939:                                              ; preds = %934
  %940 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %941 = load i64, i64* %17, align 8
  %942 = getelementptr inbounds i8, i8* %940, i64 %941
  %943 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %944 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %943, i32 0, i32 12
  %945 = load i32, i32* %15, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %944, i64 0, i64 %946
  %948 = getelementptr inbounds %struct.track_s, %struct.track_s* %947, i32 0, i32 4
  %949 = load i64, i64* %948, align 8
  %950 = mul nsw i64 1000, %949
  %951 = sdiv i64 %950, 8
  %952 = trunc i64 %951 to i32
  call void @long2str(i8* %942, i32 %952)
  br label %953

953:                                              ; preds = %939, %934
  %954 = load i64, i64* %17, align 8
  %955 = add nsw i64 %954, 4
  store i64 %955, i64* %17, align 8
  %956 = load i64, i64* %17, align 8
  %957 = icmp sle i64 %956, 2046
  br i1 %957, label %958, label %973

958:                                              ; preds = %953
  %959 = load i32, i32* %6, align 4
  %960 = sdiv i32 %959, 4
  %961 = and i32 %960, 255
  %962 = trunc i32 %961 to i8
  %963 = load i64, i64* %17, align 8
  %964 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %963
  store i8 %962, i8* %964, align 1
  %965 = load i32, i32* %6, align 4
  %966 = sdiv i32 %965, 4
  %967 = ashr i32 %966, 8
  %968 = and i32 %967, 255
  %969 = trunc i32 %968 to i8
  %970 = load i64, i64* %17, align 8
  %971 = add nsw i64 %970, 1
  %972 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %971
  store i8 %969, i8* %972, align 1
  br label %973

973:                                              ; preds = %958, %953
  %974 = load i64, i64* %17, align 8
  %975 = add nsw i64 %974, 2
  store i64 %975, i64* %17, align 8
  %976 = load i64, i64* %17, align 8
  %977 = icmp sle i64 %976, 2046
  br i1 %977, label %978, label %1003

978:                                              ; preds = %973
  %979 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %980 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %979, i32 0, i32 12
  %981 = load i32, i32* %15, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %980, i64 0, i64 %982
  %984 = getelementptr inbounds %struct.track_s, %struct.track_s* %983, i32 0, i32 3
  %985 = load i64, i64* %984, align 8
  %986 = and i64 %985, 255
  %987 = trunc i64 %986 to i8
  %988 = load i64, i64* %17, align 8
  %989 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %988
  store i8 %987, i8* %989, align 1
  %990 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %991 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %990, i32 0, i32 12
  %992 = load i32, i32* %15, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %991, i64 0, i64 %993
  %995 = getelementptr inbounds %struct.track_s, %struct.track_s* %994, i32 0, i32 3
  %996 = load i64, i64* %995, align 8
  %997 = ashr i64 %996, 8
  %998 = and i64 %997, 255
  %999 = trunc i64 %998 to i8
  %1000 = load i64, i64* %17, align 8
  %1001 = add nsw i64 %1000, 1
  %1002 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 %1001
  store i8 %999, i8* %1002, align 1
  br label %1003

1003:                                             ; preds = %978, %973
  %1004 = load i64, i64* %17, align 8
  %1005 = add nsw i64 %1004, 2
  store i64 %1005, i64* %17, align 8
  %1006 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1007 = load i32, i32* %14, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds i8, i8* %1006, i64 %1008
  %1010 = getelementptr inbounds i8, i8* %1009, i64 -4
  %1011 = load i64, i64* %17, align 8
  %1012 = load i32, i32* %14, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = sub nsw i64 %1011, %1013
  %1015 = trunc i64 %1014 to i32
  call void @long2str(i8* %1010, i32 %1015)
  br label %1016

1016:                                             ; preds = %1003
  %1017 = load i32, i32* %15, align 4
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, i32* %15, align 4
  br label %633

1019:                                             ; preds = %633
  %1020 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1021 = load i32, i32* %13, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i8, i8* %1020, i64 %1022
  %1024 = getelementptr inbounds i8, i8* %1023, i64 -4
  %1025 = load i64, i64* %17, align 8
  %1026 = load i32, i32* %13, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = sub nsw i64 %1025, %1027
  %1029 = trunc i64 %1028 to i32
  call void @long2str(i8* %1024, i32 %1029)
  %1030 = load i64, i64* %17, align 8
  %1031 = icmp sle i64 %1030, 2044
  br i1 %1031, label %1032, label %1036

1032:                                             ; preds = %1019
  %1033 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1034 = load i64, i64* %17, align 8
  %1035 = getelementptr inbounds i8, i8* %1033, i64 %1034
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1035, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %1036

1036:                                             ; preds = %1032, %1019
  %1037 = load i64, i64* %17, align 8
  %1038 = add nsw i64 %1037, 4
  store i64 %1038, i64* %17, align 8
  store i64 76, i64* %18, align 8
  %1039 = load i64, i64* %17, align 8
  %1040 = icmp sle i64 %1039, 2044
  br i1 %1040, label %1041, label %1047

1041:                                             ; preds = %1036
  %1042 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1043 = load i64, i64* %17, align 8
  %1044 = getelementptr inbounds i8, i8* %1042, i64 %1043
  %1045 = load i64, i64* %18, align 8
  %1046 = trunc i64 %1045 to i32
  call void @long2str(i8* %1044, i32 %1046)
  br label %1047

1047:                                             ; preds = %1041, %1036
  %1048 = load i64, i64* %17, align 8
  %1049 = add nsw i64 %1048, 4
  store i64 %1049, i64* %17, align 8
  %1050 = load i64, i64* %17, align 8
  %1051 = icmp sle i64 %1050, 2044
  br i1 %1051, label %1052, label %1056

1052:                                             ; preds = %1047
  %1053 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1054 = load i64, i64* %17, align 8
  %1055 = getelementptr inbounds i8, i8* %1053, i64 %1054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1055, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i64 4, i1 false)
  br label %1056

1056:                                             ; preds = %1052, %1047
  %1057 = load i64, i64* %17, align 8
  %1058 = add nsw i64 %1057, 4
  store i64 %1058, i64* %17, align 8
  %1059 = load i64, i64* %17, align 8
  %1060 = icmp sle i64 %1059, 2044
  br i1 %1060, label %1061, label %1065

1061:                                             ; preds = %1056
  %1062 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1063 = load i64, i64* %17, align 8
  %1064 = getelementptr inbounds i8, i8* %1062, i64 %1063
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1064, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i64 4, i1 false)
  br label %1065

1065:                                             ; preds = %1061, %1056
  %1066 = load i64, i64* %17, align 8
  %1067 = add nsw i64 %1066, 4
  store i64 %1067, i64* %17, align 8
  %1068 = load i64, i64* %17, align 8
  %1069 = icmp sle i64 %1068, 2044
  br i1 %1069, label %1070, label %1074

1070:                                             ; preds = %1065
  %1071 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1072 = load i64, i64* %17, align 8
  %1073 = getelementptr inbounds i8, i8* %1071, i64 %1072
  call void @long2str(i8* %1073, i32 64)
  br label %1074

1074:                                             ; preds = %1070, %1065
  %1075 = load i64, i64* %17, align 8
  %1076 = add nsw i64 %1075, 4
  store i64 %1076, i64* %17, align 8
  %1077 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #7
  %1078 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1079 = load i64, i64* %17, align 8
  %1080 = getelementptr inbounds i8, i8* %1078, i64 %1079
  call void @llvm.memset.p0i8.i64(i8* align 1 %1080, i8 0, i64 64, i1 false)
  %1081 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1082 = load i64, i64* %17, align 8
  %1083 = getelementptr inbounds i8, i8* %1081, i64 %1082
  %1084 = call i64 @strlen(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0)) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1083, i8* align 16 getelementptr inbounds ([64 x i8], [64 x i8]* @id_str, i64 0, i64 0), i64 %1084, i1 false)
  %1085 = load i64, i64* %17, align 8
  %1086 = add nsw i64 %1085, 64
  store i64 %1086, i64* %17, align 8
  %1087 = load i64, i64* %17, align 8
  %1088 = sub nsw i64 2048, %1087
  %1089 = sub nsw i64 %1088, 8
  %1090 = sub nsw i64 %1089, 12
  %1091 = trunc i64 %1090 to i32
  store i32 %1091, i32* %5, align 4
  %1092 = load i32, i32* %5, align 4
  %1093 = icmp sle i32 %1092, 0
  br i1 %1093, label %1094, label %1097

1094:                                             ; preds = %1074
  %1095 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1096 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1095, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

1097:                                             ; preds = %1074
  %1098 = load i64, i64* %17, align 8
  %1099 = icmp sle i64 %1098, 2044
  br i1 %1099, label %1100, label %1104

1100:                                             ; preds = %1097
  %1101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1102 = load i64, i64* %17, align 8
  %1103 = getelementptr inbounds i8, i8* %1101, i64 %1102
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1103, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i64 4, i1 false)
  br label %1104

1104:                                             ; preds = %1100, %1097
  %1105 = load i64, i64* %17, align 8
  %1106 = add nsw i64 %1105, 4
  store i64 %1106, i64* %17, align 8
  %1107 = load i64, i64* %17, align 8
  %1108 = icmp sle i64 %1107, 2044
  br i1 %1108, label %1109, label %1114

1109:                                             ; preds = %1104
  %1110 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1111 = load i64, i64* %17, align 8
  %1112 = getelementptr inbounds i8, i8* %1110, i64 %1111
  %1113 = load i32, i32* %5, align 4
  call void @long2str(i8* %1112, i32 %1113)
  br label %1114

1114:                                             ; preds = %1109, %1104
  %1115 = load i64, i64* %17, align 8
  %1116 = add nsw i64 %1115, 4
  store i64 %1116, i64* %17, align 8
  %1117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1118 = load i64, i64* %17, align 8
  %1119 = getelementptr inbounds i8, i8* %1117, i64 %1118
  %1120 = load i32, i32* %5, align 4
  %1121 = sext i32 %1120 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %1119, i8 0, i64 %1121, i1 false)
  %1122 = load i32, i32* %5, align 4
  %1123 = sext i32 %1122 to i64
  %1124 = load i64, i64* %17, align 8
  %1125 = add nsw i64 %1124, %1123
  store i64 %1125, i64* %17, align 8
  %1126 = load i64, i64* %17, align 8
  %1127 = icmp sle i64 %1126, 2044
  br i1 %1127, label %1128, label %1132

1128:                                             ; preds = %1114
  %1129 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1130 = load i64, i64* %17, align 8
  %1131 = getelementptr inbounds i8, i8* %1129, i64 %1130
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1131, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4, i1 false)
  br label %1132

1132:                                             ; preds = %1128, %1114
  %1133 = load i64, i64* %17, align 8
  %1134 = add nsw i64 %1133, 4
  store i64 %1134, i64* %17, align 8
  %1135 = load i64, i64* %17, align 8
  %1136 = icmp sle i64 %1135, 2044
  br i1 %1136, label %1137, label %1143

1137:                                             ; preds = %1132
  %1138 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1139 = load i64, i64* %17, align 8
  %1140 = getelementptr inbounds i8, i8* %1138, i64 %1139
  %1141 = load i64, i64* %12, align 8
  %1142 = trunc i64 %1141 to i32
  call void @long2str(i8* %1140, i32 %1142)
  br label %1143

1143:                                             ; preds = %1137, %1132
  %1144 = load i64, i64* %17, align 8
  %1145 = add nsw i64 %1144, 4
  store i64 %1145, i64* %17, align 8
  %1146 = load i64, i64* %17, align 8
  %1147 = icmp sle i64 %1146, 2044
  br i1 %1147, label %1148, label %1152

1148:                                             ; preds = %1143
  %1149 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1150 = load i64, i64* %17, align 8
  %1151 = getelementptr inbounds i8, i8* %1149, i64 %1150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1151, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4, i1 false)
  br label %1152

1152:                                             ; preds = %1148, %1143
  %1153 = load i64, i64* %17, align 8
  %1154 = add nsw i64 %1153, 4
  store i64 %1154, i64* %17, align 8
  %1155 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1156 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1155, i32 0, i32 0
  %1157 = load i64, i64* %1156, align 8
  %1158 = trunc i64 %1157 to i32
  %1159 = call i64 @lseek(i32 %1158, i64 0, i32 0) #7
  %1160 = icmp slt i64 %1159, 0
  br i1 %1160, label %1169, label %1161

1161:                                             ; preds = %1152
  %1162 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %1163 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1162, i32 0, i32 0
  %1164 = load i64, i64* %1163, align 8
  %1165 = trunc i64 %1164 to i32
  %1166 = getelementptr inbounds [2048 x i8], [2048 x i8]* %16, i64 0, i64 0
  %1167 = call i64 @avi_write(i32 %1165, i8* %1166, i64 2048)
  %1168 = icmp ne i64 %1167, 2048
  br i1 %1168, label %1169, label %1170

1169:                                             ; preds = %1161, %1152
  store i64 6, i64* @AVI_errno, align 8
  store i32 -1, i32* %2, align 4
  br label %1175

1170:                                             ; preds = %1161
  %1171 = load i32, i32* %10, align 4
  %1172 = icmp ne i32 %1171, 0
  br i1 %1172, label %1173, label %1174

1173:                                             ; preds = %1170
  store i32 -1, i32* %2, align 4
  br label %1175

1174:                                             ; preds = %1170
  store i32 0, i32* %2, align 4
  br label %1175

1175:                                             ; preds = %1174, %1173, %1169
  %1176 = load i32, i32* %2, align 4
  ret i32 %1176
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.avi_t* @AVI_open_input_file(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.avi_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.avi_t*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.avi_t* null, %struct.avi_t** %6, align 8
  %7 = call noalias i8* @malloc(i64 1088) #7
  %8 = bitcast i8* %7 to %struct.avi_t*
  store %struct.avi_t* %8, %struct.avi_t** %6, align 8
  %9 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %10 = icmp eq %struct.avi_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 8, i64* @AVI_errno, align 8
  store %struct.avi_t* null, %struct.avi_t** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %14 = bitcast %struct.avi_t* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 1088, i1 false)
  %15 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 1
  store i64 1, i64* %16, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i32, ...) @open(i8* %17, i32 0)
  %19 = sext i32 %18 to i64
  %20 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %21 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %12
  store i64 2, i64* @AVI_errno, align 8
  %27 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %28 = bitcast %struct.avi_t* %27 to i8*
  call void @free(i8* %28) #7
  store %struct.avi_t* null, %struct.avi_t** %3, align 8
  br label %36

29:                                               ; preds = %12
  %30 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @avi_parse_input_file(%struct.avi_t* %30, i32 %31)
  %33 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %34 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %33, i32 0, i32 25
  store i32 0, i32* %34, align 4
  %35 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  store %struct.avi_t* %35, %struct.avi_t** %3, align 8
  br label %36

36:                                               ; preds = %29, %26, %11
  %37 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  ret %struct.avi_t* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @avi_parse_input_file(%struct.avi_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca [8 x i64], align 16
  %16 = alloca i64, align 8
  %17 = alloca [8 x i64], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [256 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %27 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %28 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %32 = call i64 @avi_read(i32 %30, i8* %31, i64 12)
  %33 = icmp ne i64 %32, 12
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %36 = call i32 @AVI_close(%struct.avi_t* %35)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

37:                                               ; preds = %2
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %39 = call i32 @strncasecmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 4) #8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 8
  %44 = call i32 @strncasecmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 4) #8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41, %37
  %47 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %48 = call i32 @AVI_close(%struct.avi_t* %47)
  store i64 9, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

49:                                               ; preds = %41
  store i8* null, i8** %11, align 8
  br label %50

50:                                               ; preds = %189, %49
  %51 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %52 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %56 = call i64 @avi_read(i32 %54, i8* %55, i64 8)
  %57 = icmp ne i64 %56, 8
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %190

59:                                               ; preds = %50
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = call i64 @str2ulong(i8* %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  %65 = and i64 %64, -2
  store i64 %65, i64* %7, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %67 = call i32 @strncasecmp(i8* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %141

69:                                               ; preds = %59
  %70 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %71 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %75 = call i64 @avi_read(i32 %73, i8* %74, i64 4)
  %76 = icmp ne i64 %75, 4
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %79 = call i32 @AVI_close(%struct.avi_t* %78)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

80:                                               ; preds = %69
  %81 = load i64, i64* %7, align 8
  %82 = sub nsw i64 %81, 4
  store i64 %82, i64* %7, align 8
  %83 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %84 = call i32 @strncasecmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 4) #8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %114

86:                                               ; preds = %80
  %87 = load i64, i64* %7, align 8
  store i64 %87, i64* %13, align 8
  %88 = load i64, i64* %7, align 8
  %89 = call noalias i8* @malloc(i64 %88) #7
  store i8* %89, i8** %11, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %94 = call i32 @AVI_close(%struct.avi_t* %93)
  store i64 8, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

95:                                               ; preds = %86
  %96 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %97 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = call i64 @lseek(i32 %99, i64 0, i32 1) #7
  store i64 %100, i64* %12, align 8
  %101 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %102 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %11, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i64 @avi_read(i32 %104, i8* %105, i64 %106)
  %108 = load i64, i64* %7, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %112 = call i32 @AVI_close(%struct.avi_t* %111)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

113:                                              ; preds = %95
  br label %140

114:                                              ; preds = %80
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %116 = call i32 @strncasecmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i64 4) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %120 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i64 @lseek(i32 %122, i64 0, i32 1) #7
  %124 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %125 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %124, i32 0, i32 23
  store i64 %123, i64* %125, align 8
  %126 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %127 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i64, i64* %7, align 8
  %131 = call i64 @lseek(i32 %129, i64 %130, i32 1) #7
  br label %139

132:                                              ; preds = %114
  %133 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %134 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = load i64, i64* %7, align 8
  %138 = call i64 @lseek(i32 %136, i64 %137, i32 1) #7
  br label %139

139:                                              ; preds = %132, %118
  br label %140

140:                                              ; preds = %139, %113
  br label %189

141:                                              ; preds = %59
  %142 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %143 = call i32 @strncasecmp(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), i64 4) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %141
  %146 = load i64, i64* %7, align 8
  %147 = sdiv i64 %146, 16
  %148 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %149 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %148, i32 0, i32 15
  store i64 %147, i64* %149, align 8
  %150 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %151 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %150, i32 0, i32 14
  store i64 %147, i64* %151, align 8
  %152 = load i64, i64* %7, align 8
  %153 = call noalias i8* @malloc(i64 %152) #7
  %154 = bitcast i8* %153 to [16 x i8]*
  %155 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %156 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %155, i32 0, i32 18
  store [16 x i8]* %154, [16 x i8]** %156, align 8
  %157 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %158 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %157, i32 0, i32 18
  %159 = load [16 x i8]*, [16 x i8]** %158, align 8
  %160 = icmp eq [16 x i8]* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %145
  %162 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %163 = call i32 @AVI_close(%struct.avi_t* %162)
  store i64 8, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

164:                                              ; preds = %145
  %165 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %166 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %170 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %169, i32 0, i32 18
  %171 = load [16 x i8]*, [16 x i8]** %170, align 8
  %172 = bitcast [16 x i8]* %171 to i8*
  %173 = load i64, i64* %7, align 8
  %174 = call i64 @avi_read(i32 %168, i8* %172, i64 %173)
  %175 = load i64, i64* %7, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %179 = call i32 @AVI_close(%struct.avi_t* %178)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

180:                                              ; preds = %164
  br label %188

181:                                              ; preds = %141
  %182 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %183 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = trunc i64 %184 to i32
  %186 = load i64, i64* %7, align 8
  %187 = call i64 @lseek(i32 %185, i64 %186, i32 1) #7
  br label %188

188:                                              ; preds = %181, %180
  br label %189

189:                                              ; preds = %188, %140
  br label %50

190:                                              ; preds = %58
  %191 = load i8*, i8** %11, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %195 = call i32 @AVI_close(%struct.avi_t* %194)
  store i64 10, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

196:                                              ; preds = %190
  %197 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %198 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %197, i32 0, i32 23
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %204, label %201

201:                                              ; preds = %196
  %202 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %203 = call i32 @AVI_close(%struct.avi_t* %202)
  store i64 11, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

204:                                              ; preds = %196
  store i64 0, i64* %6, align 8
  br label %205

205:                                              ; preds = %493, %215, %204
  %206 = load i64, i64* %6, align 8
  %207 = load i64, i64* %13, align 8
  %208 = icmp slt i64 %206, %207
  br i1 %208, label %209, label %497

209:                                              ; preds = %205
  %210 = load i8*, i8** %11, align 8
  %211 = load i64, i64* %6, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  %213 = call i32 @strncasecmp(i8* %212, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %209
  %216 = load i64, i64* %6, align 8
  %217 = add nsw i64 %216, 12
  store i64 %217, i64* %6, align 8
  br label %205

218:                                              ; preds = %209
  %219 = load i8*, i8** %11, align 8
  %220 = load i64, i64* %6, align 8
  %221 = getelementptr inbounds i8, i8* %219, i64 %220
  %222 = getelementptr inbounds i8, i8* %221, i64 4
  %223 = call i64 @str2ulong(i8* %222)
  store i64 %223, i64* %7, align 8
  %224 = load i64, i64* %7, align 8
  %225 = add nsw i64 %224, 1
  %226 = and i64 %225, -2
  store i64 %226, i64* %7, align 8
  %227 = load i8*, i8** %11, align 8
  %228 = load i64, i64* %6, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  %230 = call i32 @strncasecmp(i8* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4) #8
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %364

232:                                              ; preds = %218
  %233 = load i64, i64* %6, align 8
  %234 = add nsw i64 %233, 8
  store i64 %234, i64* %6, align 8
  %235 = load i8*, i8** %11, align 8
  %236 = load i64, i64* %6, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  %238 = call i32 @strncasecmp(i8* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i64 4) #8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %294

240:                                              ; preds = %232
  %241 = load i32, i32* %20, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %294, label %243

243:                                              ; preds = %240
  %244 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %245 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %244, i32 0, i32 5
  %246 = getelementptr inbounds [8 x i8], [8 x i8]* %245, i64 0, i64 0
  %247 = load i8*, i8** %11, align 8
  %248 = load i64, i64* %6, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = getelementptr inbounds i8, i8* %249, i64 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 1 %250, i64 4, i1 false)
  %251 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %252 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %251, i32 0, i32 5
  %253 = getelementptr inbounds [8 x i8], [8 x i8]* %252, i64 0, i64 4
  store i8 0, i8* %253, align 4
  %254 = load i64, i64* %12, align 8
  %255 = load i64, i64* %6, align 8
  %256 = add nsw i64 %254, %255
  %257 = add nsw i64 %256, 4
  %258 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %259 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %258, i32 0, i32 16
  store i64 %257, i64* %259, align 8
  %260 = load i8*, i8** %11, align 8
  %261 = load i64, i64* %6, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  %263 = getelementptr inbounds i8, i8* %262, i64 20
  %264 = call i64 @str2ulong(i8* %263)
  store i64 %264, i64* %9, align 8
  %265 = load i8*, i8** %11, align 8
  %266 = load i64, i64* %6, align 8
  %267 = getelementptr inbounds i8, i8* %265, i64 %266
  %268 = getelementptr inbounds i8, i8* %267, i64 24
  %269 = call i64 @str2ulong(i8* %268)
  store i64 %269, i64* %8, align 8
  %270 = load i64, i64* %9, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %280

272:                                              ; preds = %243
  %273 = load i64, i64* %8, align 8
  %274 = sitofp i64 %273 to double
  %275 = load i64, i64* %9, align 8
  %276 = sitofp i64 %275 to double
  %277 = fdiv double %274, %276
  %278 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %279 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %278, i32 0, i32 4
  store double %277, double* %279, align 8
  br label %280

280:                                              ; preds = %272, %243
  %281 = load i8*, i8** %11, align 8
  %282 = load i64, i64* %6, align 8
  %283 = getelementptr inbounds i8, i8* %281, i64 %282
  %284 = getelementptr inbounds i8, i8* %283, i64 32
  %285 = call i64 @str2ulong(i8* %284)
  %286 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %287 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %286, i32 0, i32 8
  store i64 %285, i64* %287, align 8
  %288 = load i32, i32* %23, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %291 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %290, i32 0, i32 7
  store i64 %289, i64* %291, align 8
  %292 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %293 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %292, i32 0, i32 11
  store i64 0, i64* %293, align 8
  store i32 1, i32* %20, align 4
  store i32 1, i32* %19, align 4
  br label %361

294:                                              ; preds = %240, %232
  %295 = load i8*, i8** %11, align 8
  %296 = load i64, i64* %6, align 8
  %297 = getelementptr inbounds i8, i8* %295, i64 %296
  %298 = call i32 @strncasecmp(i8* %297, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i64 4) #8
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %359

300:                                              ; preds = %294
  %301 = load i32, i32* %22, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %359, label %303

303:                                              ; preds = %300
  %304 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %305 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %304, i32 0, i32 24
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %308 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %307, i32 0, i32 25
  store i32 %306, i32* %308, align 4
  %309 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %310 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %309, i32 0, i32 24
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 8
  %313 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %314 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %313, i32 0, i32 24
  %315 = load i32, i32* %314, align 8
  %316 = icmp sgt i32 %315, 8
  br i1 %316, label %317, label %320

317:                                              ; preds = %303
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 8)
  store i32 -1, i32* %3, align 4
  br label %1247

320:                                              ; preds = %303
  %321 = load i8*, i8** %11, align 8
  %322 = load i64, i64* %6, align 8
  %323 = getelementptr inbounds i8, i8* %321, i64 %322
  %324 = getelementptr inbounds i8, i8* %323, i64 32
  %325 = call i64 @str2ulong(i8* %324)
  %326 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %327 = call i32 @avi_sampsize(%struct.avi_t* %326, i32 0)
  %328 = sext i32 %327 to i64
  %329 = mul i64 %325, %328
  %330 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %331 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %330, i32 0, i32 12
  %332 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %333 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %332, i32 0, i32 25
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %331, i64 0, i64 %335
  %337 = getelementptr inbounds %struct.track_s, %struct.track_s* %336, i32 0, i32 6
  store i64 %329, i64* %337, align 8
  %338 = load i32, i32* %23, align 4
  %339 = sext i32 %338 to i64
  %340 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %341 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %340, i32 0, i32 12
  %342 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %343 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %342, i32 0, i32 25
  %344 = load i32, i32* %343, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %341, i64 0, i64 %345
  %347 = getelementptr inbounds %struct.track_s, %struct.track_s* %346, i32 0, i32 5
  store i64 %339, i64* %347, align 8
  store i32 2, i32* %19, align 4
  %348 = load i64, i64* %12, align 8
  %349 = load i64, i64* %6, align 8
  %350 = add nsw i64 %348, %349
  %351 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %352 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %351, i32 0, i32 12
  %353 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %354 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %353, i32 0, i32 25
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %352, i64 0, i64 %356
  %358 = getelementptr inbounds %struct.track_s, %struct.track_s* %357, i32 0, i32 11
  store i64 %350, i64* %358, align 8
  br label %360

359:                                              ; preds = %300, %294
  store i32 0, i32* %19, align 4
  br label %360

360:                                              ; preds = %359, %320
  br label %361

361:                                              ; preds = %360, %280
  %362 = load i32, i32* %23, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %23, align 4
  br label %493

364:                                              ; preds = %218
  %365 = load i8*, i8** %11, align 8
  %366 = load i64, i64* %6, align 8
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  %368 = call i32 @strncasecmp(i8* %367, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 4) #8
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %489

370:                                              ; preds = %364
  %371 = load i64, i64* %6, align 8
  %372 = add nsw i64 %371, 8
  store i64 %372, i64* %6, align 8
  %373 = load i32, i32* %19, align 4
  %374 = icmp eq i32 %373, 1
  br i1 %374, label %375, label %406

375:                                              ; preds = %370
  %376 = load i8*, i8** %11, align 8
  %377 = load i64, i64* %6, align 8
  %378 = getelementptr inbounds i8, i8* %376, i64 %377
  %379 = getelementptr inbounds i8, i8* %378, i64 4
  %380 = call i64 @str2ulong(i8* %379)
  %381 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %382 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %381, i32 0, i32 2
  store i64 %380, i64* %382, align 8
  %383 = load i8*, i8** %11, align 8
  %384 = load i64, i64* %6, align 8
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  %386 = getelementptr inbounds i8, i8* %385, i64 8
  %387 = call i64 @str2ulong(i8* %386)
  %388 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %389 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %388, i32 0, i32 3
  store i64 %387, i64* %389, align 8
  store i32 1, i32* %21, align 4
  %390 = load i64, i64* %12, align 8
  %391 = load i64, i64* %6, align 8
  %392 = add nsw i64 %390, %391
  %393 = add nsw i64 %392, 16
  %394 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %395 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %394, i32 0, i32 17
  store i64 %393, i64* %395, align 8
  %396 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %397 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %396, i32 0, i32 6
  %398 = getelementptr inbounds [8 x i8], [8 x i8]* %397, i64 0, i64 0
  %399 = load i8*, i8** %11, align 8
  %400 = load i64, i64* %6, align 8
  %401 = getelementptr inbounds i8, i8* %399, i64 %400
  %402 = getelementptr inbounds i8, i8* %401, i64 16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %398, i8* align 1 %402, i64 4, i1 false)
  %403 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %404 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %403, i32 0, i32 6
  %405 = getelementptr inbounds [8 x i8], [8 x i8]* %404, i64 0, i64 4
  store i8 0, i8* %405, align 4
  br label %488

406:                                              ; preds = %370
  %407 = load i32, i32* %19, align 4
  %408 = icmp eq i32 %407, 2
  br i1 %408, label %409, label %487

409:                                              ; preds = %406
  %410 = load i8*, i8** %11, align 8
  %411 = load i64, i64* %6, align 8
  %412 = getelementptr inbounds i8, i8* %410, i64 %411
  %413 = call i64 @str2ushort(i8* %412)
  %414 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %415 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %414, i32 0, i32 12
  %416 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %417 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %416, i32 0, i32 25
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %415, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.track_s, %struct.track_s* %420, i32 0, i32 0
  store i64 %413, i64* %421, align 8
  %422 = load i64, i64* %12, align 8
  %423 = load i64, i64* %6, align 8
  %424 = add nsw i64 %422, %423
  %425 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %426 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %425, i32 0, i32 12
  %427 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %428 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %427, i32 0, i32 25
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %426, i64 0, i64 %430
  %432 = getelementptr inbounds %struct.track_s, %struct.track_s* %431, i32 0, i32 12
  store i64 %424, i64* %432, align 8
  %433 = load i8*, i8** %11, align 8
  %434 = load i64, i64* %6, align 8
  %435 = getelementptr inbounds i8, i8* %433, i64 %434
  %436 = getelementptr inbounds i8, i8* %435, i64 2
  %437 = call i64 @str2ushort(i8* %436)
  %438 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %439 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %438, i32 0, i32 12
  %440 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %441 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %440, i32 0, i32 25
  %442 = load i32, i32* %441, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %439, i64 0, i64 %443
  %445 = getelementptr inbounds %struct.track_s, %struct.track_s* %444, i32 0, i32 1
  store i64 %437, i64* %445, align 8
  %446 = load i8*, i8** %11, align 8
  %447 = load i64, i64* %6, align 8
  %448 = getelementptr inbounds i8, i8* %446, i64 %447
  %449 = getelementptr inbounds i8, i8* %448, i64 4
  %450 = call i64 @str2ulong(i8* %449)
  %451 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %452 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %451, i32 0, i32 12
  %453 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %454 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %453, i32 0, i32 25
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %452, i64 0, i64 %456
  %458 = getelementptr inbounds %struct.track_s, %struct.track_s* %457, i32 0, i32 2
  store i64 %450, i64* %458, align 8
  %459 = load i8*, i8** %11, align 8
  %460 = load i64, i64* %6, align 8
  %461 = getelementptr inbounds i8, i8* %459, i64 %460
  %462 = getelementptr inbounds i8, i8* %461, i64 8
  %463 = call i64 @str2ulong(i8* %462)
  %464 = mul i64 8, %463
  %465 = udiv i64 %464, 1000
  %466 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %467 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %466, i32 0, i32 12
  %468 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %469 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %468, i32 0, i32 25
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %467, i64 0, i64 %471
  %473 = getelementptr inbounds %struct.track_s, %struct.track_s* %472, i32 0, i32 4
  store i64 %465, i64* %473, align 8
  %474 = load i8*, i8** %11, align 8
  %475 = load i64, i64* %6, align 8
  %476 = getelementptr inbounds i8, i8* %474, i64 %475
  %477 = getelementptr inbounds i8, i8* %476, i64 14
  %478 = call i64 @str2ushort(i8* %477)
  %479 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %480 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %479, i32 0, i32 12
  %481 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %482 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %481, i32 0, i32 25
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %480, i64 0, i64 %484
  %486 = getelementptr inbounds %struct.track_s, %struct.track_s* %485, i32 0, i32 3
  store i64 %478, i64* %486, align 8
  br label %487

487:                                              ; preds = %409, %406
  br label %488

488:                                              ; preds = %487, %375
  store i32 0, i32* %19, align 4
  br label %492

489:                                              ; preds = %364
  %490 = load i64, i64* %6, align 8
  %491 = add nsw i64 %490, 8
  store i64 %491, i64* %6, align 8
  store i32 0, i32* %19, align 4
  br label %492

492:                                              ; preds = %489, %488
  br label %493

493:                                              ; preds = %492, %361
  %494 = load i64, i64* %7, align 8
  %495 = load i64, i64* %6, align 8
  %496 = add nsw i64 %495, %494
  store i64 %496, i64* %6, align 8
  br label %205

497:                                              ; preds = %205
  %498 = load i8*, i8** %11, align 8
  call void @free(i8* %498) #7
  %499 = load i32, i32* %20, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %497
  %502 = load i32, i32* %21, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %507, label %504

504:                                              ; preds = %501, %497
  %505 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %506 = call i32 @AVI_close(%struct.avi_t* %505)
  store i64 12, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

507:                                              ; preds = %501
  %508 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %509 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %508, i32 0, i32 7
  %510 = load i64, i64* %509, align 8
  %511 = sdiv i64 %510, 10
  %512 = add nsw i64 %511, 48
  %513 = trunc i64 %512 to i8
  %514 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %515 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %514, i32 0, i32 9
  %516 = getelementptr inbounds [4 x i8], [4 x i8]* %515, i64 0, i64 0
  store i8 %513, i8* %516, align 8
  %517 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %518 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %517, i32 0, i32 7
  %519 = load i64, i64* %518, align 8
  %520 = srem i64 %519, 10
  %521 = add nsw i64 %520, 48
  %522 = trunc i64 %521 to i8
  %523 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %524 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %523, i32 0, i32 9
  %525 = getelementptr inbounds [4 x i8], [4 x i8]* %524, i64 0, i64 1
  store i8 %522, i8* %525, align 1
  %526 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %527 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %526, i32 0, i32 9
  %528 = getelementptr inbounds [4 x i8], [4 x i8]* %527, i64 0, i64 2
  store i8 100, i8* %528, align 2
  %529 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %530 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %529, i32 0, i32 9
  %531 = getelementptr inbounds [4 x i8], [4 x i8]* %530, i64 0, i64 3
  store i8 98, i8* %531, align 1
  %532 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %533 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %532, i32 0, i32 12
  %534 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %533, i64 0, i64 0
  %535 = getelementptr inbounds %struct.track_s, %struct.track_s* %534, i32 0, i32 1
  %536 = load i64, i64* %535, align 8
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %543, label %538

538:                                              ; preds = %507
  %539 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %540 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %539, i32 0, i32 12
  %541 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %540, i64 0, i64 0
  %542 = getelementptr inbounds %struct.track_s, %struct.track_s* %541, i32 0, i32 5
  store i64 99, i64* %542, align 8
  br label %543

543:                                              ; preds = %538, %507
  store i32 0, i32* %18, align 4
  br label %544

544:                                              ; preds = %589, %543
  %545 = load i32, i32* %18, align 4
  %546 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %547 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %546, i32 0, i32 24
  %548 = load i32, i32* %547, align 8
  %549 = icmp slt i32 %545, %548
  br i1 %549, label %550, label %592

550:                                              ; preds = %544
  %551 = load i32, i32* %18, align 4
  %552 = add nsw i32 %551, 1
  %553 = sdiv i32 %552, 10
  %554 = add nsw i32 %553, 48
  %555 = trunc i32 %554 to i8
  %556 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %557 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %556, i32 0, i32 12
  %558 = load i32, i32* %18, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %557, i64 0, i64 %559
  %561 = getelementptr inbounds %struct.track_s, %struct.track_s* %560, i32 0, i32 8
  %562 = getelementptr inbounds [4 x i8], [4 x i8]* %561, i64 0, i64 0
  store i8 %555, i8* %562, align 8
  %563 = load i32, i32* %18, align 4
  %564 = add nsw i32 %563, 1
  %565 = srem i32 %564, 10
  %566 = add nsw i32 %565, 48
  %567 = trunc i32 %566 to i8
  %568 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %569 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %568, i32 0, i32 12
  %570 = load i32, i32* %18, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %569, i64 0, i64 %571
  %573 = getelementptr inbounds %struct.track_s, %struct.track_s* %572, i32 0, i32 8
  %574 = getelementptr inbounds [4 x i8], [4 x i8]* %573, i64 0, i64 1
  store i8 %567, i8* %574, align 1
  %575 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %576 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %575, i32 0, i32 12
  %577 = load i32, i32* %18, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %576, i64 0, i64 %578
  %580 = getelementptr inbounds %struct.track_s, %struct.track_s* %579, i32 0, i32 8
  %581 = getelementptr inbounds [4 x i8], [4 x i8]* %580, i64 0, i64 2
  store i8 119, i8* %581, align 2
  %582 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %583 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %582, i32 0, i32 12
  %584 = load i32, i32* %18, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %583, i64 0, i64 %585
  %587 = getelementptr inbounds %struct.track_s, %struct.track_s* %586, i32 0, i32 8
  %588 = getelementptr inbounds [4 x i8], [4 x i8]* %587, i64 0, i64 3
  store i8 98, i8* %588, align 1
  br label %589

589:                                              ; preds = %550
  %590 = load i32, i32* %18, align 4
  %591 = add nsw i32 %590, 1
  store i32 %591, i32* %18, align 4
  br label %544

592:                                              ; preds = %544
  %593 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %594 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %593, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = trunc i64 %595 to i32
  %597 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %598 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %597, i32 0, i32 23
  %599 = load i64, i64* %598, align 8
  %600 = call i64 @lseek(i32 %596, i64 %599, i32 0) #7
  %601 = load i32, i32* %5, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %604, label %603

603:                                              ; preds = %592
  store i32 0, i32* %3, align 4
  br label %1247

604:                                              ; preds = %592
  store i64 0, i64* %10, align 8
  %605 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %606 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %605, i32 0, i32 18
  %607 = load [16 x i8]*, [16 x i8]** %606, align 8
  %608 = icmp ne [16 x i8]* %607, null
  br i1 %608, label %609, label %733

609:                                              ; preds = %604
  store i64 0, i64* %6, align 8
  br label %610

610:                                              ; preds = %630, %609
  %611 = load i64, i64* %6, align 8
  %612 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %613 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %612, i32 0, i32 14
  %614 = load i64, i64* %613, align 8
  %615 = icmp slt i64 %611, %614
  br i1 %615, label %616, label %633

616:                                              ; preds = %610
  %617 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %618 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %617, i32 0, i32 18
  %619 = load [16 x i8]*, [16 x i8]** %618, align 8
  %620 = load i64, i64* %6, align 8
  %621 = getelementptr inbounds [16 x i8], [16 x i8]* %619, i64 %620
  %622 = getelementptr inbounds [16 x i8], [16 x i8]* %621, i64 0, i64 0
  %623 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %624 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %623, i32 0, i32 9
  %625 = getelementptr inbounds [4 x i8], [4 x i8]* %624, i64 0, i64 0
  %626 = call i32 @strncasecmp(i8* %622, i8* %625, i64 3) #8
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %616
  br label %633

629:                                              ; preds = %616
  br label %630

630:                                              ; preds = %629
  %631 = load i64, i64* %6, align 8
  %632 = add nsw i64 %631, 1
  store i64 %632, i64* %6, align 8
  br label %610

633:                                              ; preds = %628, %610
  %634 = load i64, i64* %6, align 8
  %635 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %636 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %635, i32 0, i32 14
  %637 = load i64, i64* %636, align 8
  %638 = icmp sge i64 %634, %637
  br i1 %638, label %639, label %642

639:                                              ; preds = %633
  %640 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %641 = call i32 @AVI_close(%struct.avi_t* %640)
  store i64 12, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

642:                                              ; preds = %633
  %643 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %644 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %643, i32 0, i32 18
  %645 = load [16 x i8]*, [16 x i8]** %644, align 8
  %646 = load i64, i64* %6, align 8
  %647 = getelementptr inbounds [16 x i8], [16 x i8]* %645, i64 %646
  %648 = getelementptr inbounds [16 x i8], [16 x i8]* %647, i64 0, i64 0
  %649 = getelementptr inbounds i8, i8* %648, i64 8
  %650 = call i64 @str2ulong(i8* %649)
  store i64 %650, i64* %25, align 8
  %651 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %652 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %651, i32 0, i32 18
  %653 = load [16 x i8]*, [16 x i8]** %652, align 8
  %654 = load i64, i64* %6, align 8
  %655 = getelementptr inbounds [16 x i8], [16 x i8]* %653, i64 %654
  %656 = getelementptr inbounds [16 x i8], [16 x i8]* %655, i64 0, i64 0
  %657 = getelementptr inbounds i8, i8* %656, i64 12
  %658 = call i64 @str2ulong(i8* %657)
  store i64 %658, i64* %26, align 8
  %659 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %660 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %659, i32 0, i32 0
  %661 = load i64, i64* %660, align 8
  %662 = trunc i64 %661 to i32
  %663 = load i64, i64* %25, align 8
  %664 = call i64 @lseek(i32 %662, i64 %663, i32 0) #7
  %665 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %666 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = trunc i64 %667 to i32
  %669 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %670 = call i64 @avi_read(i32 %668, i8* %669, i64 8)
  %671 = icmp ne i64 %670, 8
  br i1 %671, label %672, label %675

672:                                              ; preds = %642
  %673 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %674 = call i32 @AVI_close(%struct.avi_t* %673)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

675:                                              ; preds = %642
  %676 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %677 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %678 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %677, i32 0, i32 18
  %679 = load [16 x i8]*, [16 x i8]** %678, align 8
  %680 = load i64, i64* %6, align 8
  %681 = getelementptr inbounds [16 x i8], [16 x i8]* %679, i64 %680
  %682 = getelementptr inbounds [16 x i8], [16 x i8]* %681, i64 0, i64 0
  %683 = call i32 @strncasecmp(i8* %676, i8* %682, i64 4) #8
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %692

685:                                              ; preds = %675
  %686 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %687 = getelementptr inbounds i8, i8* %686, i64 4
  %688 = call i64 @str2ulong(i8* %687)
  %689 = load i64, i64* %26, align 8
  %690 = icmp eq i64 %688, %689
  br i1 %690, label %691, label %692

691:                                              ; preds = %685
  store i64 1, i64* %10, align 8
  br label %732

692:                                              ; preds = %685, %675
  %693 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %694 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %693, i32 0, i32 0
  %695 = load i64, i64* %694, align 8
  %696 = trunc i64 %695 to i32
  %697 = load i64, i64* %25, align 8
  %698 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %699 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %698, i32 0, i32 23
  %700 = load i64, i64* %699, align 8
  %701 = add i64 %697, %700
  %702 = sub i64 %701, 4
  %703 = call i64 @lseek(i32 %696, i64 %702, i32 0) #7
  %704 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %705 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %704, i32 0, i32 0
  %706 = load i64, i64* %705, align 8
  %707 = trunc i64 %706 to i32
  %708 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %709 = call i64 @avi_read(i32 %707, i8* %708, i64 8)
  %710 = icmp ne i64 %709, 8
  br i1 %710, label %711, label %714

711:                                              ; preds = %692
  %712 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %713 = call i32 @AVI_close(%struct.avi_t* %712)
  store i64 3, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

714:                                              ; preds = %692
  %715 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %716 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %717 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %716, i32 0, i32 18
  %718 = load [16 x i8]*, [16 x i8]** %717, align 8
  %719 = load i64, i64* %6, align 8
  %720 = getelementptr inbounds [16 x i8], [16 x i8]* %718, i64 %719
  %721 = getelementptr inbounds [16 x i8], [16 x i8]* %720, i64 0, i64 0
  %722 = call i32 @strncasecmp(i8* %715, i8* %721, i64 4) #8
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %724, label %731

724:                                              ; preds = %714
  %725 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %726 = getelementptr inbounds i8, i8* %725, i64 4
  %727 = call i64 @str2ulong(i8* %726)
  %728 = load i64, i64* %26, align 8
  %729 = icmp eq i64 %727, %728
  br i1 %729, label %730, label %731

730:                                              ; preds = %724
  store i64 2, i64* %10, align 8
  br label %731

731:                                              ; preds = %730, %724, %714
  br label %732

732:                                              ; preds = %731, %691
  br label %733

733:                                              ; preds = %732, %604
  %734 = load i64, i64* %10, align 8
  %735 = icmp eq i64 %734, 0
  br i1 %735, label %736, label %840

736:                                              ; preds = %733
  %737 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %738 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %737, i32 0, i32 0
  %739 = load i64, i64* %738, align 8
  %740 = trunc i64 %739 to i32
  %741 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %742 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %741, i32 0, i32 23
  %743 = load i64, i64* %742, align 8
  %744 = call i64 @lseek(i32 %740, i64 %743, i32 0) #7
  %745 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %746 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %745, i32 0, i32 14
  store i64 0, i64* %746, align 8
  br label %747

747:                                              ; preds = %830, %763, %736
  %748 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %749 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %748, i32 0, i32 0
  %750 = load i64, i64* %749, align 8
  %751 = trunc i64 %750 to i32
  %752 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %753 = call i64 @avi_read(i32 %751, i8* %752, i64 8)
  %754 = icmp ne i64 %753, 8
  br i1 %754, label %755, label %756

755:                                              ; preds = %747
  br label %839

756:                                              ; preds = %747
  %757 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %758 = getelementptr inbounds i8, i8* %757, i64 4
  %759 = call i64 @str2ulong(i8* %758)
  store i64 %759, i64* %7, align 8
  %760 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %761 = call i32 @strncasecmp(i8* %760, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %763, label %769

763:                                              ; preds = %756
  %764 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %765 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %764, i32 0, i32 0
  %766 = load i64, i64* %765, align 8
  %767 = trunc i64 %766 to i32
  %768 = call i64 @lseek(i32 %767, i64 4, i32 1) #7
  br label %747

769:                                              ; preds = %756
  %770 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 2
  %771 = load i8, i8* %770, align 2
  %772 = sext i8 %771 to i32
  %773 = icmp eq i32 %772, 100
  br i1 %773, label %779, label %774

774:                                              ; preds = %769
  %775 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 2
  %776 = load i8, i8* %775, align 2
  %777 = sext i8 %776 to i32
  %778 = icmp eq i32 %777, 68
  br i1 %778, label %779, label %799

779:                                              ; preds = %774, %769
  %780 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %781 = load i8, i8* %780, align 1
  %782 = sext i8 %781 to i32
  %783 = icmp eq i32 %782, 98
  br i1 %783, label %819, label %784

784:                                              ; preds = %779
  %785 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %786 = load i8, i8* %785, align 1
  %787 = sext i8 %786 to i32
  %788 = icmp eq i32 %787, 66
  br i1 %788, label %819, label %789

789:                                              ; preds = %784
  %790 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %791 = load i8, i8* %790, align 1
  %792 = sext i8 %791 to i32
  %793 = icmp eq i32 %792, 99
  br i1 %793, label %819, label %794

794:                                              ; preds = %789
  %795 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %796 = load i8, i8* %795, align 1
  %797 = sext i8 %796 to i32
  %798 = icmp eq i32 %797, 67
  br i1 %798, label %819, label %799

799:                                              ; preds = %794, %774
  %800 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 2
  %801 = load i8, i8* %800, align 2
  %802 = sext i8 %801 to i32
  %803 = icmp eq i32 %802, 119
  br i1 %803, label %809, label %804

804:                                              ; preds = %799
  %805 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 2
  %806 = load i8, i8* %805, align 2
  %807 = sext i8 %806 to i32
  %808 = icmp eq i32 %807, 87
  br i1 %808, label %809, label %830

809:                                              ; preds = %804, %799
  %810 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %811 = load i8, i8* %810, align 1
  %812 = sext i8 %811 to i32
  %813 = icmp eq i32 %812, 98
  br i1 %813, label %819, label %814

814:                                              ; preds = %809
  %815 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 3
  %816 = load i8, i8* %815, align 1
  %817 = sext i8 %816 to i32
  %818 = icmp eq i32 %817, 66
  br i1 %818, label %819, label %830

819:                                              ; preds = %814, %809, %794, %789, %784, %779
  %820 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %821 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %822 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %823 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %822, i32 0, i32 0
  %824 = load i64, i64* %823, align 8
  %825 = trunc i64 %824 to i32
  %826 = call i64 @lseek(i32 %825, i64 0, i32 1) #7
  %827 = sub nsw i64 %826, 8
  %828 = load i64, i64* %7, align 8
  %829 = call i32 @avi_add_index_entry(%struct.avi_t* %820, i8* %821, i64 0, i64 %827, i64 %828)
  br label %830

830:                                              ; preds = %819, %814, %804
  %831 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %832 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %831, i32 0, i32 0
  %833 = load i64, i64* %832, align 8
  %834 = trunc i64 %833 to i32
  %835 = load i64, i64* %7, align 8
  %836 = add nsw i64 %835, 1
  %837 = and i64 %836, -2
  %838 = call i64 @lseek(i32 %834, i64 %837, i32 1) #7
  br label %747

839:                                              ; preds = %755
  store i64 1, i64* %10, align 8
  br label %840

840:                                              ; preds = %839, %733
  store i64 0, i64* %14, align 8
  store i32 0, i32* %18, align 4
  br label %841

841:                                              ; preds = %851, %840
  %842 = load i32, i32* %18, align 4
  %843 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %844 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %843, i32 0, i32 24
  %845 = load i32, i32* %844, align 8
  %846 = icmp slt i32 %842, %845
  br i1 %846, label %847, label %854

847:                                              ; preds = %841
  %848 = load i32, i32* %18, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %849
  store i64 0, i64* %850, align 8
  br label %851

851:                                              ; preds = %847
  %852 = load i32, i32* %18, align 4
  %853 = add nsw i32 %852, 1
  store i32 %853, i32* %18, align 4
  br label %841

854:                                              ; preds = %841
  store i64 0, i64* %6, align 8
  br label %855

855:                                              ; preds = %910, %854
  %856 = load i64, i64* %6, align 8
  %857 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %858 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %857, i32 0, i32 14
  %859 = load i64, i64* %858, align 8
  %860 = icmp slt i64 %856, %859
  br i1 %860, label %861, label %913

861:                                              ; preds = %855
  %862 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %863 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %862, i32 0, i32 18
  %864 = load [16 x i8]*, [16 x i8]** %863, align 8
  %865 = load i64, i64* %6, align 8
  %866 = getelementptr inbounds [16 x i8], [16 x i8]* %864, i64 %865
  %867 = getelementptr inbounds [16 x i8], [16 x i8]* %866, i64 0, i64 0
  %868 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %869 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %868, i32 0, i32 9
  %870 = getelementptr inbounds [4 x i8], [4 x i8]* %869, i64 0, i64 0
  %871 = call i32 @strncasecmp(i8* %867, i8* %870, i64 3) #8
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %873, label %876

873:                                              ; preds = %861
  %874 = load i64, i64* %14, align 8
  %875 = add nsw i64 %874, 1
  store i64 %875, i64* %14, align 8
  br label %876

876:                                              ; preds = %873, %861
  store i32 0, i32* %18, align 4
  br label %877

877:                                              ; preds = %906, %876
  %878 = load i32, i32* %18, align 4
  %879 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %880 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %879, i32 0, i32 24
  %881 = load i32, i32* %880, align 8
  %882 = icmp slt i32 %878, %881
  br i1 %882, label %883, label %909

883:                                              ; preds = %877
  %884 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %885 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %884, i32 0, i32 18
  %886 = load [16 x i8]*, [16 x i8]** %885, align 8
  %887 = load i64, i64* %6, align 8
  %888 = getelementptr inbounds [16 x i8], [16 x i8]* %886, i64 %887
  %889 = getelementptr inbounds [16 x i8], [16 x i8]* %888, i64 0, i64 0
  %890 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %891 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %890, i32 0, i32 12
  %892 = load i32, i32* %18, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %891, i64 0, i64 %893
  %895 = getelementptr inbounds %struct.track_s, %struct.track_s* %894, i32 0, i32 8
  %896 = getelementptr inbounds [4 x i8], [4 x i8]* %895, i64 0, i64 0
  %897 = call i32 @strncasecmp(i8* %889, i8* %896, i64 4) #8
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %905

899:                                              ; preds = %883
  %900 = load i32, i32* %18, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %901
  %903 = load i64, i64* %902, align 8
  %904 = add nsw i64 %903, 1
  store i64 %904, i64* %902, align 8
  br label %905

905:                                              ; preds = %899, %883
  br label %906

906:                                              ; preds = %905
  %907 = load i32, i32* %18, align 4
  %908 = add nsw i32 %907, 1
  store i32 %908, i32* %18, align 4
  br label %877

909:                                              ; preds = %877
  br label %910

910:                                              ; preds = %909
  %911 = load i64, i64* %6, align 8
  %912 = add nsw i64 %911, 1
  store i64 %912, i64* %6, align 8
  br label %855

913:                                              ; preds = %855
  %914 = load i64, i64* %14, align 8
  %915 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %916 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %915, i32 0, i32 8
  store i64 %914, i64* %916, align 8
  store i32 0, i32* %18, align 4
  br label %917

917:                                              ; preds = %934, %913
  %918 = load i32, i32* %18, align 4
  %919 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %920 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %919, i32 0, i32 24
  %921 = load i32, i32* %920, align 8
  %922 = icmp slt i32 %918, %921
  br i1 %922, label %923, label %937

923:                                              ; preds = %917
  %924 = load i32, i32* %18, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %925
  %927 = load i64, i64* %926, align 8
  %928 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %929 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %928, i32 0, i32 12
  %930 = load i32, i32* %18, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %929, i64 0, i64 %931
  %933 = getelementptr inbounds %struct.track_s, %struct.track_s* %932, i32 0, i32 7
  store i64 %927, i64* %933, align 8
  br label %934

934:                                              ; preds = %923
  %935 = load i32, i32* %18, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %18, align 4
  br label %917

937:                                              ; preds = %917
  %938 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %939 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %938, i32 0, i32 8
  %940 = load i64, i64* %939, align 8
  %941 = icmp eq i64 %940, 0
  br i1 %941, label %942, label %945

942:                                              ; preds = %937
  %943 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %944 = call i32 @AVI_close(%struct.avi_t* %943)
  store i64 12, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

945:                                              ; preds = %937
  %946 = load i64, i64* %14, align 8
  %947 = mul i64 %946, 24
  %948 = call noalias i8* @malloc(i64 %947) #7
  %949 = bitcast i8* %948 to %struct.audio_index_entry*
  %950 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %951 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %950, i32 0, i32 19
  store %struct.audio_index_entry* %949, %struct.audio_index_entry** %951, align 8
  %952 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %953 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %952, i32 0, i32 19
  %954 = load %struct.audio_index_entry*, %struct.audio_index_entry** %953, align 8
  %955 = icmp eq %struct.audio_index_entry* %954, null
  br i1 %955, label %956, label %959

956:                                              ; preds = %945
  %957 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %958 = call i32 @AVI_close(%struct.avi_t* %957)
  store i64 8, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

959:                                              ; preds = %945
  store i32 0, i32* %18, align 4
  br label %960

960:                                              ; preds = %1002, %959
  %961 = load i32, i32* %18, align 4
  %962 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %963 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %962, i32 0, i32 24
  %964 = load i32, i32* %963, align 8
  %965 = icmp slt i32 %961, %964
  br i1 %965, label %966, label %1005

966:                                              ; preds = %960
  %967 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %968 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %967, i32 0, i32 12
  %969 = load i32, i32* %18, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %968, i64 0, i64 %970
  %972 = getelementptr inbounds %struct.track_s, %struct.track_s* %971, i32 0, i32 7
  %973 = load i64, i64* %972, align 8
  %974 = icmp ne i64 %973, 0
  br i1 %974, label %975, label %1001

975:                                              ; preds = %966
  %976 = load i32, i32* %18, align 4
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %977
  %979 = load i64, i64* %978, align 8
  %980 = mul i64 %979, 24
  %981 = call noalias i8* @malloc(i64 %980) #7
  %982 = bitcast i8* %981 to %struct.audio_index_entry*
  %983 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %984 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %983, i32 0, i32 12
  %985 = load i32, i32* %18, align 4
  %986 = sext i32 %985 to i64
  %987 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %984, i64 0, i64 %986
  %988 = getelementptr inbounds %struct.track_s, %struct.track_s* %987, i32 0, i32 13
  store %struct.audio_index_entry* %982, %struct.audio_index_entry** %988, align 8
  %989 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %990 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %989, i32 0, i32 12
  %991 = load i32, i32* %18, align 4
  %992 = sext i32 %991 to i64
  %993 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %990, i64 0, i64 %992
  %994 = getelementptr inbounds %struct.track_s, %struct.track_s* %993, i32 0, i32 13
  %995 = load %struct.audio_index_entry*, %struct.audio_index_entry** %994, align 8
  %996 = icmp eq %struct.audio_index_entry* %995, null
  br i1 %996, label %997, label %1000

997:                                              ; preds = %975
  %998 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %999 = call i32 @AVI_close(%struct.avi_t* %998)
  store i64 8, i64* @AVI_errno, align 8
  store i32 0, i32* %3, align 4
  br label %1247

1000:                                             ; preds = %975
  br label %1001

1001:                                             ; preds = %1000, %966
  br label %1002

1002:                                             ; preds = %1001
  %1003 = load i32, i32* %18, align 4
  %1004 = add nsw i32 %1003, 1
  store i32 %1004, i32* %18, align 4
  br label %960

1005:                                             ; preds = %960
  store i64 0, i64* %14, align 8
  store i32 0, i32* %18, align 4
  br label %1006

1006:                                             ; preds = %1019, %1005
  %1007 = load i32, i32* %18, align 4
  %1008 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1009 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1008, i32 0, i32 24
  %1010 = load i32, i32* %1009, align 8
  %1011 = icmp slt i32 %1007, %1010
  br i1 %1011, label %1012, label %1022

1012:                                             ; preds = %1006
  %1013 = load i32, i32* %18, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 %1014
  store i64 0, i64* %1015, align 8
  %1016 = load i32, i32* %18, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1017
  store i64 0, i64* %1018, align 8
  br label %1019

1019:                                             ; preds = %1012
  %1020 = load i32, i32* %18, align 4
  %1021 = add nsw i32 %1020, 1
  store i32 %1021, i32* %18, align 4
  br label %1006

1022:                                             ; preds = %1006
  %1023 = load i64, i64* %10, align 8
  %1024 = icmp eq i64 %1023, 1
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1022
  br label %1031

1026:                                             ; preds = %1022
  %1027 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1028 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1027, i32 0, i32 23
  %1029 = load i64, i64* %1028, align 8
  %1030 = add i64 %1029, 4
  br label %1031

1031:                                             ; preds = %1026, %1025
  %1032 = phi i64 [ 8, %1025 ], [ %1030, %1026 ]
  store i64 %1032, i64* %16, align 8
  store i64 0, i64* %6, align 8
  br label %1033

1033:                                             ; preds = %1212, %1031
  %1034 = load i64, i64* %6, align 8
  %1035 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1036 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1035, i32 0, i32 14
  %1037 = load i64, i64* %1036, align 8
  %1038 = icmp slt i64 %1034, %1037
  br i1 %1038, label %1039, label %1215

1039:                                             ; preds = %1033
  %1040 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1041 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1040, i32 0, i32 18
  %1042 = load [16 x i8]*, [16 x i8]** %1041, align 8
  %1043 = load i64, i64* %6, align 8
  %1044 = getelementptr inbounds [16 x i8], [16 x i8]* %1042, i64 %1043
  %1045 = getelementptr inbounds [16 x i8], [16 x i8]* %1044, i64 0, i64 0
  %1046 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1047 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1046, i32 0, i32 9
  %1048 = getelementptr inbounds [4 x i8], [4 x i8]* %1047, i64 0, i64 0
  %1049 = call i32 @strncasecmp(i8* %1045, i8* %1048, i64 3) #8
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1051, label %1098

1051:                                             ; preds = %1039
  %1052 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1053 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1052, i32 0, i32 18
  %1054 = load [16 x i8]*, [16 x i8]** %1053, align 8
  %1055 = load i64, i64* %6, align 8
  %1056 = getelementptr inbounds [16 x i8], [16 x i8]* %1054, i64 %1055
  %1057 = getelementptr inbounds [16 x i8], [16 x i8]* %1056, i64 0, i64 0
  %1058 = getelementptr inbounds i8, i8* %1057, i64 4
  %1059 = call i64 @str2ulong(i8* %1058)
  %1060 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1061 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1060, i32 0, i32 19
  %1062 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1061, align 8
  %1063 = load i64, i64* %14, align 8
  %1064 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1062, i64 %1063
  %1065 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1064, i32 0, i32 0
  store i64 %1059, i64* %1065, align 8
  %1066 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1067 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1066, i32 0, i32 18
  %1068 = load [16 x i8]*, [16 x i8]** %1067, align 8
  %1069 = load i64, i64* %6, align 8
  %1070 = getelementptr inbounds [16 x i8], [16 x i8]* %1068, i64 %1069
  %1071 = getelementptr inbounds [16 x i8], [16 x i8]* %1070, i64 0, i64 0
  %1072 = getelementptr inbounds i8, i8* %1071, i64 8
  %1073 = call i64 @str2ulong(i8* %1072)
  %1074 = load i64, i64* %16, align 8
  %1075 = add i64 %1073, %1074
  %1076 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1077 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1076, i32 0, i32 19
  %1078 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1077, align 8
  %1079 = load i64, i64* %14, align 8
  %1080 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1078, i64 %1079
  %1081 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1080, i32 0, i32 1
  store i64 %1075, i64* %1081, align 8
  %1082 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1083 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1082, i32 0, i32 18
  %1084 = load [16 x i8]*, [16 x i8]** %1083, align 8
  %1085 = load i64, i64* %6, align 8
  %1086 = getelementptr inbounds [16 x i8], [16 x i8]* %1084, i64 %1085
  %1087 = getelementptr inbounds [16 x i8], [16 x i8]* %1086, i64 0, i64 0
  %1088 = getelementptr inbounds i8, i8* %1087, i64 12
  %1089 = call i64 @str2ulong(i8* %1088)
  %1090 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1091 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1090, i32 0, i32 19
  %1092 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1091, align 8
  %1093 = load i64, i64* %14, align 8
  %1094 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1092, i64 %1093
  %1095 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1094, i32 0, i32 2
  store i64 %1089, i64* %1095, align 8
  %1096 = load i64, i64* %14, align 8
  %1097 = add nsw i64 %1096, 1
  store i64 %1097, i64* %14, align 8
  br label %1098

1098:                                             ; preds = %1051, %1039
  store i32 0, i32* %18, align 4
  br label %1099

1099:                                             ; preds = %1208, %1098
  %1100 = load i32, i32* %18, align 4
  %1101 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1102 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1101, i32 0, i32 24
  %1103 = load i32, i32* %1102, align 8
  %1104 = icmp slt i32 %1100, %1103
  br i1 %1104, label %1105, label %1211

1105:                                             ; preds = %1099
  %1106 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1107 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1106, i32 0, i32 18
  %1108 = load [16 x i8]*, [16 x i8]** %1107, align 8
  %1109 = load i64, i64* %6, align 8
  %1110 = getelementptr inbounds [16 x i8], [16 x i8]* %1108, i64 %1109
  %1111 = getelementptr inbounds [16 x i8], [16 x i8]* %1110, i64 0, i64 0
  %1112 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1113 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1112, i32 0, i32 12
  %1114 = load i32, i32* %18, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1113, i64 0, i64 %1115
  %1117 = getelementptr inbounds %struct.track_s, %struct.track_s* %1116, i32 0, i32 8
  %1118 = getelementptr inbounds [4 x i8], [4 x i8]* %1117, i64 0, i64 0
  %1119 = call i32 @strncasecmp(i8* %1111, i8* %1118, i64 4) #8
  %1120 = icmp eq i32 %1119, 0
  br i1 %1120, label %1121, label %1207

1121:                                             ; preds = %1105
  %1122 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1123 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1122, i32 0, i32 18
  %1124 = load [16 x i8]*, [16 x i8]** %1123, align 8
  %1125 = load i64, i64* %6, align 8
  %1126 = getelementptr inbounds [16 x i8], [16 x i8]* %1124, i64 %1125
  %1127 = getelementptr inbounds [16 x i8], [16 x i8]* %1126, i64 0, i64 0
  %1128 = getelementptr inbounds i8, i8* %1127, i64 8
  %1129 = call i64 @str2ulong(i8* %1128)
  %1130 = load i64, i64* %16, align 8
  %1131 = add i64 %1129, %1130
  %1132 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1133 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1132, i32 0, i32 12
  %1134 = load i32, i32* %18, align 4
  %1135 = sext i32 %1134 to i64
  %1136 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1133, i64 0, i64 %1135
  %1137 = getelementptr inbounds %struct.track_s, %struct.track_s* %1136, i32 0, i32 13
  %1138 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1137, align 8
  %1139 = load i32, i32* %18, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1140
  %1142 = load i64, i64* %1141, align 8
  %1143 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1138, i64 %1142
  %1144 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1143, i32 0, i32 0
  store i64 %1131, i64* %1144, align 8
  %1145 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1146 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1145, i32 0, i32 18
  %1147 = load [16 x i8]*, [16 x i8]** %1146, align 8
  %1148 = load i64, i64* %6, align 8
  %1149 = getelementptr inbounds [16 x i8], [16 x i8]* %1147, i64 %1148
  %1150 = getelementptr inbounds [16 x i8], [16 x i8]* %1149, i64 0, i64 0
  %1151 = getelementptr inbounds i8, i8* %1150, i64 12
  %1152 = call i64 @str2ulong(i8* %1151)
  %1153 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1154 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1153, i32 0, i32 12
  %1155 = load i32, i32* %18, align 4
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1154, i64 0, i64 %1156
  %1158 = getelementptr inbounds %struct.track_s, %struct.track_s* %1157, i32 0, i32 13
  %1159 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1158, align 8
  %1160 = load i32, i32* %18, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1161
  %1163 = load i64, i64* %1162, align 8
  %1164 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1159, i64 %1163
  %1165 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1164, i32 0, i32 1
  store i64 %1152, i64* %1165, align 8
  %1166 = load i32, i32* %18, align 4
  %1167 = sext i32 %1166 to i64
  %1168 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 %1167
  %1169 = load i64, i64* %1168, align 8
  %1170 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1171 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1170, i32 0, i32 12
  %1172 = load i32, i32* %18, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1171, i64 0, i64 %1173
  %1175 = getelementptr inbounds %struct.track_s, %struct.track_s* %1174, i32 0, i32 13
  %1176 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1175, align 8
  %1177 = load i32, i32* %18, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1178
  %1180 = load i64, i64* %1179, align 8
  %1181 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1176, i64 %1180
  %1182 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1181, i32 0, i32 2
  store i64 %1169, i64* %1182, align 8
  %1183 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1184 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1183, i32 0, i32 12
  %1185 = load i32, i32* %18, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1184, i64 0, i64 %1186
  %1188 = getelementptr inbounds %struct.track_s, %struct.track_s* %1187, i32 0, i32 13
  %1189 = load %struct.audio_index_entry*, %struct.audio_index_entry** %1188, align 8
  %1190 = load i32, i32* %18, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1191
  %1193 = load i64, i64* %1192, align 8
  %1194 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1189, i64 %1193
  %1195 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %1194, i32 0, i32 1
  %1196 = load i64, i64* %1195, align 8
  %1197 = load i32, i32* %18, align 4
  %1198 = sext i32 %1197 to i64
  %1199 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 %1198
  %1200 = load i64, i64* %1199, align 8
  %1201 = add i64 %1200, %1196
  store i64 %1201, i64* %1199, align 8
  %1202 = load i32, i32* %18, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds [8 x i64], [8 x i64]* %15, i64 0, i64 %1203
  %1205 = load i64, i64* %1204, align 8
  %1206 = add nsw i64 %1205, 1
  store i64 %1206, i64* %1204, align 8
  br label %1207

1207:                                             ; preds = %1121, %1105
  br label %1208

1208:                                             ; preds = %1207
  %1209 = load i32, i32* %18, align 4
  %1210 = add nsw i32 %1209, 1
  store i32 %1210, i32* %18, align 4
  br label %1099

1211:                                             ; preds = %1099
  br label %1212

1212:                                             ; preds = %1211
  %1213 = load i64, i64* %6, align 8
  %1214 = add nsw i64 %1213, 1
  store i64 %1214, i64* %6, align 8
  br label %1033

1215:                                             ; preds = %1033
  store i32 0, i32* %18, align 4
  br label %1216

1216:                                             ; preds = %1233, %1215
  %1217 = load i32, i32* %18, align 4
  %1218 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1219 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1218, i32 0, i32 24
  %1220 = load i32, i32* %1219, align 8
  %1221 = icmp slt i32 %1217, %1220
  br i1 %1221, label %1222, label %1236

1222:                                             ; preds = %1216
  %1223 = load i32, i32* %18, align 4
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds [8 x i64], [8 x i64]* %17, i64 0, i64 %1224
  %1226 = load i64, i64* %1225, align 8
  %1227 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1228 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1227, i32 0, i32 12
  %1229 = load i32, i32* %18, align 4
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %1228, i64 0, i64 %1230
  %1232 = getelementptr inbounds %struct.track_s, %struct.track_s* %1231, i32 0, i32 6
  store i64 %1226, i64* %1232, align 8
  br label %1233

1233:                                             ; preds = %1222
  %1234 = load i32, i32* %18, align 4
  %1235 = add nsw i32 %1234, 1
  store i32 %1235, i32* %18, align 4
  br label %1216

1236:                                             ; preds = %1216
  %1237 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1238 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1237, i32 0, i32 0
  %1239 = load i64, i64* %1238, align 8
  %1240 = trunc i64 %1239 to i32
  %1241 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1242 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1241, i32 0, i32 23
  %1243 = load i64, i64* %1242, align 8
  %1244 = call i64 @lseek(i32 %1240, i64 %1243, i32 0) #7
  %1245 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %1246 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %1245, i32 0, i32 10
  store i64 0, i64* %1246, align 8
  store i32 0, i32* %3, align 4
  br label %1247

1247:                                             ; preds = %1236, %997, %956, %942, %711, %672, %639, %603, %504, %317, %201, %193, %177, %161, %110, %92, %77, %46, %34
  %1248 = load i32, i32* %3, align 4
  ret i32 %1248
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @avi_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = sub i64 %19, %20
  %22 = call i64 @read(i32 %15, i8* %18, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ule i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %4, align 8
  br label %33

27:                                               ; preds = %14
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %9, align 8
  br label %10

31:                                               ; preds = %10
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %4, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i64, i64* %4, align 8
  ret i64 %34
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define internal i64 @str2ushort(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 1
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 8
  %12 = or i32 %6, %11
  %13 = sext i32 %12 to i64
  ret i64 %13
}

declare dso_local i64 @read(i32, i8*, i64) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.avi_t* @AVI_open_fd(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.avi_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.avi_t*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.avi_t* null, %struct.avi_t** %6, align 8
  %7 = call noalias i8* @malloc(i64 1088) #7
  %8 = bitcast i8* %7 to %struct.avi_t*
  store %struct.avi_t* %8, %struct.avi_t** %6, align 8
  %9 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %10 = icmp eq %struct.avi_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 8, i64* @AVI_errno, align 8
  store %struct.avi_t* null, %struct.avi_t** %3, align 8
  br label %27

12:                                               ; preds = %2
  %13 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %14 = bitcast %struct.avi_t* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %14, i8 0, i64 1088, i1 false)
  %15 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 1
  store i64 1, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %20 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @avi_parse_input_file(%struct.avi_t* %21, i32 %22)
  %24 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %25 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %24, i32 0, i32 25
  store i32 0, i32* %25, align 4
  %26 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  store %struct.avi_t* %26, %struct.avi_t** %3, align 8
  br label %27

27:                                               ; preds = %12, %11
  %28 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  ret %struct.avi_t* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_video_frames(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 8
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_video_width(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_video_height(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @AVI_frame_rate(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 4
  %5 = load double, double* %4, align 8
  ret double %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AVI_video_compressor(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 6
  %5 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_max_video_chunk(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 11
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_audio_tracks(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 24
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_audio_channels(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_mp3rate(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_audio_bits(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_audio_format(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_rate(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_bytes(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_chunks(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_codech_offset(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 11
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_codecf_offset(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 12
  %5 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %6 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %5, i32 0, i32 25
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %4, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.track_s, %struct.track_s* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_video_codech_offset(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 16
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_video_codecf_offset(%struct.avi_t* %0) #0 {
  %2 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %2, align 8
  %3 = load %struct.avi_t*, %struct.avi_t** %2, align 8
  %4 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %3, i32 0, i32 17
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_frame_size(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 19
  %14 = load %struct.audio_index_entry*, %struct.audio_index_entry** %13, align 8
  %15 = icmp ne %struct.audio_index_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i64 13, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %35

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %17
  store i64 0, i64* %3, align 8
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 19
  %30 = load %struct.audio_index_entry*, %struct.audio_index_entry** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %30, i64 %31
  %33 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %27, %26, %16, %10
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_audio_size(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %53

11:                                               ; preds = %2
  %12 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 12
  %14 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %15 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %14, i32 0, i32 25
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %13, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.track_s, %struct.track_s* %18, i32 0, i32 13
  %20 = load %struct.audio_index_entry*, %struct.audio_index_entry** %19, align 8
  %21 = icmp ne %struct.audio_index_entry* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  store i64 13, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %53

23:                                               ; preds = %11
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 12
  %30 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %31 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %30, i32 0, i32 25
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %29, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.track_s, %struct.track_s* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %27, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26, %23
  store i64 0, i64* %3, align 8
  br label %53

39:                                               ; preds = %26
  %40 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %41 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %40, i32 0, i32 12
  %42 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %43 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %42, i32 0, i32 25
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %41, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.track_s, %struct.track_s* %46, i32 0, i32 13
  %48 = load %struct.audio_index_entry*, %struct.audio_index_entry** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %48, i64 %49
  %51 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %3, align 8
  br label %53

53:                                               ; preds = %39, %38, %22, %10
  %54 = load i64, i64* %3, align 8
  ret i64 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_get_video_position(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %35

11:                                               ; preds = %2
  %12 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 19
  %14 = load %struct.audio_index_entry*, %struct.audio_index_entry** %13, align 8
  %15 = icmp ne %struct.audio_index_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i64 13, i64* @AVI_errno, align 8
  store i64 -1, i64* %3, align 8
  br label %35

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %23 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %17
  store i64 0, i64* %3, align 8
  br label %35

27:                                               ; preds = %20
  %28 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %29 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %28, i32 0, i32 19
  %30 = load %struct.audio_index_entry*, %struct.audio_index_entry** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %30, i64 %31
  %33 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %27, %26, %16, %10
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_seek_start(%struct.avi_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.avi_t*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %3, align 8
  %4 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %5 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %2, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %11 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %15 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %14, i32 0, i32 23
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @lseek(i32 %13, i64 %16, i32 0) #7
  %18 = load %struct.avi_t*, %struct.avi_t** %3, align 8
  %19 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %18, i32 0, i32 10
  store i64 0, i64* %19, align 8
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_set_video_position(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 19
  %14 = load %struct.audio_index_entry*, %struct.audio_index_entry** %13, align 8
  %15 = icmp ne %struct.audio_index_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i64 13, i64* @AVI_errno, align 8
  store i32 -1, i32* %3, align 4
  br label %25

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %24 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %23, i32 0, i32 10
  store i64 %22, i64* %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %16, %10
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_set_audio_bitrate(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %7 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %3, align 4
  br label %21

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %14 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %13, i32 0, i32 12
  %15 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 25
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %14, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.track_s, %struct.track_s* %19, i32 0, i32 4
  store i64 %12, i64* %20, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %11, %10
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_read_frame(%struct.avi_t* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.avi_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %10 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i64 7, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %87

14:                                               ; preds = %3
  %15 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 19
  %17 = load %struct.audio_index_entry*, %struct.audio_index_entry** %16, align 8
  %18 = icmp ne %struct.audio_index_entry* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i64 13, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %87

20:                                               ; preds = %14
  %21 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %22 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %27 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %30 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp sge i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %20
  store i64 -1, i64* %4, align 8
  br label %87

34:                                               ; preds = %25
  %35 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %36 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %35, i32 0, i32 19
  %37 = load %struct.audio_index_entry*, %struct.audio_index_entry** %36, align 8
  %38 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %39 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %38, i32 0, i32 10
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %37, i64 %40
  %42 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  %44 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %45 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %44, i32 0, i32 19
  %46 = load %struct.audio_index_entry*, %struct.audio_index_entry** %45, align 8
  %47 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %48 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %46, i64 %49
  %51 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 16
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = load i32*, i32** %7, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %58 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %62 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %61, i32 0, i32 19
  %63 = load %struct.audio_index_entry*, %struct.audio_index_entry** %62, align 8
  %64 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %65 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %64, i32 0, i32 10
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %63, i64 %66
  %68 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @lseek(i32 %60, i64 %69, i32 0) #7
  %71 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %72 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i64 @avi_read(i32 %74, i8* %75, i64 %76)
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %34
  store i64 3, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %87

81:                                               ; preds = %34
  %82 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %83 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %82, i32 0, i32 10
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %4, align 8
  br label %87

87:                                               ; preds = %81, %80, %33, %19, %13
  %88 = load i64, i64* %4, align 8
  ret i64 %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_set_audio_position(%struct.avi_t* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.avi_t*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %10 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i64 7, i64* @AVI_errno, align 8
  store i32 -1, i32* %3, align 4
  br label %103

14:                                               ; preds = %2
  %15 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %16 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %15, i32 0, i32 12
  %17 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %18 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %17, i32 0, i32 25
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %16, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.track_s, %struct.track_s* %21, i32 0, i32 13
  %23 = load %struct.audio_index_entry*, %struct.audio_index_entry** %22, align 8
  %24 = icmp ne %struct.audio_index_entry* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %14
  store i64 13, i64* @AVI_errno, align 8
  store i32 -1, i32* %3, align 4
  br label %103

26:                                               ; preds = %14
  %27 = load i64, i64* %5, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 0, i64* %5, align 8
  br label %30

30:                                               ; preds = %29, %26
  store i64 0, i64* %6, align 8
  %31 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %32 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %31, i32 0, i32 12
  %33 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %34 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %33, i32 0, i32 25
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %32, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.track_s, %struct.track_s* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  br label %40

40:                                               ; preds = %69, %30
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub nsw i64 %42, 1
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %46, %47
  %49 = sdiv i64 %48, 2
  store i64 %49, i64* %8, align 8
  %50 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %51 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %50, i32 0, i32 12
  %52 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %53 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %52, i32 0, i32 25
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %51, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.track_s, %struct.track_s* %56, i32 0, i32 13
  %58 = load %struct.audio_index_entry*, %struct.audio_index_entry** %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %58, i64 %59
  %61 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %45
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %7, align 8
  br label %69

67:                                               ; preds = %45
  %68 = load i64, i64* %8, align 8
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %40

70:                                               ; preds = %40
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %73 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %72, i32 0, i32 12
  %74 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %75 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %74, i32 0, i32 25
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %73, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.track_s, %struct.track_s* %78, i32 0, i32 9
  store i64 %71, i64* %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %82 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %81, i32 0, i32 12
  %83 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %84 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %83, i32 0, i32 25
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %82, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.track_s, %struct.track_s* %87, i32 0, i32 13
  %89 = load %struct.audio_index_entry*, %struct.audio_index_entry** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %89, i64 %90
  %92 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = sub i64 %80, %93
  %95 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %96 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %95, i32 0, i32 12
  %97 = load %struct.avi_t*, %struct.avi_t** %4, align 8
  %98 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %97, i32 0, i32 25
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %96, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.track_s, %struct.track_s* %101, i32 0, i32 10
  store i64 %94, i64* %102, align 8
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %70, %25, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_read_audio(%struct.avi_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.avi_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.avi_t* %0, %struct.avi_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %13 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i64 7, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %187

17:                                               ; preds = %3
  %18 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %19 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %18, i32 0, i32 12
  %20 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %21 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %20, i32 0, i32 25
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %19, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.track_s, %struct.track_s* %24, i32 0, i32 13
  %26 = load %struct.audio_index_entry*, %struct.audio_index_entry** %25, align 8
  %27 = icmp ne %struct.audio_index_entry* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  store i64 13, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %187

29:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  br label %30

30:                                               ; preds = %167, %90, %29
  %31 = load i64, i64* %7, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %185

33:                                               ; preds = %30
  %34 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %35 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %34, i32 0, i32 12
  %36 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %37 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %36, i32 0, i32 25
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %35, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.track_s, %struct.track_s* %40, i32 0, i32 13
  %42 = load %struct.audio_index_entry*, %struct.audio_index_entry** %41, align 8
  %43 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %44 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %43, i32 0, i32 12
  %45 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %46 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %45, i32 0, i32 25
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %44, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.track_s, %struct.track_s* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %42, i64 %51
  %53 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %56 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %55, i32 0, i32 12
  %57 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %58 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %57, i32 0, i32 25
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %56, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.track_s, %struct.track_s* %61, i32 0, i32 10
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %54, %63
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %109

67:                                               ; preds = %33
  %68 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %69 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %68, i32 0, i32 12
  %70 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %71 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %70, i32 0, i32 25
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %69, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.track_s, %struct.track_s* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %78 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %77, i32 0, i32 12
  %79 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %80 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %79, i32 0, i32 25
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %78, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.track_s, %struct.track_s* %83, i32 0, i32 7
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = icmp sge i64 %76, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %67
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %4, align 8
  br label %187

90:                                               ; preds = %67
  %91 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %92 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %91, i32 0, i32 12
  %93 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %94 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %93, i32 0, i32 25
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %92, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.track_s, %struct.track_s* %97, i32 0, i32 9
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %102 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %101, i32 0, i32 12
  %103 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %104 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %103, i32 0, i32 25
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %102, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.track_s, %struct.track_s* %107, i32 0, i32 10
  store i64 0, i64* %108, align 8
  br label %30

109:                                              ; preds = %33
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %10, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i64, i64* %7, align 8
  store i64 %114, i64* %11, align 8
  br label %117

115:                                              ; preds = %109
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %119 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %118, i32 0, i32 12
  %120 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %121 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %120, i32 0, i32 25
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %119, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.track_s, %struct.track_s* %124, i32 0, i32 13
  %126 = load %struct.audio_index_entry*, %struct.audio_index_entry** %125, align 8
  %127 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %128 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %127, i32 0, i32 12
  %129 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %130 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %129, i32 0, i32 25
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %128, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.track_s, %struct.track_s* %133, i32 0, i32 9
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %126, i64 %135
  %137 = getelementptr inbounds %struct.audio_index_entry, %struct.audio_index_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %140 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %139, i32 0, i32 12
  %141 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %142 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %141, i32 0, i32 25
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %140, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.track_s, %struct.track_s* %145, i32 0, i32 10
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %138, %147
  store i64 %148, i64* %9, align 8
  %149 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %150 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load i64, i64* %9, align 8
  %154 = call i64 @lseek(i32 %152, i64 %153, i32 0) #7
  %155 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %156 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = trunc i64 %157 to i32
  %159 = load i8*, i8** %6, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds i8, i8* %159, i64 %160
  %162 = load i64, i64* %11, align 8
  %163 = call i64 @avi_read(i32 %158, i8* %161, i64 %162)
  %164 = load i64, i64* %11, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %117
  store i64 3, i64* @AVI_errno, align 8
  store i64 -1, i64* %4, align 8
  br label %187

167:                                              ; preds = %117
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %7, align 8
  %170 = sub nsw i64 %169, %168
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* %8, align 8
  %173 = add nsw i64 %172, %171
  store i64 %173, i64* %8, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %176 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %175, i32 0, i32 12
  %177 = load %struct.avi_t*, %struct.avi_t** %5, align 8
  %178 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %177, i32 0, i32 25
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %176, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.track_s, %struct.track_s* %181, i32 0, i32 10
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, %174
  store i64 %184, i64* %182, align 8
  br label %30

185:                                              ; preds = %30
  %186 = load i64, i64* %8, align 8
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %185, %166, %88, %28, %16
  %188 = load i64, i64* %4, align 8
  ret i64 %188
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AVI_read_data(%struct.avi_t* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.avi_t*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [8 x i8], align 1
  store %struct.avi_t* %0, %struct.avi_t** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %17 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %144

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %143, %35, %21
  %23 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %24 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %28 = call i64 @avi_read(i32 %26, i8* %27, i64 8)
  %29 = icmp ne i64 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %144

31:                                               ; preds = %22
  %32 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %33 = call i32 @strncasecmp(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i64 4) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %37 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i64 @lseek(i32 %39, i64 4, i32 1) #7
  br label %22

41:                                               ; preds = %31
  %42 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  %44 = call i64 @str2ulong(i8* %43)
  %45 = add i64 %44, 1
  %46 = and i64 %45, -2
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %49 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %50 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %49, i32 0, i32 9
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %50, i64 0, i64 0
  %52 = call i32 @strncasecmp(i8* %48, i8* %51, i64 3) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %41
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %13, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %59 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %58, i32 0, i32 10
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %10, align 8
  %65 = icmp sgt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %68 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = call i64 @lseek(i32 %70, i64 %72, i32 1) #7
  store i32 -1, i32* %7, align 4
  br label %144

74:                                               ; preds = %54
  %75 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %76 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = call i64 @avi_read(i32 %78, i8* %79, i64 %81)
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %144

87:                                               ; preds = %74
  store i32 1, i32* %7, align 4
  br label %144

88:                                               ; preds = %41
  %89 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %90 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %91 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %90, i32 0, i32 12
  %92 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %93 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %92, i32 0, i32 25
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x %struct.track_s], [8 x %struct.track_s]* %91, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.track_s, %struct.track_s* %96, i32 0, i32 8
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %97, i64 0, i64 0
  %99 = call i32 @strncasecmp(i8* %89, i8* %98, i64 4) #8
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %88
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = load i64*, i64** %13, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* %12, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %101
  %110 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %111 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = call i64 @lseek(i32 %113, i64 %115, i32 1) #7
  store i32 -2, i32* %7, align 4
  br label %144

117:                                              ; preds = %101
  %118 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %119 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = call i64 @avi_read(i32 %121, i8* %122, i64 %124)
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %117
  store i32 0, i32* %7, align 4
  br label %144

130:                                              ; preds = %117
  store i32 2, i32* %7, align 4
  br label %144

131:                                              ; preds = %88
  %132 = load %struct.avi_t*, %struct.avi_t** %8, align 8
  %133 = getelementptr inbounds %struct.avi_t, %struct.avi_t* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = call i64 @lseek(i32 %135, i64 %137, i32 1) #7
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %131
  store i32 0, i32* %7, align 4
  br label %144

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  br label %22

144:                                              ; preds = %140, %130, %129, %109, %87, %86, %66, %30, %20
  %145 = load i32, i32* %7, align 4
  ret i32 %145
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AVI_print_error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i64, i64* @AVI_errno, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i64, i64* @AVI_errno, align 8
  %8 = load i32, i32* @num_avi_errors, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i64, i64* @AVI_errno, align 8
  br label %17

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @num_avi_errors, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %13, %11
  %18 = phi i64 [ %12, %11 ], [ %16, %13 ]
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %3, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x i8*], [15 x i8*]* @avi_errors, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8* %21, i8* %25)
  %27 = load i64, i64* @AVI_errno, align 8
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %41, label %29

29:                                               ; preds = %17
  %30 = load i64, i64* @AVI_errno, align 8
  %31 = icmp eq i64 %30, 3
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* @AVI_errno, align 8
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* @AVI_errno, align 8
  %37 = icmp eq i64 %36, 5
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @AVI_errno, align 8
  %40 = icmp eq i64 %39, 6
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35, %32, %29, %17
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0))
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

declare dso_local void @perror(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AVI_strerror() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = load i64, i64* @AVI_errno, align 8
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = load i64, i64* @AVI_errno, align 8
  %7 = load i32, i32* @num_avi_errors, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp slt i64 %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i64, i64* @AVI_errno, align 8
  br label %16

12:                                               ; preds = %5, %0
  %13 = load i32, i32* @num_avi_errors, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i64 [ %11, %10 ], [ %15, %12 ]
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %2, align 4
  %19 = load i64, i64* @AVI_errno, align 8
  %20 = icmp eq i64 %19, 2
  br i1 %20, label %33, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* @AVI_errno, align 8
  %23 = icmp eq i64 %22, 3
  br i1 %23, label %33, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* @AVI_errno, align 8
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @AVI_errno, align 8
  %29 = icmp eq i64 %28, 5
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* @AVI_errno, align 8
  %32 = icmp eq i64 %31, 6
  br i1 %32, label %33, label %42

33:                                               ; preds = %30, %27, %24, %21, %16
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [15 x i8*], [15 x i8*]* @avi_errors, i64 0, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32* @__errno_location() #10
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @strerror(i32 %39) #7
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @error_string, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), i8* %37, i8* %40) #7
  store i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @error_string, i64 0, i64 0), i8** %1, align 8
  br label %47

42:                                               ; preds = %30
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [15 x i8*], [15 x i8*]* @avi_errors, i64 0, i64 %44
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %1, align 8
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i8*, i8** %1, align 8
  ret i8* %48
}

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #6

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @AVI_max_size() #0 {
  ret i64 4278188031
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @chop_flip_image(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float*, align 8
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %33

28:                                               ; preds = %6
  store i32 0, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %16, align 4
  br label %33

33:                                               ; preds = %28, %27
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %38, %39
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 4
  %47 = call noalias i8* @malloc(i64 %46) #7
  %48 = bitcast i8* %47 to float*
  store float* %48, float** %21, align 8
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %113

51:                                               ; preds = %33
  store float 0x3F70101020000000, float* %23, align 4
  store i32 0, i32* %19, align 4
  br label %52

52:                                               ; preds = %109, %51
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %52
  store i32 0, i32* %20, align 4
  br label %57

57:                                               ; preds = %105, %56
  %58 = load i32, i32* %20, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %108

61:                                               ; preds = %57
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = sub nsw i32 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %71, %72
  %74 = add nsw i32 %70, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %62, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sitofp i8 %77 to float
  %79 = load float, float* %23, align 4
  %80 = fmul float %78, %79
  store float %80, float* %22, align 4
  %81 = load float, float* %22, align 4
  %82 = fcmp olt float %81, 0.000000e+00
  br i1 %82, label %83, label %94

83:                                               ; preds = %61
  %84 = load float, float* %22, align 4
  %85 = fadd float %84, 2.560000e+02
  %86 = load float*, float** %21, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %18, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %86, i64 %92
  store float %85, float* %93, align 4
  br label %104

94:                                               ; preds = %61
  %95 = load float, float* %22, align 4
  %96 = load float*, float** %21, align 8
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %18, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds float, float* %96, i64 %102
  store float %95, float* %103, align 4
  br label %104

104:                                              ; preds = %94, %83
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %20, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %57

108:                                              ; preds = %57
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  br label %52

112:                                              ; preds = %52
  br label %173

113:                                              ; preds = %33
  store i32 0, i32* %19, align 4
  br label %114

114:                                              ; preds = %169, %113
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %17, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %172

118:                                              ; preds = %114
  store i32 0, i32* %20, align 4
  br label %119

119:                                              ; preds = %165, %118
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %168

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 %126, %129
  %131 = load i32, i32* %9, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %133, %134
  %136 = add nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %124, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sitofp i8 %139 to float
  store float %140, float* %22, align 4
  %141 = load float, float* %22, align 4
  %142 = fcmp olt float %141, 0.000000e+00
  br i1 %142, label %143, label %154

143:                                              ; preds = %123
  %144 = load float, float* %22, align 4
  %145 = fadd float %144, 2.560000e+02
  %146 = load float*, float** %21, align 8
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %18, align 4
  %149 = mul nsw i32 %147, %148
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %146, i64 %152
  store float %145, float* %153, align 4
  br label %164

154:                                              ; preds = %123
  %155 = load float, float* %22, align 4
  %156 = load float*, float** %21, align 8
  %157 = load i32, i32* %19, align 4
  %158 = load i32, i32* %18, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %20, align 4
  %161 = add nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %156, i64 %162
  store float %155, float* %163, align 4
  br label %164

164:                                              ; preds = %154, %143
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %20, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %20, align 4
  br label %119

168:                                              ; preds = %119
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %19, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %19, align 4
  br label %114

172:                                              ; preds = %114
  br label %173

173:                                              ; preds = %172, %112
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* %18, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = call noalias i8* @malloc(i64 %178) #7
  %180 = bitcast i8* %179 to float*
  store float* %180, float** %24, align 8
  %181 = load i32, i32* %12, align 4
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %219

183:                                              ; preds = %173
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %215, %183
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %184
  store i32 0, i32* %20, align 4
  br label %189

189:                                              ; preds = %211, %188
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %17, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %189
  %194 = load float*, float** %21, align 8
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %18, align 4
  %197 = mul nsw i32 %195, %196
  %198 = load i32, i32* %19, align 4
  %199 = add nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %194, i64 %200
  %202 = load float, float* %201, align 4
  %203 = load float*, float** %24, align 8
  %204 = load i32, i32* %19, align 4
  %205 = load i32, i32* %17, align 4
  %206 = mul nsw i32 %204, %205
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds float, float* %203, i64 %209
  store float %202, float* %210, align 4
  br label %211

211:                                              ; preds = %193
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %20, align 4
  br label %189

214:                                              ; preds = %189
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %19, align 4
  br label %184

218:                                              ; preds = %184
  br label %221

219:                                              ; preds = %173
  %220 = load float*, float** %21, align 8
  store float* %220, float** %24, align 8
  br label %221

221:                                              ; preds = %219, %218
  %222 = load float*, float** %21, align 8
  %223 = bitcast float* %222 to i8*
  call void @free(i8* %223) #7
  %224 = load float*, float** %24, align 8
  ret float* %224
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @get_frame(%struct.avi_t* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.avi_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca float*, align 8
  store %struct.avi_t* %0, %struct.avi_t** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %18 = call i32 @AVI_video_width(%struct.avi_t* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %20 = call i32 @AVI_video_height(%struct.avi_t* %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = call i32 @AVI_set_video_position(%struct.avi_t* %21, i64 %23)
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 1
  %30 = call noalias i8* @malloc(i64 %29) #7
  store i8* %30, i8** %15, align 8
  %31 = load %struct.avi_t*, %struct.avi_t** %6, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = call i64 @AVI_read_frame(%struct.avi_t* %31, i8* %32, i32* %11)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %5
  call void @AVI_print_error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.41, i64 0, i64 0))
  call void @exit(i32 -1) #9
  unreachable

38:                                               ; preds = %5
  %39 = load i8*, i8** %15, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call float* @chop_flip_image(i8* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  store float* %45, float** %16, align 8
  %46 = load i8*, i8** %15, align 8
  call void @free(i8* %46) #7
  %47 = load float*, float** %16, align 8
  ret float* %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @kernel(%struct.public_struct* byval(%struct.public_struct) align 8 %0, %struct.private_struct* byval(%struct.private_struct) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca float, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca float, align 4
  %48 = alloca float, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  store float 0.000000e+00, float* %37, align 4
  store float 0.000000e+00, float* %38, align 4
  store i32 0, i32* %39, align 4
  store i32 0, i32* %40, align 4
  store float 0.000000e+00, float* %41, align 4
  store i32 0, i32* %42, align 4
  %58 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %163

61:                                               ; preds = %2
  %62 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 20
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %63, %65
  %67 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %54, align 4
  %70 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %54, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %76, i32* %81, align 4
  %82 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %54, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 6
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %95, i64 %98
  store float* %99, float** %4, align 8
  store i32 0, i32* %25, align 4
  br label %100

100:                                              ; preds = %159, %61
  %101 = load i32, i32* %25, align 4
  %102 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %162

105:                                              ; preds = %100
  store i32 0, i32* %24, align 4
  br label %106

106:                                              ; preds = %155, %105
  %107 = load i32, i32* %24, align 4
  %108 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %158

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sub nsw i32 %118, 25
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %119, %120
  %122 = sub nsw i32 %121, 1
  store i32 %122, i32* %26, align 4
  %123 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 25
  %131 = load i32, i32* %25, align 4
  %132 = add nsw i32 %130, %131
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %27, align 4
  %134 = load i32, i32* %27, align 4
  %135 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 23
  %136 = load i32, i32* %135, align 8
  %137 = mul nsw i32 %134, %136
  %138 = load i32, i32* %26, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %55, align 4
  %140 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 22
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %55, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  %146 = load float*, float** %4, align 8
  %147 = load i32, i32* %25, align 4
  %148 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %149 = load i32, i32* %148, align 8
  %150 = mul nsw i32 %147, %149
  %151 = load i32, i32* %24, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds float, float* %146, i64 %153
  store float %145, float* %154, align 4
  br label %155

155:                                              ; preds = %111
  %156 = load i32, i32* %24, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %24, align 4
  br label %106

158:                                              ; preds = %106
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %25, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %25, align 4
  br label %100

162:                                              ; preds = %100
  br label %163

163:                                              ; preds = %162, %2
  %164 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %1584

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %174, %176
  store i32 %177, i32* %7, align 4
  %178 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  store i32 %187, i32* %8, align 4
  store i32 0, i32* %25, align 4
  br label %188

188:                                              ; preds = %247, %167
  %189 = load i32, i32* %25, align 4
  %190 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 28
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %189, %191
  br i1 %192, label %193, label %250

193:                                              ; preds = %188
  store i32 0, i32* %24, align 4
  br label %194

194:                                              ; preds = %243, %193
  %195 = load i32, i32* %24, align 4
  %196 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %195, %197
  br i1 %198, label %199, label %246

199:                                              ; preds = %194
  %200 = load i32, i32* %24, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %200, %201
  %203 = sub nsw i32 %202, 1
  store i32 %203, i32* %26, align 4
  %204 = load i32, i32* %25, align 4
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %204, %205
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %27, align 4
  %208 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 22
  %209 = load float*, float** %208, align 8
  %210 = load i32, i32* %27, align 4
  %211 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 23
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %210, %212
  %214 = load i32, i32* %26, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %209, i64 %216
  %218 = load float, float* %217, align 4
  store float %218, float* %31, align 4
  %219 = load float, float* %31, align 4
  %220 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 7
  %221 = load float*, float** %220, align 8
  %222 = load i32, i32* %25, align 4
  %223 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %224 = load i32, i32* %223, align 8
  %225 = mul nsw i32 %222, %224
  %226 = load i32, i32* %24, align 4
  %227 = add nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %221, i64 %228
  store float %219, float* %229, align 4
  %230 = load float, float* %31, align 4
  %231 = load float, float* %31, align 4
  %232 = fmul float %230, %231
  %233 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 8
  %234 = load float*, float** %233, align 8
  %235 = load i32, i32* %25, align 4
  %236 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %237 = load i32, i32* %236, align 8
  %238 = mul nsw i32 %235, %237
  %239 = load i32, i32* %24, align 4
  %240 = add nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %234, i64 %241
  store float %232, float* %242, align 4
  br label %243

243:                                              ; preds = %199
  %244 = load i32, i32* %24, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %24, align 4
  br label %194

246:                                              ; preds = %194
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %25, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %25, align 4
  br label %188

250:                                              ; preds = %188
  %251 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 6
  %252 = load float*, float** %251, align 8
  %253 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %252, i64 %255
  store float* %256, float** %4, align 8
  store i32 0, i32* %25, align 4
  br label %257

257:                                              ; preds = %313, %250
  %258 = load i32, i32* %25, align 4
  %259 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %316

262:                                              ; preds = %257
  store i32 0, i32* %24, align 4
  br label %263

263:                                              ; preds = %309, %262
  %264 = load i32, i32* %24, align 4
  %265 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %264, %266
  br i1 %267, label %268, label %312

268:                                              ; preds = %263
  %269 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %270 = load i32, i32* %269, align 8
  %271 = sub nsw i32 %270, 1
  %272 = load i32, i32* %24, align 4
  %273 = sub nsw i32 %271, %272
  store i32 %273, i32* %5, align 4
  %274 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %275 = load i32, i32* %274, align 8
  %276 = sub nsw i32 %275, 1
  %277 = load i32, i32* %25, align 4
  %278 = sub nsw i32 %276, %277
  store i32 %278, i32* %6, align 4
  %279 = load i32, i32* %6, align 4
  %280 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %281 = load i32, i32* %280, align 8
  %282 = mul nsw i32 %279, %281
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %54, align 4
  %285 = load float*, float** %4, align 8
  %286 = load i32, i32* %54, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds float, float* %285, i64 %287
  %289 = load float, float* %288, align 4
  store float %289, float* %31, align 4
  %290 = load float, float* %31, align 4
  %291 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 9
  %292 = load float*, float** %291, align 8
  %293 = load i32, i32* %25, align 4
  %294 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %295 = load i32, i32* %294, align 8
  %296 = mul nsw i32 %293, %295
  %297 = load i32, i32* %24, align 4
  %298 = add nsw i32 %296, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %292, i64 %299
  store float %290, float* %300, align 4
  %301 = load float, float* %31, align 4
  %302 = load float, float* %31, align 4
  %303 = fmul float %301, %302
  %304 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 10
  %305 = load float*, float** %304, align 8
  %306 = load i32, i32* %54, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds float, float* %305, i64 %307
  store float %303, float* %308, align 4
  br label %309

309:                                              ; preds = %268
  %310 = load i32, i32* %24, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %24, align 4
  br label %263

312:                                              ; preds = %263
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %25, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %25, align 4
  br label %257

316:                                              ; preds = %257
  store float 0.000000e+00, float* %47, align 4
  store i32 0, i32* %22, align 4
  br label %317

317:                                              ; preds = %330, %316
  %318 = load i32, i32* %22, align 4
  %319 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %320 = load i32, i32* %319, align 8
  %321 = icmp slt i32 %318, %320
  br i1 %321, label %322, label %333

322:                                              ; preds = %317
  %323 = load float, float* %47, align 4
  %324 = load float*, float** %4, align 8
  %325 = load i32, i32* %22, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds float, float* %324, i64 %326
  %328 = load float, float* %327, align 4
  %329 = fadd float %323, %328
  store float %329, float* %47, align 4
  br label %330

330:                                              ; preds = %322
  %331 = load i32, i32* %22, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %22, align 4
  br label %317

333:                                              ; preds = %317
  store float 0.000000e+00, float* %48, align 4
  store i32 0, i32* %22, align 4
  br label %334

334:                                              ; preds = %348, %333
  %335 = load i32, i32* %22, align 4
  %336 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %337 = load i32, i32* %336, align 8
  %338 = icmp slt i32 %335, %337
  br i1 %338, label %339, label %351

339:                                              ; preds = %334
  %340 = load float, float* %48, align 4
  %341 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 10
  %342 = load float*, float** %341, align 8
  %343 = load i32, i32* %22, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = fadd float %340, %346
  store float %347, float* %48, align 4
  br label %348

348:                                              ; preds = %339
  %349 = load i32, i32* %22, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %22, align 4
  br label %334

351:                                              ; preds = %334
  %352 = load float, float* %47, align 4
  %353 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %354 = load i32, i32* %353, align 8
  %355 = sitofp i32 %354 to float
  %356 = fdiv float %352, %355
  store float %356, float* %49, align 4
  %357 = load float, float* %49, align 4
  %358 = load float, float* %49, align 4
  %359 = fmul float %357, %358
  store float %359, float* %50, align 4
  %360 = load float, float* %48, align 4
  %361 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %362 = load i32, i32* %361, align 8
  %363 = sitofp i32 %362 to float
  %364 = fdiv float %360, %363
  %365 = load float, float* %50, align 4
  %366 = fsub float %364, %365
  store float %366, float* %51, align 4
  %367 = load float, float* %51, align 4
  %368 = fpext float %367 to double
  %369 = call double @sqrt(double %368) #7
  %370 = fptrunc double %369 to float
  store float %370, float* %52, align 4
  %371 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %372 = load i32, i32* %371, align 8
  %373 = sub nsw i32 %372, 1
  %374 = sitofp i32 %373 to float
  %375 = fpext float %374 to double
  %376 = call double @sqrt(double %375) #7
  %377 = load float, float* %52, align 4
  %378 = fpext float %377 to double
  %379 = fmul double %376, %378
  %380 = fptrunc double %379 to float
  store float %380, float* %53, align 4
  store i32 1, i32* %25, align 4
  br label %381

381:                                              ; preds = %519, %351
  %382 = load i32, i32* %25, align 4
  %383 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 38
  %384 = load i32, i32* %383, align 4
  %385 = icmp sle i32 %382, %384
  br i1 %385, label %386, label %522

386:                                              ; preds = %381
  %387 = load i32, i32* %25, align 4
  %388 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 36
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %387, %389
  store i32 %390, i32* %23, align 4
  %391 = load i32, i32* %23, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %11, align 4
  %393 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 28
  %394 = load i32, i32* %393, align 4
  %395 = load i32, i32* %11, align 4
  %396 = icmp slt i32 %394, %395
  br i1 %396, label %397, label %402

397:                                              ; preds = %386
  %398 = load i32, i32* %11, align 4
  %399 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 28
  %400 = load i32, i32* %399, align 4
  %401 = sub nsw i32 %398, %400
  store i32 %401, i32* %12, align 4
  br label %403

402:                                              ; preds = %386
  store i32 1, i32* %12, align 4
  br label %403

403:                                              ; preds = %402, %397
  %404 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* %23, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %410 = load i32, i32* %409, align 4
  store i32 %410, i32* %13, align 4
  br label %413

411:                                              ; preds = %403
  %412 = load i32, i32* %23, align 4
  store i32 %412, i32* %13, align 4
  br label %413

413:                                              ; preds = %411, %408
  store i32 1, i32* %24, align 4
  br label %414

414:                                              ; preds = %515, %413
  %415 = load i32, i32* %24, align 4
  %416 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %417 = load i32, i32* %416, align 8
  %418 = icmp sle i32 %415, %417
  br i1 %418, label %419, label %518

419:                                              ; preds = %414
  %420 = load i32, i32* %24, align 4
  %421 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 35
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %420, %422
  store i32 %423, i32* %22, align 4
  %424 = load i32, i32* %22, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %14, align 4
  %426 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %427 = load i32, i32* %426, align 8
  %428 = load i32, i32* %14, align 4
  %429 = icmp slt i32 %427, %428
  br i1 %429, label %430, label %435

430:                                              ; preds = %419
  %431 = load i32, i32* %14, align 4
  %432 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %433 = load i32, i32* %432, align 8
  %434 = sub nsw i32 %431, %433
  store i32 %434, i32* %15, align 4
  br label %436

435:                                              ; preds = %419
  store i32 1, i32* %15, align 4
  br label %436

436:                                              ; preds = %435, %430
  %437 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %438 = load i32, i32* %437, align 8
  %439 = load i32, i32* %22, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %444

441:                                              ; preds = %436
  %442 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %443 = load i32, i32* %442, align 8
  store i32 %443, i32* %16, align 4
  br label %446

444:                                              ; preds = %436
  %445 = load i32, i32* %22, align 4
  store i32 %445, i32* %16, align 4
  br label %446

446:                                              ; preds = %444, %441
  store float 0.000000e+00, float* %21, align 4
  %447 = load i32, i32* %12, align 4
  store i32 %447, i32* %17, align 4
  br label %448

448:                                              ; preds = %498, %446
  %449 = load i32, i32* %17, align 4
  %450 = load i32, i32* %13, align 4
  %451 = icmp sle i32 %449, %450
  br i1 %451, label %452, label %501

452:                                              ; preds = %448
  %453 = load i32, i32* %11, align 4
  %454 = load i32, i32* %17, align 4
  %455 = sub nsw i32 %453, %454
  store i32 %455, i32* %18, align 4
  %456 = load i32, i32* %15, align 4
  store i32 %456, i32* %19, align 4
  br label %457

457:                                              ; preds = %494, %452
  %458 = load i32, i32* %19, align 4
  %459 = load i32, i32* %16, align 4
  %460 = icmp sle i32 %458, %459
  br i1 %460, label %461, label %497

461:                                              ; preds = %457
  %462 = load i32, i32* %14, align 4
  %463 = load i32, i32* %19, align 4
  %464 = sub nsw i32 %462, %463
  store i32 %464, i32* %20, align 4
  %465 = load float, float* %21, align 4
  %466 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 9
  %467 = load float*, float** %466, align 8
  %468 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* %17, align 4
  %471 = sub nsw i32 %470, 1
  %472 = mul nsw i32 %469, %471
  %473 = load i32, i32* %19, align 4
  %474 = add nsw i32 %472, %473
  %475 = sub nsw i32 %474, 1
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %467, i64 %476
  %478 = load float, float* %477, align 4
  %479 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 7
  %480 = load float*, float** %479, align 8
  %481 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* %18, align 4
  %484 = sub nsw i32 %483, 1
  %485 = mul nsw i32 %482, %484
  %486 = load i32, i32* %20, align 4
  %487 = add nsw i32 %485, %486
  %488 = sub nsw i32 %487, 1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds float, float* %480, i64 %489
  %491 = load float, float* %490, align 4
  %492 = fmul float %478, %491
  %493 = fadd float %465, %492
  store float %493, float* %21, align 4
  br label %494

494:                                              ; preds = %461
  %495 = load i32, i32* %19, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %19, align 4
  br label %457

497:                                              ; preds = %457
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* %17, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %17, align 4
  br label %448

501:                                              ; preds = %448
  %502 = load float, float* %21, align 4
  %503 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %504 = load float*, float** %503, align 8
  %505 = load i32, i32* %25, align 4
  %506 = sub nsw i32 %505, 1
  %507 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %508 = load i32, i32* %507, align 8
  %509 = mul nsw i32 %506, %508
  %510 = load i32, i32* %24, align 4
  %511 = sub nsw i32 %510, 1
  %512 = add nsw i32 %509, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds float, float* %504, i64 %513
  store float %502, float* %514, align 4
  br label %515

515:                                              ; preds = %501
  %516 = load i32, i32* %24, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %24, align 4
  br label %414

518:                                              ; preds = %414
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %25, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %25, align 4
  br label %381

522:                                              ; preds = %381
  store i32 0, i32* %25, align 4
  br label %523

523:                                              ; preds = %608, %522
  %524 = load i32, i32* %25, align 4
  %525 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 44
  %526 = load i32, i32* %525, align 4
  %527 = icmp slt i32 %524, %526
  br i1 %527, label %528, label %611

528:                                              ; preds = %523
  store i32 0, i32* %24, align 4
  br label %529

529:                                              ; preds = %604, %528
  %530 = load i32, i32* %24, align 4
  %531 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %532 = load i32, i32* %531, align 8
  %533 = icmp slt i32 %530, %532
  br i1 %533, label %534, label %607

534:                                              ; preds = %529
  %535 = load i32, i32* %24, align 4
  %536 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %537 = load i32, i32* %536, align 8
  %538 = sub nsw i32 %537, 1
  %539 = icmp sgt i32 %535, %538
  br i1 %539, label %540, label %592

540:                                              ; preds = %534
  %541 = load i32, i32* %24, align 4
  %542 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %543 = load i32, i32* %542, align 8
  %544 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %545 = load i32, i32* %544, align 8
  %546 = add nsw i32 %543, %545
  %547 = icmp slt i32 %541, %546
  br i1 %547, label %548, label %592

548:                                              ; preds = %540
  %549 = load i32, i32* %25, align 4
  %550 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %551 = load i32, i32* %550, align 4
  %552 = sub nsw i32 %551, 1
  %553 = icmp sgt i32 %549, %552
  br i1 %553, label %554, label %592

554:                                              ; preds = %548
  %555 = load i32, i32* %25, align 4
  %556 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %557 = load i32, i32* %556, align 4
  %558 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 28
  %559 = load i32, i32* %558, align 4
  %560 = add nsw i32 %557, %559
  %561 = icmp slt i32 %555, %560
  br i1 %561, label %562, label %592

562:                                              ; preds = %554
  %563 = load i32, i32* %24, align 4
  %564 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %565 = load i32, i32* %564, align 8
  %566 = sub nsw i32 %563, %565
  store i32 %566, i32* %26, align 4
  %567 = load i32, i32* %25, align 4
  %568 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %569 = load i32, i32* %568, align 4
  %570 = sub nsw i32 %567, %569
  store i32 %570, i32* %27, align 4
  %571 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 7
  %572 = load float*, float** %571, align 8
  %573 = load i32, i32* %27, align 4
  %574 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %575 = load i32, i32* %574, align 8
  %576 = mul nsw i32 %573, %575
  %577 = load i32, i32* %26, align 4
  %578 = add nsw i32 %576, %577
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds float, float* %572, i64 %579
  %581 = load float, float* %580, align 4
  %582 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %583 = load float*, float** %582, align 8
  %584 = load i32, i32* %25, align 4
  %585 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %586 = load i32, i32* %585, align 8
  %587 = mul nsw i32 %584, %586
  %588 = load i32, i32* %24, align 4
  %589 = add nsw i32 %587, %588
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds float, float* %583, i64 %590
  store float %581, float* %591, align 4
  br label %603

592:                                              ; preds = %554, %548, %540, %534
  %593 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %594 = load float*, float** %593, align 8
  %595 = load i32, i32* %25, align 4
  %596 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %597 = load i32, i32* %596, align 8
  %598 = mul nsw i32 %595, %597
  %599 = load i32, i32* %24, align 4
  %600 = add nsw i32 %598, %599
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds float, float* %594, i64 %601
  store float 0.000000e+00, float* %602, align 4
  br label %603

603:                                              ; preds = %592, %562
  br label %604

604:                                              ; preds = %603
  %605 = load i32, i32* %24, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %24, align 4
  br label %529

607:                                              ; preds = %529
  br label %608

608:                                              ; preds = %607
  %609 = load i32, i32* %25, align 4
  %610 = add nsw i32 %609, 1
  store i32 %610, i32* %25, align 4
  br label %523

611:                                              ; preds = %523
  store i32 0, i32* %3, align 4
  br label %612

612:                                              ; preds = %654, %611
  %613 = load i32, i32* %3, align 4
  %614 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 44
  %615 = load i32, i32* %614, align 4
  %616 = icmp slt i32 %613, %615
  br i1 %616, label %617, label %657

617:                                              ; preds = %612
  %618 = load i32, i32* %3, align 4
  %619 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %620 = load i32, i32* %619, align 8
  %621 = mul nsw i32 %618, %620
  store i32 %621, i32* %30, align 4
  store float 0.000000e+00, float* %29, align 4
  %622 = load i32, i32* %30, align 4
  store i32 %622, i32* %28, align 4
  br label %623

623:                                              ; preds = %650, %617
  %624 = load i32, i32* %28, align 4
  %625 = load i32, i32* %30, align 4
  %626 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %627 = load i32, i32* %626, align 8
  %628 = add nsw i32 %625, %627
  %629 = icmp slt i32 %624, %628
  br i1 %629, label %630, label %653

630:                                              ; preds = %623
  %631 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %632 = load float*, float** %631, align 8
  %633 = load i32, i32* %28, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds float, float* %632, i64 %634
  %636 = load float, float* %635, align 4
  %637 = load float, float* %29, align 4
  %638 = fadd float %636, %637
  %639 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %640 = load float*, float** %639, align 8
  %641 = load i32, i32* %28, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds float, float* %640, i64 %642
  store float %638, float* %643, align 4
  %644 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %645 = load float*, float** %644, align 8
  %646 = load i32, i32* %28, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds float, float* %645, i64 %647
  %649 = load float, float* %648, align 4
  store float %649, float* %29, align 4
  br label %650

650:                                              ; preds = %630
  %651 = load i32, i32* %28, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %28, align 4
  br label %623

653:                                              ; preds = %623
  br label %654

654:                                              ; preds = %653
  %655 = load i32, i32* %3, align 4
  %656 = add nsw i32 %655, 1
  store i32 %656, i32* %3, align 4
  br label %612

657:                                              ; preds = %612
  store i32 0, i32* %25, align 4
  br label %658

658:                                              ; preds = %729, %657
  %659 = load i32, i32* %25, align 4
  %660 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 56
  %661 = load i32, i32* %660, align 4
  %662 = icmp slt i32 %659, %661
  br i1 %662, label %663, label %732

663:                                              ; preds = %658
  store i32 0, i32* %24, align 4
  br label %664

664:                                              ; preds = %725, %663
  %665 = load i32, i32* %24, align 4
  %666 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %667 = load i32, i32* %666, align 8
  %668 = icmp slt i32 %665, %667
  br i1 %668, label %669, label %728

669:                                              ; preds = %664
  %670 = load i32, i32* %24, align 4
  %671 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 47
  %672 = load i32, i32* %671, align 8
  %673 = add nsw i32 %670, %672
  %674 = sub nsw i32 %673, 1
  store i32 %674, i32* %26, align 4
  %675 = load i32, i32* %25, align 4
  %676 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 49
  %677 = load i32, i32* %676, align 8
  %678 = add nsw i32 %675, %677
  %679 = sub nsw i32 %678, 1
  store i32 %679, i32* %27, align 4
  %680 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %681 = load float*, float** %680, align 8
  %682 = load i32, i32* %27, align 4
  %683 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %684 = load i32, i32* %683, align 8
  %685 = mul nsw i32 %682, %684
  %686 = load i32, i32* %26, align 4
  %687 = add nsw i32 %685, %686
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float, float* %681, i64 %688
  %690 = load float, float* %689, align 4
  store float %690, float* %31, align 4
  %691 = load i32, i32* %24, align 4
  %692 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 51
  %693 = load i32, i32* %692, align 8
  %694 = add nsw i32 %691, %693
  %695 = sub nsw i32 %694, 1
  store i32 %695, i32* %26, align 4
  %696 = load i32, i32* %25, align 4
  %697 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 53
  %698 = load i32, i32* %697, align 8
  %699 = add nsw i32 %696, %698
  %700 = sub nsw i32 %699, 1
  store i32 %700, i32* %27, align 4
  %701 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %702 = load float*, float** %701, align 8
  %703 = load i32, i32* %27, align 4
  %704 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %705 = load i32, i32* %704, align 8
  %706 = mul nsw i32 %703, %705
  %707 = load i32, i32* %26, align 4
  %708 = add nsw i32 %706, %707
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds float, float* %702, i64 %709
  %711 = load float, float* %710, align 4
  store float %711, float* %32, align 4
  %712 = load float, float* %31, align 4
  %713 = load float, float* %32, align 4
  %714 = fsub float %712, %713
  %715 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %716 = load float*, float** %715, align 8
  %717 = load i32, i32* %25, align 4
  %718 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %719 = load i32, i32* %718, align 8
  %720 = mul nsw i32 %717, %719
  %721 = load i32, i32* %24, align 4
  %722 = add nsw i32 %720, %721
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds float, float* %716, i64 %723
  store float %714, float* %724, align 4
  br label %725

725:                                              ; preds = %669
  %726 = load i32, i32* %24, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %24, align 4
  br label %664

728:                                              ; preds = %664
  br label %729

729:                                              ; preds = %728
  %730 = load i32, i32* %25, align 4
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %25, align 4
  br label %658

732:                                              ; preds = %658
  store i32 0, i32* %3, align 4
  br label %733

733:                                              ; preds = %774, %732
  %734 = load i32, i32* %3, align 4
  %735 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %736 = load i32, i32* %735, align 8
  %737 = icmp slt i32 %734, %736
  br i1 %737, label %738, label %777

738:                                              ; preds = %733
  %739 = load i32, i32* %3, align 4
  store i32 %739, i32* %30, align 4
  store float 0.000000e+00, float* %29, align 4
  %740 = load i32, i32* %30, align 4
  store i32 %740, i32* %28, align 4
  br label %741

741:                                              ; preds = %768, %738
  %742 = load i32, i32* %28, align 4
  %743 = load i32, i32* %30, align 4
  %744 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 57
  %745 = load i32, i32* %744, align 8
  %746 = add nsw i32 %743, %745
  %747 = icmp slt i32 %742, %746
  br i1 %747, label %748, label %773

748:                                              ; preds = %741
  %749 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %750 = load float*, float** %749, align 8
  %751 = load i32, i32* %28, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds float, float* %750, i64 %752
  %754 = load float, float* %753, align 4
  %755 = load float, float* %29, align 4
  %756 = fadd float %754, %755
  %757 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %758 = load float*, float** %757, align 8
  %759 = load i32, i32* %28, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds float, float* %758, i64 %760
  store float %756, float* %761, align 4
  %762 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %763 = load float*, float** %762, align 8
  %764 = load i32, i32* %28, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds float, float* %763, i64 %765
  %767 = load float, float* %766, align 4
  store float %767, float* %29, align 4
  br label %768

768:                                              ; preds = %748
  %769 = load i32, i32* %28, align 4
  %770 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %771 = load i32, i32* %770, align 8
  %772 = add nsw i32 %769, %771
  store i32 %772, i32* %28, align 4
  br label %741

773:                                              ; preds = %741
  br label %774

774:                                              ; preds = %773
  %775 = load i32, i32* %3, align 4
  %776 = add nsw i32 %775, 1
  store i32 %776, i32* %3, align 4
  br label %733

777:                                              ; preds = %733
  store i32 0, i32* %25, align 4
  br label %778

778:                                              ; preds = %881, %777
  %779 = load i32, i32* %25, align 4
  %780 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 68
  %781 = load i32, i32* %780, align 4
  %782 = icmp slt i32 %779, %781
  br i1 %782, label %783, label %884

783:                                              ; preds = %778
  store i32 0, i32* %24, align 4
  br label %784

784:                                              ; preds = %877, %783
  %785 = load i32, i32* %24, align 4
  %786 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 67
  %787 = load i32, i32* %786, align 8
  %788 = icmp slt i32 %785, %787
  br i1 %788, label %789, label %880

789:                                              ; preds = %784
  %790 = load i32, i32* %24, align 4
  %791 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 59
  %792 = load i32, i32* %791, align 8
  %793 = add nsw i32 %790, %792
  %794 = sub nsw i32 %793, 1
  store i32 %794, i32* %26, align 4
  %795 = load i32, i32* %25, align 4
  %796 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 61
  %797 = load i32, i32* %796, align 8
  %798 = add nsw i32 %795, %797
  %799 = sub nsw i32 %798, 1
  store i32 %799, i32* %27, align 4
  %800 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %801 = load float*, float** %800, align 8
  %802 = load i32, i32* %27, align 4
  %803 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %804 = load i32, i32* %803, align 8
  %805 = mul nsw i32 %802, %804
  %806 = load i32, i32* %26, align 4
  %807 = add nsw i32 %805, %806
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds float, float* %801, i64 %808
  %810 = load float, float* %809, align 4
  store float %810, float* %31, align 4
  %811 = load i32, i32* %24, align 4
  %812 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 63
  %813 = load i32, i32* %812, align 8
  %814 = add nsw i32 %811, %813
  %815 = sub nsw i32 %814, 1
  store i32 %815, i32* %26, align 4
  %816 = load i32, i32* %25, align 4
  %817 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 65
  %818 = load i32, i32* %817, align 8
  %819 = add nsw i32 %816, %818
  %820 = sub nsw i32 %819, 1
  store i32 %820, i32* %27, align 4
  %821 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %822 = load float*, float** %821, align 8
  %823 = load i32, i32* %27, align 4
  %824 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %825 = load i32, i32* %824, align 8
  %826 = mul nsw i32 %823, %825
  %827 = load i32, i32* %26, align 4
  %828 = add nsw i32 %826, %827
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds float, float* %822, i64 %829
  %831 = load float, float* %830, align 4
  store float %831, float* %32, align 4
  %832 = load float, float* %31, align 4
  %833 = load float, float* %32, align 4
  %834 = fsub float %832, %833
  store float %834, float* %32, align 4
  %835 = load float, float* %32, align 4
  %836 = load float, float* %32, align 4
  %837 = fmul float %835, %836
  %838 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 14
  %839 = load float*, float** %838, align 8
  %840 = load i32, i32* %25, align 4
  %841 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 67
  %842 = load i32, i32* %841, align 8
  %843 = mul nsw i32 %840, %842
  %844 = load i32, i32* %24, align 4
  %845 = add nsw i32 %843, %844
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds float, float* %839, i64 %846
  store float %837, float* %847, align 4
  %848 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %849 = load float*, float** %848, align 8
  %850 = load i32, i32* %25, align 4
  %851 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 67
  %852 = load i32, i32* %851, align 8
  %853 = mul nsw i32 %850, %852
  %854 = load i32, i32* %24, align 4
  %855 = add nsw i32 %853, %854
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds float, float* %849, i64 %856
  %858 = load float, float* %857, align 4
  %859 = load float, float* %32, align 4
  %860 = load float, float* %47, align 4
  %861 = fmul float %859, %860
  %862 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %863 = load i32, i32* %862, align 8
  %864 = sitofp i32 %863 to float
  %865 = fdiv float %861, %864
  %866 = fsub float %858, %865
  %867 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %868 = load float*, float** %867, align 8
  %869 = load i32, i32* %25, align 4
  %870 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 67
  %871 = load i32, i32* %870, align 8
  %872 = mul nsw i32 %869, %871
  %873 = load i32, i32* %24, align 4
  %874 = add nsw i32 %872, %873
  %875 = sext i32 %874 to i64
  %876 = getelementptr inbounds float, float* %868, i64 %875
  store float %866, float* %876, align 4
  br label %877

877:                                              ; preds = %789
  %878 = load i32, i32* %24, align 4
  %879 = add nsw i32 %878, 1
  store i32 %879, i32* %24, align 4
  br label %784

880:                                              ; preds = %784
  br label %881

881:                                              ; preds = %880
  %882 = load i32, i32* %25, align 4
  %883 = add nsw i32 %882, 1
  store i32 %883, i32* %25, align 4
  br label %778

884:                                              ; preds = %778
  store i32 0, i32* %25, align 4
  br label %885

885:                                              ; preds = %970, %884
  %886 = load i32, i32* %25, align 4
  %887 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 44
  %888 = load i32, i32* %887, align 4
  %889 = icmp slt i32 %886, %888
  br i1 %889, label %890, label %973

890:                                              ; preds = %885
  store i32 0, i32* %24, align 4
  br label %891

891:                                              ; preds = %966, %890
  %892 = load i32, i32* %24, align 4
  %893 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %894 = load i32, i32* %893, align 8
  %895 = icmp slt i32 %892, %894
  br i1 %895, label %896, label %969

896:                                              ; preds = %891
  %897 = load i32, i32* %24, align 4
  %898 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %899 = load i32, i32* %898, align 8
  %900 = sub nsw i32 %899, 1
  %901 = icmp sgt i32 %897, %900
  br i1 %901, label %902, label %954

902:                                              ; preds = %896
  %903 = load i32, i32* %24, align 4
  %904 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %905 = load i32, i32* %904, align 8
  %906 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %907 = load i32, i32* %906, align 8
  %908 = add nsw i32 %905, %907
  %909 = icmp slt i32 %903, %908
  br i1 %909, label %910, label %954

910:                                              ; preds = %902
  %911 = load i32, i32* %25, align 4
  %912 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %913 = load i32, i32* %912, align 4
  %914 = sub nsw i32 %913, 1
  %915 = icmp sgt i32 %911, %914
  br i1 %915, label %916, label %954

916:                                              ; preds = %910
  %917 = load i32, i32* %25, align 4
  %918 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %919 = load i32, i32* %918, align 4
  %920 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 28
  %921 = load i32, i32* %920, align 4
  %922 = add nsw i32 %919, %921
  %923 = icmp slt i32 %917, %922
  br i1 %923, label %924, label %954

924:                                              ; preds = %916
  %925 = load i32, i32* %24, align 4
  %926 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 41
  %927 = load i32, i32* %926, align 8
  %928 = sub nsw i32 %925, %927
  store i32 %928, i32* %26, align 4
  %929 = load i32, i32* %25, align 4
  %930 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 42
  %931 = load i32, i32* %930, align 4
  %932 = sub nsw i32 %929, %931
  store i32 %932, i32* %27, align 4
  %933 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 8
  %934 = load float*, float** %933, align 8
  %935 = load i32, i32* %27, align 4
  %936 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 27
  %937 = load i32, i32* %936, align 8
  %938 = mul nsw i32 %935, %937
  %939 = load i32, i32* %26, align 4
  %940 = add nsw i32 %938, %939
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds float, float* %934, i64 %941
  %943 = load float, float* %942, align 4
  %944 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %945 = load float*, float** %944, align 8
  %946 = load i32, i32* %25, align 4
  %947 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %948 = load i32, i32* %947, align 8
  %949 = mul nsw i32 %946, %948
  %950 = load i32, i32* %24, align 4
  %951 = add nsw i32 %949, %950
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds float, float* %945, i64 %952
  store float %943, float* %953, align 4
  br label %965

954:                                              ; preds = %916, %910, %902, %896
  %955 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %956 = load float*, float** %955, align 8
  %957 = load i32, i32* %25, align 4
  %958 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %959 = load i32, i32* %958, align 8
  %960 = mul nsw i32 %957, %959
  %961 = load i32, i32* %24, align 4
  %962 = add nsw i32 %960, %961
  %963 = sext i32 %962 to i64
  %964 = getelementptr inbounds float, float* %956, i64 %963
  store float 0.000000e+00, float* %964, align 4
  br label %965

965:                                              ; preds = %954, %924
  br label %966

966:                                              ; preds = %965
  %967 = load i32, i32* %24, align 4
  %968 = add nsw i32 %967, 1
  store i32 %968, i32* %24, align 4
  br label %891

969:                                              ; preds = %891
  br label %970

970:                                              ; preds = %969
  %971 = load i32, i32* %25, align 4
  %972 = add nsw i32 %971, 1
  store i32 %972, i32* %25, align 4
  br label %885

973:                                              ; preds = %885
  store i32 0, i32* %3, align 4
  br label %974

974:                                              ; preds = %1016, %973
  %975 = load i32, i32* %3, align 4
  %976 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 44
  %977 = load i32, i32* %976, align 4
  %978 = icmp slt i32 %975, %977
  br i1 %978, label %979, label %1019

979:                                              ; preds = %974
  %980 = load i32, i32* %3, align 4
  %981 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %982 = load i32, i32* %981, align 8
  %983 = mul nsw i32 %980, %982
  store i32 %983, i32* %30, align 4
  store float 0.000000e+00, float* %29, align 4
  %984 = load i32, i32* %30, align 4
  store i32 %984, i32* %28, align 4
  br label %985

985:                                              ; preds = %1012, %979
  %986 = load i32, i32* %28, align 4
  %987 = load i32, i32* %30, align 4
  %988 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %989 = load i32, i32* %988, align 8
  %990 = add nsw i32 %987, %989
  %991 = icmp slt i32 %986, %990
  br i1 %991, label %992, label %1015

992:                                              ; preds = %985
  %993 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %994 = load float*, float** %993, align 8
  %995 = load i32, i32* %28, align 4
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds float, float* %994, i64 %996
  %998 = load float, float* %997, align 4
  %999 = load float, float* %29, align 4
  %1000 = fadd float %998, %999
  %1001 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %1002 = load float*, float** %1001, align 8
  %1003 = load i32, i32* %28, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds float, float* %1002, i64 %1004
  store float %1000, float* %1005, align 4
  %1006 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %1007 = load float*, float** %1006, align 8
  %1008 = load i32, i32* %28, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds float, float* %1007, i64 %1009
  %1011 = load float, float* %1010, align 4
  store float %1011, float* %29, align 4
  br label %1012

1012:                                             ; preds = %992
  %1013 = load i32, i32* %28, align 4
  %1014 = add nsw i32 %1013, 1
  store i32 %1014, i32* %28, align 4
  br label %985

1015:                                             ; preds = %985
  br label %1016

1016:                                             ; preds = %1015
  %1017 = load i32, i32* %3, align 4
  %1018 = add nsw i32 %1017, 1
  store i32 %1018, i32* %3, align 4
  br label %974

1019:                                             ; preds = %974
  store i32 0, i32* %25, align 4
  br label %1020

1020:                                             ; preds = %1091, %1019
  %1021 = load i32, i32* %25, align 4
  %1022 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 56
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp slt i32 %1021, %1023
  br i1 %1024, label %1025, label %1094

1025:                                             ; preds = %1020
  store i32 0, i32* %24, align 4
  br label %1026

1026:                                             ; preds = %1087, %1025
  %1027 = load i32, i32* %24, align 4
  %1028 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1029 = load i32, i32* %1028, align 8
  %1030 = icmp slt i32 %1027, %1029
  br i1 %1030, label %1031, label %1090

1031:                                             ; preds = %1026
  %1032 = load i32, i32* %24, align 4
  %1033 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 47
  %1034 = load i32, i32* %1033, align 8
  %1035 = add nsw i32 %1032, %1034
  %1036 = sub nsw i32 %1035, 1
  store i32 %1036, i32* %26, align 4
  %1037 = load i32, i32* %25, align 4
  %1038 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 49
  %1039 = load i32, i32* %1038, align 8
  %1040 = add nsw i32 %1037, %1039
  %1041 = sub nsw i32 %1040, 1
  store i32 %1041, i32* %27, align 4
  %1042 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %1043 = load float*, float** %1042, align 8
  %1044 = load i32, i32* %27, align 4
  %1045 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %1046 = load i32, i32* %1045, align 8
  %1047 = mul nsw i32 %1044, %1046
  %1048 = load i32, i32* %26, align 4
  %1049 = add nsw i32 %1047, %1048
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds float, float* %1043, i64 %1050
  %1052 = load float, float* %1051, align 4
  store float %1052, float* %31, align 4
  %1053 = load i32, i32* %24, align 4
  %1054 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 51
  %1055 = load i32, i32* %1054, align 8
  %1056 = add nsw i32 %1053, %1055
  %1057 = sub nsw i32 %1056, 1
  store i32 %1057, i32* %26, align 4
  %1058 = load i32, i32* %25, align 4
  %1059 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 53
  %1060 = load i32, i32* %1059, align 8
  %1061 = add nsw i32 %1058, %1060
  %1062 = sub nsw i32 %1061, 1
  store i32 %1062, i32* %27, align 4
  %1063 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 12
  %1064 = load float*, float** %1063, align 8
  %1065 = load i32, i32* %27, align 4
  %1066 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 43
  %1067 = load i32, i32* %1066, align 8
  %1068 = mul nsw i32 %1065, %1067
  %1069 = load i32, i32* %26, align 4
  %1070 = add nsw i32 %1068, %1069
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds float, float* %1064, i64 %1071
  %1073 = load float, float* %1072, align 4
  store float %1073, float* %32, align 4
  %1074 = load float, float* %31, align 4
  %1075 = load float, float* %32, align 4
  %1076 = fsub float %1074, %1075
  %1077 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1078 = load float*, float** %1077, align 8
  %1079 = load i32, i32* %25, align 4
  %1080 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1081 = load i32, i32* %1080, align 8
  %1082 = mul nsw i32 %1079, %1081
  %1083 = load i32, i32* %24, align 4
  %1084 = add nsw i32 %1082, %1083
  %1085 = sext i32 %1084 to i64
  %1086 = getelementptr inbounds float, float* %1078, i64 %1085
  store float %1076, float* %1086, align 4
  br label %1087

1087:                                             ; preds = %1031
  %1088 = load i32, i32* %24, align 4
  %1089 = add nsw i32 %1088, 1
  store i32 %1089, i32* %24, align 4
  br label %1026

1090:                                             ; preds = %1026
  br label %1091

1091:                                             ; preds = %1090
  %1092 = load i32, i32* %25, align 4
  %1093 = add nsw i32 %1092, 1
  store i32 %1093, i32* %25, align 4
  br label %1020

1094:                                             ; preds = %1020
  store i32 0, i32* %3, align 4
  br label %1095

1095:                                             ; preds = %1136, %1094
  %1096 = load i32, i32* %3, align 4
  %1097 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1098 = load i32, i32* %1097, align 8
  %1099 = icmp slt i32 %1096, %1098
  br i1 %1099, label %1100, label %1139

1100:                                             ; preds = %1095
  %1101 = load i32, i32* %3, align 4
  store i32 %1101, i32* %30, align 4
  store float 0.000000e+00, float* %29, align 4
  %1102 = load i32, i32* %30, align 4
  store i32 %1102, i32* %28, align 4
  br label %1103

1103:                                             ; preds = %1130, %1100
  %1104 = load i32, i32* %28, align 4
  %1105 = load i32, i32* %30, align 4
  %1106 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 57
  %1107 = load i32, i32* %1106, align 8
  %1108 = add nsw i32 %1105, %1107
  %1109 = icmp slt i32 %1104, %1108
  br i1 %1109, label %1110, label %1135

1110:                                             ; preds = %1103
  %1111 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1112 = load float*, float** %1111, align 8
  %1113 = load i32, i32* %28, align 4
  %1114 = sext i32 %1113 to i64
  %1115 = getelementptr inbounds float, float* %1112, i64 %1114
  %1116 = load float, float* %1115, align 4
  %1117 = load float, float* %29, align 4
  %1118 = fadd float %1116, %1117
  %1119 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1120 = load float*, float** %1119, align 8
  %1121 = load i32, i32* %28, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds float, float* %1120, i64 %1122
  store float %1118, float* %1123, align 4
  %1124 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1125 = load float*, float** %1124, align 8
  %1126 = load i32, i32* %28, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds float, float* %1125, i64 %1127
  %1129 = load float, float* %1128, align 4
  store float %1129, float* %29, align 4
  br label %1130

1130:                                             ; preds = %1110
  %1131 = load i32, i32* %28, align 4
  %1132 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1133 = load i32, i32* %1132, align 8
  %1134 = add nsw i32 %1131, %1133
  store i32 %1134, i32* %28, align 4
  br label %1103

1135:                                             ; preds = %1103
  br label %1136

1136:                                             ; preds = %1135
  %1137 = load i32, i32* %3, align 4
  %1138 = add nsw i32 %1137, 1
  store i32 %1138, i32* %3, align 4
  br label %1095

1139:                                             ; preds = %1095
  store i32 0, i32* %25, align 4
  br label %1140

1140:                                             ; preds = %1252, %1139
  %1141 = load i32, i32* %25, align 4
  %1142 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 38
  %1143 = load i32, i32* %1142, align 4
  %1144 = icmp slt i32 %1141, %1143
  br i1 %1144, label %1145, label %1255

1145:                                             ; preds = %1140
  store i32 0, i32* %24, align 4
  br label %1146

1146:                                             ; preds = %1248, %1145
  %1147 = load i32, i32* %24, align 4
  %1148 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1149 = load i32, i32* %1148, align 8
  %1150 = icmp slt i32 %1147, %1149
  br i1 %1150, label %1151, label %1251

1151:                                             ; preds = %1146
  %1152 = load i32, i32* %24, align 4
  %1153 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 59
  %1154 = load i32, i32* %1153, align 8
  %1155 = add nsw i32 %1152, %1154
  %1156 = sub nsw i32 %1155, 1
  store i32 %1156, i32* %26, align 4
  %1157 = load i32, i32* %25, align 4
  %1158 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 61
  %1159 = load i32, i32* %1158, align 8
  %1160 = add nsw i32 %1157, %1159
  %1161 = sub nsw i32 %1160, 1
  store i32 %1161, i32* %27, align 4
  %1162 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1163 = load float*, float** %1162, align 8
  %1164 = load i32, i32* %27, align 4
  %1165 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1166 = load i32, i32* %1165, align 8
  %1167 = mul nsw i32 %1164, %1166
  %1168 = load i32, i32* %26, align 4
  %1169 = add nsw i32 %1167, %1168
  %1170 = sext i32 %1169 to i64
  %1171 = getelementptr inbounds float, float* %1163, i64 %1170
  %1172 = load float, float* %1171, align 4
  store float %1172, float* %31, align 4
  %1173 = load i32, i32* %24, align 4
  %1174 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 63
  %1175 = load i32, i32* %1174, align 8
  %1176 = add nsw i32 %1173, %1175
  %1177 = sub nsw i32 %1176, 1
  store i32 %1177, i32* %26, align 4
  %1178 = load i32, i32* %25, align 4
  %1179 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 65
  %1180 = load i32, i32* %1179, align 8
  %1181 = add nsw i32 %1178, %1180
  %1182 = sub nsw i32 %1181, 1
  store i32 %1182, i32* %27, align 4
  %1183 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 13
  %1184 = load float*, float** %1183, align 8
  %1185 = load i32, i32* %27, align 4
  %1186 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 55
  %1187 = load i32, i32* %1186, align 8
  %1188 = mul nsw i32 %1185, %1187
  %1189 = load i32, i32* %26, align 4
  %1190 = add nsw i32 %1188, %1189
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds float, float* %1184, i64 %1191
  %1193 = load float, float* %1192, align 4
  store float %1193, float* %32, align 4
  %1194 = load float, float* %31, align 4
  %1195 = load float, float* %32, align 4
  %1196 = fsub float %1194, %1195
  store float %1196, float* %32, align 4
  %1197 = load float, float* %32, align 4
  %1198 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 14
  %1199 = load float*, float** %1198, align 8
  %1200 = load i32, i32* %25, align 4
  %1201 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1202 = load i32, i32* %1201, align 8
  %1203 = mul nsw i32 %1200, %1202
  %1204 = load i32, i32* %24, align 4
  %1205 = add nsw i32 %1203, %1204
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds float, float* %1199, i64 %1206
  %1208 = load float, float* %1207, align 4
  %1209 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 33
  %1210 = load i32, i32* %1209, align 8
  %1211 = sitofp i32 %1210 to float
  %1212 = fdiv float %1208, %1211
  %1213 = fsub float %1197, %1212
  store float %1213, float* %32, align 4
  %1214 = load float, float* %32, align 4
  %1215 = fcmp olt float %1214, 0.000000e+00
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1151
  store float 0.000000e+00, float* %32, align 4
  br label %1217

1217:                                             ; preds = %1216, %1151
  %1218 = load float, float* %32, align 4
  %1219 = fpext float %1218 to double
  %1220 = call double @sqrt(double %1219) #7
  %1221 = fptrunc double %1220 to float
  store float %1221, float* %32, align 4
  %1222 = load float, float* %53, align 4
  %1223 = load float, float* %32, align 4
  %1224 = fmul float %1222, %1223
  store float %1224, float* %32, align 4
  %1225 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %1226 = load float*, float** %1225, align 8
  %1227 = load i32, i32* %25, align 4
  %1228 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1229 = load i32, i32* %1228, align 8
  %1230 = mul nsw i32 %1227, %1229
  %1231 = load i32, i32* %24, align 4
  %1232 = add nsw i32 %1230, %1231
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds float, float* %1226, i64 %1233
  %1235 = load float, float* %1234, align 4
  %1236 = load float, float* %32, align 4
  %1237 = fdiv float %1235, %1236
  %1238 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %1239 = load float*, float** %1238, align 8
  %1240 = load i32, i32* %25, align 4
  %1241 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1242 = load i32, i32* %1241, align 8
  %1243 = mul nsw i32 %1240, %1242
  %1244 = load i32, i32* %24, align 4
  %1245 = add nsw i32 %1243, %1244
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds float, float* %1239, i64 %1246
  store float %1237, float* %1247, align 4
  br label %1248

1248:                                             ; preds = %1217
  %1249 = load i32, i32* %24, align 4
  %1250 = add nsw i32 %1249, 1
  store i32 %1250, i32* %24, align 4
  br label %1146

1251:                                             ; preds = %1146
  br label %1252

1252:                                             ; preds = %1251
  %1253 = load i32, i32* %25, align 4
  %1254 = add nsw i32 %1253, 1
  store i32 %1254, i32* %25, align 4
  br label %1140

1255:                                             ; preds = %1140
  %1256 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 1
  %1257 = load i32, i32* %1256, align 4
  %1258 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 0
  %1259 = load i32, i32* %1258, align 8
  %1260 = add nsw i32 %1257, %1259
  %1261 = add nsw i32 %1260, 1
  store i32 %1261, i32* %34, align 4
  %1262 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %1263 = load i32, i32* %1262, align 4
  %1264 = sub nsw i32 %1263, 1
  %1265 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1266 = load i32, i32* %1265, align 8
  %1267 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 20
  %1268 = load i32, i32* %1267, align 8
  %1269 = mul nsw i32 %1266, %1268
  %1270 = add nsw i32 %1264, %1269
  store i32 %1270, i32* %54, align 4
  %1271 = load i32, i32* %34, align 4
  %1272 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 4
  %1273 = load i32*, i32** %1272, align 8
  %1274 = load i32, i32* %54, align 4
  %1275 = sext i32 %1274 to i64
  %1276 = getelementptr inbounds i32, i32* %1273, i64 %1275
  %1277 = load i32, i32* %1276, align 4
  %1278 = add nsw i32 %1271, %1277
  %1279 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %1280 = load i32*, i32** %1279, align 8
  %1281 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1282 = load i32, i32* %1281, align 8
  %1283 = sext i32 %1282 to i64
  %1284 = getelementptr inbounds i32, i32* %1280, i64 %1283
  %1285 = load i32, i32* %1284, align 4
  %1286 = sub nsw i32 %1278, %1285
  %1287 = sub nsw i32 %1286, 1
  store i32 %1287, i32* %35, align 4
  %1288 = load i32, i32* %34, align 4
  %1289 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 5
  %1290 = load i32*, i32** %1289, align 8
  %1291 = load i32, i32* %54, align 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds i32, i32* %1290, i64 %1292
  %1294 = load i32, i32* %1293, align 4
  %1295 = add nsw i32 %1288, %1294
  %1296 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %1297 = load i32*, i32** %1296, align 8
  %1298 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1299 = load i32, i32* %1298, align 8
  %1300 = sext i32 %1299 to i64
  %1301 = getelementptr inbounds i32, i32* %1297, i64 %1300
  %1302 = load i32, i32* %1301, align 4
  %1303 = sub nsw i32 %1295, %1302
  %1304 = sub nsw i32 %1303, 1
  store i32 %1304, i32* %36, align 4
  store i32 0, i32* %3, align 4
  br label %1305

1305:                                             ; preds = %1316, %1255
  %1306 = load i32, i32* %3, align 4
  %1307 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 73
  %1308 = load i32, i32* %1307, align 8
  %1309 = icmp slt i32 %1306, %1308
  br i1 %1309, label %1310, label %1319

1310:                                             ; preds = %1305
  %1311 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 15
  %1312 = load float*, float** %1311, align 8
  %1313 = load i32, i32* %3, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds float, float* %1312, i64 %1314
  store float 0.000000e+00, float* %1315, align 4
  br label %1316

1316:                                             ; preds = %1310
  %1317 = load i32, i32* %3, align 4
  %1318 = add nsw i32 %1317, 1
  store i32 %1318, i32* %3, align 4
  br label %1305

1319:                                             ; preds = %1305
  %1320 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 15
  %1321 = load float*, float** %1320, align 8
  %1322 = load i32, i32* %36, align 4
  %1323 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 71
  %1324 = load i32, i32* %1323, align 8
  %1325 = mul nsw i32 %1322, %1324
  %1326 = load i32, i32* %35, align 4
  %1327 = add nsw i32 %1325, %1326
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds float, float* %1321, i64 %1328
  store float 1.000000e+00, float* %1329, align 4
  store i32 1, i32* %25, align 4
  br label %1330

1330:                                             ; preds = %1469, %1319
  %1331 = load i32, i32* %25, align 4
  %1332 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 80
  %1333 = load i32, i32* %1332, align 4
  %1334 = icmp sle i32 %1331, %1333
  br i1 %1334, label %1335, label %1472

1335:                                             ; preds = %1330
  %1336 = load i32, i32* %25, align 4
  %1337 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 84
  %1338 = load i32, i32* %1337, align 4
  %1339 = add nsw i32 %1336, %1338
  store i32 %1339, i32* %23, align 4
  %1340 = load i32, i32* %23, align 4
  %1341 = add nsw i32 %1340, 1
  store i32 %1341, i32* %11, align 4
  %1342 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 76
  %1343 = load i32, i32* %1342, align 4
  %1344 = load i32, i32* %11, align 4
  %1345 = icmp slt i32 %1343, %1344
  br i1 %1345, label %1346, label %1351

1346:                                             ; preds = %1335
  %1347 = load i32, i32* %11, align 4
  %1348 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 76
  %1349 = load i32, i32* %1348, align 4
  %1350 = sub nsw i32 %1347, %1349
  store i32 %1350, i32* %12, align 4
  br label %1352

1351:                                             ; preds = %1335
  store i32 1, i32* %12, align 4
  br label %1352

1352:                                             ; preds = %1351, %1346
  %1353 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 72
  %1354 = load i32, i32* %1353, align 4
  %1355 = load i32, i32* %23, align 4
  %1356 = icmp slt i32 %1354, %1355
  br i1 %1356, label %1357, label %1360

1357:                                             ; preds = %1352
  %1358 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 72
  %1359 = load i32, i32* %1358, align 4
  store i32 %1359, i32* %13, align 4
  br label %1362

1360:                                             ; preds = %1352
  %1361 = load i32, i32* %23, align 4
  store i32 %1361, i32* %13, align 4
  br label %1362

1362:                                             ; preds = %1360, %1357
  store i32 1, i32* %24, align 4
  br label %1363

1363:                                             ; preds = %1465, %1362
  %1364 = load i32, i32* %24, align 4
  %1365 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 79
  %1366 = load i32, i32* %1365, align 8
  %1367 = icmp sle i32 %1364, %1366
  br i1 %1367, label %1368, label %1468

1368:                                             ; preds = %1363
  %1369 = load i32, i32* %24, align 4
  %1370 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 83
  %1371 = load i32, i32* %1370, align 8
  %1372 = add nsw i32 %1369, %1371
  store i32 %1372, i32* %22, align 4
  %1373 = load i32, i32* %22, align 4
  %1374 = add nsw i32 %1373, 1
  store i32 %1374, i32* %14, align 4
  %1375 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 75
  %1376 = load i32, i32* %1375, align 8
  %1377 = load i32, i32* %14, align 4
  %1378 = icmp slt i32 %1376, %1377
  br i1 %1378, label %1379, label %1384

1379:                                             ; preds = %1368
  %1380 = load i32, i32* %14, align 4
  %1381 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 75
  %1382 = load i32, i32* %1381, align 8
  %1383 = sub nsw i32 %1380, %1382
  store i32 %1383, i32* %15, align 4
  br label %1385

1384:                                             ; preds = %1368
  store i32 1, i32* %15, align 4
  br label %1385

1385:                                             ; preds = %1384, %1379
  %1386 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 71
  %1387 = load i32, i32* %1386, align 8
  %1388 = load i32, i32* %22, align 4
  %1389 = icmp slt i32 %1387, %1388
  br i1 %1389, label %1390, label %1393

1390:                                             ; preds = %1385
  %1391 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 71
  %1392 = load i32, i32* %1391, align 8
  store i32 %1392, i32* %16, align 4
  br label %1395

1393:                                             ; preds = %1385
  %1394 = load i32, i32* %22, align 4
  store i32 %1394, i32* %16, align 4
  br label %1395

1395:                                             ; preds = %1393, %1390
  store float 0.000000e+00, float* %21, align 4
  %1396 = load i32, i32* %12, align 4
  store i32 %1396, i32* %17, align 4
  br label %1397

1397:                                             ; preds = %1434, %1395
  %1398 = load i32, i32* %17, align 4
  %1399 = load i32, i32* %13, align 4
  %1400 = icmp sle i32 %1398, %1399
  br i1 %1400, label %1401, label %1437

1401:                                             ; preds = %1397
  %1402 = load i32, i32* %11, align 4
  %1403 = load i32, i32* %17, align 4
  %1404 = sub nsw i32 %1402, %1403
  store i32 %1404, i32* %18, align 4
  %1405 = load i32, i32* %15, align 4
  store i32 %1405, i32* %19, align 4
  br label %1406

1406:                                             ; preds = %1430, %1401
  %1407 = load i32, i32* %19, align 4
  %1408 = load i32, i32* %16, align 4
  %1409 = icmp sle i32 %1407, %1408
  br i1 %1409, label %1410, label %1433

1410:                                             ; preds = %1406
  %1411 = load i32, i32* %14, align 4
  %1412 = load i32, i32* %19, align 4
  %1413 = sub nsw i32 %1411, %1412
  store i32 %1413, i32* %20, align 4
  %1414 = load float, float* %21, align 4
  %1415 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 15
  %1416 = load float*, float** %1415, align 8
  %1417 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 71
  %1418 = load i32, i32* %1417, align 8
  %1419 = load i32, i32* %17, align 4
  %1420 = sub nsw i32 %1419, 1
  %1421 = mul nsw i32 %1418, %1420
  %1422 = load i32, i32* %19, align 4
  %1423 = add nsw i32 %1421, %1422
  %1424 = sub nsw i32 %1423, 1
  %1425 = sext i32 %1424 to i64
  %1426 = getelementptr inbounds float, float* %1416, i64 %1425
  %1427 = load float, float* %1426, align 4
  %1428 = fmul float %1427, 1.000000e+00
  %1429 = fadd float %1414, %1428
  store float %1429, float* %21, align 4
  br label %1430

1430:                                             ; preds = %1410
  %1431 = load i32, i32* %19, align 4
  %1432 = add nsw i32 %1431, 1
  store i32 %1432, i32* %19, align 4
  br label %1406

1433:                                             ; preds = %1406
  br label %1434

1434:                                             ; preds = %1433
  %1435 = load i32, i32* %17, align 4
  %1436 = add nsw i32 %1435, 1
  store i32 %1436, i32* %17, align 4
  br label %1397

1437:                                             ; preds = %1397
  %1438 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 11
  %1439 = load float*, float** %1438, align 8
  %1440 = load i32, i32* %25, align 4
  %1441 = sub nsw i32 %1440, 1
  %1442 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1443 = load i32, i32* %1442, align 8
  %1444 = mul nsw i32 %1441, %1443
  %1445 = load i32, i32* %24, align 4
  %1446 = sub nsw i32 %1445, 1
  %1447 = add nsw i32 %1444, %1446
  %1448 = sext i32 %1447 to i64
  %1449 = getelementptr inbounds float, float* %1439, i64 %1448
  %1450 = load float, float* %1449, align 4
  %1451 = load float, float* %21, align 4
  %1452 = fmul float %1450, %1451
  %1453 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 16
  %1454 = load float*, float** %1453, align 8
  %1455 = load i32, i32* %25, align 4
  %1456 = sub nsw i32 %1455, 1
  %1457 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 37
  %1458 = load i32, i32* %1457, align 8
  %1459 = mul nsw i32 %1456, %1458
  %1460 = load i32, i32* %24, align 4
  %1461 = sub nsw i32 %1460, 1
  %1462 = add nsw i32 %1459, %1461
  %1463 = sext i32 %1462 to i64
  %1464 = getelementptr inbounds float, float* %1454, i64 %1463
  store float %1452, float* %1464, align 4
  br label %1465

1465:                                             ; preds = %1437
  %1466 = load i32, i32* %24, align 4
  %1467 = add nsw i32 %1466, 1
  store i32 %1467, i32* %24, align 4
  br label %1363

1468:                                             ; preds = %1363
  br label %1469

1469:                                             ; preds = %1468
  %1470 = load i32, i32* %25, align 4
  %1471 = add nsw i32 %1470, 1
  store i32 %1471, i32* %25, align 4
  br label %1330

1472:                                             ; preds = %1330
  store float 0.000000e+00, float* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %22, align 4
  br label %1473

1473:                                             ; preds = %1496, %1472
  %1474 = load i32, i32* %22, align 4
  %1475 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 81
  %1476 = load i32, i32* %1475, align 8
  %1477 = icmp slt i32 %1474, %1476
  br i1 %1477, label %1478, label %1499

1478:                                             ; preds = %1473
  %1479 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 16
  %1480 = load float*, float** %1479, align 8
  %1481 = load i32, i32* %22, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds float, float* %1480, i64 %1482
  %1484 = load float, float* %1483, align 4
  %1485 = load float, float* %41, align 4
  %1486 = fcmp ogt float %1484, %1485
  br i1 %1486, label %1487, label %1495

1487:                                             ; preds = %1478
  %1488 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 16
  %1489 = load float*, float** %1488, align 8
  %1490 = load i32, i32* %22, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = getelementptr inbounds float, float* %1489, i64 %1491
  %1493 = load float, float* %1492, align 4
  store float %1493, float* %41, align 4
  %1494 = load i32, i32* %22, align 4
  store i32 %1494, i32* %42, align 4
  br label %1495

1495:                                             ; preds = %1487, %1478
  br label %1496

1496:                                             ; preds = %1495
  %1497 = load i32, i32* %22, align 4
  %1498 = add nsw i32 %1497, 1
  store i32 %1498, i32* %22, align 4
  br label %1473

1499:                                             ; preds = %1473
  %1500 = load i32, i32* %42, align 4
  %1501 = add nsw i32 %1500, 1
  %1502 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 79
  %1503 = load i32, i32* %1502, align 8
  %1504 = srem i32 %1501, %1503
  %1505 = sub nsw i32 %1504, 1
  store i32 %1505, i32* %43, align 4
  %1506 = load i32, i32* %42, align 4
  %1507 = add nsw i32 %1506, 1
  %1508 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 79
  %1509 = load i32, i32* %1508, align 8
  %1510 = sdiv i32 %1507, %1509
  store i32 %1510, i32* %44, align 4
  %1511 = load i32, i32* %42, align 4
  %1512 = add nsw i32 %1511, 1
  %1513 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 79
  %1514 = load i32, i32* %1513, align 8
  %1515 = srem i32 %1512, %1514
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1517, label %1523

1517:                                             ; preds = %1499
  %1518 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 79
  %1519 = load i32, i32* %1518, align 8
  %1520 = sub nsw i32 %1519, 1
  store i32 %1520, i32* %43, align 4
  %1521 = load i32, i32* %44, align 4
  %1522 = sub nsw i32 %1521, 1
  store i32 %1522, i32* %44, align 4
  br label %1523

1523:                                             ; preds = %1517, %1499
  %1524 = load i32, i32* %43, align 4
  %1525 = add nsw i32 %1524, 1
  store i32 %1525, i32* %43, align 4
  %1526 = load i32, i32* %44, align 4
  %1527 = add nsw i32 %1526, 1
  store i32 %1527, i32* %44, align 4
  %1528 = load i32, i32* %43, align 4
  %1529 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %1530 = load i32, i32* %1529, align 8
  %1531 = sub nsw i32 %1528, %1530
  %1532 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 1
  %1533 = load i32, i32* %1532, align 4
  %1534 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 0
  %1535 = load i32, i32* %1534, align 8
  %1536 = sub nsw i32 %1533, %1535
  %1537 = sub nsw i32 %1531, %1536
  store i32 %1537, i32* %45, align 4
  %1538 = load i32, i32* %44, align 4
  %1539 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %1540 = load i32, i32* %1539, align 4
  %1541 = sub nsw i32 %1538, %1540
  %1542 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 1
  %1543 = load i32, i32* %1542, align 4
  %1544 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 0
  %1545 = load i32, i32* %1544, align 8
  %1546 = sub nsw i32 %1543, %1545
  %1547 = sub nsw i32 %1541, %1546
  store i32 %1547, i32* %46, align 4
  %1548 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1549 = load i32, i32* %1548, align 8
  %1550 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 20
  %1551 = load i32, i32* %1550, align 8
  %1552 = mul nsw i32 %1549, %1551
  %1553 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %1554 = load i32, i32* %1553, align 4
  %1555 = add nsw i32 %1552, %1554
  store i32 %1555, i32* %54, align 4
  %1556 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %1557 = load i32*, i32** %1556, align 8
  %1558 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1559 = load i32, i32* %1558, align 8
  %1560 = sext i32 %1559 to i64
  %1561 = getelementptr inbounds i32, i32* %1557, i64 %1560
  %1562 = load i32, i32* %1561, align 4
  %1563 = load i32, i32* %45, align 4
  %1564 = add nsw i32 %1562, %1563
  %1565 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 4
  %1566 = load i32*, i32** %1565, align 8
  %1567 = load i32, i32* %54, align 4
  %1568 = sext i32 %1567 to i64
  %1569 = getelementptr inbounds i32, i32* %1566, i64 %1568
  store i32 %1564, i32* %1569, align 4
  %1570 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %1571 = load i32*, i32** %1570, align 8
  %1572 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1573 = load i32, i32* %1572, align 8
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds i32, i32* %1571, i64 %1574
  %1576 = load i32, i32* %1575, align 4
  %1577 = load i32, i32* %46, align 4
  %1578 = add nsw i32 %1576, %1577
  %1579 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 5
  %1580 = load i32*, i32** %1579, align 8
  %1581 = load i32, i32* %54, align 4
  %1582 = sext i32 %1581 to i64
  %1583 = getelementptr inbounds i32, i32* %1580, i64 %1582
  store i32 %1578, i32* %1583, align 4
  br label %1584

1584:                                             ; preds = %1523, %163
  %1585 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %1586 = load i32, i32* %1585, align 4
  %1587 = icmp ne i32 %1586, 0
  br i1 %1587, label %1588, label %1711

1588:                                             ; preds = %1584
  %1589 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %1590 = load i32, i32* %1589, align 4
  %1591 = srem i32 %1590, 10
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1593, label %1711

1593:                                             ; preds = %1588
  %1594 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1595 = load i32, i32* %1594, align 8
  %1596 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 20
  %1597 = load i32, i32* %1596, align 8
  %1598 = mul nsw i32 %1595, %1597
  %1599 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 21
  %1600 = load i32, i32* %1599, align 4
  %1601 = add nsw i32 %1598, %1600
  store i32 %1601, i32* %56, align 4
  %1602 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 4
  %1603 = load i32*, i32** %1602, align 8
  %1604 = load i32, i32* %56, align 4
  %1605 = sext i32 %1604 to i64
  %1606 = getelementptr inbounds i32, i32* %1603, i64 %1605
  %1607 = load i32, i32* %1606, align 4
  %1608 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %1609 = load i32*, i32** %1608, align 8
  %1610 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1611 = load i32, i32* %1610, align 8
  %1612 = sext i32 %1611 to i64
  %1613 = getelementptr inbounds i32, i32* %1609, i64 %1612
  store i32 %1607, i32* %1613, align 4
  %1614 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 5
  %1615 = load i32*, i32** %1614, align 8
  %1616 = load i32, i32* %56, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds i32, i32* %1615, i64 %1617
  %1619 = load i32, i32* %1618, align 4
  %1620 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %1621 = load i32*, i32** %1620, align 8
  %1622 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1623 = load i32, i32* %1622, align 8
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds i32, i32* %1621, i64 %1624
  store i32 %1619, i32* %1625, align 4
  store i32 0, i32* %25, align 4
  br label %1626

1626:                                             ; preds = %1707, %1593
  %1627 = load i32, i32* %25, align 4
  %1628 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 32
  %1629 = load i32, i32* %1628, align 4
  %1630 = icmp slt i32 %1627, %1629
  br i1 %1630, label %1631, label %1710

1631:                                             ; preds = %1626
  store i32 0, i32* %24, align 4
  br label %1632

1632:                                             ; preds = %1703, %1631
  %1633 = load i32, i32* %24, align 4
  %1634 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %1635 = load i32, i32* %1634, align 8
  %1636 = icmp slt i32 %1633, %1635
  br i1 %1636, label %1637, label %1706

1637:                                             ; preds = %1632
  %1638 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 2
  %1639 = load i32*, i32** %1638, align 8
  %1640 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1641 = load i32, i32* %1640, align 8
  %1642 = sext i32 %1641 to i64
  %1643 = getelementptr inbounds i32, i32* %1639, i64 %1642
  %1644 = load i32, i32* %1643, align 4
  %1645 = sub nsw i32 %1644, 25
  %1646 = load i32, i32* %24, align 4
  %1647 = add nsw i32 %1645, %1646
  %1648 = sub nsw i32 %1647, 1
  store i32 %1648, i32* %26, align 4
  %1649 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 3
  %1650 = load i32*, i32** %1649, align 8
  %1651 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1, i32 0, i32 0
  %1652 = load i32, i32* %1651, align 8
  %1653 = sext i32 %1652 to i64
  %1654 = getelementptr inbounds i32, i32* %1650, i64 %1653
  %1655 = load i32, i32* %1654, align 4
  %1656 = sub nsw i32 %1655, 25
  %1657 = load i32, i32* %25, align 4
  %1658 = add nsw i32 %1656, %1657
  %1659 = sub nsw i32 %1658, 1
  store i32 %1659, i32* %27, align 4
  %1660 = load i32, i32* %27, align 4
  %1661 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 23
  %1662 = load i32, i32* %1661, align 8
  %1663 = mul nsw i32 %1660, %1662
  %1664 = load i32, i32* %26, align 4
  %1665 = add nsw i32 %1663, %1664
  store i32 %1665, i32* %55, align 4
  %1666 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 3
  %1667 = load float, float* %1666, align 4
  %1668 = load float*, float** %4, align 8
  %1669 = load i32, i32* %25, align 4
  %1670 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %1671 = load i32, i32* %1670, align 8
  %1672 = mul nsw i32 %1669, %1671
  %1673 = load i32, i32* %24, align 4
  %1674 = add nsw i32 %1672, %1673
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds float, float* %1668, i64 %1675
  %1677 = load float, float* %1676, align 4
  %1678 = fmul float %1667, %1677
  %1679 = fpext float %1678 to double
  %1680 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 3
  %1681 = load float, float* %1680, align 4
  %1682 = fpext float %1681 to double
  %1683 = fsub double 1.000000e+00, %1682
  %1684 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 22
  %1685 = load float*, float** %1684, align 8
  %1686 = load i32, i32* %55, align 4
  %1687 = sext i32 %1686 to i64
  %1688 = getelementptr inbounds float, float* %1685, i64 %1687
  %1689 = load float, float* %1688, align 4
  %1690 = fpext float %1689 to double
  %1691 = fmul double %1683, %1690
  %1692 = fadd double %1679, %1691
  %1693 = fptrunc double %1692 to float
  %1694 = load float*, float** %4, align 8
  %1695 = load i32, i32* %25, align 4
  %1696 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %0, i32 0, i32 31
  %1697 = load i32, i32* %1696, align 8
  %1698 = mul nsw i32 %1695, %1697
  %1699 = load i32, i32* %24, align 4
  %1700 = add nsw i32 %1698, %1699
  %1701 = sext i32 %1700 to i64
  %1702 = getelementptr inbounds float, float* %1694, i64 %1701
  store float %1693, float* %1702, align 4
  br label %1703

1703:                                             ; preds = %1637
  %1704 = load i32, i32* %24, align 4
  %1705 = add nsw i32 %1704, 1
  store i32 %1705, i32* %24, align 4
  br label %1632

1706:                                             ; preds = %1632
  br label %1707

1707:                                             ; preds = %1706
  %1708 = load i32, i32* %25, align 4
  %1709 = add nsw i32 %1708, 1
  store i32 %1709, i32* %25, align 4
  br label %1626

1710:                                             ; preds = %1626
  br label %1711

1711:                                             ; preds = %1710, %1588, %1584
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @write_data(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct._IO_FILE*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store i8* %0, i8** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %19, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.43, i64 0, i64 0))
  br label %146

29:                                               ; preds = %9
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2.44, i64 0, i64 0), i32 %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.45, i64 0, i64 0), i32 %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.46, i64 0, i64 0), i32 %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %40 = load i32, i32* %16, align 4
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5.47, i64 0, i64 0), i32 %40)
  store i32 0, i32* %21, align 4
  br label %42

42:                                               ; preds = %140, %29
  %43 = load i32, i32* %21, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %143

46:                                               ; preds = %42
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %48 = load i32, i32* %21, align 4
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6.48, i64 0, i64 0), i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %51 = load i32, i32* %21, align 4
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7.49, i64 0, i64 0), i32 %51)
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %69, %46
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* %11, align 4
  %63 = mul nsw i32 %61, %62
  %64 = add nsw i32 %60, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %59, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.50, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.51, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %91, %72
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %20, align 4
  %84 = load i32, i32* %11, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %81, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.50, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %75

94:                                               ; preds = %75
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %96 = load i32, i32* %21, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.52, i64 0, i64 0), i32 %96)
  store i32 0, i32* %20, align 4
  br label %98

98:                                               ; preds = %114, %94
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %21, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %106, %107
  %109 = add nsw i32 %105, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %104, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.50, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %20, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %20, align 4
  br label %98

117:                                              ; preds = %98
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.51, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %120

120:                                              ; preds = %136, %117
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %126 = load i32*, i32** %18, align 8
  %127 = load i32, i32* %21, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %11, align 4
  %130 = mul nsw i32 %128, %129
  %131 = add nsw i32 %127, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %126, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.50, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %20, align 4
  br label %120

139:                                              ; preds = %120
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %21, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %21, align 4
  br label %42

143:                                              ; preds = %42
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %145 = call i32 @fclose(%struct._IO_FILE* %144)
  br label %146

146:                                              ; preds = %143, %27
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.public_struct, align 8
  %9 = alloca [51 x %struct.private_struct], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.avi_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11.53, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 1
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call %struct.avi_t* @AVI_open_input_file(i8* %20, i32 1)
  store %struct.avi_t* %21, %struct.avi_t** %11, align 8
  %22 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %23 = icmp eq %struct.avi_t* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  call void @AVI_print_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12.54, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %1292

25:                                               ; preds = %16
  %26 = load %struct.avi_t*, %struct.avi_t** %11, align 8
  %27 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 19
  store %struct.avi_t* %26, %struct.avi_t** %27, align 8
  %28 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 19
  %29 = load %struct.avi_t*, %struct.avi_t** %28, align 8
  %30 = call i64 @AVI_video_frames(%struct.avi_t* %29)
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 19
  %34 = load %struct.avi_t*, %struct.avi_t** %33, align 8
  %35 = call i32 @AVI_video_height(%struct.avi_t* %34)
  %36 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 23
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 19
  %38 = load %struct.avi_t*, %struct.avi_t** %37, align 8
  %39 = call i32 @AVI_video_width(%struct.avi_t* %38)
  %40 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 24
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 23
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 24
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %42, %44
  %46 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 25
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 25
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = mul i64 4, %49
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 26
  store i32 %51, i32* %52, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @atoi(i8* %55) #8
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %25
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %60, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %59, %25
  %65 = load i32, i32* %7, align 4
  %66 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13.55, i64 0, i64 0), i32 %65, i32 %67)
  store i32 0, i32* %3, align 4
  br label %1292

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  store i32 20, i32* %70, align 8
  %71 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 5
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = call noalias i8* @malloc(i64 %79) #7
  %81 = bitcast i8* %80 to i32*
  %82 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  store i32* %81, i32** %82, align 8
  %83 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  store i32 369, i32* %85, align 4
  %86 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 400, i32* %88, align 4
  %89 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 429, i32* %91, align 4
  %92 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 452, i32* %94, align 4
  %95 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 4
  store i32 476, i32* %97, align 4
  %98 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  store i32 486, i32* %100, align 4
  %101 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 6
  store i32 479, i32* %103, align 4
  %104 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  store i32 458, i32* %106, align 4
  %107 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  store i32 433, i32* %109, align 4
  %110 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  store i32 404, i32* %112, align 4
  %113 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 10
  store i32 374, i32* %115, align 4
  %116 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 11
  store i32 346, i32* %118, align 4
  %119 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 12
  store i32 318, i32* %121, align 4
  %122 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 13
  store i32 294, i32* %124, align 4
  %125 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 14
  store i32 277, i32* %127, align 4
  %128 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 15
  store i32 269, i32* %130, align 4
  %131 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 16
  store i32 275, i32* %133, align 4
  %134 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 17
  store i32 287, i32* %136, align 4
  %137 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 18
  store i32 311, i32* %139, align 4
  %140 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 19
  store i32 339, i32* %142, align 4
  %143 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = call noalias i8* @malloc(i64 %145) #7
  %147 = bitcast i8* %146 to i32*
  %148 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  store i32* %147, i32** %148, align 8
  %149 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 408, i32* %151, align 4
  %152 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 406, i32* %154, align 4
  %155 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  store i32 397, i32* %157, align 4
  %158 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 3
  store i32 383, i32* %160, align 4
  %161 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 4
  store i32 354, i32* %163, align 4
  %164 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  store i32 322, i32* %166, align 4
  %167 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 6
  store i32 294, i32* %169, align 4
  %170 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 7
  store i32 270, i32* %172, align 4
  %173 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 8
  store i32 250, i32* %175, align 4
  %176 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 9
  store i32 237, i32* %178, align 4
  %179 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 10
  store i32 235, i32* %181, align 4
  %182 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 11
  store i32 241, i32* %184, align 4
  %185 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 12
  store i32 254, i32* %187, align 4
  %188 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 13
  store i32 273, i32* %190, align 4
  %191 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 14
  store i32 300, i32* %193, align 4
  %194 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 15
  store i32 328, i32* %196, align 4
  %197 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 16
  store i32 356, i32* %199, align 4
  %200 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 17
  store i32 383, i32* %202, align 4
  %203 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 18
  store i32 401, i32* %205, align 4
  %206 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 19
  store i32 411, i32* %208, align 4
  %209 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %212 = load i32, i32* %211, align 8
  %213 = mul nsw i32 %210, %212
  %214 = sext i32 %213 to i64
  %215 = call noalias i8* @malloc(i64 %214) #7
  %216 = bitcast i8* %215 to i32*
  %217 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 8
  store i32* %216, i32** %217, align 8
  %218 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %221 = load i32, i32* %220, align 8
  %222 = mul nsw i32 %219, %221
  %223 = sext i32 %222 to i64
  %224 = call noalias i8* @malloc(i64 %223) #7
  %225 = bitcast i8* %224 to i32*
  %226 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 9
  store i32* %225, i32** %226, align 8
  %227 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 11
  store i32 31, i32* %227, align 8
  %228 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 11
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = mul i64 4, %230
  %232 = trunc i64 %231 to i32
  %233 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 12
  store i32 %232, i32* %233, align 4
  %234 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 12
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = call noalias i8* @malloc(i64 %236) #7
  %238 = bitcast i8* %237 to i32*
  %239 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  store i32* %238, i32** %239, align 8
  %240 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 390, i32* %242, align 4
  %243 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  store i32 419, i32* %245, align 4
  %246 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  store i32 448, i32* %248, align 4
  %249 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 3
  store i32 474, i32* %251, align 4
  %252 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  store i32 501, i32* %254, align 4
  %255 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 5
  store i32 519, i32* %257, align 4
  %258 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 6
  store i32 535, i32* %260, align 4
  %261 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 7
  store i32 542, i32* %263, align 4
  %264 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 8
  store i32 543, i32* %266, align 4
  %267 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 9
  store i32 538, i32* %269, align 4
  %270 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 10
  store i32 528, i32* %272, align 4
  %273 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 11
  store i32 511, i32* %275, align 4
  %276 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 12
  store i32 491, i32* %278, align 4
  %279 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %280 = load i32*, i32** %279, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 13
  store i32 466, i32* %281, align 4
  %282 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 14
  store i32 438, i32* %284, align 4
  %285 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %286 = load i32*, i32** %285, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 15
  store i32 406, i32* %287, align 4
  %288 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 16
  store i32 376, i32* %290, align 4
  %291 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 17
  store i32 347, i32* %293, align 4
  %294 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 18
  store i32 318, i32* %296, align 4
  %297 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 19
  store i32 291, i32* %299, align 4
  %300 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 20
  store i32 275, i32* %302, align 4
  %303 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 21
  store i32 259, i32* %305, align 4
  %306 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 22
  store i32 256, i32* %308, align 4
  %309 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 23
  store i32 252, i32* %311, align 4
  %312 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 24
  store i32 252, i32* %314, align 4
  %315 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 25
  store i32 257, i32* %317, align 4
  %318 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %319 = load i32*, i32** %318, align 8
  %320 = getelementptr inbounds i32, i32* %319, i64 26
  store i32 266, i32* %320, align 4
  %321 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 27
  store i32 283, i32* %323, align 4
  %324 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 28
  store i32 305, i32* %326, align 4
  %327 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 29
  store i32 331, i32* %329, align 4
  %330 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 30
  store i32 360, i32* %332, align 4
  %333 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 12
  %334 = load i32, i32* %333, align 4
  %335 = sext i32 %334 to i64
  %336 = call noalias i8* @malloc(i64 %335) #7
  %337 = bitcast i8* %336 to i32*
  %338 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  store i32* %337, i32** %338, align 8
  %339 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  store i32 457, i32* %341, align 4
  %342 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  store i32 454, i32* %344, align 4
  %345 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 2
  store i32 446, i32* %347, align 4
  %348 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 3
  store i32 431, i32* %350, align 4
  %351 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 4
  store i32 411, i32* %353, align 4
  %354 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 5
  store i32 388, i32* %356, align 4
  %357 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 6
  store i32 361, i32* %359, align 4
  %360 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %361 = load i32*, i32** %360, align 8
  %362 = getelementptr inbounds i32, i32* %361, i64 7
  store i32 331, i32* %362, align 4
  %363 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 8
  store i32 301, i32* %365, align 4
  %366 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %367 = load i32*, i32** %366, align 8
  %368 = getelementptr inbounds i32, i32* %367, i64 9
  store i32 273, i32* %368, align 4
  %369 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 10
  store i32 243, i32* %371, align 4
  %372 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %373 = load i32*, i32** %372, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 11
  store i32 218, i32* %374, align 4
  %375 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 12
  store i32 196, i32* %377, align 4
  %378 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 13
  store i32 178, i32* %380, align 4
  %381 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 14
  store i32 166, i32* %383, align 4
  %384 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %385 = load i32*, i32** %384, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 15
  store i32 157, i32* %386, align 4
  %387 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 16
  store i32 155, i32* %389, align 4
  %390 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 17
  store i32 165, i32* %392, align 4
  %393 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 18
  store i32 177, i32* %395, align 4
  %396 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %397 = load i32*, i32** %396, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 19
  store i32 197, i32* %398, align 4
  %399 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %400 = load i32*, i32** %399, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 20
  store i32 218, i32* %401, align 4
  %402 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 21
  store i32 248, i32* %404, align 4
  %405 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 22
  store i32 276, i32* %407, align 4
  %408 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %409 = load i32*, i32** %408, align 8
  %410 = getelementptr inbounds i32, i32* %409, i64 23
  store i32 304, i32* %410, align 4
  %411 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 24
  store i32 333, i32* %413, align 4
  %414 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %415 = load i32*, i32** %414, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 25
  store i32 361, i32* %416, align 4
  %417 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 26
  store i32 391, i32* %419, align 4
  %420 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %421 = load i32*, i32** %420, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 27
  store i32 415, i32* %422, align 4
  %423 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %424 = load i32*, i32** %423, align 8
  %425 = getelementptr inbounds i32, i32* %424, i64 28
  store i32 434, i32* %425, align 4
  %426 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 29
  store i32 448, i32* %428, align 4
  %429 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 30
  store i32 455, i32* %431, align 4
  %432 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 12
  %433 = load i32, i32* %432, align 4
  %434 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %435 = load i32, i32* %434, align 8
  %436 = mul nsw i32 %433, %435
  %437 = sext i32 %436 to i64
  %438 = call noalias i8* @malloc(i64 %437) #7
  %439 = bitcast i8* %438 to i32*
  %440 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 15
  store i32* %439, i32** %440, align 8
  %441 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 12
  %442 = load i32, i32* %441, align 4
  %443 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 20
  %444 = load i32, i32* %443, align 8
  %445 = mul nsw i32 %442, %444
  %446 = sext i32 %445 to i64
  %447 = call noalias i8* @malloc(i64 %446) #7
  %448 = bitcast i8* %447 to i32*
  %449 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 16
  store i32* %448, i32** %449, align 8
  %450 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  store i32 51, i32* %450, align 8
  %451 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  store i32 25, i32* %451, align 8
  %452 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  store i32 40, i32* %452, align 4
  %453 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 2
  store i32 10, i32* %453, align 8
  %454 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 3
  store float 0x3FEBD70A40000000, float* %454, align 4
  store i32 0, i32* %6, align 4
  br label %455

455:                                              ; preds = %515, %69
  %456 = load i32, i32* %6, align 4
  %457 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %458 = load i32, i32* %457, align 8
  %459 = icmp slt i32 %456, %458
  br i1 %459, label %460, label %518

460:                                              ; preds = %455
  %461 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %462 = load i32, i32* %461, align 8
  %463 = sext i32 %462 to i64
  %464 = mul i64 8, %463
  %465 = add i64 %464, 1
  %466 = call noalias i8* @malloc(i64 %465) #7
  %467 = bitcast i8* %466 to float*
  %468 = load i32, i32* %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %469
  %471 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %470, i32 0, i32 17
  store float* %467, float** %471, align 16
  %472 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %473 = load i32, i32* %472, align 8
  %474 = sext i32 %473 to i64
  %475 = mul i64 8, %474
  %476 = add i64 %475, 1
  %477 = call noalias i8* @malloc(i64 %476) #7
  %478 = bitcast i8* %477 to float*
  %479 = load i32, i32* %6, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %480
  %482 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %481, i32 0, i32 18
  store float* %478, float** %482, align 8
  %483 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = mul nsw i32 2, %484
  %486 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = mul nsw i32 2, %487
  %489 = add nsw i32 %485, %488
  %490 = add nsw i32 %489, 1
  %491 = sext i32 %490 to i64
  %492 = mul i64 4, %491
  %493 = call noalias i8* @malloc(i64 %492) #7
  %494 = bitcast i8* %493 to float*
  %495 = load i32, i32* %6, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %496
  %498 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %497, i32 0, i32 19
  store float* %494, float** %498, align 16
  %499 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = mul nsw i32 2, %500
  %502 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = mul nsw i32 2, %503
  %505 = add nsw i32 %501, %504
  %506 = add nsw i32 %505, 1
  %507 = sext i32 %506 to i64
  %508 = mul i64 4, %507
  %509 = call noalias i8* @malloc(i64 %508) #7
  %510 = bitcast i8* %509 to i32*
  %511 = load i32, i32* %6, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %512
  %514 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %513, i32 0, i32 20
  store i32* %510, i32** %514, align 8
  br label %515

515:                                              ; preds = %460
  %516 = load i32, i32* %6, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %6, align 4
  br label %455

518:                                              ; preds = %455
  %519 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = mul nsw i32 2, %520
  %522 = add nsw i32 %521, 1
  %523 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 27
  store i32 %522, i32* %523, align 8
  %524 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = mul nsw i32 2, %525
  %527 = add nsw i32 %526, 1
  %528 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 28
  store i32 %527, i32* %528, align 4
  %529 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 27
  %530 = load i32, i32* %529, align 8
  %531 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 28
  %532 = load i32, i32* %531, align 4
  %533 = mul nsw i32 %530, %532
  %534 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 29
  store i32 %533, i32* %534, align 8
  %535 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 29
  %536 = load i32, i32* %535, align 8
  %537 = sext i32 %536 to i64
  %538 = mul i64 4, %537
  %539 = trunc i64 %538 to i32
  %540 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 30
  store i32 %539, i32* %540, align 4
  store i32 0, i32* %6, align 4
  br label %541

541:                                              ; preds = %565, %518
  %542 = load i32, i32* %6, align 4
  %543 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %544 = load i32, i32* %543, align 8
  %545 = icmp slt i32 %542, %544
  br i1 %545, label %546, label %568

546:                                              ; preds = %541
  %547 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 30
  %548 = load i32, i32* %547, align 4
  %549 = sext i32 %548 to i64
  %550 = call noalias i8* @malloc(i64 %549) #7
  %551 = bitcast i8* %550 to float*
  %552 = load i32, i32* %6, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %553
  %555 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %554, i32 0, i32 7
  store float* %551, float** %555, align 16
  %556 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 30
  %557 = load i32, i32* %556, align 4
  %558 = sext i32 %557 to i64
  %559 = call noalias i8* @malloc(i64 %558) #7
  %560 = bitcast i8* %559 to float*
  %561 = load i32, i32* %6, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %563, i32 0, i32 8
  store float* %560, float** %564, align 8
  br label %565

565:                                              ; preds = %546
  %566 = load i32, i32* %6, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %6, align 4
  br label %541

568:                                              ; preds = %541
  %569 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %570 = load i32, i32* %569, align 8
  %571 = add nsw i32 %570, 1
  %572 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = add nsw i32 %571, %573
  %575 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  store i32 %574, i32* %575, align 8
  %576 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %577 = load i32, i32* %576, align 8
  %578 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  store i32 %577, i32* %578, align 4
  %579 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %580 = load i32, i32* %579, align 8
  %581 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  %582 = load i32, i32* %581, align 4
  %583 = mul nsw i32 %580, %582
  %584 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 33
  store i32 %583, i32* %584, align 8
  %585 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 33
  %586 = load i32, i32* %585, align 8
  %587 = sext i32 %586 to i64
  %588 = mul i64 4, %587
  %589 = trunc i64 %588 to i32
  %590 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 34
  store i32 %589, i32* %590, align 4
  store i32 0, i32* %6, align 4
  br label %591

591:                                              ; preds = %615, %568
  %592 = load i32, i32* %6, align 4
  %593 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %594 = load i32, i32* %593, align 8
  %595 = icmp slt i32 %592, %594
  br i1 %595, label %596, label %618

596:                                              ; preds = %591
  %597 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 34
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = call noalias i8* @malloc(i64 %599) #7
  %601 = bitcast i8* %600 to float*
  %602 = load i32, i32* %6, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %603
  %605 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %604, i32 0, i32 9
  store float* %601, float** %605, align 16
  %606 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 34
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = call noalias i8* @malloc(i64 %608) #7
  %610 = bitcast i8* %609 to float*
  %611 = load i32, i32* %6, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %612
  %614 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %613, i32 0, i32 10
  store float* %610, float** %614, align 8
  br label %615

615:                                              ; preds = %596
  %616 = load i32, i32* %6, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* %6, align 4
  br label %591

618:                                              ; preds = %591
  %619 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 34
  %620 = load i32, i32* %619, align 4
  %621 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  %622 = load i32, i32* %621, align 8
  %623 = mul nsw i32 %620, %622
  %624 = sext i32 %623 to i64
  %625 = call noalias i8* @malloc(i64 %624) #7
  %626 = bitcast i8* %625 to float*
  %627 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 10
  store float* %626, float** %627, align 8
  %628 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 34
  %629 = load i32, i32* %628, align 4
  %630 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 11
  %631 = load i32, i32* %630, align 8
  %632 = mul nsw i32 %629, %631
  %633 = sext i32 %632 to i64
  %634 = call noalias i8* @malloc(i64 %633) #7
  %635 = bitcast i8* %634 to float*
  %636 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 17
  store float* %635, float** %636, align 8
  store i32 0, i32* %6, align 4
  br label %637

637:                                              ; preds = %690, %618
  %638 = load i32, i32* %6, align 4
  %639 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  %640 = load i32, i32* %639, align 8
  %641 = icmp slt i32 %638, %640
  br i1 %641, label %642, label %693

642:                                              ; preds = %637
  %643 = load i32, i32* %6, align 4
  %644 = load i32, i32* %6, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %645
  %647 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %646, i32 0, i32 0
  store i32 %643, i32* %647, align 16
  %648 = load i32, i32* %6, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %649
  %651 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 16
  %653 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 33
  %654 = load i32, i32* %653, align 8
  %655 = mul nsw i32 %652, %654
  %656 = load i32, i32* %6, align 4
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %657
  %659 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %658, i32 0, i32 1
  store i32 %655, i32* %659, align 4
  %660 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %661 = load i32*, i32** %660, align 8
  %662 = load i32, i32* %6, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %663
  %665 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %664, i32 0, i32 2
  store i32* %661, i32** %665, align 8
  %666 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %667 = load i32*, i32** %666, align 8
  %668 = load i32, i32* %6, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %669
  %671 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %670, i32 0, i32 3
  store i32* %667, i32** %671, align 16
  %672 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 8
  %673 = load i32*, i32** %672, align 8
  %674 = load i32, i32* %6, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %675
  %677 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %676, i32 0, i32 4
  store i32* %673, i32** %677, align 8
  %678 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 9
  %679 = load i32*, i32** %678, align 8
  %680 = load i32, i32* %6, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %681
  %683 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %682, i32 0, i32 5
  store i32* %679, i32** %683, align 16
  %684 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 10
  %685 = load float*, float** %684, align 8
  %686 = load i32, i32* %6, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %687
  %689 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %688, i32 0, i32 6
  store float* %685, float** %689, align 8
  br label %690

690:                                              ; preds = %642
  %691 = load i32, i32* %6, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %6, align 4
  br label %637

693:                                              ; preds = %637
  %694 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  %695 = load i32, i32* %694, align 8
  store i32 %695, i32* %6, align 4
  br label %696

696:                                              ; preds = %752, %693
  %697 = load i32, i32* %6, align 4
  %698 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %699 = load i32, i32* %698, align 8
  %700 = icmp slt i32 %697, %699
  br i1 %700, label %701, label %755

701:                                              ; preds = %696
  %702 = load i32, i32* %6, align 4
  %703 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 4
  %704 = load i32, i32* %703, align 8
  %705 = sub nsw i32 %702, %704
  %706 = load i32, i32* %6, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %707
  %709 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %708, i32 0, i32 0
  store i32 %705, i32* %709, align 16
  %710 = load i32, i32* %6, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %711
  %713 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %712, i32 0, i32 0
  %714 = load i32, i32* %713, align 16
  %715 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 33
  %716 = load i32, i32* %715, align 8
  %717 = mul nsw i32 %714, %716
  %718 = load i32, i32* %6, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %719
  %721 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %720, i32 0, i32 1
  store i32 %717, i32* %721, align 4
  %722 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %723 = load i32*, i32** %722, align 8
  %724 = load i32, i32* %6, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %725
  %727 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %726, i32 0, i32 2
  store i32* %723, i32** %727, align 8
  %728 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %729 = load i32*, i32** %728, align 8
  %730 = load i32, i32* %6, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %731
  %733 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %732, i32 0, i32 3
  store i32* %729, i32** %733, align 16
  %734 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 15
  %735 = load i32*, i32** %734, align 8
  %736 = load i32, i32* %6, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %737
  %739 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %738, i32 0, i32 4
  store i32* %735, i32** %739, align 8
  %740 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 16
  %741 = load i32*, i32** %740, align 8
  %742 = load i32, i32* %6, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %743
  %745 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %744, i32 0, i32 5
  store i32* %741, i32** %745, align 16
  %746 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 17
  %747 = load float*, float** %746, align 8
  %748 = load i32, i32* %6, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %749
  %751 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %750, i32 0, i32 6
  store float* %747, float** %751, align 8
  br label %752

752:                                              ; preds = %701
  %753 = load i32, i32* %6, align 4
  %754 = add nsw i32 %753, 1
  store i32 %754, i32* %6, align 4
  br label %696

755:                                              ; preds = %696
  %756 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 35
  store i32 0, i32* %756, align 8
  %757 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 36
  store i32 0, i32* %757, align 4
  %758 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %759 = load i32, i32* %758, align 8
  %760 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 27
  %761 = load i32, i32* %760, align 8
  %762 = add nsw i32 %759, %761
  %763 = sub nsw i32 %762, 1
  %764 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 37
  store i32 %763, i32* %764, align 8
  %765 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  %766 = load i32, i32* %765, align 4
  %767 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 28
  %768 = load i32, i32* %767, align 4
  %769 = add nsw i32 %766, %768
  %770 = sub nsw i32 %769, 1
  %771 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 38
  store i32 %770, i32* %771, align 4
  %772 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 37
  %773 = load i32, i32* %772, align 8
  %774 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 38
  %775 = load i32, i32* %774, align 4
  %776 = mul nsw i32 %773, %775
  %777 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 39
  store i32 %776, i32* %777, align 8
  %778 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 39
  %779 = load i32, i32* %778, align 8
  %780 = sext i32 %779 to i64
  %781 = mul i64 4, %780
  %782 = trunc i64 %781 to i32
  %783 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 40
  store i32 %782, i32* %783, align 4
  store i32 0, i32* %6, align 4
  br label %784

784:                                              ; preds = %799, %755
  %785 = load i32, i32* %6, align 4
  %786 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %787 = load i32, i32* %786, align 8
  %788 = icmp slt i32 %785, %787
  br i1 %788, label %789, label %802

789:                                              ; preds = %784
  %790 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 40
  %791 = load i32, i32* %790, align 4
  %792 = sext i32 %791 to i64
  %793 = call noalias i8* @malloc(i64 %792) #7
  %794 = bitcast i8* %793 to float*
  %795 = load i32, i32* %6, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %796
  %798 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %797, i32 0, i32 11
  store float* %794, float** %798, align 16
  br label %799

799:                                              ; preds = %789
  %800 = load i32, i32* %6, align 4
  %801 = add nsw i32 %800, 1
  store i32 %801, i32* %6, align 4
  br label %784

802:                                              ; preds = %784
  %803 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %804 = load i32, i32* %803, align 8
  %805 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 41
  store i32 %804, i32* %805, align 8
  %806 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  %807 = load i32, i32* %806, align 4
  %808 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 42
  store i32 %807, i32* %808, align 4
  %809 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 27
  %810 = load i32, i32* %809, align 8
  %811 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 41
  %812 = load i32, i32* %811, align 8
  %813 = mul nsw i32 2, %812
  %814 = add nsw i32 %810, %813
  %815 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 43
  store i32 %814, i32* %815, align 8
  %816 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 28
  %817 = load i32, i32* %816, align 4
  %818 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 42
  %819 = load i32, i32* %818, align 4
  %820 = mul nsw i32 2, %819
  %821 = add nsw i32 %817, %820
  %822 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 44
  store i32 %821, i32* %822, align 4
  %823 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 43
  %824 = load i32, i32* %823, align 8
  %825 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 44
  %826 = load i32, i32* %825, align 4
  %827 = mul nsw i32 %824, %826
  %828 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 45
  store i32 %827, i32* %828, align 8
  %829 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 45
  %830 = load i32, i32* %829, align 8
  %831 = sext i32 %830 to i64
  %832 = mul i64 4, %831
  %833 = trunc i64 %832 to i32
  %834 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 46
  store i32 %833, i32* %834, align 4
  store i32 0, i32* %6, align 4
  br label %835

835:                                              ; preds = %850, %802
  %836 = load i32, i32* %6, align 4
  %837 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %838 = load i32, i32* %837, align 8
  %839 = icmp slt i32 %836, %838
  br i1 %839, label %840, label %853

840:                                              ; preds = %835
  %841 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 46
  %842 = load i32, i32* %841, align 4
  %843 = sext i32 %842 to i64
  %844 = call noalias i8* @malloc(i64 %843) #7
  %845 = bitcast i8* %844 to float*
  %846 = load i32, i32* %6, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %847
  %849 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %848, i32 0, i32 12
  store float* %845, float** %849, align 8
  br label %850

850:                                              ; preds = %840
  %851 = load i32, i32* %6, align 4
  %852 = add nsw i32 %851, 1
  store i32 %852, i32* %6, align 4
  br label %835

853:                                              ; preds = %835
  %854 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %855 = load i32, i32* %854, align 8
  %856 = add nsw i32 1, %855
  %857 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 47
  store i32 %856, i32* %857, align 8
  %858 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 43
  %859 = load i32, i32* %858, align 8
  %860 = sub nsw i32 %859, 1
  %861 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 48
  store i32 %860, i32* %861, align 4
  %862 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 49
  store i32 1, i32* %862, align 8
  %863 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 44
  %864 = load i32, i32* %863, align 4
  %865 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 50
  store i32 %864, i32* %865, align 4
  %866 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 51
  store i32 1, i32* %866, align 8
  %867 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 43
  %868 = load i32, i32* %867, align 8
  %869 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %870 = load i32, i32* %869, align 8
  %871 = sub nsw i32 %868, %870
  %872 = sub nsw i32 %871, 1
  %873 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 52
  store i32 %872, i32* %873, align 4
  %874 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 53
  store i32 1, i32* %874, align 8
  %875 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 44
  %876 = load i32, i32* %875, align 4
  %877 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 54
  store i32 %876, i32* %877, align 4
  %878 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 48
  %879 = load i32, i32* %878, align 4
  %880 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 47
  %881 = load i32, i32* %880, align 8
  %882 = sub nsw i32 %879, %881
  %883 = add nsw i32 %882, 1
  %884 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 55
  store i32 %883, i32* %884, align 8
  %885 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 50
  %886 = load i32, i32* %885, align 4
  %887 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 49
  %888 = load i32, i32* %887, align 8
  %889 = sub nsw i32 %886, %888
  %890 = add nsw i32 %889, 1
  %891 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 56
  store i32 %890, i32* %891, align 4
  %892 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 55
  %893 = load i32, i32* %892, align 8
  %894 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 56
  %895 = load i32, i32* %894, align 4
  %896 = mul nsw i32 %893, %895
  %897 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 57
  store i32 %896, i32* %897, align 8
  %898 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 57
  %899 = load i32, i32* %898, align 8
  %900 = sext i32 %899 to i64
  %901 = mul i64 4, %900
  %902 = trunc i64 %901 to i32
  %903 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 58
  store i32 %902, i32* %903, align 4
  store i32 0, i32* %6, align 4
  br label %904

904:                                              ; preds = %919, %853
  %905 = load i32, i32* %6, align 4
  %906 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %907 = load i32, i32* %906, align 8
  %908 = icmp slt i32 %905, %907
  br i1 %908, label %909, label %922

909:                                              ; preds = %904
  %910 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 58
  %911 = load i32, i32* %910, align 4
  %912 = sext i32 %911 to i64
  %913 = call noalias i8* @malloc(i64 %912) #7
  %914 = bitcast i8* %913 to float*
  %915 = load i32, i32* %6, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %916
  %918 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %917, i32 0, i32 13
  store float* %914, float** %918, align 16
  br label %919

919:                                              ; preds = %909
  %920 = load i32, i32* %6, align 4
  %921 = add nsw i32 %920, 1
  store i32 %921, i32* %6, align 4
  br label %904

922:                                              ; preds = %904
  %923 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 59
  store i32 1, i32* %923, align 8
  %924 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 55
  %925 = load i32, i32* %924, align 8
  %926 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 60
  store i32 %925, i32* %926, align 4
  %927 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  %928 = load i32, i32* %927, align 4
  %929 = add nsw i32 1, %928
  %930 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 61
  store i32 %929, i32* %930, align 8
  %931 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 56
  %932 = load i32, i32* %931, align 4
  %933 = sub nsw i32 %932, 1
  %934 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 62
  store i32 %933, i32* %934, align 4
  %935 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 63
  store i32 1, i32* %935, align 8
  %936 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 55
  %937 = load i32, i32* %936, align 8
  %938 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 64
  store i32 %937, i32* %938, align 4
  %939 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 65
  store i32 1, i32* %939, align 8
  %940 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 56
  %941 = load i32, i32* %940, align 4
  %942 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 32
  %943 = load i32, i32* %942, align 4
  %944 = sub nsw i32 %941, %943
  %945 = sub nsw i32 %944, 1
  %946 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 66
  store i32 %945, i32* %946, align 4
  %947 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 60
  %948 = load i32, i32* %947, align 4
  %949 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 59
  %950 = load i32, i32* %949, align 8
  %951 = sub nsw i32 %948, %950
  %952 = add nsw i32 %951, 1
  %953 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 67
  store i32 %952, i32* %953, align 8
  %954 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 62
  %955 = load i32, i32* %954, align 4
  %956 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 61
  %957 = load i32, i32* %956, align 8
  %958 = sub nsw i32 %955, %957
  %959 = add nsw i32 %958, 1
  %960 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 68
  store i32 %959, i32* %960, align 4
  %961 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 67
  %962 = load i32, i32* %961, align 8
  %963 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 68
  %964 = load i32, i32* %963, align 4
  %965 = mul nsw i32 %962, %964
  %966 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 69
  store i32 %965, i32* %966, align 8
  %967 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 69
  %968 = load i32, i32* %967, align 8
  %969 = sext i32 %968 to i64
  %970 = mul i64 4, %969
  %971 = trunc i64 %970 to i32
  %972 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 70
  store i32 %971, i32* %972, align 4
  store i32 0, i32* %6, align 4
  br label %973

973:                                              ; preds = %988, %922
  %974 = load i32, i32* %6, align 4
  %975 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %976 = load i32, i32* %975, align 8
  %977 = icmp slt i32 %974, %976
  br i1 %977, label %978, label %991

978:                                              ; preds = %973
  %979 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 70
  %980 = load i32, i32* %979, align 4
  %981 = sext i32 %980 to i64
  %982 = call noalias i8* @malloc(i64 %981) #7
  %983 = bitcast i8* %982 to float*
  %984 = load i32, i32* %6, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %985
  %987 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %986, i32 0, i32 14
  store float* %983, float** %987, align 8
  br label %988

988:                                              ; preds = %978
  %989 = load i32, i32* %6, align 4
  %990 = add nsw i32 %989, 1
  store i32 %990, i32* %6, align 4
  br label %973

991:                                              ; preds = %973
  %992 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 31
  %993 = load i32, i32* %992, align 8
  %994 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %995 = load i32, i32* %994, align 4
  %996 = add nsw i32 %995, 1
  %997 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 1
  %998 = load i32, i32* %997, align 4
  %999 = add nsw i32 %996, %998
  %1000 = add nsw i32 %993, %999
  %1001 = sub nsw i32 %1000, 1
  %1002 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 71
  store i32 %1001, i32* %1002, align 8
  %1003 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 71
  %1004 = load i32, i32* %1003, align 8
  %1005 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 72
  store i32 %1004, i32* %1005, align 4
  %1006 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 71
  %1007 = load i32, i32* %1006, align 8
  %1008 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 72
  %1009 = load i32, i32* %1008, align 4
  %1010 = mul nsw i32 %1007, %1009
  %1011 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 73
  store i32 %1010, i32* %1011, align 8
  %1012 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 73
  %1013 = load i32, i32* %1012, align 8
  %1014 = sext i32 %1013 to i64
  %1015 = mul i64 4, %1014
  %1016 = trunc i64 %1015 to i32
  %1017 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 74
  store i32 %1016, i32* %1017, align 4
  store i32 0, i32* %6, align 4
  br label %1018

1018:                                             ; preds = %1033, %991
  %1019 = load i32, i32* %6, align 4
  %1020 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %1021 = load i32, i32* %1020, align 8
  %1022 = icmp slt i32 %1019, %1021
  br i1 %1022, label %1023, label %1036

1023:                                             ; preds = %1018
  %1024 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 74
  %1025 = load i32, i32* %1024, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = call noalias i8* @malloc(i64 %1026) #7
  %1028 = bitcast i8* %1027 to float*
  %1029 = load i32, i32* %6, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1030
  %1032 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1031, i32 0, i32 15
  store float* %1028, float** %1032, align 16
  br label %1033

1033:                                             ; preds = %1023
  %1034 = load i32, i32* %6, align 4
  %1035 = add nsw i32 %1034, 1
  store i32 %1035, i32* %6, align 4
  br label %1018

1036:                                             ; preds = %1018
  %1037 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 2
  %1038 = load i32, i32* %1037, align 8
  %1039 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 75
  store i32 %1038, i32* %1039, align 8
  %1040 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 75
  %1041 = load i32, i32* %1040, align 8
  %1042 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 76
  store i32 %1041, i32* %1042, align 4
  %1043 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 75
  %1044 = load i32, i32* %1043, align 8
  %1045 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 76
  %1046 = load i32, i32* %1045, align 4
  %1047 = mul nsw i32 %1044, %1046
  %1048 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 77
  store i32 %1047, i32* %1048, align 8
  %1049 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 77
  %1050 = load i32, i32* %1049, align 8
  %1051 = sext i32 %1050 to i64
  %1052 = mul i64 4, %1051
  %1053 = trunc i64 %1052 to i32
  %1054 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 78
  store i32 %1053, i32* %1054, align 4
  %1055 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 71
  %1056 = load i32, i32* %1055, align 8
  %1057 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 79
  store i32 %1056, i32* %1057, align 8
  %1058 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 72
  %1059 = load i32, i32* %1058, align 4
  %1060 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 80
  store i32 %1059, i32* %1060, align 4
  %1061 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 79
  %1062 = load i32, i32* %1061, align 8
  %1063 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 80
  %1064 = load i32, i32* %1063, align 4
  %1065 = mul nsw i32 %1062, %1064
  %1066 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 81
  store i32 %1065, i32* %1066, align 8
  %1067 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 81
  %1068 = load i32, i32* %1067, align 8
  %1069 = sext i32 %1068 to i64
  %1070 = mul i64 4, %1069
  %1071 = trunc i64 %1070 to i32
  %1072 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 82
  store i32 %1071, i32* %1072, align 4
  %1073 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 75
  %1074 = load i32, i32* %1073, align 8
  %1075 = sub nsw i32 %1074, 1
  %1076 = sdiv i32 %1075, 2
  %1077 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 83
  store i32 %1076, i32* %1077, align 8
  %1078 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 75
  %1079 = load i32, i32* %1078, align 8
  %1080 = sub nsw i32 %1079, 1
  %1081 = srem i32 %1080, 2
  %1082 = sitofp i32 %1081 to double
  %1083 = fcmp ogt double %1082, 5.000000e-01
  br i1 %1083, label %1084, label %1089

1084:                                             ; preds = %1036
  %1085 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 83
  %1086 = load i32, i32* %1085, align 8
  %1087 = add nsw i32 %1086, 1
  %1088 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 83
  store i32 %1087, i32* %1088, align 8
  br label %1089

1089:                                             ; preds = %1084, %1036
  %1090 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 76
  %1091 = load i32, i32* %1090, align 4
  %1092 = sub nsw i32 %1091, 1
  %1093 = sdiv i32 %1092, 2
  %1094 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 84
  store i32 %1093, i32* %1094, align 4
  %1095 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 76
  %1096 = load i32, i32* %1095, align 4
  %1097 = sub nsw i32 %1096, 1
  %1098 = srem i32 %1097, 2
  %1099 = sitofp i32 %1098 to double
  %1100 = fcmp ogt double %1099, 5.000000e-01
  br i1 %1100, label %1101, label %1106

1101:                                             ; preds = %1089
  %1102 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 84
  %1103 = load i32, i32* %1102, align 4
  %1104 = add nsw i32 %1103, 1
  %1105 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 84
  store i32 %1104, i32* %1105, align 4
  br label %1106

1106:                                             ; preds = %1101, %1089
  store i32 0, i32* %6, align 4
  br label %1107

1107:                                             ; preds = %1122, %1106
  %1108 = load i32, i32* %6, align 4
  %1109 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %1110 = load i32, i32* %1109, align 8
  %1111 = icmp slt i32 %1108, %1110
  br i1 %1111, label %1112, label %1125

1112:                                             ; preds = %1107
  %1113 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 82
  %1114 = load i32, i32* %1113, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = call noalias i8* @malloc(i64 %1115) #7
  %1117 = bitcast i8* %1116 to float*
  %1118 = load i32, i32* %6, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1119
  %1121 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1120, i32 0, i32 16
  store float* %1117, float** %1121, align 8
  br label %1122

1122:                                             ; preds = %1112
  %1123 = load i32, i32* %6, align 4
  %1124 = add nsw i32 %1123, 1
  store i32 %1124, i32* %6, align 4
  br label %1107

1125:                                             ; preds = %1107
  %1126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14.56, i64 0, i64 0))
  %1127 = call i32 @fflush(%struct._IO_FILE* null)
  %1128 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 21
  store i32 0, i32* %1128, align 4
  br label %1129

1129:                                             ; preds = %1162, %1125
  %1130 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 21
  %1131 = load i32, i32* %1130, align 4
  %1132 = load i32, i32* %7, align 4
  %1133 = icmp slt i32 %1131, %1132
  br i1 %1133, label %1134, label %1166

1134:                                             ; preds = %1129
  %1135 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 19
  %1136 = load %struct.avi_t*, %struct.avi_t** %1135, align 8
  %1137 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 21
  %1138 = load i32, i32* %1137, align 4
  %1139 = call float* @get_frame(%struct.avi_t* %1136, i32 %1138, i32 0, i32 0, i32 1)
  %1140 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 22
  store float* %1139, float** %1140, align 8
  store i32 0, i32* %6, align 4
  br label %1141

1141:                                             ; preds = %1151, %1134
  %1142 = load i32, i32* %6, align 4
  %1143 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %1144 = load i32, i32* %1143, align 8
  %1145 = icmp slt i32 %1142, %1144
  br i1 %1145, label %1146, label %1154

1146:                                             ; preds = %1141
  %1147 = load i32, i32* %6, align 4
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1148
  %1150 = call i32 (%struct.public_struct*, %struct.private_struct*, ...) bitcast (void (%struct.public_struct*, %struct.private_struct*)* @kernel to i32 (%struct.public_struct*, %struct.private_struct*, ...)*)(%struct.public_struct* byval(%struct.public_struct) align 8 %8, %struct.private_struct* byval(%struct.private_struct) align 8 %1149)
  br label %1151

1151:                                             ; preds = %1146
  %1152 = load i32, i32* %6, align 4
  %1153 = add nsw i32 %1152, 1
  store i32 %1153, i32* %6, align 4
  br label %1141

1154:                                             ; preds = %1141
  %1155 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 22
  %1156 = load float*, float** %1155, align 8
  %1157 = bitcast float* %1156 to i8*
  call void @free(i8* %1157) #7
  %1158 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 21
  %1159 = load i32, i32* %1158, align 4
  %1160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.57, i64 0, i64 0), i32 %1159)
  %1161 = call i32 @fflush(%struct._IO_FILE* null)
  br label %1162

1162:                                             ; preds = %1154
  %1163 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 21
  %1164 = load i32, i32* %1163, align 4
  %1165 = add nsw i32 %1164, 1
  store i32 %1165, i32* %1163, align 4
  br label %1129

1166:                                             ; preds = %1129
  %1167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.51, i64 0, i64 0))
  %1168 = call i32 @fflush(%struct._IO_FILE* null)
  %1169 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 6
  %1170 = load i32*, i32** %1169, align 8
  %1171 = bitcast i32* %1170 to i8*
  call void @free(i8* %1171) #7
  %1172 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 7
  %1173 = load i32*, i32** %1172, align 8
  %1174 = bitcast i32* %1173 to i8*
  call void @free(i8* %1174) #7
  %1175 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 8
  %1176 = load i32*, i32** %1175, align 8
  %1177 = bitcast i32* %1176 to i8*
  call void @free(i8* %1177) #7
  %1178 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 9
  %1179 = load i32*, i32** %1178, align 8
  %1180 = bitcast i32* %1179 to i8*
  call void @free(i8* %1180) #7
  %1181 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 10
  %1182 = load float*, float** %1181, align 8
  %1183 = bitcast float* %1182 to i8*
  call void @free(i8* %1183) #7
  %1184 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 13
  %1185 = load i32*, i32** %1184, align 8
  %1186 = bitcast i32* %1185 to i8*
  call void @free(i8* %1186) #7
  %1187 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 14
  %1188 = load i32*, i32** %1187, align 8
  %1189 = bitcast i32* %1188 to i8*
  call void @free(i8* %1189) #7
  %1190 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 15
  %1191 = load i32*, i32** %1190, align 8
  %1192 = bitcast i32* %1191 to i8*
  call void @free(i8* %1192) #7
  %1193 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 16
  %1194 = load i32*, i32** %1193, align 8
  %1195 = bitcast i32* %1194 to i8*
  call void @free(i8* %1195) #7
  %1196 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 17
  %1197 = load float*, float** %1196, align 8
  %1198 = bitcast float* %1197 to i8*
  call void @free(i8* %1198) #7
  store i32 0, i32* %6, align 4
  br label %1199

1199:                                             ; preds = %1289, %1166
  %1200 = load i32, i32* %6, align 4
  %1201 = getelementptr inbounds %struct.public_struct, %struct.public_struct* %8, i32 0, i32 18
  %1202 = load i32, i32* %1201, align 8
  %1203 = icmp slt i32 %1200, %1202
  br i1 %1203, label %1204, label %1292

1204:                                             ; preds = %1199
  %1205 = load i32, i32* %6, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1206
  %1208 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1207, i32 0, i32 17
  %1209 = load float*, float** %1208, align 16
  %1210 = bitcast float* %1209 to i8*
  call void @free(i8* %1210) #7
  %1211 = load i32, i32* %6, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1212
  %1214 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1213, i32 0, i32 18
  %1215 = load float*, float** %1214, align 8
  %1216 = bitcast float* %1215 to i8*
  call void @free(i8* %1216) #7
  %1217 = load i32, i32* %6, align 4
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1218
  %1220 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1219, i32 0, i32 19
  %1221 = load float*, float** %1220, align 16
  %1222 = bitcast float* %1221 to i8*
  call void @free(i8* %1222) #7
  %1223 = load i32, i32* %6, align 4
  %1224 = sext i32 %1223 to i64
  %1225 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1224
  %1226 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1225, i32 0, i32 20
  %1227 = load i32*, i32** %1226, align 8
  %1228 = bitcast i32* %1227 to i8*
  call void @free(i8* %1228) #7
  %1229 = load i32, i32* %6, align 4
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1230
  %1232 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1231, i32 0, i32 7
  %1233 = load float*, float** %1232, align 16
  %1234 = bitcast float* %1233 to i8*
  call void @free(i8* %1234) #7
  %1235 = load i32, i32* %6, align 4
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1236
  %1238 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1237, i32 0, i32 8
  %1239 = load float*, float** %1238, align 8
  %1240 = bitcast float* %1239 to i8*
  call void @free(i8* %1240) #7
  %1241 = load i32, i32* %6, align 4
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1242
  %1244 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1243, i32 0, i32 9
  %1245 = load float*, float** %1244, align 16
  %1246 = bitcast float* %1245 to i8*
  call void @free(i8* %1246) #7
  %1247 = load i32, i32* %6, align 4
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1248
  %1250 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1249, i32 0, i32 10
  %1251 = load float*, float** %1250, align 8
  %1252 = bitcast float* %1251 to i8*
  call void @free(i8* %1252) #7
  %1253 = load i32, i32* %6, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1254
  %1256 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1255, i32 0, i32 11
  %1257 = load float*, float** %1256, align 16
  %1258 = bitcast float* %1257 to i8*
  call void @free(i8* %1258) #7
  %1259 = load i32, i32* %6, align 4
  %1260 = sext i32 %1259 to i64
  %1261 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1260
  %1262 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1261, i32 0, i32 12
  %1263 = load float*, float** %1262, align 8
  %1264 = bitcast float* %1263 to i8*
  call void @free(i8* %1264) #7
  %1265 = load i32, i32* %6, align 4
  %1266 = sext i32 %1265 to i64
  %1267 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1266
  %1268 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1267, i32 0, i32 13
  %1269 = load float*, float** %1268, align 16
  %1270 = bitcast float* %1269 to i8*
  call void @free(i8* %1270) #7
  %1271 = load i32, i32* %6, align 4
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1272
  %1274 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1273, i32 0, i32 14
  %1275 = load float*, float** %1274, align 8
  %1276 = bitcast float* %1275 to i8*
  call void @free(i8* %1276) #7
  %1277 = load i32, i32* %6, align 4
  %1278 = sext i32 %1277 to i64
  %1279 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1278
  %1280 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1279, i32 0, i32 15
  %1281 = load float*, float** %1280, align 16
  %1282 = bitcast float* %1281 to i8*
  call void @free(i8* %1282) #7
  %1283 = load i32, i32* %6, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds [51 x %struct.private_struct], [51 x %struct.private_struct]* %9, i64 0, i64 %1284
  %1286 = getelementptr inbounds %struct.private_struct, %struct.private_struct* %1285, i32 0, i32 16
  %1287 = load float*, float** %1286, align 8
  %1288 = bitcast float* %1287 to i8*
  call void @free(i8* %1288) #7
  br label %1289

1289:                                             ; preds = %1204
  %1290 = load i32, i32* %6, align 4
  %1291 = add nsw i32 %1290, 1
  store i32 %1291, i32* %6, align 4
  br label %1199

1292:                                             ; preds = %1199, %64, %24
  %1293 = load i32, i32* %3, align 4
  ret i32 %1293
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
