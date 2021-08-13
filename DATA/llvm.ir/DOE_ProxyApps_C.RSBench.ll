; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Input = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Pole = type { { double, double }, { double, double }, { double, double }, { double, double }, i16 }
%struct.Window = type { double, double, double, i32, i32 }
%struct.Materials = type { i32*, i32**, double** }
%struct.CalcDataPtrs = type { i32*, i32*, %struct.Materials, %struct.Pole**, %struct.Window**, double** }

@next = internal global i32 0, align 4
@table = internal global [344 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [379 x i8] c"                    _____   _____ ____                  _     \0A                   |  __ \\ / ____|  _ \\                | |    \0A                   | |__) | (___ | |_) | ___ _ __   ___| |__  \0A                   |  _  / \\___ \\|  _ < / _ \\ '_ \\ / __| '_ \\ \0A                   | | \\ \\ ____) | |_) |  __/ | | | (__| | | |\0A                   |_|  \\_\\_____/|____/ \\___|_| |_|\\___|_| |_|\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d,%03d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%d,%03d,%03d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"%d,%03d,%03d,%03d\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"-n\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"Usage: ./multibench <options>\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Options include:\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"  -t <threads>     Number of OpenMP threads to run\0A\00", align 1
@.str.22 = private unnamed_addr constant [64 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large)\0A\00", align 1
@.str.23 = private unnamed_addr constant [57 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"  -p <poles>       Average Number of Poles per Nuclide\0A\00", align 1
@.str.25 = private unnamed_addr constant [58 x i8] c"  -w <poles>       Average Number of Windows per Nuclide\0A\00", align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"  -d               Disables Temperature Dependence (Doppler Broadening)\0A\00", align 1
@.str.27 = private unnamed_addr constant [63 x i8] c"Default is equivalent to: -s large -l 10000000 -p 1000 -w 100\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"See readme for full description of default run values\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"Materials:                   12\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"H-M Benchmark Size:          \00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Small\0A\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"Large\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Temperature Dependence:      ON\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Temperature Dependence:      OFF\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Total Nuclides:              %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Avg Poles per Nuclide:       \00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Avg Windows per Nuclide:     \00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"XS Lookups:                  \00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Threads:                     %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Est. Memory Usage (MB):      %.1lf\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str.1.42 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str.2.43 = private unnamed_addr constant [39 x i8] c"Generating resonance distributions...\0A\00", align 1
@.str.3.44 = private unnamed_addr constant [36 x i8] c"Generating window distributions...\0A\00", align 1
@.str.4.45 = private unnamed_addr constant [44 x i8] c"Loading Hoogenboom-Martin material data...\0A\00", align 1
@.str.5.46 = private unnamed_addr constant [40 x i8] c"Generating resonance parameter grid...\0A\00", align 1
@.str.6.47 = private unnamed_addr constant [37 x i8] c"Generating window parameter grid...\0A\00", align 1
@.str.7.48 = private unnamed_addr constant [31 x i8] c"Generating 0K l_value data...\0A\00", align 1
@.str.8.49 = private unnamed_addr constant [42 x i8] c"Initialization Complete. (%.2lf seconds)\0A\00", align 1
@.str.9.50 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str.10.51 = private unnamed_addr constant [23 x i8] c"Beginning Simulation.\0A\00", align 1
@.str.11.52 = private unnamed_addr constant [21 x i8] c"Calculating XS's...\0A\00", align 1
@.str.12.53 = private unnamed_addr constant [23 x i8] c"\0ASimulation Complete.\0A\00", align 1
@__const.load_mats.mats0_Sml = private unnamed_addr constant [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], align 16
@__const.load_mats.mats0_Lrg = private unnamed_addr constant <{ [34 x i32], [287 x i32] }> <{ [34 x i32] [i32 58, i32 59, i32 60, i32 61, i32 40, i32 42, i32 43, i32 44, i32 45, i32 46, i32 1, i32 2, i32 3, i32 7, i32 8, i32 9, i32 10, i32 29, i32 57, i32 47, i32 48, i32 0, i32 62, i32 15, i32 33, i32 34, i32 52, i32 53, i32 54, i32 55, i32 56, i32 18, i32 23, i32 41], [287 x i32] zeroinitializer }>, align 16
@__const.load_mats.mats1 = private unnamed_addr constant [5 x i32] [i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.load_mats.mats2 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@__const.load_mats.mats3 = private unnamed_addr constant [4 x i32] [i32 24, i32 41, i32 4, i32 5], align 16
@__const.load_mats.mats4 = private unnamed_addr constant [27 x i32] [i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 26, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14, i32 6, i32 16, i32 17], align 16
@__const.load_mats.mats5 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats6 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats7 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats8 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats9 = private unnamed_addr constant [21 x i32] [i32 24, i32 41, i32 4, i32 5, i32 19, i32 20, i32 21, i32 22, i32 35, i32 36, i32 37, i32 38, i32 39, i32 25, i32 49, i32 50, i32 51, i32 11, i32 12, i32 13, i32 14], align 16
@__const.load_mats.mats10 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.load_mats.mats11 = private unnamed_addr constant [9 x i32] [i32 24, i32 41, i32 4, i32 5, i32 63, i32 64, i32 65, i32 66, i32 67], align 16
@__const.fast_nuclear_W.an = private unnamed_addr constant [10 x double] [double 0x3FD1A75DA77B03AC, double 2.245740e-01, double 0x3FC467B51AFF5FC7, double 0x3FB94228EF6278F1, double 0x3FAB42D0E001DDD1, double 0x3F99A74553C72771, double 0x3F850C5AAC48F3BA, double 0x3F6E1D7984F391AA, double 0x3F52C8BE8F0B3A0A, double 3.117570e-04], align 16
@__const.fast_nuclear_W.neg_1n = private unnamed_addr constant [10 x double] [double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00, double -1.000000e+00, double 1.000000e+00], align 16
@__const.fast_nuclear_W.denominator_left = private unnamed_addr constant [10 x double] [double 0x4023BD3CBC48F10B, double 0x4043BD3CDDD6E04C, double 0x405634E4649906CD, double 0x4063BD3D07C84B5E, double 0x406ED7AEE631F8A1, double 0x407634E48E8A71DE, double 0x407E39C504816F00, double 0x4083BD3CD35A8588, double 0x4088FB810624DD2F, double 0x408ED7AEE631F8A1], align 16

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @glibc_compat_rand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @next, align 4
  %5 = icmp slt i32 %4, 3
  br i1 %5, label %6, label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @next, align 4
  %8 = add nsw i32 344, %7
  %9 = sub nsw i32 %8, 3
  br label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @next, align 4
  %12 = sub nsw i32 %11, 3
  br label %13

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %9, %6 ], [ %12, %10 ]
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @next, align 4
  %16 = icmp slt i32 %15, 31
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @next, align 4
  %19 = add nsw i32 344, %18
  %20 = sub nsw i32 %19, 31
  br label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @next, align 4
  %23 = sub nsw i32 %22, 31
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %20, %17 ], [ %23, %21 ]
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %29, %33
  %35 = load i32, i32* @next, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @next, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = lshr i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @next, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @next, align 4
  %45 = load i32, i32* @next, align 4
  %46 = icmp sge i32 %45, 344
  br i1 %46, label %47, label %48

47:                                               ; preds = %24
  store i32 0, i32* @next, align 4
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @glibc_compat_srand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %9, %1
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* getelementptr inbounds ([344 x i32], [344 x i32]* @table, i64 0, i64 0), align 16
  store i32 1, i32* %3, align 4
  br label %12

12:                                               ; preds = %35, %10
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 31
  br i1 %14, label %15, label %38

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = zext i32 %20 to i64
  %22 = mul nsw i64 16807, %21
  %23 = srem i64 %22, 2147483647
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 2147483647
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %15
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %33
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %12

38:                                               ; preds = %12
  store i32 31, i32* %5, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 34
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 31
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %39

54:                                               ; preds = %39
  store i32 34, i32* %6, align 4
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 344
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 31
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sub nsw i32 %64, 3
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %63, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [344 x i32], [344 x i32]* @table, i64 0, i64 %71
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %55

76:                                               ; preds = %55
  store i32 0, i32* @next, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @generate_n_poles(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @calloc(i64 %13, i64 4) #6
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @glibc_compat_rand()
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @generate_n_windows(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = call noalias i8* @calloc(i64 %13, i64 4) #6
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %30, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @glibc_compat_rand()
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %21, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %16

33:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 1, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %39
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %34
  %56 = load i32*, i32** %3, align 8
  ret i32* %56
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Pole** @generate_poles(%struct.Input* byval(%struct.Input) align 8 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.Pole**, align 8
  %6 = alloca %struct.Pole*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %1, i32** %3, align 8
  store double 1.525000e+02, double* %4, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #6
  %16 = bitcast i8* %15 to %struct.Pole**
  store %struct.Pole** %16, %struct.Pole*** %5, align 8
  %17 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 72
  %24 = call noalias i8* @malloc(i64 %23) #6
  %25 = bitcast i8* %24 to %struct.Pole*
  store %struct.Pole* %25, %struct.Pole** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %47, %2
  %27 = load i32, i32* %8, align 4
  %28 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %26
  %32 = load %struct.Pole*, %struct.Pole** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.Pole, %struct.Pole* %32, i64 %34
  %36 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Pole*, %struct.Pole** %36, i64 %38
  store %struct.Pole* %35, %struct.Pole** %39, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %26

50:                                               ; preds = %26
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %173, %50
  %52 = load i32, i32* %9, align 4
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %176

56:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %169, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %58, %63
  br i1 %64, label %65, label %172

65:                                               ; preds = %57
  %66 = load double, double* %4, align 8
  %67 = call i32 @glibc_compat_rand()
  %68 = sitofp i32 %67 to double
  %69 = fdiv double %68, 0x41DFFFFFFFC00000
  %70 = call i32 @glibc_compat_rand()
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 0x41DFFFFFFFC00000
  %73 = fmul double %72, 0.000000e+00
  %74 = fmul double %72, 1.000000e+00
  %75 = fadd double %69, %73
  %76 = fmul double %66, %75
  %77 = fmul double %66, %74
  %78 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.Pole*, %struct.Pole** %78, i64 %80
  %82 = load %struct.Pole*, %struct.Pole** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.Pole, %struct.Pole* %82, i64 %84
  %86 = getelementptr inbounds %struct.Pole, %struct.Pole* %85, i32 0, i32 0
  %87 = getelementptr inbounds { double, double }, { double, double }* %86, i32 0, i32 0
  %88 = getelementptr inbounds { double, double }, { double, double }* %86, i32 0, i32 1
  store double %76, double* %87, align 8
  store double %77, double* %88, align 8
  %89 = load double, double* %4, align 8
  %90 = call i32 @glibc_compat_rand()
  %91 = sitofp i32 %90 to double
  %92 = fmul double %89, %91
  %93 = fdiv double %92, 0x41DFFFFFFFC00000
  %94 = call i32 @glibc_compat_rand()
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 0x41DFFFFFFFC00000
  %97 = fmul double %96, 0.000000e+00
  %98 = fmul double %96, 1.000000e+00
  %99 = fadd double %93, %97
  %100 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.Pole*, %struct.Pole** %100, i64 %102
  %104 = load %struct.Pole*, %struct.Pole** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.Pole, %struct.Pole* %104, i64 %106
  %108 = getelementptr inbounds %struct.Pole, %struct.Pole* %107, i32 0, i32 1
  %109 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 0
  %110 = getelementptr inbounds { double, double }, { double, double }* %108, i32 0, i32 1
  store double %99, double* %109, align 8
  store double %98, double* %110, align 8
  %111 = load double, double* %4, align 8
  %112 = call i32 @glibc_compat_rand()
  %113 = sitofp i32 %112 to double
  %114 = fmul double %111, %113
  %115 = fdiv double %114, 0x41DFFFFFFFC00000
  %116 = call i32 @glibc_compat_rand()
  %117 = sitofp i32 %116 to double
  %118 = fdiv double %117, 0x41DFFFFFFFC00000
  %119 = fmul double %118, 0.000000e+00
  %120 = fmul double %118, 1.000000e+00
  %121 = fadd double %115, %119
  %122 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.Pole*, %struct.Pole** %122, i64 %124
  %126 = load %struct.Pole*, %struct.Pole** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.Pole, %struct.Pole* %126, i64 %128
  %130 = getelementptr inbounds %struct.Pole, %struct.Pole* %129, i32 0, i32 2
  %131 = getelementptr inbounds { double, double }, { double, double }* %130, i32 0, i32 0
  %132 = getelementptr inbounds { double, double }, { double, double }* %130, i32 0, i32 1
  store double %121, double* %131, align 8
  store double %120, double* %132, align 8
  %133 = load double, double* %4, align 8
  %134 = call i32 @glibc_compat_rand()
  %135 = sitofp i32 %134 to double
  %136 = fmul double %133, %135
  %137 = fdiv double %136, 0x41DFFFFFFFC00000
  %138 = call i32 @glibc_compat_rand()
  %139 = sitofp i32 %138 to double
  %140 = fdiv double %139, 0x41DFFFFFFFC00000
  %141 = fmul double %140, 0.000000e+00
  %142 = fmul double %140, 1.000000e+00
  %143 = fadd double %137, %141
  %144 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Pole*, %struct.Pole** %144, i64 %146
  %148 = load %struct.Pole*, %struct.Pole** %147, align 8
  %149 = load i32, i32* %10, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Pole, %struct.Pole* %148, i64 %150
  %152 = getelementptr inbounds %struct.Pole, %struct.Pole* %151, i32 0, i32 3
  %153 = getelementptr inbounds { double, double }, { double, double }* %152, i32 0, i32 0
  %154 = getelementptr inbounds { double, double }, { double, double }* %152, i32 0, i32 1
  store double %143, double* %153, align 8
  store double %142, double* %154, align 8
  %155 = call i32 @glibc_compat_rand()
  %156 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = srem i32 %155, %157
  %159 = trunc i32 %158 to i16
  %160 = load %struct.Pole**, %struct.Pole*** %5, align 8
  %161 = load i32, i32* %9, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.Pole*, %struct.Pole** %160, i64 %162
  %164 = load %struct.Pole*, %struct.Pole** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.Pole, %struct.Pole* %164, i64 %166
  %168 = getelementptr inbounds %struct.Pole, %struct.Pole* %167, i32 0, i32 4
  store i16 %159, i16* %168, align 8
  br label %169

169:                                              ; preds = %65
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %57

172:                                              ; preds = %57
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %51

176:                                              ; preds = %51
  %177 = load %struct.Pole**, %struct.Pole*** %5, align 8
  ret %struct.Pole** %177
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Window** @generate_window_params(%struct.Input* byval(%struct.Input) align 8 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.Window**, align 8
  %7 = alloca %struct.Window*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %1, i32** %4, align 8
  store i32* %2, i32** %5, align 8
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #6
  %20 = bitcast i8* %19 to %struct.Window**
  store %struct.Window** %20, %struct.Window*** %6, align 8
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 32
  %28 = call noalias i8* @malloc(i64 %27) #6
  %29 = bitcast i8* %28 to %struct.Window*
  store %struct.Window* %29, %struct.Window** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %51, %3
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %30
  %36 = load %struct.Window*, %struct.Window** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.Window, %struct.Window* %36, i64 %38
  %40 = load %struct.Window**, %struct.Window*** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.Window*, %struct.Window** %40, i64 %42
  store %struct.Window* %39, %struct.Window** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %30

54:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %178, %54
  %56 = load i32, i32* %10, align 4
  %57 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %181

60:                                               ; preds = %55
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %65, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %77, %82
  %84 = sub nsw i32 %76, %83
  store i32 %84, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %174, %60
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %86, %91
  br i1 %92, label %93, label %177

93:                                               ; preds = %85
  %94 = call i32 @glibc_compat_rand()
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %95, 0x41DFFFFFFFC00000
  %97 = load %struct.Window**, %struct.Window*** %6, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.Window*, %struct.Window** %97, i64 %99
  %101 = load %struct.Window*, %struct.Window** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.Window, %struct.Window* %101, i64 %103
  %105 = getelementptr inbounds %struct.Window, %struct.Window* %104, i32 0, i32 0
  store double %96, double* %105, align 8
  %106 = call i32 @glibc_compat_rand()
  %107 = sitofp i32 %106 to double
  %108 = fdiv double %107, 0x41DFFFFFFFC00000
  %109 = load %struct.Window**, %struct.Window*** %6, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.Window*, %struct.Window** %109, i64 %111
  %113 = load %struct.Window*, %struct.Window** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.Window, %struct.Window* %113, i64 %115
  %117 = getelementptr inbounds %struct.Window, %struct.Window* %116, i32 0, i32 1
  store double %108, double* %117, align 8
  %118 = call i32 @glibc_compat_rand()
  %119 = sitofp i32 %118 to double
  %120 = fdiv double %119, 0x41DFFFFFFFC00000
  %121 = load %struct.Window**, %struct.Window*** %6, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.Window*, %struct.Window** %121, i64 %123
  %125 = load %struct.Window*, %struct.Window** %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.Window, %struct.Window* %125, i64 %127
  %129 = getelementptr inbounds %struct.Window, %struct.Window* %128, i32 0, i32 2
  store double %120, double* %129, align 8
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.Window**, %struct.Window*** %6, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.Window*, %struct.Window** %131, i64 %133
  %135 = load %struct.Window*, %struct.Window** %134, align 8
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.Window, %struct.Window* %135, i64 %137
  %139 = getelementptr inbounds %struct.Window, %struct.Window* %138, i32 0, i32 3
  store i32 %130, i32* %139, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %140, %141
  %143 = sub nsw i32 %142, 1
  %144 = load %struct.Window**, %struct.Window*** %6, align 8
  %145 = load i32, i32* %10, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.Window*, %struct.Window** %144, i64 %146
  %148 = load %struct.Window*, %struct.Window** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.Window, %struct.Window* %148, i64 %150
  %152 = getelementptr inbounds %struct.Window, %struct.Window* %151, i32 0, i32 4
  store i32 %143, i32* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %173

159:                                              ; preds = %93
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  %162 = load %struct.Window**, %struct.Window*** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.Window*, %struct.Window** %162, i64 %164
  %166 = load %struct.Window*, %struct.Window** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.Window, %struct.Window* %166, i64 %168
  %170 = getelementptr inbounds %struct.Window, %struct.Window* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %159, %93
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %85

177:                                              ; preds = %85
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  br label %55

181:                                              ; preds = %55
  %182 = load %struct.Window**, %struct.Window*** %6, align 8
  ret %struct.Window** %182
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @generate_pseudo_K0RS(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca double**, align 8
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = call noalias i8* @malloc(i64 %10) #6
  %12 = bitcast i8* %11 to double**
  store double** %12, double*** %2, align 8
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = mul nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to double*
  store double* %21, double** %3, align 8
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %39, %1
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load double*, double** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %29, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds double, double* %28, i64 %33
  %35 = load double**, double*** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double*, double** %35, i64 %37
  store double* %34, double** %38, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %22

42:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %66, %48
  %50 = load i32, i32* %6, align 4
  %51 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = call i32 @glibc_compat_rand()
  %56 = sitofp i32 %55 to double
  %57 = fdiv double %56, 0x41DFFFFFFFC00000
  %58 = load double**, double*** %2, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double*, double** %58, i64 %60
  %62 = load double*, double** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  store double %57, double* %65, align 8
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %49

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %43

73:                                               ; preds = %43
  %74 = load double**, double*** %2, align 8
  ret double** %74
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @logo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  store i32 %0, i32* %2, align 4
  call void @border_print()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([379 x i8], [379 x i8]* @.str, i64 0, i64 0))
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 79)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %6) #6
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @center_print(i8* %8, i32 79)
  call void @border_print()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @border_print() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @center_print(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strlen(i8* %7) #7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  %16 = icmp sle i32 %11, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %struct._IO_FILE* %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i8*, i8** %3, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @fputs(i8* %24, %struct._IO_FILE* %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), %struct._IO_FILE* %27)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @fancy_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 1000
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %6)
  br label %56

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp sge i32 %9, 1000
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 1000000
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sdiv i32 %15, 1000
  %17 = load i32, i32* %2, align 4
  %18 = srem i32 %17, 1000
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %16, i32 %18)
  br label %55

20:                                               ; preds = %11, %8
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 1000000
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 1000000000
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sdiv i32 %27, 1000000
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %29, 1000000
  %31 = sdiv i32 %30, 1000
  %32 = load i32, i32* %2, align 4
  %33 = srem i32 %32, 1000
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %28, i32 %31, i32 %33)
  br label %54

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %2, align 4
  %37 = icmp sge i32 %36, 1000000000
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i32, i32* %2, align 4
  %40 = sdiv i32 %39, 1000000000
  %41 = load i32, i32* %2, align 4
  %42 = srem i32 %41, 1000000000
  %43 = sdiv i32 %42, 1000000
  %44 = load i32, i32* %2, align 4
  %45 = srem i32 %44, 1000000
  %46 = sdiv i32 %45, 1000
  %47 = load i32, i32* %2, align 4
  %48 = srem i32 %47, 1000
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %48)
  br label %53

