; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.EDGE_HANDLER = type { i8*, i32 (...)* }
%struct.node = type { i32, %struct.node*, %struct.node*, %struct.node*, i16, i8* }
%struct.code_node = type { %struct.code_node*, %struct.code_node*, i16 }

@.str = private unnamed_addr constant [9 x i8] c"reflect1\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Unknown edge handler: %s\0A\00", align 1
@edge_foos = internal global [9 x %struct.EDGE_HANDLER] [%struct.EDGE_HANDLER { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @reflect1 to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @reflect2 to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.7, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @repeat to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @zero to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @extend to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6.8, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @nocompute to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @predict to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @ereflect to i32 (...)*) }, %struct.EDGE_HANDLER { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 (...)* bitcast (i32 (float*, i32, i32, i32, i32, float*, i32)* @reflect1 to i32 (...)*) }], align 16
@.str.6 = private unnamed_addr constant [31 x i8] c"No such edge handler routine!\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"reflect1\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"reflect2\00", align 1
@.str.3.7 = private unnamed_addr constant [7 x i8] c"repeat\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.6.8 = private unnamed_addr constant [13 x i8] c"dont-compute\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"predict\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"ereflect\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"treflect\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [23 x i8] c"Xsize: %d, Ysize: %d.\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [93 x i8] c"Error: attempting to construct pyramid with %d levels.\0A      Are your image dimensions odd?\0A\00", align 1
@.str.2.12 = private unnamed_addr constant [33 x i8] c"Building pyramid, %d levels ...\0A\00", align 1
@lo_filter = internal global [15 x float] [float 0xBF54707CA0000000, float 0xBF647095A0000000, float 0x3F81E188A0000000, float 0x3F946FDBE0000000, float 0xBFA9DEEFE0000000, float 0xBFBEDC6DA0000000, float 0x3FD2C14240000000, float 0x3FE698FEC0000000, float 0x3FD2C14240000000, float 0xBFBEDC6DA0000000, float 0xBFA9DEEFE0000000, float 0x3F946FDBE0000000, float 0x3F81E188A0000000, float 0xBF647095A0000000, float 0xBF54707CA0000000], align 16
@hi_filter = internal global [15 x float] [float 0x3F54707CA0000000, float 0xBF647095A0000000, float 0xBF81E188A0000000, float 0x3F946FDBE0000000, float 0x3FA9DEEFE0000000, float 0xBFBEDC6DA0000000, float 0xBFD2C14240000000, float 0x3FE698FEC0000000, float 0xBFD2C14240000000, float 0xBFBEDC6DA0000000, float 0x3FA9DEEFE0000000, float 0x3F946FDBE0000000, float 0xBF81E188A0000000, float 0xBF647095A0000000, float 0x3F54707CA0000000], align 16
@.str.3.13 = private unnamed_addr constant [32 x i8] c"Quantizing, binsize = %4lf ...\0A\00", align 1
@.str.4.14 = private unnamed_addr constant [23 x i8] c"Run-length coding ...\0A\00", align 1
@.str.5.15 = private unnamed_addr constant [21 x i8] c"Huffman coding ... \0A\00", align 1
@.str.6.16 = private unnamed_addr constant [74 x i8] c"Low_pass_size: %d,  Symbol_stream_length: %d,  Huffman_stream_length: %d\0A\00", align 1
@.str.7.17 = private unnamed_addr constant [23 x i8] c"Writing EPIC file ...\0A\00", align 1
@.str.8.18 = private unnamed_addr constant [25 x i8] c"Stored %ld byte header.\0A\00", align 1
@.str.9.19 = private unnamed_addr constant [41 x i8] c"Stored %ld bytes of Raw (lowpass) Data.\0A\00", align 1
@.str.10.20 = private unnamed_addr constant [35 x i8] c"Stored %ld bytes of Binsize Info.\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Stored %ld byte Huffman tree .\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Stored %ld bytes of encoded data.\0A\00", align 1
@.str.13 = private unnamed_addr constant [70 x i8] c"Storage total: %ld bytes (%3f bits/pixel)\0ACompression ratio = %2f:1.\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Error reading byte image file.\0A\00", align 1
@.str.1.22 = private unnamed_addr constant [56 x i8] c"ReadMatrixFromPGMStream(): File not P2 Or P5 PGM image\0A\00", align 1
@.str.2.23 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@.str.3.24 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@.str.4.25 = private unnamed_addr constant [63 x i8] c"ReadMatrixFromPGMStream():  File is not a 255-shade PGM image\0A\00", align 1
@.str.5.26 = private unnamed_addr constant [61 x i8] c"ReadMatrixFromPGMStream():  Unable to alocate enough memory\0A\00", align 1
@.str.6.27 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.7.28 = private unnamed_addr constant [32 x i8] c"Error writing byte image file.\0A\00", align 1
@.str.8.29 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.9.30 = private unnamed_addr constant [33 x i8] c"# CREATOR: UNEPIC, Version %.2f\0A\00", align 1
@.str.10.31 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.11.32 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.1.35 = private unnamed_addr constant [40 x i8] c"Error in histogram.  Unable to encode.\0A\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"Error reading Huffman Tree!\0A\00", align 1
@.str.2.37 = private unnamed_addr constant [20 x i8] c"Symbol Histogram: \0A\00", align 1
@.str.3.38 = private unnamed_addr constant [11 x i8] c"%04x: %d  \00", align 1
@.str.4.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.43 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.3.45 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.4.46 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.5.47 = private unnamed_addr constant [3 x i8] c"-x\00", align 1
@.str.6.48 = private unnamed_addr constant [3 x i8] c"-y\00", align 1
@.str.7.49 = private unnamed_addr constant [27 x i8] c"Unrecognized argument: %s\0A\00", align 1
@.str.8.50 = private unnamed_addr constant [42 x i8] c"Error: num_levels must be greater than 0\0A\00", align 1
@.str.9.51 = private unnamed_addr constant [53 x i8] c"Error: cannot build pyramid to more than %d levels.\0A\00", align 1
@.str.10.52 = private unnamed_addr constant [36 x i8] c"Error: dimensions too big (%d,%d).\0A\00", align 1
@.str.11.53 = private unnamed_addr constant [78 x i8] c"Error: dimensions (%d,%d) are not divisible by 2^num_levels (num_levels=%d).\0A\00", align 1
@.str.12.54 = private unnamed_addr constant [76 x i8] c"Error: dimensions (%d,%d) divided by 2^num_levels must be greater than %d.\0A\00", align 1
@.str.13.55 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.14 = private unnamed_addr constant [79 x i8] c"Usage: \0Aepic infile [-o outfile] [-x xdim] [-y ydim] [-l levels] [-b binsize]\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"Usage:  unepic epicfile [outfile]\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"The file %s is not an EPIC file!\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c".U\00", align 1
@.str.58 = private unnamed_addr constant [52 x i8] c"QUANTIZE: bin_size %d is too small. Changed to %d.\0A\00", align 1
@.str.61 = private unnamed_addr constant [56 x i8] c"Zero length overflow error in run_length_encode_zeros!\0A\00", align 1
@.str.1.62 = private unnamed_addr constant [50 x i8] c"Value overflow error in run_length_encode_zeros!\0A\00", align 1
@temp_byte = common dso_local global i8 0, align 1
@temp_short = common dso_local global i16 0, align 2
@temp_int = common dso_local global i32 0, align 4
@.str.71 = private unnamed_addr constant [47 x i8] c"\0AERROR: unable to allocate sufficient memory!\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [30 x i8] c"\0AError opening file %s (%s).\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @build_pyr(float* %0, i32 %1, i32 %2, i32 %3, float* %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store float* %4, float** %13, align 8
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %17, align 4
  br label %21

21:                                               ; preds = %34, %7
  %22 = load i32, i32* %18, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load float*, float** %9, align 8
  %27 = load i32, i32* %16, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load float*, float** %13, align 8
  %30 = load float*, float** %14, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load float*, float** %9, align 8
  %33 = call i32 @build_level(float* %26, i32 %27, i32 %28, float* %29, float* %30, i32 %31, float* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %18, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %16, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %17, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %17, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @build_level(float* %0, i32 %1, i32 %2, float* %3, float* %4, i32 %5, float* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store float* %3, float** %12, align 8
  store float* %4, float** %13, align 8
  store i32 %5, i32* %14, align 4
  store float* %6, float** %15, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %19, align 4
  %24 = load i32, i32* %14, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %26)
  %28 = bitcast i8* %27 to float*
  store float* %28, float** %18, align 8
  %29 = load i32, i32* %19, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = udiv i64 %31, 2
  %33 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %32)
  %34 = bitcast i8* %33 to float*
  store float* %34, float** %16, align 8
  %35 = load i32, i32* %19, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = udiv i64 %37, 2
  %39 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %38)
  %40 = bitcast i8* %39 to float*
  store float* %40, float** %17, align 8
  %41 = load float*, float** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load float*, float** %12, align 8
  %45 = load float*, float** %18, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load float*, float** %17, align 8
  %48 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %41, i32 %42, i32 %43, float* %44, float* %45, i32 %46, i32 1, i32 0, i32 2, i32 0, i32 1, float* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %49 = load float*, float** %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load float*, float** %13, align 8
  %53 = load float*, float** %18, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load float*, float** %16, align 8
  %56 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %49, i32 %50, i32 %51, float* %52, float* %53, i32 %54, i32 1, i32 1, i32 2, i32 0, i32 1, float* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %57 = load i32, i32* %10, align 4
  %58 = sdiv i32 %57, 2
  store i32 %58, i32* %10, align 4
  %59 = load float*, float** %17, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load float*, float** %12, align 8
  %63 = load float*, float** %18, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load float*, float** %15, align 8
  %66 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %59, i32 %60, i32 %61, float* %62, float* %63, i32 1, i32 %64, i32 0, i32 1, i32 0, i32 2, float* %65, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %67 = load float*, float** %17, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load float*, float** %13, align 8
  %71 = load float*, float** %18, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %19, align 4
  %74 = sdiv i32 %73, 4
  %75 = load float*, float** %15, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds float, float* %75, i64 %76
  store float* %77, float** %15, align 8
  %78 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %67, i32 %68, i32 %69, float* %70, float* %71, i32 1, i32 %72, i32 0, i32 1, i32 1, i32 2, float* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %79 = load float*, float** %16, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load float*, float** %12, align 8
  %83 = load float*, float** %18, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %19, align 4
  %86 = sdiv i32 %85, 4
  %87 = load float*, float** %15, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %15, align 8
  %90 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %79, i32 %80, i32 %81, float* %82, float* %83, i32 1, i32 %84, i32 0, i32 1, i32 0, i32 2, float* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %91 = load float*, float** %15, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sdiv i32 %92, 2
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @internal_transpose(float* %91, i32 %93, i32 %94)
  %96 = load float*, float** %16, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load float*, float** %13, align 8
  %100 = load float*, float** %18, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %19, align 4
  %103 = sdiv i32 %102, 4
  %104 = load float*, float** %15, align 8
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds float, float* %104, i64 %105
  store float* %106, float** %15, align 8
  %107 = call i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...) bitcast (i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*)* @internal_filter to i32 (float*, i32, i32, float*, float*, i32, i32, i32, i32, i32, i32, float*, i8*, i32, ...)*)(float* %96, i32 %97, i32 %98, float* %99, float* %100, i32 1, i32 %101, i32 0, i32 1, i32 1, i32 2, float* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  %108 = load float*, float** %18, align 8
  %109 = bitcast float* %108 to i8*
  %110 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %109)
  %111 = load float*, float** %16, align 8
  %112 = bitcast float* %111 to i8*
  %113 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %112)
  %114 = load float*, float** %17, align 8
  %115 = bitcast float* %114 to i8*
  %116 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %115)
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @internal_transpose(float* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %16

16:                                               ; preds = %57, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %28, %20
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %22, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load float*, float** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  store float %41, float* %11, align 4
  %42 = load float*, float** %5, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %42, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  store float %46, float* %50, align 4
  %51 = load float, float* %11, align 4
  %52 = load float*, float** %5, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  store float %51, float* %55, align 4
  br label %56

56:                                               ; preds = %36, %32
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %16

60:                                               ; preds = %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @internal_filter(float* %0, i32 %1, i32 %2, float* %3, float* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, float* %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float*, align 8
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca float*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32 (...)*, align 8
  store float* %0, float** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store float* %3, float** %18, align 8
  store float* %4, float** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store float* %11, float** %26, align 8
  store i8* %12, i8** %27, align 8
  %50 = load i32, i32* %20, align 4
  %51 = load i32, i32* %21, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %34, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %20, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %37, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %21, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %16, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %38, align 4
  %61 = load i32, i32* %20, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %41, align 4
  %63 = load i32, i32* %21, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %42, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %41, align 4
  %67 = sub nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %43, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %42, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %44, align 4
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %16, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %45, align 4
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %22, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %23, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %23, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %47, align 4
  %84 = load i8*, i8** %27, align 8
  %85 = call i32 (...)* (i8*, ...) bitcast (i32 (...)* (i8*)* @edge_function to i32 (...)* (i8*, ...)*)(i8* %84)
  store i32 (...)* %85, i32 (...)** %49, align 8
  %86 = load i32 (...)*, i32 (...)** %49, align 8
  %87 = icmp ne i32 (...)* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %13
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8*, i8** %27, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %14, align 4
  br label %820

92:                                               ; preds = %13
  %93 = load i32, i32* %24, align 4
  %94 = load i32, i32* %42, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %97

97:                                               ; preds = %318, %92
  %98 = load i32, i32* %35, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %322

100:                                              ; preds = %97
  %101 = load i32, i32* %22, align 4
  %102 = load i32, i32* %41, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %33, align 4
  br label %105

105:                                              ; preds = %164, %100
  %106 = load i32, i32* %33, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %170

108:                                              ; preds = %105
  %109 = load i32 (...)*, i32 (...)** %49, align 8
  %110 = load float*, float** %18, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %33, align 4
  %114 = load i32, i32* %35, align 4
  %115 = load float*, float** %19, align 8
  %116 = bitcast i32 (...)* %109 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %117 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %116(float* %110, i32 %111, i32 %112, i32 %113, i32 %114, float* %115, i32 0)
  store double 0.000000e+00, double* %28, align 8
  %118 = load i32, i32* %20, align 4
  store i32 %118, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %29, align 4
  br label %119

119:                                              ; preds = %150, %108
  %120 = load i32, i32* %31, align 4
  %121 = load i32, i32* %34, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %157

123:                                              ; preds = %119
  %124 = load i32, i32* %32, align 4
  store i32 %124, i32* %30, align 4
  br label %125

125:                                              ; preds = %144, %123
  %126 = load i32, i32* %29, align 4
  %127 = load i32, i32* %31, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %149

129:                                              ; preds = %125
  %130 = load float*, float** %15, align 8
  %131 = load i32, i32* %30, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds float, float* %130, i64 %132
  %134 = load float, float* %133, align 4
  %135 = load float*, float** %19, align 8
  %136 = load i32, i32* %29, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fmul float %134, %139
  %141 = fpext float %140 to double
  %142 = load double, double* %28, align 8
  %143 = fadd double %142, %141
  store double %143, double* %28, align 8
  br label %144

144:                                              ; preds = %129
  %145 = load i32, i32* %29, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %29, align 4
  %147 = load i32, i32* %30, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %30, align 4
  br label %125

149:                                              ; preds = %125
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %16, align 4
  %152 = load i32, i32* %32, align 4
  %153 = add nsw i32 %152, %151
  store i32 %153, i32* %32, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %31, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %31, align 4
  br label %119

157:                                              ; preds = %119
  %158 = load double, double* %28, align 8
  %159 = fptrunc double %158 to float
  %160 = load float*, float** %26, align 8
  %161 = load i32, i32* %36, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %160, i64 %162
  store float %159, float* %163, align 4
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %23, align 4
  %166 = load i32, i32* %33, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %33, align 4
  %168 = load i32, i32* %36, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %36, align 4
  br label %105

170:                                              ; preds = %105
  %171 = load i32, i32* %33, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %40, align 4
  %173 = load i32 (...)*, i32 (...)** %49, align 8
  %174 = load float*, float** %18, align 8
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* %21, align 4
  %177 = load i32, i32* %35, align 4
  %178 = load float*, float** %19, align 8
  %179 = bitcast i32 (...)* %173 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %180 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %179(float* %174, i32 %175, i32 %176, i32 0, i32 %177, float* %178, i32 0)
  %181 = load i32, i32* %40, align 4
  store i32 %181, i32* %33, align 4
  br label %182

182:                                              ; preds = %235, %170
  %183 = load i32, i32* %33, align 4
  %184 = load i32, i32* %37, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %241

186:                                              ; preds = %182
  store double 0.000000e+00, double* %28, align 8
  %187 = load i32, i32* %20, align 4
  store i32 %187, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %29, align 4
  br label %188

188:                                              ; preds = %221, %186
  %189 = load i32, i32* %31, align 4
  %190 = load i32, i32* %34, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %228

192:                                              ; preds = %188
  %193 = load i32, i32* %33, align 4
  %194 = load i32, i32* %32, align 4
  %195 = add nsw i32 %193, %194
  store i32 %195, i32* %30, align 4
  br label %196

196:                                              ; preds = %215, %192
  %197 = load i32, i32* %29, align 4
  %198 = load i32, i32* %31, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %220

200:                                              ; preds = %196
  %201 = load float*, float** %15, align 8
  %202 = load i32, i32* %30, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  %205 = load float, float* %204, align 4
  %206 = load float*, float** %19, align 8
  %207 = load i32, i32* %29, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fmul float %205, %210
  %212 = fpext float %211 to double
  %213 = load double, double* %28, align 8
  %214 = fadd double %213, %212
  store double %214, double* %28, align 8
  br label %215

215:                                              ; preds = %200
  %216 = load i32, i32* %29, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %29, align 4
  %218 = load i32, i32* %30, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %30, align 4
  br label %196

220:                                              ; preds = %196
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %32, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %32, align 4
  %225 = load i32, i32* %20, align 4
  %226 = load i32, i32* %31, align 4
  %227 = add nsw i32 %226, %225
  store i32 %227, i32* %31, align 4
  br label %188

228:                                              ; preds = %188
  %229 = load double, double* %28, align 8
  %230 = fptrunc double %229 to float
  %231 = load float*, float** %26, align 8
  %232 = load i32, i32* %36, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  store float %230, float* %234, align 4
  br label %235

235:                                              ; preds = %228
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %33, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %33, align 4
  %239 = load i32, i32* %36, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %36, align 4
  br label %182

241:                                              ; preds = %182
  %242 = load i32, i32* %36, align 4
  %243 = load i32, i32* %47, align 4
  %244 = add nsw i32 %242, %243
  store i32 %244, i32* %48, align 4
  %245 = load i32, i32* %37, align 4
  %246 = sub nsw i32 1, %245
  %247 = load i32, i32* %33, align 4
  %248 = add nsw i32 %247, %246
  store i32 %248, i32* %33, align 4
  br label %249

249:                                              ; preds = %311, %241
  %250 = load i32, i32* %33, align 4
  %251 = load i32, i32* %43, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %317

253:                                              ; preds = %249
  %254 = load i32 (...)*, i32 (...)** %49, align 8
  %255 = load float*, float** %18, align 8
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %21, align 4
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %35, align 4
  %260 = load float*, float** %19, align 8
  %261 = bitcast i32 (...)* %254 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %262 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %261(float* %255, i32 %256, i32 %257, i32 %258, i32 %259, float* %260, i32 0)
  store double 0.000000e+00, double* %28, align 8
  %263 = load i32, i32* %20, align 4
  store i32 %263, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %29, align 4
  br label %264

264:                                              ; preds = %297, %253
  %265 = load i32, i32* %31, align 4
  %266 = load i32, i32* %34, align 4
  %267 = icmp sle i32 %265, %266
  br i1 %267, label %268, label %304

268:                                              ; preds = %264
  %269 = load i32, i32* %32, align 4
  %270 = load i32, i32* %37, align 4
  %271 = add nsw i32 %269, %270
  store i32 %271, i32* %30, align 4
  br label %272

272:                                              ; preds = %291, %268
  %273 = load i32, i32* %29, align 4
  %274 = load i32, i32* %31, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %296

276:                                              ; preds = %272
  %277 = load float*, float** %15, align 8
  %278 = load i32, i32* %30, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %277, i64 %279
  %281 = load float, float* %280, align 4
  %282 = load float*, float** %19, align 8
  %283 = load i32, i32* %29, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %282, i64 %284
  %286 = load float, float* %285, align 4
  %287 = fmul float %281, %286
  %288 = fpext float %287 to double
  %289 = load double, double* %28, align 8
  %290 = fadd double %289, %288
  store double %290, double* %28, align 8
  br label %291

291:                                              ; preds = %276
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %29, align 4
  %294 = load i32, i32* %30, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %30, align 4
  br label %272

296:                                              ; preds = %272
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %16, align 4
  %299 = load i32, i32* %32, align 4
  %300 = add nsw i32 %299, %298
  store i32 %300, i32* %32, align 4
  %301 = load i32, i32* %20, align 4
  %302 = load i32, i32* %31, align 4
  %303 = add nsw i32 %302, %301
  store i32 %303, i32* %31, align 4
  br label %264

304:                                              ; preds = %264
  %305 = load double, double* %28, align 8
  %306 = fptrunc double %305 to float
  %307 = load float*, float** %26, align 8
  %308 = load i32, i32* %36, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  store float %306, float* %310, align 4
  br label %311

311:                                              ; preds = %304
  %312 = load i32, i32* %23, align 4
  %313 = load i32, i32* %33, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %33, align 4
  %315 = load i32, i32* %36, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %36, align 4
  br label %249

317:                                              ; preds = %249
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* %25, align 4
  %320 = load i32, i32* %35, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %35, align 4
  br label %97

322:                                              ; preds = %97
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %35, align 4
  %325 = add nsw i32 %324, 1
  %326 = mul nsw i32 %323, %325
  store i32 %326, i32* %39, align 4
  %327 = load i32, i32* %36, align 4
  store i32 %327, i32* %46, align 4
  %328 = load i32, i32* %22, align 4
  %329 = load i32, i32* %41, align 4
  %330 = sub nsw i32 %328, %329
  %331 = sub nsw i32 %330, 1
  store i32 %331, i32* %33, align 4
  br label %332

332:                                              ; preds = %408, %322
  %333 = load i32, i32* %33, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %412

335:                                              ; preds = %332
  %336 = load i32, i32* %46, align 4
  store i32 %336, i32* %36, align 4
  %337 = load i32 (...)*, i32 (...)** %49, align 8
  %338 = load float*, float** %18, align 8
  %339 = load i32, i32* %20, align 4
  %340 = load i32, i32* %21, align 4
  %341 = load i32, i32* %33, align 4
  %342 = load float*, float** %19, align 8
  %343 = bitcast i32 (...)* %337 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %344 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %343(float* %338, i32 %339, i32 %340, i32 %341, i32 0, float* %342, i32 0)
  %345 = load i32, i32* %39, align 4
  store i32 %345, i32* %35, align 4
  br label %346

346:                                              ; preds = %398, %335
  %347 = load i32, i32* %35, align 4
  %348 = load i32, i32* %38, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %405

350:                                              ; preds = %346
  store double 0.000000e+00, double* %28, align 8
  %351 = load i32, i32* %20, align 4
  store i32 %351, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %352 = load i32, i32* %35, align 4
  store i32 %352, i32* %32, align 4
  br label %353

353:                                              ; preds = %384, %350
  %354 = load i32, i32* %31, align 4
  %355 = load i32, i32* %34, align 4
  %356 = icmp sle i32 %354, %355
  br i1 %356, label %357, label %391

357:                                              ; preds = %353
  %358 = load i32, i32* %32, align 4
  store i32 %358, i32* %30, align 4
  br label %359

359:                                              ; preds = %378, %357
  %360 = load i32, i32* %29, align 4
  %361 = load i32, i32* %31, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %383

363:                                              ; preds = %359
  %364 = load float*, float** %15, align 8
  %365 = load i32, i32* %30, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds float, float* %364, i64 %366
  %368 = load float, float* %367, align 4
  %369 = load float*, float** %19, align 8
  %370 = load i32, i32* %29, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds float, float* %369, i64 %371
  %373 = load float, float* %372, align 4
  %374 = fmul float %368, %373
  %375 = fpext float %374 to double
  %376 = load double, double* %28, align 8
  %377 = fadd double %376, %375
  store double %377, double* %28, align 8
  br label %378

378:                                              ; preds = %363
  %379 = load i32, i32* %29, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %29, align 4
  %381 = load i32, i32* %30, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %30, align 4
  br label %359

383:                                              ; preds = %359
  br label %384

384:                                              ; preds = %383
  %385 = load i32, i32* %16, align 4
  %386 = load i32, i32* %32, align 4
  %387 = add nsw i32 %386, %385
  store i32 %387, i32* %32, align 4
  %388 = load i32, i32* %20, align 4
  %389 = load i32, i32* %31, align 4
  %390 = add nsw i32 %389, %388
  store i32 %390, i32* %31, align 4
  br label %353

391:                                              ; preds = %353
  %392 = load double, double* %28, align 8
  %393 = fptrunc double %392 to float
  %394 = load float*, float** %26, align 8
  %395 = load i32, i32* %36, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds float, float* %394, i64 %396
  store float %393, float* %397, align 4
  br label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %45, align 4
  %400 = load i32, i32* %35, align 4
  %401 = add nsw i32 %400, %399
  store i32 %401, i32* %35, align 4
  %402 = load i32, i32* %47, align 4
  %403 = load i32, i32* %36, align 4
  %404 = add nsw i32 %403, %402
  store i32 %404, i32* %36, align 4
  br label %346

405:                                              ; preds = %346
  %406 = load i32, i32* %46, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %46, align 4
  br label %408

408:                                              ; preds = %405
  %409 = load i32, i32* %23, align 4
  %410 = load i32, i32* %33, align 4
  %411 = add nsw i32 %410, %409
  store i32 %411, i32* %33, align 4
  br label %332

412:                                              ; preds = %332
  %413 = load i32 (...)*, i32 (...)** %49, align 8
  %414 = load float*, float** %18, align 8
  %415 = load i32, i32* %20, align 4
  %416 = load i32, i32* %21, align 4
  %417 = load float*, float** %19, align 8
  %418 = bitcast i32 (...)* %413 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %419 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %418(float* %414, i32 %415, i32 %416, i32 0, i32 0, float* %417, i32 0)
  %420 = load i32, i32* %39, align 4
  store i32 %420, i32* %35, align 4
  br label %421

421:                                              ; preds = %492, %412
  %422 = load i32, i32* %35, align 4
  %423 = load i32, i32* %38, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %496

425:                                              ; preds = %421
  %426 = load i32, i32* %46, align 4
  store i32 %426, i32* %36, align 4
  %427 = load i32, i32* %40, align 4
  store i32 %427, i32* %33, align 4
  br label %428

428:                                              ; preds = %482, %425
  %429 = load i32, i32* %33, align 4
  %430 = load i32, i32* %37, align 4
  %431 = icmp slt i32 %429, %430
  br i1 %431, label %432, label %488

432:                                              ; preds = %428
  store double 0.000000e+00, double* %28, align 8
  %433 = load i32, i32* %20, align 4
  store i32 %433, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %434 = load i32, i32* %35, align 4
  store i32 %434, i32* %32, align 4
  br label %435

435:                                              ; preds = %468, %432
  %436 = load i32, i32* %31, align 4
  %437 = load i32, i32* %34, align 4
  %438 = icmp sle i32 %436, %437
  br i1 %438, label %439, label %475

439:                                              ; preds = %435
  %440 = load i32, i32* %33, align 4
  %441 = load i32, i32* %32, align 4
  %442 = add nsw i32 %440, %441
  store i32 %442, i32* %30, align 4
  br label %443

443:                                              ; preds = %462, %439
  %444 = load i32, i32* %29, align 4
  %445 = load i32, i32* %31, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %467

447:                                              ; preds = %443
  %448 = load float*, float** %15, align 8
  %449 = load i32, i32* %30, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds float, float* %448, i64 %450
  %452 = load float, float* %451, align 4
  %453 = load float*, float** %19, align 8
  %454 = load i32, i32* %29, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds float, float* %453, i64 %455
  %457 = load float, float* %456, align 4
  %458 = fmul float %452, %457
  %459 = fpext float %458 to double
  %460 = load double, double* %28, align 8
  %461 = fadd double %460, %459
  store double %461, double* %28, align 8
  br label %462

462:                                              ; preds = %447
  %463 = load i32, i32* %29, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %29, align 4
  %465 = load i32, i32* %30, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %30, align 4
  br label %443

467:                                              ; preds = %443
  br label %468

468:                                              ; preds = %467
  %469 = load i32, i32* %16, align 4
  %470 = load i32, i32* %32, align 4
  %471 = add nsw i32 %470, %469
  store i32 %471, i32* %32, align 4
  %472 = load i32, i32* %20, align 4
  %473 = load i32, i32* %31, align 4
  %474 = add nsw i32 %473, %472
  store i32 %474, i32* %31, align 4
  br label %435

475:                                              ; preds = %435
  %476 = load double, double* %28, align 8
  %477 = fptrunc double %476 to float
  %478 = load float*, float** %26, align 8
  %479 = load i32, i32* %36, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds float, float* %478, i64 %480
  store float %477, float* %481, align 4
  br label %482

482:                                              ; preds = %475
  %483 = load i32, i32* %23, align 4
  %484 = load i32, i32* %33, align 4
  %485 = add nsw i32 %484, %483
  store i32 %485, i32* %33, align 4
  %486 = load i32, i32* %36, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %36, align 4
  br label %428

488:                                              ; preds = %428
  %489 = load i32, i32* %47, align 4
  %490 = load i32, i32* %46, align 4
  %491 = add nsw i32 %490, %489
  store i32 %491, i32* %46, align 4
  br label %492

492:                                              ; preds = %488
  %493 = load i32, i32* %45, align 4
  %494 = load i32, i32* %35, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %35, align 4
  br label %421

496:                                              ; preds = %421
  %497 = load i32, i32* %48, align 4
  store i32 %497, i32* %46, align 4
  %498 = load i32, i32* %37, align 4
  %499 = sub nsw i32 1, %498
  %500 = load i32, i32* %33, align 4
  %501 = add nsw i32 %500, %499
  store i32 %501, i32* %33, align 4
  br label %502

502:                                              ; preds = %581, %496
  %503 = load i32, i32* %33, align 4
  %504 = load i32, i32* %43, align 4
  %505 = icmp slt i32 %503, %504
  br i1 %505, label %506, label %585

506:                                              ; preds = %502
  %507 = load i32, i32* %46, align 4
  store i32 %507, i32* %36, align 4
  %508 = load i32 (...)*, i32 (...)** %49, align 8
  %509 = load float*, float** %18, align 8
  %510 = load i32, i32* %20, align 4
  %511 = load i32, i32* %21, align 4
  %512 = load i32, i32* %33, align 4
  %513 = load float*, float** %19, align 8
  %514 = bitcast i32 (...)* %508 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %515 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %514(float* %509, i32 %510, i32 %511, i32 %512, i32 0, float* %513, i32 0)
  %516 = load i32, i32* %39, align 4
  store i32 %516, i32* %35, align 4
  br label %517

517:                                              ; preds = %571, %506
  %518 = load i32, i32* %35, align 4
  %519 = load i32, i32* %38, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %578

521:                                              ; preds = %517
  store double 0.000000e+00, double* %28, align 8
  %522 = load i32, i32* %20, align 4
  store i32 %522, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %523 = load i32, i32* %35, align 4
  store i32 %523, i32* %32, align 4
  br label %524

524:                                              ; preds = %557, %521
  %525 = load i32, i32* %31, align 4
  %526 = load i32, i32* %34, align 4
  %527 = icmp sle i32 %525, %526
  br i1 %527, label %528, label %564

528:                                              ; preds = %524
  %529 = load i32, i32* %32, align 4
  %530 = load i32, i32* %37, align 4
  %531 = add nsw i32 %529, %530
  store i32 %531, i32* %30, align 4
  br label %532

532:                                              ; preds = %551, %528
  %533 = load i32, i32* %29, align 4
  %534 = load i32, i32* %31, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %556

536:                                              ; preds = %532
  %537 = load float*, float** %15, align 8
  %538 = load i32, i32* %30, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds float, float* %537, i64 %539
  %541 = load float, float* %540, align 4
  %542 = load float*, float** %19, align 8
  %543 = load i32, i32* %29, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds float, float* %542, i64 %544
  %546 = load float, float* %545, align 4
  %547 = fmul float %541, %546
  %548 = fpext float %547 to double
  %549 = load double, double* %28, align 8
  %550 = fadd double %549, %548
  store double %550, double* %28, align 8
  br label %551

551:                                              ; preds = %536
  %552 = load i32, i32* %29, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %29, align 4
  %554 = load i32, i32* %30, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %30, align 4
  br label %532

556:                                              ; preds = %532
  br label %557

557:                                              ; preds = %556
  %558 = load i32, i32* %16, align 4
  %559 = load i32, i32* %32, align 4
  %560 = add nsw i32 %559, %558
  store i32 %560, i32* %32, align 4
  %561 = load i32, i32* %20, align 4
  %562 = load i32, i32* %31, align 4
  %563 = add nsw i32 %562, %561
  store i32 %563, i32* %31, align 4
  br label %524

564:                                              ; preds = %524
  %565 = load double, double* %28, align 8
  %566 = fptrunc double %565 to float
  %567 = load float*, float** %26, align 8
  %568 = load i32, i32* %36, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds float, float* %567, i64 %569
  store float %566, float* %570, align 4
  br label %571

571:                                              ; preds = %564
  %572 = load i32, i32* %45, align 4
  %573 = load i32, i32* %35, align 4
  %574 = add nsw i32 %573, %572
  store i32 %574, i32* %35, align 4
  %575 = load i32, i32* %47, align 4
  %576 = load i32, i32* %36, align 4
  %577 = add nsw i32 %576, %575
  store i32 %577, i32* %36, align 4
  br label %517

578:                                              ; preds = %517
  %579 = load i32, i32* %46, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %46, align 4
  br label %581

581:                                              ; preds = %578
  %582 = load i32, i32* %23, align 4
  %583 = load i32, i32* %33, align 4
  %584 = add nsw i32 %583, %582
  store i32 %584, i32* %33, align 4
  br label %502

585:                                              ; preds = %502
  %586 = load i32, i32* %47, align 4
  %587 = sub nsw i32 %586, 1
  %588 = load i32, i32* %36, align 4
  %589 = sub nsw i32 %588, %587
  store i32 %589, i32* %36, align 4
  %590 = load i32, i32* %35, align 4
  %591 = load i32, i32* %38, align 4
  %592 = sub nsw i32 %590, %591
  %593 = load i32, i32* %16, align 4
  %594 = sdiv i32 %592, %593
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %35, align 4
  br label %596

596:                                              ; preds = %816, %585
  %597 = load i32, i32* %35, align 4
  %598 = load i32, i32* %44, align 4
  %599 = icmp slt i32 %597, %598
  br i1 %599, label %600, label %820

600:                                              ; preds = %596
  %601 = load i32, i32* %22, align 4
  %602 = load i32, i32* %41, align 4
  %603 = sub nsw i32 %601, %602
  %604 = sub nsw i32 %603, 1
  store i32 %604, i32* %33, align 4
  br label %605

605:                                              ; preds = %665, %600
  %606 = load i32, i32* %33, align 4
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %671

608:                                              ; preds = %605
  %609 = load i32 (...)*, i32 (...)** %49, align 8
  %610 = load float*, float** %18, align 8
  %611 = load i32, i32* %20, align 4
  %612 = load i32, i32* %21, align 4
  %613 = load i32, i32* %33, align 4
  %614 = load i32, i32* %35, align 4
  %615 = load float*, float** %19, align 8
  %616 = bitcast i32 (...)* %609 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %617 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %616(float* %610, i32 %611, i32 %612, i32 %613, i32 %614, float* %615, i32 0)
  store double 0.000000e+00, double* %28, align 8
  %618 = load i32, i32* %20, align 4
  store i32 %618, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %619 = load i32, i32* %38, align 4
  store i32 %619, i32* %32, align 4
  br label %620

620:                                              ; preds = %651, %608
  %621 = load i32, i32* %31, align 4
  %622 = load i32, i32* %34, align 4
  %623 = icmp sle i32 %621, %622
  br i1 %623, label %624, label %658

624:                                              ; preds = %620
  %625 = load i32, i32* %32, align 4
  store i32 %625, i32* %30, align 4
  br label %626

626:                                              ; preds = %645, %624
  %627 = load i32, i32* %29, align 4
  %628 = load i32, i32* %31, align 4
  %629 = icmp slt i32 %627, %628
  br i1 %629, label %630, label %650

630:                                              ; preds = %626
  %631 = load float*, float** %15, align 8
  %632 = load i32, i32* %30, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds float, float* %631, i64 %633
  %635 = load float, float* %634, align 4
  %636 = load float*, float** %19, align 8
  %637 = load i32, i32* %29, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds float, float* %636, i64 %638
  %640 = load float, float* %639, align 4
  %641 = fmul float %635, %640
  %642 = fpext float %641 to double
  %643 = load double, double* %28, align 8
  %644 = fadd double %643, %642
  store double %644, double* %28, align 8
  br label %645

645:                                              ; preds = %630
  %646 = load i32, i32* %29, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %29, align 4
  %648 = load i32, i32* %30, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %30, align 4
  br label %626

650:                                              ; preds = %626
  br label %651

651:                                              ; preds = %650
  %652 = load i32, i32* %16, align 4
  %653 = load i32, i32* %32, align 4
  %654 = add nsw i32 %653, %652
  store i32 %654, i32* %32, align 4
  %655 = load i32, i32* %20, align 4
  %656 = load i32, i32* %31, align 4
  %657 = add nsw i32 %656, %655
  store i32 %657, i32* %31, align 4
  br label %620

658:                                              ; preds = %620
  %659 = load double, double* %28, align 8
  %660 = fptrunc double %659 to float
  %661 = load float*, float** %26, align 8
  %662 = load i32, i32* %36, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds float, float* %661, i64 %663
  store float %660, float* %664, align 4
  br label %665

665:                                              ; preds = %658
  %666 = load i32, i32* %23, align 4
  %667 = load i32, i32* %33, align 4
  %668 = add nsw i32 %667, %666
  store i32 %668, i32* %33, align 4
  %669 = load i32, i32* %36, align 4
  %670 = add nsw i32 %669, 1
  store i32 %670, i32* %36, align 4
  br label %605

671:                                              ; preds = %605
  %672 = load i32 (...)*, i32 (...)** %49, align 8
  %673 = load float*, float** %18, align 8
  %674 = load i32, i32* %20, align 4
  %675 = load i32, i32* %21, align 4
  %676 = load i32, i32* %35, align 4
  %677 = load float*, float** %19, align 8
  %678 = bitcast i32 (...)* %672 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %679 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %678(float* %673, i32 %674, i32 %675, i32 0, i32 %676, float* %677, i32 0)
  %680 = load i32, i32* %40, align 4
  store i32 %680, i32* %33, align 4
  br label %681

681:                                              ; preds = %735, %671
  %682 = load i32, i32* %33, align 4
  %683 = load i32, i32* %37, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %741

685:                                              ; preds = %681
  store double 0.000000e+00, double* %28, align 8
  %686 = load i32, i32* %20, align 4
  store i32 %686, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %687 = load i32, i32* %38, align 4
  store i32 %687, i32* %32, align 4
  br label %688

688:                                              ; preds = %721, %685
  %689 = load i32, i32* %31, align 4
  %690 = load i32, i32* %34, align 4
  %691 = icmp sle i32 %689, %690
  br i1 %691, label %692, label %728

692:                                              ; preds = %688
  %693 = load i32, i32* %33, align 4
  %694 = load i32, i32* %32, align 4
  %695 = add nsw i32 %693, %694
  store i32 %695, i32* %30, align 4
  br label %696

696:                                              ; preds = %715, %692
  %697 = load i32, i32* %29, align 4
  %698 = load i32, i32* %31, align 4
  %699 = icmp slt i32 %697, %698
  br i1 %699, label %700, label %720

700:                                              ; preds = %696
  %701 = load float*, float** %15, align 8
  %702 = load i32, i32* %30, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds float, float* %701, i64 %703
  %705 = load float, float* %704, align 4
  %706 = load float*, float** %19, align 8
  %707 = load i32, i32* %29, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds float, float* %706, i64 %708
  %710 = load float, float* %709, align 4
  %711 = fmul float %705, %710
  %712 = fpext float %711 to double
  %713 = load double, double* %28, align 8
  %714 = fadd double %713, %712
  store double %714, double* %28, align 8
  br label %715

715:                                              ; preds = %700
  %716 = load i32, i32* %29, align 4
  %717 = add nsw i32 %716, 1
  store i32 %717, i32* %29, align 4
  %718 = load i32, i32* %30, align 4
  %719 = add nsw i32 %718, 1
  store i32 %719, i32* %30, align 4
  br label %696

720:                                              ; preds = %696
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %16, align 4
  %723 = load i32, i32* %32, align 4
  %724 = add nsw i32 %723, %722
  store i32 %724, i32* %32, align 4
  %725 = load i32, i32* %20, align 4
  %726 = load i32, i32* %31, align 4
  %727 = add nsw i32 %726, %725
  store i32 %727, i32* %31, align 4
  br label %688

728:                                              ; preds = %688
  %729 = load double, double* %28, align 8
  %730 = fptrunc double %729 to float
  %731 = load float*, float** %26, align 8
  %732 = load i32, i32* %36, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds float, float* %731, i64 %733
  store float %730, float* %734, align 4
  br label %735

735:                                              ; preds = %728
  %736 = load i32, i32* %23, align 4
  %737 = load i32, i32* %33, align 4
  %738 = add nsw i32 %737, %736
  store i32 %738, i32* %33, align 4
  %739 = load i32, i32* %36, align 4
  %740 = add nsw i32 %739, 1
  store i32 %740, i32* %36, align 4
  br label %681

741:                                              ; preds = %681
  %742 = load i32, i32* %37, align 4
  %743 = sub nsw i32 1, %742
  %744 = load i32, i32* %33, align 4
  %745 = add nsw i32 %744, %743
  store i32 %745, i32* %33, align 4
  br label %746

746:                                              ; preds = %809, %741
  %747 = load i32, i32* %33, align 4
  %748 = load i32, i32* %43, align 4
  %749 = icmp slt i32 %747, %748
  br i1 %749, label %750, label %815

750:                                              ; preds = %746
  %751 = load i32 (...)*, i32 (...)** %49, align 8
  %752 = load float*, float** %18, align 8
  %753 = load i32, i32* %20, align 4
  %754 = load i32, i32* %21, align 4
  %755 = load i32, i32* %33, align 4
  %756 = load i32, i32* %35, align 4
  %757 = load float*, float** %19, align 8
  %758 = bitcast i32 (...)* %751 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %759 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %758(float* %752, i32 %753, i32 %754, i32 %755, i32 %756, float* %757, i32 0)
  store double 0.000000e+00, double* %28, align 8
  %760 = load i32, i32* %20, align 4
  store i32 %760, i32* %31, align 4
  store i32 0, i32* %29, align 4
  %761 = load i32, i32* %38, align 4
  store i32 %761, i32* %32, align 4
  br label %762

762:                                              ; preds = %795, %750
  %763 = load i32, i32* %31, align 4
  %764 = load i32, i32* %34, align 4
  %765 = icmp sle i32 %763, %764
  br i1 %765, label %766, label %802

766:                                              ; preds = %762
  %767 = load i32, i32* %32, align 4
  %768 = load i32, i32* %37, align 4
  %769 = add nsw i32 %767, %768
  store i32 %769, i32* %30, align 4
  br label %770

770:                                              ; preds = %789, %766
  %771 = load i32, i32* %29, align 4
  %772 = load i32, i32* %31, align 4
  %773 = icmp slt i32 %771, %772
  br i1 %773, label %774, label %794

774:                                              ; preds = %770
  %775 = load float*, float** %15, align 8
  %776 = load i32, i32* %30, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds float, float* %775, i64 %777
  %779 = load float, float* %778, align 4
  %780 = load float*, float** %19, align 8
  %781 = load i32, i32* %29, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds float, float* %780, i64 %782
  %784 = load float, float* %783, align 4
  %785 = fmul float %779, %784
  %786 = fpext float %785 to double
  %787 = load double, double* %28, align 8
  %788 = fadd double %787, %786
  store double %788, double* %28, align 8
  br label %789

789:                                              ; preds = %774
  %790 = load i32, i32* %29, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %29, align 4
  %792 = load i32, i32* %30, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %30, align 4
  br label %770

794:                                              ; preds = %770
  br label %795

795:                                              ; preds = %794
  %796 = load i32, i32* %16, align 4
  %797 = load i32, i32* %32, align 4
  %798 = add nsw i32 %797, %796
  store i32 %798, i32* %32, align 4
  %799 = load i32, i32* %20, align 4
  %800 = load i32, i32* %31, align 4
  %801 = add nsw i32 %800, %799
  store i32 %801, i32* %31, align 4
  br label %762

802:                                              ; preds = %762
  %803 = load double, double* %28, align 8
  %804 = fptrunc double %803 to float
  %805 = load float*, float** %26, align 8
  %806 = load i32, i32* %36, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds float, float* %805, i64 %807
  store float %804, float* %808, align 4
  br label %809

809:                                              ; preds = %802
  %810 = load i32, i32* %23, align 4
  %811 = load i32, i32* %33, align 4
  %812 = add nsw i32 %811, %810
  store i32 %812, i32* %33, align 4
  %813 = load i32, i32* %36, align 4
  %814 = add nsw i32 %813, 1
  store i32 %814, i32* %36, align 4
  br label %746

815:                                              ; preds = %746
  br label %816

816:                                              ; preds = %815
  %817 = load i32, i32* %25, align 4
  %818 = load i32, i32* %35, align 4
  %819 = add nsw i32 %818, %817
  store i32 %819, i32* %35, align 4
  br label %596

820:                                              ; preds = %596, %88
  %821 = load i32, i32* %14, align 4
  ret i32 %821
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @internal_expand(float* %0, float* %1, float* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, float* %9, i32 %10, i32 %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca double, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
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
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32 (...)*, align 8
  store float* %0, float** %15, align 8
  store float* %1, float** %16, align 8
  store float* %2, float** %17, align 8
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store float* %9, float** %24, align 8
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i8* %12, i8** %27, align 8
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %34, align 4
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %18, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %37, align 4
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %19, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %25, align 4
  %60 = mul nsw i32 %58, %59
  store i32 %60, i32* %38, align 4
  %61 = load i32, i32* %18, align 4
  %62 = sdiv i32 %61, 2
  store i32 %62, i32* %41, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %42, align 4
  %65 = load i32, i32* %18, align 4
  %66 = load i32, i32* %41, align 4
  %67 = sub nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %43, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %42, align 4
  %71 = sub nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %44, align 4
  %73 = load i32, i32* %23, align 4
  %74 = load i32, i32* %25, align 4
  %75 = mul nsw i32 %73, %74
  store i32 %75, i32* %45, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %20, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %78, %79
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %21, align 4
  %83 = sdiv i32 %81, %82
  store i32 %83, i32* %47, align 4
  %84 = load i8*, i8** %27, align 8
  %85 = call i32 (...)* (i8*, ...) bitcast (i32 (...)* (i8*)* @edge_function to i32 (...)* (i8*, ...)*)(i8* %84)
  store i32 (...)* %85, i32 (...)** %49, align 8
  %86 = load i32 (...)*, i32 (...)** %49, align 8
  %87 = icmp ne i32 (...)* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %13
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8*, i8** %27, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  store i32 -1, i32* %14, align 4
  br label %856

92:                                               ; preds = %13
  %93 = load i32, i32* %22, align 4
  %94 = load i32, i32* %42, align 4
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  store i32 %96, i32* %35, align 4
  store i32 0, i32* %36, align 4
  br label %97

97:                                               ; preds = %330, %92
  %98 = load i32, i32* %35, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %334

100:                                              ; preds = %97
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %41, align 4
  %103 = sub nsw i32 %101, %102
  %104 = sub nsw i32 %103, 1
  store i32 %104, i32* %33, align 4
  br label %105

105:                                              ; preds = %168, %100
  %106 = load i32, i32* %33, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %174

108:                                              ; preds = %105
  %109 = load i32 (...)*, i32 (...)** %49, align 8
  %110 = load float*, float** %16, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %33, align 4
  %114 = load i32, i32* %35, align 4
  %115 = load float*, float** %17, align 8
  %116 = bitcast i32 (...)* %109 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %117 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %116(float* %110, i32 %111, i32 %112, i32 %113, i32 %114, float* %115, i32 1)
  %118 = load float*, float** %15, align 8
  %119 = load i32, i32* %36, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds float, float* %118, i64 %120
  %122 = load float, float* %121, align 4
  %123 = fpext float %122 to double
  store double %123, double* %28, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %124

124:                                              ; preds = %160, %108
  %125 = load i32, i32* %31, align 4
  %126 = load i32, i32* %34, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %167

128:                                              ; preds = %124
  %129 = load i32, i32* %32, align 4
  store i32 %129, i32* %30, align 4
  %130 = load i32, i32* %31, align 4
  store i32 %130, i32* %29, align 4
  br label %131

131:                                              ; preds = %154, %128
  %132 = load i32, i32* %29, align 4
  %133 = load i32, i32* %31, align 4
  %134 = load i32, i32* %18, align 4
  %135 = add nsw i32 %133, %134
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %159

137:                                              ; preds = %131
  %138 = load double, double* %28, align 8
  %139 = load float*, float** %17, align 8
  %140 = load i32, i32* %29, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds float, float* %139, i64 %141
  %143 = load float, float* %142, align 4
  %144 = fpext float %143 to double
  %145 = fmul double %138, %144
  %146 = load float*, float** %24, align 8
  %147 = load i32, i32* %30, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds float, float* %146, i64 %148
  %150 = load float, float* %149, align 4
  %151 = fpext float %150 to double
  %152 = fadd double %151, %145
  %153 = fptrunc double %152 to float
  store float %153, float* %149, align 4
  br label %154

154:                                              ; preds = %137
  %155 = load i32, i32* %29, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %29, align 4
  %157 = load i32, i32* %30, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %30, align 4
  br label %131

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* %32, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %32, align 4
  %164 = load i32, i32* %18, align 4
  %165 = load i32, i32* %31, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %31, align 4
  br label %124

167:                                              ; preds = %124
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %21, align 4
  %170 = load i32, i32* %33, align 4
  %171 = add nsw i32 %170, %169
  store i32 %171, i32* %33, align 4
  %172 = load i32, i32* %36, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %36, align 4
  br label %105

174:                                              ; preds = %105
  %175 = load i32, i32* %33, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %39, align 4
  %177 = load i32 (...)*, i32 (...)** %49, align 8
  %178 = load float*, float** %16, align 8
  %179 = load i32, i32* %18, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %35, align 4
  %182 = load float*, float** %17, align 8
  %183 = bitcast i32 (...)* %177 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %184 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %183(float* %178, i32 %179, i32 %180, i32 0, i32 %181, float* %182, i32 1)
  %185 = load i32, i32* %39, align 4
  store i32 %185, i32* %33, align 4
  br label %186

186:                                              ; preds = %243, %174
  %187 = load i32, i32* %33, align 4
  %188 = load i32, i32* %37, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %249

190:                                              ; preds = %186
  %191 = load float*, float** %15, align 8
  %192 = load i32, i32* %36, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  %196 = fpext float %195 to double
  store double %196, double* %28, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %197

197:                                              ; preds = %235, %190
  %198 = load i32, i32* %31, align 4
  %199 = load i32, i32* %34, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %242

201:                                              ; preds = %197
  %202 = load i32, i32* %33, align 4
  %203 = load i32, i32* %32, align 4
  %204 = add nsw i32 %202, %203
  store i32 %204, i32* %30, align 4
  %205 = load i32, i32* %31, align 4
  store i32 %205, i32* %29, align 4
  br label %206

206:                                              ; preds = %229, %201
  %207 = load i32, i32* %29, align 4
  %208 = load i32, i32* %31, align 4
  %209 = load i32, i32* %18, align 4
  %210 = add nsw i32 %208, %209
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %206
  %213 = load double, double* %28, align 8
  %214 = load float*, float** %17, align 8
  %215 = load i32, i32* %29, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds float, float* %214, i64 %216
  %218 = load float, float* %217, align 4
  %219 = fpext float %218 to double
  %220 = fmul double %213, %219
  %221 = load float*, float** %24, align 8
  %222 = load i32, i32* %30, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  %225 = load float, float* %224, align 4
  %226 = fpext float %225 to double
  %227 = fadd double %226, %220
  %228 = fptrunc double %227 to float
  store float %228, float* %224, align 4
  br label %229

229:                                              ; preds = %212
  %230 = load i32, i32* %29, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %29, align 4
  %232 = load i32, i32* %30, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %30, align 4
  br label %206

234:                                              ; preds = %206
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %25, align 4
  %237 = load i32, i32* %32, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %32, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* %31, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %31, align 4
  br label %197

242:                                              ; preds = %197
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %21, align 4
  %245 = load i32, i32* %33, align 4
  %246 = add nsw i32 %245, %244
  store i32 %246, i32* %33, align 4
  %247 = load i32, i32* %36, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %36, align 4
  br label %186

249:                                              ; preds = %186
  %250 = load i32, i32* %36, align 4
  %251 = load i32, i32* %47, align 4
  %252 = add nsw i32 %250, %251
  store i32 %252, i32* %48, align 4
  %253 = load i32, i32* %37, align 4
  %254 = sub nsw i32 1, %253
  %255 = load i32, i32* %33, align 4
  %256 = add nsw i32 %255, %254
  store i32 %256, i32* %33, align 4
  br label %257

257:                                              ; preds = %323, %249
  %258 = load i32, i32* %33, align 4
  %259 = load i32, i32* %43, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %261, label %329

261:                                              ; preds = %257
  %262 = load i32 (...)*, i32 (...)** %49, align 8
  %263 = load float*, float** %16, align 8
  %264 = load i32, i32* %18, align 4
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %33, align 4
  %267 = load i32, i32* %35, align 4
  %268 = load float*, float** %17, align 8
  %269 = bitcast i32 (...)* %262 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %270 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %269(float* %263, i32 %264, i32 %265, i32 %266, i32 %267, float* %268, i32 1)
  %271 = load float*, float** %15, align 8
  %272 = load i32, i32* %36, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds float, float* %271, i64 %273
  %275 = load float, float* %274, align 4
  %276 = fpext float %275 to double
  store double %276, double* %28, align 8
  store i32 0, i32* %32, align 4
  store i32 0, i32* %31, align 4
  br label %277

277:                                              ; preds = %315, %261
  %278 = load i32, i32* %31, align 4
  %279 = load i32, i32* %34, align 4
  %280 = icmp slt i32 %278, %279
  br i1 %280, label %281, label %322

281:                                              ; preds = %277
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* %37, align 4
  %284 = add nsw i32 %282, %283
  store i32 %284, i32* %30, align 4
  %285 = load i32, i32* %31, align 4
  store i32 %285, i32* %29, align 4
  br label %286

286:                                              ; preds = %309, %281
  %287 = load i32, i32* %29, align 4
  %288 = load i32, i32* %31, align 4
  %289 = load i32, i32* %18, align 4
  %290 = add nsw i32 %288, %289
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %314

292:                                              ; preds = %286
  %293 = load double, double* %28, align 8
  %294 = load float*, float** %17, align 8
  %295 = load i32, i32* %29, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fpext float %298 to double
  %300 = fmul double %293, %299
  %301 = load float*, float** %24, align 8
  %302 = load i32, i32* %30, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds float, float* %301, i64 %303
  %305 = load float, float* %304, align 4
  %306 = fpext float %305 to double
  %307 = fadd double %306, %300
  %308 = fptrunc double %307 to float
  store float %308, float* %304, align 4
  br label %309

309:                                              ; preds = %292
  %310 = load i32, i32* %29, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %29, align 4
  %312 = load i32, i32* %30, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %30, align 4
  br label %286

314:                                              ; preds = %286
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %25, align 4
  %317 = load i32, i32* %32, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %32, align 4
  %319 = load i32, i32* %18, align 4
  %320 = load i32, i32* %31, align 4
  %321 = add nsw i32 %320, %319
  store i32 %321, i32* %31, align 4
  br label %277

322:                                              ; preds = %277
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %21, align 4
  %325 = load i32, i32* %33, align 4
  %326 = add nsw i32 %325, %324
  store i32 %326, i32* %33, align 4
  %327 = load i32, i32* %36, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %36, align 4
  br label %257

329:                                              ; preds = %257
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %23, align 4
  %332 = load i32, i32* %35, align 4
  %333 = add nsw i32 %332, %331
  store i32 %333, i32* %35, align 4
  br label %97

334:                                              ; preds = %97
  %335 = load i32, i32* %25, align 4
  %336 = load i32, i32* %35, align 4
  %337 = add nsw i32 %336, 1
  %338 = mul nsw i32 %335, %337
  store i32 %338, i32* %40, align 4
  %339 = load i32, i32* %36, align 4
  store i32 %339, i32* %46, align 4
  %340 = load i32, i32* %20, align 4
  %341 = load i32, i32* %41, align 4
  %342 = sub nsw i32 %340, %341
  %343 = sub nsw i32 %342, 1
  store i32 %343, i32* %33, align 4
  br label %344

344:                                              ; preds = %424, %334
  %345 = load i32, i32* %33, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %428

347:                                              ; preds = %344
  %348 = load i32, i32* %46, align 4
  store i32 %348, i32* %36, align 4
  %349 = load i32 (...)*, i32 (...)** %49, align 8
  %350 = load float*, float** %16, align 8
  %351 = load i32, i32* %18, align 4
  %352 = load i32, i32* %19, align 4
  %353 = load i32, i32* %33, align 4
  %354 = load float*, float** %17, align 8
  %355 = bitcast i32 (...)* %349 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %356 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %355(float* %350, i32 %351, i32 %352, i32 %353, i32 0, float* %354, i32 1)
  %357 = load i32, i32* %40, align 4
  store i32 %357, i32* %35, align 4
  br label %358

358:                                              ; preds = %414, %347
  %359 = load i32, i32* %35, align 4
  %360 = load i32, i32* %38, align 4
  %361 = icmp slt i32 %359, %360
  br i1 %361, label %362, label %421

362:                                              ; preds = %358
  %363 = load float*, float** %15, align 8
  %364 = load i32, i32* %36, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds float, float* %363, i64 %365
  %367 = load float, float* %366, align 4
  %368 = fpext float %367 to double
  store double %368, double* %28, align 8
  store i32 0, i32* %31, align 4
  %369 = load i32, i32* %35, align 4
  store i32 %369, i32* %32, align 4
  br label %370

370:                                              ; preds = %406, %362
  %371 = load i32, i32* %31, align 4
  %372 = load i32, i32* %34, align 4
  %373 = icmp slt i32 %371, %372
  br i1 %373, label %374, label %413

374:                                              ; preds = %370
  %375 = load i32, i32* %32, align 4
  store i32 %375, i32* %30, align 4
  %376 = load i32, i32* %31, align 4
  store i32 %376, i32* %29, align 4
  br label %377

377:                                              ; preds = %400, %374
  %378 = load i32, i32* %29, align 4
  %379 = load i32, i32* %31, align 4
  %380 = load i32, i32* %18, align 4
  %381 = add nsw i32 %379, %380
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %405

383:                                              ; preds = %377
  %384 = load double, double* %28, align 8
  %385 = load float*, float** %17, align 8
  %386 = load i32, i32* %29, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float, float* %385, i64 %387
  %389 = load float, float* %388, align 4
  %390 = fpext float %389 to double
  %391 = fmul double %384, %390
  %392 = load float*, float** %24, align 8
  %393 = load i32, i32* %30, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds float, float* %392, i64 %394
  %396 = load float, float* %395, align 4
  %397 = fpext float %396 to double
  %398 = fadd double %397, %391
  %399 = fptrunc double %398 to float
  store float %399, float* %395, align 4
  br label %400

400:                                              ; preds = %383
  %401 = load i32, i32* %29, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %29, align 4
  %403 = load i32, i32* %30, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %30, align 4
  br label %377

405:                                              ; preds = %377
  br label %406

406:                                              ; preds = %405
  %407 = load i32, i32* %25, align 4
  %408 = load i32, i32* %32, align 4
  %409 = add nsw i32 %408, %407
  store i32 %409, i32* %32, align 4
  %410 = load i32, i32* %18, align 4
  %411 = load i32, i32* %31, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %31, align 4
  br label %370

413:                                              ; preds = %370
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %45, align 4
  %416 = load i32, i32* %35, align 4
  %417 = add nsw i32 %416, %415
  store i32 %417, i32* %35, align 4
  %418 = load i32, i32* %47, align 4
  %419 = load i32, i32* %36, align 4
  %420 = add nsw i32 %419, %418
  store i32 %420, i32* %36, align 4
  br label %358

421:                                              ; preds = %358
  %422 = load i32, i32* %46, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %46, align 4
  br label %424

424:                                              ; preds = %421
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* %33, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* %33, align 4
  br label %344

428:                                              ; preds = %344
  %429 = load i32 (...)*, i32 (...)** %49, align 8
  %430 = load float*, float** %16, align 8
  %431 = load i32, i32* %18, align 4
  %432 = load i32, i32* %19, align 4
  %433 = load float*, float** %17, align 8
  %434 = bitcast i32 (...)* %429 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %435 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %434(float* %430, i32 %431, i32 %432, i32 0, i32 0, float* %433, i32 1)
  %436 = load i32, i32* %40, align 4
  store i32 %436, i32* %35, align 4
  br label %437

437:                                              ; preds = %512, %428
  %438 = load i32, i32* %35, align 4
  %439 = load i32, i32* %38, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %516

441:                                              ; preds = %437
  %442 = load i32, i32* %46, align 4
  store i32 %442, i32* %36, align 4
  %443 = load i32, i32* %39, align 4
  store i32 %443, i32* %33, align 4
  br label %444

444:                                              ; preds = %502, %441
  %445 = load i32, i32* %33, align 4
  %446 = load i32, i32* %37, align 4
  %447 = icmp slt i32 %445, %446
  br i1 %447, label %448, label %508

448:                                              ; preds = %444
  %449 = load float*, float** %15, align 8
  %450 = load i32, i32* %36, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds float, float* %449, i64 %451
  %453 = load float, float* %452, align 4
  %454 = fpext float %453 to double
  store double %454, double* %28, align 8
  store i32 0, i32* %31, align 4
  %455 = load i32, i32* %35, align 4
  store i32 %455, i32* %32, align 4
  br label %456

456:                                              ; preds = %494, %448
  %457 = load i32, i32* %31, align 4
  %458 = load i32, i32* %34, align 4
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %460, label %501

460:                                              ; preds = %456
  %461 = load i32, i32* %33, align 4
  %462 = load i32, i32* %32, align 4
  %463 = add nsw i32 %461, %462
  store i32 %463, i32* %30, align 4
  %464 = load i32, i32* %31, align 4
  store i32 %464, i32* %29, align 4
  br label %465

465:                                              ; preds = %488, %460
  %466 = load i32, i32* %29, align 4
  %467 = load i32, i32* %31, align 4
  %468 = load i32, i32* %18, align 4
  %469 = add nsw i32 %467, %468
  %470 = icmp slt i32 %466, %469
  br i1 %470, label %471, label %493

471:                                              ; preds = %465
  %472 = load double, double* %28, align 8
  %473 = load float*, float** %17, align 8
  %474 = load i32, i32* %29, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds float, float* %473, i64 %475
  %477 = load float, float* %476, align 4
  %478 = fpext float %477 to double
  %479 = fmul double %472, %478
  %480 = load float*, float** %24, align 8
  %481 = load i32, i32* %30, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds float, float* %480, i64 %482
  %484 = load float, float* %483, align 4
  %485 = fpext float %484 to double
  %486 = fadd double %485, %479
  %487 = fptrunc double %486 to float
  store float %487, float* %483, align 4
  br label %488

488:                                              ; preds = %471
  %489 = load i32, i32* %29, align 4
  %490 = add nsw i32 %489, 1
  store i32 %490, i32* %29, align 4
  %491 = load i32, i32* %30, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %30, align 4
  br label %465

493:                                              ; preds = %465
  br label %494

494:                                              ; preds = %493
  %495 = load i32, i32* %25, align 4
  %496 = load i32, i32* %32, align 4
  %497 = add nsw i32 %496, %495
  store i32 %497, i32* %32, align 4
  %498 = load i32, i32* %18, align 4
  %499 = load i32, i32* %31, align 4
  %500 = add nsw i32 %499, %498
  store i32 %500, i32* %31, align 4
  br label %456

501:                                              ; preds = %456
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %21, align 4
  %504 = load i32, i32* %33, align 4
  %505 = add nsw i32 %504, %503
  store i32 %505, i32* %33, align 4
  %506 = load i32, i32* %36, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %36, align 4
  br label %444

508:                                              ; preds = %444
  %509 = load i32, i32* %47, align 4
  %510 = load i32, i32* %46, align 4
  %511 = add nsw i32 %510, %509
  store i32 %511, i32* %46, align 4
  br label %512

512:                                              ; preds = %508
  %513 = load i32, i32* %45, align 4
  %514 = load i32, i32* %35, align 4
  %515 = add nsw i32 %514, %513
  store i32 %515, i32* %35, align 4
  br label %437

516:                                              ; preds = %437
  %517 = load i32, i32* %48, align 4
  store i32 %517, i32* %46, align 4
  %518 = load i32, i32* %37, align 4
  %519 = sub nsw i32 1, %518
  %520 = load i32, i32* %33, align 4
  %521 = add nsw i32 %520, %519
  store i32 %521, i32* %33, align 4
  br label %522

522:                                              ; preds = %605, %516
  %523 = load i32, i32* %33, align 4
  %524 = load i32, i32* %43, align 4
  %525 = icmp slt i32 %523, %524
  br i1 %525, label %526, label %609

526:                                              ; preds = %522
  %527 = load i32, i32* %46, align 4
  store i32 %527, i32* %36, align 4
  %528 = load i32 (...)*, i32 (...)** %49, align 8
  %529 = load float*, float** %16, align 8
  %530 = load i32, i32* %18, align 4
  %531 = load i32, i32* %19, align 4
  %532 = load i32, i32* %33, align 4
  %533 = load float*, float** %17, align 8
  %534 = bitcast i32 (...)* %528 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %535 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %534(float* %529, i32 %530, i32 %531, i32 %532, i32 0, float* %533, i32 1)
  %536 = load i32, i32* %40, align 4
  store i32 %536, i32* %35, align 4
  br label %537

537:                                              ; preds = %595, %526
  %538 = load i32, i32* %35, align 4
  %539 = load i32, i32* %38, align 4
  %540 = icmp slt i32 %538, %539
  br i1 %540, label %541, label %602

541:                                              ; preds = %537
  %542 = load float*, float** %15, align 8
  %543 = load i32, i32* %36, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds float, float* %542, i64 %544
  %546 = load float, float* %545, align 4
  %547 = fpext float %546 to double
  store double %547, double* %28, align 8
  store i32 0, i32* %31, align 4
  %548 = load i32, i32* %35, align 4
  store i32 %548, i32* %32, align 4
  br label %549

549:                                              ; preds = %587, %541
  %550 = load i32, i32* %31, align 4
  %551 = load i32, i32* %34, align 4
  %552 = icmp slt i32 %550, %551
  br i1 %552, label %553, label %594

553:                                              ; preds = %549
  %554 = load i32, i32* %32, align 4
  %555 = load i32, i32* %37, align 4
  %556 = add nsw i32 %554, %555
  store i32 %556, i32* %30, align 4
  %557 = load i32, i32* %31, align 4
  store i32 %557, i32* %29, align 4
  br label %558

558:                                              ; preds = %581, %553
  %559 = load i32, i32* %29, align 4
  %560 = load i32, i32* %31, align 4
  %561 = load i32, i32* %18, align 4
  %562 = add nsw i32 %560, %561
  %563 = icmp slt i32 %559, %562
  br i1 %563, label %564, label %586

564:                                              ; preds = %558
  %565 = load double, double* %28, align 8
  %566 = load float*, float** %17, align 8
  %567 = load i32, i32* %29, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds float, float* %566, i64 %568
  %570 = load float, float* %569, align 4
  %571 = fpext float %570 to double
  %572 = fmul double %565, %571
  %573 = load float*, float** %24, align 8
  %574 = load i32, i32* %30, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds float, float* %573, i64 %575
  %577 = load float, float* %576, align 4
  %578 = fpext float %577 to double
  %579 = fadd double %578, %572
  %580 = fptrunc double %579 to float
  store float %580, float* %576, align 4
  br label %581

581:                                              ; preds = %564
  %582 = load i32, i32* %29, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %29, align 4
  %584 = load i32, i32* %30, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %30, align 4
  br label %558

586:                                              ; preds = %558
  br label %587

587:                                              ; preds = %586
  %588 = load i32, i32* %25, align 4
  %589 = load i32, i32* %32, align 4
  %590 = add nsw i32 %589, %588
  store i32 %590, i32* %32, align 4
  %591 = load i32, i32* %18, align 4
  %592 = load i32, i32* %31, align 4
  %593 = add nsw i32 %592, %591
  store i32 %593, i32* %31, align 4
  br label %549

594:                                              ; preds = %549
  br label %595

595:                                              ; preds = %594
  %596 = load i32, i32* %45, align 4
  %597 = load i32, i32* %35, align 4
  %598 = add nsw i32 %597, %596
  store i32 %598, i32* %35, align 4
  %599 = load i32, i32* %47, align 4
  %600 = load i32, i32* %36, align 4
  %601 = add nsw i32 %600, %599
  store i32 %601, i32* %36, align 4
  br label %537

602:                                              ; preds = %537
  %603 = load i32, i32* %46, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %46, align 4
  br label %605

605:                                              ; preds = %602
  %606 = load i32, i32* %21, align 4
  %607 = load i32, i32* %33, align 4
  %608 = add nsw i32 %607, %606
  store i32 %608, i32* %33, align 4
  br label %522

609:                                              ; preds = %522
  %610 = load i32, i32* %47, align 4
  %611 = sub nsw i32 %610, 1
  %612 = load i32, i32* %36, align 4
  %613 = sub nsw i32 %612, %611
  store i32 %613, i32* %36, align 4
  %614 = load i32, i32* %35, align 4
  %615 = load i32, i32* %38, align 4
  %616 = sub nsw i32 %614, %615
  %617 = load i32, i32* %25, align 4
  %618 = sdiv i32 %616, %617
  %619 = add nsw i32 %618, 1
  store i32 %619, i32* %35, align 4
  br label %620

620:                                              ; preds = %852, %609
  %621 = load i32, i32* %35, align 4
  %622 = load i32, i32* %44, align 4
  %623 = icmp slt i32 %621, %622
  br i1 %623, label %624, label %856

624:                                              ; preds = %620
  %625 = load i32, i32* %20, align 4
  %626 = load i32, i32* %41, align 4
  %627 = sub nsw i32 %625, %626
  %628 = sub nsw i32 %627, 1
  store i32 %628, i32* %33, align 4
  br label %629

629:                                              ; preds = %693, %624
  %630 = load i32, i32* %33, align 4
  %631 = icmp slt i32 %630, 0
  br i1 %631, label %632, label %699

632:                                              ; preds = %629
  %633 = load i32 (...)*, i32 (...)** %49, align 8
  %634 = load float*, float** %16, align 8
  %635 = load i32, i32* %18, align 4
  %636 = load i32, i32* %19, align 4
  %637 = load i32, i32* %33, align 4
  %638 = load i32, i32* %35, align 4
  %639 = load float*, float** %17, align 8
  %640 = bitcast i32 (...)* %633 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %641 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %640(float* %634, i32 %635, i32 %636, i32 %637, i32 %638, float* %639, i32 1)
  %642 = load float*, float** %15, align 8
  %643 = load i32, i32* %36, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %642, i64 %644
  %646 = load float, float* %645, align 4
  %647 = fpext float %646 to double
  store double %647, double* %28, align 8
  store i32 0, i32* %31, align 4
  %648 = load i32, i32* %38, align 4
  store i32 %648, i32* %32, align 4
  br label %649

649:                                              ; preds = %685, %632
  %650 = load i32, i32* %31, align 4
  %651 = load i32, i32* %34, align 4
  %652 = icmp slt i32 %650, %651
  br i1 %652, label %653, label %692

653:                                              ; preds = %649
  %654 = load i32, i32* %32, align 4
  store i32 %654, i32* %30, align 4
  %655 = load i32, i32* %31, align 4
  store i32 %655, i32* %29, align 4
  br label %656

656:                                              ; preds = %679, %653
  %657 = load i32, i32* %29, align 4
  %658 = load i32, i32* %31, align 4
  %659 = load i32, i32* %18, align 4
  %660 = add nsw i32 %658, %659
  %661 = icmp slt i32 %657, %660
  br i1 %661, label %662, label %684

662:                                              ; preds = %656
  %663 = load double, double* %28, align 8
  %664 = load float*, float** %17, align 8
  %665 = load i32, i32* %29, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds float, float* %664, i64 %666
  %668 = load float, float* %667, align 4
  %669 = fpext float %668 to double
  %670 = fmul double %663, %669
  %671 = load float*, float** %24, align 8
  %672 = load i32, i32* %30, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds float, float* %671, i64 %673
  %675 = load float, float* %674, align 4
  %676 = fpext float %675 to double
  %677 = fadd double %676, %670
  %678 = fptrunc double %677 to float
  store float %678, float* %674, align 4
  br label %679

679:                                              ; preds = %662
  %680 = load i32, i32* %29, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %29, align 4
  %682 = load i32, i32* %30, align 4
  %683 = add nsw i32 %682, 1
  store i32 %683, i32* %30, align 4
  br label %656

684:                                              ; preds = %656
  br label %685

685:                                              ; preds = %684
  %686 = load i32, i32* %25, align 4
  %687 = load i32, i32* %32, align 4
  %688 = add nsw i32 %687, %686
  store i32 %688, i32* %32, align 4
  %689 = load i32, i32* %18, align 4
  %690 = load i32, i32* %31, align 4
  %691 = add nsw i32 %690, %689
  store i32 %691, i32* %31, align 4
  br label %649

692:                                              ; preds = %649
  br label %693

693:                                              ; preds = %692
  %694 = load i32, i32* %21, align 4
  %695 = load i32, i32* %33, align 4
  %696 = add nsw i32 %695, %694
  store i32 %696, i32* %33, align 4
  %697 = load i32, i32* %36, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, i32* %36, align 4
  br label %629

699:                                              ; preds = %629
  %700 = load i32 (...)*, i32 (...)** %49, align 8
  %701 = load float*, float** %16, align 8
  %702 = load i32, i32* %18, align 4
  %703 = load i32, i32* %19, align 4
  %704 = load i32, i32* %35, align 4
  %705 = load float*, float** %17, align 8
  %706 = bitcast i32 (...)* %700 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %707 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %706(float* %701, i32 %702, i32 %703, i32 0, i32 %704, float* %705, i32 1)
  %708 = load i32, i32* %39, align 4
  store i32 %708, i32* %33, align 4
  br label %709

709:                                              ; preds = %767, %699
  %710 = load i32, i32* %33, align 4
  %711 = load i32, i32* %37, align 4
  %712 = icmp slt i32 %710, %711
  br i1 %712, label %713, label %773

713:                                              ; preds = %709
  %714 = load float*, float** %15, align 8
  %715 = load i32, i32* %36, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds float, float* %714, i64 %716
  %718 = load float, float* %717, align 4
  %719 = fpext float %718 to double
  store double %719, double* %28, align 8
  store i32 0, i32* %31, align 4
  %720 = load i32, i32* %38, align 4
  store i32 %720, i32* %32, align 4
  br label %721

721:                                              ; preds = %759, %713
  %722 = load i32, i32* %31, align 4
  %723 = load i32, i32* %34, align 4
  %724 = icmp slt i32 %722, %723
  br i1 %724, label %725, label %766

725:                                              ; preds = %721
  %726 = load i32, i32* %33, align 4
  %727 = load i32, i32* %32, align 4
  %728 = add nsw i32 %726, %727
  store i32 %728, i32* %30, align 4
  %729 = load i32, i32* %31, align 4
  store i32 %729, i32* %29, align 4
  br label %730

730:                                              ; preds = %753, %725
  %731 = load i32, i32* %29, align 4
  %732 = load i32, i32* %31, align 4
  %733 = load i32, i32* %18, align 4
  %734 = add nsw i32 %732, %733
  %735 = icmp slt i32 %731, %734
  br i1 %735, label %736, label %758

736:                                              ; preds = %730
  %737 = load double, double* %28, align 8
  %738 = load float*, float** %17, align 8
  %739 = load i32, i32* %29, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds float, float* %738, i64 %740
  %742 = load float, float* %741, align 4
  %743 = fpext float %742 to double
  %744 = fmul double %737, %743
  %745 = load float*, float** %24, align 8
  %746 = load i32, i32* %30, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds float, float* %745, i64 %747
  %749 = load float, float* %748, align 4
  %750 = fpext float %749 to double
  %751 = fadd double %750, %744
  %752 = fptrunc double %751 to float
  store float %752, float* %748, align 4
  br label %753

753:                                              ; preds = %736
  %754 = load i32, i32* %29, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, i32* %29, align 4
  %756 = load i32, i32* %30, align 4
  %757 = add nsw i32 %756, 1
  store i32 %757, i32* %30, align 4
  br label %730

758:                                              ; preds = %730
  br label %759

759:                                              ; preds = %758
  %760 = load i32, i32* %25, align 4
  %761 = load i32, i32* %32, align 4
  %762 = add nsw i32 %761, %760
  store i32 %762, i32* %32, align 4
  %763 = load i32, i32* %18, align 4
  %764 = load i32, i32* %31, align 4
  %765 = add nsw i32 %764, %763
  store i32 %765, i32* %31, align 4
  br label %721

766:                                              ; preds = %721
  br label %767

767:                                              ; preds = %766
  %768 = load i32, i32* %21, align 4
  %769 = load i32, i32* %33, align 4
  %770 = add nsw i32 %769, %768
  store i32 %770, i32* %33, align 4
  %771 = load i32, i32* %36, align 4
  %772 = add nsw i32 %771, 1
  store i32 %772, i32* %36, align 4
  br label %709

773:                                              ; preds = %709
  %774 = load i32, i32* %37, align 4
  %775 = sub nsw i32 1, %774
  %776 = load i32, i32* %33, align 4
  %777 = add nsw i32 %776, %775
  store i32 %777, i32* %33, align 4
  br label %778

778:                                              ; preds = %845, %773
  %779 = load i32, i32* %33, align 4
  %780 = load i32, i32* %43, align 4
  %781 = icmp slt i32 %779, %780
  br i1 %781, label %782, label %851

782:                                              ; preds = %778
  %783 = load i32 (...)*, i32 (...)** %49, align 8
  %784 = load float*, float** %16, align 8
  %785 = load i32, i32* %18, align 4
  %786 = load i32, i32* %19, align 4
  %787 = load i32, i32* %33, align 4
  %788 = load i32, i32* %35, align 4
  %789 = load float*, float** %17, align 8
  %790 = bitcast i32 (...)* %783 to i32 (float*, i32, i32, i32, i32, float*, i32, ...)*
  %791 = call i32 (float*, i32, i32, i32, i32, float*, i32, ...) %790(float* %784, i32 %785, i32 %786, i32 %787, i32 %788, float* %789, i32 1)
  %792 = load float*, float** %15, align 8
  %793 = load i32, i32* %36, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds float, float* %792, i64 %794
  %796 = load float, float* %795, align 4
  %797 = fpext float %796 to double
  store double %797, double* %28, align 8
  store i32 0, i32* %31, align 4
  %798 = load i32, i32* %38, align 4
  store i32 %798, i32* %32, align 4
  br label %799

799:                                              ; preds = %837, %782
  %800 = load i32, i32* %31, align 4
  %801 = load i32, i32* %34, align 4
  %802 = icmp slt i32 %800, %801
  br i1 %802, label %803, label %844

803:                                              ; preds = %799
  %804 = load i32, i32* %32, align 4
  %805 = load i32, i32* %37, align 4
  %806 = add nsw i32 %804, %805
  store i32 %806, i32* %30, align 4
  %807 = load i32, i32* %31, align 4
  store i32 %807, i32* %29, align 4
  br label %808

808:                                              ; preds = %831, %803
  %809 = load i32, i32* %29, align 4
  %810 = load i32, i32* %31, align 4
  %811 = load i32, i32* %18, align 4
  %812 = add nsw i32 %810, %811
  %813 = icmp slt i32 %809, %812
  br i1 %813, label %814, label %836

814:                                              ; preds = %808
  %815 = load double, double* %28, align 8
  %816 = load float*, float** %17, align 8
  %817 = load i32, i32* %29, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds float, float* %816, i64 %818
  %820 = load float, float* %819, align 4
  %821 = fpext float %820 to double
  %822 = fmul double %815, %821
  %823 = load float*, float** %24, align 8
  %824 = load i32, i32* %30, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds float, float* %823, i64 %825
  %827 = load float, float* %826, align 4
  %828 = fpext float %827 to double
  %829 = fadd double %828, %822
  %830 = fptrunc double %829 to float
  store float %830, float* %826, align 4
  br label %831

831:                                              ; preds = %814
  %832 = load i32, i32* %29, align 4
  %833 = add nsw i32 %832, 1
  store i32 %833, i32* %29, align 4
  %834 = load i32, i32* %30, align 4
  %835 = add nsw i32 %834, 1
  store i32 %835, i32* %30, align 4
  br label %808

836:                                              ; preds = %808
  br label %837

837:                                              ; preds = %836
  %838 = load i32, i32* %25, align 4
  %839 = load i32, i32* %32, align 4
  %840 = add nsw i32 %839, %838
  store i32 %840, i32* %32, align 4
  %841 = load i32, i32* %18, align 4
  %842 = load i32, i32* %31, align 4
  %843 = add nsw i32 %842, %841
  store i32 %843, i32* %31, align 4
  br label %799

844:                                              ; preds = %799
  br label %845

845:                                              ; preds = %844
  %846 = load i32, i32* %21, align 4
  %847 = load i32, i32* %33, align 4
  %848 = add nsw i32 %847, %846
  store i32 %848, i32* %33, align 4
  %849 = load i32, i32* %36, align 4
  %850 = add nsw i32 %849, 1
  store i32 %850, i32* %36, align 4
  br label %778

851:                                              ; preds = %778
  br label %852

852:                                              ; preds = %851
  %853 = load i32, i32* %23, align 4
  %854 = load i32, i32* %35, align 4
  %855 = add nsw i32 %854, %853
  store i32 %855, i32* %35, align 4
  br label %620

856:                                              ; preds = %620, %88
  %857 = load i32, i32* %14, align 4
  ret i32 %857
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 (...)* @edge_function(i8* %0) #0 {
  %2 = alloca i32 (...)*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp ult i64 %7, 9
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [9 x %struct.EDGE_HANDLER], [9 x %struct.EDGE_HANDLER]* @edge_foos, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.EDGE_HANDLER, %struct.EDGE_HANDLER* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 16
  %16 = call i32 @strcmp(i8* %10, i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [9 x %struct.EDGE_HANDLER], [9 x %struct.EDGE_HANDLER]* @edge_foos, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.EDGE_HANDLER, %struct.EDGE_HANDLER* %21, i32 0, i32 1
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  store i32 (...)* %23, i32 (...)** %2, align 8
  br label %30

24:                                               ; preds = %9
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 (...)* null, i32 (...)** %2, align 8
  br label %30

30:                                               ; preds = %28, %18
  %31 = load i32 (...)*, i32 (...)** %2, align 8
  ret i32 (...)* %31
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reflect1(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  br label %43

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32 [ %51, %47 ], [ 0, %52 ]
  store i32 %54, i32* %26, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  br label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi i32 [ %60, %57 ], [ %69, %68 ]
  store i32 %71, i32* %27, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  br label %88

79:                                               ; preds = %70
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  br label %88

88:                                               ; preds = %86, %75
  %89 = phi i32 [ %78, %75 ], [ %87, %86 ]
  %90 = mul nsw i32 %72, %89
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, 2
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %30, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 %94, 2
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %31, align 4
  store i32 0, i32* %29, align 4
  br label %97

97:                                               ; preds = %106, %88
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load float*, float** %14, align 8
  %103 = load i32, i32* %29, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float 0.000000e+00, float* %105, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %29, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %29, align 4
  br label %97

109:                                              ; preds = %97
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %30, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %19, align 4
  br label %129

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %30, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %17, align 4
  store i32 0, i32* %27, align 4
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %31, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  %137 = sdiv i32 %136, 2
  %138 = mul nsw i32 %134, %137
  store i32 %138, i32* %20, align 4
  br label %150

139:                                              ; preds = %129
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %31, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sdiv i32 %146, 2
  %148 = mul nsw i32 %145, %147
  store i32 %148, i32* %18, align 4
  store i32 0, i32* %28, align 4
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %109
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %28, align 4
  store i32 %153, i32* %23, align 4
  br label %154

154:                                              ; preds = %265, %151
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %272

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %27, align 4
  store i32 %162, i32* %24, align 4
  br label %163

163:                                              ; preds = %259, %158
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %264

169:                                              ; preds = %163
  %170 = load float*, float** %9, align 8
  %171 = load i32, i32* %22, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds float, float* %170, i64 %172
  %174 = load float, float* %173, align 4
  %175 = load float*, float** %14, align 8
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp sge i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* %23, align 4
  br label %184

181:                                              ; preds = %169
  %182 = load i32, i32* %23, align 4
  %183 = sub nsw i32 0, %182
  br label %184

184:                                              ; preds = %181, %179
  %185 = phi i32 [ %180, %179 ], [ %183, %181 ]
  %186 = sub nsw i32 %176, %185
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i32, i32* %26, align 4
  %190 = load i32, i32* %23, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = load i32, i32* %23, align 4
  br label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %23, align 4
  %196 = sub nsw i32 0, %195
  br label %197

197:                                              ; preds = %194, %192
  %198 = phi i32 [ %193, %192 ], [ %196, %194 ]
  %199 = sub nsw i32 %189, %198
  br label %213

200:                                              ; preds = %184
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* %23, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load i32, i32* %23, align 4
  br label %209

206:                                              ; preds = %200
  %207 = load i32, i32* %23, align 4
  %208 = sub nsw i32 0, %207
  br label %209

209:                                              ; preds = %206, %204
  %210 = phi i32 [ %205, %204 ], [ %208, %206 ]
  %211 = sub nsw i32 %201, %210
  %212 = sub nsw i32 0, %211
  br label %213

213:                                              ; preds = %209, %197
  %214 = phi i32 [ %199, %197 ], [ %212, %209 ]
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %24, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  %219 = load i32, i32* %24, align 4
  br label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %24, align 4
  %222 = sub nsw i32 0, %221
  br label %223

223:                                              ; preds = %220, %218
  %224 = phi i32 [ %219, %218 ], [ %222, %220 ]
  %225 = sub nsw i32 %215, %224
  %226 = icmp sge i32 %225, 0
  br i1 %226, label %227, label %239

227:                                              ; preds = %223
  %228 = load i32, i32* %25, align 4
  %229 = load i32, i32* %24, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %227
  %232 = load i32, i32* %24, align 4
  br label %236

233:                                              ; preds = %227
  %234 = load i32, i32* %24, align 4
  %235 = sub nsw i32 0, %234
  br label %236

236:                                              ; preds = %233, %231
  %237 = phi i32 [ %232, %231 ], [ %235, %233 ]
  %238 = sub nsw i32 %228, %237
  br label %252

239:                                              ; preds = %223
  %240 = load i32, i32* %25, align 4
  %241 = load i32, i32* %24, align 4
  %242 = icmp sge i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32, i32* %24, align 4
  br label %248

245:                                              ; preds = %239
  %246 = load i32, i32* %24, align 4
  %247 = sub nsw i32 0, %246
  br label %248

248:                                              ; preds = %245, %243
  %249 = phi i32 [ %244, %243 ], [ %247, %245 ]
  %250 = sub nsw i32 %240, %249
  %251 = sub nsw i32 0, %250
  br label %252

252:                                              ; preds = %248, %236
  %253 = phi i32 [ %238, %236 ], [ %251, %248 ]
  %254 = add nsw i32 %214, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds float, float* %175, i64 %255
  %257 = load float, float* %256, align 4
  %258 = fadd float %257, %174
  store float %258, float* %256, align 4
  br label %259

259:                                              ; preds = %252
  %260 = load i32, i32* %22, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %22, align 4
  %262 = load i32, i32* %24, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %24, align 4
  br label %163

264:                                              ; preds = %163
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* %21, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %21, align 4
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* %23, align 4
  %271 = add nsw i32 %270, %269
  store i32 %271, i32* %23, align 4
  br label %154

272:                                              ; preds = %154
  %273 = load i32, i32* %15, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %353

275:                                              ; preds = %272
  %276 = load i32, i32* %12, align 4
  %277 = icmp sge i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* %12, align 4
  br label %283

280:                                              ; preds = %275
  %281 = load i32, i32* %12, align 4
  %282 = sub nsw i32 0, %281
  br label %283

283:                                              ; preds = %280, %278
  %284 = phi i32 [ %279, %278 ], [ %282, %280 ]
  %285 = load i32, i32* %30, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %313

287:                                              ; preds = %283
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %313

290:                                              ; preds = %287
  %291 = load i32, i32* %25, align 4
  store i32 %291, i32* %21, align 4
  br label %292

292:                                              ; preds = %308, %290
  %293 = load i32, i32* %21, align 4
  %294 = load i32, i32* %16, align 4
  %295 = icmp slt i32 %293, %294
  br i1 %295, label %296, label %312

296:                                              ; preds = %292
  %297 = load float*, float** %14, align 8
  %298 = load i32, i32* %21, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds float, float* %297, i64 %299
  %301 = load float, float* %300, align 4
  %302 = load float*, float** %14, align 8
  %303 = load i32, i32* %21, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %302, i64 %304
  %306 = load float, float* %305, align 4
  %307 = fadd float %306, %301
  store float %307, float* %305, align 4
  br label %308

308:                                              ; preds = %296
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* %21, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %21, align 4
  br label %292

312:                                              ; preds = %292
  br label %313

313:                                              ; preds = %312, %287, %283
  %314 = load i32, i32* %13, align 4
  %315 = icmp sge i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %313
  %317 = load i32, i32* %13, align 4
  br label %321

318:                                              ; preds = %313
  %319 = load i32, i32* %13, align 4
  %320 = sub nsw i32 0, %319
  br label %321

321:                                              ; preds = %318, %316
  %322 = phi i32 [ %317, %316 ], [ %320, %318 ]
  %323 = load i32, i32* %31, align 4
  %324 = icmp ne i32 %322, %323
  br i1 %324, label %325, label %352

325:                                              ; preds = %321
  %326 = load i32, i32* %13, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %352

328:                                              ; preds = %325
  %329 = load i32, i32* %26, align 4
  store i32 %329, i32* %22, align 4
  br label %330

330:                                              ; preds = %348, %328
  %331 = load i32, i32* %22, align 4
  %332 = load i32, i32* %26, align 4
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 %332, %333
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %351

336:                                              ; preds = %330
  %337 = load float*, float** %14, align 8
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float, float* %337, i64 %339
  %341 = load float, float* %340, align 4
  %342 = load float*, float** %14, align 8
  %343 = load i32, i32* %22, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds float, float* %342, i64 %344
  %346 = load float, float* %345, align 4
  %347 = fadd float %346, %341
  store float %347, float* %345, align 4
  br label %348

348:                                              ; preds = %336
  %349 = load i32, i32* %22, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %22, align 4
  br label %330

351:                                              ; preds = %330
  br label %352

352:                                              ; preds = %351, %325, %321
  br label %353

353:                                              ; preds = %352, %272
  %354 = load i32, i32* %8, align 4
  ret i32 %354
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @reflect2(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
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
  %25 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 1
  br label %32

31:                                               ; preds = %7
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 1
  %40 = mul nsw i32 %37, %39
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %36
  %43 = phi i32 [ %40, %36 ], [ 0, %41 ]
  store i32 %43, i32* %21, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %22, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %42
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %52, 1
  br label %57

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  br label %57

57:                                               ; preds = %54, %49
  %58 = phi i32 [ %53, %49 ], [ %56, %54 ]
  store i32 %58, i32* %23, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  br label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i32 [ %66, %62 ], [ %69, %67 ]
  %72 = mul nsw i32 %59, %71
  store i32 %72, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %73

73:                                               ; preds = %82, %70
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %22, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = load float*, float** %14, align 8
  %79 = load i32, i32* %25, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %78, i64 %80
  store float 0.000000e+00, float* %81, align 4
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %25, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %25, align 4
  br label %73

85:                                               ; preds = %73
  store i32 0, i32* %16, align 4
  %86 = load i32, i32* %24, align 4
  store i32 %86, i32* %18, align 4
  br label %87

87:                                               ; preds = %218, %85
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %22, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %225

91:                                               ; preds = %87
  %92 = load i32, i32* %18, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %23, align 4
  store i32 %100, i32* %19, align 4
  br label %101

101:                                              ; preds = %212, %98
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %103, %104
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %217

107:                                              ; preds = %101
  %108 = load i32, i32* %19, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %110, %107
  %114 = load float*, float** %9, align 8
  %115 = load i32, i32* %17, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = load float*, float** %14, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %18, align 4
  %122 = icmp sge i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %113
  %124 = load i32, i32* %18, align 4
  br label %128

125:                                              ; preds = %113
  %126 = load i32, i32* %18, align 4
  %127 = sub nsw i32 0, %126
  br label %128

128:                                              ; preds = %125, %123
  %129 = phi i32 [ %124, %123 ], [ %127, %125 ]
  %130 = sub nsw i32 %120, %129
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %130, %131
  %133 = icmp sge i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load i32, i32* %21, align 4
  %136 = load i32, i32* %18, align 4
  %137 = icmp sge i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i32, i32* %18, align 4
  br label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 0, %141
  br label %143

143:                                              ; preds = %140, %138
  %144 = phi i32 [ %139, %138 ], [ %142, %140 ]
  %145 = sub nsw i32 %135, %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  br label %163

148:                                              ; preds = %128
  %149 = load i32, i32* %21, align 4
  %150 = load i32, i32* %18, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %18, align 4
  br label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %18, align 4
  %156 = sub nsw i32 0, %155
  br label %157

157:                                              ; preds = %154, %152
  %158 = phi i32 [ %153, %152 ], [ %156, %154 ]
  %159 = sub nsw i32 %149, %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %159, %160
  %162 = sub nsw i32 0, %161
  br label %163

163:                                              ; preds = %157, %143
  %164 = phi i32 [ %147, %143 ], [ %162, %157 ]
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* %19, align 4
  %167 = icmp sge i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* %19, align 4
  br label %173

170:                                              ; preds = %163
  %171 = load i32, i32* %19, align 4
  %172 = sub nsw i32 0, %171
  br label %173

173:                                              ; preds = %170, %168
  %174 = phi i32 [ %169, %168 ], [ %172, %170 ]
  %175 = sub nsw i32 %165, %174
  %176 = add nsw i32 %175, 1
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %173
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* %19, align 4
  br label %187

184:                                              ; preds = %178
  %185 = load i32, i32* %19, align 4
  %186 = sub nsw i32 0, %185
  br label %187

187:                                              ; preds = %184, %182
  %188 = phi i32 [ %183, %182 ], [ %186, %184 ]
  %189 = sub nsw i32 %179, %188
  %190 = add nsw i32 %189, 1
  br label %205

191:                                              ; preds = %173
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %19, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %191
  %196 = load i32, i32* %19, align 4
  br label %200

197:                                              ; preds = %191
  %198 = load i32, i32* %19, align 4
  %199 = sub nsw i32 0, %198
  br label %200

200:                                              ; preds = %197, %195
  %201 = phi i32 [ %196, %195 ], [ %199, %197 ]
  %202 = sub nsw i32 %192, %201
  %203 = add nsw i32 %202, 1
  %204 = sub nsw i32 0, %203
  br label %205

205:                                              ; preds = %200, %187
  %206 = phi i32 [ %190, %187 ], [ %204, %200 ]
  %207 = add nsw i32 %164, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %119, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fadd float %210, %118
  store float %211, float* %209, align 4
  br label %212

212:                                              ; preds = %205
  %213 = load i32, i32* %17, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %19, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %19, align 4
  br label %101

217:                                              ; preds = %101
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %16, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %18, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %18, align 4
  br label %87

225:                                              ; preds = %87
  %226 = load i32, i32* %8, align 4
  ret i32 %226
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @repeat(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  br label %41

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %31, %29 ], [ %40, %39 ]
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 1
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i32 [ %48, %46 ], [ %57, %56 ]
  %60 = mul nsw i32 %43, %59
  store i32 %60, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %61

61:                                               ; preds = %70, %58
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load float*, float** %14, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  store float 0.000000e+00, float* %69, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %61

73:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  %74 = load i32, i32* %22, align 4
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %139, %73
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %21, align 4
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %133, %79
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %138

88:                                               ; preds = %82
  %89 = load float*, float** %9, align 8
  %90 = load i32, i32* %17, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %89, i64 %91
  %93 = load float, float* %92, align 4
  %94 = load float*, float** %14, align 8
  %95 = load i32, i32* %18, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %18, align 4
  br label %107

103:                                              ; preds = %97
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %104, %105
  br label %107

107:                                              ; preds = %103, %101
  %108 = phi i32 [ %102, %101 ], [ %106, %103 ]
  br label %110

109:                                              ; preds = %88
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  %112 = load i32, i32* %19, align 4
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %110
  %115 = load i32, i32* %19, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %19, align 4
  br label %123

120:                                              ; preds = %114
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  br label %123

123:                                              ; preds = %120, %118
  %124 = phi i32 [ %119, %118 ], [ %122, %120 ]
  br label %126

125:                                              ; preds = %110
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = add nsw i32 %111, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %94, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fadd float %131, %93
  store float %132, float* %130, align 4
  br label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %17, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %82

138:                                              ; preds = %82
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %16, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %16, align 4
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %18, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %18, align 4
  br label %75

146:                                              ; preds = %75
  %147 = load i32, i32* %8, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @zero(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %7
  %30 = load i32, i32* %12, align 4
  %31 = sub nsw i32 %30, 1
  br label %41

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %31, %29 ], [ %40, %39 ]
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = sub nsw i32 %47, 1
  br label %58

49:                                               ; preds = %41
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = add nsw i32 %53, 1
  br label %56

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %52
  %57 = phi i32 [ %54, %52 ], [ 0, %55 ]
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i32 [ %48, %46 ], [ %57, %56 ]
  %60 = mul nsw i32 %43, %59
  store i32 %60, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %61

61:                                               ; preds = %70, %58
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load float*, float** %14, align 8
  %67 = load i32, i32* %23, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  store float 0.000000e+00, float* %69, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %23, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %23, align 4
  br label %61

73:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  %74 = load i32, i32* %22, align 4
  store i32 %74, i32* %18, align 4
  br label %75

75:                                               ; preds = %122, %73
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %20, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %129

79:                                               ; preds = %75
  %80 = load i32, i32* %18, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %121

82:                                               ; preds = %79
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %20, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %21, align 4
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %115, %86
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %91, %92
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %89
  %96 = load i32, i32* %19, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load float*, float** %9, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %103, i64 %105
  %107 = load float, float* %106, align 4
  %108 = load float*, float** %14, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %108, i64 %112
  store float %107, float* %113, align 4
  br label %114

114:                                              ; preds = %102, %98, %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %17, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %89

120:                                              ; preds = %89
  br label %121

121:                                              ; preds = %120, %82, %79
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %18, align 4
  br label %75

129:                                              ; preds = %75
  %130 = load i32, i32* %8, align 4
  ret i32 %130
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @extend(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %16, align 4
  store i32 %36, i32* %20, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %7
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %40, 1
  br label %43

42:                                               ; preds = %7
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  store i32 %44, i32* %25, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %47
  %54 = phi i32 [ %51, %47 ], [ 0, %52 ]
  store i32 %54, i32* %26, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  br label %70

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = icmp slt i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %64
  %69 = phi i32 [ %66, %64 ], [ 0, %67 ]
  br label %70

70:                                               ; preds = %68, %57
  %71 = phi i32 [ %60, %57 ], [ %69, %68 ]
  store i32 %71, i32* %27, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  br label %88

79:                                               ; preds = %70
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, -1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  br label %86

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %84, %82 ], [ 0, %85 ]
  br label %88

88:                                               ; preds = %86, %75
  %89 = phi i32 [ %78, %75 ], [ %87, %86 ]
  %90 = mul nsw i32 %72, %89
  store i32 %90, i32* %28, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, 2
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %30, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sdiv i32 %94, 2
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %31, align 4
  store i32 0, i32* %29, align 4
  br label %97

97:                                               ; preds = %106, %88
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = load float*, float** %14, align 8
  %103 = load i32, i32* %29, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  store float 0.000000e+00, float* %105, align 4
  br label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %29, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %29, align 4
  br label %97

109:                                              ; preds = %97
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %30, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %19, align 4
  br label %129

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %30, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load i32, i32* %10, align 4
  %127 = sdiv i32 %126, 2
  store i32 %127, i32* %17, align 4
  store i32 0, i32* %27, align 4
  br label %128

128:                                              ; preds = %125, %120
  br label %129

129:                                              ; preds = %128, %116
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %31, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  %137 = sdiv i32 %136, 2
  %138 = mul nsw i32 %134, %137
  store i32 %138, i32* %20, align 4
  br label %150

139:                                              ; preds = %129
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %31, align 4
  %142 = sub nsw i32 0, %141
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %11, align 4
  %147 = sdiv i32 %146, 2
  %148 = mul nsw i32 %145, %147
  store i32 %148, i32* %18, align 4
  store i32 0, i32* %28, align 4
  br label %149

149:                                              ; preds = %144, %139
  br label %150

150:                                              ; preds = %149, %133
  br label %151

151:                                              ; preds = %150, %109
  %152 = load i32, i32* %18, align 4
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %28, align 4
  store i32 %153, i32* %23, align 4
  br label %154

154:                                              ; preds = %487, %151
  %155 = load i32, i32* %21, align 4
  %156 = load i32, i32* %20, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %494

158:                                              ; preds = %154
  %159 = load i32, i32* %21, align 4
  %160 = load i32, i32* %17, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %27, align 4
  store i32 %162, i32* %24, align 4
  br label %163

163:                                              ; preds = %481, %158
  %164 = load i32, i32* %22, align 4
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %19, align 4
  %167 = add nsw i32 %165, %166
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %486

169:                                              ; preds = %163
  %170 = load i32, i32* %26, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %23, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %181

176:                                              ; preds = %172
  %177 = load i32, i32* %23, align 4
  %178 = icmp slt i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 -1, i32 0
  br label %181

181:                                              ; preds = %176, %175
  %182 = phi i32 [ 1, %175 ], [ %180, %176 ]
  %183 = icmp eq i32 %182, -1
  br i1 %183, label %201, label %184

184:                                              ; preds = %181, %169
  %185 = load i32, i32* %26, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i32, i32* %23, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %196

191:                                              ; preds = %187
  %192 = load i32, i32* %23, align 4
  %193 = icmp slt i32 %192, 0
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i32 -1, i32 0
  br label %196

196:                                              ; preds = %191, %190
  %197 = phi i32 [ 1, %190 ], [ %195, %191 ]
  %198 = icmp eq i32 %197, 1
  br label %199

199:                                              ; preds = %196, %184
  %200 = phi i1 [ false, %184 ], [ %198, %196 ]
  br label %201

201:                                              ; preds = %199, %181
  %202 = phi i1 [ true, %181 ], [ %200, %199 ]
  %203 = zext i1 %202 to i32
  %204 = load i32, i32* %25, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %24, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  br label %215

210:                                              ; preds = %206
  %211 = load i32, i32* %24, align 4
  %212 = icmp slt i32 %211, 0
  %213 = zext i1 %212 to i64
  %214 = select i1 %212, i32 -1, i32 0
  br label %215

215:                                              ; preds = %210, %209
  %216 = phi i32 [ 1, %209 ], [ %214, %210 ]
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %235, label %218

218:                                              ; preds = %215, %201
  %219 = load i32, i32* %25, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %233

221:                                              ; preds = %218
  %222 = load i32, i32* %24, align 4
  %223 = icmp sgt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  br label %230

225:                                              ; preds = %221
  %226 = load i32, i32* %24, align 4
  %227 = icmp slt i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 -1, i32 0
  br label %230

230:                                              ; preds = %225, %224
  %231 = phi i32 [ 1, %224 ], [ %229, %225 ]
  %232 = icmp eq i32 %231, 1
  br label %233

233:                                              ; preds = %230, %218
  %234 = phi i1 [ false, %218 ], [ %232, %230 ]
  br label %235

235:                                              ; preds = %233, %215
  %236 = phi i1 [ true, %215 ], [ %234, %233 ]
  %237 = zext i1 %236 to i32
  %238 = icmp ne i32 %203, %237
  br i1 %238, label %239, label %390

239:                                              ; preds = %235
  %240 = load float*, float** %9, align 8
  %241 = load i32, i32* %22, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = load float*, float** %14, align 8
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %23, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %239
  %250 = load i32, i32* %23, align 4
  br label %254

251:                                              ; preds = %239
  %252 = load i32, i32* %23, align 4
  %253 = sub nsw i32 0, %252
  br label %254

254:                                              ; preds = %251, %249
  %255 = phi i32 [ %250, %249 ], [ %253, %251 ]
  %256 = sub nsw i32 %246, %255
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %254
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* %23, align 4
  %261 = icmp sge i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = load i32, i32* %23, align 4
  br label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %23, align 4
  %266 = sub nsw i32 0, %265
  br label %267

267:                                              ; preds = %264, %262
  %268 = phi i32 [ %263, %262 ], [ %266, %264 ]
  %269 = sub nsw i32 %259, %268
  br label %283

270:                                              ; preds = %254
  %271 = load i32, i32* %26, align 4
  %272 = load i32, i32* %23, align 4
  %273 = icmp sge i32 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %270
  %275 = load i32, i32* %23, align 4
  br label %279

276:                                              ; preds = %270
  %277 = load i32, i32* %23, align 4
  %278 = sub nsw i32 0, %277
  br label %279

279:                                              ; preds = %276, %274
  %280 = phi i32 [ %275, %274 ], [ %278, %276 ]
  %281 = sub nsw i32 %271, %280
  %282 = sub nsw i32 0, %281
  br label %283

283:                                              ; preds = %279, %267
  %284 = phi i32 [ %269, %267 ], [ %282, %279 ]
  %285 = load i32, i32* %25, align 4
  %286 = load i32, i32* %24, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i32, i32* %24, align 4
  br label %293

290:                                              ; preds = %283
  %291 = load i32, i32* %24, align 4
  %292 = sub nsw i32 0, %291
  br label %293

293:                                              ; preds = %290, %288
  %294 = phi i32 [ %289, %288 ], [ %292, %290 ]
  %295 = sub nsw i32 %285, %294
  %296 = icmp sge i32 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %293
  %298 = load i32, i32* %25, align 4
  %299 = load i32, i32* %24, align 4
  %300 = icmp sge i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i32, i32* %24, align 4
  br label %306

303:                                              ; preds = %297
  %304 = load i32, i32* %24, align 4
  %305 = sub nsw i32 0, %304
  br label %306

306:                                              ; preds = %303, %301
  %307 = phi i32 [ %302, %301 ], [ %305, %303 ]
  %308 = sub nsw i32 %298, %307
  br label %322

309:                                              ; preds = %293
  %310 = load i32, i32* %25, align 4
  %311 = load i32, i32* %24, align 4
  %312 = icmp sge i32 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %309
  %314 = load i32, i32* %24, align 4
  br label %318

315:                                              ; preds = %309
  %316 = load i32, i32* %24, align 4
  %317 = sub nsw i32 0, %316
  br label %318

318:                                              ; preds = %315, %313
  %319 = phi i32 [ %314, %313 ], [ %317, %315 ]
  %320 = sub nsw i32 %310, %319
  %321 = sub nsw i32 0, %320
  br label %322

322:                                              ; preds = %318, %306
  %323 = phi i32 [ %308, %306 ], [ %321, %318 ]
  %324 = add nsw i32 %284, %323
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds float, float* %245, i64 %325
  %327 = load float, float* %326, align 4
  %328 = fsub float %327, %244
  store float %328, float* %326, align 4
  %329 = load float*, float** %9, align 8
  %330 = load i32, i32* %22, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds float, float* %329, i64 %331
  %333 = load float, float* %332, align 4
  %334 = load float*, float** %9, align 8
  %335 = load i32, i32* %22, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %334, i64 %336
  %338 = load float, float* %337, align 4
  %339 = fadd float %333, %338
  %340 = load float*, float** %14, align 8
  %341 = load i32, i32* %26, align 4
  %342 = load i32, i32* %23, align 4
  %343 = add nsw i32 %341, %342
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %322
  br label %361

346:                                              ; preds = %322
  %347 = load i32, i32* %26, align 4
  %348 = load i32, i32* %23, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %11, align 4
  %351 = icmp sge i32 %349, %350
  br i1 %351, label %352, label %355

352:                                              ; preds = %346
  %353 = load i32, i32* %11, align 4
  %354 = sub nsw i32 %353, 1
  br label %359

355:                                              ; preds = %346
  %356 = load i32, i32* %26, align 4
  %357 = load i32, i32* %23, align 4
  %358 = add nsw i32 %356, %357
  br label %359

359:                                              ; preds = %355, %352
  %360 = phi i32 [ %354, %352 ], [ %358, %355 ]
  br label %361

361:                                              ; preds = %359, %345
  %362 = phi i32 [ 0, %345 ], [ %360, %359 ]
  %363 = load i32, i32* %25, align 4
  %364 = load i32, i32* %24, align 4
  %365 = add nsw i32 %363, %364
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  br label %383

368:                                              ; preds = %361
  %369 = load i32, i32* %25, align 4
  %370 = load i32, i32* %24, align 4
  %371 = add nsw i32 %369, %370
  %372 = load i32, i32* %10, align 4
  %373 = icmp sge i32 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %368
  %375 = load i32, i32* %10, align 4
  %376 = sub nsw i32 %375, 1
  br label %381

377:                                              ; preds = %368
  %378 = load i32, i32* %25, align 4
  %379 = load i32, i32* %24, align 4
  %380 = add nsw i32 %378, %379
  br label %381

381:                                              ; preds = %377, %374
  %382 = phi i32 [ %376, %374 ], [ %380, %377 ]
  br label %383

383:                                              ; preds = %381, %367
  %384 = phi i32 [ 0, %367 ], [ %382, %381 ]
  %385 = add nsw i32 %362, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds float, float* %340, i64 %386
  %388 = load float, float* %387, align 4
  %389 = fadd float %388, %339
  store float %389, float* %387, align 4
  br label %480

390:                                              ; preds = %235
  %391 = load float*, float** %9, align 8
  %392 = load i32, i32* %22, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds float, float* %391, i64 %393
  %395 = load float, float* %394, align 4
  %396 = load float*, float** %14, align 8
  %397 = load i32, i32* %26, align 4
  %398 = load i32, i32* %23, align 4
  %399 = icmp sge i32 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %390
  %401 = load i32, i32* %23, align 4
  br label %405

402:                                              ; preds = %390
  %403 = load i32, i32* %23, align 4
  %404 = sub nsw i32 0, %403
  br label %405

405:                                              ; preds = %402, %400
  %406 = phi i32 [ %401, %400 ], [ %404, %402 ]
  %407 = sub nsw i32 %397, %406
  %408 = icmp sge i32 %407, 0
  br i1 %408, label %409, label %421

409:                                              ; preds = %405
  %410 = load i32, i32* %26, align 4
  %411 = load i32, i32* %23, align 4
  %412 = icmp sge i32 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %409
  %414 = load i32, i32* %23, align 4
  br label %418

415:                                              ; preds = %409
  %416 = load i32, i32* %23, align 4
  %417 = sub nsw i32 0, %416
  br label %418

418:                                              ; preds = %415, %413
  %419 = phi i32 [ %414, %413 ], [ %417, %415 ]
  %420 = sub nsw i32 %410, %419
  br label %434

421:                                              ; preds = %405
  %422 = load i32, i32* %26, align 4
  %423 = load i32, i32* %23, align 4
  %424 = icmp sge i32 %423, 0
  br i1 %424, label %425, label %427

425:                                              ; preds = %421
  %426 = load i32, i32* %23, align 4
  br label %430

427:                                              ; preds = %421
  %428 = load i32, i32* %23, align 4
  %429 = sub nsw i32 0, %428
  br label %430

430:                                              ; preds = %427, %425
  %431 = phi i32 [ %426, %425 ], [ %429, %427 ]
  %432 = sub nsw i32 %422, %431
  %433 = sub nsw i32 0, %432
  br label %434

434:                                              ; preds = %430, %418
  %435 = phi i32 [ %420, %418 ], [ %433, %430 ]
  %436 = load i32, i32* %25, align 4
  %437 = load i32, i32* %24, align 4
  %438 = icmp sge i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %434
  %440 = load i32, i32* %24, align 4
  br label %444

441:                                              ; preds = %434
  %442 = load i32, i32* %24, align 4
  %443 = sub nsw i32 0, %442
  br label %444

444:                                              ; preds = %441, %439
  %445 = phi i32 [ %440, %439 ], [ %443, %441 ]
  %446 = sub nsw i32 %436, %445
  %447 = icmp sge i32 %446, 0
  br i1 %447, label %448, label %460

448:                                              ; preds = %444
  %449 = load i32, i32* %25, align 4
  %450 = load i32, i32* %24, align 4
  %451 = icmp sge i32 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %448
  %453 = load i32, i32* %24, align 4
  br label %457

454:                                              ; preds = %448
  %455 = load i32, i32* %24, align 4
  %456 = sub nsw i32 0, %455
  br label %457

457:                                              ; preds = %454, %452
  %458 = phi i32 [ %453, %452 ], [ %456, %454 ]
  %459 = sub nsw i32 %449, %458
  br label %473

460:                                              ; preds = %444
  %461 = load i32, i32* %25, align 4
  %462 = load i32, i32* %24, align 4
  %463 = icmp sge i32 %462, 0
  br i1 %463, label %464, label %466

464:                                              ; preds = %460
  %465 = load i32, i32* %24, align 4
  br label %469

466:                                              ; preds = %460
  %467 = load i32, i32* %24, align 4
  %468 = sub nsw i32 0, %467
  br label %469

469:                                              ; preds = %466, %464
  %470 = phi i32 [ %465, %464 ], [ %468, %466 ]
  %471 = sub nsw i32 %461, %470
  %472 = sub nsw i32 0, %471
  br label %473

473:                                              ; preds = %469, %457
  %474 = phi i32 [ %459, %457 ], [ %472, %469 ]
  %475 = add nsw i32 %435, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds float, float* %396, i64 %476
  %478 = load float, float* %477, align 4
  %479 = fadd float %478, %395
  store float %479, float* %477, align 4
  br label %480

480:                                              ; preds = %473, %383
  br label %481

481:                                              ; preds = %480
  %482 = load i32, i32* %22, align 4
  %483 = add nsw i32 %482, 1
  store i32 %483, i32* %22, align 4
  %484 = load i32, i32* %24, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %24, align 4
  br label %163

486:                                              ; preds = %163
  br label %487

487:                                              ; preds = %486
  %488 = load i32, i32* %10, align 4
  %489 = load i32, i32* %21, align 4
  %490 = add nsw i32 %489, %488
  store i32 %490, i32* %21, align 4
  %491 = load i32, i32* %10, align 4
  %492 = load i32, i32* %23, align 4
  %493 = add nsw i32 %492, %491
  store i32 %493, i32* %23, align 4
  br label %154

494:                                              ; preds = %154
  %495 = load i32, i32* %8, align 4
  ret i32 %495
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @nocompute(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %17, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %32, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, -1
  br i1 %31, label %32, label %46

32:                                               ; preds = %29, %26, %23, %7
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %17, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load float*, float** %14, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds float, float* %38, i64 %40
  store float 0.000000e+00, float* %41, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  br label %33

45:                                               ; preds = %33
  br label %65

46:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %17, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47
  %52 = load float*, float** %9, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %52, i64 %54
  %56 = load float, float* %55, align 4
  %57 = load float*, float** %14, align 8
  %58 = load i32, i32* %16, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %57, i64 %59
  store float %56, float* %60, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %16, align 4
  br label %47

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %45
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @predict(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  store float 0.000000e+00, float* %20, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %7
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  br label %43

34:                                               ; preds = %7
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = add nsw i32 %38, 1
  br label %41

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi i32 [ %33, %31 ], [ %42, %41 ]
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* %13, align 4
  %50 = sub nsw i32 %49, 1
  br label %60

51:                                               ; preds = %43
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %54
  %59 = phi i32 [ %56, %54 ], [ 0, %57 ]
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi i32 [ %50, %48 ], [ %59, %58 ]
  %62 = mul nsw i32 %45, %61
  store i32 %62, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %63

63:                                               ; preds = %72, %60
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* %22, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load float*, float** %14, align 8
  %69 = load i32, i32* %25, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float 0.000000e+00, float* %71, align 4
  br label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %25, align 4
  br label %63

75:                                               ; preds = %63
  store i32 0, i32* %16, align 4
  %76 = load i32, i32* %24, align 4
  store i32 %76, i32* %18, align 4
  br label %77

77:                                               ; preds = %131, %75
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %22, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %138

81:                                               ; preds = %77
  %82 = load i32, i32* %18, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %130

84:                                               ; preds = %81
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %130

88:                                               ; preds = %84
  %89 = load i32, i32* %16, align 4
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %23, align 4
  store i32 %90, i32* %19, align 4
  br label %91

91:                                               ; preds = %124, %88
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %129

97:                                               ; preds = %91
  %98 = load i32, i32* %19, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = load i32, i32* %19, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load float*, float** %9, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = load float*, float** %14, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %110, i64 %114
  store float %109, float* %115, align 4
  %116 = load float*, float** %9, align 8
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float, float* %116, i64 %118
  %120 = load float, float* %119, align 4
  %121 = load float, float* %20, align 4
  %122 = fadd float %121, %120
  store float %122, float* %20, align 4
  br label %123

123:                                              ; preds = %104, %100, %97
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %17, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  br label %91

129:                                              ; preds = %91
  br label %130

130:                                              ; preds = %129, %84, %81
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %18, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %18, align 4
  br label %77

138:                                              ; preds = %77
  %139 = load i32, i32* %15, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load float, float* %20, align 4
  %143 = fdiv float 2.000000e+00, %142
  store float %143, float* %21, align 4
  store i32 0, i32* %25, align 4
  br label %144

144:                                              ; preds = %156, %141
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load float, float* %21, align 4
  %150 = load float*, float** %14, align 8
  %151 = load i32, i32* %25, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds float, float* %150, i64 %152
  %154 = load float, float* %153, align 4
  %155 = fmul float %154, %149
  store float %155, float* %153, align 4
  br label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %25, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %25, align 4
  br label %144

159:                                              ; preds = %144
  br label %160

160:                                              ; preds = %159, %138
  %161 = load i32, i32* %8, align 4
  ret i32 %161
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ereflect(float* %0, i32 %1, i32 %2, i32 %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float*, align 8
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
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store float* %0, float** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store float* %5, float** %14, align 8
  store i32 %6, i32* %15, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %31, 1
  br label %34

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %33, %30
  %35 = phi i32 [ %32, %30 ], [ 0, %33 ]
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  br label %43

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %39
  %44 = phi i32 [ %41, %39 ], [ 0, %42 ]
  %45 = mul nsw i32 %36, %44
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* %22, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %52, %53
  br label %64

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 1
  br label %62

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %58
  %63 = phi i32 [ %60, %58 ], [ 0, %61 ]
  br label %64

64:                                               ; preds = %62, %51
  %65 = phi i32 [ %54, %51 ], [ %63, %62 ]
  store i32 %65, i32* %23, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %70, %71
  br label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, -1
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  br label %80

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %76
  %81 = phi i32 [ %78, %76 ], [ 0, %79 ]
  br label %82

82:                                               ; preds = %80, %69
  %83 = phi i32 [ %72, %69 ], [ %81, %80 ]
  %84 = mul nsw i32 %66, %83
  store i32 %84, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %85

85:                                               ; preds = %94, %82
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* %22, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load float*, float** %14, align 8
  %91 = load i32, i32* %25, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float, float* %90, i64 %92
  store float 0.000000e+00, float* %93, align 4
  br label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %25, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %25, align 4
  br label %85

97:                                               ; preds = %85
  store i32 0, i32* %16, align 4
  %98 = load i32, i32* %24, align 4
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %208, %97
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %22, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %215

103:                                              ; preds = %99
  %104 = load i32, i32* %16, align 4
  store i32 %104, i32* %17, align 4
  %105 = load i32, i32* %23, align 4
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %202, %103
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %108, %109
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %207

112:                                              ; preds = %106
  %113 = load float*, float** %9, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = load float*, float** %14, align 8
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp sge i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %112
  %123 = load i32, i32* %18, align 4
  br label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %18, align 4
  %126 = sub nsw i32 0, %125
  br label %127

127:                                              ; preds = %124, %122
  %128 = phi i32 [ %123, %122 ], [ %126, %124 ]
  %129 = sub nsw i32 %119, %128
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %127
  %132 = load i32, i32* %21, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp sge i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %18, align 4
  br label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %18, align 4
  %139 = sub nsw i32 0, %138
  br label %140

140:                                              ; preds = %137, %135
  %141 = phi i32 [ %136, %135 ], [ %139, %137 ]
  %142 = sub nsw i32 %132, %141
  br label %156

143:                                              ; preds = %127
  %144 = load i32, i32* %21, align 4
  %145 = load i32, i32* %18, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %18, align 4
  br label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %18, align 4
  %151 = sub nsw i32 0, %150
  br label %152

152:                                              ; preds = %149, %147
  %153 = phi i32 [ %148, %147 ], [ %151, %149 ]
  %154 = sub nsw i32 %144, %153
  %155 = sub nsw i32 0, %154
  br label %156

156:                                              ; preds = %152, %140
  %157 = phi i32 [ %142, %140 ], [ %155, %152 ]
  %158 = load i32, i32* %20, align 4
  %159 = load i32, i32* %19, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* %19, align 4
  br label %166

163:                                              ; preds = %156
  %164 = load i32, i32* %19, align 4
  %165 = sub nsw i32 0, %164
  br label %166

166:                                              ; preds = %163, %161
  %167 = phi i32 [ %162, %161 ], [ %165, %163 ]
  %168 = sub nsw i32 %158, %167
  %169 = icmp sge i32 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i32, i32* %20, align 4
  %172 = load i32, i32* %19, align 4
  %173 = icmp sge i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* %19, align 4
  br label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %19, align 4
  %178 = sub nsw i32 0, %177
  br label %179

179:                                              ; preds = %176, %174
  %180 = phi i32 [ %175, %174 ], [ %178, %176 ]
  %181 = sub nsw i32 %171, %180
  br label %195

182:                                              ; preds = %166
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* %19, align 4
  %185 = icmp sge i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* %19, align 4
  br label %191

188:                                              ; preds = %182
  %189 = load i32, i32* %19, align 4
  %190 = sub nsw i32 0, %189
  br label %191

191:                                              ; preds = %188, %186
  %192 = phi i32 [ %187, %186 ], [ %190, %188 ]
  %193 = sub nsw i32 %183, %192
  %194 = sub nsw i32 0, %193
  br label %195

195:                                              ; preds = %191, %179
  %196 = phi i32 [ %181, %179 ], [ %194, %191 ]
  %197 = add nsw i32 %157, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %118, i64 %198
  %200 = load float, float* %199, align 4
  %201 = fadd float %200, %117
  store float %201, float* %199, align 4
  br label %202

202:                                              ; preds = %195
  %203 = load i32, i32* %17, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %17, align 4
  %205 = load i32, i32* %19, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %19, align 4
  br label %106

207:                                              ; preds = %106
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %16, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %18, align 4
  br label %99

215:                                              ; preds = %99
  %216 = load i32, i32* %12, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %215
  %219 = load i32, i32* %20, align 4
  store i32 %219, i32* %16, align 4
  br label %220

220:                                              ; preds = %233, %218
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %22, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %237

224:                                              ; preds = %220
  %225 = load float*, float** %14, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fpext float %229 to double
  %231 = fmul double %230, 0x3FF6A09E667F3BCD
  %232 = fptrunc double %231 to float
  store float %232, float* %228, align 4
  br label %233

233:                                              ; preds = %224
  %234 = load i32, i32* %10, align 4
  %235 = load i32, i32* %16, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %16, align 4
  br label %220

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237, %215
  %239 = load i32, i32* %13, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %238
  %242 = load i32, i32* %21, align 4
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %258, %241
  %244 = load i32, i32* %17, align 4
  %245 = load i32, i32* %21, align 4
  %246 = load i32, i32* %10, align 4
  %247 = add nsw i32 %245, %246
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %243
  %250 = load float*, float** %14, align 8
  %251 = load i32, i32* %17, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float, float* %250, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = fmul double %255, 0x3FF6A09E667F3BCD
  %257 = fptrunc double %256 to float
  store float %257, float* %253, align 4
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %17, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %17, align 4
  br label %243

261:                                              ; preds = %243
  br label %262

262:                                              ; preds = %261, %238
  store double 0.000000e+00, double* %26, align 8
  store i32 0, i32* %25, align 4
  br label %263

263:                                              ; preds = %282, %262
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %22, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %285

267:                                              ; preds = %263
  %268 = load float*, float** %14, align 8
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float, float* %268, i64 %270
  %272 = load float, float* %271, align 4
  %273 = load float*, float** %14, align 8
  %274 = load i32, i32* %25, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds float, float* %273, i64 %275
  %277 = load float, float* %276, align 4
  %278 = fmul float %272, %277
  %279 = fpext float %278 to double
  %280 = load double, double* %26, align 8
  %281 = fadd double %280, %279
  store double %281, double* %26, align 8
  br label %282

282:                                              ; preds = %267
  %283 = load i32, i32* %25, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %25, align 4
  br label %263

285:                                              ; preds = %263
  %286 = load double, double* %26, align 8
  %287 = call double @sqrt(double %286) #5
  store double %287, double* %26, align 8
  store double 0.000000e+00, double* %27, align 8
  store i32 0, i32* %25, align 4
  br label %288

288:                                              ; preds = %307, %285
  %289 = load i32, i32* %25, align 4
  %290 = load i32, i32* %22, align 4
  %291 = icmp slt i32 %289, %290
  br i1 %291, label %292, label %310

292:                                              ; preds = %288
  %293 = load float*, float** %9, align 8
  %294 = load i32, i32* %25, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds float, float* %293, i64 %295
  %297 = load float, float* %296, align 4
  %298 = load float*, float** %9, align 8
  %299 = load i32, i32* %25, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds float, float* %298, i64 %300
  %302 = load float, float* %301, align 4
  %303 = fmul float %297, %302
  %304 = fpext float %303 to double
  %305 = load double, double* %27, align 8
  %306 = fadd double %305, %304
  store double %306, double* %27, align 8
  br label %307

307:                                              ; preds = %292
  %308 = load i32, i32* %25, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %25, align 4
  br label %288

310:                                              ; preds = %288
  %311 = load double, double* %27, align 8
  %312 = call double @sqrt(double %311) #5
  store double %312, double* %27, align 8
  %313 = load double, double* %26, align 8
  %314 = load double, double* %27, align 8
  %315 = fdiv double %313, %314
  store double %315, double* %26, align 8
  store i32 0, i32* %25, align 4
  br label %316

316:                                              ; preds = %330, %310
  %317 = load i32, i32* %25, align 4
  %318 = load i32, i32* %22, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %333

320:                                              ; preds = %316
  %321 = load double, double* %26, align 8
  %322 = load float*, float** %14, align 8
  %323 = load i32, i32* %25, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds float, float* %322, i64 %324
  %326 = load float, float* %325, align 4
  %327 = fpext float %326 to double
  %328 = fdiv double %327, %321
  %329 = fptrunc double %328 to float
  store float %329, float* %325, align 4
  br label %330

330:                                              ; preds = %320
  %331 = load i32, i32* %25, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %25, align 4
  br label %316

333:                                              ; preds = %316
  %334 = load i32, i32* %8, align 4
  ret i32 %334
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca i32, align 4
  %20 = alloca i16*, align 8
  %21 = alloca i16*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i16*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i16 128, i16* %8, align 2
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 (i32, i8**, float**, i32*, i32*, i32*, double*, %struct._IO_FILE**, ...) bitcast (i32 (i32, i8**, float**, i32*, i32*, i32*, double*, %struct._IO_FILE**)* @parse_epic_args to i32 (i32, i8**, float**, i32*, i32*, i32*, double*, %struct._IO_FILE**, ...)*)(i32 %27, i8** %28, float** %7, i32* %13, i32* %14, i32* %15, double* %18, %struct._IO_FILE** %6)
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %15, align 4
  %34 = mul nsw i32 2, %33
  %35 = shl i32 1, %34
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 2
  %42 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %41)
  %43 = bitcast i8* %42 to i16*
  store i16* %43, i16** %21, align 8
  %44 = load i32, i32* %15, align 4
  %45 = mul nsw i32 3, %44
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 2
  %49 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %48)
  %50 = bitcast i8* %49 to i16*
  store i16* %50, i16** %20, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %52, i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %2
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.1.11, i64 0, i64 0), i32 %59)
  call void @exit(i32 -1) #6
  unreachable

61:                                               ; preds = %2
  %62 = load i32, i32* %15, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.12, i64 0, i64 0), i32 %62)
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %80, %61
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = mul nsw i32 %66, %67
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i32
  %73 = sitofp i32 %72 to float
  %74 = load float*, float** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fmul float %78, %73
  store float %79, float* %77, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %64

83:                                               ; preds = %64
  %84 = load float*, float** %7, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 (float*, i32, i32, i32, float*, float*, i32, ...) bitcast (i32 (float*, i32, i32, i32, float*, float*, i32)* @build_pyr to i32 (float*, i32, i32, i32, float*, float*, i32, ...)*)(float* %84, i32 %85, i32 %86, i32 %87, float* getelementptr inbounds ([15 x float], [15 x float]* @lo_filter, i64 0, i64 0), float* getelementptr inbounds ([15 x float], [15 x float]* @hi_filter, i64 0, i64 0), i32 15)
  %89 = load double, double* %18, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.13, i64 0, i64 0), double %89)
  %91 = load i16, i16* %8, align 2
  %92 = zext i16 %91 to i32
  %93 = sitofp i32 %92 to double
  %94 = load double, double* %18, align 8
  %95 = fmul double %94, %93
  store double %95, double* %18, align 8
  %96 = load float*, float** %7, align 8
  %97 = load i16*, i16** %21, align 8
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = mul nsw i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = load double, double* %18, align 8
  %103 = load i16*, i16** %20, align 8
  %104 = call i32 (float*, i16*, i32, i32, double, i16*, ...) bitcast (i32 (float*, i16*, i32, i32, double, i16*)* @quantize_pyr to i32 (float*, i16*, i32, i32, double, i16*, ...)*)(float* %96, i16* %97, i32 %100, i32 %101, double %102, i16* %103)
  %105 = load float*, float** %7, align 8
  %106 = bitcast float* %105 to i8*
  %107 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4.14, i64 0, i64 0))
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 2
  %114 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %113)
  %115 = bitcast i8* %114 to i16*
  store i16* %115, i16** %24, align 8
  %116 = load i16*, i16** %21, align 8
  %117 = load i32, i32* %16, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i16, i16* %116, i64 %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = mul nsw i32 %120, %121
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i16*, i16** %24, align 8
  %126 = call i32 (i16*, i32, i16*, ...) bitcast (i32 (i16*, i32, i16*)* @run_length_encode_zeros to i32 (i16*, i32, i16*, ...)*)(i16* %119, i32 %124, i16* %125)
  store i32 %126, i32* %22, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.15, i64 0, i64 0))
  %128 = load i32, i32* %22, align 4
  %129 = zext i32 %128 to i64
  %130 = mul i64 %129, 2
  %131 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %130)
  store i8* %131, i8** %26, align 8
  %132 = load i16*, i16** %24, align 8
  %133 = load i32, i32* %22, align 4
  %134 = load i8*, i8** %26, align 8
  %135 = call i32 (i16*, i32, i8**, i32*, i8*, ...) bitcast (i32 (i16*, i32, i8**, i32*, i8*)* @huffman_encode to i32 (i16*, i32, i8**, i32*, i8*, ...)*)(i16* %132, i32 %133, i8** %25, i32* %19, i8* %134)
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %22, align 4
  %138 = load i32, i32* %23, align 4
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6.16, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7.17, i64 0, i64 0))
  store i8 -1, i8* @temp_byte, align 1
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %142 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %141)
  %143 = load i32, i32* %15, align 4
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* @temp_byte, align 1
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %146 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %145)
  %147 = load i32, i32* %13, align 4
  %148 = trunc i32 %147 to i16
  store i16 %148, i16* @temp_short, align 2
  %149 = load i16, i16* @temp_short, align 2
  %150 = sext i16 %149 to i32
  %151 = and i32 %150, 65280
  %152 = ashr i32 %151, 8
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* @temp_byte, align 1
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %155 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %154)
  %156 = load i16, i16* @temp_short, align 2
  %157 = sext i16 %156 to i32
  %158 = and i32 %157, 255
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* @temp_byte, align 1
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %161 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %160)
  %162 = load i32, i32* %14, align 4
  %163 = trunc i32 %162 to i16
  store i16 %163, i16* @temp_short, align 2
  %164 = load i16, i16* @temp_short, align 2
  %165 = sext i16 %164 to i32
  %166 = and i32 %165, 65280
  %167 = ashr i32 %166, 8
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* @temp_byte, align 1
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %170 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %169)
  %171 = load i16, i16* @temp_short, align 2
  %172 = sext i16 %171 to i32
  %173 = and i32 %172, 255
  %174 = trunc i32 %173 to i8
  store i8 %174, i8* @temp_byte, align 1
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %176 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %175)
  %177 = load i16, i16* %8, align 2
  store i16 %177, i16* @temp_short, align 2
  %178 = load i16, i16* @temp_short, align 2
  %179 = sext i16 %178 to i32
  %180 = and i32 %179, 65280
  %181 = ashr i32 %180, 8
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* @temp_byte, align 1
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %184 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %183)
  %185 = load i16, i16* @temp_short, align 2
  %186 = sext i16 %185 to i32
  %187 = and i32 %186, 255
  %188 = trunc i32 %187 to i8
  store i8 %188, i8* @temp_byte, align 1
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %190 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %189)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %192 = call i64 @ftell(%struct._IO_FILE* %191)
  store i64 %192, i64* %17, align 8
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8.18, i64 0, i64 0), i64 %192)
  store i32 0, i32* %12, align 4
  %194 = load i32, i32* %12, align 4
  %195 = or i32 -128, %194
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* @temp_byte, align 1
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %198 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %197)
  %199 = load i16*, i16** %20, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i16, i16* %199, i64 %201
  %203 = load i16, i16* %202, align 2
  store i16 %203, i16* @temp_short, align 2
  %204 = load i16, i16* @temp_short, align 2
  %205 = sext i16 %204 to i32
  %206 = and i32 %205, 65280
  %207 = ashr i32 %206, 8
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* @temp_byte, align 1
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %210 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %209)
  %211 = load i16, i16* @temp_short, align 2
  %212 = sext i16 %211 to i32
  %213 = and i32 %212, 255
  %214 = trunc i32 %213 to i8
  store i8 %214, i8* @temp_byte, align 1
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %216 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %215)
  store i8 0, i8* @temp_byte, align 1
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %218 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %217)
  %219 = load i16*, i16** %21, align 8
  %220 = bitcast i16* %219 to i8*
  %221 = load i32, i32* %16, align 4
  %222 = sext i32 %221 to i64
  %223 = mul i64 2, %222
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %225 = call i64 @fwrite(i8* %220, i64 1, i64 %223, %struct._IO_FILE* %224)
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %227 = call i64 @ftell(%struct._IO_FILE* %226)
  %228 = load i64, i64* %17, align 8
  %229 = sub nsw i64 %227, %228
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9.19, i64 0, i64 0), i64 %229)
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %232 = call i64 @ftell(%struct._IO_FILE* %231)
  store i64 %232, i64* %17, align 8
  store i32 1, i32* %12, align 4
  %233 = load i32, i32* %15, align 4
  store i32 %233, i32* %11, align 4
  br label %234

