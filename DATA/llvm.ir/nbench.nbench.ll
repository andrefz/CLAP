; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SortStruct = type { i32, i64, double, i16, i64 }
%struct.BitOpStruct = type { i32, i64, double, i64, i64 }
%struct.EmFloatStruct = type { i32, i64, i64, i64, double }
%struct.FourierStruct = type { i32, i64, i64, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.huff_node = type { i8, float, i32, i32, i32 }
%struct.InternalFPF = type { i8, i8, i16, [4 x i16] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.longptr = type { %union.anon.0 }
%union.anon.0 = type { i64* }
%struct.LUdblptr = type { %union.anon }
%union.anon = type { double* }

@.str = private unnamed_addr constant [41 x i8] c"Error:  zero significand in denormalize\0A\00", align 1
@DoEmFloatIteration.jtable = internal global [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\03\03\03", align 16
@randnum.randw = internal global [2 x i32] [i32 13, i32 117], align 4
@sysname = dso_local global i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0), align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"You can enter your system description in nbench0.h\00", align 1
@compilername = dso_local global i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"It then will be printed here after you recompile\00", align 1
@compilerversion = dso_local global i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Have a nice day\00", align 1
@ftestnames = dso_local global [10 x i8*] [i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [17 x i8] c"NUMERIC SORT    \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"STRING SORT     \00", align 1
@.str.5.6 = private unnamed_addr constant [17 x i8] c"BITFIELD        \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"FP EMULATION    \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"FOURIER         \00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"ASSIGNMENT      \00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"IDEA            \00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"HUFFMAN         \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"NEURAL NET      \00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"LU DECOMPOSITION\00", align 1
@bindex = dso_local global [10 x double] [double 3.899300e+01, double 2.238000e+00, double 0x41563D1200000000, double 2.084000e+00, double 8.792780e+02, double 2.628000e-01, double 6.538200e+01, double 3.606200e+01, double 6.225000e-01, double 1.930310e+01], align 16
@lx_bindex = dso_local global [10 x double] [double 1.187300e+02, double 1.445900e+01, double 2.791000e+07, double 9.031400e+00, double 1.565500e+03, double 1.013200e+00, double 2.202100e+02, double 1.129300e+02, double 1.479900e+00, double 2.673200e+01], align 16
@paramnames = dso_local global [42 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"GLOBALMINTICKS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"MINSECONDS\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ALLSTATS\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"OUTFILE\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"CUSTOMRUN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"DONUMSORT\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"NUMNUMARRAYS\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"NUMARRAYSIZE\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"NUMMINSECONDS\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"DOSTRINGSORT\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"STRARRAYSIZE\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"NUMSTRARRAYS\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"STRMINSECONDS\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"DOBITFIELD\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"NUMBITOPS\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"BITFIELDSIZE\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"BITMINSECONDS\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"DOEMF\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"EMFARRAYSIZE\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"EMFLOOPS\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"EMFMINSECONDS\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"DOFOUR\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"FOURSIZE\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"FOURMINSECONDS\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"DOASSIGN\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"ASSIGNARRAYS\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"ASSIGNMINSECONDS\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"DOIDEA\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"IDEARRAYSIZE\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"IDEALOOPS\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"IDEAMINSECONDS\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"DOHUFF\00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"HUFARRAYSIZE\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"HUFFLOOPS\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"HUFFMINSECONDS\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"DONNET\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"NNETLOOPS\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"NNETMINSECONDS\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"DOLU\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"LUNUMARRAYS\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"LUMINSECONDS\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ALIGN\00", align 1
@global_numsortstruct = common dso_local global %struct.SortStruct zeroinitializer, align 8
@global_strsortstruct = common dso_local global %struct.SortStruct zeroinitializer, align 8
@global_bitopstruct = common dso_local global %struct.BitOpStruct zeroinitializer, align 8
@global_emfloatstruct = common dso_local global %struct.EmFloatStruct zeroinitializer, align 8
@global_fourierstruct = common dso_local global %struct.FourierStruct zeroinitializer, align 8
@global_assignstruct = common dso_local global %struct.FourierStruct zeroinitializer, align 8
@global_ideastruct = common dso_local global %struct.EmFloatStruct zeroinitializer, align 8
@global_huffstruct = common dso_local global %struct.EmFloatStruct zeroinitializer, align 8
@global_nnetstruct = common dso_local global %struct.FourierStruct zeroinitializer, align 8
@global_lustruct = common dso_local global %struct.FourierStruct zeroinitializer, align 8
@global_fstruct = dso_local global [10 x i8*] [i8* bitcast (%struct.SortStruct* @global_numsortstruct to i8*), i8* bitcast (%struct.SortStruct* @global_strsortstruct to i8*), i8* bitcast (%struct.BitOpStruct* @global_bitopstruct to i8*), i8* bitcast (%struct.EmFloatStruct* @global_emfloatstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_fourierstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_assignstruct to i8*), i8* bitcast (%struct.EmFloatStruct* @global_ideastruct to i8*), i8* bitcast (%struct.EmFloatStruct* @global_huffstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_nnetstruct to i8*), i8* bitcast (%struct.FourierStruct* @global_lustruct to i8*)], align 16
@funcpointer = dso_local global [10 x void ()*] [void ()* @DoNumSort, void ()* @DoStringSort, void ()* @DoBitops, void ()* @DoEmFloat, void ()* @DoFourier, void ()* @DoAssign, void ()* @DoIDEA, void ()* @DoHuffman, void ()* @DoNNET, void ()* @DoLU], align 16
@global_min_ticks = common dso_local global i64 0, align 8
@global_min_seconds = common dso_local global i64 0, align 8
@global_allstats = common dso_local global i32 0, align 4
@global_custrun = common dso_local global i32 0, align 4
@global_align = common dso_local global i32 0, align 4
@write_to_file = common dso_local global i32 0, align 4
@mem_array_ents = common dso_local global i32 0, align 4
@tests_to_do = common dso_local global [10 x i32] zeroinitializer, align 16
@buffer = common dso_local global [1024 x i8] zeroinitializer, align 16
@global_ofile_name = common dso_local global [1024 x i8] zeroinitializer, align 16
@global_ofile = common dso_local global %struct._IO_FILE* null, align 8
@mem_array = common dso_local global [2 x [20 x i64]] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"BBBBBB   YYY   Y  TTTTTTT  EEEEEEE\0A\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"BBB   B  YYY   Y    TTT    EEE\0A\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"BBBBBB    YYY Y     TTT    EEEEEEE\0A\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"BBB   B    YYY      TTT    EEE\0A\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"BBBBBB     YYY      TTT    EEEEEEE\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"\0ABYTEmark (tm) Native Mode Benchmark ver. 2 (10/95)\0A\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.62 = private unnamed_addr constant [79 x i8] c"============================== ALL STATISTICS ===============================\0A\00", align 1
@.str.63 = private unnamed_addr constant [37 x i8] c"**Date and time of benchmark run: %s\00", align 1
@.str.64 = private unnamed_addr constant [72 x i8] c"**Sizeof: char:%u short:%u int:%u long:%u u8:%u u16:%u u32:%u int32:%u\0A\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"**%s\0A\00", align 1
@.str.66 = private unnamed_addr constant [79 x i8] c"=============================================================================\0A\00", align 1
@.str.67 = private unnamed_addr constant [68 x i8] c"\0ANOTE!!! Iteration display disabled to prevent diffs from failing!\0A\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"%s    :\00", align 1
@.str.69 = private unnamed_addr constant [41 x i8] c"  Iterations/sec.: %13.2f  Index: %6.2f\0A\00", align 1
@.str.70 = private unnamed_addr constant [35 x i8] c"  Absolute standard deviation: %g\0A\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"  Relative standard deviation: %g %%\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"  Number of runs: %lu\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Done with %s\0A\0A\00", align 1
@.str.74 = private unnamed_addr constant [79 x i8] c"==========================ORIGINAL BYTEMARK RESULTS==========================\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"INTEGER INDEX       : %.3f\0A\00", align 1
@.str.76 = private unnamed_addr constant [28 x i8] c"FLOATING-POINT INDEX: %.3f\0A\00", align 1
@.str.77 = private unnamed_addr constant [75 x i8] c"Baseline (MSDOS*)   : Pentium* 90, 256 KB L2-cache, Watcom* compiler 10.0\0A\00", align 1
@.str.78 = private unnamed_addr constant [55 x i8] c"* Trademarks are property of their respective holder.\0A\00", align 1
@.str.89 = private unnamed_addr constant [24 x i8] c"  Number of arrays: %d\0A\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"  Array size: %ld\0A\00", align 1
@.str.91 = private unnamed_addr constant [30 x i8] c"  Operations array size: %ld\0A\00", align 1
@.str.92 = private unnamed_addr constant [28 x i8] c"  Bitfield array size: %ld\0A\00", align 1
@.str.93 = private unnamed_addr constant [24 x i8] c"  Number of loops: %lu\0A\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"  Array size: %lu\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"  Number of coefficients: %lu\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"  Number of arrays: %lu\0A\00", align 1
@.str.97 = private unnamed_addr constant [23 x i8] c" Number of loops: %lu\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.85 = private unnamed_addr constant [27 x i8] c"Usage: %s [-v] [-c<FILE>]\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c" -v = verbose\0A\00", align 1
@.str.87 = private unnamed_addr constant [49 x i8] c" -c = input parameters thru command file <FILE>\0A\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"**Error opening file: %s\0A\00", align 1
@.str.81 = private unnamed_addr constant [35 x i8] c"**COMMAND FILE ERROR at LINE:\0A %s\0A\00", align 1
@.str.82 = private unnamed_addr constant [42 x i8] c"**COMMAND FILE ERROR -- UNKNOWN PARAM: %s\00", align 1
@.str.83 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"**Error opening output file: %s\0A\00", align 1
@inpath = dso_local global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), align 8
@.str.98 = private unnamed_addr constant [9 x i8] c"NNET.DAT\00", align 1
@wordcatarray = dso_local global [50 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.100, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.102, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.104, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8.106, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.107, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.108, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.109, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13.111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.112, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15.113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16.114, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18.116, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19.117, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20.118, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21.119, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22.120, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23.121, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24.122, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25.123, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26.124, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27.125, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28.126, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29.127, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.104, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30.128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31.129, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32.130, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33.131, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34.132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35.133, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36.134, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37.135, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38.136, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39.137, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40.138, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41.139, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42.140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43.141, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44.142, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45.143, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46.144, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47.145, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48.146, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49.147, i32 0, i32 0)], align 16
@.str.1.99 = private unnamed_addr constant [6 x i8] c"Hello\00", align 1
@.str.2.100 = private unnamed_addr constant [3 x i8] c"He\00", align 1
@.str.3.101 = private unnamed_addr constant [4 x i8] c"Him\00", align 1
@.str.4.102 = private unnamed_addr constant [4 x i8] c"the\00", align 1
@.str.5.103 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.6.104 = private unnamed_addr constant [5 x i8] c"that\00", align 1
@.str.7.105 = private unnamed_addr constant [7 x i8] c"though\00", align 1
@.str.8.106 = private unnamed_addr constant [6 x i8] c"rough\00", align 1
@.str.9.107 = private unnamed_addr constant [6 x i8] c"cough\00", align 1
@.str.10.108 = private unnamed_addr constant [10 x i8] c"obviously\00", align 1
@.str.11.109 = private unnamed_addr constant [4 x i8] c"But\00", align 1
@.str.12.110 = private unnamed_addr constant [4 x i8] c"but\00", align 1
@.str.13.111 = private unnamed_addr constant [4 x i8] c"bye\00", align 1
@.str.14.112 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.15.113 = private unnamed_addr constant [10 x i8] c"beginning\00", align 1
@.str.16.114 = private unnamed_addr constant [11 x i8] c"beginnings\00", align 1
@.str.17.115 = private unnamed_addr constant [3 x i8] c"of\00", align 1
@.str.18.116 = private unnamed_addr constant [4 x i8] c"our\00", align 1
@.str.19.117 = private unnamed_addr constant [10 x i8] c"ourselves\00", align 1
@.str.20.118 = private unnamed_addr constant [11 x i8] c"yourselves\00", align 1
@.str.21.119 = private unnamed_addr constant [3 x i8] c"to\00", align 1
@.str.22.120 = private unnamed_addr constant [9 x i8] c"together\00", align 1
@.str.23.121 = private unnamed_addr constant [13 x i8] c"togetherness\00", align 1
@.str.24.122 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.25.123 = private unnamed_addr constant [7 x i8] c"either\00", align 1
@.str.26.124 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27.125 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.28.126 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.29.127 = private unnamed_addr constant [8 x i8] c"However\00", align 1
@.str.30.128 = private unnamed_addr constant [8 x i8] c"example\00", align 1
@.str.31.129 = private unnamed_addr constant [4 x i8] c"yet\00", align 1
@.str.32.130 = private unnamed_addr constant [8 x i8] c"quickly\00", align 1
@.str.33.131 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.34.132 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.35.133 = private unnamed_addr constant [5 x i8] c"were\00", align 1
@.str.36.134 = private unnamed_addr constant [9 x i8] c"includes\00", align 1
@.str.37.135 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@.str.38.136 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.39.137 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.40.138 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.41.139 = private unnamed_addr constant [8 x i8] c"returns\00", align 1
@.str.42.140 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.43.141 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.44.142 = private unnamed_addr constant [8 x i8] c"Entered\00", align 1
@.str.45.143 = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.46.144 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.47.145 = private unnamed_addr constant [6 x i8] c"shown\00", align 1
@.str.48.146 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.49.147 = private unnamed_addr constant [5 x i8] c"know\00", align 1
@LUtempvv = common dso_local global double* null, align 8
@mid_wts = common dso_local global [8 x [35 x double]] zeroinitializer, align 16
@out_wts = common dso_local global [8 x [8 x double]] zeroinitializer, align 16
@mid_out = common dso_local global [8 x double] zeroinitializer, align 16
@out_out = common dso_local global [8 x double] zeroinitializer, align 16
@mid_error = common dso_local global [8 x double] zeroinitializer, align 16
@out_error = common dso_local global [8 x double] zeroinitializer, align 16
@mid_wt_change = common dso_local global [8 x [35 x double]] zeroinitializer, align 16
@out_wt_change = common dso_local global [8 x [8 x double]] zeroinitializer, align 16
@in_pats = common dso_local global [10 x [35 x double]] zeroinitializer, align 16
@out_pats = common dso_local global [10 x [8 x double]] zeroinitializer, align 16
@tot_out_error = common dso_local global [10 x double] zeroinitializer, align 16
@out_wt_cum_change = common dso_local global [8 x [8 x double]] zeroinitializer, align 16
@mid_wt_cum_change = common dso_local global [8 x [35 x double]] zeroinitializer, align 16
@worst_error = common dso_local global double 0.000000e+00, align 8
@average_error = common dso_local global double 0.000000e+00, align 8
@avg_out_error = common dso_local global [10 x double] zeroinitializer, align 16
@iteration_count = common dso_local global i32 0, align 4
@numpats = common dso_local global i32 0, align 4
@numpasses = common dso_local global i32 0, align 4
@learned = common dso_local global i32 0, align 4
@.str.50.150 = private unnamed_addr constant [17 x i8] c"CPU:Numeric Sort\00", align 1
@.str.51.151 = private unnamed_addr constant [32 x i8] c"CPU:NSORT -- NUMNUMARRAYS hit.\0A\00", align 1
@.str.52.154 = private unnamed_addr constant [16 x i8] c"CPU:String Sort\00", align 1
@.str.63.155 = private unnamed_addr constant [15 x i8] c"CPU:Stringsort\00", align 1
@.str.53.158 = private unnamed_addr constant [14 x i8] c"CPU:Bitfields\00", align 1
@.str.54.161 = private unnamed_addr constant [23 x i8] c"CPU:Floating Emulation\00", align 1
@.str.55.162 = private unnamed_addr constant [43 x i8] c"CPU:EMFPU -- CMPUEMFLOATLOOPMAX limit hit\0A\00", align 1
@.str.56.165 = private unnamed_addr constant [19 x i8] c"FPU:Transcendental\00", align 1
@.str.57.168 = private unnamed_addr constant [15 x i8] c"CPU:Assignment\00", align 1
@.str.58.171 = private unnamed_addr constant [9 x i8] c"CPU:IDEA\00", align 1
@.str.59.174 = private unnamed_addr constant [12 x i8] c"CPU:Huffman\00", align 1
@hufftree = internal global %struct.huff_node* null, align 8
@plaintextlen = internal global i64 0, align 8
@.str.60.177 = private unnamed_addr constant [9 x i8] c"CPU:NNET\00", align 1
@.str.64.178 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.65.179 = private unnamed_addr constant [35 x i8] c"\0A CPU:NNET--error in opening file!\00", align 1
@.str.66.180 = private unnamed_addr constant [11 x i8] c"%d  %d  %d\00", align 1
@.str.67.181 = private unnamed_addr constant [59 x i8] c"\0A CPU:NNET -- Should read 3 items in line one; did read %d\00", align 1
@.str.68.182 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69.183 = private unnamed_addr constant [56 x i8] c"\0A CPU:NNET -- Should read 1 item in line 2; did read %d\00", align 1
@.str.70.184 = private unnamed_addr constant [19 x i8] c"%d  %d  %d  %d  %d\00", align 1
@.str.71.185 = private unnamed_addr constant [40 x i8] c"\0A CPU:NNET -- failure in reading input!\00", align 1
@.str.72.186 = private unnamed_addr constant [31 x i8] c"%d  %d  %d  %d  %d  %d  %d  %d\00", align 1
@.str.61.189 = private unnamed_addr constant [7 x i8] c"FPU:LU\00", align 1
@.str.62.190 = private unnamed_addr constant [31 x i8] c"FPU:LU -- Array limit reached\0A\00", align 1
@.str.199 = private unnamed_addr constant [29 x i8] c"ERROR CONDITION\0AContext: %s\0A\00", align 1
@.str.1.200 = private unnamed_addr constant [9 x i8] c"Code: %d\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @SetupCPUEmFloatArrays(%struct.InternalFPF* %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2, i64 %3) #0 {
  %5 = alloca %struct.InternalFPF*, align 8
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca %struct.InternalFPF*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.InternalFPF, align 2
  %11 = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %0, %struct.InternalFPF** %5, align 8
  store %struct.InternalFPF* %1, %struct.InternalFPF** %6, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = call i32 @randnum(i32 13)
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %29, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = call i32 @randwc(i32 50000)
  call void @Int32ToInternalFPF(i32 %18, %struct.InternalFPF* %10)
  %19 = call i32 @randwc(i32 50000)
  %20 = add nsw i32 %19, 1
  call void @Int32ToInternalFPF(i32 %20, %struct.InternalFPF* %11)
  %21 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %21, i64 %22
  call void @DivideInternalFPF(%struct.InternalFPF* %10, %struct.InternalFPF* %11, %struct.InternalFPF* %23)
  %24 = call i32 @randwc(i32 50000)
  %25 = add nsw i32 %24, 1
  call void @Int32ToInternalFPF(i32 %25, %struct.InternalFPF* %11)
  %26 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %26, i64 %27
  call void @DivideInternalFPF(%struct.InternalFPF* %10, %struct.InternalFPF* %11, %struct.InternalFPF* %28)
  br label %29

29:                                               ; preds = %17
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %13

32:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Int32ToInternalFPF(i32 %0, %struct.InternalFPF* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.InternalFPF*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store %struct.InternalFPF* %1, %struct.InternalFPF** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %11 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 1
  store i8 1, i8* %11, align 1
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %16 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i32 0, i32 1
  store i8 0, i8* %16, align 1
  br label %17

17:                                               ; preds = %14, %9
  %18 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %19 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %18, i32 0, i32 0
  store i8 2, i8* %19, align 2
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %29, %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %25 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %24, i32 0, i32 3
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i16], [4 x i16]* %25, i64 0, i64 %27
  store i16 0, i16* %28, align 2
  br label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %20

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %37 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %36, i32 0, i32 0
  store i8 0, i8* %37, align 2
  %38 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %39 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %38, i32 0, i32 2
  store i16 0, i16* %39, align 2
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %42 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %41, i32 0, i32 2
  store i16 32, i16* %42, align 2
  %43 = load i32, i32* %3, align 4
  %44 = ashr i32 %43, 16
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, 65535
  %47 = trunc i64 %46 to i16
  store i16 %47, i16* %6, align 2
  %48 = load i16, i16* %6, align 2
  %49 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %50 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %49, i32 0, i32 3
  %51 = getelementptr inbounds [4 x i16], [4 x i16]* %50, i64 0, i64 0
  store i16 %48, i16* %51, align 2
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = and i64 %53, 65535
  %55 = trunc i64 %54 to i16
  store i16 %55, i16* %6, align 2
  %56 = load i16, i16* %6, align 2
  %57 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %58 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %57, i32 0, i32 3
  %59 = getelementptr inbounds [4 x i16], [4 x i16]* %58, i64 0, i64 1
  store i16 %56, i16* %59, align 2
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  call void @normalize(%struct.InternalFPF* %60)
  br label %61

61:                                               ; preds = %40, %35
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @DivideInternalFPF(%struct.InternalFPF* %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2) #0 {
  %4 = alloca %struct.InternalFPF*, align 8
  %5 = alloca %struct.InternalFPF*, align 8
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca [4 x i16], align 2
  %11 = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %0, %struct.InternalFPF** %4, align 8
  store %struct.InternalFPF* %1, %struct.InternalFPF** %5, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %6, align 8
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %13 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 2
  %15 = zext i8 %14 to i32
  %16 = mul nsw i32 %15, 5
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 2
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %16, %20
  switch i32 %21, label %241 [
    i32 0, label %22
    i32 18, label %22
    i32 1, label %24
    i32 2, label %24
    i32 3, label %33
    i32 8, label %33
    i32 13, label %33
    i32 5, label %45
    i32 10, label %45
    i32 15, label %54
    i32 16, label %54
    i32 17, label %54
    i32 20, label %68
    i32 21, label %68
    i32 22, label %68
    i32 23, label %68
    i32 4, label %73
    i32 9, label %73
    i32 14, label %73
    i32 19, label %73
    i32 6, label %78
    i32 11, label %78
    i32 7, label %78
    i32 12, label %78
    i32 24, label %237
  ]

22:                                               ; preds = %3, %3
  %23 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %23)
  br label %241

24:                                               ; preds = %3, %3
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %26 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %25, i32 0, i32 3
  %27 = getelementptr inbounds [4 x i16], [4 x i16]* %26, i64 0, i64 0
  %28 = call i32 @IsMantissaZero(i16* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %31)
  br label %241

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %3, %3, %3
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %36 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %35, i32 0, i32 1
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %40 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %39, i32 0, i32 1
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %38, %42
  %44 = trunc i32 %43 to i8
  call void @SetInternalFPFZero(%struct.InternalFPF* %34, i8 zeroext %44)
  br label %241

45:                                               ; preds = %3, %3
  %46 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %47 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %46, i32 0, i32 3
  %48 = getelementptr inbounds [4 x i16], [4 x i16]* %47, i64 0, i64 0
  %49 = call i32 @IsMantissaZero(i16* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %52)
  br label %241

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %3, %3, %3
  %55 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %55, i8 zeroext 0)
  %56 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %57 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %61 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %60, i32 0, i32 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = xor i32 %59, %63
  %65 = trunc i32 %64 to i8
  %66 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %67 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %66, i32 0, i32 1
  store i8 %65, i8* %67, align 1
  br label %241

68:                                               ; preds = %3, %3, %3, %3
  %69 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %70 = bitcast %struct.InternalFPF* %69 to i8*
  %71 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %72 = bitcast %struct.InternalFPF* %71 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %70, i8* align 1 %72, i64 12, i1 false)
  br label %241

73:                                               ; preds = %3, %3, %3, %3
  %74 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %75 = bitcast %struct.InternalFPF* %74 to i8*
  %76 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %77 = bitcast %struct.InternalFPF* %76 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %75, i8* align 1 %77, i64 12, i1 false)
  br label %241

78:                                               ; preds = %3, %3, %3, %3
  %79 = bitcast %struct.InternalFPF* %11 to i8*
  %80 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %81 = bitcast %struct.InternalFPF* %80 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %79, i8* align 1 %81, i64 12, i1 false)
  %82 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 3
  %83 = getelementptr inbounds [4 x i16], [4 x i16]* %82, i64 0, i64 0
  %84 = call i32 @IsMantissaZero(i16* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %88 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %87, i32 0, i32 3
  %89 = getelementptr inbounds [4 x i16], [4 x i16]* %88, i64 0, i64 0
  %90 = call i32 @IsMantissaZero(i16* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %93)
  br label %96

94:                                               ; preds = %86
  %95 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFZero(%struct.InternalFPF* %95, i8 zeroext 0)
  br label %96

96:                                               ; preds = %94, %92
  br label %241

97:                                               ; preds = %78
  %98 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %99 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %98, i32 0, i32 3
  %100 = getelementptr inbounds [4 x i16], [4 x i16]* %99, i64 0, i64 0
  %101 = call i32 @IsMantissaZero(i16* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %104, i8 zeroext 0)
  br label %241

105:                                              ; preds = %97
  %106 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %107 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 2
  %109 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %110 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %109, i32 0, i32 0
  store i8 %108, i8* %110, align 2
  %111 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %112 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %111, i32 0, i32 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %116 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %115, i32 0, i32 1
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = xor i32 %114, %118
  %120 = trunc i32 %119 to i8
  %121 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %122 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %121, i32 0, i32 1
  store i8 %120, i8* %122, align 1
  %123 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %124 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %123, i32 0, i32 2
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %128 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %127, i32 0, i32 2
  %129 = load i16, i16* %128, align 2
  %130 = sext i16 %129 to i32
  %131 = sub nsw i32 %126, %130
  %132 = add nsw i32 %131, 128
  %133 = trunc i32 %132 to i16
  %134 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %135 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %134, i32 0, i32 2
  store i16 %133, i16* %135, align 2
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %148, %105
  %137 = load i32, i32* %7, align 4
  %138 = icmp slt i32 %137, 4
  br i1 %138, label %139, label %151

139:                                              ; preds = %136
  %140 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %141 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %140, i32 0, i32 3
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [4 x i16], [4 x i16]* %141, i64 0, i64 %143
  store i16 0, i16* %144, align 2
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %146
  store i16 0, i16* %147, align 2
  br label %148

148:                                              ; preds = %139
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %7, align 4
  br label %136

151:                                              ; preds = %136
  br label %152

152:                                              ; preds = %228, %151
  %153 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %154 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %153, i32 0, i32 3
  %155 = getelementptr inbounds [4 x i16], [4 x i16]* %154, i64 0, i64 0
  %156 = load i16, i16* %155, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 32768
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %236

160:                                              ; preds = %152
  store i16 0, i16* %9, align 2
  %161 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 3
  %162 = getelementptr inbounds [4 x i16], [4 x i16]* %161, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %9, i16* %162)
  %163 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %9, i16* %163)
  %164 = load i16, i16* %9, align 2
  %165 = zext i16 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %202, %167
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %205

171:                                              ; preds = %168
  %172 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %173 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %172, i32 0, i32 3
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i16], [4 x i16]* %173, i64 0, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %180
  %182 = load i16, i16* %181, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp sgt i32 %178, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %171
  store i16 0, i16* %9, align 2
  br label %228

186:                                              ; preds = %171
  %187 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %188 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %187, i32 0, i32 3
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [4 x i16], [4 x i16]* %188, i64 0, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = zext i16 %192 to i32
  %194 = load i32, i32* %8, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %195
  %197 = load i16, i16* %196, align 2
  %198 = zext i16 %197 to i32
  %199 = icmp slt i32 %193, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %186
  br label %205

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %168

205:                                              ; preds = %200, %168
  br label %206

206:                                              ; preds = %205, %160
  store i16 0, i16* %9, align 2
  store i32 3, i32* %8, align 4
  br label %207

207:                                              ; preds = %224, %206
  %208 = load i32, i32* %8, align 4
  %209 = icmp sge i32 %208, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %207
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %212
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %215
  %217 = load i16, i16* %216, align 2
  %218 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %219 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %218, i32 0, i32 3
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [4 x i16], [4 x i16]* %219, i64 0, i64 %221
  %223 = load i16, i16* %222, align 2
  call void @Sub16Bits(i16* %9, i16* %213, i16 zeroext %217, i16 zeroext %223)
  br label %224

224:                                              ; preds = %210
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %8, align 4
  br label %207

227:                                              ; preds = %207
  store i16 1, i16* %9, align 2
  br label %228

228:                                              ; preds = %227, %185
  %229 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %230 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %229, i32 0, i32 3
  %231 = getelementptr inbounds [4 x i16], [4 x i16]* %230, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %9, i16* %231)
  %232 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %233 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %232, i32 0, i32 2
  %234 = load i16, i16* %233, align 2
  %235 = add i16 %234, -1
  store i16 %235, i16* %233, align 2
  br label %152

236:                                              ; preds = %152
  br label %241

237:                                              ; preds = %3
  %238 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %239 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %240 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @choose_nan(%struct.InternalFPF* %238, %struct.InternalFPF* %239, %struct.InternalFPF* %240, i32 0)
  br label %241

241:                                              ; preds = %237, %236, %103, %96, %73, %68, %54, %51, %33, %30, %22, %3
  %242 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %242)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @SetInternalFPFNaN(%struct.InternalFPF* %0) #0 {
  %2 = alloca %struct.InternalFPF*, align 8
  %3 = alloca i32, align 4
  store %struct.InternalFPF* %0, %struct.InternalFPF** %2, align 8
  %4 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %5 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %4, i32 0, i32 0
  store i8 4, i8* %5, align 2
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %7 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 2
  store i16 32767, i16* %7, align 2
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %9 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 1
  store i8 1, i8* %9, align 1
  %10 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %11 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %10, i32 0, i32 3
  %12 = getelementptr inbounds [4 x i16], [4 x i16]* %11, i64 0, i64 0
  store i16 16384, i16* %12, align 2
  store i32 1, i32* %3, align 4
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 3
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i16], [4 x i16]* %18, i64 0, i64 %20
  store i16 0, i16* %21, align 2
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %13

25:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @IsMantissaZero(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load i16*, i16** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %8
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: noinline nounwind uwtable
define internal void @SetInternalFPFZero(%struct.InternalFPF* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.InternalFPF*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.InternalFPF* %0, %struct.InternalFPF** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %7 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 0
  store i8 0, i8* %7, align 2
  %8 = load i8, i8* %4, align 1
  %9 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %9, i32 0, i32 1
  store i8 %8, i8* %10, align 1
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %12 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 2
  store i16 -32767, i16* %12, align 2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 3
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i16], [4 x i16]* %18, i64 0, i64 %20
  store i16 0, i16* %21, align 2
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %13

25:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @SetInternalFPFInfinity(%struct.InternalFPF* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.InternalFPF*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.InternalFPF* %0, %struct.InternalFPF** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %7 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 0
  store i8 3, i8* %7, align 2
  %8 = load i8, i8* %4, align 1
  %9 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %9, i32 0, i32 1
  store i8 %8, i8* %10, align 1
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %12 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 2
  store i16 -32767, i16* %12, align 2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %22, %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 3
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [4 x i16], [4 x i16]* %18, i64 0, i64 %20
  store i16 0, i16* %21, align 2
  br label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %13

25:                                               ; preds = %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @ShiftMantLeft1(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 3, i32* %5, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i16*, i16** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 32768
  store i32 %19, i32* %6, align 4
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = shl i32 %21, 1
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %7, align 2
  %24 = load i16*, i16** %3, align 8
  %25 = load i16, i16* %24, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, 1
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  br label %32

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %3, align 8
  store i16 %34, i16* %35, align 2
  %36 = load i16, i16* %7, align 2
  %37 = load i16*, i16** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  store i16 %36, i16* %40, align 2
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Sub16Bits(i16* %0, i16* %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load i16, i16* %7, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %9, align 4
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %9, align 4
  %15 = sub i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = load i16*, i16** %5, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = sub i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 65536
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** %5, align 8
  store i16 %26, i16* %27, align 2
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 65535
  %30 = trunc i32 %29 to i16
  %31 = load i16*, i16** %6, align 8
  store i16 %30, i16* %31, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @choose_nan(%struct.InternalFPF* %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2, i32 %3) #0 {
  %5 = alloca %struct.InternalFPF*, align 8
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca %struct.InternalFPF*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.InternalFPF* %0, %struct.InternalFPF** %5, align 8
  store %struct.InternalFPF* %1, %struct.InternalFPF** %6, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %56, %4
  %11 = load i32, i32* %9, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %15 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 3
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x i16], [4 x i16]* %15, i64 0, i64 %17
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %22 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %21, i32 0, i32 3
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i16], [4 x i16]* %22, i64 0, i64 %24
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp sgt i32 %20, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %13
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %31 = bitcast %struct.InternalFPF* %30 to i8*
  %32 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %33 = bitcast %struct.InternalFPF* %32 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %33, i64 12, i1 false)
  br label %73

34:                                               ; preds = %13
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %36 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %35, i32 0, i32 3
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [4 x i16], [4 x i16]* %36, i64 0, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %43 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %42, i32 0, i32 3
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i16], [4 x i16]* %43, i64 0, i64 %45
  %47 = load i16, i16* %46, align 2
  %48 = zext i16 %47 to i32
  %49 = icmp slt i32 %41, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %52 = bitcast %struct.InternalFPF* %51 to i8*
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %54 = bitcast %struct.InternalFPF* %53 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 %54, i64 12, i1 false)
  br label %73

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %10

59:                                               ; preds = %10
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %64 = bitcast %struct.InternalFPF* %63 to i8*
  %65 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %66 = bitcast %struct.InternalFPF* %65 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 %66, i64 12, i1 false)
  br label %72