50:                                               ; preds = %35
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %38
  br label %54

54:                                               ; preds = %53, %26
  br label %55

55:                                               ; preds = %54, %14
  br label %56

56:                                               ; preds = %55, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_CLI(%struct.Input* noalias sret %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  store i32 355, i32* %9, align 4
  %10 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  store i32 10000000, i32* %10, align 4
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  store i32 1000, i32* %12, align 4
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  store i32 100, i32* %13, align 4
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  store i32 4, i32* %14, align 4
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  store i32 1, i32* %15, align 4
  store i32 1, i32* %6, align 4
  br label %16

16:                                               ; preds = %168, %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %171

20:                                               ; preds = %16
  %21 = load i8**, i8*** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i8**, i8*** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8*, i8** %35, i64 %37
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @atoi(i8* %39) #7
  %41 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %43

42:                                               ; preds = %29
  call void @print_CLI_error()
  br label %43

43:                                               ; preds = %42, %34
  br label %167

44:                                               ; preds = %20
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @atoi(i8* %58) #7
  %60 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  store i32 %59, i32* %60, align 4
  br label %62

61:                                               ; preds = %48
  call void @print_CLI_error()
  br label %62

62:                                               ; preds = %61, %53
  br label %166

63:                                               ; preds = %44
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0)) #7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @atoi(i8* %77) #7
  %79 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  store i32 %78, i32* %79, align 4
  br label %81