234:                                              ; preds = %271, %83
  %235 = load i32, i32* %11, align 4
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %274

237:                                              ; preds = %234
  store i32 1, i32* %9, align 4
  br label %238

238:                                              ; preds = %265, %237
  %239 = load i32, i32* %9, align 4
  %240 = icmp slt i32 %239, 4
  br i1 %240, label %241, label %270

241:                                              ; preds = %238
  %242 = load i32, i32* %12, align 4
  %243 = or i32 -128, %242
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* @temp_byte, align 1
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %246 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %245)
  %247 = load i16*, i16** %20, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i16, i16* %247, i64 %249
  %251 = load i16, i16* %250, align 2
  store i16 %251, i16* @temp_short, align 2
  %252 = load i16, i16* @temp_short, align 2
  %253 = sext i16 %252 to i32
  %254 = and i32 %253, 65280
  %255 = ashr i32 %254, 8
  %256 = trunc i32 %255 to i8
  store i8 %256, i8* @temp_byte, align 1
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %258 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %257)
  %259 = load i16, i16* @temp_short, align 2
  %260 = sext i16 %259 to i32
  %261 = and i32 %260, 255
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* @temp_byte, align 1
  %263 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %264 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %263)
  br label %265

265:                                              ; preds = %241
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %12, align 4
  br label %238