67:                                               ; preds = %59
  %68 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %69 = bitcast %struct.InternalFPF* %68 to i8*
  %70 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %71 = bitcast %struct.InternalFPF* %70 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %71, i64 12, i1 false)
  br label %72

72:                                               ; preds = %67, %62
  br label %73

73:                                               ; preds = %72, %50, %29
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RoundInternalFPF(%struct.InternalFPF* %0) #0 {
  %2 = alloca %struct.InternalFPF*, align 8
  store %struct.InternalFPF* %0, %struct.InternalFPF** %2, align 8
  %3 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %4 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 2
  %6 = zext i8 %5 to i32
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %10 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 2
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %30

14:                                               ; preds = %8, %1
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  call void @denormalize(%struct.InternalFPF* %15, i32 -32767)
  %16 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %17 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 2
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %23 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %22, i32 0, i32 3
  %24 = getelementptr inbounds [4 x i16], [4 x i16]* %23, i64 0, i64 3
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 65528
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %24, align 2
  br label %29

29:                                               ; preds = %21, %14
  br label %30

30:                                               ; preds = %29, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @denormalize(%struct.InternalFPF* %0, i32 %1) #0 {
  %3 = alloca %struct.InternalFPF*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.InternalFPF* %0, %struct.InternalFPF** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %7 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %6, i32 0, i32 3
  %8 = getelementptr inbounds [4 x i16], [4 x i16]* %7, i64 0, i64 0
  %9 = call i32 @IsMantissaZero(i16* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %15 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 2
  %16 = load i16, i16* %15, align 2
  %17 = sext i16 %16 to i32
  %18 = load i32, i32* %4, align 4
  %19 = sub nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %26, 64
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %31 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 1
  call void @SetInternalFPFZero(%struct.InternalFPF* %29, i8 zeroext %32)
  br label %44

33:                                               ; preds = %23
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %36 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %35, i32 0, i32 2
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i16
  store i16 %40, i16* %36, align 2
  %41 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  call void @StickyShiftRightMant(%struct.InternalFPF* %41, i32 %43)
  br label %44

44:                                               ; preds = %33, %28
  br label %45

45:                                               ; preds = %44, %13
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal void @StickyShiftRightMant(%struct.InternalFPF* %0, i32 %1) #0 {
  %3 = alloca %struct.InternalFPF*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16*, align 8
  store %struct.InternalFPF* %0, %struct.InternalFPF** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %9 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %8, i32 0, i32 3
  %10 = getelementptr inbounds [4 x i16], [4 x i16]* %9, i64 0, i64 0
  store i16* %10, i16** %7, align 8
  %11 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %12 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 2
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %56

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 64
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %28, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i16*, i16** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  store i16 0, i16* %27, align 2
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %20

31:                                               ; preds = %20
  %32 = load i16*, i16** %7, align 8
  %33 = getelementptr inbounds i16, i16* %32, i64 3
  store i16 1, i16* %33, align 2
  br label %55

34:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  store i16 0, i16* %6, align 2
  %40 = load i16*, i16** %7, align 8
  call void @ShiftMantRight1(i16* %6, i16* %40)
  %41 = load i16, i16* %6, align 2
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i16*, i16** %7, align 8
  %45 = getelementptr inbounds i16, i16* %44, i64 3
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %47, 1
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %45, align 2
  br label %50

50:                                               ; preds = %43, %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54, %31
  br label %56

56:                                               ; preds = %55, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @ShiftMantRight1(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %41, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %11, label %44

11:                                               ; preds = %8
  %12 = load i16*, i16** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i16, i16* %12, i64 %14
  %16 = load i16, i16* %15, align 2
  store i16 %16, i16* %7, align 2
  %17 = load i16, i16* %7, align 2
  %18 = zext i16 %17 to i32
  %19 = and i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = ashr i32 %21, 1
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %7, align 2
  %24 = load i16*, i16** %3, align 8
  %25 = load i16, i16* %24, align 2
  %26 = icmp ne i16 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load i16, i16* %7, align 2
  %29 = zext i16 %28 to i32
  %30 = or i32 %29, 32768
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %7, align 2
  br label %32

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %6, align 4
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %3, align 8
  store i16 %34, i16* %35, align 2
  %36 = load i16, i16* %7, align 2
  %37 = load i16*, i16** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  store i16 %36, i16* %40, align 2
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %8

44:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @normalize(%struct.InternalFPF* %0) #0 {
  %2 = alloca %struct.InternalFPF*, align 8
  %3 = alloca i16, align 2
  store %struct.InternalFPF* %0, %struct.InternalFPF** %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %6 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %5, i32 0, i32 3
  %7 = getelementptr inbounds [4 x i16], [4 x i16]* %6, i64 0, i64 0
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 32768
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  store i16 0, i16* %3, align 2
  %13 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %14 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 3
  %15 = getelementptr inbounds [4 x i16], [4 x i16]* %14, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %3, i16* %15)
  %16 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %17 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %16, i32 0, i32 2
  %18 = load i16, i16* %17, align 2
  %19 = add i16 %18, -1
  store i16 %19, i16* %17, align 2
  br label %4

20:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @DoEmFloatIteration(%struct.InternalFPF* %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca %struct.InternalFPF*, align 8
  %8 = alloca %struct.InternalFPF*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.InternalFPF* %0, %struct.InternalFPF** %6, align 8
  store %struct.InternalFPF* %1, %struct.InternalFPF** %7, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %13, i64* %11, align 8
  br label %14

14:                                               ; preds = %73, %5
  %15 = load i64, i64* %10, align 8
  %16 = add i64 %15, -1
  store i64 %16, i64* %10, align 8
  %17 = icmp ne i64 %15, 0
  br i1 %17, label %18, label %74

18:                                               ; preds = %14
  store i64 0, i64* %12, align 8
  br label %19

19:                                               ; preds = %70, %18
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i64, i64* %12, align 8
  %25 = urem i64 %24, 16
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* @DoEmFloatIteration.jtable, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  switch i32 %28, label %69 [
    i32 0, label %29
    i32 1, label %39
    i32 2, label %49
    i32 3, label %59
  ]

29:                                               ; preds = %23
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %31 = load i64, i64* %12, align 8
  %32 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %30, i64 %31
  %33 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %33, i64 %34
  %36 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %37 = load i64, i64* %12, align 8
  %38 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %36, i64 %37
  call void @AddSubInternalFPF(i8 zeroext 0, %struct.InternalFPF* %32, %struct.InternalFPF* %35, %struct.InternalFPF* %38)
  br label %69

39:                                               ; preds = %23
  %40 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %41 = load i64, i64* %12, align 8
  %42 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %40, i64 %41
  %43 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %43, i64 %44
  %46 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %47 = load i64, i64* %12, align 8
  %48 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %46, i64 %47
  call void @AddSubInternalFPF(i8 zeroext 1, %struct.InternalFPF* %42, %struct.InternalFPF* %45, %struct.InternalFPF* %48)
  br label %69

49:                                               ; preds = %23
  %50 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %50, i64 %51
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %53, i64 %54
  %56 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %56, i64 %57
  call void @MultiplyInternalFPF(%struct.InternalFPF* %52, %struct.InternalFPF* %55, %struct.InternalFPF* %58)
  br label %69

59:                                               ; preds = %23
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %60, i64 %61
  %63 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %63, i64 %64
  %66 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %66, i64 %67
  call void @DivideInternalFPF(%struct.InternalFPF* %62, %struct.InternalFPF* %65, %struct.InternalFPF* %68)
  br label %69

69:                                               ; preds = %59, %49, %39, %29, %23
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %12, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %12, align 8
  br label %19

73:                                               ; preds = %19
  br label %14

74:                                               ; preds = %14
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @StopStopwatch(i64 %75)
  ret i64 %76
}

; Function Attrs: noinline nounwind uwtable
define internal void @AddSubInternalFPF(i8 zeroext %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2, %struct.InternalFPF* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca %struct.InternalFPF*, align 8
  %8 = alloca %struct.InternalFPF*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca %struct.InternalFPF, align 2
  %14 = alloca %struct.InternalFPF, align 2
  store i8 %0, i8* %5, align 1
  store %struct.InternalFPF* %1, %struct.InternalFPF** %6, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %7, align 8
  store %struct.InternalFPF* %3, %struct.InternalFPF** %8, align 8
  %15 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %16 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 2
  %18 = zext i8 %17 to i32
  %19 = mul nsw i32 %18, 5
  %20 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %21 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 2
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %19, %23
  switch i32 %24, label %305 [
    i32 0, label %25
    i32 20, label %47
    i32 21, label %47
    i32 22, label %47
    i32 23, label %47
    i32 5, label %47
    i32 10, label %47
    i32 15, label %47
    i32 16, label %47
    i32 17, label %47
    i32 4, label %52
    i32 9, label %52
    i32 14, label %52
    i32 19, label %52
    i32 1, label %57
    i32 2, label %57
    i32 3, label %57
    i32 8, label %57
    i32 13, label %57
    i32 6, label %70
    i32 7, label %70
    i32 11, label %70
    i32 12, label %70
    i32 18, label %299
    i32 24, label %301
  ]

25:                                               ; preds = %4
  %26 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %27 = bitcast %struct.InternalFPF* %26 to i8*
  %28 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %29 = bitcast %struct.InternalFPF* %28 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 %29, i64 12, i1 false)
  %30 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %31 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %30, i32 0, i32 1
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %35 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %34, i32 0, i32 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = xor i32 %33, %37
  %39 = load i8, i8* %5, align 1
  %40 = zext i8 %39 to i32
  %41 = xor i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %45 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %44, i32 0, i32 1
  store i8 0, i8* %45, align 1
  br label %46

46:                                               ; preds = %43, %25
  br label %305

47:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4
  %48 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %49 = bitcast %struct.InternalFPF* %48 to i8*
  %50 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %51 = bitcast %struct.InternalFPF* %50 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 %51, i64 12, i1 false)
  br label %305

52:                                               ; preds = %4, %4, %4, %4
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %54 = bitcast %struct.InternalFPF* %53 to i8*
  %55 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %56 = bitcast %struct.InternalFPF* %55 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %54, i8* align 1 %56, i64 12, i1 false)
  br label %305

57:                                               ; preds = %4, %4, %4, %4, %4
  %58 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %59 = bitcast %struct.InternalFPF* %58 to i8*
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %61 = bitcast %struct.InternalFPF* %60 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %59, i8* align 1 %61, i64 12, i1 false)
  %62 = load i8, i8* %5, align 1
  %63 = zext i8 %62 to i32
  %64 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %65 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %64, i32 0, i32 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = xor i32 %67, %63
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %305

70:                                               ; preds = %4, %4, %4, %4
  %71 = bitcast %struct.InternalFPF* %13 to i8*
  %72 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %73 = bitcast %struct.InternalFPF* %72 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %71, i8* align 1 %73, i64 12, i1 false)
  %74 = bitcast %struct.InternalFPF* %14 to i8*
  %75 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %76 = bitcast %struct.InternalFPF* %75 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %74, i8* align 1 %76, i64 12, i1 false)
  %77 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = sext i16 %78 to i32
  %80 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = sext i16 %81 to i32
  %83 = sub nsw i32 %79, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %70
  %87 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 0
  %88 = load i8, i8* %87, align 2
  %89 = zext i8 %88 to i32
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 0
  %93 = load i8, i8* %92, align 2
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %99

96:                                               ; preds = %91, %86
  %97 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %98 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %97, i32 0, i32 0
  store i8 1, i8* %98, align 2
  br label %102

99:                                               ; preds = %91
  %100 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %101 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %100, i32 0, i32 0
  store i8 2, i8* %101, align 2
  br label %102

102:                                              ; preds = %99, %96
  %103 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 1
  %104 = load i8, i8* %103, align 1
  %105 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %106 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %105, i32 0, i32 1
  store i8 %104, i8* %106, align 1
  %107 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 2
  %108 = load i16, i16* %107, align 2
  %109 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %110 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %109, i32 0, i32 2
  store i16 %108, i16* %110, align 2
  br label %149

111:                                              ; preds = %70
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  call void @StickyShiftRightMant(%struct.InternalFPF* %14, i32 %115)
  %116 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 0
  %117 = load i8, i8* %116, align 2
  %118 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %119 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %118, i32 0, i32 0
  store i8 %117, i8* %119, align 2
  %120 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 1
  %121 = load i8, i8* %120, align 1
  %122 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %123 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %122, i32 0, i32 1
  store i8 %121, i8* %123, align 1
  %124 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 2
  %125 = load i16, i16* %124, align 2
  %126 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %127 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %126, i32 0, i32 2
  store i16 %125, i16* %127, align 2
  br label %148

128:                                              ; preds = %111
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 0, %129
  call void @StickyShiftRightMant(%struct.InternalFPF* %13, i32 %130)
  %131 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 0
  %132 = load i8, i8* %131, align 2
  %133 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %134 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %133, i32 0, i32 0
  store i8 %132, i8* %134, align 2
  %135 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 1
  %136 = load i8, i8* %135, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8, i8* %5, align 1
  %139 = zext i8 %138 to i32
  %140 = xor i32 %137, %139
  %141 = trunc i32 %140 to i8
  %142 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %143 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %142, i32 0, i32 1
  store i8 %141, i8* %143, align 1
  %144 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 2
  %145 = load i16, i16* %144, align 2
  %146 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %147 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %146, i32 0, i32 2
  store i16 %145, i16* %147, align 2
  br label %148

148:                                              ; preds = %128, %114
  br label %149

149:                                              ; preds = %148, %102
  %150 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 1
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = xor i32 %152, %155
  %157 = load i8, i8* %5, align 1
  %158 = zext i8 %157 to i32
  %159 = xor i32 %156, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %242

161:                                              ; preds = %149
  store i16 0, i16* %10, align 2
  store i32 3, i32* %12, align 4
  br label %162

162:                                              ; preds = %181, %161
  %163 = load i32, i32* %12, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %184

165:                                              ; preds = %162
  %166 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %167 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %166, i32 0, i32 3
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [4 x i16], [4 x i16]* %167, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 3
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [4 x i16], [4 x i16]* %171, i64 0, i64 %173
  %175 = load i16, i16* %174, align 2
  %176 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 3
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [4 x i16], [4 x i16]* %176, i64 0, i64 %178
  %180 = load i16, i16* %179, align 2
  call void @Sub16Bits(i16* %10, i16* %170, i16 zeroext %175, i16 zeroext %180)
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %12, align 4
  br label %162

184:                                              ; preds = %162
  %185 = load i16, i16* %10, align 2
  %186 = icmp ne i16 %185, 0
  br i1 %186, label %187, label %216

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 1
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8, i8* %5, align 1
  %192 = zext i8 %191 to i32
  %193 = xor i32 %190, %192
  %194 = trunc i32 %193 to i8
  %195 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %196 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %195, i32 0, i32 1
  store i8 %194, i8* %196, align 1
  store i16 0, i16* %10, align 2
  store i32 3, i32* %12, align 4
  br label %197

197:                                              ; preds = %212, %187
  %198 = load i32, i32* %12, align 4
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %197
  %201 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %202 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %201, i32 0, i32 3
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i16], [4 x i16]* %202, i64 0, i64 %204
  %206 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %207 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %206, i32 0, i32 3
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [4 x i16], [4 x i16]* %207, i64 0, i64 %209
  %211 = load i16, i16* %210, align 2
  call void @Sub16Bits(i16* %10, i16* %205, i16 zeroext 0, i16 zeroext %211)
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, -1
  store i32 %214, i32* %12, align 4
  br label %197

215:                                              ; preds = %197
  br label %217

216:                                              ; preds = %184
  br label %217

217:                                              ; preds = %216, %215
  %218 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %219 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %218, i32 0, i32 3
  %220 = getelementptr inbounds [4 x i16], [4 x i16]* %219, i64 0, i64 0
  %221 = call i32 @IsMantissaZero(i16* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %217
  %224 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %225 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %224, i32 0, i32 0
  store i8 0, i8* %225, align 2
  %226 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %227 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %226, i32 0, i32 1
  store i8 0, i8* %227, align 1
  br label %241

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 0
  %230 = load i8, i8* %229, align 2
  %231 = zext i8 %230 to i32
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %238, label %233

233:                                              ; preds = %228
  %234 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 0
  %235 = load i8, i8* %234, align 2
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %240

238:                                              ; preds = %233, %228
  %239 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  call void @normalize(%struct.InternalFPF* %239)
  br label %240

240:                                              ; preds = %238, %233
  br label %241

241:                                              ; preds = %240, %223
  br label %298

242:                                              ; preds = %149
  store i16 0, i16* %11, align 2
  store i32 3, i32* %12, align 4
  br label %243

243:                                              ; preds = %262, %242
  %244 = load i32, i32* %12, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %265

246:                                              ; preds = %243
  %247 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %248 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %247, i32 0, i32 3
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [4 x i16], [4 x i16]* %248, i64 0, i64 %250
  %252 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %13, i32 0, i32 3
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [4 x i16], [4 x i16]* %252, i64 0, i64 %254
  %256 = load i16, i16* %255, align 2
  %257 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %14, i32 0, i32 3
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [4 x i16], [4 x i16]* %257, i64 0, i64 %259
  %261 = load i16, i16* %260, align 2
  call void @Add16Bits(i16* %11, i16* %251, i16 zeroext %256, i16 zeroext %261)
  br label %262

262:                                              ; preds = %246
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %12, align 4
  br label %243

265:                                              ; preds = %243
  %266 = load i16, i16* %11, align 2
  %267 = icmp ne i16 %266, 0
  br i1 %267, label %268, label %285

268:                                              ; preds = %265
  %269 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %270 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %269, i32 0, i32 2
  %271 = load i16, i16* %270, align 2
  %272 = add i16 %271, 1
  store i16 %272, i16* %270, align 2
  store i16 0, i16* %11, align 2
  %273 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %274 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %273, i32 0, i32 3
  %275 = getelementptr inbounds [4 x i16], [4 x i16]* %274, i64 0, i64 0
  call void @ShiftMantRight1(i16* %11, i16* %275)
  %276 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %277 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %276, i32 0, i32 3
  %278 = getelementptr inbounds [4 x i16], [4 x i16]* %277, i64 0, i64 0
  %279 = load i16, i16* %278, align 2
  %280 = zext i16 %279 to i32
  %281 = or i32 %280, 32768
  %282 = trunc i32 %281 to i16
  store i16 %282, i16* %278, align 2
  %283 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %284 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %283, i32 0, i32 0
  store i8 2, i8* %284, align 2
  br label %297

285:                                              ; preds = %265
  %286 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %287 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %286, i32 0, i32 3
  %288 = getelementptr inbounds [4 x i16], [4 x i16]* %287, i64 0, i64 0
  %289 = load i16, i16* %288, align 2
  %290 = zext i16 %289 to i32
  %291 = and i32 %290, 32768
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %285
  %294 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  %295 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %294, i32 0, i32 0
  store i8 2, i8* %295, align 2
  br label %296

296:                                              ; preds = %293, %285
  br label %297

297:                                              ; preds = %296, %268
  br label %298

298:                                              ; preds = %297, %241
  br label %305

299:                                              ; preds = %4
  %300 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %300)
  br label %305

301:                                              ; preds = %4
  %302 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %303 = load %struct.InternalFPF*, %struct.InternalFPF** %7, align 8
  %304 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  call void @choose_nan(%struct.InternalFPF* %302, %struct.InternalFPF* %303, %struct.InternalFPF* %304, i32 1)
  br label %305

305:                                              ; preds = %301, %299, %298, %57, %52, %47, %46, %4
  %306 = load %struct.InternalFPF*, %struct.InternalFPF** %8, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %306)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @MultiplyInternalFPF(%struct.InternalFPF* %0, %struct.InternalFPF* %1, %struct.InternalFPF* %2) #0 {
  %4 = alloca %struct.InternalFPF*, align 8
  %5 = alloca %struct.InternalFPF*, align 8
  %6 = alloca %struct.InternalFPF*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca [4 x i16], align 2
  %11 = alloca %struct.InternalFPF, align 2
  store %struct.InternalFPF* %0, %struct.InternalFPF** %4, align 8
  store %struct.InternalFPF* %1, %struct.InternalFPF** %5, align 8
  store %struct.InternalFPF* %2, %struct.InternalFPF** %6, align 8
  %12 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %13 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 2
  %15 = zext i8 %14 to i32
  %16 = mul nsw i32 %15, 5
  %17 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %18 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 2
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %16, %20
  switch i32 %21, label %218 [
    i32 16, label %22
    i32 17, label %22
    i32 18, label %22
    i32 0, label %22
    i32 1, label %22
    i32 2, label %22
    i32 8, label %37
    i32 13, label %37
    i32 5, label %37
    i32 10, label %37
    i32 3, label %52
    i32 15, label %52
    i32 20, label %54
    i32 21, label %54
    i32 22, label %54
    i32 23, label %54
    i32 4, label %59
    i32 9, label %59
    i32 14, label %59
    i32 19, label %59
    i32 6, label %64
    i32 7, label %64
    i32 11, label %64
    i32 12, label %64
    i32 24, label %214
  ]

22:                                               ; preds = %3, %3, %3, %3, %3, %3
  %23 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %24 = bitcast %struct.InternalFPF* %23 to i8*
  %25 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %26 = bitcast %struct.InternalFPF* %25 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %26, i64 12, i1 false)
  %27 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %28 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %27, i32 0, i32 1
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %32 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %31, i32 0, i32 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = xor i32 %34, %30
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %32, align 1
  br label %218

37:                                               ; preds = %3, %3, %3, %3
  %38 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %39 = bitcast %struct.InternalFPF* %38 to i8*
  %40 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %41 = bitcast %struct.InternalFPF* %40 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %41, i64 12, i1 false)
  %42 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %43 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %47 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = xor i32 %49, %45
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %47, align 1
  br label %218

52:                                               ; preds = %3, %3
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFNaN(%struct.InternalFPF* %53)
  br label %218

54:                                               ; preds = %3, %3, %3, %3
  %55 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %56 = bitcast %struct.InternalFPF* %55 to i8*
  %57 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %58 = bitcast %struct.InternalFPF* %57 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %56, i8* align 1 %58, i64 12, i1 false)
  br label %218

59:                                               ; preds = %3, %3, %3, %3
  %60 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %61 = bitcast %struct.InternalFPF* %60 to i8*
  %62 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %63 = bitcast %struct.InternalFPF* %62 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %61, i8* align 1 %63, i64 12, i1 false)
  br label %218

64:                                               ; preds = %3, %3, %3, %3
  %65 = bitcast %struct.InternalFPF* %11 to i8*
  %66 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %67 = bitcast %struct.InternalFPF* %66 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %65, i8* align 1 %67, i64 12, i1 false)
  %68 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %69 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %68, i32 0, i32 3
  %70 = getelementptr inbounds [4 x i16], [4 x i16]* %69, i64 0, i64 0
  %71 = call i32 @IsMantissaZero(i16* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %64
  %74 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %75 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %74, i32 0, i32 3
  %76 = getelementptr inbounds [4 x i16], [4 x i16]* %75, i64 0, i64 0
  %77 = call i32 @IsMantissaZero(i16* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73, %64
  %80 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @SetInternalFPFInfinity(%struct.InternalFPF* %80, i8 zeroext 0)
  br label %81

81:                                               ; preds = %79, %73
  %82 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %83 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 2
  %85 = zext i8 %84 to i32
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %93, label %87

87:                                               ; preds = %81
  %88 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %89 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 2
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %96

93:                                               ; preds = %87, %81
  %94 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %95 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %94, i32 0, i32 0
  store i8 1, i8* %95, align 2
  br label %99

96:                                               ; preds = %87
  %97 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %98 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %97, i32 0, i32 0
  store i8 2, i8* %98, align 2
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %101 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %100, i32 0, i32 1
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %105 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %104, i32 0, i32 1
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = xor i32 %103, %107
  %109 = trunc i32 %108 to i8
  %110 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %111 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %110, i32 0, i32 1
  store i8 %109, i8* %111, align 1
  %112 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %113 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %112, i32 0, i32 2
  %114 = load i16, i16* %113, align 2
  %115 = sext i16 %114 to i32
  %116 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %117 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %116, i32 0, i32 2
  %118 = load i16, i16* %117, align 2
  %119 = sext i16 %118 to i32
  %120 = add nsw i32 %115, %119
  %121 = trunc i32 %120 to i16
  %122 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %123 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %122, i32 0, i32 2
  store i16 %121, i16* %123, align 2
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %136, %99
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %129 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %128, i32 0, i32 3
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i16], [4 x i16]* %129, i64 0, i64 %131
  store i16 0, i16* %132, align 2
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 %134
  store i16 0, i16* %135, align 2
  br label %136

136:                                              ; preds = %127
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %124

139:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %180, %139
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 64
  br i1 %142, label %143, label %183

143:                                              ; preds = %140
  store i16 0, i16* %9, align 2
  %144 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %11, i32 0, i32 3
  %145 = getelementptr inbounds [4 x i16], [4 x i16]* %144, i64 0, i64 0
  call void @ShiftMantRight1(i16* %9, i16* %145)
  %146 = load i16, i16* %9, align 2
  %147 = icmp ne i16 %146, 0
  br i1 %147, label %148, label %174

148:                                              ; preds = %143
  store i16 0, i16* %9, align 2
  store i32 3, i32* %8, align 4
  br label %149

149:                                              ; preds = %170, %148
  %150 = load i32, i32* %8, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %173

152:                                              ; preds = %149
  %153 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %154 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %153, i32 0, i32 3
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i16], [4 x i16]* %154, i64 0, i64 %156
  %158 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %159 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %158, i32 0, i32 3
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i16], [4 x i16]* %159, i64 0, i64 %161
  %163 = load i16, i16* %162, align 2
  %164 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %165 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %164, i32 0, i32 3
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [4 x i16], [4 x i16]* %165, i64 0, i64 %167
  %169 = load i16, i16* %168, align 2
  call void @Add16Bits(i16* %9, i16* %157, i16 zeroext %163, i16 zeroext %169)
  br label %170

170:                                              ; preds = %152
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %8, align 4
  br label %149

173:                                              ; preds = %149
  br label %175

174:                                              ; preds = %143
  store i16 0, i16* %9, align 2
  br label %175

175:                                              ; preds = %174, %173
  %176 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %177 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %176, i32 0, i32 3
  %178 = getelementptr inbounds [4 x i16], [4 x i16]* %177, i64 0, i64 0
  call void @ShiftMantRight1(i16* %9, i16* %178)
  %179 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  call void @ShiftMantRight1(i16* %9, i16* %179)
  br label %180

180:                                              ; preds = %175
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %140

183:                                              ; preds = %140
  br label %184

184:                                              ; preds = %192, %183
  %185 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %186 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %185, i32 0, i32 3
  %187 = getelementptr inbounds [4 x i16], [4 x i16]* %186, i64 0, i64 0
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i32
  %190 = and i32 %189, 32768
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %184
  store i16 0, i16* %9, align 2
  %193 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %9, i16* %193)
  %194 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %195 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %194, i32 0, i32 3
  %196 = getelementptr inbounds [4 x i16], [4 x i16]* %195, i64 0, i64 0
  call void @ShiftMantLeft1(i16* %9, i16* %196)
  %197 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %198 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %197, i32 0, i32 2
  %199 = load i16, i16* %198, align 2
  %200 = add i16 %199, -1
  store i16 %200, i16* %198, align 2
  br label %184

201:                                              ; preds = %184
  %202 = getelementptr inbounds [4 x i16], [4 x i16]* %10, i64 0, i64 0
  %203 = call i32 @IsMantissaZero(i16* %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  %207 = getelementptr inbounds %struct.InternalFPF, %struct.InternalFPF* %206, i32 0, i32 3
  %208 = getelementptr inbounds [4 x i16], [4 x i16]* %207, i64 0, i64 3
  %209 = load i16, i16* %208, align 2
  %210 = zext i16 %209 to i32
  %211 = or i32 %210, 1
  %212 = trunc i32 %211 to i16
  store i16 %212, i16* %208, align 2
  br label %213

213:                                              ; preds = %205, %201
  br label %218

214:                                              ; preds = %3
  %215 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %216 = load %struct.InternalFPF*, %struct.InternalFPF** %5, align 8
  %217 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @choose_nan(%struct.InternalFPF* %215, %struct.InternalFPF* %216, %struct.InternalFPF* %217, i32 0)
  br label %218

218:                                              ; preds = %214, %213, %59, %54, %52, %37, %22, %3
  %219 = load %struct.InternalFPF*, %struct.InternalFPF** %6, align 8
  call void @RoundInternalFPF(%struct.InternalFPF* %219)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Add16Bits(i16* %0, i16* %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i16* %1, i16** %6, align 8
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load i16, i16* %7, align 2
  %11 = zext i16 %10 to i32
  store i32 %11, i32* %9, align 4
  %12 = load i16, i16* %8, align 2
  %13 = zext i16 %12 to i32
  %14 = load i32, i32* %9, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %9, align 4
  %16 = load i16*, i16** %5, align 8
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %9, align 4
  %20 = add i32 %19, %18
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 65536
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = trunc i32 %25 to i16
  %27 = load i16*, i16** %5, align 8
  store i16 %26, i16* %27, align 2
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 65535
  %30 = trunc i32 %29 to i16
  %31 = load i16*, i16** %6, align 8
  store i16 %30, i16* %31, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randwc(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @randnum(i32 0)
  %4 = load i32, i32* %2, align 4
  %5 = srem i32 %3, %4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @randnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 13, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  store i32 117, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  %9 = mul nsw i32 %8, 254754
  %10 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  %11 = mul nsw i32 %10, 529562
  %12 = add nsw i32 %9, %11
  %13 = srem i32 %12, 999563
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  store i32 %14, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 1), align 4
  %15 = load i32, i32* %3, align 4
  store i32 %15, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @randnum.randw, i64 0, i64 0), align 4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @abs_randwc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @randwc(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* %3, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 60, i64* @global_min_ticks, align 8
  store i64 5, i64* @global_min_seconds, align 8
  store i32 0, i32* @global_allstats, align 4
  store i32 0, i32* @global_custrun, align 4
  store i32 8, i32* @global_align, align 4
  store i32 0, i32* @write_to_file, align 4
  store double 1.000000e+00, double* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double 1.000000e+00, double* %14, align 8
  store double 1.000000e+00, double* %15, align 8
  store double 1.000000e+00, double* %16, align 8
  store i32 0, i32* @mem_array_ents, align 4
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %25, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %23
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %18

28:                                               ; preds = %18
  call void @set_request_secs()
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 8
  store i64 8111, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 8
  store i64 32768, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 0), align 8
  store i64 3000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_assignstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 0), align 8
  store i64 4000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 0), align 8
  store i64 5000, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 0), align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @parse_arg(i8* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i8**, i8*** %5, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  call void @display_help(i8* %47)
  call void @exit(i32 0) #8
  unreachable

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %32

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52, %28
  call void @output_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.56, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.58, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.59, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.60, i64 0, i64 0))
  %54 = load i32, i32* @global_allstats, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  call void @output_string(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.62, i64 0, i64 0))
  %57 = call i64 @time(i64* %8) #9
  %58 = call %struct.tm* @localtime(i64* %8) #9
  store %struct.tm* %58, %struct.tm** %9, align 8
  %59 = load %struct.tm*, %struct.tm** %9, align 8
  %60 = call i8* @asctime(%struct.tm* %59) #9
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.63, i64 0, i64 0), i8* %60) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.64, i64 0, i64 0), i32 1, i32 2, i32 4, i32 8, i32 1, i32 2, i32 4, i32 4) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %63 = load i8*, i8** @sysname, align 8
  %64 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %63) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %65 = load i8*, i8** @compilername, align 8
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %65) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %67 = load i8*, i8** @compilerversion, align 8
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), i8* %67) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.66, i64 0, i64 0))
  br label %69

69:                                               ; preds = %56, %53
  call void @output_string(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.67, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %187, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 10
  br i1 %72, label %73, label %190

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %186

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i64 0, i64 0), i8* %83) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %93, %79
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [10 x void ()*], [10 x void ()*]* @funcpointer, i64 0, i64 %90
  %92 = load void ()*, void ()** %91, align 8
  call void %92()
  br label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %85

96:                                               ; preds = %85
  %97 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.69, i64 0, i64 0), double 0.000000e+00, double 0.000000e+00) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %106, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 8
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %123

106:                                              ; preds = %103, %100, %96
  %107 = load double, double* %16, align 8
  %108 = load double, double* %10, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i64 0, i64 %110
  %112 = load double, double* %111, align 8
  %113 = fdiv double %108, %112
  %114 = fmul double %107, %113
  store double %114, double* %16, align 8
  %115 = load double, double* %14, align 8
  %116 = load double, double* %10, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %118
  %120 = load double, double* %119, align 8
  %121 = fdiv double %116, %120
  %122 = fmul double %115, %121
  store double %122, double* %14, align 8
  br label %162

123:                                              ; preds = %103
  %124 = load double, double* %15, align 8
  %125 = load double, double* %10, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [10 x double], [10 x double]* @bindex, i64 0, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fdiv double %125, %129
  %131 = fmul double %124, %130
  store double %131, double* %15, align 8
  %132 = load i32, i32* %6, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %6, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = icmp eq i32 %138, 6
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %152

143:                                              ; preds = %140, %137, %134, %123
  %144 = load double, double* %13, align 8
  %145 = load double, double* %10, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %147
  %149 = load double, double* %148, align 8
  %150 = fdiv double %145, %149
  %151 = fmul double %144, %150
  store double %151, double* %13, align 8
  br label %161