80:                                               ; preds = %67
  call void @print_CLI_error()
  br label %81

81:                                               ; preds = %80, %72
  br label %165

82:                                               ; preds = %63
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)) #7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %82
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %114

91:                                               ; preds = %86
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0)) #7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  store i32 0, i32* %100, align 4
  br label %113

101:                                              ; preds = %91
  %102 = load i8**, i8*** %5, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strcmp(i8* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0)) #7
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  store i32 1, i32* %110, align 4
  br label %112

111:                                              ; preds = %101
  call void @print_CLI_error()
  br label %112

112:                                              ; preds = %111, %109
  br label %113

113:                                              ; preds = %112, %99
  br label %115

114:                                              ; preds = %86
  call void @print_CLI_error()
  br label %115

115:                                              ; preds = %114, %113
  br label %164

116:                                              ; preds = %82
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0)) #7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  store i32 0, i32* %121, align 4
  br label %163

122:                                              ; preds = %116
  %123 = load i8*, i8** %7, align 8
  %124 = call i32 @strcmp(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)) #7
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load i8**, i8*** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %132, i64 %134
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @atoi(i8* %136) #7
  %138 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  store i32 %137, i32* %138, align 4
  br label %140

139:                                              ; preds = %126
  call void @print_CLI_error()
  br label %140

140:                                              ; preds = %139, %131
  br label %162

141:                                              ; preds = %122
  %142 = load i8*, i8** %7, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0)) #7
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i8**, i8*** %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = call i32 @atoi(i8* %155) #7
  %157 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  store i32 %156, i32* %157, align 4
  br label %159

158:                                              ; preds = %145
  call void @print_CLI_error()
  br label %159

159:                                              ; preds = %158, %150
  br label %161

160:                                              ; preds = %141
  call void @print_CLI_error()
  br label %161

161:                                              ; preds = %160, %159
  br label %162

162:                                              ; preds = %161, %140
  br label %163

163:                                              ; preds = %162, %120
  br label %164

164:                                              ; preds = %163, %115
  br label %165

165:                                              ; preds = %164, %81
  br label %166

166:                                              ; preds = %165, %62
  br label %167

167:                                              ; preds = %166, %43
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %16

171:                                              ; preds = %16
  %172 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 1
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  call void @print_CLI_error()
  br label %176

176:                                              ; preds = %175, %171
  %177 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %178, 1
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  call void @print_CLI_error()
  br label %181

181:                                              ; preds = %180, %176
  %182 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  call void @print_CLI_error()
  br label %186

186:                                              ; preds = %185, %181
  %187 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  call void @print_CLI_error()
  br label %191

191:                                              ; preds = %190, %186
  %192 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %193, 1
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  call void @print_CLI_error()
  br label %196

196:                                              ; preds = %195, %191
  %197 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  store i32 68, i32* %201, align 4
  br label %202

202:                                              ; preds = %200, %196
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_CLI_error() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.22, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.23, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.25, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.26, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.27, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.28, i64 0, i64 0))
  call void @exit(i32 4) #8
  unreachable
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_input_summary(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = call i64 @get_mem_estimate(%struct.Input* byval(%struct.Input) align 8 %0)
  store i64 %3, i64* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0))
  br label %13

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %9
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.33, i64 0, i64 0))
  br label %21

19:                                               ; preds = %13
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0), i32 %23)
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  call void @fancy_int(i32 %27)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %29 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  call void @fancy_int(i32 %30)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.38, i64 0, i64 0))
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  call void @fancy_int(i32 %33)
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i32 %35)
  %37 = load i64, i64* %2, align 8
  %38 = uitofp i64 %37 to double
  %39 = fdiv double %38, 1.024000e+03
  %40 = fdiv double %39, 1.024000e+03
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0), double %40)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.Input, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.Materials, align 8
  %14 = alloca %struct.Pole**, align 8
  %15 = alloca %struct.Window**, align 8
  %16 = alloca double**, align 8
  %17 = alloca %struct.CalcDataPtrs, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [4 x double], align 16
  %22 = alloca double*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca double, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca { double, double }*, align 8
  %29 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 9, i32* %6, align 4
  store i32 1, i32* %7, align 4
  store double 0.000000e+00, double* %8, align 8
  store double 0.000000e+00, double* %9, align 8
  %30 = call i64 @time(i64* null) #6
  %31 = trunc i64 %30 to i32
  call void @glibc_compat_srand(i32 %31)
  %32 = load i32, i32* %4, align 4
  %33 = load i8**, i8*** %5, align 8
  call void @read_CLI(%struct.Input* sret %10, i32 %32, i8** %33)
  %34 = load i32, i32* %6, align 4
  call void @logo(i32 %34)
  call void @center_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i64 0, i64 0), i32 79)
  call void @border_print()
  call void @print_input_summary(%struct.Input* byval(%struct.Input) align 8 %10)
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.42, i64 0, i64 0), i32 79)
  call void @border_print()
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2.43, i64 0, i64 0))
  %36 = call i32* @generate_n_poles(%struct.Input* byval(%struct.Input) align 8 %10)
  store i32* %36, i32** %11, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.44, i64 0, i64 0))
  %38 = call i32* @generate_n_windows(%struct.Input* byval(%struct.Input) align 8 %10)
  store i32* %38, i32** %12, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4.45, i64 0, i64 0))
  call void @get_materials(%struct.Materials* sret %13, %struct.Input* byval(%struct.Input) align 8 %10)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5.46, i64 0, i64 0))
  %41 = load i32*, i32** %11, align 8
  %42 = call %struct.Pole** @generate_poles(%struct.Input* byval(%struct.Input) align 8 %10, i32* %41)
  store %struct.Pole** %42, %struct.Pole*** %14, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6.47, i64 0, i64 0))
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = call %struct.Window** @generate_window_params(%struct.Input* byval(%struct.Input) align 8 %10, i32* %44, i32* %45)
  store %struct.Window** %46, %struct.Window*** %15, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7.48, i64 0, i64 0))
  %48 = call double** @generate_pseudo_K0RS(%struct.Input* byval(%struct.Input) align 8 %10)
  store double** %48, double*** %16, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 2
  %54 = bitcast %struct.Materials* %53 to i8*
  %55 = bitcast %struct.Materials* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 24, i1 false)
  %56 = load %struct.Pole**, %struct.Pole*** %14, align 8
  %57 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 3
  store %struct.Pole** %56, %struct.Pole*** %57, align 8
  %58 = load %struct.Window**, %struct.Window*** %15, align 8
  %59 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 4
  store %struct.Window** %58, %struct.Window*** %59, align 8
  %60 = load double**, double*** %16, align 8
  %61 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %17, i32 0, i32 5
  store double** %60, double*** %61, align 8
  %62 = load double, double* %9, align 8
  %63 = load double, double* %8, align 8
  %64 = fsub double %62, %63
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8.49, i64 0, i64 0), double %64)
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9.50, i64 0, i64 0), i32 79)
  call void @border_print()
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10.51, i64 0, i64 0))
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11.52, i64 0, i64 0))
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  %68 = call i64 @time(i64* null) #6
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %20, align 8
  %70 = call noalias i8* @calloc(i64 4, i64 8) #6
  %71 = bitcast i8* %70 to double*
  store double* %71, double** %22, align 8
  store i32 0, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %20, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %20, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  %76 = getelementptr inbounds %struct.Input, %struct.Input* %10, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 16
  %80 = call noalias i8* @malloc(i64 %79) #6
  %81 = bitcast i8* %80 to { double, double }*
  store { double, double }* %81, { double, double }** %28, align 8
  store i32 0, i32* %29, align 4
  br label %82

82:                                               ; preds = %98, %2
  %83 = load i32, i32* %29, align 4
  %84 = getelementptr inbounds %struct.Input, %struct.Input* %10, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %82
  %88 = call i32 @pick_mat(i64* %20)
  store i32 %88, i32* %24, align 4
  %89 = call double @rn(i64* %20)
  store double %89, double* %25, align 8
  %90 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 0
  %91 = load i32, i32* %24, align 4
  %92 = load double, double* %25, align 8
  %93 = load { double, double }*, { double, double }** %28, align 8
  call void @calculate_macro_xs(double* %90, i32 %91, double %92, %struct.Input* byval(%struct.Input) align 8 %10, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %17, { double, double }* %93, i64* %26, i64* %27)
  %94 = load double*, double** %22, align 8
  %95 = bitcast double* %94 to i8*
  %96 = getelementptr inbounds [4 x double], [4 x double]* %21, i64 0, i64 0
  %97 = bitcast double* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %95, i8* align 16 %97, i64 32, i1 false)
  br label %98

98:                                               ; preds = %87
  %99 = load i32, i32* %29, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %29, align 4
  br label %82