270:                                              ; preds = %238
  br label %271

271:                                              ; preds = %270
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %11, align 4
  br label %234

274:                                              ; preds = %234
  %275 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %276 = call i64 @ftell(%struct._IO_FILE* %275)
  %277 = load i64, i64* %17, align 8
  %278 = sub nsw i64 %276, %277
  %279 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10.20, i64 0, i64 0), i64 %278)
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %281 = call i64 @ftell(%struct._IO_FILE* %280)
  store i64 %281, i64* %17, align 8
  store i8 1, i8* @temp_byte, align 1
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %283 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %282)
  %284 = load i32, i32* %22, align 4
  store i32 %284, i32* @temp_int, align 4
  %285 = load i32, i32* @temp_int, align 4
  %286 = and i32 %285, -16777216
  %287 = lshr i32 %286, 24
  %288 = trunc i32 %287 to i8
  store i8 %288, i8* @temp_byte, align 1
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %290 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %289)
  %291 = load i32, i32* @temp_int, align 4
  %292 = and i32 %291, 16711680
  %293 = ashr i32 %292, 16
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* @temp_byte, align 1
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %296 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %295)
  %297 = load i32, i32* @temp_int, align 4
  %298 = and i32 %297, 65280
  %299 = ashr i32 %298, 8
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* @temp_byte, align 1
  %301 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %302 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %301)
  %303 = load i32, i32* @temp_int, align 4
  %304 = and i32 %303, 255
  %305 = trunc i32 %304 to i8
  store i8 %305, i8* @temp_byte, align 1
  %306 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %307 = call i64 @fwrite(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %306)
  %308 = load i8*, i8** %25, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 1, %310
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %313 = call i64 @fwrite(i8* %308, i64 1, i64 %311, %struct._IO_FILE* %312)
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %315 = call i64 @ftell(%struct._IO_FILE* %314)
  %316 = load i64, i64* %17, align 8
  %317 = sub nsw i64 %315, %316
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %317)
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %320 = call i64 @ftell(%struct._IO_FILE* %319)
  store i64 %320, i64* %17, align 8
  %321 = load i8*, i8** %26, align 8
  %322 = load i32, i32* %23, align 4
  %323 = zext i32 %322 to i64
  %324 = mul i64 1, %323
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %326 = call i64 @fwrite(i8* %321, i64 1, i64 %324, %struct._IO_FILE* %325)
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %328 = call i64 @ftell(%struct._IO_FILE* %327)
  %329 = load i64, i64* %17, align 8
  %330 = sub nsw i64 %328, %329
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %330)
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %333 = call i64 @ftell(%struct._IO_FILE* %332)
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %335 = call i64 @ftell(%struct._IO_FILE* %334)
  %336 = sitofp i64 %335 to float
  %337 = fmul float 8.000000e+00, %336
  %338 = load i32, i32* %13, align 4
  %339 = load i32, i32* %14, align 4
  %340 = mul nsw i32 %338, %339
  %341 = sitofp i32 %340 to float
  %342 = fdiv float %337, %341
  %343 = fpext float %342 to double
  %344 = load i32, i32* %13, align 4
  %345 = load i32, i32* %14, align 4
  %346 = mul nsw i32 %344, %345
  %347 = sitofp i32 %346 to float
  %348 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %349 = call i64 @ftell(%struct._IO_FILE* %348)
  %350 = sitofp i64 %349 to float
  %351 = fdiv float %347, %350
  %352 = fpext float %351 to double
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.13, i64 0, i64 0), i64 %333, double %343, double %352)
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %355 = call i32 @fclose(%struct._IO_FILE* %354)
  %356 = load i16*, i16** %21, align 8
  %357 = bitcast i16* %356 to i8*
  %358 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %357)
  %359 = load i16*, i16** %20, align 8
  %360 = bitcast i16* %359 to i8*
  %361 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %360)
  %362 = load i16*, i16** %24, align 8
  %363 = bitcast i16* %362 to i8*
  %364 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %363)
  %365 = load i8*, i8** %26, align 8
  %366 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %365)
  %367 = load i32, i32* %3, align 4
  ret i32 %367
}