152:                                              ; preds = %140
  %153 = load double, double* %12, align 8
  %154 = load double, double* %10, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [10 x double], [10 x double]* @lx_bindex, i64 0, i64 %156
  %158 = load double, double* %157, align 8
  %159 = fdiv double %154, %158
  %160 = fmul double %153, %159
  store double %160, double* %12, align 8
  br label %161

161:                                              ; preds = %152, %143
  br label %162

162:                                              ; preds = %161, %106
  %163 = load i32, i32* @global_allstats, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load double, double* %11, align 8
  %167 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.70, i64 0, i64 0), double %166) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %168 = load double, double* %10, align 8
  %169 = fcmp ogt double %168, 1.000000e-100
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = load double, double* %11, align 8
  %172 = fmul double 1.000000e+02, %171
  %173 = load double, double* %10, align 8
  %174 = fdiv double %172, %173
  %175 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i64 0, i64 0), double %174) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %176

176:                                              ; preds = %170, %165
  %177 = load i64, i64* %17, align 8
  %178 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.72, i64 0, i64 0), i64 %177) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %179 = load i32, i32* %6, align 4
  call void @show_stats(i32 %179)
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ftestnames, i64 0, i64 %181
  %183 = load i8*, i8** %182, align 8
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), i8* %183) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  br label %185

185:                                              ; preds = %176, %162
  br label %186

186:                                              ; preds = %185, %73
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %70

190:                                              ; preds = %70
  %191 = load i32, i32* @global_custrun, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  call void @output_string(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.74, i64 0, i64 0))
  %194 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.75, i64 0, i64 0), double 0.000000e+00) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.76, i64 0, i64 0), double 0.000000e+00) #9
  call void @output_string(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @buffer, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.77, i64 0, i64 0))
  call void @output_string(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.78, i64 0, i64 0))
  br label %196

196:                                              ; preds = %193, %190
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define internal void @set_request_secs() #0 {
  %1 = load i64, i64* @global_min_seconds, align 8
  store i64 %1, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  %2 = load i64, i64* @global_min_seconds, align 8
  store i64 %2, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  %3 = load i64, i64* @global_min_seconds, align 8
  store i64 %3, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  %4 = load i64, i64* @global_min_seconds, align 8
  store i64 %4, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  %5 = load i64, i64* @global_min_seconds, align 8
  store i64 %5, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  %6 = load i64, i64* @global_min_seconds, align 8
  store i64 %6, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_assignstruct, i32 0, i32 1), align 8
  %7 = load i64, i64* @global_min_seconds, align 8
  store i64 %7, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 1), align 8
  %8 = load i64, i64* @global_min_seconds, align 8
  store i64 %8, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 1), align 8
  %9 = load i64, i64* @global_min_seconds, align 8
  store i64 %9, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 1), align 8
  %10 = load i64, i64* @global_min_seconds, align 8
  store i64 %10, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 1), align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_arg(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %7, i8** %3, align 8
  %8 = load i8, i8* %6, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 45
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @strlen(i8* %16) #10
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 @toupper(i32 %25) #10
  %27 = trunc i32 %26 to i8
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %27, i8* %31, align 1
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %3, align 8
  %38 = load i8, i8* %36, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %54 [
    i32 63, label %40
    i32 86, label %41
    i32 67, label %42
  ]

40:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %56

41:                                               ; preds = %35
  store i32 1, i32* @global_allstats, align 4
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %35
  %43 = load i8*, i8** %3, align 8
  %44 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.79, i64 0, i64 0))
  store %struct._IO_FILE* %44, %struct._IO_FILE** %5, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %46 = icmp eq %struct._IO_FILE* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %2, align 4
  br label %56

50:                                               ; preds = %42
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @read_comfile(%struct._IO_FILE* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = call i32 @fclose(%struct._IO_FILE* %52)
  br label %55

54:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %56

55:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %54, %47, %41, %40, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind uwtable
define internal void @display_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.85, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.87, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define internal void @output_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* %3)
  %5 = load i32, i32* @write_to_file, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #4

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #4

; Function Attrs: nounwind
declare dso_local i8* @asctime(%struct.tm*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal void @show_stats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [80 x i8], align 16
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %81 [
    i32 0, label %5
    i32 1, label %15
    i32 2, label %25
    i32 3, label %34
    i32 4, label %43
    i32 5, label %48
    i32 6, label %53
    i32 7, label %62
    i32 8, label %71
    i32 9, label %76
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %7 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 8
  %8 = zext i16 %7 to i32
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 %8) #9
  %10 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %10)
  %11 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %12 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  %13 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 %12) #9
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %14)
  br label %81

15:                                               ; preds = %1
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %17 = load i16, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 8
  %18 = zext i16 %17 to i32
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.89, i64 0, i64 0), i32 %18) #9
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %20)
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %22 = load i64, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.90, i64 0, i64 0), i64 %22) #9
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %24)
  br label %81

25:                                               ; preds = %1
  %26 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %27 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.91, i64 0, i64 0), i64 %27) #9
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %29)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %31 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  %32 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0), i64 %31) #9
  %33 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %33)
  br label %81

34:                                               ; preds = %1
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %36 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 %36) #9
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %38)
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %40 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  %41 = call i32 (i8*, i8*, ...) @sprintf(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 %40) #9
  %42 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %42)
  br label %81

43:                                               ; preds = %1
  %44 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %45 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.95, i64 0, i64 0), i64 %45) #9
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %47)
  br label %81

48:                                               ; preds = %1
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %50 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_assignstruct, i32 0, i32 2), align 8
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 %50) #9
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %52)
  br label %81

53:                                               ; preds = %1
  %54 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %55 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 2), align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 %55) #9
  %57 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %57)
  %58 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %59 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 3), align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.97, i64 0, i64 0), i64 %59) #9
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %61)
  br label %81

62:                                               ; preds = %1
  %63 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %64 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 2), align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i64 0, i64 0), i64 %64) #9
  %66 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %66)
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %68 = load i64, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 3), align 8
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %67, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 %68) #9
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %70)
  br label %81

71:                                               ; preds = %1
  %72 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %73 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 2), align 8
  %74 = call i32 (i8*, i8*, ...) @sprintf(i8* %72, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.93, i64 0, i64 0), i64 %73) #9
  %75 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %75)
  br label %81

76:                                               ; preds = %1
  %77 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %78 = load i64, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 2), align 8
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i64 0, i64 0), i64 %78) #9
  %80 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  call void @output_string(i8* %80)
  br label %81

81:                                               ; preds = %76, %71, %62, %53, %48, %43, %34, %25, %15, %5, %1
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @read_comfile(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [40 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  br label %6

6:                                                ; preds = %201, %1
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %9 = call i8* @fgets(i8* %7, i32 39, %struct._IO_FILE* %8)
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %202

11:                                               ; preds = %6
  %12 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %13 = call i64 @strlen(i8* %12) #10
  %14 = icmp ugt i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %17 = call i64 @strlen(i8* %16) #10
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 %18
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %15, %11
  %21 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %22 = call i8* @strchr(i8* %21, i32 61) #10
  store i8* %22, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.81, i64 0, i64 0), i8* %25)
  br label %201

27:                                               ; preds = %20
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  store i8 0, i8* %28, align 1
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  call void @strtoupper(i8* %30)
  store i32 41, i32* %5, align 4
  br label %31

31:                                               ; preds = %41, %27
  %32 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [42 x i8*], [42 x i8*]* @paramnames, i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @strcmp(i8* %32, i8* %36) #10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %45

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %31, label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = getelementptr inbounds [40 x i8], [40 x i8]* %3, i64 0, i64 0
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.82, i64 0, i64 0), i8* %49)
  br label %201

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  switch i32 %52, label %200 [
    i32 0, label %53
    i32 1, label %56
    i32 2, label %59
    i32 3, label %62
    i32 4, label %71
    i32 5, label %87
    i32 6, label %90
    i32 7, label %94
    i32 8, label %97
    i32 9, label %100
    i32 10, label %103
    i32 11, label %106
    i32 12, label %110
    i32 13, label %113
    i32 14, label %116
    i32 15, label %119
    i32 16, label %122
    i32 17, label %125
    i32 18, label %128
    i32 19, label %131
    i32 20, label %134
    i32 21, label %137
    i32 22, label %140
    i32 23, label %143
    i32 24, label %146
    i32 25, label %149
    i32 26, label %152
    i32 27, label %155
    i32 28, label %158
    i32 29, label %161
    i32 30, label %164
    i32 31, label %167
    i32 32, label %170
    i32 33, label %173
    i32 34, label %176
    i32 35, label %179
    i32 36, label %182
    i32 37, label %185
    i32 38, label %188
    i32 39, label %191
    i32 40, label %194
    i32 41, label %197
  ]

53:                                               ; preds = %51
  %54 = load i8*, i8** %4, align 8
  %55 = call i64 @atol(i8* %54) #10
  store i64 %55, i64* @global_min_ticks, align 8
  br label %200

56:                                               ; preds = %51
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @atol(i8* %57) #10
  store i64 %58, i64* @global_min_seconds, align 8
  call void @set_request_secs()
  br label %200

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 @getflag(i8* %60)
  store i32 %61, i32* @global_allstats, align 4
  br label %200

62:                                               ; preds = %51
  %63 = load i8*, i8** %4, align 8
  %64 = call i8* @strcpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* %63) #9
  %65 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.83, i64 0, i64 0))
  store %struct._IO_FILE* %65, %struct._IO_FILE** @global_ofile, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @global_ofile, align 8
  %67 = icmp eq %struct._IO_FILE* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.84, i64 0, i64 0), i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @global_ofile_name, i64 0, i64 0))
  call void @ErrorExit()
  br label %70

70:                                               ; preds = %68, %62
  store i32 -1, i32* @write_to_file, align 4
  br label %200

71:                                               ; preds = %51
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 @getflag(i8* %72)
  store i32 %73, i32* @global_custrun, align 4
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %83, %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 10
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32, i32* @global_custrun, align 4
  %79 = sub nsw i32 1, %78
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 %81
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %74

86:                                               ; preds = %74
  br label %200

87:                                               ; preds = %51
  %88 = load i8*, i8** %4, align 8
  %89 = call i32 @getflag(i8* %88)
  store i32 %89, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 0), align 16
  br label %200

90:                                               ; preds = %51
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 @atoi(i8* %91) #10
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 0), align 8
  br label %200

94:                                               ; preds = %51
  %95 = load i8*, i8** %4, align 8
  %96 = call i64 @atol(i8* %95) #10
  store i64 %96, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 4), align 8
  br label %200

97:                                               ; preds = %51
  %98 = load i8*, i8** %4, align 8
  %99 = call i64 @atol(i8* %98) #10
  store i64 %99, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_numsortstruct, i32 0, i32 1), align 8
  br label %200

100:                                              ; preds = %51
  %101 = load i8*, i8** %4, align 8
  %102 = call i32 @getflag(i8* %101)
  store i32 %102, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 1), align 4
  br label %200

103:                                              ; preds = %51
  %104 = load i8*, i8** %4, align 8
  %105 = call i64 @atol(i8* %104) #10
  store i64 %105, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 4), align 8
  br label %200

106:                                              ; preds = %51
  %107 = load i8*, i8** %4, align 8
  %108 = call i32 @atoi(i8* %107) #10
  %109 = trunc i32 %108 to i16
  store i16 %109, i16* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 0), align 8
  br label %200

110:                                              ; preds = %51
  %111 = load i8*, i8** %4, align 8
  %112 = call i64 @atol(i8* %111) #10
  store i64 %112, i64* getelementptr inbounds (%struct.SortStruct, %struct.SortStruct* @global_strsortstruct, i32 0, i32 1), align 8
  br label %200

113:                                              ; preds = %51
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @getflag(i8* %114)
  store i32 %115, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 2), align 8
  br label %200

116:                                              ; preds = %51
  %117 = load i8*, i8** %4, align 8
  %118 = call i64 @atol(i8* %117) #10
  store i64 %118, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 0), align 8
  br label %200

119:                                              ; preds = %51
  %120 = load i8*, i8** %4, align 8
  %121 = call i64 @atol(i8* %120) #10
  store i64 %121, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  br label %200

122:                                              ; preds = %51
  %123 = load i8*, i8** %4, align 8
  %124 = call i64 @atol(i8* %123) #10
  store i64 %124, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 1), align 8
  br label %200

125:                                              ; preds = %51
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @getflag(i8* %126)
  store i32 %127, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 3), align 4
  br label %200

128:                                              ; preds = %51
  %129 = load i8*, i8** %4, align 8
  %130 = call i64 @atol(i8* %129) #10
  store i64 %130, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 2), align 8
  br label %200

131:                                              ; preds = %51
  %132 = load i8*, i8** %4, align 8
  %133 = call i64 @atol(i8* %132) #10
  store i64 %133, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 3), align 8
  br label %200

134:                                              ; preds = %51
  %135 = load i8*, i8** %4, align 8
  %136 = call i64 @atol(i8* %135) #10
  store i64 %136, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_emfloatstruct, i32 0, i32 1), align 8
  br label %200

137:                                              ; preds = %51
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @getflag(i8* %138)
  store i32 %139, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 4), align 16
  br label %200

140:                                              ; preds = %51
  %141 = load i8*, i8** %4, align 8
  %142 = call i64 @atol(i8* %141) #10
  store i64 %142, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 0), align 8
  br label %200

143:                                              ; preds = %51
  %144 = load i8*, i8** %4, align 8
  %145 = call i64 @atol(i8* %144) #10
  store i64 %145, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_fourierstruct, i32 0, i32 1), align 8
  br label %200

146:                                              ; preds = %51
  %147 = load i8*, i8** %4, align 8
  %148 = call i32 @getflag(i8* %147)
  store i32 %148, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 5), align 4
  br label %200

149:                                              ; preds = %51
  %150 = load i8*, i8** %4, align 8
  %151 = call i64 @atol(i8* %150) #10
  store i64 %151, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_assignstruct, i32 0, i32 2), align 8
  br label %200

152:                                              ; preds = %51
  %153 = load i8*, i8** %4, align 8
  %154 = call i64 @atol(i8* %153) #10
  store i64 %154, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_assignstruct, i32 0, i32 1), align 8
  br label %200

155:                                              ; preds = %51
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 @getflag(i8* %156)
  store i32 %157, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 6), align 8
  br label %200

158:                                              ; preds = %51
  %159 = load i8*, i8** %4, align 8
  %160 = call i64 @atol(i8* %159) #10
  store i64 %160, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 2), align 8
  br label %200

161:                                              ; preds = %51
  %162 = load i8*, i8** %4, align 8
  %163 = call i64 @atol(i8* %162) #10
  store i64 %163, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 3), align 8
  br label %200

164:                                              ; preds = %51
  %165 = load i8*, i8** %4, align 8
  %166 = call i64 @atol(i8* %165) #10
  store i64 %166, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_ideastruct, i32 0, i32 1), align 8
  br label %200

167:                                              ; preds = %51
  %168 = load i8*, i8** %4, align 8
  %169 = call i32 @getflag(i8* %168)
  store i32 %169, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 7), align 4
  br label %200

170:                                              ; preds = %51
  %171 = load i8*, i8** %4, align 8
  %172 = call i64 @atol(i8* %171) #10
  store i64 %172, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 2), align 8
  br label %200

173:                                              ; preds = %51
  %174 = load i8*, i8** %4, align 8
  %175 = call i64 @atol(i8* %174) #10
  store i64 %175, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 3), align 8
  store i32 1, i32* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 0), align 8
  br label %200

176:                                              ; preds = %51
  %177 = load i8*, i8** %4, align 8
  %178 = call i64 @atol(i8* %177) #10
  store i64 %178, i64* getelementptr inbounds (%struct.EmFloatStruct, %struct.EmFloatStruct* @global_huffstruct, i32 0, i32 1), align 8
  br label %200

179:                                              ; preds = %51
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @getflag(i8* %180)
  store i32 %181, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 8), align 16
  br label %200

182:                                              ; preds = %51
  %183 = load i8*, i8** %4, align 8
  %184 = call i64 @atol(i8* %183) #10
  store i64 %184, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 0), align 8
  br label %200

185:                                              ; preds = %51
  %186 = load i8*, i8** %4, align 8
  %187 = call i64 @atol(i8* %186) #10
  store i64 %187, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_nnetstruct, i32 0, i32 1), align 8
  br label %200

188:                                              ; preds = %51
  %189 = load i8*, i8** %4, align 8
  %190 = call i32 @getflag(i8* %189)
  store i32 %190, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @tests_to_do, i64 0, i64 9), align 4
  br label %200

191:                                              ; preds = %51
  %192 = load i8*, i8** %4, align 8
  %193 = call i64 @atol(i8* %192) #10
  store i64 %193, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 0), align 8
  br label %200

194:                                              ; preds = %51
  %195 = load i8*, i8** %4, align 8
  %196 = call i64 @atol(i8* %195) #10
  store i64 %196, i64* getelementptr inbounds (%struct.FourierStruct, %struct.FourierStruct* @global_lustruct, i32 0, i32 1), align 8
  br label %200

197:                                              ; preds = %51
  %198 = load i8*, i8** %4, align 8
  %199 = call i32 @atoi(i8* %198) #10
  store i32 %199, i32* @global_align, align 4
  br label %200

200:                                              ; preds = %197, %194, %191, %188, %185, %182, %179, %176, %173, %170, %167, %164, %161, %158, %155, %152, %149, %146, %143, %140, %137, %134, %131, %128, %125, %122, %119, %116, %113, %110, %106, %103, %100, %97, %94, %90, %87, %86, %70, %59, %56, %53, %51
  br label %201

201:                                              ; preds = %200, %48, %24
  br label %6

202:                                              ; preds = %6
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare dso_local i8* @strchr(i8*, i32) #5

; Function Attrs: noinline nounwind uwtable
define internal void @strtoupper(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  br label %3

3:                                                ; preds = %12, %1
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @toupper(i32 %6) #10
  %8 = trunc i32 %7 to i8
  %9 = load i8*, i8** %2, align 8
  store i8 %8, i8* %9, align 1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %3, label %17

17:                                               ; preds = %12
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @atol(i8*) #5

; Function Attrs: noinline nounwind uwtable
define internal i32 @getflag(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = call i32 @toupper(i32 %6) #10
  %8 = icmp eq i32 %7, 84
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* %2, align 4
  ret i32 %12
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoNumSort() #0 {
  %1 = alloca %struct.SortStruct*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SortStruct* @global_numsortstruct, %struct.SortStruct** %1, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50.150, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %8 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %59

11:                                               ; preds = %0
  %12 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %13 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %12, i32 0, i32 3
  store i16 1, i16* %13, align 8
  br label %14

14:                                               ; preds = %57, %11
  %15 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %16 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %15, i32 0, i32 3
  %17 = load i16, i16* %16, align 8
  %18 = zext i16 %17 to i64
  %19 = mul i64 8, %18
  %20 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %21 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = mul i64 %19, %22
  %24 = call i8* @AllocateMemory(i64 %23, i32* %6)
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** %2, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  call void @ReportError(i8* %29, i32 %30)
  %31 = load i64*, i64** %2, align 8
  %32 = bitcast i64* %31 to i8*
  call void @FreeMemory(i8* %32, i32* %6)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %33

33:                                               ; preds = %28, %14
  %34 = load i64*, i64** %2, align 8
  %35 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %36 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %39 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %38, i32 0, i32 3
  %40 = load i16, i16* %39, align 8
  %41 = zext i16 %40 to i32
  %42 = call i64 @DoNumSortIteration(i64* %34, i64 %37, i32 %41)
  %43 = load i64, i64* @global_min_ticks, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %58

46:                                               ; preds = %33
  %47 = load i64*, i64** %2, align 8
  %48 = bitcast i64* %47 to i8*
  call void @FreeMemory(i8* %48, i32* %6)
  %49 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %50 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %49, i32 0, i32 3
  %51 = load i16, i16* %50, align 8
  %52 = add i16 %51, 1
  store i16 %52, i16* %50, align 8
  %53 = zext i16 %51 to i32
  %54 = icmp sgt i32 %53, 10000
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.51.151, i64 0, i64 0))
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %57

57:                                               ; preds = %55, %46
  br label %14

58:                                               ; preds = %45
  br label %79

59:                                               ; preds = %0
  %60 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %61 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %60, i32 0, i32 3
  %62 = load i16, i16* %61, align 8
  %63 = zext i16 %62 to i64
  %64 = mul i64 8, %63
  %65 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %66 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = mul i64 %64, %67
  %69 = call i8* @AllocateMemory(i64 %68, i32* %6)
  %70 = bitcast i8* %69 to i64*
  store i64* %70, i64** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %59
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  call void @ReportError(i8* %74, i32 %75)
  %76 = load i64*, i64** %2, align 8
  %77 = bitcast i64* %76 to i8*
  call void @FreeMemory(i8* %77, i32* %6)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %78

78:                                               ; preds = %73, %59
  br label %79

79:                                               ; preds = %78, %58
  store i64 0, i64* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %80

80:                                               ; preds = %94, %79
  %81 = load i64*, i64** %2, align 8
  %82 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %83 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %86 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %85, i32 0, i32 3
  %87 = load i16, i16* %86, align 8
  %88 = zext i16 %87 to i32
  %89 = call i64 @DoNumSortIteration(i64* %81, i64 %84, i32 %88)
  %90 = load i64, i64* %3, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %3, align 8
  %92 = load double, double* %4, align 8
  %93 = fadd double %92, 1.000000e+00
  store double %93, double* %4, align 8
  br label %94

94:                                               ; preds = %80
  %95 = load double, double* %4, align 8
  %96 = fcmp olt double %95, 3.750000e+02
  br i1 %96, label %80, label %97