101:                                              ; preds = %82
  %102 = load { double, double }*, { double, double }** %28, align 8
  %103 = bitcast { double, double }* %102 to i8*
  call void @free(i8* %103) #6
  %104 = load i64, i64* %26, align 8
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %27, align 8
  store i64 %105, i64* %19, align 8
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12.53, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @get_materials(%struct.Materials* noalias sret %0, %struct.Input* byval(%struct.Input) align 8 %1) #0 {
  %3 = call i32* @load_num_nucs(%struct.Input* byval(%struct.Input) align 8 %1)
  %4 = getelementptr inbounds %struct.Materials, %struct.Materials* %0, i32 0, i32 0
  store i32* %3, i32** %4, align 8
  %5 = getelementptr inbounds %struct.Materials, %struct.Materials* %0, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = call i32** @load_mats(%struct.Input* byval(%struct.Input) align 8 %1, i32* %6)
  %8 = getelementptr inbounds %struct.Materials, %struct.Materials* %0, i32 0, i32 1
  store i32** %7, i32*** %8, align 8
  %9 = getelementptr inbounds %struct.Materials, %struct.Materials* %0, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call double** @load_concs(i32* %10)
  %12 = getelementptr inbounds %struct.Materials, %struct.Materials* %0, i32 0, i32 2
  store double** %11, double*** %12, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @load_num_nucs(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = call noalias i8* @malloc(i64 48) #6
  %4 = bitcast i8* %3 to i32*
  store i32* %4, i32** %2, align 8
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 68
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 34, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 321, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 5, i32* %16, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 4, i32* %18, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 4, i32* %20, align 4
  %21 = load i32*, i32** %2, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 27, i32* %22, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 21, i32* %24, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  store i32 21, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  store i32 21, i32* %28, align 4
  %29 = load i32*, i32** %2, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  store i32 21, i32* %30, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  store i32 21, i32* %32, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  store i32 9, i32* %34, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 11
  store i32 9, i32* %36, align 4
  %37 = load i32*, i32** %2, align 8
  ret i32* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @load_mats(%struct.Input* byval(%struct.Input) align 8 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca [34 x i32], align 16
  %7 = alloca [321 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [27 x i32], align 16
  %13 = alloca [21 x i32], align 16
  %14 = alloca [21 x i32], align 16
  %15 = alloca [21 x i32], align 16
  %16 = alloca [21 x i32], align 16
  %17 = alloca [21 x i32], align 16
  %18 = alloca [9 x i32], align 16
  %19 = alloca [9 x i32], align 16
  store i32* %1, i32** %3, align 8
  %20 = call noalias i8* @malloc(i64 96) #6
  %21 = bitcast i8* %20 to i32**
  store i32** %21, i32*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = call noalias i8* @malloc(i64 %32) #6
  %34 = bitcast i8* %33 to i32*
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* %34, i32** %38, align 8
  br label %39

39:                                               ; preds = %25
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %22

42:                                               ; preds = %22
  %43 = bitcast [34 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %43, i8* align 16 bitcast ([34 x i32]* @__const.load_mats.mats0_Sml to i8*), i64 136, i1 false)
  %44 = bitcast [321 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast (<{ [34 x i32], [287 x i32] }>* @__const.load_mats.mats0_Lrg to i8*), i64 1284, i1 false)
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %55, %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 287
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 68, %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 34, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [321 x i32], [321 x i32]* %7, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %45

58:                                               ; preds = %45
  %59 = bitcast [5 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 16 bitcast ([5 x i32]* @__const.load_mats.mats1 to i8*), i64 20, i1 false)
  %60 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats2 to i8*), i64 16, i1 false)
  %61 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats3 to i8*), i64 16, i1 false)
  %62 = bitcast [27 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([27 x i32]* @__const.load_mats.mats4 to i8*), i64 108, i1 false)
  %63 = bitcast [21 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats5 to i8*), i64 84, i1 false)
  %64 = bitcast [21 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats6 to i8*), i64 84, i1 false)
  %65 = bitcast [21 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats7 to i8*), i64 84, i1 false)
  %66 = bitcast [21 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats8 to i8*), i64 84, i1 false)
  %67 = bitcast [21 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats9 to i8*), i64 84, i1 false)
  %68 = bitcast [9 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats10 to i8*), i64 36, i1 false)
  %69 = bitcast [9 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats11 to i8*), i64 36, i1 false)
  %70 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 68
  br i1 %72, label %73, label %85

73:                                               ; preds = %58
  %74 = load i32**, i32*** %4, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = getelementptr inbounds [34 x i32], [34 x i32]* %6, i64 0, i64 0
  %79 = bitcast i32* %78 to i8*
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 16 %79, i64 %84, i1 false)
  br label %97

85:                                               ; preds = %58
  %86 = load i32**, i32*** %4, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds [321 x i32], [321 x i32]* %7, i64 0, i64 0
  %91 = bitcast i32* %90 to i8*
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 16 %91, i64 %96, i1 false)
  br label %97

97:                                               ; preds = %85, %73
  %98 = load i32**, i32*** %4, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %103 = bitcast i32* %102 to i8*
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 16 %103, i64 %108, i1 false)
  %109 = load i32**, i32*** %4, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 2
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %114 = bitcast i32* %113 to i8*
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 16 %114, i64 %119, i1 false)
  %120 = load i32**, i32*** %4, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 3
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %125 = bitcast i32* %124 to i8*
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 16 %125, i64 %130, i1 false)
  %131 = load i32**, i32*** %4, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 4
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = getelementptr inbounds [27 x i32], [27 x i32]* %12, i64 0, i64 0
  %136 = bitcast i32* %135 to i8*
  %137 = load i32*, i32** %3, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 16 %136, i64 %141, i1 false)
  %142 = load i32**, i32*** %4, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 5
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = getelementptr inbounds [21 x i32], [21 x i32]* %13, i64 0, i64 0
  %147 = bitcast i32* %146 to i8*
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 16 %147, i64 %152, i1 false)
  %153 = load i32**, i32*** %4, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 6
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 0
  %158 = bitcast i32* %157 to i8*
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 16 %158, i64 %163, i1 false)
  %164 = load i32**, i32*** %4, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 7
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 0
  %169 = bitcast i32* %168 to i8*
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 16 %169, i64 %174, i1 false)
  %175 = load i32**, i32*** %4, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 8
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = getelementptr inbounds [21 x i32], [21 x i32]* %16, i64 0, i64 0
  %180 = bitcast i32* %179 to i8*
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 16 %180, i64 %185, i1 false)
  %186 = load i32**, i32*** %4, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 9
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = getelementptr inbounds [21 x i32], [21 x i32]* %17, i64 0, i64 0
  %191 = bitcast i32* %190 to i8*
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 9
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 16 %191, i64 %196, i1 false)
  %197 = load i32**, i32*** %4, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 10
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %18, i64 0, i64 0
  %202 = bitcast i32* %201 to i8*
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 10
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 16 %202, i64 %207, i1 false)
  %208 = load i32**, i32*** %4, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 11
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %213 = bitcast i32* %212 to i8*
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 11
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 16 %213, i64 %218, i1 false)
  %219 = load i32**, i32*** %4, align 8
  ret i32** %219
}

; Function Attrs: noinline nounwind uwtable
define dso_local double** @load_concs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call noalias i8* @malloc(i64 96) #6
  %8 = bitcast i8* %7 to double**
  store double** %8, double*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 12
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = call noalias i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to double*
  %22 = load double**, double*** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double*, double** %22, i64 %24
  store double* %21, double** %25, align 8
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9

29:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %54, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = call i32 @glibc_compat_rand()
  %44 = sitofp i32 %43 to double
  %45 = fdiv double %44, 0x41DFFFFFFFC00000
  %46 = load double**, double*** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds double*, double** %46, i64 %48
  %50 = load double*, double** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds double, double* %50, i64 %52
  store double %45, double* %53, align 8
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %34

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %30

61:                                               ; preds = %30
  %62 = load double**, double*** %3, align 8
  ret double** %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @pick_mat(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca [12 x double], align 16
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 0
  store double 1.400000e-01, double* %9, align 16
  %10 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 1
  store double 5.200000e-02, double* %10, align 8
  %11 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 2
  store double 2.750000e-01, double* %11, align 16
  %12 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 3
  store double 1.340000e-01, double* %12, align 8
  %13 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 4
  store double 1.540000e-01, double* %13, align 16
  %14 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 5
  store double 6.400000e-02, double* %14, align 8
  %15 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 6
  store double 6.600000e-02, double* %15, align 16
  %16 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 7
  store double 5.500000e-02, double* %16, align 8
  %17 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 8
  store double 8.000000e-03, double* %17, align 16
  %18 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 9
  store double 1.500000e-02, double* %18, align 8
  %19 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 10
  store double 2.500000e-02, double* %19, align 16
  %20 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 11
  store double 1.300000e-02, double* %20, align 8
  %21 = load i64*, i64** %3, align 8
  %22 = call double @rn(i64* %21)
  store double %22, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %48, %1
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  store double 0.000000e+00, double* %7, align 8
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %38, %26
  %29 = load i32, i32* %8, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 %33
  %35 = load double, double* %34, align 8
  %36 = load double, double* %7, align 8
  %37 = fadd double %36, %35
  store double %37, double* %7, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %8, align 4
  br label %28

41:                                               ; preds = %28
  %42 = load double, double* %5, align 8
  %43 = load double, double* %7, align 8
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %52

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %23

51:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @rn(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  store i64 16807, i64* %5, align 8
  store i64 2147483647, i64* %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64*, i64** %2, align 8
  %9 = load i64, i64* %8, align 8
  %10 = mul i64 %7, %9
  %11 = load i64, i64* %6, align 8
  %12 = urem i64 %10, %11
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64*, i64** %2, align 8
  store i64 %13, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = uitofp i64 %15 to double
  %17 = load i64, i64* %6, align 8
  %18 = uitofp i64 %17 to double
  %19 = fdiv double %16, %18
  store double %19, double* %3, align 8
  %20 = load double, double* %3, align 8
  ret double %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @get_mem_estimate(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %8, %10
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 72
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = add i64 %13, %17
  store i64 %18, i64* %2, align 8
  %19 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 32
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = add i64 %25, %29
  store i64 %30, i64* %3, align 8
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %32, %34
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = add i64 %37, %41
  store i64 %42, i64* %4, align 8
  %43 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 2
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  store i64 %47, i64* %5, align 8
  %48 = load i64, i64* %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %48, %49
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %50, %51
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %52, %53
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  ret i64 %55
}

; Function Attrs: noinline nounwind uwtable
define dso_local { double, double } @fast_nuclear_W(double %0, double %1) #0 {
  %3 = alloca { double, double }, align 8
  %4 = alloca { double, double }, align 8
  %5 = alloca { double, double }, align 8
  %6 = alloca { double, double }, align 8
  %7 = alloca [10 x double], align 16
  %8 = alloca [10 x double], align 16
  %9 = alloca [10 x double], align 16
  %10 = alloca { double, double }, align 8
  %11 = alloca { double, double }, align 8
  %12 = alloca { double, double }, align 8
  %13 = alloca i32, align 4
  %14 = alloca { double, double }, align 8
  %15 = alloca { double, double }, align 8
  %16 = alloca { double, double }, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca { double, double }, align 8
  %22 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  store double %0, double* %22, align 8
  %23 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  store double %1, double* %23, align 8
  %24 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %25 = load double, double* %24, align 8
  %26 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %27 = load double, double* %26, align 8
  %28 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %29 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  store double %25, double* %28, align 8
  store double %27, double* %29, align 8
  %30 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 0
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds { double, double }, { double, double }* %5, i32 0, i32 1
  %33 = load double, double* %32, align 8
  %34 = call double @cabs(double %31, double %33) #6
  %35 = fcmp olt double %34, 6.000000e+00
  br i1 %35, label %36, label %265

36:                                               ; preds = %2
  %37 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %38 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  store double 0.000000e+00, double* %37, align 8
  store double 8.124330e+01, double* %38, align 8
  %39 = bitcast [10 x double]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %39, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.an to i8*), i64 80, i1 false)
  %40 = bitcast [10 x double]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %40, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.neg_1n to i8*), i64 80, i1 false)
  %41 = bitcast [10 x double]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 16 bitcast ([10 x double]* @__const.fast_nuclear_W.denominator_left to i8*), i64 80, i1 false)
  %42 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fmul double 0.000000e+00, %43
  %47 = fmul double 1.200000e+01, %45
  %48 = fmul double 0.000000e+00, %45
  %49 = fmul double 1.200000e+01, %43
  %50 = fsub double %46, %47
  %51 = fadd double %48, %49
  %52 = fcmp uno double %50, %50
  br i1 %52, label %53, label %59, !prof !2

53:                                               ; preds = %36
  %54 = fcmp uno double %51, %51
  br i1 %54, label %55, label %59, !prof !2

55:                                               ; preds = %53
  %56 = call { double, double } @__muldc3(double 0.000000e+00, double 1.200000e+01, double %43, double %45) #6
  %57 = extractvalue { double, double } %56, 0
  %58 = extractvalue { double, double } %56, 1
  br label %59