; Function Attrs: noreturn
declare dso_local void @exit(i32) #3

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_byte_image(%struct._IO_FILE* %0, float* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %25 = call i64 @fread(i8* %21, i64 1, i64 %23, %struct._IO_FILE* %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

32:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = uitofp i8 %42 to float
  %44 = load float*, float** %7, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds float, float* %44, i64 %46
  store float %43, float* %47, align 4
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load i8*, i8** %12, align 8
  %53 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %52)
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @PGMStream(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i8, align 1
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %5 = call i32 @getc(%struct._IO_FILE* %4)
  %6 = trunc i32 %5 to i8
  store i8 %6, i8* %3, align 1
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %10 = call i32 @ungetc(i32 %8, %struct._IO_FILE* %9)
  %11 = load i8, i8* %3, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 80
  %14 = zext i1 %13 to i32
  ret i32 %14
}

declare dso_local i32 @getc(%struct._IO_FILE*) #1

declare dso_local i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float* @ReadMatrixFromPGMStream(%struct._IO_FILE* %0, i32* %1, i32* %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %16 = icmp eq %struct._IO_FILE* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store float* null, float** %4, align 8
  br label %108

18:                                               ; preds = %3
  %19 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %21 = call i8* @fgets(i8* %19, i32 80, %struct._IO_FILE* %20)
  %22 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 50
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 1, i32* %14, align 4
  br label %37

27:                                               ; preds = %18
  %28 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 53
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %14, align 4
  br label %36

33:                                               ; preds = %27
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1.22, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %26
  br label %38

38:                                               ; preds = %42, %37
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %41 = call i8* @fgets(i8* %39, i32 80, %struct._IO_FILE* %40)
  br label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %44 = load i8, i8* %43, align 16
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %38, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %49 = load i32*, i32** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.23, i64 0, i64 0), i32* %49, i32* %50) #5
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %54 = call i8* @fgets(i8* %52, i32 80, %struct._IO_FILE* %53)
  %55 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.24, i64 0, i64 0), i64 3)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4.25, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