97:                                               ; preds = %94
  %98 = load i64*, i64** %2, align 8
  %99 = bitcast i64* %98 to i8*
  call void @FreeMemory(i8* %99, i32* %6)
  %100 = load double, double* %4, align 8
  %101 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %102 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %101, i32 0, i32 3
  %103 = load i16, i16* %102, align 8
  %104 = uitofp i16 %103 to double
  %105 = fmul double %100, %104
  %106 = load i64, i64* %3, align 8
  %107 = call double @TicksToFracSecs(i64 %106)
  %108 = fdiv double %105, %107
  %109 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %110 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %109, i32 0, i32 2
  store double %108, double* %110, align 8
  %111 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %112 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %97
  %116 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %117 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %97
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoNumSortIteration(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64*, i64** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i32, i32* %6, align 4
  call void @LoadNumArrayWithRand(i64* %9, i64 %10, i32 %11)
  %12 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %26, %3
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i64*, i64** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul i64 %20, %21
  %23 = getelementptr inbounds i64, i64* %19, i64 %22
  %24 = load i64, i64* %5, align 8
  %25 = sub i64 %24, 1
  call void @NumHeapSort(i64* %23, i64 0, i64 %25)
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  br label %13

29:                                               ; preds = %13
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @StopStopwatch(i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  ret i64 %32
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadNumArrayWithRand(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @randnum(i32 13)
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %20, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = call i32 @randnum(i32 0)
  %16 = sext i32 %15 to i64
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 %16, i64* %19, align 8
  br label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %7, align 8
  br label %10

23:                                               ; preds = %10
  %24 = load i64*, i64** %4, align 8
  store i64* %24, i64** %8, align 8
  br label %25

25:                                               ; preds = %48, %23
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, -1
  store i32 %27, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 %30
  store i64* %32, i64** %8, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %45, %29
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %41, i64* %44, align 8
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %7, align 8
  br label %33

48:                                               ; preds = %33
  br label %25

49:                                               ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @NumHeapSort(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = udiv i64 %9, 2
  store i64 %10, i64* %8, align 8
  br label %11

11:                                               ; preds = %18, %3
  %12 = load i64, i64* %8, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i64*, i64** %4, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %6, align 8
  call void @NumSift(i64* %15, i64 %16, i64 %17)
  br label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, -1
  store i64 %20, i64* %8, align 8
  br label %11

21:                                               ; preds = %11
  %22 = load i64, i64* %6, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %41, %21
  %24 = load i64, i64* %8, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %8, align 8
  call void @NumSift(i64* %27, i64 %28, i64 %29)
  %30 = load i64*, i64** %4, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %7, align 8
  %32 = load i64*, i64** %4, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %4, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %26
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, -1
  store i64 %43, i64* %8, align 8
  br label %23

44:                                               ; preds = %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @NumSift(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %67, %3
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = add i64 %10, %11
  %13 = load i64, i64* %6, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %68

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add i64 %16, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i64*, i64** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %33, %22
  br label %37

37:                                               ; preds = %36, %15
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %41, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %37
  %48 = load i64*, i64** %4, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %8, align 8
  %52 = load i64*, i64** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %58, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64*, i64** %4, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  store i64 %59, i64* %62, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %5, align 8
  br label %67

64:                                               ; preds = %37
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %64, %47
  br label %9

68:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoStringSort() #0 {
  %1 = alloca %struct.SortStruct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SortStruct* @global_strsortstruct, %struct.SortStruct** %1, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52.154, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %8 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %0
  %12 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %13 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %12, i32 0, i32 3
  store i16 1, i16* %13, align 8
  br label %14

14:                                               ; preds = %43, %11
  %15 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %16 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 100
  %19 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %20 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %19, i32 0, i32 3
  %21 = load i16, i16* %20, align 8
  %22 = zext i16 %21 to i64
  %23 = mul i64 %18, %22
  %24 = call i8* @AllocateMemory(i64 %23, i32* %6)
  store i8* %24, i8** %2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  call void @ReportError(i8* %28, i32 %29)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %30

30:                                               ; preds = %27, %14
  %31 = load i8*, i8** %2, align 8
  %32 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %33 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %32, i32 0, i32 3
  %34 = load i16, i16* %33, align 8
  %35 = zext i16 %34 to i32
  %36 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %37 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @DoStringSortIteration(i8* %31, i32 %35, i64 %38)
  %40 = load i64, i64* @global_min_ticks, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %51

43:                                               ; preds = %30
  %44 = load i8*, i8** %2, align 8
  call void @FreeMemory(i8* %44, i32* %6)
  %45 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %46 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %45, i32 0, i32 3
  %47 = load i16, i16* %46, align 8
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %48, 1
  %50 = trunc i32 %49 to i16
  store i16 %50, i16* %46, align 8
  br label %14

51:                                               ; preds = %42
  br label %69

52:                                               ; preds = %0
  %53 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %54 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 100
  %57 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %58 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %57, i32 0, i32 3
  %59 = load i16, i16* %58, align 8
  %60 = zext i16 %59 to i64
  %61 = mul i64 %56, %60
  %62 = call i8* @AllocateMemory(i64 %61, i32* %6)
  store i8* %62, i8** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %52
  %66 = load i8*, i8** %5, align 8
  %67 = load i32, i32* %6, align 4
  call void @ReportError(i8* %66, i32 %67)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %68

68:                                               ; preds = %65, %52
  br label %69

69:                                               ; preds = %68, %51
  store i64 0, i64* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i8*, i8** %2, align 8
  %72 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %73 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %72, i32 0, i32 3
  %74 = load i16, i16* %73, align 8
  %75 = zext i16 %74 to i32
  %76 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %77 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @DoStringSortIteration(i8* %71, i32 %75, i64 %78)
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, %79
  store i64 %81, i64* %3, align 8
  %82 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %83 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %82, i32 0, i32 3
  %84 = load i16, i16* %83, align 8
  %85 = uitofp i16 %84 to double
  %86 = load double, double* %4, align 8
  %87 = fadd double %86, %85
  store double %87, double* %4, align 8
  br label %88

88:                                               ; preds = %70
  %89 = load double, double* %4, align 8
  %90 = fcmp olt double %89, 1.250000e+02
  br i1 %90, label %70, label %91

91:                                               ; preds = %88
  %92 = load i8*, i8** %2, align 8
  call void @FreeMemory(i8* %92, i32* %6)
  %93 = load double, double* %4, align 8
  %94 = load i64, i64* %3, align 8
  %95 = call double @TicksToFracSecs(i64 %94)
  %96 = fdiv double %93, %95
  %97 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %98 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %97, i32 0, i32 2
  store double %96, double* %98, align 8
  %99 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %100 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load %struct.SortStruct*, %struct.SortStruct** %1, align 8
  %105 = getelementptr inbounds %struct.SortStruct, %struct.SortStruct* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %103, %91
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoStringSortIteration(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64* @LoadStringArray(i8* %14, i32 %15, i64* %9, i64 %16)
  store i64* %17, i64** %7, align 8
  %18 = load i64*, i64** %7, align 8
  store i64* %18, i64** %12, align 8
  %19 = load i8*, i8** %4, align 8
  store i8* %19, i8** %13, align 8
  %20 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %20, i64* %8, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %38, %3
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = load i64*, i64** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = sub i64 %29, 1
  call void @StrHeapSort(i64* %26, i8* %27, i64 %28, i64 0, i64 %30)
  %31 = load i64, i64* %9, align 8
  %32 = load i64*, i64** %12, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %31
  store i64* %33, i64** %12, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, 100
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8* %37, i8** %13, align 8
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %11, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @StopStopwatch(i64 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = bitcast i64* %44 to i8*
  call void @FreeMemory(i8* %45, i32* %10)
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

; Function Attrs: noinline nounwind uwtable
define internal i64* @LoadStringArray(i8* %0, i32 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = call i32 @randnum(i32 13)
  %21 = load i64*, i64** %7, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %22

22:                                               ; preds = %70, %4
  %23 = call i32 @abs_randwc(i32 76)
  %24 = add i32 1, %23
  %25 = zext i32 %24 to i64
  %26 = and i64 %25, 255
  %27 = trunc i64 %26 to i8
  store i8 %27, i8* %14, align 1
  %28 = load i8, i8* %14, align 1
  %29 = zext i8 %28 to i64
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %29, %30
  %32 = add i64 %31, 1
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %22
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %12, align 8
  %38 = sub i64 %36, %37
  %39 = sub i64 %38, 1
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  store i8 %41, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %42

42:                                               ; preds = %35, %22
  %43 = load i8, i8* %14, align 1
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %12, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 %43, i8* %46, align 1
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  store i8 0, i8* %15, align 1
  br label %49

49:                                               ; preds = %63, %42
  %50 = load i8, i8* %15, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* %14, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = call i32 @abs_randwc(i32 254)
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 %57, i8* %60, align 1
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i8, i8* %15, align 1
  %65 = add i8 %64, 1
  store i8 %65, i8* %15, align 1
  br label %49

66:                                               ; preds = %49
  %67 = load i64*, i64** %7, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %22, label %73

73:                                               ; preds = %70
  store i32 1, i32* %17, align 4
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %102, %73
  %76 = load i32, i32* %17, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 100
  %82 = load i8*, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 %81
  store i8* %83, i8** %9, align 8
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %99, %79
  %85 = load i32, i32* %18, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %18, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %18, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 %94, i8* %98, align 1
  br label %99

99:                                               ; preds = %89
  %100 = load i32, i32* %18, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %18, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* %17, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %17, align 4
  br label %75

105:                                              ; preds = %75
  %106 = load i64*, i64** %7, align 8
  %107 = load i64, i64* %106, align 8
  %108 = mul i64 %107, 8
  %109 = load i32, i32* %6, align 4
  %110 = zext i32 %109 to i64
  %111 = mul i64 %108, %110
  %112 = call i8* @AllocateMemory(i64 %111, i32* %19)
  %113 = bitcast i8* %112 to i64*
  store i64* %113, i64** %10, align 8
  %114 = load i32, i32* %19, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i32, i32* %19, align 4
  call void @ReportError(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63.155, i64 0, i64 0), i32 %117)
  %118 = load i8*, i8** %5, align 8
  call void @FreeMemory(i8* %118, i32* %19)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %119

119:                                              ; preds = %116, %105
  store i64 0, i64* %12, align 8
  store i64 0, i64* %16, align 8
  br label %120

120:                                              ; preds = %138, %119
  %121 = load i64, i64* %16, align 8
  %122 = load i64*, i64** %7, align 8
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %121, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %120
  %126 = load i64, i64* %12, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = load i64, i64* %16, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i64
  %135 = add i64 %134, 1
  %136 = load i64, i64* %12, align 8
  %137 = add i64 %136, %135
  store i64 %137, i64* %12, align 8
  br label %138

138:                                              ; preds = %125
  %139 = load i64, i64* %16, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %16, align 8
  br label %120

141:                                              ; preds = %120
  store i32 1, i32* %17, align 4
  %142 = load i64*, i64** %10, align 8
  store i64* %142, i64** %11, align 8
  br label %143

143:                                              ; preds = %171, %141
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ult i32 %144, %145
  br i1 %146, label %147, label %174

147:                                              ; preds = %143
  %148 = load i64*, i64** %7, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64*, i64** %11, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 %149
  store i64* %151, i64** %11, align 8
  store i32 0, i32* %18, align 4
  br label %152

152:                                              ; preds = %168, %147
  %153 = load i32, i32* %18, align 4
  %154 = zext i32 %153 to i64
  %155 = load i64*, i64** %7, align 8
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %154, %156
  br i1 %157, label %158, label %171

158:                                              ; preds = %152
  %159 = load i64*, i64** %10, align 8
  %160 = load i32, i32* %18, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64*, i64** %11, align 8
  %165 = load i32, i32* %18, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  store i64 %163, i64* %167, align 8
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %18, align 4
  %170 = add i32 %169, 1
  store i32 %170, i32* %18, align 4
  br label %152

171:                                              ; preds = %152
  %172 = load i32, i32* %17, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %143

174:                                              ; preds = %143
  %175 = load i64*, i64** %10, align 8
  ret i64* %175
}

; Function Attrs: noinline nounwind uwtable
define internal void @StrHeapSort(i64* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = udiv i64 %14, 2
  store i64 %15, i64* %13, align 8
  br label %16

16:                                               ; preds = %25, %5
  %17 = load i64, i64* %13, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i64*, i64** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* %10, align 8
  call void @strsift(i64* %20, i8* %21, i64 %22, i64 %23, i64 %24)
  br label %25

25:                                               ; preds = %19
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %13, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %13, align 8
  br label %30

30:                                               ; preds = %86, %28
  %31 = load i64, i64* %13, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %30
  %34 = load i64*, i64** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %13, align 8
  call void @strsift(i64* %34, i8* %35, i64 %36, i64 0, i64 %37)
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  store i8 %39, i8* %12, align 1
  %40 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %12, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  call void @MoveMemory(i8* %40, i8* %41, i64 %45)
  %46 = load i8*, i8** %7, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = load i8, i8* %51, align 1
  store i8 %52, i8* %12, align 1
  %53 = load i64*, i64** %6, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i8, i8* %12, align 1
  call void @stradjust(i64* %53, i8* %54, i64 %55, i64 0, i8 zeroext %56)
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %13, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  call void @MoveMemory(i8* %57, i8* %63, i64 %67)
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %69 = load i8, i8* %68, align 16
  store i8 %69, i8* %12, align 1
  %70 = load i64*, i64** %6, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load i64, i64* %13, align 8
  %74 = load i8, i8* %12, align 1
  call void @stradjust(i64* %70, i8* %71, i64 %72, i64 %73, i8 zeroext %74)
  %75 = load i8*, i8** %7, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %13, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %82 = load i8, i8* %12, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  call void @MoveMemory(i8* %80, i8* %81, i64 %85)
  br label %86

86:                                               ; preds = %33
  %87 = load i64, i64* %13, align 8
  %88 = add i64 %87, -1
  store i64 %88, i64* %13, align 8
  br label %30

89:                                               ; preds = %30
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @strsift(i64* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [80 x i8], align 16
  %13 = alloca i8, align 1
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  br label %14

14:                                               ; preds = %117, %5
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* %9, align 8
  %17 = add i64 %15, %16
  %18 = load i64, i64* %10, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %118

20:                                               ; preds = %14
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %9, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = load i64*, i64** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, 1
  %34 = call i32 @str_is_less(i64* %28, i8* %29, i64 %30, i64 %31, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %11, align 8
  br label %39

39:                                               ; preds = %36, %27
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i64*, i64** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @str_is_less(i64* %41, i8* %42, i64 %43, i64 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %114

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %13, align 1
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %57 = load i8*, i8** %7, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i8, i8* %57, i64 %61
  %63 = load i8, i8* %13, align 1
  %64 = zext i8 %63 to i32
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  call void @MoveMemory(i8* %56, i8* %62, i64 %66)
  %67 = load i8*, i8** %7, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %13, align 1
  %74 = load i64*, i64** %6, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i8, i8* %13, align 1
  call void @stradjust(i64* %74, i8* %75, i64 %76, i64 %77, i8 zeroext %78)
  %79 = load i8*, i8** %7, align 8
  %80 = load i64*, i64** %6, align 8
  %81 = load i64, i64* %11, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = load i8*, i8** %7, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %85, i64 %89
  %91 = load i8, i8* %13, align 1
  %92 = zext i8 %91 to i32
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  call void @MoveMemory(i8* %84, i8* %90, i64 %94)
  %95 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %96 = load i8, i8* %95, align 16
  store i8 %96, i8* %13, align 1
  %97 = load i64*, i64** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i8, i8* %13, align 1
  call void @stradjust(i64* %97, i8* %98, i64 %99, i64 %100, i8 zeroext %101)
  %102 = load i8*, i8** %7, align 8
  %103 = load i64*, i64** %6, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i8, i8* %102, i64 %106
  %108 = getelementptr inbounds [80 x i8], [80 x i8]* %12, i64 0, i64 0
  %109 = load i8, i8* %13, align 1
  %110 = zext i8 %109 to i32
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  call void @MoveMemory(i8* %107, i8* %108, i64 %112)
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %9, align 8
  br label %117

114:                                              ; preds = %40
  %115 = load i64, i64* %10, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %117

117:                                              ; preds = %114, %48
  br label %14

118:                                              ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @stradjust(i64* %0, i8* %1, i64 %2, i64 %3, i8 zeroext %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i64* %0, i64** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8 %4, i8* %10, align 1
  %15 = load i8, i8* %10, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8*, i8** %7, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %16, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @abs(i32 %26) #11
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %14, align 1
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %30, 1
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %5
  %34 = load i8, i8* %10, align 1
  %35 = load i8*, i8** %7, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 %34, i8* %40, align 1
  br label %126

41:                                               ; preds = %5
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = getelementptr inbounds i64, i64* %44, i64 -1
  %46 = load i64, i64* %45, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = getelementptr inbounds i64, i64* %50, i64 -1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8, i8* %47, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i64
  %56 = add i64 %46, %55
  %57 = add i64 %56, 1
  %58 = load i64*, i64** %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %57, %62
  store i64 %63, i64* %11, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = load i64*, i64** %6, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8, i8* %10, align 1
  %71 = zext i8 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  %75 = load i8*, i8** %7, align 8
  %76 = load i64*, i64** %6, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %75, i64 %80
  %82 = load i64, i64* %11, align 8
  call void @MoveMemory(i8* %74, i8* %81, i64 %82)
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %115, %41
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load i64*, i64** %6, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i8, i8* %14, align 1
  %98 = zext i8 %97 to i64
  %99 = sub i64 %96, %98
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 %99, i64* %102, align 8
  br label %114

103:                                              ; preds = %89
  %104 = load i64*, i64** %6, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i8, i8* %14, align 1
  %109 = zext i8 %108 to i64
  %110 = add i64 %107, %109
  %111 = load i64*, i64** %6, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  store i64 %110, i64* %113, align 8
  br label %114

114:                                              ; preds = %103, %92
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %12, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %12, align 8
  br label %85

118:                                              ; preds = %85
  %119 = load i8, i8* %10, align 1
  %120 = load i8*, i8** %7, align 8
  %121 = load i64*, i64** %6, align 8
  %122 = load i64, i64* %9, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8, i8* %120, i64 %124
  store i8 %119, i8* %125, align 1
  br label %126

126:                                              ; preds = %118, %33
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @str_is_less(i64* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %10, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8, i8* %13, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %11, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sgt i32 %21, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load i8*, i8** %8, align 8
  %33 = load i64*, i64** %7, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %31, %5
  %41 = load i8*, i8** %8, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i8, i8* %41, i64 %45
  %47 = load i8*, i8** %8, align 8
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @strncmp(i8* %46, i8* %52, i64 %54) #10
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %78

58:                                               ; preds = %40
  %59 = load i8*, i8** %8, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %8, align 8
  %68 = load i64*, i64** %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp sgt i32 %66, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  store i32 1, i32* %6, align 4
  br label %83

77:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %83

78:                                               ; preds = %40
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1, i32* %6, align 4
  br label %83

82:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %81, %77, %76
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoBitops() #0 {
  %1 = alloca %struct.BitOpStruct*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.BitOpStruct* @global_bitopstruct, %struct.BitOpStruct** %1, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53.158, i64 0, i64 0), i8** %7, align 8
  %10 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %11 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %65

14:                                               ; preds = %0
  %15 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %16 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 %17, 8
  %19 = call i8* @AllocateMemory(i64 %18, i32* %8)
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %2, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %8, align 4
  call void @ReportError(i8* %24, i32 %25)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %26

26:                                               ; preds = %23, %14
  %27 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %28 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %27, i32 0, i32 3
  store i64 30, i64* %28, align 8
  br label %29

29:                                               ; preds = %57, %26
  %30 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %31 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 2
  %34 = mul i64 %33, 8
  %35 = call i8* @AllocateMemory(i64 %34, i32* %8)
  %36 = bitcast i8* %35 to i64*
  store i64* %36, i64** %3, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  call void @ReportError(i8* %40, i32 %41)
  %42 = load i64*, i64** %2, align 8
  %43 = bitcast i64* %42 to i8*
  call void @FreeMemory(i8* %43, i32* %8)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %44

44:                                               ; preds = %39, %29
  %45 = load i64*, i64** %2, align 8
  %46 = load i64*, i64** %3, align 8
  %47 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %48 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @DoBitfieldIteration(i64* %45, i64* %46, i64 %49, i64* %4)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @global_min_ticks, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %64

57:                                               ; preds = %44
  %58 = load i64*, i64** %3, align 8
  %59 = bitcast i64* %58 to i8*
  call void @FreeMemory(i8* %59, i32* %8)
  %60 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %61 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 100
  store i64 %63, i64* %61, align 8
  br label %29

64:                                               ; preds = %56
  br label %93

65:                                               ; preds = %0
  %66 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %67 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %68, 8
  %70 = call i8* @AllocateMemory(i64 %69, i32* %8)
  %71 = bitcast i8* %70 to i64*
  store i64* %71, i64** %2, align 8
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %8, align 4
  call void @ReportError(i8* %75, i32 %76)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %77

77:                                               ; preds = %74, %65
  %78 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %79 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %80, 2
  %82 = mul i64 %81, 8
  %83 = call i8* @AllocateMemory(i64 %82, i32* %8)
  %84 = bitcast i8* %83 to i64*
  store i64* %84, i64** %3, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %8, align 4
  call void @ReportError(i8* %88, i32 %89)
  %90 = load i64*, i64** %2, align 8
  %91 = bitcast i64* %90 to i8*
  call void @FreeMemory(i8* %91, i32* %8)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %92

92:                                               ; preds = %87, %77
  br label %93

93:                                               ; preds = %92, %64
  store i64 0, i64* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %94

94:                                               ; preds = %107, %93
  %95 = load i64*, i64** %2, align 8
  %96 = load i64*, i64** %3, align 8
  %97 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %98 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @DoBitfieldIteration(i64* %95, i64* %96, i64 %99, i64* %4)
  %101 = load i64, i64* %5, align 8
  %102 = add i64 %101, %100
  store i64 %102, i64* %5, align 8
  %103 = load i64, i64* %4, align 8
  %104 = uitofp i64 %103 to double
  %105 = load double, double* %6, align 8
  %106 = fadd double %105, %104
  store double %106, double* %6, align 8
  br label %107

107:                                              ; preds = %94
  %108 = load double, double* %6, align 8
  %109 = fcmp olt double %108, 1.250000e+06
  br i1 %109, label %94, label %110

110:                                              ; preds = %107
  %111 = load i64*, i64** %2, align 8
  %112 = bitcast i64* %111 to i8*
  call void @FreeMemory(i8* %112, i32* %8)
  %113 = load i64*, i64** %3, align 8
  %114 = bitcast i64* %113 to i8*
  call void @FreeMemory(i8* %114, i32* %8)
  %115 = load double, double* %6, align 8
  %116 = load i64, i64* %5, align 8
  %117 = call double @TicksToFracSecs(i64 %116)
  %118 = fdiv double %115, %117
  %119 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %120 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %119, i32 0, i32 2
  store double %118, double* %120, align 8
  %121 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %122 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %110
  %126 = load %struct.BitOpStruct*, %struct.BitOpStruct** %1, align 8
  %127 = getelementptr inbounds %struct.BitOpStruct, %struct.BitOpStruct* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  br label %128

128:                                              ; preds = %125, %110
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoBitfieldIteration(i64* %0, i64* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %12 = load i64*, i64** %8, align 8
  store i64 0, i64* %12, align 8
  %13 = call i32 @randnum(i32 13)
  store i64 0, i64* %9, align 8
  br label %14

14:                                               ; preds = %22, %4
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* getelementptr inbounds (%struct.BitOpStruct, %struct.BitOpStruct* @global_bitopstruct, i32 0, i32 4), align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 6148914691236517205, i64* %21, align 8
  br label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = add nsw i64 %23, 1
  store i64 %24, i64* %9, align 8
  br label %14

25:                                               ; preds = %14
  %26 = call i32 @randnum(i32 13)
  store i64 0, i64* %9, align 8
  br label %27

27:                                               ; preds = %53, %25
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = call i32 @abs_randwc(i32 262140)
  %33 = zext i32 %32 to i64
  store i64 %33, i64* %10, align 8
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 262140, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @abs_randwc(i32 %41)
  %43 = zext i32 %42 to i64
  %44 = load i64*, i64** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  store i64 %43, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, %43
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %31
  %54 = load i64, i64* %9, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %27

56:                                               ; preds = %27
  %57 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %57, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %111, %56
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %114

62:                                               ; preds = %58
  %63 = load i64, i64* %9, align 8
  %64 = srem i64 %63, 3
  switch i64 %64, label %110 [
    i64 0, label %65
    i64 1, label %80
    i64 2, label %95
  ]

65:                                               ; preds = %62
  %66 = load i64*, i64** %5, align 8
  %67 = load i64*, i64** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64*, i64** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  call void @ToggleBitRun(i64* %66, i64 %72, i64 %79, i32 1)
  br label %110

80:                                               ; preds = %62
  %81 = load i64*, i64** %5, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = load i64, i64* %9, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %9, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %9, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  call void @ToggleBitRun(i64* %81, i64 %87, i64 %94, i32 0)
  br label %110

95:                                               ; preds = %62
  %96 = load i64*, i64** %5, align 8
  %97 = load i64*, i64** %6, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %6, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %9, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = getelementptr inbounds i64, i64* %107, i64 1
  %109 = load i64, i64* %108, align 8
  call void @FlipBitRun(i64* %96, i64 %102, i64 %109)
  br label %110

110:                                              ; preds = %95, %80, %65, %62
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %9, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %9, align 8
  br label %58

114:                                              ; preds = %58
  %115 = load i64, i64* %11, align 8
  %116 = call i64 @StopStopwatch(i64 %115)
  ret i64 %116
}

; Function Attrs: noinline nounwind uwtable
define internal void @ToggleBitRun(i64* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  br label %11

11:                                               ; preds = %39, %4
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %7, align 8
  %14 = icmp ne i64 %12, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i64, i64* %6, align 8
  %17 = lshr i64 %16, 6
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = urem i64 %18, 64
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load i64, i64* %10, align 8
  %24 = shl i64 1, %23
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %9, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %28, %24
  store i64 %29, i64* %27, align 8
  br label %39

30:                                               ; preds = %15
  %31 = load i64, i64* %10, align 8
  %32 = shl i64 1, %31
  %33 = xor i64 %32, -1
  %34 = load i64*, i64** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = and i64 %37, %33
  store i64 %38, i64* %36, align 8
  br label %39

39:                                               ; preds = %30, %22
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %11

42:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @FlipBitRun(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %6, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load i64, i64* %5, align 8
  %15 = lshr i64 %14, 6
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %5, align 8
  %17 = urem i64 %16, 64
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = shl i64 1, %18
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = xor i64 %23, %19
  store i64 %24, i64* %22, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %9

27:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoEmFloat() #0 {
  %1 = alloca %struct.EmFloatStruct*, align 8
  %2 = alloca %struct.InternalFPF*, align 8
  %3 = alloca %struct.InternalFPF*, align 8
  %4 = alloca %struct.InternalFPF*, align 8
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.EmFloatStruct* @global_emfloatstruct, %struct.EmFloatStruct** %1, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54.161, i64 0, i64 0), i8** %8, align 8
  %11 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %12 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = mul i64 %13, 12
  %15 = call i8* @AllocateMemory(i64 %14, i32* %9)
  %16 = bitcast i8* %15 to %struct.InternalFPF*
  store %struct.InternalFPF* %16, %struct.InternalFPF** %2, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %0
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* %9, align 4
  call void @ReportError(i8* %20, i32 %21)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %22

22:                                               ; preds = %19, %0
  %23 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %24 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %25, 12
  %27 = call i8* @AllocateMemory(i64 %26, i32* %9)
  %28 = bitcast i8* %27 to %struct.InternalFPF*
  store %struct.InternalFPF* %28, %struct.InternalFPF** %3, align 8
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  call void @ReportError(i8* %32, i32 %33)
  %34 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %35 = bitcast %struct.InternalFPF* %34 to i8*
  call void @FreeMemory(i8* %35, i32* %9)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %36

36:                                               ; preds = %31, %22
  %37 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %38 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = mul i64 %39, 12
  %41 = call i8* @AllocateMemory(i64 %40, i32* %9)
  %42 = bitcast i8* %41 to %struct.InternalFPF*
  store %struct.InternalFPF* %42, %struct.InternalFPF** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %36
  %46 = load i8*, i8** %8, align 8
  %47 = load i32, i32* %9, align 4
  call void @ReportError(i8* %46, i32 %47)
  %48 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %49 = bitcast %struct.InternalFPF* %48 to i8*
  call void @FreeMemory(i8* %49, i32* %9)
  %50 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %51 = bitcast %struct.InternalFPF* %50 to i8*
  call void @FreeMemory(i8* %51, i32* %9)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %52

52:                                               ; preds = %45, %36
  %53 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %54 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %55 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %56 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %57 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  call void @SetupCPUEmFloatArrays(%struct.InternalFPF* %53, %struct.InternalFPF* %54, %struct.InternalFPF* %55, i64 %58)
  %59 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %60 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %52
  %64 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %65 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  store i64 1, i64* %10, align 8
  br label %66

66:                                               ; preds = %86, %63
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %67, 500000
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %71 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %72 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %73 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %74 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i64 @DoEmFloatIteration(%struct.InternalFPF* %70, %struct.InternalFPF* %71, %struct.InternalFPF* %72, i64 %75, i64 %76)
  store i64 %77, i64* %7, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @global_min_ticks, align 8
  %80 = icmp ugt i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %69
  %82 = load i64, i64* %10, align 8
  %83 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %84 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  br label %90

85:                                               ; preds = %69
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %10, align 8
  br label %66

90:                                               ; preds = %81, %66
  br label %91

91:                                               ; preds = %90, %52
  %92 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %93 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.55.162, i64 0, i64 0))
  %98 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %99 = bitcast %struct.InternalFPF* %98 to i8*
  call void @FreeMemory(i8* %99, i32* %9)
  %100 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %101 = bitcast %struct.InternalFPF* %100 to i8*
  call void @FreeMemory(i8* %101, i32* %9)
  %102 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %103 = bitcast %struct.InternalFPF* %102 to i8*
  call void @FreeMemory(i8* %103, i32* %9)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %104

104:                                              ; preds = %96, %91
  store i64 0, i64* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %105

105:                                              ; preds = %120, %104
  %106 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %107 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %108 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %109 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %110 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %113 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i64 @DoEmFloatIteration(%struct.InternalFPF* %106, %struct.InternalFPF* %107, %struct.InternalFPF* %108, i64 %111, i64 %114)
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %5, align 8
  %118 = load double, double* %6, align 8
  %119 = fadd double %118, 1.000000e+00
  store double %119, double* %6, align 8
  br label %120

120:                                              ; preds = %105
  %121 = load double, double* %6, align 8
  %122 = fcmp olt double %121, 7.500000e+01
  br i1 %122, label %105, label %123

123:                                              ; preds = %120
  %124 = load %struct.InternalFPF*, %struct.InternalFPF** %2, align 8
  %125 = bitcast %struct.InternalFPF* %124 to i8*
  call void @FreeMemory(i8* %125, i32* %9)
  %126 = load %struct.InternalFPF*, %struct.InternalFPF** %3, align 8
  %127 = bitcast %struct.InternalFPF* %126 to i8*
  call void @FreeMemory(i8* %127, i32* %9)
  %128 = load %struct.InternalFPF*, %struct.InternalFPF** %4, align 8
  %129 = bitcast %struct.InternalFPF* %128 to i8*
  call void @FreeMemory(i8* %129, i32* %9)
  %130 = load double, double* %6, align 8
  %131 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %132 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = uitofp i64 %133 to double
  %135 = fmul double %130, %134
  %136 = load i64, i64* %5, align 8
  %137 = call double @TicksToFracSecs(i64 %136)
  %138 = fdiv double %135, %137
  %139 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %140 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %139, i32 0, i32 4
  store double %138, double* %140, align 8
  %141 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %142 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %123
  %146 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %147 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %123
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoFourier() #0 {
  %1 = alloca %struct.FourierStruct*, align 8
  %2 = alloca double*, align 8
  %3 = alloca double*, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.FourierStruct* @global_fourierstruct, %struct.FourierStruct** %1, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56.165, i64 0, i64 0), i8** %6, align 8
  %8 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %9 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %61

12:                                               ; preds = %0
  %13 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %14 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %13, i32 0, i32 2
  store i64 100, i64* %14, align 8
  br label %15

15:                                               ; preds = %51, %12
  %16 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %17 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = mul i64 %18, 8
  %20 = call i8* @AllocateMemory(i64 %19, i32* %7)
  %21 = bitcast i8* %20 to double*
  store double* %21, double** %2, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  call void @ReportError(i8* %25, i32 %26)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %29 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %30, 8
  %32 = call i8* @AllocateMemory(i64 %31, i32* %7)
  %33 = bitcast i8* %32 to double*
  store double* %33, double** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  call void @ReportError(i8* %37, i32 %38)
  %39 = load double*, double** %2, align 8
  %40 = bitcast double* %39 to i8*
  call void @FreeMemory(i8* %40, i32* %7)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %41

41:                                               ; preds = %36, %27
  %42 = load double*, double** %2, align 8
  %43 = load double*, double** %3, align 8
  %44 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %45 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @DoFPUTransIteration(double* %42, double* %43, i64 %46)
  %48 = load i64, i64* @global_min_ticks, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %60

51:                                               ; preds = %41
  %52 = load double*, double** %2, align 8
  %53 = bitcast double* %52 to i8*
  call void @FreeMemory(i8* %53, i32* %7)
  %54 = load double*, double** %3, align 8
  %55 = bitcast double* %54 to i8*
  call void @FreeMemory(i8* %55, i32* %7)
  %56 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %57 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 50
  store i64 %59, i64* %57, align 8
  br label %15

60:                                               ; preds = %50
  br label %88

61:                                               ; preds = %0
  %62 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %63 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = mul i64 %64, 8
  %66 = call i8* @AllocateMemory(i64 %65, i32* %7)
  %67 = bitcast i8* %66 to double*
  store double* %67, double** %2, align 8
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  call void @ReportError(i8* %71, i32 %72)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %73

73:                                               ; preds = %70, %61
  %74 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %75 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = mul i64 %76, 8
  %78 = call i8* @AllocateMemory(i64 %77, i32* %7)
  %79 = bitcast i8* %78 to double*
  store double* %79, double** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %7, align 4
  call void @ReportError(i8* %83, i32 %84)
  %85 = load double*, double** %2, align 8
  %86 = bitcast double* %85 to i8*
  call void @FreeMemory(i8* %86, i32* %7)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %87

87:                                               ; preds = %82, %73
  br label %88

88:                                               ; preds = %87, %60
  store i64 0, i64* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  br label %89

89:                                               ; preds = %106, %88
  %90 = load double*, double** %2, align 8
  %91 = load double*, double** %3, align 8
  %92 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %93 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @DoFPUTransIteration(double* %90, double* %91, i64 %94)
  %96 = load i64, i64* %4, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %4, align 8
  %98 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %99 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = uitofp i64 %100 to double
  %102 = fmul double %101, 2.000000e+00
  %103 = fsub double %102, 1.000000e+00
  %104 = load double, double* %5, align 8
  %105 = fadd double %104, %103
  store double %105, double* %5, align 8
  br label %106

106:                                              ; preds = %89
  %107 = load double, double* %5, align 8
  %108 = fcmp olt double %107, 1.000000e+04
  br i1 %108, label %89, label %109

109:                                              ; preds = %106
  %110 = load double*, double** %2, align 8
  %111 = bitcast double* %110 to i8*
  call void @FreeMemory(i8* %111, i32* %7)
  %112 = load double*, double** %3, align 8
  %113 = bitcast double* %112 to i8*
  call void @FreeMemory(i8* %113, i32* %7)
  %114 = load double, double* %5, align 8
  %115 = load i64, i64* %4, align 8
  %116 = call double @TicksToFracSecs(i64 %115)
  %117 = fdiv double %114, %116
  %118 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %119 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %118, i32 0, i32 3
  store double %117, double* %119, align 8
  %120 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %121 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %109
  %125 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %126 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  br label %127

127:                                              ; preds = %124, %109
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoFPUTransIteration(double* %0, double* %1, i64 %2) #0 {
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store double* %0, double** %4, align 8
  store double* %1, double** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %10, i64* %9, align 8
  %11 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double 0.000000e+00, i32 0)
  %12 = fdiv double %11, 2.000000e+00
  %13 = load double*, double** %4, align 8
  store double %12, double* %13, align 8
  store double 0x400921FB54442D18, double* %7, align 8
  store i64 1, i64* %8, align 8
  br label %14

14:                                               ; preds = %35, %3
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load double, double* %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = uitofp i64 %20 to double
  %22 = fmul double %19, %21
  %23 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double %22, i32 1)
  %24 = load double*, double** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds double, double* %24, i64 %25
  store double %23, double* %26, align 8
  %27 = load double, double* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = uitofp i64 %28 to double
  %30 = fmul double %27, %29
  %31 = call double @TrapezoidIntegrate(double 0.000000e+00, double 2.000000e+00, i32 200, double %30, i32 2)
  %32 = load double*, double** %5, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds double, double* %32, i64 %33
  store double %31, double* %34, align 8
  br label %35

35:                                               ; preds = %18
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %14

38:                                               ; preds = %14
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @StopStopwatch(i64 %39)
  ret i64 %40
}

; Function Attrs: noinline nounwind uwtable
define internal double @TrapezoidIntegrate(double %0, double %1, i32 %2, double %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load double, double* %6, align 8
  store double %14, double* %11, align 8
  %15 = load double, double* %7, align 8
  %16 = load double, double* %6, align 8
  %17 = fsub double %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %12, align 8
  %21 = load double, double* %6, align 8
  %22 = load double, double* %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call double @thefunction(double %21, double %22, i32 %23)
  %25 = fdiv double %24, 2.000000e+00
  store double %25, double* %13, align 8
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %46

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %35, %28
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load double, double* %12, align 8
  %37 = load double, double* %11, align 8
  %38 = fadd double %37, %36
  store double %38, double* %11, align 8
  %39 = load double, double* %11, align 8
  %40 = load double, double* %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call double @thefunction(double %39, double %40, i32 %41)
  %43 = load double, double* %13, align 8
  %44 = fadd double %43, %42
  store double %44, double* %13, align 8
  br label %31

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %45, %5
  %47 = load double, double* %13, align 8
  %48 = load double, double* %7, align 8
  %49 = load double, double* %9, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call double @thefunction(double %48, double %49, i32 %50)
  %52 = fdiv double %51, 2.000000e+00
  %53 = fadd double %47, %52
  %54 = load double, double* %12, align 8
  %55 = fmul double %53, %54
  store double %55, double* %13, align 8
  %56 = load double, double* %13, align 8
  ret double %56
}

; Function Attrs: noinline nounwind uwtable
define internal double @thefunction(double %0, double %1, i32 %2) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  store double %0, double* %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %34 [
    i32 0, label %9
    i32 1, label %14
    i32 2, label %24
  ]

9:                                                ; preds = %3
  %10 = load double, double* %5, align 8
  %11 = fadd double %10, 1.000000e+00
  %12 = load double, double* %5, align 8
  %13 = call double @pow(double %11, double %12) #9
  store double %13, double* %4, align 8
  br label %35

14:                                               ; preds = %3
  %15 = load double, double* %5, align 8
  %16 = fadd double %15, 1.000000e+00
  %17 = load double, double* %5, align 8
  %18 = call double @pow(double %16, double %17) #9
  %19 = load double, double* %6, align 8
  %20 = load double, double* %5, align 8
  %21 = fmul double %19, %20
  %22 = call double @cos(double %21) #9
  %23 = fmul double %18, %22
  store double %23, double* %4, align 8
  br label %35

24:                                               ; preds = %3
  %25 = load double, double* %5, align 8
  %26 = fadd double %25, 1.000000e+00
  %27 = load double, double* %5, align 8
  %28 = call double @pow(double %26, double %27) #9
  %29 = load double, double* %6, align 8
  %30 = load double, double* %5, align 8
  %31 = fmul double %29, %30
  %32 = call double @sin(double %31) #9
  %33 = fmul double %28, %32
  store double %33, double* %4, align 8
  br label %35

34:                                               ; preds = %3
  store double 0.000000e+00, double* %4, align 8
  br label %35

35:                                               ; preds = %34, %24, %14, %9
  %36 = load double, double* %4, align 8
  ret double %36
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #4

; Function Attrs: nounwind
declare dso_local double @cos(double) #4

; Function Attrs: nounwind
declare dso_local double @sin(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoAssign() #0 {
  %1 = alloca %struct.FourierStruct*, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca double, align 8
  store %struct.FourierStruct* @global_assignstruct, %struct.FourierStruct** %1, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57.168, i64 0, i64 0), i8** %3, align 8
  %7 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %8 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %0
  %12 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %13 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %12, i32 0, i32 2
  store i64 1, i64* %13, align 8
  br label %14

14:                                               ; preds = %37, %11
  %15 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %16 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = mul i64 81608, %17
  %19 = call i8* @AllocateMemory(i64 %18, i32* %4)
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* %4, align 4
  call void @ReportError(i8* %24, i32 %25)
  %26 = load i64*, i64** %2, align 8
  %27 = bitcast i64* %26 to i8*
  call void @FreeMemory(i8* %27, i32* %4)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %28

28:                                               ; preds = %23, %14
  %29 = load i64*, i64** %2, align 8
  %30 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %31 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @DoAssignIteration(i64* %29, i64 %32)
  %34 = load i64, i64* @global_min_ticks, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %44

37:                                               ; preds = %28
  %38 = load i64*, i64** %2, align 8
  %39 = bitcast i64* %38 to i8*
  call void @FreeMemory(i8* %39, i32* %4)
  %40 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %41 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %41, align 8
  br label %14

44:                                               ; preds = %36
  br label %60

45:                                               ; preds = %0
  %46 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %47 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 81608, %48
  %50 = call i8* @AllocateMemory(i64 %49, i32* %4)
  %51 = bitcast i8* %50 to i64*
  store i64* %51, i64** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %4, align 4
  call void @ReportError(i8* %55, i32 %56)
  %57 = load i64*, i64** %2, align 8
  %58 = bitcast i64* %57 to i8*
  call void @FreeMemory(i8* %58, i32* %4)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %59

59:                                               ; preds = %54, %45
  br label %60

60:                                               ; preds = %59, %44
  store i64 0, i64* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  br label %61

61:                                               ; preds = %71, %60
  %62 = load i64*, i64** %2, align 8
  %63 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %64 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @DoAssignIteration(i64* %62, i64 %65)
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, %66
  store i64 %68, i64* %5, align 8
  %69 = load double, double* %6, align 8
  %70 = fadd double %69, 1.000000e+00
  store double %70, double* %6, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load double, double* %6, align 8
  %73 = fcmp olt double %72, 8.000000e+00
  br i1 %73, label %61, label %74

74:                                               ; preds = %71
  %75 = load i64*, i64** %2, align 8
  %76 = bitcast i64* %75 to i8*
  call void @FreeMemory(i8* %76, i32* %4)
  %77 = load double, double* %6, align 8
  %78 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %79 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = uitofp i64 %80 to double
  %82 = fmul double %77, %81
  %83 = load i64, i64* %5, align 8
  %84 = call double @TicksToFracSecs(i64 %83)
  %85 = fdiv double %82, %84
  %86 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %87 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %86, i32 0, i32 3
  store double %85, double* %87, align 8
  %88 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %89 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %74
  %93 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %94 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoAssignIteration(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.longptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %10 = bitcast %union.anon.0* %9 to i64**
  store i64* %8, i64** %10, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = load i64, i64* %4, align 8
  call void @LoadAssignArrayWithRand(i64* %11, i64 %12)
  %13 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %27, %2
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %20 = bitcast %union.anon.0* %19 to [101 x [101 x i64]]**
  %21 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %20, align 8
  %22 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %21, i64 0, i64 0
  call void @Assignment([101 x i64]* %22)
  %23 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %24 = bitcast %union.anon.0* %23 to i64**
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 10201
  store i64* %26, i64** %24, align 8
  br label %27

27:                                               ; preds = %18
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %14

30:                                               ; preds = %14
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @StopStopwatch(i64 %31)
  ret i64 %32
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadAssignArrayWithRand(i64* %0, i64 %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.longptr, align 8
  %6 = alloca %struct.longptr, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64*, i64** %3, align 8
  %9 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %10 = bitcast %union.anon.0* %9 to i64**
  store i64* %8, i64** %10, align 8
  %11 = load i64*, i64** %3, align 8
  %12 = getelementptr inbounds %struct.longptr, %struct.longptr* %6, i32 0, i32 0
  %13 = bitcast %union.anon.0* %12 to i64**
  store i64* %11, i64** %13, align 8
  %14 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %15 = bitcast %union.anon.0* %14 to [101 x [101 x i64]]**
  %16 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %15, align 8
  %17 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %16, i64 0, i64 0
  call void @LoadAssign([101 x i64]* %17)
  %18 = load i64, i64* %4, align 8
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.longptr, %struct.longptr* %6, i32 0, i32 0
  %27 = bitcast %union.anon.0* %26 to i64**
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 10201
  store i64* %29, i64** %27, align 8
  %30 = getelementptr inbounds %struct.longptr, %struct.longptr* %5, i32 0, i32 0
  %31 = bitcast %union.anon.0* %30 to [101 x [101 x i64]]**
  %32 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %31, align 8
  %33 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %32, i64 0, i64 0
  %34 = getelementptr inbounds %struct.longptr, %struct.longptr* %6, i32 0, i32 0
  %35 = bitcast %union.anon.0* %34 to [101 x [101 x i64]]**
  %36 = load [101 x [101 x i64]]*, [101 x [101 x i64]]** %35, align 8
  %37 = getelementptr inbounds [101 x [101 x i64]], [101 x [101 x i64]]* %36, i64 0, i64 0
  call void @CopyToAssign([101 x i64]* %33, [101 x i64]* %37)
  br label %38

38:                                               ; preds = %25
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %7, align 8
  br label %21

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @Assignment([101 x i64]* %0) #0 {
  %2 = alloca [101 x i64]*, align 8
  %3 = alloca [101 x [101 x i16]], align 16
  store [101 x i64]* %0, [101 x i64]** %2, align 8
  %4 = load [101 x i64]*, [101 x i64]** %2, align 8
  call void @calc_minimum_costs([101 x i64]* %4)
  br label %5

5:                                                ; preds = %11, %1
  %6 = load [101 x i64]*, [101 x i64]** %2, align 8
  %7 = getelementptr inbounds [101 x [101 x i16]], [101 x [101 x i16]]* %3, i64 0, i64 0
  %8 = call i32 @first_assignments([101 x i64]* %6, [101 x i16]* %7)
  %9 = sext i32 %8 to i64
  %10 = icmp ne i64 %9, 101
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load [101 x i64]*, [101 x i64]** %2, align 8
  %13 = getelementptr inbounds [101 x [101 x i16]], [101 x [101 x i16]]* %3, i64 0, i64 0
  call void @second_assignments([101 x i64]* %12, [101 x i16]* %13)
  br label %5

14:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @calc_minimum_costs([101 x i64]* %0) #0 {
  %2 = alloca [101 x i64]*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i64, align 8
  store [101 x i64]* %0, [101 x i64]** %2, align 8
  store i16 0, i16* %3, align 2
  br label %6

6:                                                ; preds = %59, %1
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i64
  %9 = icmp slt i64 %8, 101
  br i1 %9, label %10, label %62

10:                                               ; preds = %6
  store i64 9223372036854775807, i64* %5, align 8
  store i16 0, i16* %4, align 2
  br label %11

11:                                               ; preds = %36, %10
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i64
  %14 = icmp slt i64 %13, 101
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load [101 x i64]*, [101 x i64]** %2, align 8
  %17 = load i16, i16* %3, align 2
  %18 = zext i16 %17 to i64
  %19 = getelementptr inbounds [101 x i64], [101 x i64]* %16, i64 %18
  %20 = load i16, i16* %4, align 2
  %21 = zext i16 %20 to i64
  %22 = getelementptr inbounds [101 x i64], [101 x i64]* %19, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load [101 x i64]*, [101 x i64]** %2, align 8
  %28 = load i16, i16* %3, align 2
  %29 = zext i16 %28 to i64
  %30 = getelementptr inbounds [101 x i64], [101 x i64]* %27, i64 %29
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds [101 x i64], [101 x i64]* %30, i64 0, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %26, %15
  br label %36

36:                                               ; preds = %35
  %37 = load i16, i16* %4, align 2
  %38 = add i16 %37, 1
  store i16 %38, i16* %4, align 2
  br label %11

39:                                               ; preds = %11
  store i16 0, i16* %4, align 2
  br label %40

40:                                               ; preds = %55, %39
  %41 = load i16, i16* %4, align 2
  %42 = zext i16 %41 to i64
  %43 = icmp slt i64 %42, 101
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i64, i64* %5, align 8
  %46 = load [101 x i64]*, [101 x i64]** %2, align 8
  %47 = load i16, i16* %3, align 2
  %48 = zext i16 %47 to i64
  %49 = getelementptr inbounds [101 x i64], [101 x i64]* %46, i64 %48
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i64
  %52 = getelementptr inbounds [101 x i64], [101 x i64]* %49, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, %45
  store i64 %54, i64* %52, align 8
  br label %55

55:                                               ; preds = %44
  %56 = load i16, i16* %4, align 2
  %57 = add i16 %56, 1
  store i16 %57, i16* %4, align 2
  br label %40

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58
  %60 = load i16, i16* %3, align 2
  %61 = add i16 %60, 1
  store i16 %61, i16* %3, align 2
  br label %6

62:                                               ; preds = %6
  store i16 0, i16* %4, align 2
  br label %63

63:                                               ; preds = %120, %62
  %64 = load i16, i16* %4, align 2
  %65 = zext i16 %64 to i64
  %66 = icmp slt i64 %65, 101
  br i1 %66, label %67, label %123

67:                                               ; preds = %63
  store i64 9223372036854775807, i64* %5, align 8
  store i16 0, i16* %3, align 2
  br label %68

68:                                               ; preds = %93, %67
  %69 = load i16, i16* %3, align 2
  %70 = zext i16 %69 to i64
  %71 = icmp slt i64 %70, 101
  br i1 %71, label %72, label %96

72:                                               ; preds = %68
  %73 = load [101 x i64]*, [101 x i64]** %2, align 8
  %74 = load i16, i16* %3, align 2
  %75 = zext i16 %74 to i64
  %76 = getelementptr inbounds [101 x i64], [101 x i64]* %73, i64 %75
  %77 = load i16, i16* %4, align 2
  %78 = zext i16 %77 to i64
  %79 = getelementptr inbounds [101 x i64], [101 x i64]* %76, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load [101 x i64]*, [101 x i64]** %2, align 8
  %85 = load i16, i16* %3, align 2
  %86 = zext i16 %85 to i64
  %87 = getelementptr inbounds [101 x i64], [101 x i64]* %84, i64 %86
  %88 = load i16, i16* %4, align 2
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds [101 x i64], [101 x i64]* %87, i64 0, i64 %89
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %5, align 8
  br label %92

92:                                               ; preds = %83, %72
  br label %93

93:                                               ; preds = %92
  %94 = load i16, i16* %3, align 2
  %95 = add i16 %94, 1
  store i16 %95, i16* %3, align 2
  br label %68

96:                                               ; preds = %68
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  store i16 0, i16* %3, align 2
  br label %100

100:                                              ; preds = %115, %99
  %101 = load i16, i16* %3, align 2
  %102 = zext i16 %101 to i64
  %103 = icmp slt i64 %102, 101
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  %105 = load i64, i64* %5, align 8
  %106 = load [101 x i64]*, [101 x i64]** %2, align 8
  %107 = load i16, i16* %3, align 2
  %108 = zext i16 %107 to i64
  %109 = getelementptr inbounds [101 x i64], [101 x i64]* %106, i64 %108
  %110 = load i16, i16* %4, align 2
  %111 = zext i16 %110 to i64
  %112 = getelementptr inbounds [101 x i64], [101 x i64]* %109, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, %105
  store i64 %114, i64* %112, align 8
  br label %115

115:                                              ; preds = %104
  %116 = load i16, i16* %3, align 2
  %117 = add i16 %116, 1
  store i16 %117, i16* %3, align 2
  br label %100

118:                                              ; preds = %100
  br label %119

119:                                              ; preds = %118, %96
  br label %120

120:                                              ; preds = %119
  %121 = load i16, i16* %4, align 2
  %122 = add i16 %121, 1
  store i16 %122, i16* %4, align 2
  br label %63

123:                                              ; preds = %63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @first_assignments([101 x i64]* %0, [101 x i16]* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [101 x i64]*, align 8
  %5 = alloca [101 x i16]*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store [101 x i64]* %0, [101 x i64]** %4, align 8
  store [101 x i16]* %1, [101 x i16]** %5, align 8
  store i32 0, i32* %12, align 4
  store i16 0, i16* %6, align 2
  br label %13

13:                                               ; preds = %34, %2
  %14 = load i16, i16* %6, align 2
  %15 = zext i16 %14 to i64
  %16 = icmp slt i64 %15, 101
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  store i16 0, i16* %7, align 2
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i16, i16* %7, align 2
  %20 = zext i16 %19 to i64
  %21 = icmp slt i64 %20, 101
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load [101 x i16]*, [101 x i16]** %5, align 8
  %24 = load i16, i16* %6, align 2
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds [101 x i16], [101 x i16]* %23, i64 %25
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds [101 x i16], [101 x i16]* %26, i64 0, i64 %28
  store i16 0, i16* %29, align 2
  br label %30

30:                                               ; preds = %22
  %31 = load i16, i16* %7, align 2
  %32 = add i16 %31, 1
  store i16 %32, i16* %7, align 2
  br label %18

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33
  %35 = load i16, i16* %6, align 2
  %36 = add i16 %35, 1
  store i16 %36, i16* %6, align 2
  br label %13

37:                                               ; preds = %13
  store i16 0, i16* %10, align 2
  br label %38

38:                                               ; preds = %227, %37
  store i16 0, i16* %9, align 2
  store i16 0, i16* %6, align 2
  br label %39

39:                                               ; preds = %129, %38
  %40 = load i16, i16* %6, align 2
  %41 = zext i16 %40 to i64
  %42 = icmp slt i64 %41, 101
  br i1 %42, label %43, label %132

43:                                               ; preds = %39
  store i16 0, i16* %11, align 2
  store i16 0, i16* %7, align 2
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i64
  %47 = icmp slt i64 %46, 101
  br i1 %47, label %48, label %79

48:                                               ; preds = %44
  %49 = load [101 x i64]*, [101 x i64]** %4, align 8
  %50 = load i16, i16* %6, align 2
  %51 = zext i16 %50 to i64
  %52 = getelementptr inbounds [101 x i64], [101 x i64]* %49, i64 %51
  %53 = load i16, i16* %7, align 2
  %54 = zext i16 %53 to i64
  %55 = getelementptr inbounds [101 x i64], [101 x i64]* %52, i64 0, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %48
  %59 = load [101 x i16]*, [101 x i16]** %5, align 8
  %60 = load i16, i16* %6, align 2
  %61 = zext i16 %60 to i64
  %62 = getelementptr inbounds [101 x i16], [101 x i16]* %59, i64 %61
  %63 = load i16, i16* %7, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds [101 x i16], [101 x i16]* %62, i64 0, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load i16, i16* %11, align 2
  %71 = add i16 %70, 1
  store i16 %71, i16* %11, align 2
  %72 = load i16, i16* %7, align 2
  %73 = zext i16 %72 to i32
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %69, %58
  br label %75

75:                                               ; preds = %74, %48
  br label %76

76:                                               ; preds = %75
  %77 = load i16, i16* %7, align 2
  %78 = add i16 %77, 1
  store i16 %78, i16* %7, align 2
  br label %44

79:                                               ; preds = %44
  %80 = load i16, i16* %11, align 2
  %81 = zext i16 %80 to i32
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %128

83:                                               ; preds = %79
  %84 = load i16, i16* %9, align 2
  %85 = add i16 %84, 1
  store i16 %85, i16* %9, align 2
  %86 = load i16, i16* %10, align 2
  %87 = add i16 %86, 1
  store i16 %87, i16* %10, align 2
  %88 = load [101 x i16]*, [101 x i16]** %5, align 8
  %89 = load i16, i16* %6, align 2
  %90 = zext i16 %89 to i64
  %91 = getelementptr inbounds [101 x i16], [101 x i16]* %88, i64 %90
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [101 x i16], [101 x i16]* %91, i64 0, i64 %93
  store i16 1, i16* %94, align 2
  store i16 0, i16* %8, align 2
  br label %95

95:                                               ; preds = %124, %83
  %96 = load i16, i16* %8, align 2
  %97 = zext i16 %96 to i64
  %98 = icmp slt i64 %97, 101
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load i16, i16* %8, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* %6, align 2
  %103 = zext i16 %102 to i32
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %99
  %106 = load [101 x i64]*, [101 x i64]** %4, align 8
  %107 = load i16, i16* %8, align 2
  %108 = zext i16 %107 to i64
  %109 = getelementptr inbounds [101 x i64], [101 x i64]* %106, i64 %108
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [101 x i64], [101 x i64]* %109, i64 0, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %105
  %116 = load [101 x i16]*, [101 x i16]** %5, align 8
  %117 = load i16, i16* %8, align 2
  %118 = zext i16 %117 to i64
  %119 = getelementptr inbounds [101 x i16], [101 x i16]* %116, i64 %118
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [101 x i16], [101 x i16]* %119, i64 0, i64 %121
  store i16 2, i16* %122, align 2
  br label %123

123:                                              ; preds = %115, %105, %99
  br label %124

124:                                              ; preds = %123
  %125 = load i16, i16* %8, align 2
  %126 = add i16 %125, 1
  store i16 %126, i16* %8, align 2
  br label %95

127:                                              ; preds = %95
  br label %128

128:                                              ; preds = %127, %79
  br label %129

129:                                              ; preds = %128
  %130 = load i16, i16* %6, align 2
  %131 = add i16 %130, 1
  store i16 %131, i16* %6, align 2
  br label %39

132:                                              ; preds = %39
  store i16 0, i16* %7, align 2
  br label %133

133:                                              ; preds = %223, %132
  %134 = load i16, i16* %7, align 2
  %135 = zext i16 %134 to i64
  %136 = icmp slt i64 %135, 101
  br i1 %136, label %137, label %226

137:                                              ; preds = %133
  store i16 0, i16* %11, align 2
  store i16 0, i16* %6, align 2
  br label %138

138:                                              ; preds = %170, %137
  %139 = load i16, i16* %6, align 2
  %140 = zext i16 %139 to i64
  %141 = icmp slt i64 %140, 101
  br i1 %141, label %142, label %173

142:                                              ; preds = %138
  %143 = load [101 x i64]*, [101 x i64]** %4, align 8
  %144 = load i16, i16* %6, align 2
  %145 = zext i16 %144 to i64
  %146 = getelementptr inbounds [101 x i64], [101 x i64]* %143, i64 %145
  %147 = load i16, i16* %7, align 2
  %148 = zext i16 %147 to i64
  %149 = getelementptr inbounds [101 x i64], [101 x i64]* %146, i64 0, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %142
  %153 = load [101 x i16]*, [101 x i16]** %5, align 8
  %154 = load i16, i16* %6, align 2
  %155 = zext i16 %154 to i64
  %156 = getelementptr inbounds [101 x i16], [101 x i16]* %153, i64 %155
  %157 = load i16, i16* %7, align 2
  %158 = zext i16 %157 to i64
  %159 = getelementptr inbounds [101 x i16], [101 x i16]* %156, i64 0, i64 %158
  %160 = load i16, i16* %159, align 2
  %161 = sext i16 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %152
  %164 = load i16, i16* %11, align 2
  %165 = add i16 %164, 1
  store i16 %165, i16* %11, align 2
  %166 = load i16, i16* %6, align 2
  %167 = zext i16 %166 to i32
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %163, %152
  br label %169

169:                                              ; preds = %168, %142
  br label %170

170:                                              ; preds = %169
  %171 = load i16, i16* %6, align 2
  %172 = add i16 %171, 1
  store i16 %172, i16* %6, align 2
  br label %138

173:                                              ; preds = %138
  %174 = load i16, i16* %11, align 2
  %175 = zext i16 %174 to i32
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %222

177:                                              ; preds = %173
  %178 = load i16, i16* %9, align 2
  %179 = add i16 %178, 1
  store i16 %179, i16* %9, align 2
  %180 = load i16, i16* %10, align 2
  %181 = add i16 %180, 1
  store i16 %181, i16* %10, align 2
  %182 = load [101 x i16]*, [101 x i16]** %5, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [101 x i16], [101 x i16]* %182, i64 %184
  %186 = load i16, i16* %7, align 2
  %187 = zext i16 %186 to i64
  %188 = getelementptr inbounds [101 x i16], [101 x i16]* %185, i64 0, i64 %187
  store i16 1, i16* %188, align 2
  store i16 0, i16* %8, align 2
  br label %189

189:                                              ; preds = %218, %177
  %190 = load i16, i16* %8, align 2
  %191 = zext i16 %190 to i64
  %192 = icmp slt i64 %191, 101
  br i1 %192, label %193, label %221

193:                                              ; preds = %189
  %194 = load i16, i16* %8, align 2
  %195 = zext i16 %194 to i32
  %196 = load i16, i16* %7, align 2
  %197 = zext i16 %196 to i32
  %198 = icmp ne i32 %195, %197
  br i1 %198, label %199, label %217

199:                                              ; preds = %193
  %200 = load [101 x i64]*, [101 x i64]** %4, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [101 x i64], [101 x i64]* %200, i64 %202
  %204 = load i16, i16* %8, align 2
  %205 = zext i16 %204 to i64
  %206 = getelementptr inbounds [101 x i64], [101 x i64]* %203, i64 0, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %217

209:                                              ; preds = %199
  %210 = load [101 x i16]*, [101 x i16]** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [101 x i16], [101 x i16]* %210, i64 %212
  %214 = load i16, i16* %8, align 2
  %215 = zext i16 %214 to i64
  %216 = getelementptr inbounds [101 x i16], [101 x i16]* %213, i64 0, i64 %215
  store i16 2, i16* %216, align 2
  br label %217

217:                                              ; preds = %209, %199, %193
  br label %218

218:                                              ; preds = %217
  %219 = load i16, i16* %8, align 2
  %220 = add i16 %219, 1
  store i16 %220, i16* %8, align 2
  br label %189

221:                                              ; preds = %189
  br label %222

222:                                              ; preds = %221, %173
  br label %223

223:                                              ; preds = %222
  %224 = load i16, i16* %7, align 2
  %225 = add i16 %224, 1
  store i16 %225, i16* %7, align 2
  br label %133

226:                                              ; preds = %133
  br label %227

227:                                              ; preds = %226
  %228 = load i16, i16* %9, align 2
  %229 = zext i16 %228 to i32
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %38, label %231

231:                                              ; preds = %227
  %232 = load i16, i16* %10, align 2
  %233 = zext i16 %232 to i64
  %234 = icmp eq i64 %233, 101
  br i1 %234, label %235, label %238

235:                                              ; preds = %231
  %236 = load i16, i16* %10, align 2
  %237 = zext i16 %236 to i32
  store i32 %237, i32* %3, align 4
  br label %361

238:                                              ; preds = %231
  store i16 0, i16* %6, align 2
  br label %239

239:                                              ; preds = %355, %238
  %240 = load i16, i16* %6, align 2
  %241 = zext i16 %240 to i64
  %242 = icmp slt i64 %241, 101
  br i1 %242, label %243, label %358

243:                                              ; preds = %239
  store i32 -1, i32* %12, align 4
  store i16 0, i16* %7, align 2
  br label %244

244:                                              ; preds = %273, %243
  %245 = load i16, i16* %7, align 2
  %246 = zext i16 %245 to i64
  %247 = icmp slt i64 %246, 101
  br i1 %247, label %248, label %276

248:                                              ; preds = %244
  %249 = load [101 x i64]*, [101 x i64]** %4, align 8
  %250 = load i16, i16* %6, align 2
  %251 = zext i16 %250 to i64
  %252 = getelementptr inbounds [101 x i64], [101 x i64]* %249, i64 %251
  %253 = load i16, i16* %7, align 2
  %254 = zext i16 %253 to i64
  %255 = getelementptr inbounds [101 x i64], [101 x i64]* %252, i64 0, i64 %254
  %256 = load i64, i64* %255, align 8
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %272

258:                                              ; preds = %248
  %259 = load [101 x i16]*, [101 x i16]** %5, align 8
  %260 = load i16, i16* %6, align 2
  %261 = zext i16 %260 to i64
  %262 = getelementptr inbounds [101 x i16], [101 x i16]* %259, i64 %261
  %263 = load i16, i16* %7, align 2
  %264 = zext i16 %263 to i64
  %265 = getelementptr inbounds [101 x i16], [101 x i16]* %262, i64 0, i64 %264
  %266 = load i16, i16* %265, align 2
  %267 = sext i16 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %258
  %270 = load i16, i16* %7, align 2
  %271 = zext i16 %270 to i32
  store i32 %271, i32* %12, align 4
  br label %276

272:                                              ; preds = %258, %248
  br label %273

273:                                              ; preds = %272
  %274 = load i16, i16* %7, align 2
  %275 = add i16 %274, 1
  store i16 %275, i16* %7, align 2
  br label %244

276:                                              ; preds = %269, %244
  %277 = load i32, i32* %12, align 4
  %278 = icmp ne i32 %277, -1
  br i1 %278, label %279, label %354

279:                                              ; preds = %276
  %280 = load [101 x i16]*, [101 x i16]** %5, align 8
  %281 = load i16, i16* %6, align 2
  %282 = zext i16 %281 to i64
  %283 = getelementptr inbounds [101 x i16], [101 x i16]* %280, i64 %282
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [101 x i16], [101 x i16]* %283, i64 0, i64 %285
  store i16 1, i16* %286, align 2
  %287 = load i16, i16* %10, align 2
  %288 = add i16 %287, 1
  store i16 %288, i16* %10, align 2
  store i16 0, i16* %8, align 2
  br label %289

289:                                              ; preds = %317, %279
  %290 = load i16, i16* %8, align 2
  %291 = zext i16 %290 to i64
  %292 = icmp slt i64 %291, 101
  br i1 %292, label %293, label %320

293:                                              ; preds = %289
  %294 = load i16, i16* %8, align 2
  %295 = zext i16 %294 to i32
  %296 = load i32, i32* %12, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %316

298:                                              ; preds = %293
  %299 = load [101 x i64]*, [101 x i64]** %4, align 8
  %300 = load i16, i16* %6, align 2
  %301 = zext i16 %300 to i64
  %302 = getelementptr inbounds [101 x i64], [101 x i64]* %299, i64 %301
  %303 = load i16, i16* %8, align 2
  %304 = zext i16 %303 to i64
  %305 = getelementptr inbounds [101 x i64], [101 x i64]* %302, i64 0, i64 %304
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %316

308:                                              ; preds = %298
  %309 = load [101 x i16]*, [101 x i16]** %5, align 8
  %310 = load i16, i16* %6, align 2
  %311 = zext i16 %310 to i64
  %312 = getelementptr inbounds [101 x i16], [101 x i16]* %309, i64 %311
  %313 = load i16, i16* %8, align 2
  %314 = zext i16 %313 to i64
  %315 = getelementptr inbounds [101 x i16], [101 x i16]* %312, i64 0, i64 %314
  store i16 2, i16* %315, align 2
  br label %316

316:                                              ; preds = %308, %298, %293
  br label %317

317:                                              ; preds = %316
  %318 = load i16, i16* %8, align 2
  %319 = add i16 %318, 1
  store i16 %319, i16* %8, align 2
  br label %289

320:                                              ; preds = %289
  store i16 0, i16* %8, align 2
  br label %321

321:                                              ; preds = %350, %320
  %322 = load i16, i16* %8, align 2
  %323 = zext i16 %322 to i64
  %324 = icmp slt i64 %323, 101
  br i1 %324, label %325, label %353

325:                                              ; preds = %321
  %326 = load i16, i16* %8, align 2
  %327 = zext i16 %326 to i32
  %328 = load i16, i16* %6, align 2
  %329 = zext i16 %328 to i32
  %330 = icmp ne i32 %327, %329
  br i1 %330, label %331, label %349

331:                                              ; preds = %325
  %332 = load [101 x i64]*, [101 x i64]** %4, align 8
  %333 = load i16, i16* %8, align 2
  %334 = zext i16 %333 to i64
  %335 = getelementptr inbounds [101 x i64], [101 x i64]* %332, i64 %334
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [101 x i64], [101 x i64]* %335, i64 0, i64 %337
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %331
  %342 = load [101 x i16]*, [101 x i16]** %5, align 8
  %343 = load i16, i16* %8, align 2
  %344 = zext i16 %343 to i64
  %345 = getelementptr inbounds [101 x i16], [101 x i16]* %342, i64 %344
  %346 = load i32, i32* %12, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [101 x i16], [101 x i16]* %345, i64 0, i64 %347
  store i16 2, i16* %348, align 2
  br label %349

349:                                              ; preds = %341, %331, %325
  br label %350

350:                                              ; preds = %349
  %351 = load i16, i16* %8, align 2
  %352 = add i16 %351, 1
  store i16 %352, i16* %8, align 2
  br label %321

353:                                              ; preds = %321
  br label %354

354:                                              ; preds = %353, %276
  br label %355

355:                                              ; preds = %354
  %356 = load i16, i16* %6, align 2
  %357 = add i16 %356, 1
  store i16 %357, i16* %6, align 2
  br label %239

358:                                              ; preds = %239
  %359 = load i16, i16* %10, align 2
  %360 = zext i16 %359 to i32
  store i32 %360, i32* %3, align 4
  br label %361

361:                                              ; preds = %358, %235
  %362 = load i32, i32* %3, align 4
  ret i32 %362
}

; Function Attrs: noinline nounwind uwtable
define internal void @second_assignments([101 x i64]* %0, [101 x i16]* %1) #0 {
  %3 = alloca [101 x i64]*, align 8
  %4 = alloca [101 x i16]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [101 x i16], align 16
  %8 = alloca [101 x i16], align 16
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store [101 x i64]* %0, [101 x i64]** %3, align 8
  store [101 x i16]* %1, [101 x i16]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %20, %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %14, 101
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %18
  store i16 0, i16* %19, align 2
  br label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %12

23:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %32, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %26, 101
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %30
  store i16 0, i16* %31, align 2
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %24

35:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %72, %35
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %38, 101
  br i1 %39, label %40, label %75

40:                                               ; preds = %36
  store i16 0, i16* %10, align 2
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %60, %40
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %43, 101
  br i1 %44, label %45, label %63

45:                                               ; preds = %41
  %46 = load [101 x i16]*, [101 x i16]** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [101 x i16], [101 x i16]* %46, i64 %48
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [101 x i16], [101 x i16]* %49, i64 0, i64 %51
  %53 = load i16, i16* %52, align 2
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i16, i16* %10, align 2
  %58 = add i16 %57, 1
  store i16 %58, i16* %10, align 2
  br label %63

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %41

63:                                               ; preds = %56, %41
  %64 = load i16, i16* %10, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %69
  store i16 1, i16* %70, align 2
  br label %71

71:                                               ; preds = %67, %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %36

75:                                               ; preds = %36
  br label %76

76:                                               ; preds = %167, %75
  store i16 0, i16* %11, align 2
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %113, %76
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp slt i64 %79, 101
  br i1 %80, label %81, label %116

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %83
  %85 = load i16, i16* %84, align 2
  %86 = sext i16 %85 to i32
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %112

88:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %108, %88
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %91, 101
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load [101 x i64]*, [101 x i64]** %3, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [101 x i64], [101 x i64]* %94, i64 %96
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [101 x i64], [101 x i64]* %97, i64 0, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %93
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %105
  store i16 1, i16* %106, align 2
  br label %107

107:                                              ; preds = %103, %93
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %89

111:                                              ; preds = %89
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %77

116:                                              ; preds = %77
  store i32 0, i32* %6, align 4
  br label %117

117:                                              ; preds = %163, %116
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %119, 101
  br i1 %120, label %121, label %166

121:                                              ; preds = %117
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %123
  %125 = load i16, i16* %124, align 2
  %126 = sext i16 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %162

128:                                              ; preds = %121
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %158, %128
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %131, 101
  br i1 %132, label %133, label %161

133:                                              ; preds = %129
  %134 = load [101 x i16]*, [101 x i16]** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [101 x i16], [101 x i16]* %134, i64 %136
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [101 x i16], [101 x i16]* %137, i64 0, i64 %139
  %141 = load i16, i16* %140, align 2
  %142 = sext i16 %141 to i32
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %157

144:                                              ; preds = %133
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %146
  %148 = load i16, i16* %147, align 2
  %149 = sext i16 %148 to i32
  %150 = icmp ne i32 %149, 1
  br i1 %150, label %151, label %157

151:                                              ; preds = %144
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %153
  store i16 1, i16* %154, align 2
  %155 = load i16, i16* %11, align 2
  %156 = add i16 %155, 1
  store i16 %156, i16* %11, align 2
  br label %157

157:                                              ; preds = %151, %144, %133
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %5, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %5, align 4
  br label %129

161:                                              ; preds = %129
  br label %162

162:                                              ; preds = %161, %121
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %6, align 4
  br label %117

166:                                              ; preds = %117
  br label %167

167:                                              ; preds = %166
  %168 = load i16, i16* %11, align 2
  %169 = zext i16 %168 to i32
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %76, label %171

171:                                              ; preds = %167
  store i64 9223372036854775807, i64* %9, align 8
  store i32 0, i32* %5, align 4
  br label %172

172:                                              ; preds = %222, %171
  %173 = load i32, i32* %5, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp slt i64 %174, 101
  br i1 %175, label %176, label %225

176:                                              ; preds = %172
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %178
  %180 = load i16, i16* %179, align 2
  %181 = sext i16 %180 to i32
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %221

183:                                              ; preds = %176
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %217, %183
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %186, 101
  br i1 %187, label %188, label %220

188:                                              ; preds = %184
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %190
  %192 = load i16, i16* %191, align 2
  %193 = sext i16 %192 to i32
  %194 = icmp ne i32 %193, 1
  br i1 %194, label %195, label %216

195:                                              ; preds = %188
  %196 = load [101 x i64]*, [101 x i64]** %3, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [101 x i64], [101 x i64]* %196, i64 %198
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [101 x i64], [101 x i64]* %199, i64 0, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* %9, align 8
  %205 = icmp slt i64 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %195
  %207 = load [101 x i64]*, [101 x i64]** %3, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [101 x i64], [101 x i64]* %207, i64 %209
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [101 x i64], [101 x i64]* %210, i64 0, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* %9, align 8
  br label %215

215:                                              ; preds = %206, %195
  br label %216

216:                                              ; preds = %215, %188
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %184

220:                                              ; preds = %184
  br label %221

221:                                              ; preds = %220, %176
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %5, align 4
  br label %172

225:                                              ; preds = %172
  store i32 0, i32* %5, align 4
  br label %226

226:                                              ; preds = %266, %225
  %227 = load i32, i32* %5, align 4
  %228 = sext i32 %227 to i64
  %229 = icmp slt i64 %228, 101
  br i1 %229, label %230, label %269

230:                                              ; preds = %226
  %231 = load i32, i32* %5, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %232
  %234 = load i16, i16* %233, align 2
  %235 = sext i16 %234 to i32
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %265

237:                                              ; preds = %230
  store i32 0, i32* %6, align 4
  br label %238

238:                                              ; preds = %261, %237
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %240, 101
  br i1 %241, label %242, label %264

242:                                              ; preds = %238
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %244
  %246 = load i16, i16* %245, align 2
  %247 = sext i16 %246 to i32
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %249, label %260

249:                                              ; preds = %242
  %250 = load i64, i64* %9, align 8
  %251 = load [101 x i64]*, [101 x i64]** %3, align 8
  %252 = load i32, i32* %5, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [101 x i64], [101 x i64]* %251, i64 %253
  %255 = load i32, i32* %6, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [101 x i64], [101 x i64]* %254, i64 0, i64 %256
  %258 = load i64, i64* %257, align 8
  %259 = sub nsw i64 %258, %250
  store i64 %259, i64* %257, align 8
  br label %260

260:                                              ; preds = %249, %242
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %6, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %6, align 4
  br label %238

264:                                              ; preds = %238
  br label %265

265:                                              ; preds = %264, %230
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  br label %226

269:                                              ; preds = %226
  store i32 0, i32* %5, align 4
  br label %270

270:                                              ; preds = %310, %269
  %271 = load i32, i32* %5, align 4
  %272 = sext i32 %271 to i64
  %273 = icmp slt i64 %272, 101
  br i1 %273, label %274, label %313

274:                                              ; preds = %270
  %275 = load i32, i32* %5, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [101 x i16], [101 x i16]* %7, i64 0, i64 %276
  %278 = load i16, i16* %277, align 2
  %279 = sext i16 %278 to i32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %309

281:                                              ; preds = %274
  store i32 0, i32* %6, align 4
  br label %282

282:                                              ; preds = %305, %281
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = icmp slt i64 %284, 101
  br i1 %285, label %286, label %308

286:                                              ; preds = %282
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [101 x i16], [101 x i16]* %8, i64 0, i64 %288
  %290 = load i16, i16* %289, align 2
  %291 = sext i16 %290 to i32
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %304

293:                                              ; preds = %286
  %294 = load i64, i64* %9, align 8
  %295 = load [101 x i64]*, [101 x i64]** %3, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [101 x i64], [101 x i64]* %295, i64 %297
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [101 x i64], [101 x i64]* %298, i64 0, i64 %300
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %302, %294
  store i64 %303, i64* %301, align 8
  br label %304

304:                                              ; preds = %293, %286
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %6, align 4
  br label %282

308:                                              ; preds = %282
  br label %309

309:                                              ; preds = %308, %274
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %5, align 4
  br label %270

313:                                              ; preds = %270
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LoadAssign([101 x i64]* %0) #0 {
  %2 = alloca [101 x i64]*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  store [101 x i64]* %0, [101 x i64]** %2, align 8
  %5 = call i32 @randnum(i32 13)
  store i16 0, i16* %3, align 2
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i16, i16* %3, align 2
  %8 = zext i16 %7 to i64
  %9 = icmp slt i64 %8, 101
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  store i16 0, i16* %4, align 2
  br label %11

11:                                               ; preds = %25, %10
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i64
  %14 = icmp slt i64 %13, 101
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = call i32 @abs_randwc(i32 5000000)
  %17 = zext i32 %16 to i64
  %18 = load [101 x i64]*, [101 x i64]** %2, align 8
  %19 = load i16, i16* %3, align 2
  %20 = zext i16 %19 to i64
  %21 = getelementptr inbounds [101 x i64], [101 x i64]* %18, i64 %20
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds [101 x i64], [101 x i64]* %21, i64 0, i64 %23
  store i64 %17, i64* %24, align 8
  br label %25

25:                                               ; preds = %15
  %26 = load i16, i16* %4, align 2
  %27 = add i16 %26, 1
  store i16 %27, i16* %4, align 2
  br label %11

28:                                               ; preds = %11
  br label %29

29:                                               ; preds = %28
  %30 = load i16, i16* %3, align 2
  %31 = add i16 %30, 1
  store i16 %31, i16* %3, align 2
  br label %6

32:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @CopyToAssign([101 x i64]* %0, [101 x i64]* %1) #0 {
  %3 = alloca [101 x i64]*, align 8
  %4 = alloca [101 x i64]*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  store [101 x i64]* %0, [101 x i64]** %3, align 8
  store [101 x i64]* %1, [101 x i64]** %4, align 8
  store i16 0, i16* %5, align 2
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i64
  %10 = icmp slt i64 %9, 101
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  store i16 0, i16* %6, align 2
  br label %12

12:                                               ; preds = %32, %11
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i64
  %15 = icmp slt i64 %14, 101
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load [101 x i64]*, [101 x i64]** %3, align 8
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds [101 x i64], [101 x i64]* %17, i64 %19
  %21 = load i16, i16* %6, align 2
  %22 = zext i16 %21 to i64
  %23 = getelementptr inbounds [101 x i64], [101 x i64]* %20, i64 0, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load [101 x i64]*, [101 x i64]** %4, align 8
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i64
  %28 = getelementptr inbounds [101 x i64], [101 x i64]* %25, i64 %27
  %29 = load i16, i16* %6, align 2
  %30 = zext i16 %29 to i64
  %31 = getelementptr inbounds [101 x i64], [101 x i64]* %28, i64 0, i64 %30
  store i64 %24, i64* %31, align 8
  br label %32

32:                                               ; preds = %16
  %33 = load i16, i16* %6, align 2
  %34 = add i16 %33, 1
  store i16 %34, i16* %6, align 2
  br label %12

35:                                               ; preds = %12
  br label %36

36:                                               ; preds = %35
  %37 = load i16, i16* %5, align 2
  %38 = add i16 %37, 1
  store i16 %38, i16* %5, align 2
  br label %7

39:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoIDEA() #0 {
  %1 = alloca %struct.EmFloatStruct*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [52 x i16], align 16
  %4 = alloca [52 x i16], align 16
  %5 = alloca [8 x i16], align 16
  %6 = alloca i64, align 8
  %7 = alloca double, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.EmFloatStruct* @global_ideastruct, %struct.EmFloatStruct** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.58.171, i64 0, i64 0), i8** %8, align 8
  %13 = call i32 @randnum(i32 3)
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %24, %0
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = call i32 @abs_randwc(i32 60000)
  %19 = and i32 %18, 65535
  %20 = trunc i32 %19 to i16
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 %22
  store i16 %20, i16* %23, align 2
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %14

27:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %35, %27
  %29 = load i32, i32* %2, align 4
  %30 = icmp slt i32 %29, 52
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [52 x i16], [52 x i16]* %3, i64 0, i64 %33
  store i16 0, i16* %34, align 2
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %28

38:                                               ; preds = %28
  %39 = getelementptr inbounds [8 x i16], [8 x i16]* %5, i64 0, i64 0
  %40 = getelementptr inbounds [52 x i16], [52 x i16]* %3, i64 0, i64 0
  call void @en_key_idea(i16* %39, i16* %40)
  %41 = getelementptr inbounds [52 x i16], [52 x i16]* %3, i64 0, i64 0
  %42 = getelementptr inbounds [52 x i16], [52 x i16]* %4, i64 0, i64 0
  call void @de_key_idea(i16* %41, i16* %42)
  %43 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %44 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @AllocateMemory(i64 %45, i32* %9)
  store i8* %46, i8** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  call void @ReportError(i8* %50, i32 %51)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %52

52:                                               ; preds = %49, %38
  %53 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %54 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i8* @AllocateMemory(i64 %55, i32* %9)
  store i8* %56, i8** %11, align 8
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  call void @ReportError(i8* %60, i32 %61)
  %62 = load i8*, i8** %10, align 8
  call void @FreeMemory(i8* %62, i32* %9)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %63

63:                                               ; preds = %59, %52
  %64 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %65 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @AllocateMemory(i64 %66, i32* %9)
  store i8* %67, i8** %12, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  call void @ReportError(i8* %71, i32 %72)
  %73 = load i8*, i8** %10, align 8
  call void @FreeMemory(i8* %73, i32* %9)
  %74 = load i8*, i8** %11, align 8
  call void @FreeMemory(i8* %74, i32* %9)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %75

75:                                               ; preds = %70, %63
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %91, %75
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %80 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ult i64 %78, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = call i32 @abs_randwc(i32 255)
  %85 = and i32 %84, 255
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  br label %91

91:                                               ; preds = %83
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %2, align 4
  br label %76

94:                                               ; preds = %76
  %95 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %96 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %130

99:                                               ; preds = %94
  %100 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %101 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %100, i32 0, i32 3
  store i64 100, i64* %101, align 8
  br label %102

102:                                              ; preds = %124, %99
  %103 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %104 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %105, 500000
  br i1 %106, label %107, label %129

107:                                              ; preds = %102
  %108 = load i8*, i8** %10, align 8
  %109 = load i8*, i8** %11, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %112 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %115 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds [52 x i16], [52 x i16]* %3, i64 0, i64 0
  %118 = getelementptr inbounds [52 x i16], [52 x i16]* %4, i64 0, i64 0
  %119 = call i64 @DoIDEAIteration(i8* %108, i8* %109, i8* %110, i64 %113, i64 %116, i16* %117, i16* %118)
  %120 = load i64, i64* @global_min_ticks, align 8
  %121 = icmp ugt i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %129

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %126 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, 10
  store i64 %128, i64* %126, align 8
  br label %102

129:                                              ; preds = %122, %102
  br label %130

130:                                              ; preds = %129, %94
  store i64 0, i64* %6, align 8
  store double 0.000000e+00, double* %7, align 8
  br label %131

131:                                              ; preds = %152, %130
  %132 = load i8*, i8** %10, align 8
  %133 = load i8*, i8** %11, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %136 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %139 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds [52 x i16], [52 x i16]* %3, i64 0, i64 0
  %142 = getelementptr inbounds [52 x i16], [52 x i16]* %4, i64 0, i64 0
  %143 = call i64 @DoIDEAIteration(i8* %132, i8* %133, i8* %134, i64 %137, i64 %140, i16* %141, i16* %142)
  %144 = load i64, i64* %6, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %6, align 8
  %146 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %147 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = uitofp i64 %148 to double
  %150 = load double, double* %7, align 8
  %151 = fadd double %150, %149
  store double %151, double* %7, align 8
  br label %152

152:                                              ; preds = %131
  %153 = load double, double* %7, align 8
  %154 = fcmp olt double %153, 1.875000e+03
  br i1 %154, label %131, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %10, align 8
  call void @FreeMemory(i8* %156, i32* %9)
  %157 = load i8*, i8** %11, align 8
  call void @FreeMemory(i8* %157, i32* %9)
  %158 = load i8*, i8** %12, align 8
  call void @FreeMemory(i8* %158, i32* %9)
  %159 = load double, double* %7, align 8
  %160 = load i64, i64* %6, align 8
  %161 = call double @TicksToFracSecs(i64 %160)
  %162 = fdiv double %159, %161
  %163 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %164 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %163, i32 0, i32 4
  store double %162, double* %164, align 8
  %165 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %166 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %155
  %170 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %171 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %155
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @en_key_idea(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %18, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i16*, i16** %3, align 8
  %12 = getelementptr inbounds i16, i16* %11, i32 1
  store i16* %12, i16** %3, align 8
  %13 = load i16, i16* %11, align 2
  %14 = load i16*, i16** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i16, i16* %14, i64 %16
  store i16 %13, i16* %17, align 2
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %7

21:                                               ; preds = %7
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 52
  br i1 %24, label %25, label %62

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i16*, i16** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 7
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %28, i64 %31
  %33 = load i16, i16* %32, align 2
  %34 = zext i16 %33 to i32
  %35 = shl i32 %34, 9
  %36 = load i16*, i16** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = and i32 %38, 7
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i16, i16* %36, i64 %40
  %42 = load i16, i16* %41, align 2
  %43 = zext i16 %42 to i32
  %44 = ashr i32 %43, 7
  %45 = or i32 %35, %44
  %46 = trunc i32 %45 to i16
  %47 = load i16*, i16** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i16, i16* %47, i64 %50
  store i16 %46, i16* %51, align 2
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 8
  %54 = load i16*, i16** %4, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i16, i16* %54, i64 %55
  store i16* %56, i16** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 7
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %25
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %22

62:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @de_key_idea(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  %5 = alloca [52 x i16], align 16
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %11 = getelementptr inbounds [52 x i16], [52 x i16]* %5, i64 0, i64 0
  %12 = getelementptr inbounds i16, i16* %11, i64 52
  store i16* %12, i16** %10, align 8
  %13 = load i16*, i16** %3, align 8
  %14 = getelementptr inbounds i16, i16* %13, i32 1
  store i16* %14, i16** %3, align 8
  %15 = load i16, i16* %13, align 2
  %16 = call zeroext i16 @inv(i16 zeroext %15)
  store i16 %16, i16* %7, align 2
  %17 = load i16*, i16** %3, align 8
  %18 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %18, i16** %3, align 8
  %19 = load i16, i16* %17, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 0, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %8, align 2
  %23 = load i16*, i16** %3, align 8
  %24 = getelementptr inbounds i16, i16* %23, i32 1
  store i16* %24, i16** %3, align 8
  %25 = load i16, i16* %23, align 2
  %26 = zext i16 %25 to i32
  %27 = sub nsw i32 0, %26
  %28 = trunc i32 %27 to i16
  store i16 %28, i16* %9, align 2
  %29 = load i16*, i16** %3, align 8
  %30 = getelementptr inbounds i16, i16* %29, i32 1
  store i16* %30, i16** %3, align 8
  %31 = load i16, i16* %29, align 2
  %32 = call zeroext i16 @inv(i16 zeroext %31)
  %33 = load i16*, i16** %10, align 8
  %34 = getelementptr inbounds i16, i16* %33, i32 -1
  store i16* %34, i16** %10, align 8
  store i16 %32, i16* %34, align 2
  %35 = load i16, i16* %9, align 2
  %36 = load i16*, i16** %10, align 8
  %37 = getelementptr inbounds i16, i16* %36, i32 -1
  store i16* %37, i16** %10, align 8
  store i16 %35, i16* %37, align 2
  %38 = load i16, i16* %8, align 2
  %39 = load i16*, i16** %10, align 8
  %40 = getelementptr inbounds i16, i16* %39, i32 -1
  store i16* %40, i16** %10, align 8
  store i16 %38, i16* %40, align 2
  %41 = load i16, i16* %7, align 2
  %42 = load i16*, i16** %10, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 -1
  store i16* %43, i16** %10, align 8
  store i16 %41, i16* %43, align 2
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %90, %2
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 8
  br i1 %46, label %47, label %93

47:                                               ; preds = %44
  %48 = load i16*, i16** %3, align 8
  %49 = getelementptr inbounds i16, i16* %48, i32 1
  store i16* %49, i16** %3, align 8
  %50 = load i16, i16* %48, align 2
  store i16 %50, i16* %7, align 2
  %51 = load i16*, i16** %3, align 8
  %52 = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %52, i16** %3, align 8
  %53 = load i16, i16* %51, align 2
  %54 = load i16*, i16** %10, align 8
  %55 = getelementptr inbounds i16, i16* %54, i32 -1
  store i16* %55, i16** %10, align 8
  store i16 %53, i16* %55, align 2
  %56 = load i16, i16* %7, align 2
  %57 = load i16*, i16** %10, align 8
  %58 = getelementptr inbounds i16, i16* %57, i32 -1
  store i16* %58, i16** %10, align 8
  store i16 %56, i16* %58, align 2
  %59 = load i16*, i16** %3, align 8
  %60 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %60, i16** %3, align 8
  %61 = load i16, i16* %59, align 2
  %62 = call zeroext i16 @inv(i16 zeroext %61)
  store i16 %62, i16* %7, align 2
  %63 = load i16*, i16** %3, align 8
  %64 = getelementptr inbounds i16, i16* %63, i32 1
  store i16* %64, i16** %3, align 8
  %65 = load i16, i16* %63, align 2
  %66 = zext i16 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %8, align 2
  %69 = load i16*, i16** %3, align 8
  %70 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %70, i16** %3, align 8
  %71 = load i16, i16* %69, align 2
  %72 = zext i16 %71 to i32
  %73 = sub nsw i32 0, %72
  %74 = trunc i32 %73 to i16
  store i16 %74, i16* %9, align 2
  %75 = load i16*, i16** %3, align 8
  %76 = getelementptr inbounds i16, i16* %75, i32 1
  store i16* %76, i16** %3, align 8
  %77 = load i16, i16* %75, align 2
  %78 = call zeroext i16 @inv(i16 zeroext %77)
  %79 = load i16*, i16** %10, align 8
  %80 = getelementptr inbounds i16, i16* %79, i32 -1
  store i16* %80, i16** %10, align 8
  store i16 %78, i16* %80, align 2
  %81 = load i16, i16* %8, align 2
  %82 = load i16*, i16** %10, align 8
  %83 = getelementptr inbounds i16, i16* %82, i32 -1
  store i16* %83, i16** %10, align 8
  store i16 %81, i16* %83, align 2
  %84 = load i16, i16* %9, align 2
  %85 = load i16*, i16** %10, align 8
  %86 = getelementptr inbounds i16, i16* %85, i32 -1
  store i16* %86, i16** %10, align 8
  store i16 %84, i16* %86, align 2
  %87 = load i16, i16* %7, align 2
  %88 = load i16*, i16** %10, align 8
  %89 = getelementptr inbounds i16, i16* %88, i32 -1
  store i16* %89, i16** %10, align 8
  store i16 %87, i16* %89, align 2
  br label %90

90:                                               ; preds = %47
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %44

93:                                               ; preds = %44
  %94 = load i16*, i16** %3, align 8
  %95 = getelementptr inbounds i16, i16* %94, i32 1
  store i16* %95, i16** %3, align 8
  %96 = load i16, i16* %94, align 2
  store i16 %96, i16* %7, align 2
  %97 = load i16*, i16** %3, align 8
  %98 = getelementptr inbounds i16, i16* %97, i32 1
  store i16* %98, i16** %3, align 8
  %99 = load i16, i16* %97, align 2
  %100 = load i16*, i16** %10, align 8
  %101 = getelementptr inbounds i16, i16* %100, i32 -1
  store i16* %101, i16** %10, align 8
  store i16 %99, i16* %101, align 2
  %102 = load i16, i16* %7, align 2
  %103 = load i16*, i16** %10, align 8
  %104 = getelementptr inbounds i16, i16* %103, i32 -1
  store i16* %104, i16** %10, align 8
  store i16 %102, i16* %104, align 2
  %105 = load i16*, i16** %3, align 8
  %106 = getelementptr inbounds i16, i16* %105, i32 1
  store i16* %106, i16** %3, align 8
  %107 = load i16, i16* %105, align 2
  %108 = call zeroext i16 @inv(i16 zeroext %107)
  store i16 %108, i16* %7, align 2
  %109 = load i16*, i16** %3, align 8
  %110 = getelementptr inbounds i16, i16* %109, i32 1
  store i16* %110, i16** %3, align 8
  %111 = load i16, i16* %109, align 2
  %112 = zext i16 %111 to i32
  %113 = sub nsw i32 0, %112
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %8, align 2
  %115 = load i16*, i16** %3, align 8
  %116 = getelementptr inbounds i16, i16* %115, i32 1
  store i16* %116, i16** %3, align 8
  %117 = load i16, i16* %115, align 2
  %118 = zext i16 %117 to i32
  %119 = sub nsw i32 0, %118
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %9, align 2
  %121 = load i16*, i16** %3, align 8
  %122 = getelementptr inbounds i16, i16* %121, i32 1
  store i16* %122, i16** %3, align 8
  %123 = load i16, i16* %121, align 2
  %124 = call zeroext i16 @inv(i16 zeroext %123)
  %125 = load i16*, i16** %10, align 8
  %126 = getelementptr inbounds i16, i16* %125, i32 -1
  store i16* %126, i16** %10, align 8
  store i16 %124, i16* %126, align 2
  %127 = load i16, i16* %9, align 2
  %128 = load i16*, i16** %10, align 8
  %129 = getelementptr inbounds i16, i16* %128, i32 -1
  store i16* %129, i16** %10, align 8
  store i16 %127, i16* %129, align 2
  %130 = load i16, i16* %8, align 2
  %131 = load i16*, i16** %10, align 8
  %132 = getelementptr inbounds i16, i16* %131, i32 -1
  store i16* %132, i16** %10, align 8
  store i16 %130, i16* %132, align 2
  %133 = load i16, i16* %7, align 2
  %134 = load i16*, i16** %10, align 8
  %135 = getelementptr inbounds i16, i16* %134, i32 -1
  store i16* %135, i16** %10, align 8
  store i16 %133, i16* %135, align 2
  store i32 0, i32* %6, align 4
  %136 = getelementptr inbounds [52 x i16], [52 x i16]* %5, i64 0, i64 0
  store i16* %136, i16** %10, align 8
  br label %137

137:                                              ; preds = %147, %93
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 52
  br i1 %139, label %140, label %150

140:                                              ; preds = %137
  %141 = load i16*, i16** %10, align 8
  %142 = load i16, i16* %141, align 2
  %143 = load i16*, i16** %4, align 8
  %144 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %144, i16** %4, align 8
  store i16 %142, i16* %143, align 2
  %145 = load i16*, i16** %10, align 8
  %146 = getelementptr inbounds i16, i16* %145, i32 1
  store i16* %146, i16** %10, align 8
  store i16 0, i16* %145, align 2
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  br label %137

150:                                              ; preds = %137
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoIDEAIteration(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, i16* %5, i16* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i16* %5, i16** %13, align 8
  store i16* %6, i16** %14, align 8
  %18 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %18, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %19

19:                                               ; preds = %60, %7
  %20 = load i64, i64* %15, align 8
  %21 = load i64, i64* %12, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  store i64 0, i64* %16, align 8
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %16, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = bitcast i8* %31 to i16*
  %33 = load i8*, i8** %9, align 8
  %34 = load i64, i64* %16, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = bitcast i8* %35 to i16*
  %37 = load i16*, i16** %13, align 8
  call void @cipher_idea(i16* %32, i16* %36, i16* %37)
  br label %38

38:                                               ; preds = %28
  %39 = load i64, i64* %16, align 8
  %40 = add i64 %39, 8
  store i64 %40, i64* %16, align 8
  br label %24

41:                                               ; preds = %24
  store i64 0, i64* %16, align 8
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %42
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %16, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = bitcast i8* %49 to i16*
  %51 = load i8*, i8** %10, align 8
  %52 = load i64, i64* %16, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = bitcast i8* %53 to i16*
  %55 = load i16*, i16** %14, align 8
  call void @cipher_idea(i16* %50, i16* %54, i16* %55)
  br label %56

56:                                               ; preds = %46
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %57, 8
  store i64 %58, i64* %16, align 8
  br label %42

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %15, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %15, align 8
  br label %19

63:                                               ; preds = %19
  %64 = load i64, i64* %17, align 8
  %65 = call i64 @StopStopwatch(i64 %64)
  ret i64 %65
}

; Function Attrs: noinline nounwind uwtable
define internal void @cipher_idea(i16* %0, i16* %1, i16* %2) #0 {
  %4 = alloca i16*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  store i16* %0, i16** %4, align 8
  store i16* %1, i16** %5, align 8
  store i16* %2, i16** %6, align 8
  store i32 8, i32* %13, align 4
  %14 = load i16*, i16** %4, align 8
  %15 = getelementptr inbounds i16, i16* %14, i32 1
  store i16* %15, i16** %4, align 8
  %16 = load i16, i16* %14, align 2
  store i16 %16, i16* %7, align 2
  %17 = load i16*, i16** %4, align 8
  %18 = getelementptr inbounds i16, i16* %17, i32 1
  store i16* %18, i16** %4, align 8
  %19 = load i16, i16* %17, align 2
  store i16 %19, i16* %8, align 2
  %20 = load i16*, i16** %4, align 8
  %21 = getelementptr inbounds i16, i16* %20, i32 1
  store i16* %21, i16** %4, align 8
  %22 = load i16, i16* %20, align 2
  store i16 %22, i16* %9, align 2
  %23 = load i16*, i16** %4, align 8
  %24 = load i16, i16* %23, align 2
  store i16 %24, i16* %10, align 2
  br label %25

25:                                               ; preds = %120, %3
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 65535
  %29 = trunc i32 %28 to i16
  %30 = load i16*, i16** %6, align 8
  %31 = getelementptr inbounds i16, i16* %30, i32 1
  store i16* %31, i16** %6, align 8
  %32 = load i16, i16* %30, align 2
  %33 = call zeroext i16 @mul(i16 zeroext %29, i16 zeroext %32)
  store i16 %33, i16* %7, align 2
  %34 = load i16*, i16** %6, align 8
  %35 = getelementptr inbounds i16, i16* %34, i32 1
  store i16* %35, i16** %6, align 8
  %36 = load i16, i16* %34, align 2
  %37 = zext i16 %36 to i32
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = add nsw i32 %39, %37
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %8, align 2
  %42 = load i16*, i16** %6, align 8
  %43 = getelementptr inbounds i16, i16* %42, i32 1
  store i16* %43, i16** %6, align 8
  %44 = load i16, i16* %42, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %9, align 2
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %9, align 2
  %50 = load i16, i16* %10, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 65535
  %53 = trunc i32 %52 to i16
  %54 = load i16*, i16** %6, align 8
  %55 = getelementptr inbounds i16, i16* %54, i32 1
  store i16* %55, i16** %6, align 8
  %56 = load i16, i16* %54, align 2
  %57 = call zeroext i16 @mul(i16 zeroext %53, i16 zeroext %56)
  store i16 %57, i16* %10, align 2
  %58 = load i16, i16* %7, align 2
  %59 = zext i16 %58 to i32
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = xor i32 %59, %61
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %12, align 2
  %64 = load i16, i16* %12, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 65535
  %67 = trunc i32 %66 to i16
  %68 = load i16*, i16** %6, align 8
  %69 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %69, i16** %6, align 8
  %70 = load i16, i16* %68, align 2
  %71 = call zeroext i16 @mul(i16 zeroext %67, i16 zeroext %70)
  store i16 %71, i16* %12, align 2
  %72 = load i16, i16* %12, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %8, align 2
  %75 = zext i16 %74 to i32
  %76 = load i16, i16* %10, align 2
  %77 = zext i16 %76 to i32
  %78 = xor i32 %75, %77
  %79 = add nsw i32 %73, %78
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %11, align 2
  %81 = load i16, i16* %11, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 65535
  %84 = trunc i32 %83 to i16
  %85 = load i16*, i16** %6, align 8
  %86 = getelementptr inbounds i16, i16* %85, i32 1
  store i16* %86, i16** %6, align 8
  %87 = load i16, i16* %85, align 2
  %88 = call zeroext i16 @mul(i16 zeroext %84, i16 zeroext %87)
  store i16 %88, i16* %11, align 2
  %89 = load i16, i16* %11, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* %12, align 2
  %92 = zext i16 %91 to i32
  %93 = add nsw i32 %90, %92
  %94 = trunc i32 %93 to i16
  store i16 %94, i16* %12, align 2
  %95 = load i16, i16* %11, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* %7, align 2
  %98 = zext i16 %97 to i32
  %99 = xor i32 %98, %96
  %100 = trunc i32 %99 to i16
  store i16 %100, i16* %7, align 2
  %101 = load i16, i16* %12, align 2
  %102 = zext i16 %101 to i32
  %103 = load i16, i16* %10, align 2
  %104 = zext i16 %103 to i32
  %105 = xor i32 %104, %102
  %106 = trunc i32 %105 to i16
  store i16 %106, i16* %10, align 2
  %107 = load i16, i16* %8, align 2
  %108 = zext i16 %107 to i32
  %109 = load i16, i16* %12, align 2
  %110 = zext i16 %109 to i32
  %111 = xor i32 %110, %108
  %112 = trunc i32 %111 to i16
  store i16 %112, i16* %12, align 2
  %113 = load i16, i16* %9, align 2
  %114 = zext i16 %113 to i32
  %115 = load i16, i16* %11, align 2
  %116 = zext i16 %115 to i32
  %117 = xor i32 %114, %116
  %118 = trunc i32 %117 to i16
  store i16 %118, i16* %8, align 2
  %119 = load i16, i16* %12, align 2
  store i16 %119, i16* %9, align 2
  br label %120

120:                                              ; preds = %25
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %25, label %124

124:                                              ; preds = %120
  %125 = load i16, i16* %7, align 2
  %126 = zext i16 %125 to i32
  %127 = and i32 %126, 65535
  %128 = trunc i32 %127 to i16
  %129 = load i16*, i16** %6, align 8
  %130 = getelementptr inbounds i16, i16* %129, i32 1
  store i16* %130, i16** %6, align 8
  %131 = load i16, i16* %129, align 2
  %132 = call zeroext i16 @mul(i16 zeroext %128, i16 zeroext %131)
  store i16 %132, i16* %7, align 2
  %133 = load i16, i16* %7, align 2
  %134 = load i16*, i16** %5, align 8
  %135 = getelementptr inbounds i16, i16* %134, i32 1
  store i16* %135, i16** %5, align 8
  store i16 %133, i16* %134, align 2
  %136 = load i16, i16* %9, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16*, i16** %6, align 8
  %139 = getelementptr inbounds i16, i16* %138, i32 1
  store i16* %139, i16** %6, align 8
  %140 = load i16, i16* %138, align 2
  %141 = zext i16 %140 to i32
  %142 = add nsw i32 %137, %141
  %143 = trunc i32 %142 to i16
  %144 = load i16*, i16** %5, align 8
  %145 = getelementptr inbounds i16, i16* %144, i32 1
  store i16* %145, i16** %5, align 8
  store i16 %143, i16* %144, align 2
  %146 = load i16, i16* %8, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16*, i16** %6, align 8
  %149 = getelementptr inbounds i16, i16* %148, i32 1
  store i16* %149, i16** %6, align 8
  %150 = load i16, i16* %148, align 2
  %151 = zext i16 %150 to i32
  %152 = add nsw i32 %147, %151
  %153 = trunc i32 %152 to i16
  %154 = load i16*, i16** %5, align 8
  %155 = getelementptr inbounds i16, i16* %154, i32 1
  store i16* %155, i16** %5, align 8
  store i16 %153, i16* %154, align 2
  %156 = load i16, i16* %10, align 2
  %157 = zext i16 %156 to i32
  %158 = and i32 %157, 65535
  %159 = trunc i32 %158 to i16
  %160 = load i16*, i16** %6, align 8
  %161 = load i16, i16* %160, align 2
  %162 = call zeroext i16 @mul(i16 zeroext %159, i16 zeroext %161)
  store i16 %162, i16* %10, align 2
  %163 = load i16, i16* %10, align 2
  %164 = load i16*, i16** %5, align 8
  store i16 %163, i16* %164, align 2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @mul(i16 zeroext %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %4, align 2
  %8 = icmp ne i16 %7, 0
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = load i16, i16* %5, align 2
  %11 = icmp ne i16 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %9
  %13 = load i16, i16* %4, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = mul nsw i32 %14, %16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65535
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %5, align 2
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %4, align 2
  %24 = load i16, i16* %5, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 %25, %27
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = load i16, i16* %4, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %30, %32
  %34 = zext i1 %33 to i32
  %35 = add nsw i32 %28, %34
  %36 = trunc i32 %35 to i16
  store i16 %36, i16* %3, align 2
  br label %47

37:                                               ; preds = %9
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = sub nsw i32 1, %39
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %3, align 2
  br label %47

42:                                               ; preds = %2
  %43 = load i16, i16* %5, align 2
  %44 = zext i16 %43 to i32
  %45 = sub nsw i32 1, %44
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %3, align 2
  br label %47

47:                                               ; preds = %42, %37, %12
  %48 = load i16, i16* %3, align 2
  ret i16 %48
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i16 @inv(i16 zeroext %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %8 = load i16, i16* %3, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp sle i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i16, i16* %3, align 2
  store i16 %12, i16* %2, align 2
  br label %91

13:                                               ; preds = %1
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i32
  %16 = sdiv i32 65537, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %5, align 2
  %18 = load i16, i16* %3, align 2
  %19 = zext i16 %18 to i32
  %20 = srem i32 65537, %19
  %21 = trunc i32 %20 to i16
  store i16 %21, i16* %7, align 2
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load i16, i16* %5, align 2
  %27 = zext i16 %26 to i32
  %28 = sub nsw i32 1, %27
  %29 = and i32 %28, 65535
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %2, align 2
  br label %91

31:                                               ; preds = %13
  store i16 1, i16* %4, align 2
  br label %32

32:                                               ; preds = %81, %31
  %33 = load i16, i16* %3, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* %7, align 2
  %36 = zext i16 %35 to i32
  %37 = sdiv i32 %34, %36
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %6, align 2
  %39 = load i16, i16* %3, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = srem i32 %40, %42
  %44 = trunc i32 %43 to i16
  store i16 %44, i16* %3, align 2
  %45 = load i16, i16* %6, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = mul nsw i32 %46, %48
  %50 = load i16, i16* %4, align 2
  %51 = zext i16 %50 to i32
  %52 = add nsw i32 %51, %49
  %53 = trunc i32 %52 to i16
  store i16 %53, i16* %4, align 2
  %54 = load i16, i16* %3, align 2
  %55 = zext i16 %54 to i32
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %32
  %58 = load i16, i16* %4, align 2
  store i16 %58, i16* %2, align 2
  br label %91

59:                                               ; preds = %32
  %60 = load i16, i16* %7, align 2
  %61 = zext i16 %60 to i32
  %62 = load i16, i16* %3, align 2
  %63 = zext i16 %62 to i32
  %64 = sdiv i32 %61, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %6, align 2
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = load i16, i16* %3, align 2
  %69 = zext i16 %68 to i32
  %70 = srem i32 %67, %69
  %71 = trunc i32 %70 to i16
  store i16 %71, i16* %7, align 2
  %72 = load i16, i16* %6, align 2
  %73 = zext i16 %72 to i32
  %74 = load i16, i16* %4, align 2
  %75 = zext i16 %74 to i32
  %76 = mul nsw i32 %73, %75
  %77 = load i16, i16* %5, align 2
  %78 = zext i16 %77 to i32
  %79 = add nsw i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %5, align 2
  br label %81

81:                                               ; preds = %59
  %82 = load i16, i16* %7, align 2
  %83 = zext i16 %82 to i32
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %32, label %85

85:                                               ; preds = %81
  %86 = load i16, i16* %5, align 2
  %87 = zext i16 %86 to i32
  %88 = sub nsw i32 1, %87
  %89 = and i32 %88, 65535
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %2, align 2
  br label %91

91:                                               ; preds = %85, %57, %25, %11
  %92 = load i16, i16* %2, align 2
  ret i16 %92
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoHuffman() #0 {
  %1 = alloca %struct.EmFloatStruct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.EmFloatStruct* @global_huffstruct, %struct.EmFloatStruct** %1, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59.174, i64 0, i64 0), i8** %2, align 8
  %9 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %10 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = call i8* @AllocateMemory(i64 %11, i32* %3)
  store i8* %12, i8** %8, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %3, align 4
  call void @ReportError(i8* %16, i32 %17)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %18

18:                                               ; preds = %15, %0
  %19 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %20 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @AllocateMemory(i64 %21, i32* %3)
  store i8* %22, i8** %6, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  call void @ReportError(i8* %26, i32 %27)
  %28 = load i8*, i8** %8, align 8
  call void @FreeMemory(i8* %28, i32* %3)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %29

29:                                               ; preds = %25, %18
  %30 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %31 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @AllocateMemory(i64 %32, i32* %3)
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* %3, align 4
  call void @ReportError(i8* %37, i32 %38)
  %39 = load i8*, i8** %8, align 8
  call void @FreeMemory(i8* %39, i32* %3)
  %40 = load i8*, i8** %6, align 8
  call void @FreeMemory(i8* %40, i32* %3)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %41

41:                                               ; preds = %36, %29
  %42 = call i8* @AllocateMemory(i64 10240, i32* %3)
  %43 = bitcast i8* %42 to %struct.huff_node*
  store %struct.huff_node* %43, %struct.huff_node** @hufftree, align 8
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %2, align 8
  %48 = load i32, i32* %3, align 4
  call void @ReportError(i8* %47, i32 %48)
  %49 = load i8*, i8** %8, align 8
  call void @FreeMemory(i8* %49, i32* %3)
  %50 = load i8*, i8** %6, align 8
  call void @FreeMemory(i8* %50, i32* %3)
  %51 = load i8*, i8** %7, align 8
  call void @FreeMemory(i8* %51, i32* %3)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %52

52:                                               ; preds = %46, %41
  %53 = call i32 @randnum(i32 13)
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %56 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %57, 1
  call void @create_text_block(i8* %54, i64 %58, i16 zeroext 500)
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %61 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %66 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* @plaintextlen, align 8
  %68 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %69 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %102

72:                                               ; preds = %52
  %73 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %74 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %73, i32 0, i32 3
  store i64 100, i64* %74, align 8
  br label %75

75:                                               ; preds = %96, %72
  %76 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %77 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %78, 500000
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load i8*, i8** %8, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %85 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %88 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %91 = call i64 @DoHuffIteration(i8* %81, i8* %82, i8* %83, i64 %86, i64 %89, %struct.huff_node* %90)
  %92 = load i64, i64* @global_min_ticks, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  br label %101

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %98 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, 10
  store i64 %100, i64* %98, align 8
  br label %75

101:                                              ; preds = %94, %75
  br label %102

102:                                              ; preds = %101, %52
  store i64 0, i64* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  br label %103

103:                                              ; preds = %123, %102
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %108 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %111 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %114 = call i64 @DoHuffIteration(i8* %104, i8* %105, i8* %106, i64 %109, i64 %112, %struct.huff_node* %113)
  %115 = load i64, i64* %4, align 8
  %116 = add i64 %115, %114
  store i64 %116, i64* %4, align 8
  %117 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %118 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = uitofp i64 %119 to double
  %121 = load double, double* %5, align 8
  %122 = fadd double %121, %120
  store double %122, double* %5, align 8
  br label %123

123:                                              ; preds = %103
  %124 = load double, double* %5, align 8
  %125 = fcmp olt double %124, 5.000000e+02
  br i1 %125, label %103, label %126

126:                                              ; preds = %123
  %127 = load i8*, i8** %8, align 8
  call void @FreeMemory(i8* %127, i32* %3)
  %128 = load i8*, i8** %6, align 8
  call void @FreeMemory(i8* %128, i32* %3)
  %129 = load i8*, i8** %7, align 8
  call void @FreeMemory(i8* %129, i32* %3)
  %130 = load %struct.huff_node*, %struct.huff_node** @hufftree, align 8
  %131 = bitcast %struct.huff_node* %130 to i8*
  call void @FreeMemory(i8* %131, i32* %3)
  %132 = load double, double* %5, align 8
  %133 = load i64, i64* %4, align 8
  %134 = call double @TicksToFracSecs(i64 %133)
  %135 = fdiv double %132, %134
  %136 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %137 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %136, i32 0, i32 4
  store double %135, double* %137, align 8
  %138 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %139 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %126
  %143 = load %struct.EmFloatStruct*, %struct.EmFloatStruct** %1, align 8
  %144 = getelementptr inbounds %struct.EmFloatStruct, %struct.EmFloatStruct* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_text_block(i8* %0, i64 %1, i16 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i16 %2, i16* %6, align 2
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %41, %3
  %10 = load i16, i16* %6, align 2
  %11 = zext i16 %10 to i32
  %12 = sub nsw i32 %11, 6
  %13 = call i32 @abs_randwc(i32 %12)
  %14 = add i32 %13, 6
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  %19 = load i64, i64* %5, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %22, %23
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %21, %9
  %26 = load i64, i64* %8, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %8, align 8
  call void @create_text_line(i8* %29, i64 %30)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i64, i64* %8, align 8
  %33 = sub i64 %32, 1
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %4, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 10, i8* %36, align 1
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %31
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %5, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %9, label %45

45:                                               ; preds = %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoHuffIteration(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4, %struct.huff_node* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.huff_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca [30 x i8], align 16
  %26 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.huff_node* %5, %struct.huff_node** %12, align 8
  %27 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %27, i64* %26, align 8
  br label %28

28:                                               ; preds = %381, %6
  %29 = load i64, i64* %11, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %11, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %382

32:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 256
  br i1 %35, label %36, label %52

36:                                               ; preds = %33
  %37 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %37, i64 %39
  %41 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %40, i32 0, i32 1
  store float 0.000000e+00, float* %41, align 4
  %42 = load i32, i32* %13, align 4
  %43 = trunc i32 %42 to i8
  %44 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %44, i64 %46
  %48 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %47, i32 0, i32 0
  store i8 %43, i8* %48, align 4
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %13, align 4
  br label %33

52:                                               ; preds = %33
  store i64 0, i64* %14, align 8
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i64, i64* %14, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i64, i64* %14, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %58, i64 %64
  %66 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %65, i32 0, i32 1
  %67 = load float, float* %66, align 4
  %68 = fadd float %67, 1.000000e+00
  store float %68, float* %66, align 4
  br label %69

69:                                               ; preds = %57
  %70 = load i64, i64* %14, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %14, align 8
  br label %53

72:                                               ; preds = %53
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %13, align 4
  %75 = icmp slt i32 %74, 256
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %77, i64 %79
  %81 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %80, i32 0, i32 1
  %82 = load float, float* %81, align 4
  %83 = fcmp une float %82, 0.000000e+00
  br i1 %83, label %84, label %94

84:                                               ; preds = %76
  %85 = load i64, i64* %10, align 8
  %86 = uitofp i64 %85 to float
  %87 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %87, i64 %89
  %91 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %90, i32 0, i32 1
  %92 = load float, float* %91, align 4
  %93 = fdiv float %92, %86
  store float %93, float* %91, align 4
  br label %94

94:                                               ; preds = %84, %76
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %73

98:                                               ; preds = %73
  %99 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %100 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %99, i64 256
  %101 = bitcast %struct.huff_node* %100 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %101, i8 0, i64 5120, i1 false)
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %136, %98
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 512
  br i1 %104, label %105, label %139

105:                                              ; preds = %102
  %106 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %106, i64 %108
  %110 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %109, i32 0, i32 1
  %111 = load float, float* %110, align 4
  %112 = fcmp oeq float %111, 0.000000e+00
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %114, i64 %116
  %118 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %117, i32 0, i32 2
  store i32 32000, i32* %118, align 4
  br label %135

119:                                              ; preds = %105
  %120 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %120, i64 %122
  %124 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %123, i32 0, i32 4
  store i32 -1, i32* %124, align 4
  %125 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %125, i64 %127
  %129 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %128, i32 0, i32 3
  store i32 -1, i32* %129, align 4
  %130 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %130, i64 %132
  %134 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %133, i32 0, i32 2
  store i32 -1, i32* %134, align 4
  br label %135

135:                                              ; preds = %119, %113
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %13, align 4
  br label %102

139:                                              ; preds = %102
  store i32 255, i32* %15, align 4
  br label %140

140:                                              ; preds = %222, %139
  store float 2.000000e+00, float* %16, align 4
  store float 2.000000e+00, float* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %172, %140
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %15, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %175

145:                                              ; preds = %141
  %146 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %146, i64 %148
  %150 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %145
  %154 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %154, i64 %156
  %158 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %157, i32 0, i32 1
  %159 = load float, float* %158, align 4
  %160 = load float, float* %16, align 4
  %161 = fcmp olt float %159, %160
  br i1 %161, label %162, label %170

162:                                              ; preds = %153
  %163 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %164 = load i32, i32* %13, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %163, i64 %165
  %167 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  store float %168, float* %16, align 4
  %169 = load i32, i32* %13, align 4
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %162, %153
  br label %171

171:                                              ; preds = %170, %145
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %13, align 4
  br label %141

175:                                              ; preds = %141
  %176 = load i32, i32* %18, align 4
  %177 = icmp eq i32 %176, -1
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  br label %262

179:                                              ; preds = %175
  store i32 0, i32* %13, align 4
  br label %180

180:                                              ; preds = %215, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp sle i32 %181, %182
  br i1 %183, label %184, label %218

184:                                              ; preds = %180
  %185 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %185, i64 %187
  %189 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %184
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %214

196:                                              ; preds = %192
  %197 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %197, i64 %199
  %201 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %200, i32 0, i32 1
  %202 = load float, float* %201, align 4
  %203 = load float, float* %17, align 4
  %204 = fcmp olt float %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %196
  %206 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %206, i64 %208
  %210 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %209, i32 0, i32 1
  %211 = load float, float* %210, align 4
  store float %211, float* %17, align 4
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %19, align 4
  br label %213

213:                                              ; preds = %205, %196
  br label %214

214:                                              ; preds = %213, %192, %184
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %180

218:                                              ; preds = %180
  %219 = load i32, i32* %19, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %262

222:                                              ; preds = %218
  %223 = load i32, i32* %15, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %15, align 4
  %225 = load i32, i32* %15, align 4
  %226 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %227 = load i32, i32* %18, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %226, i64 %228
  %230 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %229, i32 0, i32 2
  store i32 %225, i32* %230, align 4
  %231 = load i32, i32* %15, align 4
  %232 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %233 = load i32, i32* %19, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %232, i64 %234
  %236 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %235, i32 0, i32 2
  store i32 %231, i32* %236, align 4
  %237 = load float, float* %16, align 4
  %238 = load float, float* %17, align 4
  %239 = fadd float %237, %238
  %240 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %240, i64 %242
  %244 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %243, i32 0, i32 1
  store float %239, float* %244, align 4
  %245 = load i32, i32* %18, align 4
  %246 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %246, i64 %248
  %250 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %249, i32 0, i32 3
  store i32 %245, i32* %250, align 4
  %251 = load i32, i32* %19, align 4
  %252 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %253 = load i32, i32* %15, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %252, i64 %254
  %256 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %255, i32 0, i32 4
  store i32 %251, i32* %256, align 4
  %257 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %257, i64 %259
  %261 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %260, i32 0, i32 2
  store i32 -2, i32* %261, align 4
  br label %140

262:                                              ; preds = %221, %178
  store i64 0, i64* %20, align 8
  store i32 0, i32* %13, align 4
  br label %263

263:                                              ; preds = %327, %262
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = load i64, i64* %10, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %330

268:                                              ; preds = %263
  %269 = load i8*, i8** %7, align 8
  %270 = load i32, i32* %13, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  store i32 %274, i32* %24, align 4
  store i64 0, i64* %23, align 8
  br label %275

275:                                              ; preds = %303, %268
  %276 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %277 = load i32, i32* %24, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %276, i64 %278
  %280 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = icmp ne i32 %281, -2
  br i1 %282, label %283, label %312

283:                                              ; preds = %275
  %284 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %285 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %286 = load i32, i32* %24, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %285, i64 %287
  %289 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %284, i64 %291
  %293 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %292, i32 0, i32 3
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %24, align 4
  %296 = icmp eq i32 %294, %295
  br i1 %296, label %297, label %300

297:                                              ; preds = %283
  %298 = load i64, i64* %23, align 8
  %299 = getelementptr inbounds [30 x i8], [30 x i8]* %25, i64 0, i64 %298
  store i8 48, i8* %299, align 1
  br label %303

300:                                              ; preds = %283
  %301 = load i64, i64* %23, align 8
  %302 = getelementptr inbounds [30 x i8], [30 x i8]* %25, i64 0, i64 %301
  store i8 49, i8* %302, align 1
  br label %303

303:                                              ; preds = %300, %297
  %304 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %305 = load i32, i32* %24, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %304, i64 %306
  %308 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %24, align 4
  %310 = load i64, i64* %23, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %23, align 8
  br label %275

312:                                              ; preds = %275
  br label %313

313:                                              ; preds = %317, %312
  %314 = load i64, i64* %23, align 8
  %315 = add nsw i64 %314, -1
  store i64 %315, i64* %23, align 8
  %316 = icmp ne i64 %314, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i8*, i8** %8, align 8
  %319 = load i64, i64* %20, align 8
  %320 = trunc i64 %319 to i32
  %321 = load i64, i64* %23, align 8
  %322 = getelementptr inbounds [30 x i8], [30 x i8]* %25, i64 0, i64 %321
  %323 = load i8, i8* %322, align 1
  call void @SetCompBit(i8* %318, i32 %320, i8 signext %323)
  %324 = load i64, i64* %20, align 8
  %325 = add nsw i64 %324, 1
  store i64 %325, i64* %20, align 8
  br label %313

326:                                              ; preds = %313
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %13, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %13, align 4
  br label %263

330:                                              ; preds = %263
  %331 = load i64, i64* %20, align 8
  store i64 %331, i64* %22, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  br label %332

332:                                              ; preds = %377, %330
  %333 = load i32, i32* %15, align 4
  store i32 %333, i32* %13, align 4
  br label %334

334:                                              ; preds = %362, %332
  %335 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %335, i64 %337
  %339 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, -1
  br i1 %341, label %342, label %365

342:                                              ; preds = %334
  %343 = load i8*, i8** %8, align 8
  %344 = load i64, i64* %20, align 8
  %345 = trunc i64 %344 to i32
  %346 = call i32 @GetCompBit(i8* %343, i32 %345)
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %342
  %349 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %349, i64 %351
  %353 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* %13, align 4
  br label %362

355:                                              ; preds = %342
  %356 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %356, i64 %358
  %360 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %359, i32 0, i32 4
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %13, align 4
  br label %362

362:                                              ; preds = %355, %348
  %363 = load i64, i64* %20, align 8
  %364 = add nsw i64 %363, 1
  store i64 %364, i64* %20, align 8
  br label %334

365:                                              ; preds = %334
  %366 = load %struct.huff_node*, %struct.huff_node** %12, align 8
  %367 = load i32, i32* %13, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %366, i64 %368
  %370 = getelementptr inbounds %struct.huff_node, %struct.huff_node* %369, i32 0, i32 0
  %371 = load i8, i8* %370, align 4
  %372 = load i8*, i8** %9, align 8
  %373 = load i64, i64* %21, align 8
  %374 = getelementptr inbounds i8, i8* %372, i64 %373
  store i8 %371, i8* %374, align 1
  %375 = load i64, i64* %21, align 8
  %376 = add nsw i64 %375, 1
  store i64 %376, i64* %21, align 8
  br label %377

377:                                              ; preds = %365
  %378 = load i64, i64* %20, align 8
  %379 = load i64, i64* %22, align 8
  %380 = icmp slt i64 %378, %379
  br i1 %380, label %332, label %381

381:                                              ; preds = %377
  br label %28

382:                                              ; preds = %28
  %383 = load i64, i64* %26, align 8
  %384 = call i64 @StopStopwatch(i64 %383)
  ret i64 %384
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind uwtable
define internal void @SetCompBit(i8* %0, i32 %1, i8 signext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 %2, i8* %6, align 1
  %9 = load i32, i32* %5, align 4
  %10 = lshr i32 %9, 3
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = urem i32 %11, 8
  store i32 %12, i32* %8, align 4
  %13 = load i8, i8* %6, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 49
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %18
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  br label %39

27:                                               ; preds = %3
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, %30
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %34, align 1
  br label %39

39:                                               ; preds = %27, %16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @GetCompBit(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = lshr i32 %7, 3
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = urem i32 %9, 8
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 1, %11
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %12, %18
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define internal void @create_text_line(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [40 x i8], align 16
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %44, %2
  %10 = call i32 @abs_randwc(i32 50)
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [50 x i8*], [50 x i8*]* @wordcatarray, i64 0, i64 %11
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i64 @strlen(i8* %16) #10
  %18 = add i64 %17, 1
  call void @MoveMemory(i8* %14, i8* %15, i64 %18)
  %19 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %20 = call i64 @strlen(i8* %19) #10
  %21 = add i64 %20, 1
  store i64 %21, i64* %6, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub nsw i64 %22, 1
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %23
  store i8 32, i8* %24, align 1
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %4, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %9
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %6, align 8
  br label %34

34:                                               ; preds = %30, %9
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0
  %37 = load i64, i64* %6, align 8
  call void @MoveMemory(i8* %35, i8* %36, i64 %37)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %3, align 8
  br label %44

44:                                               ; preds = %34
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %9, label %48

48:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoNNET() #0 {
  %1 = alloca %struct.FourierStruct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca double, align 8
  store %struct.FourierStruct* @global_nnetstruct, %struct.FourierStruct** %1, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60.177, i64 0, i64 0), i8** %2, align 8
  %5 = call i32 @randnum(i32 3)
  %6 = call i32 @read_data_file()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %9

9:                                                ; preds = %8, %0
  %10 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %11 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %16 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %15, i32 0, i32 2
  store i64 1, i64* %16, align 8
  br label %17

17:                                               ; preds = %32, %14
  %18 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %19 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %20, 500000
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = call i32 @randnum(i32 3)
  %24 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %25 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @DoNNetIteration(i64 %26)
  %28 = load i64, i64* @global_min_ticks, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %37

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %34 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %17

37:                                               ; preds = %30, %17
  br label %38

38:                                               ; preds = %37, %9
  store i64 0, i64* %3, align 8
  store double 0.000000e+00, double* %4, align 8
  br label %39

39:                                               ; preds = %53, %38
  %40 = call i32 @randnum(i32 3)
  %41 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %42 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @DoNNetIteration(i64 %43)
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %3, align 8
  %47 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %48 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = uitofp i64 %49 to double
  %51 = load double, double* %4, align 8
  %52 = fadd double %51, %50
  store double %52, double* %4, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load double, double* %4, align 8
  %55 = fcmp olt double %54, 1.200000e+01
  br i1 %55, label %39, label %56

56:                                               ; preds = %53
  %57 = load double, double* %4, align 8
  %58 = load i64, i64* %3, align 8
  %59 = call double @TicksToFracSecs(i64 %58)
  %60 = fdiv double %57, %59
  %61 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %62 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %61, i32 0, i32 3
  store double %60, double* %62, align 8
  %63 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %64 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %69 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %56
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_data_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
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
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = load i8*, i8** @inpath, align 8
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64.178, i64 0, i64 0))
  store %struct._IO_FILE* %20, %struct._IO_FILE** %2, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %22 = icmp eq %struct._IO_FILE* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %0
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.65.179, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %248

25:                                               ; preds = %0
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66.180, i64 0, i64 0), i32* %3, i32* %4, i32* %5)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67.181, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %1, align 4
  br label %248

33:                                               ; preds = %25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68.182, i64 0, i64 0), i32* @numpats)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.69.183, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %1, align 4
  br label %248

41:                                               ; preds = %33
  %42 = load i32, i32* @numpats, align 4
  %43 = icmp sgt i32 %42, 10
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 10, i32* @numpats, align 4
  br label %45

45:                                               ; preds = %44, %41
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %242, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @numpats, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %245

50:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %116, %50
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %119

55:                                               ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70.184, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14, i32* %15)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 5
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.71.185, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %248

62:                                               ; preds = %55
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %3, align 4
  %65 = mul nsw i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %11, align 4
  %67 = sitofp i32 %66 to double
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %69
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [35 x double], [35 x double]* %70, i64 0, i64 %72
  store double %67, double* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sitofp i32 %76 to double
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %79
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [35 x double], [35 x double]* %80, i64 0, i64 %82
  store double %77, double* %83, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sitofp i32 %86 to double
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %89
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [35 x double], [35 x double]* %90, i64 0, i64 %92
  store double %87, double* %93, align 8
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %14, align 4
  %97 = sitofp i32 %96 to double
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %99
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [35 x double], [35 x double]* %100, i64 0, i64 %102
  store double %97, double* %103, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sitofp i32 %106 to double
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %109
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [35 x double], [35 x double]* %110, i64 0, i64 %112
  store double %107, double* %113, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %62
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %51

119:                                              ; preds = %51
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %156, %119
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 35
  br i1 %122, label %123, label %159

123:                                              ; preds = %120
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %125
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [35 x double], [35 x double]* %126, i64 0, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fcmp oge double %130, 9.000000e-01
  br i1 %131, label %132, label %139

132:                                              ; preds = %123
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [35 x double], [35 x double]* %135, i64 0, i64 %137
  store double 9.000000e-01, double* %138, align 8
  br label %139

139:                                              ; preds = %132, %123
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %141
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [35 x double], [35 x double]* %142, i64 0, i64 %144
  %146 = load double, double* %145, align 8
  %147 = fcmp ole double %146, 1.000000e-01
  br i1 %147, label %148, label %155

148:                                              ; preds = %139
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %150
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [35 x double], [35 x double]* %151, i64 0, i64 %153
  store double 1.000000e-01, double* %154, align 8
  br label %155

155:                                              ; preds = %148, %139
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %120

159:                                              ; preds = %120
  store i32 0, i32* %7, align 4
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72.186, i64 0, i64 0), i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = sitofp i32 %162 to double
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %165
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x double], [8 x double]* %166, i64 0, i64 %168
  store double %163, double* %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  %172 = load i32, i32* %12, align 4
  %173 = sitofp i32 %172 to double
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %175
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x double], [8 x double]* %176, i64 0, i64 %178
  store double %173, double* %179, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %13, align 4
  %183 = sitofp i32 %182 to double
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %185
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [8 x double], [8 x double]* %186, i64 0, i64 %188
  store double %183, double* %189, align 8
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* %14, align 4
  %193 = sitofp i32 %192 to double
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %195
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [8 x double], [8 x double]* %196, i64 0, i64 %198
  store double %193, double* %199, align 8
  %200 = load i32, i32* %7, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %15, align 4
  %203 = sitofp i32 %202 to double
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %205
  %207 = load i32, i32* %7, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [8 x double], [8 x double]* %206, i64 0, i64 %208
  store double %203, double* %209, align 8
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %16, align 4
  %213 = sitofp i32 %212 to double
  %214 = load i32, i32* %6, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %215
  %217 = load i32, i32* %7, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [8 x double], [8 x double]* %216, i64 0, i64 %218
  store double %213, double* %219, align 8
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* %17, align 4
  %223 = sitofp i32 %222 to double
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %225
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x double], [8 x double]* %226, i64 0, i64 %228
  store double %223, double* %229, align 8
  %230 = load i32, i32* %7, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %18, align 4
  %233 = sitofp i32 %232 to double
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %235
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [8 x double], [8 x double]* %236, i64 0, i64 %238
  store double %233, double* %239, align 8
  %240 = load i32, i32* %7, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %7, align 4
  br label %242

242:                                              ; preds = %159
  %243 = load i32, i32* %6, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %6, align 4
  br label %46

245:                                              ; preds = %46
  %246 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %247 = call i32 @fclose(%struct._IO_FILE* %246)
  store i32 0, i32* %1, align 4
  br label %248

248:                                              ; preds = %245, %60, %38, %30, %23
  %249 = load i32, i32* %1, align 4
  ret i32 %249
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoNNetIteration(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %5, i64* %3, align 8
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i64, i64* %2, align 8
  %8 = add i64 %7, -1
  store i64 %8, i64* %2, align 8
  %9 = icmp ne i64 %7, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  call void @randomize_wts()
  call void @zero_changes()
  store i32 1, i32* @iteration_count, align 4
  store i32 0, i32* @learned, align 4
  store i32 0, i32* @numpasses, align 4
  br label %11

11:                                               ; preds = %27, %10
  %12 = load i32, i32* @learned, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %24, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @numpats, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  store double 0.000000e+00, double* @worst_error, align 8
  call void @move_wt_changes()
  %20 = load i32, i32* %4, align 4
  call void @do_forward_pass(i32 %20)
  %21 = load i32, i32* %4, align 4
  call void @do_back_pass(i32 %21)
  %22 = load i32, i32* @iteration_count, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @iteration_count, align 4
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* @numpasses, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @numpasses, align 4
  %30 = call i32 @check_out_error()
  store i32 %30, i32* @learned, align 4
  br label %11

31:                                               ; preds = %11
  br label %6

32:                                               ; preds = %6
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @StopStopwatch(i64 %33)
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define internal void @randomize_wts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %29, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %32

7:                                                ; preds = %4
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %25, %7
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 35
  br i1 %10, label %11, label %28

11:                                               ; preds = %8
  %12 = call i32 @abs_randwc(i32 100000)
  %13 = uitofp i32 %12 to double
  store double %13, double* %3, align 8
  %14 = load double, double* %3, align 8
  %15 = fdiv double %14, 1.000000e+05
  %16 = fsub double %15, 5.000000e-01
  store double %16, double* %3, align 8
  %17 = load double, double* %3, align 8
  %18 = fdiv double %17, 2.000000e+00
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i64 0, i64 %20
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [35 x double], [35 x double]* %21, i64 0, i64 %23
  store double %18, double* %24, align 8
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %8

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %4

32:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %58, %32
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 8
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %2, align 4
  %39 = icmp slt i32 %38, 8
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = call i32 @abs_randwc(i32 100000)
  %42 = uitofp i32 %41 to double
  store double %42, double* %3, align 8
  %43 = load double, double* %3, align 8
  %44 = fdiv double %43, 1.000000e+04
  %45 = fsub double %44, 5.000000e-01
  store double %45, double* %3, align 8
  %46 = load double, double* %3, align 8
  %47 = fdiv double %46, 2.000000e+00
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i64 0, i64 %49
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x double], [8 x double]* %50, i64 0, i64 %52
  store double %47, double* %53, align 8
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %37

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %1, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %1, align 4
  br label %33

61:                                               ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @zero_changes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %27, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 8
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %23, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 35
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i64 0, i64 %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [35 x double], [35 x double]* %13, i64 0, i64 %15
  store double 0.000000e+00, double* %16, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i64 0, i64 %18
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [35 x double], [35 x double]* %19, i64 0, i64 %21
  store double 0.000000e+00, double* %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %2, align 4
  br label %7

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %1, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %1, align 4
  br label %3

30:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %1, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i32, i32* %2, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i64 0, i64 %40
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x double], [8 x double]* %41, i64 0, i64 %43
  store double 0.000000e+00, double* %44, align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i64 0, i64 %46
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x double], [8 x double]* %47, i64 0, i64 %49
  store double 0.000000e+00, double* %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %35

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %31