59:                                               ; preds = %55, %53, %36
  %60 = phi double [ %50, %36 ], [ %50, %53 ], [ %57, %55 ]
  %61 = phi double [ %51, %36 ], [ %51, %53 ], [ %58, %55 ]
  %62 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %63 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  store double %60, double* %62, align 8
  store double %61, double* %63, align 8
  %64 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = getelementptr inbounds { double, double }, { double, double }* %11, i32 0, i32 1
  %67 = load double, double* %66, align 8
  %68 = call { double, double } @cexp(double %65, double %67) #6
  %69 = extractvalue { double, double } %68, 0
  %70 = extractvalue { double, double } %68, 1
  %71 = fsub double 1.000000e+00, %69
  %72 = fsub double 0.000000e+00, %70
  %73 = fmul double 0.000000e+00, %71
  %74 = fmul double 1.000000e+00, %72
  %75 = fmul double 0.000000e+00, %72
  %76 = fmul double 1.000000e+00, %71
  %77 = fsub double %73, %74
  %78 = fadd double %75, %76
  %79 = fcmp uno double %77, %77
  br i1 %79, label %80, label %86, !prof !2

80:                                               ; preds = %59
  %81 = fcmp uno double %78, %78
  br i1 %81, label %82, label %86, !prof !2

82:                                               ; preds = %80
  %83 = call { double, double } @__muldc3(double 0.000000e+00, double 1.000000e+00, double %71, double %72) #6
  %84 = extractvalue { double, double } %83, 0
  %85 = extractvalue { double, double } %83, 1
  br label %86

86:                                               ; preds = %82, %80, %59
  %87 = phi double [ %77, %59 ], [ %77, %80 ], [ %84, %82 ]
  %88 = phi double [ %78, %59 ], [ %78, %80 ], [ %85, %82 ]
  %89 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %90 = load double, double* %89, align 8
  %91 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %92 = load double, double* %91, align 8
  %93 = fmul double 1.200000e+01, %90
  %94 = fmul double 1.200000e+01, %92
  %95 = call { double, double } @__divdc3(double %87, double %88, double %93, double %94) #6
  %96 = extractvalue { double, double } %95, 0
  %97 = extractvalue { double, double } %95, 1
  %98 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %99 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %96, double* %98, align 8
  store double %97, double* %99, align 8
  %100 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %101 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double 0.000000e+00, double* %100, align 8
  store double 0.000000e+00, double* %101, align 8
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %203, %86
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 10
  br i1 %104, label %105, label %206

105:                                              ; preds = %102
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x double], [10 x double]* %8, i64 0, i64 %107
  %109 = load double, double* %108, align 8
  %110 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %111 = load double, double* %110, align 8
  %112 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %113 = load double, double* %112, align 8
  %114 = fmul double 0.000000e+00, %111
  %115 = fmul double 1.200000e+01, %113
  %116 = fmul double 0.000000e+00, %113
  %117 = fmul double 1.200000e+01, %111
  %118 = fsub double %114, %115
  %119 = fadd double %116, %117
  %120 = fcmp uno double %118, %118
  br i1 %120, label %121, label %127, !prof !2

121:                                              ; preds = %105
  %122 = fcmp uno double %119, %119
  br i1 %122, label %123, label %127, !prof !2

123:                                              ; preds = %121
  %124 = call { double, double } @__muldc3(double 0.000000e+00, double 1.200000e+01, double %111, double %113) #6
  %125 = extractvalue { double, double } %124, 0
  %126 = extractvalue { double, double } %124, 1
  br label %127

127:                                              ; preds = %123, %121, %105
  %128 = phi double [ %118, %105 ], [ %118, %121 ], [ %125, %123 ]
  %129 = phi double [ %119, %105 ], [ %119, %121 ], [ %126, %123 ]
  %130 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %131 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  store double %128, double* %130, align 8
  store double %129, double* %131, align 8
  %132 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = getelementptr inbounds { double, double }, { double, double }* %15, i32 0, i32 1
  %135 = load double, double* %134, align 8
  %136 = call { double, double } @cexp(double %133, double %135) #6
  %137 = extractvalue { double, double } %136, 0
  %138 = extractvalue { double, double } %136, 1
  %139 = fmul double %109, %137
  %140 = fmul double %109, %138
  %141 = fsub double %139, 1.000000e+00
  %142 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %143 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  store double %141, double* %142, align 8
  store double %140, double* %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x double], [10 x double]* %9, i64 0, i64 %145
  %147 = load double, double* %146, align 8
  %148 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %149 = load double, double* %148, align 8
  %150 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %151 = load double, double* %150, align 8
  %152 = fmul double 1.440000e+02, %149
  %153 = fmul double 1.440000e+02, %151
  %154 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %155 = load double, double* %154, align 8
  %156 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %157 = load double, double* %156, align 8
  %158 = fmul double %152, %155
  %159 = fmul double %153, %157
  %160 = fmul double %152, %157
  %161 = fmul double %153, %155
  %162 = fsub double %158, %159
  %163 = fadd double %160, %161
  %164 = fcmp uno double %162, %162
  br i1 %164, label %165, label %171, !prof !2

165:                                              ; preds = %127
  %166 = fcmp uno double %163, %163
  br i1 %166, label %167, label %171, !prof !2

167:                                              ; preds = %165
  %168 = call { double, double } @__muldc3(double %152, double %153, double %155, double %157) #6
  %169 = extractvalue { double, double } %168, 0
  %170 = extractvalue { double, double } %168, 1
  br label %171

171:                                              ; preds = %167, %165, %127
  %172 = phi double [ %162, %127 ], [ %162, %165 ], [ %169, %167 ]
  %173 = phi double [ %163, %127 ], [ %163, %165 ], [ %170, %167 ]
  %174 = fsub double %147, %172
  %175 = fneg double %173
  %176 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 0
  %177 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 1
  store double %174, double* %176, align 8
  store double %175, double* %177, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [10 x double], [10 x double]* %7, i64 0, i64 %179
  %181 = load double, double* %180, align 8
  %182 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 0
  %183 = load double, double* %182, align 8
  %184 = getelementptr inbounds { double, double }, { double, double }* %14, i32 0, i32 1
  %185 = load double, double* %184, align 8
  %186 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 0
  %187 = load double, double* %186, align 8
  %188 = getelementptr inbounds { double, double }, { double, double }* %16, i32 0, i32 1
  %189 = load double, double* %188, align 8
  %190 = call { double, double } @__divdc3(double %183, double %185, double %187, double %189) #6
  %191 = extractvalue { double, double } %190, 0
  %192 = extractvalue { double, double } %190, 1
  %193 = fmul double %181, %191
  %194 = fmul double %181, %192
  %195 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %196 = load double, double* %195, align 8
  %197 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %198 = load double, double* %197, align 8
  %199 = fadd double %196, %193
  %200 = fadd double %198, %194
  %201 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %202 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  store double %199, double* %201, align 8
  store double %200, double* %202, align 8
  br label %203

203:                                              ; preds = %171
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %102

206:                                              ; preds = %102
  %207 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 0
  %208 = load double, double* %207, align 8
  %209 = getelementptr inbounds { double, double }, { double, double }* %6, i32 0, i32 1
  %210 = load double, double* %209, align 8
  %211 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %212 = load double, double* %211, align 8
  %213 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %214 = load double, double* %213, align 8
  %215 = fmul double %208, %212
  %216 = fmul double %210, %214
  %217 = fmul double %208, %214
  %218 = fmul double %210, %212
  %219 = fsub double %215, %216
  %220 = fadd double %217, %218
  %221 = fcmp uno double %219, %219
  br i1 %221, label %222, label %228, !prof !2

222:                                              ; preds = %206
  %223 = fcmp uno double %220, %220
  br i1 %223, label %224, label %228, !prof !2

224:                                              ; preds = %222
  %225 = call { double, double } @__muldc3(double %208, double %210, double %212, double %214) #6
  %226 = extractvalue { double, double } %225, 0
  %227 = extractvalue { double, double } %225, 1
  br label %228

228:                                              ; preds = %224, %222, %206
  %229 = phi double [ %219, %206 ], [ %219, %222 ], [ %226, %224 ]
  %230 = phi double [ %220, %206 ], [ %220, %222 ], [ %227, %224 ]
  %231 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 0
  %232 = load double, double* %231, align 8
  %233 = getelementptr inbounds { double, double }, { double, double }* %12, i32 0, i32 1
  %234 = load double, double* %233, align 8
  %235 = fmul double %229, %232
  %236 = fmul double %230, %234
  %237 = fmul double %229, %234
  %238 = fmul double %230, %232
  %239 = fsub double %235, %236
  %240 = fadd double %237, %238
  %241 = fcmp uno double %239, %239
  br i1 %241, label %242, label %248, !prof !2

242:                                              ; preds = %228
  %243 = fcmp uno double %240, %240
  br i1 %243, label %244, label %248, !prof !2

244:                                              ; preds = %242
  %245 = call { double, double } @__muldc3(double %229, double %230, double %232, double %234) #6
  %246 = extractvalue { double, double } %245, 0
  %247 = extractvalue { double, double } %245, 1
  br label %248

248:                                              ; preds = %244, %242, %228
  %249 = phi double [ %239, %228 ], [ %239, %242 ], [ %246, %244 ]
  %250 = phi double [ %240, %228 ], [ %240, %242 ], [ %247, %244 ]
  %251 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %252 = load double, double* %251, align 8
  %253 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %254 = load double, double* %253, align 8
  %255 = fadd double %252, %249
  %256 = fadd double %254, %250
  %257 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %258 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  store double %255, double* %257, align 8
  store double %256, double* %258, align 8
  %259 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 0
  %260 = load double, double* %259, align 8
  %261 = getelementptr inbounds { double, double }, { double, double }* %10, i32 0, i32 1
  %262 = load double, double* %261, align 8
  %263 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %264 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %260, double* %263, align 8
  store double %262, double* %264, align 8
  br label %372

265:                                              ; preds = %2
  store double 0x3FE065C77CDFFF0D, double* %17, align 8
  store double 0x3FD19DC7AFDB7B46, double* %18, align 8
  store double 0x3FAA80FD3629C600, double* %19, align 8
  store double 0x4005CC470A049097, double* %20, align 8
  %266 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %267 = load double, double* %266, align 8
  %268 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %269 = load double, double* %268, align 8
  %270 = fmul double 0.000000e+00, %267
  %271 = fmul double 1.000000e+00, %269
  %272 = fmul double 0.000000e+00, %269
  %273 = fmul double 1.000000e+00, %267
  %274 = fsub double %270, %271
  %275 = fadd double %272, %273
  %276 = fcmp uno double %274, %274
  br i1 %276, label %277, label %283, !prof !2

277:                                              ; preds = %265
  %278 = fcmp uno double %275, %275
  br i1 %278, label %279, label %283, !prof !2

279:                                              ; preds = %277
  %280 = call { double, double } @__muldc3(double 0.000000e+00, double 1.000000e+00, double %267, double %269) #6
  %281 = extractvalue { double, double } %280, 0
  %282 = extractvalue { double, double } %280, 1
  br label %283