61:                                               ; preds = %47
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 %63, %65
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = call i8* @malloc(i64 %68)
  %70 = bitcast i8* %69 to float*
  store float* %70, float** %8, align 8
  %71 = load float*, float** %8, align 8
  %72 = icmp eq float* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5.26, i64 0, i64 0))
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %77 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (...)* @close to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %76)
  call void @exit(i32 -1) #6
  unreachable

78:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %103, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %82, %84
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.27, i64 0, i64 0), i32* %13)
  br label %96

93:                                               ; preds = %87
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %95 = call i32 @fgetc(%struct._IO_FILE* %94)
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32, i32* %13, align 4
  %98 = sitofp i32 %97 to float
  %99 = load float*, float** %8, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %79

106:                                              ; preds = %79
  %107 = load float*, float** %8, align 8
  store float* %107, float** %4, align 8
  br label %108

108:                                              ; preds = %106, %17
  %109 = load float*, float** %4, align 8
  ret float* %109
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local i32 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @close(...) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fgetc(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_byte_image(%struct._IO_FILE* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load i8*, i8** %12, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %44 = call i64 @fwrite(i8* %40, i64 1, i64 %42, %struct._IO_FILE* %43)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i8*, i8** %12, align 8
  %47 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.28, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

53:                                               ; preds = %39
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @write_pgm_image(%struct._IO_FILE* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 1
  %20 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %19)
  store i8* %20, i8** %12, align 8
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %36, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 %31, i8* %35, align 1
  br label %36

36:                                               ; preds = %25
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.29, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9.30, i64 0, i64 0), double 1.100000e+00)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.31, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11.32, i64 0, i64 0))
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %54 = call i64 @fwrite(i8* %50, i64 1, i64 %52, %struct._IO_FILE* %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  %56 = load i8*, i8** %12, align 8
  %57 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %56)
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %39
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.28, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