58:                                               ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @move_wt_changes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %34, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 8
  br i1 %5, label %6, label %37

6:                                                ; preds = %3
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %30, %6
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 35
  br i1 %9, label %10, label %33

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i64 0, i64 %12
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [35 x double], [35 x double]* %13, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i64 0, i64 %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [35 x double], [35 x double]* %20, i64 0, i64 %22
  store double %17, double* %23, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i64 0, i64 %25
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [35 x double], [35 x double]* %26, i64 0, i64 %28
  store double 0.000000e+00, double* %29, align 8
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %7

33:                                               ; preds = %7
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %3

37:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %69, %37
  %39 = load i32, i32* %1, align 4
  %40 = icmp slt i32 %39, 8
  br i1 %40, label %41, label %72

41:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %43, 8
  br i1 %44, label %45, label %68

45:                                               ; preds = %42
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i64 0, i64 %47
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x double], [8 x double]* %48, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i64 0, i64 %54
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x double], [8 x double]* %55, i64 0, i64 %57
  store double %52, double* %58, align 8
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i64 0, i64 %60
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x double], [8 x double]* %61, i64 0, i64 %63
  store double 0.000000e+00, double* %64, align 8
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  br label %42

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %1, align 4
  br label %38

72:                                               ; preds = %38
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_forward_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @do_mid_forward(i32 %3)
  call void @do_out_forward()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_back_pass(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @do_out_error(i32 %3)
  call void @do_mid_error()
  call void @adjust_out_wts()
  %4 = load i32, i32* %2, align 4
  call void @adjust_mid_wts(i32 %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @check_out_error() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  store i32 0, i32* %3, align 4
  call void @worst_pass_error()
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @numpats, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load double, double* @worst_error, align 8
  %10 = fcmp oge double %9, 1.000000e-01
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i64 0, i64 %14
  %16 = load double, double* %15, align 8
  %17 = fcmp oge double %16, 1.600000e+01
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %19

19:                                               ; preds = %18, %12
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %2, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %2, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 -1, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal void @worst_pass_error() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double 0.000000e+00, double* %1, align 8
  store double 0.000000e+00, double* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @numpats, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i64 0, i64 %10
  %12 = load double, double* %11, align 8
  %13 = load double, double* %1, align 8
  %14 = fcmp ogt double %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i64 0, i64 %17
  %19 = load double, double* %18, align 8
  store double %19, double* %1, align 8
  br label %20

20:                                               ; preds = %15, %8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x double], [10 x double]* @avg_out_error, i64 0, i64 %22
  %24 = load double, double* %23, align 8
  %25 = load double, double* %2, align 8
  %26 = fadd double %25, %24
  store double %26, double* %2, align 8
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %4

30:                                               ; preds = %4
  %31 = load double, double* %1, align 8
  store double %31, double* @worst_error, align 8
  %32 = load double, double* %2, align 8
  %33 = load i32, i32* @numpats, align 4
  %34 = sitofp i32 %33 to double
  %35 = fdiv double %32, %34
  store double %35, double* @average_error, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_out_error(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store double 0.000000e+00, double* %5, align 8
  store double 0.000000e+00, double* %6, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %56, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %59

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x [8 x double]], [10 x [8 x double]]* @out_pats, i64 0, i64 %12
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x double], [8 x double]* %13, i64 0, i64 %15
  %17 = load double, double* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x double], [8 x double]* @out_out, i64 0, i64 %19
  %21 = load double, double* %20, align 8
  %22 = fsub double %17, %21
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i64 0, i64 %24
  store double %22, double* %25, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i64 0, i64 %27
  %29 = load double, double* %28, align 8
  store double %29, double* %4, align 8
  %30 = load double, double* %4, align 8
  %31 = fcmp olt double %30, 0.000000e+00
  br i1 %31, label %32, label %45