283:                                              ; preds = %279, %277, %265
  %284 = phi double [ %274, %265 ], [ %274, %277 ], [ %281, %279 ]
  %285 = phi double [ %275, %265 ], [ %275, %277 ], [ %282, %279 ]
  %286 = load double, double* %17, align 8
  %287 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %288 = load double, double* %287, align 8
  %289 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %290 = load double, double* %289, align 8
  %291 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %292 = load double, double* %291, align 8
  %293 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %294 = load double, double* %293, align 8
  %295 = fmul double %288, %292
  %296 = fmul double %290, %294
  %297 = fmul double %288, %294
  %298 = fmul double %290, %292
  %299 = fsub double %295, %296
  %300 = fadd double %297, %298
  %301 = fcmp uno double %299, %299
  br i1 %301, label %302, label %308, !prof !2

302:                                              ; preds = %283
  %303 = fcmp uno double %300, %300
  br i1 %303, label %304, label %308, !prof !2

304:                                              ; preds = %302
  %305 = call { double, double } @__muldc3(double %288, double %290, double %292, double %294) #6
  %306 = extractvalue { double, double } %305, 0
  %307 = extractvalue { double, double } %305, 1
  br label %308

308:                                              ; preds = %304, %302, %283
  %309 = phi double [ %299, %283 ], [ %299, %302 ], [ %306, %304 ]
  %310 = phi double [ %300, %283 ], [ %300, %302 ], [ %307, %304 ]
  %311 = load double, double* %18, align 8
  %312 = fsub double %309, %311
  %313 = call { double, double } @__divdc3(double %286, double 0.000000e+00, double %312, double %310) #6
  %314 = extractvalue { double, double } %313, 0
  %315 = extractvalue { double, double } %313, 1
  %316 = load double, double* %19, align 8
  %317 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %318 = load double, double* %317, align 8
  %319 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %320 = load double, double* %319, align 8
  %321 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 0
  %322 = load double, double* %321, align 8
  %323 = getelementptr inbounds { double, double }, { double, double }* %4, i32 0, i32 1
  %324 = load double, double* %323, align 8
  %325 = fmul double %318, %322
  %326 = fmul double %320, %324
  %327 = fmul double %318, %324
  %328 = fmul double %320, %322
  %329 = fsub double %325, %326
  %330 = fadd double %327, %328
  %331 = fcmp uno double %329, %329
  br i1 %331, label %332, label %338, !prof !2

332:                                              ; preds = %308
  %333 = fcmp uno double %330, %330
  br i1 %333, label %334, label %338, !prof !2

334:                                              ; preds = %332
  %335 = call { double, double } @__muldc3(double %318, double %320, double %322, double %324) #6
  %336 = extractvalue { double, double } %335, 0
  %337 = extractvalue { double, double } %335, 1
  br label %338

338:                                              ; preds = %334, %332, %308
  %339 = phi double [ %329, %308 ], [ %329, %332 ], [ %336, %334 ]
  %340 = phi double [ %330, %308 ], [ %330, %332 ], [ %337, %334 ]
  %341 = load double, double* %20, align 8
  %342 = fsub double %339, %341
  %343 = call { double, double } @__divdc3(double %316, double 0.000000e+00, double %342, double %340) #6
  %344 = extractvalue { double, double } %343, 0
  %345 = extractvalue { double, double } %343, 1
  %346 = fadd double %314, %344
  %347 = fadd double %315, %345
  %348 = fmul double %284, %346
  %349 = fmul double %285, %347
  %350 = fmul double %284, %347
  %351 = fmul double %285, %346
  %352 = fsub double %348, %349
  %353 = fadd double %350, %351
  %354 = fcmp uno double %352, %352
  br i1 %354, label %355, label %361, !prof !2

355:                                              ; preds = %338
  %356 = fcmp uno double %353, %353
  br i1 %356, label %357, label %361, !prof !2

357:                                              ; preds = %355
  %358 = call { double, double } @__muldc3(double %284, double %285, double %346, double %347) #6
  %359 = extractvalue { double, double } %358, 0
  %360 = extractvalue { double, double } %358, 1
  br label %361

361:                                              ; preds = %357, %355, %338
  %362 = phi double [ %352, %338 ], [ %352, %355 ], [ %359, %357 ]
  %363 = phi double [ %353, %338 ], [ %353, %355 ], [ %360, %357 ]
  %364 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 0
  %365 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 1
  store double %362, double* %364, align 8
  store double %363, double* %365, align 8
  %366 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 0
  %367 = load double, double* %366, align 8
  %368 = getelementptr inbounds { double, double }, { double, double }* %21, i32 0, i32 1
  %369 = load double, double* %368, align 8
  %370 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 0
  %371 = getelementptr inbounds { double, double }, { double, double }* %3, i32 0, i32 1
  store double %367, double* %370, align 8
  store double %369, double* %371, align 8
  br label %372

372:                                              ; preds = %361, %248
  %373 = load { double, double }, { double, double }* %3, align 8
  ret { double, double } %373
}

; Function Attrs: nounwind
declare dso_local double @cabs(double, double) #1

declare dso_local { double, double } @__muldc3(double, double, double, double)

; Function Attrs: nounwind
declare dso_local { double, double } @cexp(double, double) #1

declare dso_local { double, double } @__divdc3(double, double, double, double)

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_macro_xs(double* %0, i32 %1, double %2, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %5, i64* %6, i64* %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca { double, double }*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x double], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store double %2, double* %11, align 8
  store { double, double }* %5, { double, double }** %12, align 8
  store i64* %6, i64** %13, align 8
  store i64* %7, i64** %14, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %28, %8
  %21 = load i32, i32* %15, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load double*, double** %9, align 8
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  store double 0.000000e+00, double* %27, align 8
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %15, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %15, align 4
  br label %20

31:                                               ; preds = %20
  store i32 0, i32* %16, align 4
  br label %32

32:                                               ; preds = %100, %31
  %33 = load i32, i32* %16, align 4
  %34 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %35 = getelementptr inbounds %struct.Materials, %struct.Materials* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %33, %40
  br i1 %41, label %42, label %103

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %44 = getelementptr inbounds %struct.Materials, %struct.Materials* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %18, align 4
  %54 = getelementptr inbounds %struct.Input, %struct.Input* %3, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %59 = load i32, i32* %18, align 4
  %60 = load double, double* %11, align 8
  %61 = load { double, double }*, { double, double }** %12, align 8
  %62 = load i64*, i64** %13, align 8
  %63 = load i64*, i64** %14, align 8
  call void @calculate_micro_xs_doppler(double* %58, i32 %59, double %60, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %61, i64* %62, i64* %63)
  br label %69

64:                                               ; preds = %42
  %65 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 0
  %66 = load i32, i32* %18, align 4
  %67 = load double, double* %11, align 8
  %68 = load { double, double }*, { double, double }** %12, align 8
  call void @calculate_micro_xs(double* %65, i32 %66, double %67, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %68)
  br label %69

69:                                               ; preds = %64, %57
  store i32 0, i32* %19, align 4
  br label %70

70:                                               ; preds = %96, %69
  %71 = load i32, i32* %19, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [4 x double], [4 x double]* %17, i64 0, i64 %75
  %77 = load double, double* %76, align 8
  %78 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 2
  %79 = getelementptr inbounds %struct.Materials, %struct.Materials* %78, i32 0, i32 2
  %80 = load double**, double*** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double*, double** %80, i64 %82
  %84 = load double*, double** %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds double, double* %84, i64 %86
  %88 = load double, double* %87, align 8
  %89 = fmul double %77, %88
  %90 = load double*, double** %9, align 8
  %91 = load i32, i32* %19, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fadd double %94, %89
  store double %95, double* %93, align 8
  br label %96

96:                                               ; preds = %73
  %97 = load i32, i32* %19, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %19, align 4
  br label %70

99:                                               ; preds = %70
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %16, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %16, align 4
  br label %32

103:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs_doppler(double* %0, i32 %1, double %2, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %5, i64* %6, i64* %7) #0 {
  %9 = alloca double*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca { double, double }*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.Window, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.Pole, align 8
  %25 = alloca { double, double }, align 8
  %26 = alloca { double, double }, align 8
  %27 = alloca { double, double }, align 8
  %28 = alloca { double, double }, align 8
  store double* %0, double** %9, align 8
  store i32 %1, i32* %10, align 4
  store double %2, double* %11, align 8
  store { double, double }* %5, { double, double }** %12, align 8
  store i64* %6, i64** %13, align 8
  store i64* %7, i64** %14, align 8
  %29 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = sitofp i32 %34 to double
  %36 = fdiv double 1.000000e+00, %35
  store double %36, double* %19, align 8
  %37 = load double, double* %11, align 8
  %38 = load double, double* %19, align 8
  %39 = fdiv double %37, %38
  %40 = fptosi double %39 to i32
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %41, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %8
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %20, align 4
  br label %52

52:                                               ; preds = %49, %8
  %53 = load i32, i32* %10, align 4
  %54 = load double, double* %11, align 8
  %55 = load { double, double }*, { double, double }** %12, align 8
  call void @calculate_sig_T(i32 %53, double %54, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %55)
  %56 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 4
  %57 = load %struct.Window**, %struct.Window*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.Window*, %struct.Window** %57, i64 %59
  %61 = load %struct.Window*, %struct.Window** %60, align 8
  %62 = load i32, i32* %20, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.Window, %struct.Window* %61, i64 %63
  %65 = bitcast %struct.Window* %21 to i8*
  %66 = bitcast %struct.Window* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 32, i1 false)
  %67 = load double, double* %11, align 8
  %68 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 0
  %69 = load double, double* %68, align 8
  %70 = fmul double %67, %69
  store double %70, double* %15, align 8
  %71 = load double, double* %11, align 8
  %72 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 1
  %73 = load double, double* %72, align 8
  %74 = fmul double %71, %73
  store double %74, double* %16, align 8
  %75 = load double, double* %11, align 8
  %76 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 2
  %77 = load double, double* %76, align 8
  %78 = fmul double %75, %77
  store double %78, double* %17, align 8
  store double 5.000000e-01, double* %22, align 8
  %79 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %23, align 4
  br label %81

81:                                               ; preds = %252, %52
  %82 = load i32, i32* %23, align 4
  %83 = getelementptr inbounds %struct.Window, %struct.Window* %21, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %255

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 3
  %88 = load %struct.Pole**, %struct.Pole*** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.Pole*, %struct.Pole** %88, i64 %90
  %92 = load %struct.Pole*, %struct.Pole** %91, align 8
  %93 = load i32, i32* %23, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Pole, %struct.Pole* %92, i64 %94
  %96 = bitcast %struct.Pole* %24 to i8*
  %97 = bitcast %struct.Pole* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %97, i64 72, i1 false)
  %98 = load double, double* %11, align 8
  %99 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 0
  %100 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = getelementptr inbounds { double, double }, { double, double }* %99, i32 0, i32 1
  %103 = load double, double* %102, align 8
  %104 = fsub double %98, %101
  %105 = fneg double %103
  %106 = load double, double* %22, align 8
  %107 = fmul double %104, %106
  %108 = fmul double %105, %106
  %109 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %110 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  store double %107, double* %109, align 8
  store double %108, double* %110, align 8
  %111 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %112 = load double, double* %111, align 8
  %113 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  %114 = load double, double* %113, align 8
  %115 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %116 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  store double %112, double* %115, align 8
  store double %114, double* %116, align 8
  %117 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 0
  %118 = load double, double* %117, align 8
  %119 = getelementptr inbounds { double, double }, { double, double }* %26, i32 0, i32 1
  %120 = load double, double* %119, align 8
  %121 = call double @cabs(double %118, double %120) #6
  %122 = fcmp olt double %121, 6.000000e+00
  br i1 %122, label %123, label %127