63:                                               ; preds = %39
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @huffman_encode(i16* %0, i32 %1, i8** %2, i32* %3, i8* %4) #0 {
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [65536 x %struct.node*], align 16
  %12 = alloca %struct.node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i16* %0, i16** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %22, %5
  %16 = load i32, i32* %14, align 4
  %17 = icmp slt i32 %16, 65536
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %14, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 %20
  store %struct.node* null, %struct.node** %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %14, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  br label %15

25:                                               ; preds = %15
  %26 = load i16*, i16** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %29 = call i32 @compute_histogram(i16* %26, i32 %27, %struct.node** %28)
  %30 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %31 = call i32 @build_huffman_tree(%struct.node** %30, %struct.node** %12)
  %32 = load i16*, i16** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds [65536 x %struct.node*], [65536 x %struct.node*]* %11, i64 0, i64 0
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @encode_stream(i16* %32, i32 %33, %struct.node** %34, i8* %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.node*, %struct.node** %12, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = call i32 @pack_huffman_tree(%struct.node* %37, i8** %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.node*, %struct.node** %12, align 8
  %42 = call i32 @free_tree_nodes(%struct.node* %41)
  %43 = load i32, i32* %13, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_histogram(i16* %0, i32 %1, %struct.node** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.node**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.node** %2, %struct.node*** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %47, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.node**, %struct.node*** %7, align 8
  %16 = load i16*, i16** %5, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds %struct.node*, %struct.node** %15, i64 %18
  %20 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %20, %struct.node** %9, align 8
  %21 = load %struct.node*, %struct.node** %9, align 8
  %22 = icmp eq %struct.node* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 48)
  %25 = bitcast i8* %24 to %struct.node*
  %26 = load %struct.node**, %struct.node*** %7, align 8
  %27 = load i16*, i16** %5, align 8
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds %struct.node*, %struct.node** %26, i64 %29
  store %struct.node* %25, %struct.node** %30, align 8
  store %struct.node* %25, %struct.node** %9, align 8
  %31 = load i16*, i16** %5, align 8
  %32 = load i16, i16* %31, align 2
  %33 = load %struct.node*, %struct.node** %9, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 4
  store i16 %32, i16* %34, align 8
  %35 = load %struct.node*, %struct.node** %9, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 3
  store %struct.node* null, %struct.node** %38, align 8
  %39 = load %struct.node*, %struct.node** %9, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 2
  store %struct.node* null, %struct.node** %40, align 8
  br label %46

41:                                               ; preds = %14
  %42 = load %struct.node*, %struct.node** %9, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  %50 = load i16*, i16** %5, align 8
  %51 = getelementptr inbounds i16, i16* %50, i32 1
  store i16* %51, i16** %5, align 8
  br label %10

52:                                               ; preds = %10
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @build_huffman_tree(%struct.node** %0, %struct.node** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node**, align 8
  %5 = alloca %struct.node**, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca [65536 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.node** %0, %struct.node*** %4, align 8
  store %struct.node** %1, %struct.node*** %5, align 8
  store %struct.node* null, %struct.node** %6, align 8
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 65536
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.node**, %struct.node*** %4, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.node*, %struct.node** %14, i64 %16
  %18 = load %struct.node*, %struct.node** %17, align 8
  %19 = icmp ne %struct.node* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.node**, %struct.node*** %4, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.node*, %struct.node** %21, i64 %23
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = call i32 @insert_in_ordered_list(%struct.node* %25, %struct.node** %6)
  br label %27

27:                                               ; preds = %20, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %10

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %37, %31
  %33 = load %struct.node*, %struct.node** %6, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load %struct.node*, %struct.node** %34, align 8
  %36 = icmp ne %struct.node* %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 48)
  %39 = bitcast i8* %38 to %struct.node*
  store %struct.node* %39, %struct.node** %7, align 8
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = load %struct.node*, %struct.node** %7, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 2
  store %struct.node* %40, %struct.node** %42, align 8
  %43 = load %struct.node*, %struct.node** %6, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 1
  %45 = load %struct.node*, %struct.node** %44, align 8
  %46 = load %struct.node*, %struct.node** %7, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 3
  store %struct.node* %45, %struct.node** %47, align 8
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 2
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.node*, %struct.node** %7, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 3
  %55 = load %struct.node*, %struct.node** %54, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add i32 %52, %57
  %59 = load %struct.node*, %struct.node** %7, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.node*, %struct.node** %6, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 1
  %63 = load %struct.node*, %struct.node** %62, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 1
  %65 = load %struct.node*, %struct.node** %64, align 8
  store %struct.node* %65, %struct.node** %6, align 8
  %66 = load %struct.node*, %struct.node** %7, align 8
  %67 = call i32 @insert_in_ordered_list(%struct.node* %66, %struct.node** %6)
  br label %32

68:                                               ; preds = %32
  %69 = load %struct.node*, %struct.node** %6, align 8
  %70 = getelementptr inbounds [65536 x i8], [65536 x i8]* %8, i64 0, i64 0
  %71 = call i32 @compute_code_strings(%struct.node* %69, i8* %70, i32 0)
  %72 = load %struct.node*, %struct.node** %6, align 8
  %73 = load %struct.node**, %struct.node*** %5, align 8
  store %struct.node* %72, %struct.node** %73, align 8
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @encode_stream(i16* %0, i32 %1, %struct.node** %2, i8* %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.node**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.node** %2, %struct.node*** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %12, align 8
  store i8 1, i8* %13, align 1
  %15 = load i8*, i8** %12, align 8
  store i8 0, i8* %15, align 1
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %68, %4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %73

20:                                               ; preds = %16
  %21 = load %struct.node**, %struct.node*** %7, align 8
  %22 = load i16*, i16** %5, align 8
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i64
  %25 = getelementptr inbounds %struct.node*, %struct.node** %21, i64 %24
  %26 = load %struct.node*, %struct.node** %25, align 8
  store %struct.node* %26, %struct.node** %10, align 8
  %27 = load %struct.node*, %struct.node** %10, align 8
  %28 = icmp eq %struct.node* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1.35, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

31:                                               ; preds = %20
  %32 = load %struct.node*, %struct.node** %10, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 5
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %11, align 8
  br label %35

35:                                               ; preds = %66, %31
  %36 = load i8*, i8** %11, align 8
  %37 = load i8, i8* %36, align 1
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load i8*, i8** %11, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 49
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i8, i8* %13, align 1
  %46 = zext i8 %45 to i32
  %47 = load i8*, i8** %12, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = or i32 %49, %46
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %11, align 8
  %55 = load i8, i8* %13, align 1
  %56 = zext i8 %55 to i32
  %57 = shl i32 %56, 1
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %13, align 1
  %59 = load i8, i8* %13, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  store i8 1, i8* %13, align 1
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8*, i8** %12, align 8
  store i8 0, i8* %65, align 1
  br label %66

66:                                               ; preds = %62, %52
  br label %35

67:                                               ; preds = %35
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  %71 = load i16*, i16** %5, align 8
  %72 = getelementptr inbounds i16, i16* %71, i32 1
  store i16* %72, i16** %5, align 8
  br label %16

73:                                               ; preds = %16
  %74 = load i8*, i8** %12, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = add nsw i64 %78, 1
  %80 = trunc i64 %79 to i32
  ret i32 %80
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_huffman_tree(%struct.node* %0, i8** %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = call i32 @count_leaves(%struct.node* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 2, %9
  %11 = sext i32 %10 to i64
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 2, %13
  %15 = add i64 %11, %14
  %16 = sub i64 %15, 1
  %17 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %16)
  %18 = load i8**, i8*** %4, align 8
  store i8* %17, i8** %18, align 8
  store i8* %17, i8** %5, align 8
  %19 = load %struct.node*, %struct.node** %3, align 8
  %20 = call i32 @pack_tree_iter(%struct.node* %19, i8** %5)
  %21 = load i8*, i8** %5, align 8
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %21 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @free_tree_nodes(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp ne %struct.node* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.node*, %struct.node** %3, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 2
  %11 = load %struct.node*, %struct.node** %10, align 8
  %12 = call i32 @free_tree_nodes(%struct.node* %11)
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 3
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = call i32 @free_tree_nodes(%struct.node* %15)
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 5
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %20)
  br label %22

22:                                               ; preds = %17, %8
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = bitcast %struct.node* %23 to i8*
  %25 = call i32 (i8*, ...) bitcast (i32 (i8*)* @check_free to i32 (i8*, ...)*)(i8* %24)
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @count_leaves(%struct.node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %4 = load %struct.node*, %struct.node** %3, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 2
  %6 = load %struct.node*, %struct.node** %5, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 2
  %12 = load %struct.node*, %struct.node** %11, align 8
  %13 = call i32 @count_leaves(%struct.node* %12)
  %14 = load %struct.node*, %struct.node** %3, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 3
  %16 = load %struct.node*, %struct.node** %15, align 8
  %17 = call i32 @count_leaves(%struct.node* %16)
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %9, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pack_tree_iter(%struct.node* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load %struct.node*, %struct.node** %4, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  store i8 1, i8* %14, align 1
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 4
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %6, align 2
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %39, %12
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %23, 2
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 255
  %29 = trunc i32 %28 to i8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  store i8 %29, i8* %31, align 1
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  %35 = load i16, i16* %6, align 2
  %36 = zext i16 %35 to i32
  %37 = ashr i32 %36, 8
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %21

42:                                               ; preds = %21
  br label %59

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load %struct.node*, %struct.node** %4, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  %51 = load %struct.node*, %struct.node** %50, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @pack_tree_iter(%struct.node* %51, i8** %52)
  %54 = load %struct.node*, %struct.node** %4, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 3
  %56 = load %struct.node*, %struct.node** %55, align 8
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @pack_tree_iter(%struct.node* %56, i8** %57)
  br label %59

59:                                               ; preds = %43, %42
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @insert_in_ordered_list(%struct.node* %0, %struct.node** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node**, align 8
  %6 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store %struct.node** %1, %struct.node*** %5, align 8
  %7 = load %struct.node**, %struct.node*** %5, align 8
  %8 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %8, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = icmp eq %struct.node* %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ule i32 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %11, %2
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = load %struct.node*, %struct.node** %4, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 1
  store %struct.node* %20, %struct.node** %22, align 8
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = load %struct.node**, %struct.node*** %5, align 8
  store %struct.node* %23, %struct.node** %24, align 8
  br label %56

25:                                               ; preds = %11
  br label %26

26:                                               ; preds = %43, %25
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load %struct.node*, %struct.node** %28, align 8
  %30 = icmp ne %struct.node* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.node*, %struct.node** %6, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  %37 = load %struct.node*, %struct.node** %36, align 8
  %38 = getelementptr inbounds %struct.node, %struct.node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ugt i32 %34, %39
  br label %41

41:                                               ; preds = %31, %26
  %42 = phi i1 [ false, %26 ], [ %40, %31 ]
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = load %struct.node*, %struct.node** %6, align 8
  %45 = getelementptr inbounds %struct.node, %struct.node* %44, i32 0, i32 1
  %46 = load %struct.node*, %struct.node** %45, align 8
  store %struct.node* %46, %struct.node** %6, align 8
  br label %26

47:                                               ; preds = %41
  %48 = load %struct.node*, %struct.node** %6, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load %struct.node*, %struct.node** %49, align 8
  %51 = load %struct.node*, %struct.node** %4, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 1
  store %struct.node* %50, %struct.node** %52, align 8
  %53 = load %struct.node*, %struct.node** %4, align 8
  %54 = load %struct.node*, %struct.node** %6, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 1
  store %struct.node* %53, %struct.node** %55, align 8
  br label %56

56:                                               ; preds = %47, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @compute_code_strings(%struct.node* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.node*, %struct.node** %5, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 2
  %10 = load %struct.node*, %struct.node** %9, align 8
  %11 = icmp eq %struct.node* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  store i8 0, i8* %16, align 1
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i8* (i32, ...) bitcast (i8* (i32)* @check_malloc to i8* (i32, ...)*)(i32 %18)
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @strcpy(i8* %19, i8* %20) #5
  %22 = load %struct.node*, %struct.node** %5, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 5
  store i8* %21, i8** %23, align 8
  br label %47

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 48, i8* %28, align 1
  %29 = load %struct.node*, %struct.node** %5, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 2
  %31 = load %struct.node*, %struct.node** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @compute_code_strings(%struct.node* %31, i8* %32, i32 %34)
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  store i8 49, i8* %39, align 1
  %40 = load %struct.node*, %struct.node** %5, align 8
  %41 = getelementptr inbounds %struct.node, %struct.node* %40, i32 0, i32 3
  %42 = load %struct.node*, %struct.node** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @compute_code_strings(%struct.node* %42, i8* %43, i32 %45)
  br label %47

47:                                               ; preds = %24, %12
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.code_node*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %8 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 24)
  %9 = bitcast i8* %8 to %struct.code_node*
  store %struct.code_node* %9, %struct.code_node** %3, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %10)
  %12 = load i8, i8* @temp_byte, align 1
  store i8 %12, i8* %4, align 1
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %18 = call %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %17)
  %19 = load %struct.code_node*, %struct.code_node** %3, align 8
  %20 = getelementptr inbounds %struct.code_node, %struct.code_node* %19, i32 0, i32 0
  store %struct.code_node* %18, %struct.code_node** %20, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = call %struct.code_node* @read_huffman_tree(%struct._IO_FILE* %21)
  %23 = load %struct.code_node*, %struct.code_node** %3, align 8
  %24 = getelementptr inbounds %struct.code_node, %struct.code_node* %23, i32 0, i32 1
  store %struct.code_node* %22, %struct.code_node** %24, align 8
  br label %65

25:                                               ; preds = %1
  %26 = load i8, i8* %4, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %62

29:                                               ; preds = %25
  %30 = load %struct.code_node*, %struct.code_node** %3, align 8
  %31 = getelementptr inbounds %struct.code_node, %struct.code_node* %30, i32 0, i32 1
  store %struct.code_node* null, %struct.code_node** %31, align 8
  %32 = load %struct.code_node*, %struct.code_node** %3, align 8
  %33 = getelementptr inbounds %struct.code_node, %struct.code_node* %32, i32 0, i32 0
  store %struct.code_node* null, %struct.code_node** %33, align 8
  store i16 0, i16* %5, align 2
  store i32 0, i32* %7, align 4
  store i16 1, i16* %6, align 2
  br label %34

34:                                               ; preds = %51, %29
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 2
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %40 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %39)
  %41 = load i8, i8* @temp_byte, align 1
  store i8 %41, i8* %4, align 1
  %42 = load i8, i8* %4, align 1
  %43 = zext i8 %42 to i32
  %44 = load i16, i16* %6, align 2
  %45 = zext i16 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %48, %46
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %5, align 2
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i16, i16* %6, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %55, 8
  %57 = trunc i32 %56 to i16
  store i16 %57, i16* %6, align 2
  br label %34

58:                                               ; preds = %34
  %59 = load i16, i16* %5, align 2
  %60 = load %struct.code_node*, %struct.code_node** %3, align 8
  %61 = getelementptr inbounds %struct.code_node, %struct.code_node* %60, i32 0, i32 2
  store i16 %59, i16* %61, align 8
  br label %64

62:                                               ; preds = %25
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %16
  %66 = load %struct.code_node*, %struct.code_node** %3, align 8
  ret %struct.code_node* %66
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @read_and_huffman_decode(%struct._IO_FILE* %0, %struct.code_node* %1, i16* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.code_node*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca %struct.code_node*, align 8
  %13 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %6, align 8
  store %struct.code_node* %1, %struct.code_node** %7, align 8
  store i16* %2, i16** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %11, align 1
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %61, %4
  %15 = load i32, i32* %13, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %14
  %19 = load %struct.code_node*, %struct.code_node** %7, align 8
  store %struct.code_node* %19, %struct.code_node** %12, align 8
  br label %20

20:                                               ; preds = %48, %18
  %21 = load %struct.code_node*, %struct.code_node** %12, align 8
  %22 = getelementptr inbounds %struct.code_node, %struct.code_node* %21, i32 0, i32 0
  %23 = load %struct.code_node*, %struct.code_node** %22, align 8
  %24 = icmp ne %struct.code_node* %23, null
  br i1 %24, label %25, label %53

25:                                               ; preds = %20
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %31 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %30)
  %32 = load i8, i8* @temp_byte, align 1
  store i8 %32, i8* %10, align 1
  store i8 1, i8* %11, align 1
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.code_node*, %struct.code_node** %12, align 8
  %42 = getelementptr inbounds %struct.code_node, %struct.code_node* %41, i32 0, i32 1
  %43 = load %struct.code_node*, %struct.code_node** %42, align 8
  store %struct.code_node* %43, %struct.code_node** %12, align 8
  br label %48

44:                                               ; preds = %33
  %45 = load %struct.code_node*, %struct.code_node** %12, align 8
  %46 = getelementptr inbounds %struct.code_node, %struct.code_node* %45, i32 0, i32 0
  %47 = load %struct.code_node*, %struct.code_node** %46, align 8
  store %struct.code_node* %47, %struct.code_node** %12, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i8, i8* %11, align 1
  %50 = zext i8 %49 to i32
  %51 = shl i32 %50, 1
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %11, align 1
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.code_node*, %struct.code_node** %12, align 8
  %55 = getelementptr inbounds %struct.code_node, %struct.code_node* %54, i32 0, i32 2
  %56 = load i16, i16* %55, align 8
  %57 = load i16*, i16** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, i16* %57, i64 %59
  store i16 %56, i16* %60, align 2
  br label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %14

64:                                               ; preds = %14
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @print_list_nodes(%struct.node* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.37, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %2
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load %struct.node*, %struct.node** %4, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3.38, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.node*, %struct.node** %4, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = icmp ne %struct.node* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.node*, %struct.node** %4, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = call i32 @print_list_nodes(%struct.node* %26, i32 0)
  br label %30

28:                                               ; preds = %10
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.39, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_epic_args(i32 %0, i8** %1, float** %2, i32* %3, i32* %4, i32* %5, double* %6, %struct._IO_FILE** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca float**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct._IO_FILE**, align 8
  %18 = alloca %struct._IO_FILE*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store float** %2, float*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store double* %6, double** %16, align 8
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %17, align 8
  store i32 2, i32* %20, align 4
  %21 = load i32*, i32** %14, align 8
  store i32 256, i32* %21, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 256, i32* %22, align 4
  %23 = load i32*, i32** %15, align 8
  store i32 -1, i32* %23, align 4
  %24 = load double*, double** %16, align 8
  store double 2.000000e+01, double* %24, align 8
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = call i32 @epic_usage()
  br label %29

29:                                               ; preds = %27, %8
  %30 = load i8**, i8*** %11, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %19, align 8
  %34 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  store %struct._IO_FILE* %34, %struct._IO_FILE** %18, align 8
  %35 = load i8**, i8*** %11, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* (i8*, i8*, ...) bitcast (i8* (i8*, i8*)* @concatenate to i8* (i8*, i8*, ...)*)(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.43, i64 0, i64 0))
  store i8* %38, i8** %19, align 8
  br label %39

39:                                               ; preds = %143, %29
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %146

43:                                               ; preds = %39
  %44 = load i8**, i8*** %11, align 8
  %45 = load i32, i32* %20, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0)) #7
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %20, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %20, align 4
  %54 = load i8**, i8*** %11, align 8
  %55 = load i32, i32* %20, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %19, align 8
  br label %143

59:                                               ; preds = %43
  %60 = load i8**, i8*** %11, align 8
  %61 = load i32, i32* %20, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.45, i64 0, i64 0)) #7
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %20, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %20, align 4
  %70 = load i8**, i8*** %11, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8*, i8** %70, i64 %72
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @atoi(i8* %74) #7
  %76 = load i32*, i32** %15, align 8
  store i32 %75, i32* %76, align 4
  br label %142

77:                                               ; preds = %59
  %78 = load i8**, i8*** %11, align 8
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.46, i64 0, i64 0)) #7
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %20, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %20, align 4
  %88 = load i8**, i8*** %11, align 8
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %88, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call double @atof(i8* %92) #7
  %94 = load double*, double** %16, align 8
  store double %93, double* %94, align 8
  br label %141