32:                                               ; preds = %10
  %33 = load double, double* %4, align 8
  %34 = fneg double %33
  %35 = load double, double* %6, align 8
  %36 = fadd double %35, %34
  store double %36, double* %6, align 8
  %37 = load double, double* %4, align 8
  %38 = fneg double %37
  %39 = load double, double* %5, align 8
  %40 = fcmp ogt double %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load double, double* %4, align 8
  %43 = fneg double %42
  store double %43, double* %5, align 8
  br label %44

44:                                               ; preds = %41, %32
  br label %55

45:                                               ; preds = %10
  %46 = load double, double* %4, align 8
  %47 = load double, double* %6, align 8
  %48 = fadd double %47, %46
  store double %48, double* %6, align 8
  %49 = load double, double* %4, align 8
  %50 = load double, double* %5, align 8
  %51 = fcmp ogt double %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load double, double* %4, align 8
  store double %53, double* %5, align 8
  br label %54

54:                                               ; preds = %52, %45
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %7

59:                                               ; preds = %7
  %60 = load double, double* %6, align 8
  %61 = fdiv double %60, 8.000000e+00
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [10 x double], [10 x double]* @avg_out_error, i64 0, i64 %63
  store double %61, double* %64, align 8
  %65 = load double, double* %5, align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [10 x double], [10 x double]* @tot_out_error, i64 0, i64 %67
  store double %65, double* %68, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_mid_error() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %45, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %48