123:                                              ; preds = %86
  %124 = load i64*, i64** %13, align 8
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %123, %86
  %128 = load i64*, i64** %14, align 8
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* %128, align 8
  %131 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 0
  %132 = load double, double* %131, align 8
  %133 = getelementptr inbounds { double, double }, { double, double }* %25, i32 0, i32 1
  %134 = load double, double* %133, align 8
  %135 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 0
  %136 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 1
  store double %132, double* %135, align 8
  store double %134, double* %136, align 8
  %137 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = getelementptr inbounds { double, double }, { double, double }* %28, i32 0, i32 1
  %140 = load double, double* %139, align 8
  %141 = call { double, double } @fast_nuclear_W(double %138, double %140)
  %142 = extractvalue { double, double } %141, 0
  %143 = extractvalue { double, double } %141, 1
  %144 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %145 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  store double %142, double* %144, align 8
  store double %143, double* %145, align 8
  %146 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 1
  %147 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = getelementptr inbounds { double, double }, { double, double }* %146, i32 0, i32 1
  %150 = load double, double* %149, align 8
  %151 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %152 = load double, double* %151, align 8
  %153 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %154 = load double, double* %153, align 8
  %155 = fmul double %148, %152
  %156 = fmul double %150, %154
  %157 = fmul double %148, %154
  %158 = fmul double %150, %152
  %159 = fsub double %155, %156
  %160 = fadd double %157, %158
  %161 = fcmp uno double %159, %159
  br i1 %161, label %162, label %168, !prof !2

162:                                              ; preds = %127
  %163 = fcmp uno double %160, %160
  br i1 %163, label %164, label %168, !prof !2

164:                                              ; preds = %162
  %165 = call { double, double } @__muldc3(double %148, double %150, double %152, double %154) #6
  %166 = extractvalue { double, double } %165, 0
  %167 = extractvalue { double, double } %165, 1
  br label %168

168:                                              ; preds = %164, %162, %127
  %169 = phi double [ %159, %127 ], [ %159, %162 ], [ %166, %164 ]
  %170 = phi double [ %160, %127 ], [ %160, %162 ], [ %167, %164 ]
  %171 = load { double, double }*, { double, double }** %12, align 8
  %172 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 4
  %173 = load i16, i16* %172, align 8
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds { double, double }, { double, double }* %171, i64 %174
  %176 = getelementptr inbounds { double, double }, { double, double }* %175, i32 0, i32 0
  %177 = load double, double* %176, align 8
  %178 = getelementptr inbounds { double, double }, { double, double }* %175, i32 0, i32 1
  %179 = load double, double* %178, align 8
  %180 = fmul double %169, %177
  %181 = fmul double %170, %179
  %182 = fmul double %169, %179
  %183 = fmul double %170, %177
  %184 = fsub double %180, %181
  %185 = fadd double %182, %183
  %186 = fcmp uno double %184, %184
  br i1 %186, label %187, label %193, !prof !2

187:                                              ; preds = %168
  %188 = fcmp uno double %185, %185
  br i1 %188, label %189, label %193, !prof !2

189:                                              ; preds = %187
  %190 = call { double, double } @__muldc3(double %169, double %170, double %177, double %179) #6
  %191 = extractvalue { double, double } %190, 0
  %192 = extractvalue { double, double } %190, 1
  br label %193

193:                                              ; preds = %189, %187, %168
  %194 = phi double [ %184, %168 ], [ %184, %187 ], [ %191, %189 ]
  %195 = phi double [ %185, %168 ], [ %185, %187 ], [ %192, %189 ]
  %196 = load double, double* %15, align 8
  %197 = fadd double %196, %194
  store double %197, double* %15, align 8
  %198 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 2
  %199 = getelementptr inbounds { double, double }, { double, double }* %198, i32 0, i32 0
  %200 = load double, double* %199, align 8
  %201 = getelementptr inbounds { double, double }, { double, double }* %198, i32 0, i32 1
  %202 = load double, double* %201, align 8
  %203 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %204 = load double, double* %203, align 8
  %205 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %206 = load double, double* %205, align 8
  %207 = fmul double %200, %204
  %208 = fmul double %202, %206
  %209 = fmul double %200, %206
  %210 = fmul double %202, %204
  %211 = fsub double %207, %208
  %212 = fadd double %209, %210
  %213 = fcmp uno double %211, %211
  br i1 %213, label %214, label %220, !prof !2

214:                                              ; preds = %193
  %215 = fcmp uno double %212, %212
  br i1 %215, label %216, label %220, !prof !2

216:                                              ; preds = %214
  %217 = call { double, double } @__muldc3(double %200, double %202, double %204, double %206) #6
  %218 = extractvalue { double, double } %217, 0
  %219 = extractvalue { double, double } %217, 1
  br label %220

220:                                              ; preds = %216, %214, %193
  %221 = phi double [ %211, %193 ], [ %211, %214 ], [ %218, %216 ]
  %222 = phi double [ %212, %193 ], [ %212, %214 ], [ %219, %216 ]
  %223 = load double, double* %16, align 8
  %224 = fadd double %223, %221
  store double %224, double* %16, align 8
  %225 = getelementptr inbounds %struct.Pole, %struct.Pole* %24, i32 0, i32 3
  %226 = getelementptr inbounds { double, double }, { double, double }* %225, i32 0, i32 0
  %227 = load double, double* %226, align 8
  %228 = getelementptr inbounds { double, double }, { double, double }* %225, i32 0, i32 1
  %229 = load double, double* %228, align 8
  %230 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = getelementptr inbounds { double, double }, { double, double }* %27, i32 0, i32 1
  %233 = load double, double* %232, align 8
  %234 = fmul double %227, %231
  %235 = fmul double %229, %233
  %236 = fmul double %227, %233
  %237 = fmul double %229, %231
  %238 = fsub double %234, %235
  %239 = fadd double %236, %237
  %240 = fcmp uno double %238, %238
  br i1 %240, label %241, label %247, !prof !2

241:                                              ; preds = %220
  %242 = fcmp uno double %239, %239
  br i1 %242, label %243, label %247, !prof !2

243:                                              ; preds = %241
  %244 = call { double, double } @__muldc3(double %227, double %229, double %231, double %233) #6
  %245 = extractvalue { double, double } %244, 0
  %246 = extractvalue { double, double } %244, 1
  br label %247

247:                                              ; preds = %243, %241, %220
  %248 = phi double [ %238, %220 ], [ %238, %241 ], [ %245, %243 ]
  %249 = phi double [ %239, %220 ], [ %239, %241 ], [ %246, %243 ]
  %250 = load double, double* %17, align 8
  %251 = fadd double %250, %248
  store double %251, double* %17, align 8
  br label %252

252:                                              ; preds = %247
  %253 = load i32, i32* %23, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %23, align 4
  br label %81

255:                                              ; preds = %81
  %256 = load double, double* %15, align 8
  %257 = load double, double* %16, align 8
  %258 = fsub double %256, %257
  store double %258, double* %18, align 8
  %259 = load double, double* %15, align 8
  %260 = load double*, double** %9, align 8
  %261 = getelementptr inbounds double, double* %260, i64 0
  store double %259, double* %261, align 8
  %262 = load double, double* %16, align 8
  %263 = load double*, double** %9, align 8
  %264 = getelementptr inbounds double, double* %263, i64 1
  store double %262, double* %264, align 8
  %265 = load double, double* %17, align 8
  %266 = load double*, double** %9, align 8
  %267 = getelementptr inbounds double, double* %266, i64 2
  store double %265, double* %267, align 8
  %268 = load double, double* %18, align 8
  %269 = load double*, double** %9, align 8
  %270 = getelementptr inbounds double, double* %269, i64 3
  store double %268, double* %270, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs(double* %0, i32 %1, double %2, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %5) #0 {
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca { double, double }*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.Window, align 8
  %18 = alloca i32, align 4
  %19 = alloca { double, double }, align 8
  %20 = alloca { double, double }, align 8
  %21 = alloca %struct.Pole, align 8
  store double* %0, double** %7, align 8
  store i32 %1, i32* %8, align 4
  store double %2, double* %9, align 8
  store { double, double }* %5, { double, double }** %10, align 8
  %22 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double 1.000000e+00, %28
  store double %29, double* %15, align 8
  %30 = load double, double* %9, align 8
  %31 = load double, double* %15, align 8
  %32 = fdiv double %30, %31
  %33 = fptosi double %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %34, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %6
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %6
  %46 = load i32, i32* %8, align 4
  %47 = load double, double* %9, align 8
  %48 = load { double, double }*, { double, double }** %10, align 8
  call void @calculate_sig_T(i32 %46, double %47, %struct.Input* byval(%struct.Input) align 8 %3, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %4, { double, double }* %48)
  %49 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 4
  %50 = load %struct.Window**, %struct.Window*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.Window*, %struct.Window** %50, i64 %52
  %54 = load %struct.Window*, %struct.Window** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Window, %struct.Window* %54, i64 %56
  %58 = bitcast %struct.Window* %17 to i8*
  %59 = bitcast %struct.Window* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 32, i1 false)
  %60 = load double, double* %9, align 8
  %61 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 0
  %62 = load double, double* %61, align 8
  %63 = fmul double %60, %62
  store double %63, double* %11, align 8
  %64 = load double, double* %9, align 8
  %65 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 1
  %66 = load double, double* %65, align 8
  %67 = fmul double %64, %66
  store double %67, double* %12, align 8
  %68 = load double, double* %9, align 8
  %69 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 2
  %70 = load double, double* %69, align 8
  %71 = fmul double %68, %70
  store double %71, double* %13, align 8
  %72 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %18, align 4
  br label %74