95:                                               ; preds = %77
  %96 = load i8**, i8*** %11, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.47, i64 0, i64 0)) #7
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  %106 = load i8**, i8*** %11, align 8
  %107 = load i32, i32* %20, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %106, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @atoi(i8* %110) #7
  %112 = load i32*, i32** %13, align 8
  store i32 %111, i32* %112, align 4
  br label %140

113:                                              ; preds = %95
  %114 = load i8**, i8*** %11, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.48, i64 0, i64 0)) #7
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %113
  %122 = load i32, i32* %20, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %20, align 4
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @atoi(i8* %128) #7
  %130 = load i32*, i32** %14, align 8
  store i32 %129, i32* %130, align 4
  br label %139

131:                                              ; preds = %113
  %132 = load i8**, i8*** %11, align 8
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7.49, i64 0, i64 0), i8* %136)
  %138 = call i32 @epic_usage()
  br label %139

139:                                              ; preds = %131, %121
  br label %140

140:                                              ; preds = %139, %103
  br label %141

141:                                              ; preds = %140, %85
  br label %142

142:                                              ; preds = %141, %67
  br label %143

143:                                              ; preds = %142, %51
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  br label %39

146:                                              ; preds = %39
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %148 = call i32 (%struct._IO_FILE*, ...) bitcast (i32 (%struct._IO_FILE*)* @PGMStream to i32 (%struct._IO_FILE*, ...)*)(%struct._IO_FILE* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %152 = load i32*, i32** %13, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = call float* (%struct._IO_FILE*, i32*, i32*, ...) bitcast (float* (%struct._IO_FILE*, i32*, i32*)* @ReadMatrixFromPGMStream to float* (%struct._IO_FILE*, i32*, i32*, ...)*)(%struct._IO_FILE* %151, i32* %152, i32* %153)
  %155 = load float**, float*** %12, align 8
  store float* %154, float** %155, align 8
  br label %175

156:                                              ; preds = %146
  %157 = load i32*, i32** %13, align 8
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %14, align 8
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %158, %160
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  %164 = call i8* (i64, ...) bitcast (i8* (i32)* @check_malloc to i8* (i64, ...)*)(i64 %163)
  %165 = bitcast i8* %164 to float*
  %166 = load float**, float*** %12, align 8
  store float* %165, float** %166, align 8
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %168 = load float**, float*** %12, align 8
  %169 = load float*, float** %168, align 8
  %170 = load i32*, i32** %13, align 8
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %14, align 8
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (%struct._IO_FILE*, float*, i32, i32, ...) bitcast (i32 (%struct._IO_FILE*, float*, i32, i32)* @read_byte_image to i32 (%struct._IO_FILE*, float*, i32, i32, ...)*)(%struct._IO_FILE* %167, float* %169, i32 %171, i32 %173)
  br label %175

175:                                              ; preds = %156, %150
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %18, align 8
  %177 = call i32 @fclose(%struct._IO_FILE* %176)
  %178 = load i32*, i32** %15, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, -1
  br i1 %180, label %181, label %225

181:                                              ; preds = %175
  %182 = load i32*, i32** %15, align 8
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %217, %181
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %15, align 8
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 1, %187
  %189 = srem i32 %185, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %215

191:                                              ; preds = %183
  %192 = load i32*, i32** %14, align 8
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %15, align 8
  %195 = load i32, i32* %194, align 4
  %196 = shl i32 1, %195
  %197 = srem i32 %193, %196
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %215

199:                                              ; preds = %191
  %200 = load i32*, i32** %13, align 8
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 1, %203
  %205 = sdiv i32 %201, %204
  %206 = icmp sge i32 %205, 15
  br i1 %206, label %207, label %215

207:                                              ; preds = %199
  %208 = load i32*, i32** %14, align 8
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i32, i32* %210, align 4
  %212 = shl i32 1, %211
  %213 = sdiv i32 %209, %212
  %214 = icmp sge i32 %213, 15
  br label %215

215:                                              ; preds = %207, %199, %191, %183
  %216 = phi i1 [ false, %199 ], [ false, %191 ], [ false, %183 ], [ %214, %207 ]
  br i1 %216, label %217, label %221

217:                                              ; preds = %215
  %218 = load i32*, i32** %15, align 8
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  br label %183

221:                                              ; preds = %215
  %222 = load i32*, i32** %15, align 8
  %223 = load i32, i32* %222, align 4
  %224 = sub nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %221, %175
  %226 = load i32*, i32** %15, align 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %227, 1
  br i1 %228, label %229, label %231

229:                                              ; preds = %225
  %230 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8.50, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

231:                                              ; preds = %225
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 10
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.9.51, i64 0, i64 0), i32 10)
  call void @exit(i32 -1) #8
  unreachable