7:                                                ; preds = %4
  store double 0.000000e+00, double* %1, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i64 0, i64 %13
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %18, %22
  %24 = load double, double* %1, align 8
  %25 = fadd double %24, %23
  store double %25, double* %1, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i64 0, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fsub double 1.000000e+00, %37
  %39 = fmul double %33, %38
  %40 = load double, double* %1, align 8
  %41 = fmul double %39, %40
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x double], [8 x double]* @mid_error, i64 0, i64 %43
  store double %41, double* %44, align 8
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %4

48:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @adjust_out_wts() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store double 0x3FB70A3D70A3D70A, double* %3, align 8
  store double 0x3FB70A3D70A3D70A, double* %5, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %58, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %54, %9
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %57

13:                                               ; preds = %10
  %14 = load double, double* %3, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x double], [8 x double]* @out_error, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = fmul double %14, %18
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i64 0, i64 %21
  %23 = load double, double* %22, align 8
  %24 = fmul double %19, %23
  store double %24, double* %4, align 8
  %25 = load double, double* %5, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_change, i64 0, i64 %27
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x double], [8 x double]* %28, i64 0, i64 %30
  %32 = load double, double* %31, align 8
  %33 = fmul double %25, %32
  %34 = load double, double* %4, align 8
  %35 = fadd double %34, %33
  store double %35, double* %4, align 8
  %36 = load double, double* %4, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i64 0, i64 %38
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x double], [8 x double]* %39, i64 0, i64 %41
  %43 = load double, double* %42, align 8
  %44 = fadd double %43, %36
  store double %44, double* %42, align 8
  %45 = load double, double* %4, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wt_cum_change, i64 0, i64 %47
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x double], [8 x double]* %48, i64 0, i64 %50
  %52 = load double, double* %51, align 8
  %53 = fadd double %52, %45
  store double %53, double* %51, align 8
  br label %54

54:                                               ; preds = %13
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %10

57:                                               ; preds = %10
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %2, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %2, align 4
  br label %6

61:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @adjust_mid_wts(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  store double 0x3FB70A3D70A3D70A, double* %5, align 8
  store double 0x3FB70A3D70A3D70A, double* %6, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %63, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %66

11:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %59, %11
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 35
  br i1 %14, label %15, label %62

15:                                               ; preds = %12
  %16 = load double, double* %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x double], [8 x double]* @mid_error, i64 0, i64 %18
  %20 = load double, double* %19, align 8
  %21 = fmul double %16, %20
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %23
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [35 x double], [35 x double]* %24, i64 0, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double %21, %28
  store double %29, double* %7, align 8
  %30 = load double, double* %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_change, i64 0, i64 %32
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [35 x double], [35 x double]* %33, i64 0, i64 %35
  %37 = load double, double* %36, align 8
  %38 = fmul double %30, %37
  %39 = load double, double* %7, align 8
  %40 = fadd double %39, %38
  store double %40, double* %7, align 8
  %41 = load double, double* %7, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i64 0, i64 %43
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [35 x double], [35 x double]* %44, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %41
  store double %49, double* %47, align 8
  %50 = load double, double* %7, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wt_cum_change, i64 0, i64 %52
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [35 x double], [35 x double]* %53, i64 0, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %57, %50
  store double %58, double* %56, align 8
  br label %59

59:                                               ; preds = %15
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %3, align 4
  br label %12

62:                                               ; preds = %12
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %8

66:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_mid_forward(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %47

9:                                                ; preds = %6
  store double 0.000000e+00, double* %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 35
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x [35 x double]], [8 x [35 x double]]* @mid_wts, i64 0, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [35 x double], [35 x double]* %16, i64 0, i64 %18
  %20 = load double, double* %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x [35 x double]], [10 x [35 x double]]* @in_pats, i64 0, i64 %22
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [35 x double], [35 x double]* %23, i64 0, i64 %25
  %27 = load double, double* %26, align 8
  %28 = fmul double %20, %27
  %29 = load double, double* %3, align 8
  %30 = fadd double %29, %28
  store double %30, double* %3, align 8
  br label %31

31:                                               ; preds = %13
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %10

34:                                               ; preds = %10
  %35 = load double, double* %3, align 8
  %36 = fneg double %35
  %37 = call double @exp(double %36) #9
  %38 = fadd double 1.000000e+00, %37
  %39 = fdiv double 1.000000e+00, %38
  store double %39, double* %3, align 8
  %40 = load double, double* %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i64 0, i64 %42
  store double %40, double* %43, align 8
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %6

47:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @do_out_forward() #0 {
  %1 = alloca double, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %39, %0
  %5 = load i32, i32* %2, align 4
  %6 = icmp slt i32 %5, 8
  br i1 %6, label %7, label %42

7:                                                ; preds = %4
  store double 0.000000e+00, double* %1, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %26, %7
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* @out_wts, i64 0, i64 %13
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x double], [8 x double]* %14, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x double], [8 x double]* @mid_out, i64 0, i64 %20
  %22 = load double, double* %21, align 8
  %23 = fmul double %18, %22
  %24 = load double, double* %1, align 8
  %25 = fadd double %24, %23
  store double %25, double* %1, align 8
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load double, double* %1, align 8
  %31 = fneg double %30
  %32 = call double @exp(double %31) #9
  %33 = fadd double 1.000000e+00, %32
  %34 = fdiv double 1.000000e+00, %33
  store double %34, double* %1, align 8
  %35 = load double, double* %1, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x double], [8 x double]* @out_out, i64 0, i64 %37
  store double %35, double* %38, align 8
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  br label %4

42:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #4

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @DoLU() #0 {
  %1 = alloca %struct.FourierStruct*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca %struct.LUdblptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca double, align 8
  store %struct.FourierStruct* @global_lustruct, %struct.FourierStruct** %1, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61.189, i64 0, i64 0), i8** %2, align 8
  %13 = call i8* @AllocateMemory(i64 81608, i32* %3)
  %14 = bitcast i8* %13 to double*
  store double* %14, double** %4, align 8
  %15 = call i8* @AllocateMemory(i64 808, i32* %3)
  %16 = bitcast i8* %15 to double*
  store double* %16, double** %5, align 8
  store i32 101, i32* %9, align 4
  %17 = call i8* @AllocateMemory(i64 808, i32* %3)
  %18 = bitcast i8* %17 to double*
  store double* %18, double** @LUtempvv, align 8
  %19 = load double*, double** %4, align 8
  %20 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %8, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to double**
  store double* %19, double** %21, align 8
  %22 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %8, i32 0, i32 0
  %23 = bitcast %union.anon* %22 to [0 x [101 x double]]**
  %24 = load [0 x [101 x double]]*, [0 x [101 x double]]** %23, align 8
  %25 = getelementptr inbounds [0 x [101 x double]], [0 x [101 x double]]* %24, i64 0, i64 0
  %26 = load i32, i32* %9, align 4
  %27 = load double*, double** %5, align 8
  call void @build_problem([101 x double]* %25, i32 %26, double* %27)
  %28 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %29 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %102

32:                                               ; preds = %0
  %33 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %34 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  store i32 1, i32* %10, align 4
  br label %35

35:                                               ; preds = %87, %32
  %36 = load i32, i32* %10, align 4
  %37 = icmp sle i32 %36, 10000
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 81608, %41
  %43 = call i8* @AllocateMemory(i64 %42, i32* %3)
  %44 = bitcast i8* %43 to double*
  store double* %44, double** %6, align 8
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i8*, i8** %2, align 8
  %49 = load i32, i32* %3, align 4
  call void @ReportError(i8* %48, i32 %49)
  %50 = load double*, double** %4, align 8
  %51 = load double*, double** %5, align 8
  call void @LUFreeMem(double* %50, double* %51, double* null, double* null)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %52

52:                                               ; preds = %47, %38
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = mul i64 808, %55
  %57 = call i8* @AllocateMemory(i64 %56, i32* %3)
  %58 = bitcast i8* %57 to double*
  store double* %58, double** %7, align 8
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %52
  %62 = load i8*, i8** %2, align 8
  %63 = load i32, i32* %3, align 4
  call void @ReportError(i8* %62, i32 %63)
  %64 = load double*, double** %4, align 8
  %65 = load double*, double** %5, align 8
  %66 = load double*, double** %6, align 8
  call void @LUFreeMem(double* %64, double* %65, double* %66, double* null)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %67

67:                                               ; preds = %61, %52
  %68 = load double*, double** %4, align 8
  %69 = load double*, double** %5, align 8
  %70 = load double*, double** %6, align 8
  %71 = load double*, double** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = call i64 @DoLUIteration(double* %68, double* %69, double* %70, double* %71, i64 %73)
  %75 = load i64, i64* @global_min_ticks, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %67
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %81 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %90

82:                                               ; preds = %67
  %83 = load double*, double** %6, align 8
  %84 = bitcast double* %83 to i8*
  call void @FreeMemory(i8* %84, i32* %3)
  %85 = load double*, double** %7, align 8
  %86 = bitcast double* %85 to i8*
  call void @FreeMemory(i8* %86, i32* %3)
  br label %87

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %35

90:                                               ; preds = %77, %35
  %91 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %92 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62.190, i64 0, i64 0))
  %97 = load double*, double** %4, align 8
  %98 = load double*, double** %5, align 8
  %99 = load double*, double** %6, align 8
  %100 = load double*, double** %7, align 8
  call void @LUFreeMem(double* %97, double* %98, double* %99, double* %100)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %101

101:                                              ; preds = %95, %90
  br label %132

102:                                              ; preds = %0
  %103 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %104 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = mul i64 81608, %105
  %107 = call i8* @AllocateMemory(i64 %106, i32* %3)
  %108 = bitcast i8* %107 to double*
  store double* %108, double** %6, align 8
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %102
  %112 = load i8*, i8** %2, align 8
  %113 = load i32, i32* %3, align 4
  call void @ReportError(i8* %112, i32 %113)
  %114 = load double*, double** %4, align 8
  %115 = load double*, double** %5, align 8
  call void @LUFreeMem(double* %114, double* %115, double* null, double* null)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %116

116:                                              ; preds = %111, %102
  %117 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %118 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = mul i64 808, %119
  %121 = call i8* @AllocateMemory(i64 %120, i32* %3)
  %122 = bitcast i8* %121 to double*
  store double* %122, double** %7, align 8
  %123 = load i32, i32* %3, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load i8*, i8** %2, align 8
  %127 = load i32, i32* %3, align 4
  call void @ReportError(i8* %126, i32 %127)
  %128 = load double*, double** %4, align 8
  %129 = load double*, double** %5, align 8
  %130 = load double*, double** %6, align 8
  call void @LUFreeMem(double* %128, double* %129, double* %130, double* null)
  call void (...) bitcast (void ()* @ErrorExit to void (...)*)()
  br label %131

131:                                              ; preds = %125, %116
  br label %132

132:                                              ; preds = %131, %101
  store i64 0, i64* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  br label %133

133:                                              ; preds = %150, %132
  %134 = load double*, double** %4, align 8
  %135 = load double*, double** %5, align 8
  %136 = load double*, double** %6, align 8
  %137 = load double*, double** %7, align 8
  %138 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %139 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @DoLUIteration(double* %134, double* %135, double* %136, double* %137, i64 %140)
  %142 = load i64, i64* %11, align 8
  %143 = add i64 %142, %141
  store i64 %143, i64* %11, align 8
  %144 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %145 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = uitofp i64 %146 to double
  %148 = load double, double* %12, align 8
  %149 = fadd double %148, %147
  store double %149, double* %12, align 8
  br label %150

150:                                              ; preds = %133
  %151 = load double, double* %12, align 8
  %152 = fcmp olt double %151, 5.000000e+02
  br i1 %152, label %133, label %153

153:                                              ; preds = %150
  %154 = load double, double* %12, align 8
  %155 = load i64, i64* %11, align 8
  %156 = call double @TicksToFracSecs(i64 %155)
  %157 = fdiv double %154, %156
  %158 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %159 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %158, i32 0, i32 3
  store double %157, double* %159, align 8
  %160 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %161 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %153
  %165 = load %struct.FourierStruct*, %struct.FourierStruct** %1, align 8
  %166 = getelementptr inbounds %struct.FourierStruct, %struct.FourierStruct* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %164, %153
  %168 = load double*, double** %4, align 8
  %169 = load double*, double** %5, align 8
  %170 = load double*, double** %6, align 8
  %171 = load double*, double** %7, align 8
  call void @LUFreeMem(double* %168, double* %169, double* %170, double* %171)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @build_problem([101 x double]* %0, i32 %1, double* %2) #0 {
  %4 = alloca [101 x double]*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca double, align 8
  store [101 x double]* %0, [101 x double]** %4, align 8
  store i32 %1, i32* %5, align 4
  store double* %2, double** %6, align 8
  %12 = call i32 @randnum(i32 13)
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %54, %3
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %13
  %19 = call i32 @abs_randwc(i32 100)
  %20 = add i32 %19, 1
  %21 = uitofp i32 %20 to double
  %22 = load double*, double** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds double, double* %22, i64 %23
  store double %21, double* %24, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %50, %18
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %25
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = call i32 @abs_randwc(i32 1000)
  %36 = add i32 %35, 1
  %37 = uitofp i32 %36 to double
  %38 = load [101 x double]*, [101 x double]** %4, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds [101 x double], [101 x double]* %38, i64 %39
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds [101 x double], [101 x double]* %40, i64 0, i64 %41
  store double %37, double* %42, align 8
  br label %49

43:                                               ; preds = %30
  %44 = load [101 x double]*, [101 x double]** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds [101 x double], [101 x double]* %44, i64 %45
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds [101 x double], [101 x double]* %46, i64 0, i64 %47
  store double 0.000000e+00, double* %48, align 8
  br label %49

49:                                               ; preds = %43, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %25

53:                                               ; preds = %25
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %7, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %13

57:                                               ; preds = %13
  store i64 0, i64* %7, align 8
  br label %58

58:                                               ; preds = %118, %57
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 8, %60
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %121

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @abs_randwc(i32 %65)
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %9, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @abs_randwc(i32 %68)
  %70 = zext i32 %69 to i64
  store i64 %70, i64* %10, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %117

74:                                               ; preds = %64
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store double 1.000000e+00, double* %11, align 8
  br label %80

79:                                               ; preds = %74
  store double -1.000000e+00, double* %11, align 8
  br label %80

80:                                               ; preds = %79, %78
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %102, %80
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load [101 x double]*, [101 x double]** %4, align 8
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds [101 x double], [101 x double]* %87, i64 %88
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds [101 x double], [101 x double]* %89, i64 0, i64 %90
  %92 = load double, double* %91, align 8
  %93 = load double, double* %11, align 8
  %94 = fmul double %92, %93
  %95 = load [101 x double]*, [101 x double]** %4, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds [101 x double], [101 x double]* %95, i64 %96
  %98 = load i64, i64* %8, align 8
  %99 = getelementptr inbounds [101 x double], [101 x double]* %97, i64 0, i64 %98
  %100 = load double, double* %99, align 8
  %101 = fadd double %100, %94
  store double %101, double* %99, align 8
  br label %102

102:                                              ; preds = %86
  %103 = load i64, i64* %8, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %8, align 8
  br label %81

105:                                              ; preds = %81
  %106 = load double*, double** %6, align 8
  %107 = load i64, i64* %10, align 8
  %108 = getelementptr inbounds double, double* %106, i64 %107
  %109 = load double, double* %108, align 8
  %110 = load double, double* %11, align 8
  %111 = fmul double %109, %110
  %112 = load double*, double** %6, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds double, double* %112, i64 %113
  %115 = load double, double* %114, align 8
  %116 = fadd double %115, %111
  store double %116, double* %114, align 8
  br label %117

117:                                              ; preds = %105, %64
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %7, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %7, align 8
  br label %58

121:                                              ; preds = %58
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @LUFreeMem(double* %0, double* %1, double* %2, double* %3) #0 {
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  store double* %0, double** %5, align 8
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %10 = load double*, double** %5, align 8
  %11 = bitcast double* %10 to i8*
  call void @FreeMemory(i8* %11, i32* %9)
  %12 = load double*, double** %6, align 8
  %13 = bitcast double* %12 to i8*
  call void @FreeMemory(i8* %13, i32* %9)
  %14 = load double*, double** @LUtempvv, align 8
  %15 = bitcast double* %14 to i8*
  call void @FreeMemory(i8* %15, i32* %9)
  %16 = load double*, double** %7, align 8
  %17 = icmp ne double* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load double*, double** %7, align 8
  %20 = bitcast double* %19 to i8*
  call void @FreeMemory(i8* %20, i32* %9)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load double*, double** %8, align 8
  %23 = icmp ne double* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load double*, double** %8, align 8
  %26 = bitcast double* %25 to i8*
  call void @FreeMemory(i8* %26, i32* %9)
  br label %27

27:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @DoLUIteration(double* %0, double* %1, double* %2, double* %3, i64 %4) #0 {
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca i64, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca %struct.LUdblptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store double* %0, double** %6, align 8
  store double* %1, double** %7, align 8
  store double* %2, double** %8, align 8
  store double* %3, double** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %61, %5
  %18 = load i64, i64* %15, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %64

21:                                               ; preds = %17
  %22 = load double*, double** %8, align 8
  %23 = load i64, i64* %15, align 8
  %24 = mul i64 %23, 101
  %25 = mul i64 %24, 101
  %26 = getelementptr inbounds double, double* %22, i64 %25
  store double* %26, double** %11, align 8
  %27 = load double*, double** %9, align 8
  %28 = load i64, i64* %15, align 8
  %29 = mul i64 %28, 101
  %30 = getelementptr inbounds double, double* %27, i64 %29
  store double* %30, double** %12, align 8
  store i64 0, i64* %16, align 8
  br label %31

31:                                               ; preds = %42, %21
  %32 = load i64, i64* %16, align 8
  %33 = icmp ult i64 %32, 10201
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load double*, double** %6, align 8
  %36 = load i64, i64* %16, align 8
  %37 = getelementptr inbounds double, double* %35, i64 %36
  %38 = load double, double* %37, align 8
  %39 = load double*, double** %11, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds double, double* %39, i64 %40
  store double %38, double* %41, align 8
  br label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %16, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %16, align 8
  br label %31

45:                                               ; preds = %31
  store i64 0, i64* %16, align 8
  br label %46

46:                                               ; preds = %57, %45
  %47 = load i64, i64* %16, align 8
  %48 = icmp ult i64 %47, 101
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load double*, double** %7, align 8
  %51 = load i64, i64* %16, align 8
  %52 = getelementptr inbounds double, double* %50, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load double*, double** %12, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds double, double* %54, i64 %55
  store double %53, double* %56, align 8
  br label %57

57:                                               ; preds = %49
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %16, align 8
  br label %46

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %15, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %15, align 8
  br label %17

64:                                               ; preds = %17
  %65 = call i64 (...) bitcast (i64 ()* @StartStopwatch to i64 (...)*)()
  store i64 %65, i64* %14, align 8
  store i64 0, i64* %16, align 8
  br label %66

66:                                               ; preds = %89, %64
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %10, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %92

70:                                               ; preds = %66
  %71 = load double*, double** %8, align 8
  %72 = load i64, i64* %16, align 8
  %73 = mul i64 %72, 101
  %74 = mul i64 %73, 101
  %75 = getelementptr inbounds double, double* %71, i64 %74
  store double* %75, double** %11, align 8
  %76 = load double*, double** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = mul i64 %77, 101
  %79 = getelementptr inbounds double, double* %76, i64 %78
  store double* %79, double** %12, align 8
  %80 = load double*, double** %11, align 8
  %81 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %13, i32 0, i32 0
  %82 = bitcast %union.anon* %81 to double**
  store double* %80, double** %82, align 8
  %83 = getelementptr inbounds %struct.LUdblptr, %struct.LUdblptr* %13, i32 0, i32 0
  %84 = bitcast %union.anon* %83 to [0 x [101 x double]]**
  %85 = load [0 x [101 x double]]*, [0 x [101 x double]]** %84, align 8
  %86 = getelementptr inbounds [0 x [101 x double]], [0 x [101 x double]]* %85, i64 0, i64 0
  %87 = load double*, double** %12, align 8
  %88 = call i32 @lusolve([101 x double]* %86, i32 101, double* %87)
  br label %89

89:                                               ; preds = %70
  %90 = load i64, i64* %16, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %66

92:                                               ; preds = %66
  %93 = load i64, i64* %14, align 8
  %94 = call i64 @StopStopwatch(i64 %93)
  ret i64 %94
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @lusolve([101 x double]* %0, i32 %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca [101 x double]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double*, align 8
  %8 = alloca [101 x i32], align 16
  %9 = alloca i32, align 4
  store [101 x double]* %0, [101 x double]** %5, align 8
  store i32 %1, i32* %6, align 4
  store double* %2, double** %7, align 8
  %10 = load [101 x double]*, [101 x double]** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds [101 x i32], [101 x i32]* %8, i64 0, i64 0
  %13 = call i32 @ludcmp([101 x double]* %10, i32 %11, i32* %12, i32* %9)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %21

16:                                               ; preds = %3
  %17 = load [101 x double]*, [101 x double]** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [101 x i32], [101 x i32]* %8, i64 0, i64 0
  %20 = load double*, double** %7, align 8
  call void @lubksb([101 x double]* %17, i32 %18, i32* %19, double* %20)
  store i32 1, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @ludcmp([101 x double]* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [101 x double]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store [101 x double]* %0, [101 x double]** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %16, align 4
  store double 0x3BC79CA10C924223, double* %17, align 8
  %18 = load i32*, i32** %9, align 8
  store i32 1, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %65, %4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  store double 0.000000e+00, double* %10, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %51, %23
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %24
  %29 = load [101 x double]*, [101 x double]** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [101 x double], [101 x double]* %29, i64 %31
  %33 = load i32, i32* %14, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [101 x double], [101 x double]* %32, i64 0, i64 %34
  %36 = load double, double* %35, align 8
  %37 = call double @llvm.fabs.f64(double %36)
  %38 = load double, double* %10, align 8
  %39 = fcmp ogt double %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %28
  %41 = load [101 x double]*, [101 x double]** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [101 x double], [101 x double]* %41, i64 %43
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [101 x double], [101 x double]* %44, i64 0, i64 %46
  %48 = load double, double* %47, align 8
  %49 = call double @llvm.fabs.f64(double %48)
  store double %49, double* %10, align 8
  br label %50

50:                                               ; preds = %40, %28
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  br label %24

54:                                               ; preds = %24
  %55 = load double, double* %10, align 8
  %56 = fcmp oeq double %55, 0.000000e+00
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %347

58:                                               ; preds = %54
  %59 = load double, double* %10, align 8
  %60 = fdiv double 1.000000e+00, %59
  %61 = load double*, double** @LUtempvv, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %61, i64 %63
  store double %60, double* %64, align 8
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %19

68:                                               ; preds = %19
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %343, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %346

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %134

76:                                               ; preds = %73
  store i32 0, i32* %13, align 4
  br label %77

77:                                               ; preds = %130, %76
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %133

81:                                               ; preds = %77
  %82 = load [101 x double]*, [101 x double]** %6, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [101 x double], [101 x double]* %82, i64 %84
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [101 x double], [101 x double]* %85, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  store double %89, double* %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %121

92:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  br label %93

93:                                               ; preds = %117, %92
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %93
  %98 = load [101 x double]*, [101 x double]** %6, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [101 x double], [101 x double]* %98, i64 %100
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [101 x double], [101 x double]* %101, i64 0, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load [101 x double]*, [101 x double]** %6, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [101 x double], [101 x double]* %106, i64 %108
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [101 x double], [101 x double]* %109, i64 0, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fmul double %105, %113
  %115 = load double, double* %11, align 8
  %116 = fsub double %115, %114
  store double %116, double* %11, align 8
  br label %117

117:                                              ; preds = %97
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %93

120:                                              ; preds = %93
  br label %121

121:                                              ; preds = %120, %81
  %122 = load double, double* %11, align 8
  %123 = load [101 x double]*, [101 x double]** %6, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [101 x double], [101 x double]* %123, i64 %125
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [101 x double], [101 x double]* %126, i64 0, i64 %128
  store double %122, double* %129, align 8
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %77

133:                                              ; preds = %77
  br label %134

134:                                              ; preds = %133, %73
  store double 0.000000e+00, double* %10, align 8
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %13, align 4
  br label %136

136:                                              ; preds = %204, %134
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %207

140:                                              ; preds = %136
  %141 = load [101 x double]*, [101 x double]** %6, align 8
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [101 x double], [101 x double]* %141, i64 %143
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [101 x double], [101 x double]* %144, i64 0, i64 %146
  %148 = load double, double* %147, align 8
  store double %148, double* %11, align 8
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %180

151:                                              ; preds = %140
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %176, %151
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load [101 x double]*, [101 x double]** %6, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [101 x double], [101 x double]* %157, i64 %159
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [101 x double], [101 x double]* %160, i64 0, i64 %162
  %164 = load double, double* %163, align 8
  %165 = load [101 x double]*, [101 x double]** %6, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [101 x double], [101 x double]* %165, i64 %167
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [101 x double], [101 x double]* %168, i64 0, i64 %170
  %172 = load double, double* %171, align 8
  %173 = fmul double %164, %172
  %174 = load double, double* %11, align 8
  %175 = fsub double %174, %173
  store double %175, double* %11, align 8
  br label %176

176:                                              ; preds = %156
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %152

179:                                              ; preds = %152
  br label %180

180:                                              ; preds = %179, %140
  %181 = load double, double* %11, align 8
  %182 = load [101 x double]*, [101 x double]** %6, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [101 x double], [101 x double]* %182, i64 %184
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [101 x double], [101 x double]* %185, i64 0, i64 %187
  store double %181, double* %188, align 8
  %189 = load double*, double** @LUtempvv, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds double, double* %189, i64 %191
  %193 = load double, double* %192, align 8
  %194 = load double, double* %11, align 8
  %195 = call double @llvm.fabs.f64(double %194)
  %196 = fmul double %193, %195
  store double %196, double* %12, align 8
  %197 = load double, double* %12, align 8
  %198 = load double, double* %10, align 8
  %199 = fcmp oge double %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %180
  %201 = load double, double* %12, align 8
  store double %201, double* %10, align 8
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %200, %180
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %13, align 4
  br label %136

207:                                              ; preds = %136
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %275

211:                                              ; preds = %207
  store i32 0, i32* %15, align 4
  br label %212

212:                                              ; preds = %248, %211
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %251

216:                                              ; preds = %212
  %217 = load [101 x double]*, [101 x double]** %6, align 8
  %218 = load i32, i32* %16, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [101 x double], [101 x double]* %217, i64 %219
  %221 = load i32, i32* %15, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [101 x double], [101 x double]* %220, i64 0, i64 %222
  %224 = load double, double* %223, align 8
  store double %224, double* %12, align 8
  %225 = load [101 x double]*, [101 x double]** %6, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [101 x double], [101 x double]* %225, i64 %227
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [101 x double], [101 x double]* %228, i64 0, i64 %230
  %232 = load double, double* %231, align 8
  %233 = load [101 x double]*, [101 x double]** %6, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [101 x double], [101 x double]* %233, i64 %235
  %237 = load i32, i32* %15, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [101 x double], [101 x double]* %236, i64 0, i64 %238
  store double %232, double* %239, align 8
  %240 = load double, double* %12, align 8
  %241 = load [101 x double]*, [101 x double]** %6, align 8
  %242 = load i32, i32* %14, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [101 x double], [101 x double]* %241, i64 %243
  %245 = load i32, i32* %15, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [101 x double], [101 x double]* %244, i64 0, i64 %246
  store double %240, double* %247, align 8
  br label %248

248:                                              ; preds = %216
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %212

251:                                              ; preds = %212
  %252 = load i32*, i32** %9, align 8
  %253 = load i32, i32* %252, align 4
  %254 = sub nsw i32 0, %253
  %255 = load i32*, i32** %9, align 8
  store i32 %254, i32* %255, align 4
  %256 = load double*, double** @LUtempvv, align 8
  %257 = load i32, i32* %16, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds double, double* %256, i64 %258
  %260 = load double, double* %259, align 8
  store double %260, double* %12, align 8
  %261 = load double*, double** @LUtempvv, align 8
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds double, double* %261, i64 %263
  %265 = load double, double* %264, align 8
  %266 = load double*, double** @LUtempvv, align 8
  %267 = load i32, i32* %16, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds double, double* %266, i64 %268
  store double %265, double* %269, align 8
  %270 = load double, double* %12, align 8
  %271 = load double*, double** @LUtempvv, align 8
  %272 = load i32, i32* %14, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds double, double* %271, i64 %273
  store double %270, double* %274, align 8
  br label %275

275:                                              ; preds = %251, %207
  %276 = load i32, i32* %16, align 4
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  store i32 %276, i32* %280, align 4
  %281 = load [101 x double]*, [101 x double]** %6, align 8
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [101 x double], [101 x double]* %281, i64 %283
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [101 x double], [101 x double]* %284, i64 0, i64 %286
  %288 = load double, double* %287, align 8
  %289 = fcmp oeq double %288, 0.000000e+00
  br i1 %289, label %290, label %299

290:                                              ; preds = %275
  %291 = load double, double* %17, align 8
  %292 = load [101 x double]*, [101 x double]** %6, align 8
  %293 = load i32, i32* %14, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [101 x double], [101 x double]* %292, i64 %294
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [101 x double], [101 x double]* %295, i64 0, i64 %297
  store double %291, double* %298, align 8
  br label %299

299:                                              ; preds = %290, %275
  %300 = load i32, i32* %14, align 4
  %301 = load i32, i32* %7, align 4
  %302 = sub nsw i32 %301, 1
  %303 = icmp ne i32 %300, %302
  br i1 %303, label %304, label %342

304:                                              ; preds = %299
  %305 = load [101 x double]*, [101 x double]** %6, align 8
  %306 = load i32, i32* %14, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [101 x double], [101 x double]* %305, i64 %307
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [101 x double], [101 x double]* %308, i64 0, i64 %310
  %312 = load double, double* %311, align 8
  %313 = fdiv double 1.000000e+00, %312
  store double %313, double* %12, align 8
  %314 = load i32, i32* %14, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %13, align 4
  br label %316

316:                                              ; preds = %338, %304
  %317 = load i32, i32* %13, align 4
  %318 = load i32, i32* %7, align 4
  %319 = icmp slt i32 %317, %318
  br i1 %319, label %320, label %341

320:                                              ; preds = %316
  %321 = load [101 x double]*, [101 x double]** %6, align 8
  %322 = load i32, i32* %13, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [101 x double], [101 x double]* %321, i64 %323
  %325 = load i32, i32* %14, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [101 x double], [101 x double]* %324, i64 0, i64 %326
  %328 = load double, double* %327, align 8
  %329 = load double, double* %12, align 8
  %330 = fmul double %328, %329
  %331 = load [101 x double]*, [101 x double]** %6, align 8
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [101 x double], [101 x double]* %331, i64 %333
  %335 = load i32, i32* %14, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [101 x double], [101 x double]* %334, i64 0, i64 %336
  store double %330, double* %337, align 8
  br label %338

338:                                              ; preds = %320
  %339 = load i32, i32* %13, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %13, align 4
  br label %316

341:                                              ; preds = %316
  br label %342

342:                                              ; preds = %341, %299
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %69

346:                                              ; preds = %69
  store i32 1, i32* %5, align 4
  br label %347

347:                                              ; preds = %346, %57
  %348 = load i32, i32* %5, align 4
  ret i32 %348
}

; Function Attrs: noinline nounwind uwtable
define internal void @lubksb([101 x double]* %0, i32 %1, i32* %2, double* %3) #0 {
  %5 = alloca [101 x double]*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store [101 x double]* %0, [101 x double]** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store double* %3, double** %8, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %79, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load double*, double** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  store double %28, double* %13, align 8
  %29 = load double*, double** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = load double*, double** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, double* %34, i64 %36
  store double %33, double* %37, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %67

40:                                               ; preds = %18
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %63, %40
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load double, double* %13, align 8
  %48 = load [101 x double]*, [101 x double]** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [101 x double], [101 x double]* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [101 x double], [101 x double]* %51, i64 0, i64 %53
  %55 = load double, double* %54, align 8
  %56 = load double*, double** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds double, double* %56, i64 %58
  %60 = load double, double* %59, align 8
  %61 = fmul double %55, %60
  %62 = fsub double %47, %61
  store double %62, double* %13, align 8
  br label %63

63:                                               ; preds = %46
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %42

66:                                               ; preds = %42
  br label %73

67:                                               ; preds = %18
  %68 = load double, double* %13, align 8
  %69 = fcmp une double %68, 0.000000e+00
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %66
  %74 = load double, double* %13, align 8
  %75 = load double*, double** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds double, double* %75, i64 %77
  store double %74, double* %78, align 8
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %14

82:                                               ; preds = %14
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %141, %82
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %85
  %89 = load double*, double** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  store double %93, double* %13, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 1
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %126

98:                                               ; preds = %88
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %122, %98
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load double, double* %13, align 8
  %107 = load [101 x double]*, [101 x double]** %5, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [101 x double], [101 x double]* %107, i64 %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [101 x double], [101 x double]* %110, i64 0, i64 %112
  %114 = load double, double* %113, align 8
  %115 = load double*, double** %8, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds double, double* %115, i64 %117
  %119 = load double, double* %118, align 8
  %120 = fmul double %114, %119
  %121 = fsub double %106, %120
  store double %121, double* %13, align 8
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %101

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125, %88
  %127 = load double, double* %13, align 8
  %128 = load [101 x double]*, [101 x double]** %5, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [101 x double], [101 x double]* %128, i64 %130
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [101 x double], [101 x double]* %131, i64 0, i64 %133
  %135 = load double, double* %134, align 8
  %136 = fdiv double %127, %135
  %137 = load double*, double** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %137, i64 %139
  store double %136, double* %140, align 8
  br label %141

141:                                              ; preds = %126
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %9, align 4
  br label %85

144:                                              ; preds = %85
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @AllocateMemory(i64 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @global_align, align 4
  %11 = sext i32 %10 to i64
  %12 = mul nsw i64 2, %11
  %13 = add i64 %9, %12
  %14 = call noalias i8* @malloc(i64 %13) #9
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32*, i32** %5, align 8
  store i32 1, i32* %18, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i8*, i8** %6, align 8
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %7, align 8
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* @global_align, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @AddMemArray(i64 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32*, i32** %5, align 8
  store i32 2, i32* %32, align 4
  br label %33

33:                                               ; preds = %31, %26
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %3, align 8
  br label %80

35:                                               ; preds = %21
  %36 = load i32, i32* @global_align, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i64, i64* %7, align 8
  %40 = urem i64 %39, 2
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %45

45:                                               ; preds = %42, %38
  br label %69

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %53, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @global_align, align 4
  %50 = sext i32 %49 to i64
  %51 = urem i64 %48, %50
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %47

56:                                               ; preds = %47
  %57 = load i64, i64* %8, align 8
  %58 = load i32, i32* @global_align, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = urem i64 %57, %60
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load i32, i32* @global_align, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  br label %68

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %45
  %70 = load i64, i64* %8, align 8
  %71 = inttoptr i64 %70 to i8*
  store i8* %71, i8** %6, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @AddMemArray(i64 %72, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32*, i32** %5, align 8
  store i32 2, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %69
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %3, align 8
  br label %80

80:                                               ; preds = %78, %33
  %81 = load i8*, i8** %3, align 8
  ret i8* %81
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @AddMemArray(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @mem_array_ents, align 4
  %7 = icmp sge i32 %6, 20
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %20

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i32, i32* @mem_array_ents, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %12
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i32, i32* @mem_array_ents, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %16
  store i64 %14, i64* %17, align 8
  %18 = load i32, i32* @mem_array_ents, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @mem_array_ents, align 4
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %9, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeMemory(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = ptrtoint i8* %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @RemoveMemArray(i64 %9, i64* %6)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 3, i32* %13, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  call void @free(i8* %17) #9
  %18 = load i32*, i32** %4, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @RemoveMemArray(i64 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %54, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @mem_array_ents, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %57

12:                                               ; preds = %8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64*, i64** %5, align 8
  store i64 %23, i64* %24, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %31, %19
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @mem_array_ents, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 0), i64 0, i64 %38
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [20 x i64], [20 x i64]* getelementptr inbounds ([2 x [20 x i64]], [2 x [20 x i64]]* @mem_array, i64 0, i64 1), i64 0, i64 %46
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load i32, i32* @mem_array_ents, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* @mem_array_ents, align 4
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %12
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %8

57:                                               ; preds = %8
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @MoveMemory(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i64, i64* %6, align 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 %9, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitMemArray() #0 {
  store i32 0, i32* @mem_array_ents, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CreateFile(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ReportError(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.199, i64 0, i64 0), i8* %5)
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.200, i64 0, i64 0), i32 %7)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @ErrorExit() #0 {
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @StartStopwatch() #0 {
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @StopStopwatch(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret i64 1000
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @TicksToSecs(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret i64 0
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @TicksToFracSecs(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  ret double 0.000000e+00
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone speculatable willreturn }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