74:                                               ; preds = %219, %45
  %75 = load i32, i32* %18, align 4
  %76 = getelementptr inbounds %struct.Window, %struct.Window* %17, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %222

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %4, i32 0, i32 3
  %81 = load %struct.Pole**, %struct.Pole*** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.Pole*, %struct.Pole** %81, i64 %83
  %85 = load %struct.Pole*, %struct.Pole** %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.Pole, %struct.Pole* %85, i64 %87
  %89 = bitcast %struct.Pole* %21 to i8*
  %90 = bitcast %struct.Pole* %88 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %89, i8* align 8 %90, i64 72, i1 false)
  %91 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 0
  %92 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 0
  %93 = load double, double* %92, align 8
  %94 = getelementptr inbounds { double, double }, { double, double }* %91, i32 0, i32 1
  %95 = load double, double* %94, align 8
  %96 = load double, double* %9, align 8
  %97 = call double @sqrt(double %96) #6
  %98 = fsub double %93, %97
  %99 = call { double, double } @__divdc3(double -0.000000e+00, double 1.000000e+00, double %98, double %95) #6
  %100 = extractvalue { double, double } %99, 0
  %101 = extractvalue { double, double } %99, 1
  %102 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  %103 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  store double %100, double* %102, align 8
  store double %101, double* %103, align 8
  %104 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 0
  %105 = load double, double* %104, align 8
  %106 = getelementptr inbounds { double, double }, { double, double }* %19, i32 0, i32 1
  %107 = load double, double* %106, align 8
  %108 = load double, double* %9, align 8
  %109 = fdiv double %105, %108
  %110 = fdiv double %107, %108
  %111 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %112 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  store double %109, double* %111, align 8
  store double %110, double* %112, align 8
  %113 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 1
  %114 = getelementptr inbounds { double, double }, { double, double }* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = getelementptr inbounds { double, double }, { double, double }* %113, i32 0, i32 1
  %117 = load double, double* %116, align 8
  %118 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %119 = load double, double* %118, align 8
  %120 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %121 = load double, double* %120, align 8
  %122 = fmul double %115, %119
  %123 = fmul double %117, %121
  %124 = fmul double %115, %121
  %125 = fmul double %117, %119
  %126 = fsub double %122, %123
  %127 = fadd double %124, %125
  %128 = fcmp uno double %126, %126
  br i1 %128, label %129, label %135, !prof !2

129:                                              ; preds = %79
  %130 = fcmp uno double %127, %127
  br i1 %130, label %131, label %135, !prof !2

131:                                              ; preds = %129
  %132 = call { double, double } @__muldc3(double %115, double %117, double %119, double %121) #6
  %133 = extractvalue { double, double } %132, 0
  %134 = extractvalue { double, double } %132, 1
  br label %135

135:                                              ; preds = %131, %129, %79
  %136 = phi double [ %126, %79 ], [ %126, %129 ], [ %133, %131 ]
  %137 = phi double [ %127, %79 ], [ %127, %129 ], [ %134, %131 ]
  %138 = load { double, double }*, { double, double }** %10, align 8
  %139 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 4
  %140 = load i16, i16* %139, align 8
  %141 = sext i16 %140 to i64
  %142 = getelementptr inbounds { double, double }, { double, double }* %138, i64 %141
  %143 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 0
  %144 = load double, double* %143, align 8
  %145 = getelementptr inbounds { double, double }, { double, double }* %142, i32 0, i32 1
  %146 = load double, double* %145, align 8
  %147 = fmul double %136, %144
  %148 = fmul double %137, %146
  %149 = fmul double %136, %146
  %150 = fmul double %137, %144
  %151 = fsub double %147, %148
  %152 = fadd double %149, %150
  %153 = fcmp uno double %151, %151
  br i1 %153, label %154, label %160, !prof !2

154:                                              ; preds = %135
  %155 = fcmp uno double %152, %152
  br i1 %155, label %156, label %160, !prof !2

156:                                              ; preds = %154
  %157 = call { double, double } @__muldc3(double %136, double %137, double %144, double %146) #6
  %158 = extractvalue { double, double } %157, 0
  %159 = extractvalue { double, double } %157, 1
  br label %160

160:                                              ; preds = %156, %154, %135
  %161 = phi double [ %151, %135 ], [ %151, %154 ], [ %158, %156 ]
  %162 = phi double [ %152, %135 ], [ %152, %154 ], [ %159, %156 ]
  %163 = load double, double* %11, align 8
  %164 = fadd double %163, %161
  store double %164, double* %11, align 8
  %165 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 2
  %166 = getelementptr inbounds { double, double }, { double, double }* %165, i32 0, i32 0
  %167 = load double, double* %166, align 8
  %168 = getelementptr inbounds { double, double }, { double, double }* %165, i32 0, i32 1
  %169 = load double, double* %168, align 8
  %170 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %171 = load double, double* %170, align 8
  %172 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %173 = load double, double* %172, align 8
  %174 = fmul double %167, %171
  %175 = fmul double %169, %173
  %176 = fmul double %167, %173
  %177 = fmul double %169, %171
  %178 = fsub double %174, %175
  %179 = fadd double %176, %177
  %180 = fcmp uno double %178, %178
  br i1 %180, label %181, label %187, !prof !2

181:                                              ; preds = %160
  %182 = fcmp uno double %179, %179
  br i1 %182, label %183, label %187, !prof !2

183:                                              ; preds = %181
  %184 = call { double, double } @__muldc3(double %167, double %169, double %171, double %173) #6
  %185 = extractvalue { double, double } %184, 0
  %186 = extractvalue { double, double } %184, 1
  br label %187

187:                                              ; preds = %183, %181, %160
  %188 = phi double [ %178, %160 ], [ %178, %181 ], [ %185, %183 ]
  %189 = phi double [ %179, %160 ], [ %179, %181 ], [ %186, %183 ]
  %190 = load double, double* %12, align 8
  %191 = fadd double %190, %188
  store double %191, double* %12, align 8
  %192 = getelementptr inbounds %struct.Pole, %struct.Pole* %21, i32 0, i32 3
  %193 = getelementptr inbounds { double, double }, { double, double }* %192, i32 0, i32 0
  %194 = load double, double* %193, align 8
  %195 = getelementptr inbounds { double, double }, { double, double }* %192, i32 0, i32 1
  %196 = load double, double* %195, align 8
  %197 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 0
  %198 = load double, double* %197, align 8
  %199 = getelementptr inbounds { double, double }, { double, double }* %20, i32 0, i32 1
  %200 = load double, double* %199, align 8
  %201 = fmul double %194, %198
  %202 = fmul double %196, %200
  %203 = fmul double %194, %200
  %204 = fmul double %196, %198
  %205 = fsub double %201, %202
  %206 = fadd double %203, %204
  %207 = fcmp uno double %205, %205
  br i1 %207, label %208, label %214, !prof !2

208:                                              ; preds = %187
  %209 = fcmp uno double %206, %206
  br i1 %209, label %210, label %214, !prof !2

210:                                              ; preds = %208
  %211 = call { double, double } @__muldc3(double %194, double %196, double %198, double %200) #6
  %212 = extractvalue { double, double } %211, 0
  %213 = extractvalue { double, double } %211, 1
  br label %214

214:                                              ; preds = %210, %208, %187
  %215 = phi double [ %205, %187 ], [ %205, %208 ], [ %212, %210 ]
  %216 = phi double [ %206, %187 ], [ %206, %208 ], [ %213, %210 ]
  %217 = load double, double* %13, align 8
  %218 = fadd double %217, %215
  store double %218, double* %13, align 8
  br label %219

219:                                              ; preds = %214
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %74

222:                                              ; preds = %74
  %223 = load double, double* %11, align 8
  %224 = load double, double* %12, align 8
  %225 = fsub double %223, %224
  store double %225, double* %14, align 8
  %226 = load double, double* %11, align 8
  %227 = load double*, double** %7, align 8
  %228 = getelementptr inbounds double, double* %227, i64 0
  store double %226, double* %228, align 8
  %229 = load double, double* %12, align 8
  %230 = load double*, double** %7, align 8
  %231 = getelementptr inbounds double, double* %230, i64 1
  store double %229, double* %231, align 8
  %232 = load double, double* %13, align 8
  %233 = load double*, double** %7, align 8
  %234 = getelementptr inbounds double, double* %233, i64 2
  store double %232, double* %234, align 8
  %235 = load double, double* %14, align 8
  %236 = load double*, double** %7, align 8
  %237 = getelementptr inbounds double, double* %236, i64 3
  store double %235, double* %237, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_sig_T(i32 %0, double %1, %struct.Input* byval(%struct.Input) align 8 %2, %struct.CalcDataPtrs* byval(%struct.CalcDataPtrs) align 8 %3, { double, double }* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca { double, double }*, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store { double, double }* %4, { double, double }** %8, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %90, %5
  %12 = load i32, i32* %10, align 4
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %2, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %93

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.CalcDataPtrs, %struct.CalcDataPtrs* %3, i32 0, i32 5
  %18 = load double**, double*** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds double*, double** %18, i64 %20
  %22 = load double*, double** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds double, double* %22, i64 %24
  %26 = load double, double* %25, align 8
  %27 = load double, double* %7, align 8
  %28 = call double @sqrt(double %27) #6
  %29 = fmul double %26, %28
  store double %29, double* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load double, double* %9, align 8
  %34 = call double @atan(double %33) #6
  %35 = fneg double %34
  %36 = load double, double* %9, align 8
  %37 = fsub double %36, %35
  store double %37, double* %9, align 8
  br label %73

38:                                               ; preds = %16
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %52

41:                                               ; preds = %38
  %42 = load double, double* %9, align 8
  %43 = fmul double 3.000000e+00, %42
  %44 = load double, double* %9, align 8
  %45 = load double, double* %9, align 8
  %46 = fmul double %44, %45
  %47 = fsub double 3.000000e+00, %46
  %48 = fdiv double %43, %47
  %49 = call double @atan(double %48) #6
  %50 = load double, double* %9, align 8
  %51 = fsub double %50, %49
  store double %51, double* %9, align 8
  br label %72

52:                                               ; preds = %38
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = load double, double* %9, align 8
  %57 = load double, double* %9, align 8
  %58 = load double, double* %9, align 8
  %59 = fmul double %57, %58
  %60 = fsub double 1.500000e+01, %59
  %61 = fmul double %56, %60
  %62 = load double, double* %9, align 8
  %63 = fmul double 6.000000e+00, %62
  %64 = load double, double* %9, align 8
  %65 = fmul double %63, %64
  %66 = fsub double 1.500000e+01, %65
  %67 = fdiv double %61, %66
  %68 = call double @atan(double %67) #6
  %69 = load double, double* %9, align 8
  %70 = fsub double %69, %68
  store double %70, double* %9, align 8
  br label %71

71:                                               ; preds = %55, %52
  br label %72

72:                                               ; preds = %71, %41
  br label %73

73:                                               ; preds = %72, %32
  %74 = load double, double* %9, align 8
  %75 = fmul double %74, 2.000000e+00
  store double %75, double* %9, align 8
  %76 = load double, double* %9, align 8
  %77 = call double @cos(double %76) #6
  %78 = load double, double* %9, align 8
  %79 = call double @sin(double %78) #6
  %80 = fmul double %79, 0.000000e+00
  %81 = fmul double %79, 1.000000e+00
  %82 = fsub double %77, %80
  %83 = fneg double %81
  %84 = load { double, double }*, { double, double }** %8, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds { double, double }, { double, double }* %84, i64 %86
  %88 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 0
  %89 = getelementptr inbounds { double, double }, { double, double }* %87, i32 0, i32 1
  store double %82, double* %88, align 8
  store double %83, double* %89, align 8
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %11

93:                                               ; preds = %11
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: nounwind
declare dso_local double @atan(double) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!"branch_weights", i32 1, i32 1048575}