237:                                              ; preds = %231
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %238, align 4
  %240 = icmp sgt i32 %239, 65535
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = load i32*, i32** %14, align 8
  %243 = load i32, i32* %242, align 4
  %244 = icmp sgt i32 %243, 65535
  br i1 %244, label %245, label %251

245:                                              ; preds = %241, %237
  %246 = load i32*, i32** %13, align 8
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %14, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10.52, i64 0, i64 0), i32 %247, i32 %249)
  call void @exit(i32 -1) #8
  unreachable

251:                                              ; preds = %241
  %252 = load i32*, i32** %13, align 8
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %15, align 8
  %255 = load i32, i32* %254, align 4
  %256 = shl i32 1, %255
  %257 = srem i32 %253, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %251
  %260 = load i32*, i32** %14, align 8
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %15, align 8
  %263 = load i32, i32* %262, align 4
  %264 = shl i32 1, %263
  %265 = srem i32 %261, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %275

267:                                              ; preds = %259, %251
  %268 = load i32*, i32** %13, align 8
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %14, align 8
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* %272, align 4
  %274 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.11.53, i64 0, i64 0), i32 %269, i32 %271, i32 %273)
  call void @exit(i32 -1) #8
  unreachable

275:                                              ; preds = %259
  %276 = load i32*, i32** %13, align 8
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %15, align 8
  %279 = load i32, i32* %278, align 4
  %280 = shl i32 1, %279
  %281 = sdiv i32 %277, %280
  %282 = icmp slt i32 %281, 15
  br i1 %282, label %291, label %283

283:                                              ; preds = %275
  %284 = load i32*, i32** %14, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** %15, align 8
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 1, %287
  %289 = sdiv i32 %285, %288
  %290 = icmp slt i32 %289, 15
  br i1 %290, label %291, label %297

291:                                              ; preds = %283, %275
  %292 = load i32*, i32** %13, align 8
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* %294, align 4
  %296 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12.54, i64 0, i64 0), i32 %293, i32 %295, i32 15)
  call void @exit(i32 -1) #8
  unreachable

297:                                              ; preds = %283
  %298 = load i8*, i8** %19, align 8
  %299 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %298, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.55, i64 0, i64 0))
  %300 = load %struct._IO_FILE**, %struct._IO_FILE*** %17, align 8
  store %struct._IO_FILE* %299, %struct._IO_FILE** %300, align 8
  %301 = load i32, i32* %9, align 4
  ret i32 %301
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @epic_usage() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_unepic_args(i32 %0, i8** %1, %struct._IO_FILE** %2, i32* %3, i32* %4, i32* %5, double* %6, %struct._IO_FILE** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct._IO_FILE**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct._IO_FILE**, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8, align 1
  store i32 %0, i32* %10, align 4
  store i8** %1, i8*** %11, align 8
  store %struct._IO_FILE** %2, %struct._IO_FILE*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store double* %6, double** %16, align 8
  store %struct._IO_FILE** %7, %struct._IO_FILE*** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  call void @exit(i32 -1) #8
  unreachable

24:                                               ; preds = %8
  %25 = load i8**, i8*** %11, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i64 0, i64 0))
  %29 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  store %struct._IO_FILE* %28, %struct._IO_FILE** %29, align 8
  %30 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %30, align 8
  %32 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %31)
  %33 = load i8, i8* @temp_byte, align 1
  store i8 %33, i8* @temp_byte, align 1
  %34 = load i8, i8* @temp_byte, align 1
  %35 = zext i8 %34 to i32
  store i8 -1, i8* %19, align 1
  %36 = icmp ne i32 %35, 255
  br i1 %36, label %37, label %42

37:                                               ; preds = %24
  %38 = load i8**, i8*** %11, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i8* %40)
  call void @exit(i32 -1) #8
  unreachable

42:                                               ; preds = %24
  %43 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %43, align 8
  %45 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %44)
  %46 = load i8, i8* @temp_byte, align 1
  store i8 %46, i8* @temp_byte, align 1
  %47 = load i8, i8* @temp_byte, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32*, i32** %13, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %51)
  %53 = load i8, i8* @temp_byte, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, i16* @temp_short, align 2
  %55 = load i16, i16* @temp_short, align 2
  %56 = sext i16 %55 to i32
  %57 = shl i32 %56, 8
  %58 = trunc i32 %57 to i16
  store i16 %58, i16* @temp_short, align 2
  %59 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %59, align 8
  %61 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %60)
  %62 = load i8, i8* @temp_byte, align 1
  %63 = zext i8 %62 to i32
  %64 = load i16, i16* @temp_short, align 2
  %65 = sext i16 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* @temp_short, align 2
  %68 = load i16, i16* @temp_short, align 2
  store i16 %68, i16* @temp_short, align 2
  %69 = load i16, i16* @temp_short, align 2
  %70 = sext i16 %69 to i32
  %71 = load i32*, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %72 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %72, align 8
  %74 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %73)
  %75 = load i8, i8* @temp_byte, align 1
  %76 = zext i8 %75 to i16
  store i16 %76, i16* @temp_short, align 2
  %77 = load i16, i16* @temp_short, align 2
  %78 = sext i16 %77 to i32
  %79 = shl i32 %78, 8
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* @temp_short, align 2
  %81 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %81, align 8
  %83 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %82)
  %84 = load i8, i8* @temp_byte, align 1
  %85 = zext i8 %84 to i32
  %86 = load i16, i16* @temp_short, align 2
  %87 = sext i16 %86 to i32
  %88 = or i32 %87, %85
  %89 = trunc i32 %88 to i16
  store i16 %89, i16* @temp_short, align 2
  %90 = load i16, i16* @temp_short, align 2
  store i16 %90, i16* @temp_short, align 2
  %91 = load i16, i16* @temp_short, align 2
  %92 = sext i16 %91 to i32
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %94, align 8
  %96 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %95)
  %97 = load i8, i8* @temp_byte, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, i16* @temp_short, align 2
  %99 = load i16, i16* @temp_short, align 2
  %100 = sext i16 %99 to i32
  %101 = shl i32 %100, 8
  %102 = trunc i32 %101 to i16
  store i16 %102, i16* @temp_short, align 2
  %103 = load %struct._IO_FILE**, %struct._IO_FILE*** %12, align 8
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %103, align 8
  %105 = call i64 @fread(i8* @temp_byte, i64 1, i64 1, %struct._IO_FILE* %104)
  %106 = load i8, i8* @temp_byte, align 1
  %107 = zext i8 %106 to i32
  %108 = load i16, i16* @temp_short, align 2
  %109 = sext i16 %108 to i32
  %110 = or i32 %109, %107
  %111 = trunc i32 %110 to i16
  store i16 %111, i16* @temp_short, align 2
  %112 = load i16, i16* @temp_short, align 2
  store i16 %112, i16* @temp_short, align 2
  %113 = load i16, i16* @temp_short, align 2
  %114 = sitofp i16 %113 to double
  %115 = load double*, double** %16, align 8
  store double %114, double* %115, align 8
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %122

118:                                              ; preds = %42
  %119 = load i8**, i8*** %11, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i64 2
  %121 = load i8*, i8** %120, align 8
  store i8* %121, i8** %18, align 8
  br label %127

122:                                              ; preds = %42
  %123 = load i8**, i8*** %11, align 8
  %124 = getelementptr inbounds i8*, i8** %123, i64 1
  %125 = load i8*, i8** %124, align 8
  %126 = call i8* (i8*, i8*, ...) bitcast (i8* (i8*, i8*)* @concatenate to i8* (i8*, i8*, ...)*)(i8* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i8* %126, i8** %18, align 8
  br label %127

127:                                              ; preds = %122, %118
  %128 = load i8*, i8** %18, align 8
  %129 = call %struct._IO_FILE* (i8*, i8*, ...) bitcast (%struct._IO_FILE* (i8*, i8*)* @check_fopen to %struct._IO_FILE* (i8*, i8*, ...)*)(i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13.55, i64 0, i64 0))
  %130 = load %struct._IO_FILE**, %struct._IO_FILE*** %17, align 8
  store %struct._IO_FILE* %129, %struct._IO_FILE** %130, align 8
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantize_pyr(float* %0, i16* %1, i32 %2, i32 %3, double %4, i16* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca i16, align 2
  store float* %0, float** %8, align 8
  store i16* %1, i16** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store double %4, double* %12, align 8
  store i16* %5, i16** %13, align 8
  %20 = load double, double* %12, align 8
  store double %20, double* %18, align 8
  store i16 0, i16* %19, align 2
  %21 = load i16, i16* %19, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %19, align 2
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 4
  store i32 %26, i32* %10, align 4
  store i32 1, i32* %14, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 3, %27
  store i32 %28, i32* %15, align 4
  br label %29

29:                                               ; preds = %97, %6
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %104

33:                                               ; preds = %29
  store i32 3, i32* %16, align 4
  %34 = load i32, i32* %10, align 4
  %35 = mul nsw i32 3, %34
  store i32 %35, i32* %17, align 4
  br label %36

36:                                               ; preds = %88, %33
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 0, i32 1
  %43 = icmp sge i32 %37, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %36
  %45 = load double, double* %18, align 8
  %46 = fcmp olt double %45, 0.000000e+00
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i16*, i16** %13, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  store i16 0, i16* %51, align 2
  br label %73

52:                                               ; preds = %44
  %53 = load double, double* %18, align 8
  %54 = load i16, i16* %19, align 2
  %55 = zext i16 %54 to i32
  %56 = sitofp i32 %55 to double
  %57 = fcmp ogt double %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load i16, i16* %19, align 2
  %60 = load i16*, i16** %13, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  store i16 %59, i16* %63, align 2
  br label %72

64:                                               ; preds = %52
  %65 = load double, double* %18, align 8
  %66 = fadd double %65, 5.000000e-01
  %67 = fptoui double %66 to i16
  %68 = load i16*, i16** %13, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  store i16 %67, i16* %71, align 2
  br label %72

72:                                               ; preds = %64, %58
  br label %73

73:                                               ; preds = %72, %47
  %74 = load float*, float** %8, align 8
  %75 = load i32, i32* %17, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load i16*, i16** %9, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i16, i16* %78, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = load i16*, i16** %13, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i16, i16* %83, i64 %85
  %87 = call i32 @quantize_image(float* %77, i16* %81, i32 %82, i16* %86)
  br label %88

88:                                               ; preds = %73
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, -1
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %15, align 4
  br label %36

96:                                               ; preds = %36
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sdiv i32 %100, 4
  store i32 %101, i32* %10, align 4
  %102 = load double, double* %18, align 8
  %103 = fdiv double %102, 2.000000e+00
  store double %103, double* %18, align 8
  br label %29

104:                                              ; preds = %29
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @quantize_image(float* %0, i16* %1, i32 %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store float* %0, float** %6, align 8
  store i16* %1, i16** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16* %3, i16** %9, align 8
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %37, %4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %14
  %19 = load float*, float** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, float* %19, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  store double %24, double* %12, align 8
  %25 = load double, double* %12, align 8
  %26 = fcmp olt double %25, 0.000000e+00
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load double, double* %12, align 8
  %29 = fneg double %28
  store double %29, double* %12, align 8
  br label %30

30:                                               ; preds = %27, %18
  %31 = load double, double* %12, align 8
  %32 = load double, double* %13, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load double, double* %12, align 8
  store double %35, double* %13, align 8
  br label %36

36:                                               ; preds = %34, %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load double, double* %13, align 8
  %42 = load i16*, i16** %9, align 8
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = mul nsw i32 509, %44
  %46 = sdiv i32 %45, 2
  %47 = sitofp i32 %46 to double
  %48 = fcmp oge double %41, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %40
  %50 = load i16*, i16** %9, align 8
  %51 = load i16, i16* %50, align 2
  %52 = zext i16 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load double, double* %13, align 8
  %54 = fmul double 2.000000e+00, %53
  %55 = fdiv double %54, 5.090000e+02
  %56 = fadd double %55, 5.000000e-01
  %57 = fptoui double %56 to i16
  %58 = load i16*, i16** %9, align 8
  store i16 %57, i16* %58, align 2
  %59 = load i32, i32* %10, align 4
  %60 = load i16*, i16** %9, align 8
  %61 = load i16, i16* %60, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.58, i64 0, i64 0), i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %49, %40
  %65 = load i16*, i16** %9, align 8
  %66 = load i16, i16* %65, align 2
  %67 = uitofp i16 %66 to double
  store double %67, double* %11, align 8
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %96, %64
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load float*, float** %6, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float, float* %73, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = load double, double* %11, align 8
  %80 = fdiv double %78, %79
  store double %80, double* %12, align 8
  %81 = load double, double* %12, align 8
  %82 = fcmp olt double %81, 0.000000e+00
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load double, double* %12, align 8
  %85 = fsub double %84, 5.000000e-01
  br label %89

86:                                               ; preds = %72
  %87 = load double, double* %12, align 8
  %88 = fadd double %87, 5.000000e-01
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi double [ %85, %83 ], [ %88, %86 ]
  %91 = fptosi double %90 to i16
  %92 = load i16*, i16** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i16, i16* %92, i64 %94
  store i16 %91, i16* %95, align 2
  br label %96

96:                                               ; preds = %89
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %68

99:                                               ; preds = %68
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unquantize_pyr(i16* %0, i32* %1, i32 %2, i32 %3, i16* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i16* %0, i16** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i16* %4, i16** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %10, align 4
  %17 = mul nsw i32 %16, 2
  %18 = load i32, i32* %9, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %59, %5
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  store i32 %29, i32* %14, align 4
  br label %30

30:                                               ; preds = %50, %24
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load i16*, i16** %7, align 8
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i16, i16* %34, i64 %36
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %15, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %9, align 4
  %43 = load i16*, i16** %11, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %43, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = call i32 @unquantize_image(i16* %37, i32* %41, i32 %42, i32 %48)
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %15, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %30

58:                                               ; preds = %30
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @unquantize_image(i16* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = trunc i32 %3 to i16
  store i16* %0, i16** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %12, i16* %9, align 2
  %13 = load i16, i16* %9, align 2
  %14 = zext i16 %13 to i32
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 1.800000e-01
  %17 = fsub double %16, 5.000000e-01
  %18 = fptrunc double %17 to float
  store float %18, float* %11, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %82, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %19
  %24 = load i16*, i16** %6, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = sext i16 %28 to i32
  %30 = icmp sge i32 %29, 1
  br i1 %30, label %31, label %49

31:                                               ; preds = %23
  %32 = load i16*, i16** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i16, i16* %32, i64 %34
  %36 = load i16, i16* %35, align 2
  %37 = sext i16 %36 to i32
  %38 = load i16, i16* %9, align 2
  %39 = zext i16 %38 to i32
  %40 = mul nsw i32 %37, %39
  %41 = sitofp i32 %40 to float
  %42 = load float, float* %11, align 4
  %43 = fsub float %41, %42
  %44 = fptosi float %43 to i32
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %81

49:                                               ; preds = %23
  %50 = load i16*, i16** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i16, i16* %50, i64 %52
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = icmp sle i32 %55, -1
  br i1 %56, label %57, label %75

57:                                               ; preds = %49
  %58 = load i16*, i16** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = sext i16 %62 to i32
  %64 = load i16, i16* %9, align 2
  %65 = zext i16 %64 to i32
  %66 = mul nsw i32 %63, %65
  %67 = sitofp i32 %66 to float
  %68 = load float, float* %11, align 4
  %69 = fadd float %67, %68
  %70 = fptosi float %69 to i32
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %70, i32* %74, align 4
  br label %80

75:                                               ; preds = %49
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %57
  br label %81

81:                                               ; preds = %80, %31
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %19

85:                                               ; preds = %19
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @run_length_encode_zeros(i16* %0, i32 %1, i16* %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16* %2, i16** %6, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i16 16384, i16* %12, align 2
  %16 = load i16, i16* %12, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %13, align 2
  store i16 -32768, i16* %15, align 2
  br label %20

20:                                               ; preds = %136, %3
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %137

25:                                               ; preds = %20
  %26 = load i16*, i16** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i16, i16* %26, i64 %27
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %7, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %83

32:                                               ; preds = %25
  store i64 0, i64* %10, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i16*, i16** %4, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds i16, i16* %34, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %10, align 8
  br label %33

46:                                               ; preds = %33
  store i64 1, i64* %11, align 8
  store i16 0, i16* %14, align 2
  br label %47

47:                                               ; preds = %77, %46
  %48 = load i16, i16* %14, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %82

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %76

56:                                               ; preds = %51
  %57 = load i16, i16* %14, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp sge i32 %58, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.61, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = load i16, i16* %14, align 2
  %66 = zext i16 %65 to i32
  %67 = load i16, i16* %15, align 2
  %68 = zext i16 %67 to i32
  %69 = or i32 %66, %68
  %70 = trunc i32 %69 to i16
  %71 = load i16*, i16** %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds i16, i16* %71, i64 %72
  store i16 %70, i16* %73, align 2
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %76

76:                                               ; preds = %64, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i16, i16* %14, align 2
  %79 = add i16 %78, 1
  store i16 %79, i16* %14, align 2
  %80 = load i64, i64* %11, align 8
  %81 = shl i64 %80, 1
  store i64 %81, i64* %11, align 8
  br label %47

82:                                               ; preds = %47
  br label %136

83:                                               ; preds = %25
  %84 = load i16, i16* %7, align 2
  %85 = sext i16 %84 to i32
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i16, i16* %7, align 2
  %89 = sext i16 %88 to i32
  %90 = sub nsw i32 0, %89
  br label %94

91:                                               ; preds = %83
  %92 = load i16, i16* %7, align 2
  %93 = sext i16 %92 to i32
  br label %94

94:                                               ; preds = %91, %87
  %95 = phi i32 [ %90, %87 ], [ %93, %91 ]
  %96 = load i16, i16* %13, align 2
  %97 = zext i16 %96 to i32
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1.62, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %94
  %102 = load i16, i16* %7, align 2
  %103 = sext i16 %102 to i32
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load i16, i16* %7, align 2
  %107 = sext i16 %106 to i32
  %108 = sub nsw i32 0, %107
  %109 = trunc i32 %108 to i16
  %110 = zext i16 %109 to i32
  %111 = load i16, i16* %13, align 2
  %112 = zext i16 %111 to i32
  %113 = and i32 %110, %112
  %114 = load i16, i16* %12, align 2
  %115 = zext i16 %114 to i32
  %116 = or i32 %113, %115
  %117 = trunc i32 %116 to i16
  %118 = load i16*, i16** %6, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds i16, i16* %118, i64 %119
  store i16 %117, i16* %120, align 2
  br label %131

121:                                              ; preds = %101
  %122 = load i16, i16* %7, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* %13, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %123, %125
  %127 = trunc i32 %126 to i16
  %128 = load i16*, i16** %6, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i16, i16* %128, i64 %129
  store i16 %127, i16* %130, align 2
  br label %131

131:                                              ; preds = %121, %105
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %131, %82
  br label %20

137:                                              ; preds = %20
  %138 = load i64, i64* %9, align 8
  %139 = trunc i64 %138 to i32
  ret i32 %139
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @run_length_decode_zeros(i16* %0, i32 %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca i16, align 2
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store i16* %2, i16** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i16 16384, i16* %13, align 2
  %16 = load i16, i16* %13, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 %17, 1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %14, align 2
  store i16 -32768, i16* %15, align 2
  br label %20

20:                                               ; preds = %91, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %20
  %25 = load i16*, i16** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %12, align 2
  %30 = load i16, i16* %12, align 2
  %31 = zext i16 %30 to i32
  %32 = load i16, i16* %15, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %24
  %37 = load i16, i16* %12, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* %14, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %38, %40
  %42 = shl i32 1, %41
  store i32 %42, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %52, %36
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load i16*, i16** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %48, i64 %50
  store i16 0, i16* %51, align 2
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %43

57:                                               ; preds = %43
  br label %91

58:                                               ; preds = %24
  %59 = load i16, i16* %12, align 2
  %60 = zext i16 %59 to i32
  %61 = load i16, i16* %13, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %58
  %66 = load i16, i16* %12, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* %14, align 2
  %69 = zext i16 %68 to i32
  %70 = and i32 %67, %69
  %71 = sub nsw i32 0, %70
  %72 = trunc i32 %71 to i16
  %73 = load i16*, i16** %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i16, i16* %73, i64 %75
  store i16 %72, i16* %76, align 2
  br label %88

77:                                               ; preds = %58
  %78 = load i16, i16* %12, align 2
  %79 = zext i16 %78 to i32
  %80 = load i16, i16* %14, align 2
  %81 = zext i16 %80 to i32
  %82 = and i32 %79, %81
  %83 = trunc i32 %82 to i16
  %84 = load i16*, i16** %7, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i16, i16* %84, i64 %86
  store i16 %83, i16* %87, align 2
  br label %88

88:                                               ; preds = %77, %65
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %91

91:                                               ; preds = %88, %57
  %92 = load i32, i32* %11, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %20

94:                                               ; preds = %20
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @check_malloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @malloc(i64 %5) #5
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.71, i64 0, i64 0))
  call void @exit(i32 -1) #6
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  ret i8* %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @check_free(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i8*, i8** %3, align 8
  call void @free(i8* %7) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* %2, align 4
  ret i32 %9
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct._IO_FILE* @check_fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = call %struct._IO_FILE* @fopen(i8* %6, i8* %7)
  store %struct._IO_FILE* %8, %struct._IO_FILE** %5, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1.76, i64 0, i64 0), i8* %12, i8* %13)
  call void @exit(i32 -1) #6
  unreachable

15:                                               ; preds = %2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  ret %struct._IO_FILE* %16
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @concatenate(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @strlen(i8* %6) #7
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #7
  %10 = add i64 %7, %9
  %11 = add i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = call i8* @check_malloc(i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @strcpy(i8* %14, i8* %15) #5
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strcat(i8* %17, i8* %18) #5
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
