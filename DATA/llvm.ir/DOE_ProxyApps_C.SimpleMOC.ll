; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.Input = type { i32, i32, i32, i32, i32, float, float, i32, i32, i32, i8, i32, i64, float, float, float, float, i64, i64, i32, i64, i32, i32, i64, i64, i8, i8*, i64 }
%struct.Params = type { %struct.Track2D*, %struct.Track***, %struct.Source*, float*, float*, %struct.Table }
%struct.Track2D = type { float, i64, %struct.Segment*, i32 }
%struct.Segment = type { float, i64 }
%struct.Track = type { float, float, i64, i64, float*, float* }
%struct.Source = type { float**, float**, float, float*, float**, float** }
%struct.Table = type { float*, float, float, i32 }
%struct.CommGrid = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.AttenuateVars = type { float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float* }
%struct._G_fpos_t = type { i64, %struct.__mbstate_t }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@next = internal global i32 0, align 4
@table = internal global [344 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Initializing 2D tracks...\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Initializing 3D tracks...\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Initializing flat source regions...\0A\00", align 1
@.str.4 = private unnamed_addr constant [537 x i8] c"              _____ _                 _      __  __  ____   _____ \0A             / ____(_)               | |    |  \\/  |/ __ \\ / ____|\0A            | (___  _ _ __ ___  _ __ | | ___| \\  / | |  | | |     \0A             \\___ \\| | '_ ` _ \\| '_ \\| |/ _ \\ |\\/| | |  | | |     \0A             ____) | | | | | | | |_) | |  __/ |  | | |__| | |____ \0A            |_____/|_|_| |_| |_| .__/|_|\\___|_|  |_|\\____/ \\_____|\0A                               | |                                \0A                               |_|                                \0A\00", align 1
@.str.1.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [13 x i8] c"Developed at\00", align 1
@.str.3.9 = private unnamed_addr constant [42 x i8] c"The Massachusetts Institute of Technology\00", align 1
@.str.4.10 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Argonne National Laboratory\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"%d,%03d\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%d,%03d,%03d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"%d,%03d,%03d,%03d\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"%-35s%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"x-axis assemblies:\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"y-axis assemblies:\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"coarse axial intervals:\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"fine axial intervals:\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"axial source expansion order:\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"%-35s%.2lf\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"radial ray separation:\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"axial z-ray separation:\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"azimuthal angles:\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"polar angles:\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"energy groups:\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"assemblies per axial sub-domain:\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"%-35s%ld\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"avg segments per track:\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"assembly width:\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"reactor height:\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"2D Src regions per assembly:\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"2D Tracks:\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"%-35s\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"3D Tracks:\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"FIle Open FAILED\0A\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Usage: ./SimpleMOC <options>\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"Options include:\0A\00", align 1
@.str.41 = private unnamed_addr constant [52 x i8] c"  -t <threads>     Number of OpenMP threads to run\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"  -i <filename>    Input file name\0A\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"  -p <PAPI event>  PAPI event name to count (1 only) \0A\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"  -s               Small problem flag \0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"  -d <filename>    OpenMOC tracking file\0A\00", align 1
@.str.46 = private unnamed_addr constant [55 x i8] c"See readme for full description of default run values\0A\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str.1.53 = private unnamed_addr constant [11 x i8] c"keff = %f\0A\00", align 1
@.str.2.54 = private unnamed_addr constant [16 x i8] c"RESULTS SUMMARY\00", align 1
@.str.3.55 = private unnamed_addr constant [55 x i8] c"Transport Sweep Time:         %6.2lf sec   (%4.1lf%%)\0A\00", align 1
@.str.4.56 = private unnamed_addr constant [55 x i8] c"Domain Flux Exchange Time:    %6.2lf sec   (%4.1lf%%)\0A\00", align 1
@.str.5.57 = private unnamed_addr constant [55 x i8] c"Flux Renormalization Time:    %6.2lf sec   (%4.1lf%%)\0A\00", align 1
@.str.6.58 = private unnamed_addr constant [55 x i8] c"Update Source Time:           %6.2lf sec   (%4.1lf%%)\0A\00", align 1
@.str.7.59 = private unnamed_addr constant [55 x i8] c"K-Effective Calc Time:        %6.2lf sec   (%4.1lf%%)\0A\00", align 1
@.str.8.60 = private unnamed_addr constant [42 x i8] c"Total Time:                   %6.2lf sec\0A\00", align 1
@.str.9.61 = private unnamed_addr constant [33 x i8] c"Time per Intersection:          \00", align 1
@.str.10.62 = private unnamed_addr constant [10 x i8] c"%.2lf ns\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"Starting transport sweep ...\0A\00", align 1
@.str.1.66 = private unnamed_addr constant [37 x i8] c"Error: invalid axial expansion order\00", align 1
@.str.2.67 = private unnamed_addr constant [23 x i8] c"\0A Please input 0 or 2\0A\00", align 1
@.str.3.68 = private unnamed_addr constant [12 x i8] c"%s%ld%s%ld\0A\00", align 1
@.str.4.69 = private unnamed_addr constant [23 x i8] c"2D Tracks Completed = \00", align 1
@.str.5.70 = private unnamed_addr constant [4 x i8] c" / \00", align 1
@.str.6.73 = private unnamed_addr constant [23 x i8] c"Renormalizing Flux...\0A\00", align 1
@.str.7.74 = private unnamed_addr constant [30 x i8] c"Renormalizing Flux Complete.\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"Beginning XS Allocation...\0A\00", align 1
@.str.1.82 = private unnamed_addr constant [51 x i8] c"Beginning Source and Flux Parameter Allocation...\0A\00", align 1
@.str.83 = private unnamed_addr constant [14 x i8] c"INPUT STRUCT\0A\00", align 1
@.str.1.84 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2.85 = private unnamed_addr constant [5 x i8] c"%lf\0A\00", align 1
@.str.3.86 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.4.87 = private unnamed_addr constant [18 x i8] c"END INPUT STRUCT\0A\00", align 1
@.str.5.88 = private unnamed_addr constant [15 x i8] c"gen_points.txt\00", align 1
@.str.6.89 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7.90 = private unnamed_addr constant [52 x i8] c"Random numbers generated for a normal distribution\0A\00", align 1
@.str.8.91 = private unnamed_addr constant [11 x i8] c"Mean = %f\0A\00", align 1
@.str.9.92 = private unnamed_addr constant [25 x i8] c"Standard deviation = %f\0A\00", align 1
@.str.10.93 = private unnamed_addr constant [19 x i8] c"Generated points:\0A\00", align 1
@.str.11.94 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.108 = private unnamed_addr constant [29 x i8] c"Reading track data from:\0A%s\0A\00", align 1
@.str.2.109 = private unnamed_addr constant [41 x i8] c"Importing ray tracing data from file...\0A\00", align 1
@.str.3.110 = private unnamed_addr constant [27 x i8] c"Number of 2D tracks = %ld\0A\00", align 1
@.str.4.111 = private unnamed_addr constant [27 x i8] c"Number of 3D tracks = %ld\0A\00", align 1
@.str.5.112 = private unnamed_addr constant [26 x i8] c"Number of segments = %ld\0A\00", align 1

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
define dso_local void @calculate_derived_inputs(%struct.Input* %0) #0 {
  %2 = alloca %struct.Input*, align 8
  store %struct.Input* %0, %struct.Input** %2, align 8
  %3 = load %struct.Input*, %struct.Input** %2, align 8
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* %4, align 4
  %7 = load %struct.Input*, %struct.Input** %2, align 8
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %7, i32 0, i32 7
  %9 = load i32, i32* %8, align 4
  %10 = sitofp i32 %9 to double
  %11 = load %struct.Input*, %struct.Input** %2, align 8
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %11, i32 0, i32 13
  %13 = load float, float* %12, align 8
  %14 = fpext float %13 to double
  %15 = call double @sqrt(double 2.000000e+00) #6
  %16 = fmul double %14, %15
  %17 = load %struct.Input*, %struct.Input** %2, align 8
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %17, i32 0, i32 5
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = fdiv double %16, %20
  %22 = fmul double %10, %21
  %23 = fptosi double %22 to i64
  %24 = load %struct.Input*, %struct.Input** %2, align 8
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %24, i32 0, i32 18
  store i64 %23, i64* %25, align 8
  %26 = load %struct.Input*, %struct.Input** %2, align 8
  %27 = getelementptr inbounds %struct.Input, %struct.Input* %26, i32 0, i32 18
  %28 = load i64, i64* %27, align 8
  %29 = sdiv i64 %28, 2
  %30 = mul nsw i64 2, %29
  %31 = load %struct.Input*, %struct.Input** %2, align 8
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %31, i32 0, i32 18
  store i64 %30, i64* %32, align 8
  %33 = load %struct.Input*, %struct.Input** %2, align 8
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %33, i32 0, i32 14
  %35 = load float, float* %34, align 4
  %36 = load %struct.Input*, %struct.Input** %2, align 8
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %36, i32 0, i32 6
  %38 = load float, float* %37, align 8
  %39 = load %struct.Input*, %struct.Input** %2, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to float
  %43 = fmul float %38, %42
  %44 = fdiv float %35, %43
  %45 = fptosi float %44 to i32
  %46 = load %struct.Input*, %struct.Input** %2, align 8
  %47 = getelementptr inbounds %struct.Input, %struct.Input* %46, i32 0, i32 19
  store i32 %45, i32* %47, align 8
  %48 = load %struct.Input*, %struct.Input** %2, align 8
  %49 = getelementptr inbounds %struct.Input, %struct.Input* %48, i32 0, i32 18
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.Input*, %struct.Input** %2, align 8
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %51, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %50, %54
  %56 = load %struct.Input*, %struct.Input** %2, align 8
  %57 = getelementptr inbounds %struct.Input, %struct.Input* %56, i32 0, i32 19
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %55, %59
  %61 = load %struct.Input*, %struct.Input** %2, align 8
  %62 = getelementptr inbounds %struct.Input, %struct.Input* %61, i32 0, i32 20
  store i64 %60, i64* %62, align 8
  %63 = load %struct.Input*, %struct.Input** %2, align 8
  %64 = getelementptr inbounds %struct.Input, %struct.Input* %63, i32 0, i32 14
  %65 = load float, float* %64, align 4
  %66 = load %struct.Input*, %struct.Input** %2, align 8
  %67 = getelementptr inbounds %struct.Input, %struct.Input* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %65, %69
  %71 = load %struct.Input*, %struct.Input** %2, align 8
  %72 = getelementptr inbounds %struct.Input, %struct.Input* %71, i32 0, i32 15
  store float %70, float* %72, align 8
  %73 = load %struct.Input*, %struct.Input** %2, align 8
  %74 = getelementptr inbounds %struct.Input, %struct.Input* %73, i32 0, i32 23
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.Input*, %struct.Input** %2, align 8
  %77 = getelementptr inbounds %struct.Input, %struct.Input* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %75, %79
  %81 = load %struct.Input*, %struct.Input** %2, align 8
  %82 = getelementptr inbounds %struct.Input, %struct.Input* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = sdiv i64 %80, %84
  %86 = load %struct.Input*, %struct.Input** %2, align 8
  %87 = getelementptr inbounds %struct.Input, %struct.Input* %86, i32 0, i32 24
  store i64 %85, i64* %87, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_default_input(%struct.Input* noalias sret %0) #0 {
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  store i32 17, i32* %2, align 8
  %3 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  store i32 17, i32* %3, align 4
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  store i32 27, i32* %4, align 8
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  store i32 5, i32* %5, align 4
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  store i32 2, i32* %6, align 8
  %7 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  store float 0x3FA99999A0000000, float* %7, align 4
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  store float 2.500000e-01, float* %8, align 8
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  store i32 64, i32* %9, align 4
  %10 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  store i32 10, i32* %10, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  store i32 104, i32* %11, align 4
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 10
  store i8 1, i8* %12, align 8
  %13 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 11
  store i32 20, i32* %13, align 4
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  store i64 120, i64* %14, align 8
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  store float 0x40356B8520000000, float* %15, align 8
  %16 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 14
  store float 4.000000e+02, float* %16, align 4
  %17 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 16
  store float 0x3F847AE140000000, float* %17, align 4
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 23
  store i64 5000, i64* %19, align 8
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 25
  store i8 0, i8* %20, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_small_input(%struct.Input* %0) #0 {
  %2 = alloca %struct.Input*, align 8
  store %struct.Input* %0, %struct.Input** %2, align 8
  %3 = load %struct.Input*, %struct.Input** %2, align 8
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %3, i32 0, i32 0
  store i32 15, i32* %4, align 8
  %5 = load %struct.Input*, %struct.Input** %2, align 8
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %5, i32 0, i32 1
  store i32 15, i32* %6, align 4
  %7 = load %struct.Input*, %struct.Input** %2, align 8
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %7, i32 0, i32 2
  store i32 5, i32* %8, align 8
  %9 = load %struct.Input*, %struct.Input** %2, align 8
  %10 = getelementptr inbounds %struct.Input, %struct.Input* %9, i32 0, i32 3
  store i32 3, i32* %10, align 4
  %11 = load %struct.Input*, %struct.Input** %2, align 8
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %11, i32 0, i32 4
  store i32 2, i32* %12, align 8
  %13 = load %struct.Input*, %struct.Input** %2, align 8
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %13, i32 0, i32 5
  store float 5.000000e-01, float* %14, align 4
  %15 = load %struct.Input*, %struct.Input** %2, align 8
  %16 = getelementptr inbounds %struct.Input, %struct.Input* %15, i32 0, i32 6
  store float 0x3FC99999A0000000, float* %16, align 8
  %17 = load %struct.Input*, %struct.Input** %2, align 8
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %17, i32 0, i32 7
  store i32 5, i32* %18, align 4
  %19 = load %struct.Input*, %struct.Input** %2, align 8
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 8
  store i32 5, i32* %20, align 8
  %21 = load %struct.Input*, %struct.Input** %2, align 8
  %22 = getelementptr inbounds %struct.Input, %struct.Input* %21, i32 0, i32 9
  store i32 104, i32* %22, align 4
  %23 = load %struct.Input*, %struct.Input** %2, align 8
  %24 = getelementptr inbounds %struct.Input, %struct.Input* %23, i32 0, i32 10
  store i8 0, i8* %24, align 8
  %25 = load %struct.Input*, %struct.Input** %2, align 8
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %25, i32 0, i32 11
  store i32 1, i32* %26, align 4
  %27 = load %struct.Input*, %struct.Input** %2, align 8
  %28 = getelementptr inbounds %struct.Input, %struct.Input* %27, i32 0, i32 12
  store i64 120, i64* %28, align 8
  %29 = load %struct.Input*, %struct.Input** %2, align 8
  %30 = getelementptr inbounds %struct.Input, %struct.Input* %29, i32 0, i32 13
  store float 0x40356B8520000000, float* %30, align 8
  %31 = load %struct.Input*, %struct.Input** %2, align 8
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %31, i32 0, i32 14
  store float 4.000000e+02, float* %32, align 4
  %33 = load %struct.Input*, %struct.Input** %2, align 8
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %33, i32 0, i32 16
  store float 0x3F847AE140000000, float* %34, align 4
  %35 = load %struct.Input*, %struct.Input** %2, align 8
  %36 = getelementptr inbounds %struct.Input, %struct.Input* %35, i32 0, i32 23
  store i64 3000, i64* %36, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @build_tracks(%struct.Params* noalias sret %0, %struct.Input* %1) #0 {
  %3 = alloca %struct.Input*, align 8
  %4 = alloca %struct.Input, align 8
  %5 = alloca i64, align 8
  %6 = alloca float*, align 8
  %7 = alloca %struct.Table, align 8
  store %struct.Input* %1, %struct.Input** %3, align 8
  %8 = load %struct.Input*, %struct.Input** %3, align 8
  %9 = bitcast %struct.Input* %4 to i8*
  %10 = bitcast %struct.Input* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 152, i1 false)
  store i64 0, i64* %5, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 17
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  call void @center_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 79)
  call void @border_print()
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 25
  %18 = load i8, i8* %17, align 8
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 26
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.Input*, %struct.Input** %3, align 8
  %24 = call %struct.Track2D* @load_OpenMOC_tracks(i8* %22, i1 zeroext false, %struct.Input* %23, i64* %5)
  %25 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 0
  store %struct.Track2D* %24, %struct.Track2D** %25, align 8
  %26 = load %struct.Input*, %struct.Input** %3, align 8
  %27 = bitcast %struct.Input* %4 to i8*
  %28 = bitcast %struct.Input* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 152, i1 false)
  br label %32

29:                                               ; preds = %16
  %30 = call %struct.Track2D* @generate_2D_tracks(%struct.Input* byval(%struct.Input) align 8 %4, i64* %5)
  %31 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 0
  store %struct.Track2D* %30, %struct.Track2D** %31, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 17
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  %39 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 0
  %40 = load %struct.Track2D*, %struct.Track2D** %39, align 8
  %41 = call %struct.Track*** @generate_tracks(%struct.Input* byval(%struct.Input) align 8 %4, %struct.Track2D* %40, i64* %5)
  %42 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 1
  store %struct.Track*** %41, %struct.Track**** %42, align 8
  %43 = call float* @generate_polar_angles(%struct.Input* byval(%struct.Input) align 8 %4)
  %44 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 3
  store float* %43, float** %44, align 8
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 17
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %38
  %51 = call %struct.Source* @initialize_sources(%struct.Input* byval(%struct.Input) align 8 %4, i64* %5)
  %52 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  store %struct.Source* %51, %struct.Source** %52, align 8
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 17
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  call void @border_print()
  br label %57

57:                                               ; preds = %56, %50
  %58 = call noalias i8* @calloc(i64 1, i64 4) #6
  %59 = bitcast i8* %58 to float*
  store float* %59, float** %6, align 8
  %60 = load float*, float** %6, align 8
  %61 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 4
  store float* %60, float** %61, align 8
  %62 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 5
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %4, i32 0, i32 16
  %64 = load float, float* %63, align 4
  call void @buildExponentialTable(%struct.Table* sret %7, float %64, float 1.000000e+01)
  %65 = bitcast %struct.Table* %62 to i8*
  %66 = bitcast %struct.Table* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 24, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_mpi_grid(%struct.CommGrid* noalias sret %0, %struct.Input* byval(%struct.Input) align 8 %1) #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @logo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  store i32 %0, i32* %2, align 4
  call void @border_print()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([537 x i8], [537 x i8]* @.str.4, i64 0, i64 0))
  call void @border_print()
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0))
  call void @center_print(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.6, i64 0, i64 0), i32 79)
  call void @center_print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3.9, i64 0, i64 0), i32 79)
  call void @center_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 79)
  call void @center_print(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 79)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0))
  %7 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %8) #6
  %10 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @center_print(i8* %10, i32 79)
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0))
  call void @border_print()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @border_print() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

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
  %19 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %18)
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
  %28 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1.5, i64 0, i64 0), %struct._IO_FILE* %27)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @fancy_int(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 1000
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %6)
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
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %16, i32 %18)
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
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %28, i32 %31, i32 %33)
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
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %40, i32 %43, i32 %46, i32 %48)
  br label %53

50:                                               ; preds = %35
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %51)
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
define dso_local void @print_input_summary(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  call void @center_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 79)
  call void @border_print()
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  %3 = load i32, i32* %2, align 8
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i32 %3)
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %6)
  %8 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %9)
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %18 = load float, float* %17, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), double %19)
  %21 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %22 = load float, float* %21, align 8
  %23 = fpext float %22 to double
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), double %23)
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 11
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0), i64 %38)
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  %41 = load float, float* %40, align 8
  %42 = fpext float %41 to double
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), double %42)
  %44 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 14
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), double %46)
  %48 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 23
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.31, i64 0, i64 0), i64 %49)
  %51 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i64 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0))
  %55 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  call void @fancy_int(i32 %57)
  call void @border_print()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_CLI(i32 %0, i8** %1, %struct.Input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.Input* %2, %struct.Input** %6, align 8
  %9 = load %struct.Input*, %struct.Input** %6, align 8
  %10 = getelementptr inbounds %struct.Input, %struct.Input* %9, i32 0, i32 21
  store i32 1, i32* %10, align 8
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %90, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %93

15:                                               ; preds = %11
  %16 = load i8**, i8*** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i8**, i8*** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @atoi(i8* %34) #7
  %36 = load %struct.Input*, %struct.Input** %6, align 8
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %36, i32 0, i32 21
  store i32 %35, i32* %37, align 8
  br label %39

38:                                               ; preds = %24
  call void @print_CLI_error()
  br label %39

39:                                               ; preds = %38, %29
  br label %89

40:                                               ; preds = %15
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @strcmp(i8* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0)) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.Input*, %struct.Input** %6, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  call void @read_input_file(%struct.Input* %50, i8* %55)
  br label %57

56:                                               ; preds = %44
  call void @print_CLI_error()
  br label %57

57:                                               ; preds = %56, %49
  br label %88

58:                                               ; preds = %40
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #7
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load %struct.Input*, %struct.Input** %6, align 8
  call void @set_small_input(%struct.Input* %63)
  br label %87

64:                                               ; preds = %58
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @strcmp(i8* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #7
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %68
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.Input*, %struct.Input** %6, align 8
  %80 = getelementptr inbounds %struct.Input, %struct.Input* %79, i32 0, i32 26
  store i8* %78, i8** %80, align 8
  %81 = load %struct.Input*, %struct.Input** %6, align 8
  %82 = getelementptr inbounds %struct.Input, %struct.Input* %81, i32 0, i32 25
  store i8 1, i8* %82, align 8
  br label %84

83:                                               ; preds = %68
  call void @print_CLI_error()
  br label %84

84:                                               ; preds = %83, %73
  br label %86

85:                                               ; preds = %64
  call void @print_CLI_error()
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %62
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %11

93:                                               ; preds = %11
  %94 = load %struct.Input*, %struct.Input** %6, align 8
  %95 = getelementptr inbounds %struct.Input, %struct.Input* %94, i32 0, i32 21
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  call void @print_CLI_error()
  br label %99

99:                                               ; preds = %98, %93
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_CLI_error() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.41, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.43, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.46, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_input_file(%struct.Input* %0, i8* %1) #0 {
  %3 = alloca %struct.Input*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [255 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Input* %0, %struct.Input** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call %struct._IO_FILE* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  store %struct._IO_FILE* %11, %struct._IO_FILE** %5, align 8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %13 = icmp eq %struct._IO_FILE* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %18 = load %struct.Input*, %struct.Input** %3, align 8
  %19 = getelementptr inbounds %struct.Input, %struct.Input* %18, i32 0, i32 0
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %19)
  store i32 %20, i32* %8, align 4
  %21 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %23 = call i8* @fgets(i8* %21, i32 255, %struct._IO_FILE* %22)
  store i8* %23, i8** %7, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %25 = load %struct.Input*, %struct.Input** %3, align 8
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %25, i32 0, i32 1
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %30 = call i8* @fgets(i8* %28, i32 255, %struct._IO_FILE* %29)
  store i8* %30, i8** %7, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %32 = load %struct.Input*, %struct.Input** %3, align 8
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %32, i32 0, i32 2
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %33)
  store i32 %34, i32* %8, align 4
  %35 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %37 = call i8* @fgets(i8* %35, i32 255, %struct._IO_FILE* %36)
  store i8* %37, i8** %7, align 8
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %39 = load %struct.Input*, %struct.Input** %3, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %39, i32 0, i32 3
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %44 = call i8* @fgets(i8* %42, i32 255, %struct._IO_FILE* %43)
  store i8* %44, i8** %7, align 8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %46 = load %struct.Input*, %struct.Input** %3, align 8
  %47 = getelementptr inbounds %struct.Input, %struct.Input* %46, i32 0, i32 4
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %51 = call i8* @fgets(i8* %49, i32 255, %struct._IO_FILE* %50)
  store i8* %51, i8** %7, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %53 = load %struct.Input*, %struct.Input** %3, align 8
  %54 = getelementptr inbounds %struct.Input, %struct.Input* %53, i32 0, i32 5
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), float* %54)
  store i32 %55, i32* %8, align 4
  %56 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %58 = call i8* @fgets(i8* %56, i32 255, %struct._IO_FILE* %57)
  store i8* %58, i8** %7, align 8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %60 = load %struct.Input*, %struct.Input** %3, align 8
  %61 = getelementptr inbounds %struct.Input, %struct.Input* %60, i32 0, i32 6
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), float* %61)
  store i32 %62, i32* %8, align 4
  %63 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %65 = call i8* @fgets(i8* %63, i32 255, %struct._IO_FILE* %64)
  store i8* %65, i8** %7, align 8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %67 = load %struct.Input*, %struct.Input** %3, align 8
  %68 = getelementptr inbounds %struct.Input, %struct.Input* %67, i32 0, i32 7
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %68)
  store i32 %69, i32* %8, align 4
  %70 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %72 = call i8* @fgets(i8* %70, i32 255, %struct._IO_FILE* %71)
  store i8* %72, i8** %7, align 8
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %74 = load %struct.Input*, %struct.Input** %3, align 8
  %75 = getelementptr inbounds %struct.Input, %struct.Input* %74, i32 0, i32 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %75)
  store i32 %76, i32* %8, align 4
  %77 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %79 = call i8* @fgets(i8* %77, i32 255, %struct._IO_FILE* %78)
  store i8* %79, i8** %7, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %81 = load %struct.Input*, %struct.Input** %3, align 8
  %82 = getelementptr inbounds %struct.Input, %struct.Input* %81, i32 0, i32 9
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %82)
  store i32 %83, i32* %8, align 4
  %84 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %86 = call i8* @fgets(i8* %84, i32 255, %struct._IO_FILE* %85)
  store i8* %86, i8** %7, align 8
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %9)
  store i32 %88, i32* %8, align 4
  %89 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %91 = call i8* @fgets(i8* %89, i32 255, %struct._IO_FILE* %90)
  store i8* %91, i8** %7, align 8
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %16
  %95 = load %struct.Input*, %struct.Input** %3, align 8
  %96 = getelementptr inbounds %struct.Input, %struct.Input* %95, i32 0, i32 10
  store i8 0, i8* %96, align 8
  br label %100

97:                                               ; preds = %16
  %98 = load %struct.Input*, %struct.Input** %3, align 8
  %99 = getelementptr inbounds %struct.Input, %struct.Input* %98, i32 0, i32 10
  store i8 1, i8* %99, align 8
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %102 = load %struct.Input*, %struct.Input** %3, align 8
  %103 = getelementptr inbounds %struct.Input, %struct.Input* %102, i32 0, i32 11
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %103)
  store i32 %104, i32* %8, align 4
  %105 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %107 = call i8* @fgets(i8* %105, i32 255, %struct._IO_FILE* %106)
  store i8* %107, i8** %7, align 8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %109 = load %struct.Input*, %struct.Input** %3, align 8
  %110 = getelementptr inbounds %struct.Input, %struct.Input* %109, i32 0, i32 12
  %111 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i64* %110)
  store i32 %111, i32* %8, align 4
  %112 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %114 = call i8* @fgets(i8* %112, i32 255, %struct._IO_FILE* %113)
  store i8* %114, i8** %7, align 8
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %116 = load %struct.Input*, %struct.Input** %3, align 8
  %117 = getelementptr inbounds %struct.Input, %struct.Input* %116, i32 0, i32 13
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), float* %117)
  store i32 %118, i32* %8, align 4
  %119 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %121 = call i8* @fgets(i8* %119, i32 255, %struct._IO_FILE* %120)
  store i8* %121, i8** %7, align 8
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %123 = load %struct.Input*, %struct.Input** %3, align 8
  %124 = getelementptr inbounds %struct.Input, %struct.Input* %123, i32 0, i32 14
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), float* %124)
  store i32 %125, i32* %8, align 4
  %126 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %128 = call i8* @fgets(i8* %126, i32 255, %struct._IO_FILE* %127)
  store i8* %128, i8** %7, align 8
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %130 = load %struct.Input*, %struct.Input** %3, align 8
  %131 = getelementptr inbounds %struct.Input, %struct.Input* %130, i32 0, i32 16
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), float* %131)
  store i32 %132, i32* %8, align 4
  %133 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %135 = call i8* @fgets(i8* %133, i32 255, %struct._IO_FILE* %134)
  store i8* %135, i8** %7, align 8
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %137 = load %struct.Input*, %struct.Input** %3, align 8
  %138 = getelementptr inbounds %struct.Input, %struct.Input* %137, i32 0, i32 23
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i64 0, i64 0), i64* %138)
  store i32 %139, i32* %8, align 4
  %140 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %142 = call i8* @fgets(i8* %140, i32 255, %struct._IO_FILE* %141)
  store i8* %142, i8** %7, align 8
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %144 = load %struct.Input*, %struct.Input** %3, align 8
  %145 = getelementptr inbounds %struct.Input, %struct.Input* %144, i32 0, i32 22
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i64 0, i64 0), i32* %145)
  store i32 %146, i32* %8, align 4
  %147 = getelementptr inbounds [255 x i8], [255 x i8]* %6, i64 0, i64 0
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %149 = call i8* @fgets(i8* %147, i32 255, %struct._IO_FILE* %148)
  store i8* %149, i8** %7, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %151 = call i32 @fclose(%struct._IO_FILE* %150)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Input, align 8
  %9 = alloca %struct.Params, align 8
  %10 = alloca %struct.CommGrid, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca i32, align 4
  %22 = alloca double, align 8
  %23 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 3, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %24 = call i64 @time(i64* null) #6
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = mul nsw i64 %24, %27
  %29 = trunc i64 %28 to i32
  call void @glibc_compat_srand(i32 %29)
  call void @set_default_input(%struct.Input* sret %8)
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  call void @read_CLI(i32 %30, i8** %31, %struct.Input* %8)
  call void @calculate_derived_inputs(%struct.Input* %8)
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  call void @logo(i32 %35)
  br label %36

36:                                               ; preds = %34, %2
  call void @build_tracks(%struct.Params* sret %9, %struct.Input* %8)
  call void @init_mpi_grid(%struct.CommGrid* sret %10, %struct.Input* byval(%struct.Input) align 8 %8)
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @print_input_summary(%struct.Input* byval(%struct.Input) align 8 %8)
  br label %40

40:                                               ; preds = %39, %36
  store float 1.000000e+00, float* %12, align 4
  store i32 1, i32* %13, align 4
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store double 0.000000e+00, double* %16, align 8
  store double 0.000000e+00, double* %17, align 8
  store double 0.000000e+00, double* %18, align 8
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @center_print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i64 0, i64 0), i32 79)
  call void @border_print()
  br label %44

44:                                               ; preds = %43, %40
  store i32 0, i32* %21, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %91

49:                                               ; preds = %45
  %50 = call double @get_time()
  store double %50, double* %19, align 8
  call void @transport_sweep(%struct.Params* %9, %struct.Input* %8)
  %51 = call double @get_time()
  store double %51, double* %20, align 8
  %52 = load double, double* %20, align 8
  %53 = load double, double* %19, align 8
  %54 = fsub double %52, %53
  %55 = load double, double* %14, align 8
  %56 = fadd double %55, %54
  store double %56, double* %14, align 8
  %57 = call double @get_time()
  store double %57, double* %19, align 8
  call void @renormalize_flux(%struct.Params* byval(%struct.Params) align 8 %9, %struct.Input* byval(%struct.Input) align 8 %8, %struct.CommGrid* byval(%struct.CommGrid) align 8 %10)
  %58 = call double @get_time()
  store double %58, double* %20, align 8
  %59 = load double, double* %20, align 8
  %60 = load double, double* %19, align 8
  %61 = fsub double %59, %60
  %62 = load double, double* %16, align 8
  %63 = fadd double %62, %61
  store double %63, double* %16, align 8
  %64 = call double @get_time()
  store double %64, double* %19, align 8
  %65 = load float, float* %12, align 4
  %66 = call float @update_sources(%struct.Params* byval(%struct.Params) align 8 %9, %struct.Input* byval(%struct.Input) align 8 %8, float %65)
  store float %66, float* %11, align 4
  %67 = call double @get_time()
  store double %67, double* %20, align 8
  %68 = load double, double* %20, align 8
  %69 = load double, double* %19, align 8
  %70 = fsub double %68, %69
  %71 = load double, double* %17, align 8
  %72 = fadd double %71, %70
  store double %72, double* %17, align 8
  %73 = call double @get_time()
  store double %73, double* %19, align 8
  %74 = call float @compute_keff(%struct.Params* byval(%struct.Params) align 8 %9, %struct.Input* byval(%struct.Input) align 8 %8, %struct.CommGrid* byval(%struct.CommGrid) align 8 %10)
  store float %74, float* %12, align 4
  %75 = call double @get_time()
  store double %75, double* %20, align 8
  %76 = load double, double* %20, align 8
  %77 = load double, double* %19, align 8
  %78 = fsub double %76, %77
  %79 = load double, double* %18, align 8
  %80 = fadd double %79, %78
  store double %80, double* %18, align 8
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %49
  %84 = load float, float* %12, align 4
  %85 = fpext float %84 to double
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.53, i64 0, i64 0), double %85)
  br label %87

87:                                               ; preds = %83, %49
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %21, align 4
  br label %45

91:                                               ; preds = %45
  %92 = load double, double* %14, align 8
  %93 = load double, double* %15, align 8
  %94 = fadd double %92, %93
  %95 = load double, double* %16, align 8
  %96 = fadd double %94, %95
  %97 = load double, double* %17, align 8
  %98 = fadd double %96, %97
  %99 = load double, double* %18, align 8
  %100 = fadd double %98, %99
  store double %100, double* %22, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %136

103:                                              ; preds = %91
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2.54, i64 0, i64 0), i32 79)
  call void @border_print()
  %104 = load double, double* %14, align 8
  %105 = load double, double* %14, align 8
  %106 = fmul double 1.000000e+02, %105
  %107 = load double, double* %22, align 8
  %108 = fdiv double %106, %107
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3.55, i64 0, i64 0), double %104, double %108)
  %110 = load double, double* %15, align 8
  %111 = load double, double* %15, align 8
  %112 = fmul double 1.000000e+02, %111
  %113 = load double, double* %22, align 8
  %114 = fdiv double %112, %113
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4.56, i64 0, i64 0), double %110, double %114)
  %116 = load double, double* %16, align 8
  %117 = load double, double* %16, align 8
  %118 = fmul double 1.000000e+02, %117
  %119 = load double, double* %22, align 8
  %120 = fdiv double %118, %119
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5.57, i64 0, i64 0), double %116, double %120)
  %122 = load double, double* %17, align 8
  %123 = load double, double* %17, align 8
  %124 = fmul double 1.000000e+02, %123
  %125 = load double, double* %22, align 8
  %126 = fdiv double %124, %125
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6.58, i64 0, i64 0), double %122, double %126)
  %128 = load double, double* %18, align 8
  %129 = load double, double* %18, align 8
  %130 = fmul double 1.000000e+02, %129
  %131 = load double, double* %22, align 8
  %132 = fdiv double %130, %131
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7.59, i64 0, i64 0), double %128, double %132)
  %134 = load double, double* %22, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8.60, i64 0, i64 0), double %134)
  br label %136

136:                                              ; preds = %103, %91
  %137 = getelementptr inbounds %struct.Input, %struct.Input* %8, i32 0, i32 20
  %138 = load i64, i64* %137, align 8
  %139 = mul nsw i64 2, %138
  %140 = sitofp i64 %139 to double
  %141 = load double, double* %14, align 8
  %142 = fdiv double %140, %141
  %143 = fptosi double %142 to i64
  store i64 %143, i64* %23, align 8
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9.61, i64 0, i64 0))
  %148 = load double, double* %14, align 8
  %149 = call double @time_per_intersection(%struct.Input* byval(%struct.Input) align 8 %8, double %148)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10.62, i64 0, i64 0), double %149)
  call void @border_print()
  br label %151

151:                                              ; preds = %146, %136
  %152 = getelementptr inbounds %struct.Params, %struct.Params* %9, i32 0, i32 0
  %153 = load %struct.Track2D*, %struct.Track2D** %152, align 8
  call void @free_2D_tracks(%struct.Track2D* %153)
  %154 = getelementptr inbounds %struct.Params, %struct.Params* %9, i32 0, i32 1
  %155 = load %struct.Track***, %struct.Track**** %154, align 8
  call void @free_tracks(%struct.Track*** %155)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @attenuate_fluxes(%struct.Track* %0, i1 zeroext %1, %struct.Source* %2, %struct.Input* %3, %struct.Params* %4, float %5, float %6, float %7, %struct.AttenuateVars* %8) #0 {
  %10 = alloca %struct.Track*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.Source*, align 8
  %13 = alloca %struct.Input*, align 8
  %14 = alloca %struct.Params*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.AttenuateVars*, align 8
  %19 = alloca %struct.Input, align 8
  %20 = alloca %struct.Params, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float*, align 8
  %31 = alloca float*, align 8
  %32 = alloca float*, align 8
  %33 = alloca float*, align 8
  %34 = alloca float*, align 8
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca i32, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float*, align 8
  %41 = alloca i32, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca i32, align 4
  %49 = alloca float, align 4
  %50 = alloca float, align 4
  %51 = alloca float, align 4
  %52 = alloca float, align 4
  %53 = alloca float, align 4
  %54 = alloca float, align 4
  %55 = alloca i32, align 4
  %56 = alloca float, align 4
  %57 = alloca float, align 4
  %58 = alloca float, align 4
  %59 = alloca float, align 4
  %60 = alloca float, align 4
  %61 = alloca float, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca float*, align 8
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  store %struct.Track* %0, %struct.Track** %10, align 8
  %74 = zext i1 %1 to i8
  store i8 %74, i8* %11, align 1
  store %struct.Source* %2, %struct.Source** %12, align 8
  store %struct.Input* %3, %struct.Input** %13, align 8
  store %struct.Params* %4, %struct.Params** %14, align 8
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store %struct.AttenuateVars* %8, %struct.AttenuateVars** %18, align 8
  %75 = load %struct.Input*, %struct.Input** %13, align 8
  %76 = bitcast %struct.Input* %19 to i8*
  %77 = bitcast %struct.Input* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 152, i1 false)
  %78 = load %struct.Params*, %struct.Params** %14, align 8
  %79 = bitcast %struct.Params* %20 to i8*
  %80 = bitcast %struct.Params* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 64, i1 false)
  %81 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %82 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %81, i32 0, i32 0
  %83 = load float*, float** %82, align 8
  store float* %83, float** %21, align 8
  %84 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %85 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %84, i32 0, i32 1
  %86 = load float*, float** %85, align 8
  store float* %86, float** %22, align 8
  %87 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %88 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %87, i32 0, i32 2
  %89 = load float*, float** %88, align 8
  store float* %89, float** %23, align 8
  %90 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %91 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %90, i32 0, i32 3
  %92 = load float*, float** %91, align 8
  store float* %92, float** %24, align 8
  %93 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %94 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %93, i32 0, i32 4
  %95 = load float*, float** %94, align 8
  store float* %95, float** %25, align 8
  %96 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %97 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %96, i32 0, i32 5
  %98 = load float*, float** %97, align 8
  store float* %98, float** %26, align 8
  %99 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %100 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %99, i32 0, i32 6
  %101 = load float*, float** %100, align 8
  store float* %101, float** %27, align 8
  %102 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %103 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %102, i32 0, i32 7
  %104 = load float*, float** %103, align 8
  store float* %104, float** %28, align 8
  %105 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %106 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %105, i32 0, i32 8
  %107 = load float*, float** %106, align 8
  store float* %107, float** %29, align 8
  %108 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %109 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %108, i32 0, i32 9
  %110 = load float*, float** %109, align 8
  store float* %110, float** %30, align 8
  %111 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %112 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %111, i32 0, i32 10
  %113 = load float*, float** %112, align 8
  store float* %113, float** %31, align 8
  %114 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %115 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %114, i32 0, i32 11
  %116 = load float*, float** %115, align 8
  store float* %116, float** %32, align 8
  %117 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %118 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %117, i32 0, i32 12
  %119 = load float*, float** %118, align 8
  store float* %119, float** %33, align 8
  %120 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %121 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %120, i32 0, i32 13
  %122 = load float*, float** %121, align 8
  store float* %122, float** %34, align 8
  %123 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 14
  %124 = load float, float* %123, align 4
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %126, %128
  %130 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %129, %131
  %133 = sitofp i32 %132 to float
  %134 = fdiv float %124, %133
  store float %134, float* %35, align 4
  %135 = load %struct.Track*, %struct.Track** %10, align 8
  %136 = getelementptr inbounds %struct.Track, %struct.Track* %135, i32 0, i32 1
  %137 = load float, float* %136, align 4
  %138 = load float, float* %35, align 4
  %139 = load %struct.Track*, %struct.Track** %10, align 8
  %140 = getelementptr inbounds %struct.Track, %struct.Track* %139, i32 0, i32 1
  %141 = load float, float* %140, align 4
  %142 = load float, float* %35, align 4
  %143 = fdiv float %141, %142
  %144 = fptosi float %143 to i32
  %145 = sitofp i32 %144 to float
  %146 = fadd float %145, 5.000000e-01
  %147 = fmul float %138, %146
  %148 = fsub float %137, %147
  store float %148, float* %36, align 4
  %149 = load %struct.Track*, %struct.Track** %10, align 8
  %150 = getelementptr inbounds %struct.Track, %struct.Track* %149, i32 0, i32 1
  %151 = load float, float* %150, align 4
  %152 = load float, float* %35, align 4
  %153 = fdiv float %151, %152
  %154 = fptosi float %153 to i32
  %155 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = srem i32 %154, %156
  store i32 %157, i32* %37, align 4
  %158 = load %struct.Track*, %struct.Track** %10, align 8
  %159 = getelementptr inbounds %struct.Track, %struct.Track* %158, i32 0, i32 0
  %160 = load float, float* %159, align 8
  %161 = load float, float* %17, align 4
  %162 = fmul float %160, %161
  store float %162, float* %38, align 4
  %163 = load float, float* %16, align 4
  %164 = load float, float* %16, align 4
  %165 = fmul float %163, %164
  store float %165, float* %39, align 4
  %166 = load %struct.Source*, %struct.Source** %12, align 8
  %167 = getelementptr inbounds %struct.Source, %struct.Source* %166, i32 0, i32 0
  %168 = load float**, float*** %167, align 8
  %169 = load i32, i32* %37, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float*, float** %168, i64 %170
  %172 = load float*, float** %171, align 8
  store float* %172, float** %40, align 8
  %173 = load i32, i32* %37, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %272

175:                                              ; preds = %9
  %176 = load float, float* %35, align 4
  %177 = load float, float* %36, align 4
  %178 = fsub float %177, %176
  store float %178, float* %36, align 4
  store i32 0, i32* %41, align 4
  br label %179

179:                                              ; preds = %268, %175
  %180 = load i32, i32* %41, align 4
  %181 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %180, %182
  br i1 %183, label %184, label %271

184:                                              ; preds = %179
  %185 = load %struct.Source*, %struct.Source** %12, align 8
  %186 = getelementptr inbounds %struct.Source, %struct.Source* %185, i32 0, i32 1
  %187 = load float**, float*** %186, align 8
  %188 = load i32, i32* %37, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float*, float** %187, i64 %189
  %191 = load float*, float** %190, align 8
  %192 = load i32, i32* %41, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %191, i64 %193
  %195 = load float, float* %194, align 4
  store float %195, float* %42, align 4
  %196 = load %struct.Source*, %struct.Source** %12, align 8
  %197 = getelementptr inbounds %struct.Source, %struct.Source* %196, i32 0, i32 1
  %198 = load float**, float*** %197, align 8
  %199 = load i32, i32* %37, align 4
  %200 = add nsw i32 %199, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float*, float** %198, i64 %201
  %203 = load float*, float** %202, align 8
  %204 = load i32, i32* %41, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %203, i64 %205
  %207 = load float, float* %206, align 4
  store float %207, float* %43, align 4
  %208 = load %struct.Source*, %struct.Source** %12, align 8
  %209 = getelementptr inbounds %struct.Source, %struct.Source* %208, i32 0, i32 1
  %210 = load float**, float*** %209, align 8
  %211 = load i32, i32* %37, align 4
  %212 = add nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float*, float** %210, i64 %213
  %215 = load float*, float** %214, align 8
  %216 = load i32, i32* %41, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %215, i64 %217
  %219 = load float, float* %218, align 4
  store float %219, float* %44, align 4
  %220 = load float, float* %43, align 4
  store float %220, float* %45, align 4
  %221 = load float, float* %42, align 4
  %222 = load float, float* %44, align 4
  %223 = fsub float %221, %222
  %224 = load float, float* %35, align 4
  %225 = fmul float 2.000000e+00, %224
  %226 = fdiv float %223, %225
  store float %226, float* %46, align 4
  %227 = load float, float* %42, align 4
  %228 = load float, float* %43, align 4
  %229 = fmul float 2.000000e+00, %228
  %230 = fsub float %227, %229
  %231 = load float, float* %44, align 4
  %232 = fadd float %230, %231
  %233 = load float, float* %35, align 4
  %234 = fmul float 2.000000e+00, %233
  %235 = load float, float* %35, align 4
  %236 = fmul float %234, %235
  %237 = fdiv float %232, %236
  store float %237, float* %47, align 4
  %238 = load float, float* %45, align 4
  %239 = load float, float* %46, align 4
  %240 = load float, float* %36, align 4
  %241 = fmul float %239, %240
  %242 = fadd float %238, %241
  %243 = load float, float* %47, align 4
  %244 = load float, float* %36, align 4
  %245 = fmul float %243, %244
  %246 = load float, float* %36, align 4
  %247 = fmul float %245, %246
  %248 = fadd float %242, %247
  %249 = load float*, float** %21, align 8
  %250 = load i32, i32* %41, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds float, float* %249, i64 %251
  store float %248, float* %252, align 4
  %253 = load float, float* %46, align 4
  %254 = load float, float* %47, align 4
  %255 = fmul float 2.000000e+00, %254
  %256 = load float, float* %36, align 4
  %257 = fmul float %255, %256
  %258 = fadd float %253, %257
  %259 = load float*, float** %22, align 8
  %260 = load i32, i32* %41, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds float, float* %259, i64 %261
  store float %258, float* %262, align 4
  %263 = load float, float* %47, align 4
  %264 = load float*, float** %23, align 8
  %265 = load i32, i32* %41, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  store float %263, float* %267, align 4
  br label %268

268:                                              ; preds = %184
  %269 = load i32, i32* %41, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %41, align 4
  br label %179

271:                                              ; preds = %179
  br label %470

272:                                              ; preds = %9
  %273 = load i32, i32* %37, align 4
  %274 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 1
  %277 = icmp eq i32 %273, %276
  br i1 %277, label %278, label %375

278:                                              ; preds = %272
  %279 = load float, float* %35, align 4
  %280 = load float, float* %36, align 4
  %281 = fadd float %280, %279
  store float %281, float* %36, align 4
  store i32 0, i32* %48, align 4
  br label %282

282:                                              ; preds = %371, %278
  %283 = load i32, i32* %48, align 4
  %284 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %283, %285
  br i1 %286, label %287, label %374

287:                                              ; preds = %282
  %288 = load %struct.Source*, %struct.Source** %12, align 8
  %289 = getelementptr inbounds %struct.Source, %struct.Source* %288, i32 0, i32 1
  %290 = load float**, float*** %289, align 8
  %291 = load i32, i32* %37, align 4
  %292 = sub nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float*, float** %290, i64 %293
  %295 = load float*, float** %294, align 8
  %296 = load i32, i32* %48, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds float, float* %295, i64 %297
  %299 = load float, float* %298, align 4
  store float %299, float* %49, align 4
  %300 = load %struct.Source*, %struct.Source** %12, align 8
  %301 = getelementptr inbounds %struct.Source, %struct.Source* %300, i32 0, i32 1
  %302 = load float**, float*** %301, align 8
  %303 = load i32, i32* %37, align 4
  %304 = sub nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float*, float** %302, i64 %305
  %307 = load float*, float** %306, align 8
  %308 = load i32, i32* %48, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %307, i64 %309
  %311 = load float, float* %310, align 4
  store float %311, float* %50, align 4
  %312 = load %struct.Source*, %struct.Source** %12, align 8
  %313 = getelementptr inbounds %struct.Source, %struct.Source* %312, i32 0, i32 1
  %314 = load float**, float*** %313, align 8
  %315 = load i32, i32* %37, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds float*, float** %314, i64 %316
  %318 = load float*, float** %317, align 8
  %319 = load i32, i32* %48, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %318, i64 %320
  %322 = load float, float* %321, align 4
  store float %322, float* %51, align 4
  %323 = load float, float* %50, align 4
  store float %323, float* %52, align 4
  %324 = load float, float* %49, align 4
  %325 = load float, float* %51, align 4
  %326 = fsub float %324, %325
  %327 = load float, float* %35, align 4
  %328 = fmul float 2.000000e+00, %327
  %329 = fdiv float %326, %328
  store float %329, float* %53, align 4
  %330 = load float, float* %49, align 4
  %331 = load float, float* %50, align 4
  %332 = fmul float 2.000000e+00, %331
  %333 = fsub float %330, %332
  %334 = load float, float* %51, align 4
  %335 = fadd float %333, %334
  %336 = load float, float* %35, align 4
  %337 = fmul float 2.000000e+00, %336
  %338 = load float, float* %35, align 4
  %339 = fmul float %337, %338
  %340 = fdiv float %335, %339
  store float %340, float* %54, align 4
  %341 = load float, float* %52, align 4
  %342 = load float, float* %53, align 4
  %343 = load float, float* %36, align 4
  %344 = fmul float %342, %343
  %345 = fadd float %341, %344
  %346 = load float, float* %54, align 4
  %347 = load float, float* %36, align 4
  %348 = fmul float %346, %347
  %349 = load float, float* %36, align 4
  %350 = fmul float %348, %349
  %351 = fadd float %345, %350
  %352 = load float*, float** %21, align 8
  %353 = load i32, i32* %48, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  store float %351, float* %355, align 4
  %356 = load float, float* %53, align 4
  %357 = load float, float* %54, align 4
  %358 = fmul float 2.000000e+00, %357
  %359 = load float, float* %36, align 4
  %360 = fmul float %358, %359
  %361 = fadd float %356, %360
  %362 = load float*, float** %22, align 8
  %363 = load i32, i32* %48, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds float, float* %362, i64 %364
  store float %361, float* %365, align 4
  %366 = load float, float* %54, align 4
  %367 = load float*, float** %23, align 8
  %368 = load i32, i32* %48, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds float, float* %367, i64 %369
  store float %366, float* %370, align 4
  br label %371

371:                                              ; preds = %287
  %372 = load i32, i32* %48, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %48, align 4
  br label %282

374:                                              ; preds = %282
  br label %469

375:                                              ; preds = %272
  store i32 0, i32* %55, align 4
  br label %376

376:                                              ; preds = %465, %375
  %377 = load i32, i32* %55, align 4
  %378 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %377, %379
  br i1 %380, label %381, label %468

381:                                              ; preds = %376
  %382 = load %struct.Source*, %struct.Source** %12, align 8
  %383 = getelementptr inbounds %struct.Source, %struct.Source* %382, i32 0, i32 1
  %384 = load float**, float*** %383, align 8
  %385 = load i32, i32* %37, align 4
  %386 = sub nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds float*, float** %384, i64 %387
  %389 = load float*, float** %388, align 8
  %390 = load i32, i32* %55, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %389, i64 %391
  %393 = load float, float* %392, align 4
  store float %393, float* %56, align 4
  %394 = load %struct.Source*, %struct.Source** %12, align 8
  %395 = getelementptr inbounds %struct.Source, %struct.Source* %394, i32 0, i32 1
  %396 = load float**, float*** %395, align 8
  %397 = load i32, i32* %37, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds float*, float** %396, i64 %398
  %400 = load float*, float** %399, align 8
  %401 = load i32, i32* %55, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds float, float* %400, i64 %402
  %404 = load float, float* %403, align 4
  store float %404, float* %57, align 4
  %405 = load %struct.Source*, %struct.Source** %12, align 8
  %406 = getelementptr inbounds %struct.Source, %struct.Source* %405, i32 0, i32 1
  %407 = load float**, float*** %406, align 8
  %408 = load i32, i32* %37, align 4
  %409 = add nsw i32 %408, 1
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds float*, float** %407, i64 %410
  %412 = load float*, float** %411, align 8
  %413 = load i32, i32* %55, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds float, float* %412, i64 %414
  %416 = load float, float* %415, align 4
  store float %416, float* %58, align 4
  %417 = load float, float* %57, align 4
  store float %417, float* %59, align 4
  %418 = load float, float* %56, align 4
  %419 = load float, float* %58, align 4
  %420 = fsub float %418, %419
  %421 = load float, float* %35, align 4
  %422 = fmul float 2.000000e+00, %421
  %423 = fdiv float %420, %422
  store float %423, float* %60, align 4
  %424 = load float, float* %56, align 4
  %425 = load float, float* %57, align 4
  %426 = fmul float 2.000000e+00, %425
  %427 = fsub float %424, %426
  %428 = load float, float* %58, align 4
  %429 = fadd float %427, %428
  %430 = load float, float* %35, align 4
  %431 = fmul float 2.000000e+00, %430
  %432 = load float, float* %35, align 4
  %433 = fmul float %431, %432
  %434 = fdiv float %429, %433
  store float %434, float* %61, align 4
  %435 = load float, float* %59, align 4
  %436 = load float, float* %60, align 4
  %437 = load float, float* %36, align 4
  %438 = fmul float %436, %437
  %439 = fadd float %435, %438
  %440 = load float, float* %61, align 4
  %441 = load float, float* %36, align 4
  %442 = fmul float %440, %441
  %443 = load float, float* %36, align 4
  %444 = fmul float %442, %443
  %445 = fadd float %439, %444
  %446 = load float*, float** %21, align 8
  %447 = load i32, i32* %55, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds float, float* %446, i64 %448
  store float %445, float* %449, align 4
  %450 = load float, float* %60, align 4
  %451 = load float, float* %61, align 4
  %452 = fmul float 2.000000e+00, %451
  %453 = load float, float* %36, align 4
  %454 = fmul float %452, %453
  %455 = fadd float %450, %454
  %456 = load float*, float** %22, align 8
  %457 = load i32, i32* %55, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds float, float* %456, i64 %458
  store float %455, float* %459, align 4
  %460 = load float, float* %61, align 4
  %461 = load float*, float** %23, align 8
  %462 = load i32, i32* %55, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds float, float* %461, i64 %463
  store float %460, float* %464, align 4
  br label %465

465:                                              ; preds = %381
  %466 = load i32, i32* %55, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %55, align 4
  br label %376

468:                                              ; preds = %376
  br label %469

469:                                              ; preds = %468, %374
  br label %470

470:                                              ; preds = %469, %271
  store i32 0, i32* %62, align 4
  br label %471

471:                                              ; preds = %514, %470
  %472 = load i32, i32* %62, align 4
  %473 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %474 = load i32, i32* %473, align 4
  %475 = icmp slt i32 %472, %474
  br i1 %475, label %476, label %517

476:                                              ; preds = %471
  %477 = load %struct.Source*, %struct.Source** %12, align 8
  %478 = getelementptr inbounds %struct.Source, %struct.Source* %477, i32 0, i32 3
  %479 = load float*, float** %478, align 8
  %480 = load i32, i32* %62, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds float, float* %479, i64 %481
  %483 = load float, float* %482, align 4
  %484 = load float*, float** %24, align 8
  %485 = load i32, i32* %62, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds float, float* %484, i64 %486
  store float %483, float* %487, align 4
  %488 = load float*, float** %24, align 8
  %489 = load i32, i32* %62, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds float, float* %488, i64 %490
  %492 = load float, float* %491, align 4
  %493 = load float, float* %15, align 4
  %494 = fmul float %492, %493
  %495 = load float*, float** %25, align 8
  %496 = load i32, i32* %62, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds float, float* %495, i64 %497
  store float %494, float* %498, align 4
  %499 = load float*, float** %24, align 8
  %500 = load i32, i32* %62, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds float, float* %499, i64 %501
  %503 = load float, float* %502, align 4
  %504 = load float*, float** %24, align 8
  %505 = load i32, i32* %62, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds float, float* %504, i64 %506
  %508 = load float, float* %507, align 4
  %509 = fmul float %503, %508
  %510 = load float*, float** %26, align 8
  %511 = load i32, i32* %62, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds float, float* %510, i64 %512
  store float %509, float* %513, align 4
  br label %514

514:                                              ; preds = %476
  %515 = load i32, i32* %62, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %62, align 4
  br label %471

517:                                              ; preds = %471
  store i32 0, i32* %63, align 4
  br label %518

518:                                              ; preds = %535, %517
  %519 = load i32, i32* %63, align 4
  %520 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %521 = load i32, i32* %520, align 4
  %522 = icmp slt i32 %519, %521
  br i1 %522, label %523, label %538

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.Params, %struct.Params* %20, i32 0, i32 5
  %525 = load float*, float** %25, align 8
  %526 = load i32, i32* %63, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds float, float* %525, i64 %527
  %529 = load float, float* %528, align 4
  %530 = call float @interpolateTable(%struct.Table* byval(%struct.Table) align 8 %524, float %529)
  %531 = load float*, float** %27, align 8
  %532 = load i32, i32* %63, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds float, float* %531, i64 %533
  store float %530, float* %534, align 4
  br label %535

535:                                              ; preds = %523
  %536 = load i32, i32* %63, align 4
  %537 = add nsw i32 %536, 1
  store i32 %537, i32* %63, align 4
  br label %518

538:                                              ; preds = %518
  store i32 0, i32* %64, align 4
  br label %539

539:                                              ; preds = %580, %538
  %540 = load i32, i32* %64, align 4
  %541 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %542 = load i32, i32* %541, align 4
  %543 = icmp slt i32 %540, %542
  br i1 %543, label %544, label %583

544:                                              ; preds = %539
  %545 = load float*, float** %25, align 8
  %546 = load i32, i32* %64, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds float, float* %545, i64 %547
  %549 = load float, float* %548, align 4
  %550 = load float*, float** %25, align 8
  %551 = load i32, i32* %64, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds float, float* %550, i64 %552
  %554 = load float, float* %553, align 4
  %555 = fsub float %554, 2.000000e+00
  %556 = fmul float %549, %555
  %557 = load float*, float** %27, align 8
  %558 = load i32, i32* %64, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds float, float* %557, i64 %559
  %561 = load float, float* %560, align 4
  %562 = fmul float 2.000000e+00, %561
  %563 = load float*, float** %24, align 8
  %564 = load i32, i32* %64, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds float, float* %563, i64 %565
  %567 = load float, float* %566, align 4
  %568 = load float*, float** %26, align 8
  %569 = load i32, i32* %64, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds float, float* %568, i64 %570
  %572 = load float, float* %571, align 4
  %573 = fmul float %567, %572
  %574 = fdiv float %562, %573
  %575 = fadd float %556, %574
  %576 = load float*, float** %28, align 8
  %577 = load i32, i32* %64, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds float, float* %576, i64 %578
  store float %575, float* %579, align 4
  br label %580

580:                                              ; preds = %544
  %581 = load i32, i32* %64, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %64, align 4
  br label %539

583:                                              ; preds = %539
  %584 = load i8, i8* %11, align 1
  %585 = trunc i8 %584 to i1
  br i1 %585, label %586, label %590

586:                                              ; preds = %583
  %587 = load %struct.Track*, %struct.Track** %10, align 8
  %588 = getelementptr inbounds %struct.Track, %struct.Track* %587, i32 0, i32 4
  %589 = load float*, float** %588, align 8
  store float* %589, float** %65, align 8
  br label %594

590:                                              ; preds = %583
  %591 = load %struct.Track*, %struct.Track** %10, align 8
  %592 = getelementptr inbounds %struct.Track, %struct.Track* %591, i32 0, i32 5
  %593 = load float*, float** %592, align 8
  store float* %593, float** %65, align 8
  br label %594

594:                                              ; preds = %590, %586
  store i32 0, i32* %66, align 4
  br label %595

595:                                              ; preds = %708, %594
  %596 = load i32, i32* %66, align 4
  %597 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %598 = load i32, i32* %597, align 4
  %599 = icmp slt i32 %596, %598
  br i1 %599, label %600, label %711

600:                                              ; preds = %595
  %601 = load float*, float** %21, align 8
  %602 = load i32, i32* %66, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds float, float* %601, i64 %603
  %605 = load float, float* %604, align 4
  %606 = load float*, float** %25, align 8
  %607 = load i32, i32* %66, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds float, float* %606, i64 %608
  %610 = load float, float* %609, align 4
  %611 = fmul float %605, %610
  %612 = load float*, float** %24, align 8
  %613 = load i32, i32* %66, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds float, float* %612, i64 %614
  %616 = load float, float* %615, align 4
  %617 = load float*, float** %65, align 8
  %618 = load i32, i32* %66, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds float, float* %617, i64 %619
  %621 = load float, float* %620, align 4
  %622 = fmul float %616, %621
  %623 = load float*, float** %21, align 8
  %624 = load i32, i32* %66, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds float, float* %623, i64 %625
  %627 = load float, float* %626, align 4
  %628 = fsub float %622, %627
  %629 = load float*, float** %27, align 8
  %630 = load i32, i32* %66, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds float, float* %629, i64 %631
  %633 = load float, float* %632, align 4
  %634 = fmul float %628, %633
  %635 = fadd float %611, %634
  %636 = load float*, float** %26, align 8
  %637 = load i32, i32* %66, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds float, float* %636, i64 %638
  %640 = load float, float* %639, align 4
  %641 = fdiv float %635, %640
  %642 = load float*, float** %22, align 8
  %643 = load i32, i32* %66, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds float, float* %642, i64 %644
  %646 = load float, float* %645, align 4
  %647 = load float, float* %16, align 4
  %648 = fmul float %646, %647
  %649 = load float*, float** %28, align 8
  %650 = load i32, i32* %66, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds float, float* %649, i64 %651
  %653 = load float, float* %652, align 4
  %654 = fmul float %648, %653
  %655 = fadd float %641, %654
  %656 = load float*, float** %23, align 8
  %657 = load i32, i32* %66, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds float, float* %656, i64 %658
  %660 = load float, float* %659, align 4
  %661 = load float, float* %39, align 4
  %662 = fmul float %660, %661
  %663 = load float*, float** %25, align 8
  %664 = load i32, i32* %66, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds float, float* %663, i64 %665
  %667 = load float, float* %666, align 4
  %668 = load float*, float** %25, align 8
  %669 = load i32, i32* %66, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds float, float* %668, i64 %670
  %672 = load float, float* %671, align 4
  %673 = load float*, float** %25, align 8
  %674 = load i32, i32* %66, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds float, float* %673, i64 %675
  %677 = load float, float* %676, align 4
  %678 = fsub float %677, 3.000000e+00
  %679 = fmul float %672, %678
  %680 = fadd float %679, 6.000000e+00
  %681 = fmul float %667, %680
  %682 = load float*, float** %27, align 8
  %683 = load i32, i32* %66, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float, float* %682, i64 %684
  %686 = load float, float* %685, align 4
  %687 = fmul float 6.000000e+00, %686
  %688 = fsub float %681, %687
  %689 = fmul float %662, %688
  %690 = load float*, float** %26, align 8
  %691 = load i32, i32* %66, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds float, float* %690, i64 %692
  %694 = load float, float* %693, align 4
  %695 = fmul float 3.000000e+00, %694
  %696 = load float*, float** %26, align 8
  %697 = load i32, i32* %66, align 4
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds float, float* %696, i64 %698
  %700 = load float, float* %699, align 4
  %701 = fmul float %695, %700
  %702 = fdiv float %689, %701
  %703 = fadd float %655, %702
  %704 = load float*, float** %29, align 8
  %705 = load i32, i32* %66, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds float, float* %704, i64 %706
  store float %703, float* %707, align 4
  br label %708

708:                                              ; preds = %600
  %709 = load i32, i32* %66, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %66, align 4
  br label %595

711:                                              ; preds = %595
  store i32 0, i32* %67, align 4
  br label %712

712:                                              ; preds = %729, %711
  %713 = load i32, i32* %67, align 4
  %714 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %715 = load i32, i32* %714, align 4
  %716 = icmp slt i32 %713, %715
  br i1 %716, label %717, label %732

717:                                              ; preds = %712
  %718 = load float, float* %38, align 4
  %719 = load float*, float** %29, align 8
  %720 = load i32, i32* %67, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds float, float* %719, i64 %721
  %723 = load float, float* %722, align 4
  %724 = fmul float %718, %723
  %725 = load float*, float** %30, align 8
  %726 = load i32, i32* %67, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds float, float* %725, i64 %727
  store float %724, float* %728, align 4
  br label %729

729:                                              ; preds = %717
  %730 = load i32, i32* %67, align 4
  %731 = add nsw i32 %730, 1
  store i32 %731, i32* %67, align 4
  br label %712

732:                                              ; preds = %712
  store i32 0, i32* %68, align 4
  br label %733

733:                                              ; preds = %750, %732
  %734 = load i32, i32* %68, align 4
  %735 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %736 = load i32, i32* %735, align 4
  %737 = icmp slt i32 %734, %736
  br i1 %737, label %738, label %753

738:                                              ; preds = %733
  %739 = load float*, float** %30, align 8
  %740 = load i32, i32* %68, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds float, float* %739, i64 %741
  %743 = load float, float* %742, align 4
  %744 = load float*, float** %40, align 8
  %745 = load i32, i32* %68, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds float, float* %744, i64 %746
  %748 = load float, float* %747, align 4
  %749 = fadd float %748, %743
  store float %749, float* %747, align 4
  br label %750

750:                                              ; preds = %738
  %751 = load i32, i32* %68, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %68, align 4
  br label %733

753:                                              ; preds = %733
  store i32 0, i32* %69, align 4
  br label %754

754:                                              ; preds = %781, %753
  %755 = load i32, i32* %69, align 4
  %756 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %757 = load i32, i32* %756, align 4
  %758 = icmp slt i32 %755, %757
  br i1 %758, label %759, label %784

759:                                              ; preds = %754
  %760 = load float*, float** %21, align 8
  %761 = load i32, i32* %69, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds float, float* %760, i64 %762
  %764 = load float, float* %763, align 4
  %765 = load float*, float** %27, align 8
  %766 = load i32, i32* %69, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds float, float* %765, i64 %767
  %769 = load float, float* %768, align 4
  %770 = fmul float %764, %769
  %771 = load float*, float** %24, align 8
  %772 = load i32, i32* %69, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds float, float* %771, i64 %773
  %775 = load float, float* %774, align 4
  %776 = fdiv float %770, %775
  %777 = load float*, float** %31, align 8
  %778 = load i32, i32* %69, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds float, float* %777, i64 %779
  store float %776, float* %780, align 4
  br label %781

781:                                              ; preds = %759
  %782 = load i32, i32* %69, align 4
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %69, align 4
  br label %754

784:                                              ; preds = %754
  store i32 0, i32* %70, align 4
  br label %785

785:                                              ; preds = %820, %784
  %786 = load i32, i32* %70, align 4
  %787 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %788 = load i32, i32* %787, align 4
  %789 = icmp slt i32 %786, %788
  br i1 %789, label %790, label %823

790:                                              ; preds = %785
  %791 = load float*, float** %22, align 8
  %792 = load i32, i32* %70, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds float, float* %791, i64 %793
  %795 = load float, float* %794, align 4
  %796 = load float, float* %16, align 4
  %797 = fmul float %795, %796
  %798 = load float*, float** %25, align 8
  %799 = load i32, i32* %70, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds float, float* %798, i64 %800
  %802 = load float, float* %801, align 4
  %803 = load float*, float** %27, align 8
  %804 = load i32, i32* %70, align 4
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds float, float* %803, i64 %805
  %807 = load float, float* %806, align 4
  %808 = fsub float %802, %807
  %809 = fmul float %797, %808
  %810 = load float*, float** %26, align 8
  %811 = load i32, i32* %70, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds float, float* %810, i64 %812
  %814 = load float, float* %813, align 4
  %815 = fdiv float %809, %814
  %816 = load float*, float** %32, align 8
  %817 = load i32, i32* %70, align 4
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds float, float* %816, i64 %818
  store float %815, float* %819, align 4
  br label %820

820:                                              ; preds = %790
  %821 = load i32, i32* %70, align 4
  %822 = add nsw i32 %821, 1
  store i32 %822, i32* %70, align 4
  br label %785

823:                                              ; preds = %785
  store i32 0, i32* %71, align 4
  br label %824

824:                                              ; preds = %847, %823
  %825 = load i32, i32* %71, align 4
  %826 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %827 = load i32, i32* %826, align 4
  %828 = icmp slt i32 %825, %827
  br i1 %828, label %829, label %850

829:                                              ; preds = %824
  %830 = load float*, float** %23, align 8
  %831 = load i32, i32* %71, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds float, float* %830, i64 %832
  %834 = load float, float* %833, align 4
  %835 = load float, float* %39, align 4
  %836 = fmul float %834, %835
  %837 = load float*, float** %28, align 8
  %838 = load i32, i32* %71, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds float, float* %837, i64 %839
  %841 = load float, float* %840, align 4
  %842 = fmul float %836, %841
  %843 = load float*, float** %33, align 8
  %844 = load i32, i32* %71, align 4
  %845 = sext i32 %844 to i64
  %846 = getelementptr inbounds float, float* %843, i64 %845
  store float %842, float* %846, align 4
  br label %847

847:                                              ; preds = %829
  %848 = load i32, i32* %71, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %71, align 4
  br label %824

850:                                              ; preds = %824
  store i32 0, i32* %72, align 4
  br label %851

851:                                              ; preds = %873, %850
  %852 = load i32, i32* %72, align 4
  %853 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %854 = load i32, i32* %853, align 4
  %855 = icmp slt i32 %852, %854
  br i1 %855, label %856, label %876

856:                                              ; preds = %851
  %857 = load float*, float** %65, align 8
  %858 = load i32, i32* %72, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds float, float* %857, i64 %859
  %861 = load float, float* %860, align 4
  %862 = load float*, float** %27, align 8
  %863 = load i32, i32* %72, align 4
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds float, float* %862, i64 %864
  %866 = load float, float* %865, align 4
  %867 = fsub float 1.000000e+00, %866
  %868 = fmul float %861, %867
  %869 = load float*, float** %34, align 8
  %870 = load i32, i32* %72, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds float, float* %869, i64 %871
  store float %868, float* %872, align 4
  br label %873

873:                                              ; preds = %856
  %874 = load i32, i32* %72, align 4
  %875 = add nsw i32 %874, 1
  store i32 %875, i32* %72, align 4
  br label %851

876:                                              ; preds = %851
  store i32 0, i32* %73, align 4
  br label %877

877:                                              ; preds = %910, %876
  %878 = load i32, i32* %73, align 4
  %879 = getelementptr inbounds %struct.Input, %struct.Input* %19, i32 0, i32 9
  %880 = load i32, i32* %879, align 4
  %881 = icmp slt i32 %878, %880
  br i1 %881, label %882, label %913

882:                                              ; preds = %877
  %883 = load float*, float** %31, align 8
  %884 = load i32, i32* %73, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds float, float* %883, i64 %885
  %887 = load float, float* %886, align 4
  %888 = load float*, float** %32, align 8
  %889 = load i32, i32* %73, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds float, float* %888, i64 %890
  %892 = load float, float* %891, align 4
  %893 = fadd float %887, %892
  %894 = load float*, float** %33, align 8
  %895 = load i32, i32* %73, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds float, float* %894, i64 %896
  %898 = load float, float* %897, align 4
  %899 = fadd float %893, %898
  %900 = load float*, float** %34, align 8
  %901 = load i32, i32* %73, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds float, float* %900, i64 %902
  %904 = load float, float* %903, align 4
  %905 = fadd float %899, %904
  %906 = load float*, float** %65, align 8
  %907 = load i32, i32* %73, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds float, float* %906, i64 %908
  store float %905, float* %909, align 4
  br label %910

910:                                              ; preds = %882
  %911 = load i32, i32* %73, align 4
  %912 = add nsw i32 %911, 1
  store i32 %912, i32* %73, align 4
  br label %877

913:                                              ; preds = %877
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @interpolateTable(%struct.Table* byval(%struct.Table) align 8 %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store float %1, float* %4, align 4
  %9 = load float, float* %4, align 4
  %10 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 2
  %11 = load float, float* %10, align 4
  %12 = fcmp ogt float %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store float 1.000000e+00, float* %3, align 4
  br label %45

14:                                               ; preds = %2
  %15 = load float, float* %4, align 4
  %16 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 1
  %17 = load float, float* %16, align 8
  %18 = fdiv float %15, %17
  %19 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 1
  %20 = load float, float* %19, align 8
  %21 = fmul float 5.000000e-01, %20
  %22 = fadd float %18, %21
  %23 = fptosi float %22 to i32
  store i32 %23, i32* %5, align 4
  %24 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 0
  %25 = load float*, float** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %25, i64 %28
  %30 = load float, float* %29, align 4
  store float %30, float* %6, align 4
  %31 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 0
  %32 = load float*, float** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 2, %33
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %32, i64 %36
  %38 = load float, float* %37, align 4
  store float %38, float* %7, align 4
  %39 = load float, float* %6, align 4
  %40 = load float, float* %4, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %7, align 4
  %43 = fadd float %41, %42
  store float %43, float* %8, align 4
  %44 = load float, float* %8, align 4
  store float %44, float* %3, align 4
  br label %45

45:                                               ; preds = %14, %13
  %46 = load float, float* %3, align 4
  ret float %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @transport_sweep(%struct.Params* %0, %struct.Input* %1) #0 {
  %3 = alloca %struct.Params*, align 8
  %4 = alloca %struct.Input*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.AttenuateVars, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca %struct.Track*, align 8
  %23 = alloca i8, align 1
  %24 = alloca i32, align 4
  %25 = alloca i8, align 1
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store %struct.Params* %0, %struct.Params** %3, align 8
  store %struct.Input* %1, %struct.Input** %4, align 8
  %29 = load %struct.Input*, %struct.Input** %4, align 8
  %30 = getelementptr inbounds %struct.Input, %struct.Input* %29, i32 0, i32 17
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %2
  %36 = load %struct.Input*, %struct.Input** %4, align 8
  %37 = getelementptr inbounds %struct.Input, %struct.Input* %36, i32 0, i32 14
  %38 = load float, float* %37, align 4
  %39 = load %struct.Input*, %struct.Input** %4, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %38, %42
  %44 = fpext float %43 to double
  store double %44, double* %5, align 8
  %45 = load double, double* %5, align 8
  %46 = load %struct.Input*, %struct.Input** %4, align 8
  %47 = getelementptr inbounds %struct.Input, %struct.Input* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.Input*, %struct.Input** %4, align 8
  %50 = getelementptr inbounds %struct.Input, %struct.Input* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %45, %53
  store double %54, double* %6, align 8
  store i64 0, i64* %7, align 8
  %55 = load %struct.Input*, %struct.Input** %4, align 8
  %56 = getelementptr inbounds %struct.Input, %struct.Input* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %57, 14
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = call noalias i8* @malloc(i64 %60) #6
  %62 = bitcast i8* %61 to float*
  store float* %62, float** %9, align 8
  %63 = load float*, float** %9, align 8
  %64 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 0
  store float* %63, float** %64, align 8
  %65 = load %struct.Input*, %struct.Input** %4, align 8
  %66 = getelementptr inbounds %struct.Input, %struct.Input* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = load float*, float** %9, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds float, float* %68, i64 %69
  store float* %70, float** %9, align 8
  %71 = load float*, float** %9, align 8
  %72 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 1
  store float* %71, float** %72, align 8
  %73 = load %struct.Input*, %struct.Input** %4, align 8
  %74 = getelementptr inbounds %struct.Input, %struct.Input* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load float*, float** %9, align 8
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds float, float* %76, i64 %77
  store float* %78, float** %9, align 8
  %79 = load float*, float** %9, align 8
  %80 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 2
  store float* %79, float** %80, align 8
  %81 = load %struct.Input*, %struct.Input** %4, align 8
  %82 = getelementptr inbounds %struct.Input, %struct.Input* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load float*, float** %9, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds float, float* %84, i64 %85
  store float* %86, float** %9, align 8
  %87 = load float*, float** %9, align 8
  %88 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 3
  store float* %87, float** %88, align 8
  %89 = load %struct.Input*, %struct.Input** %4, align 8
  %90 = getelementptr inbounds %struct.Input, %struct.Input* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load float*, float** %9, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds float, float* %92, i64 %93
  store float* %94, float** %9, align 8
  %95 = load float*, float** %9, align 8
  %96 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 4
  store float* %95, float** %96, align 8
  %97 = load %struct.Input*, %struct.Input** %4, align 8
  %98 = getelementptr inbounds %struct.Input, %struct.Input* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 4
  %100 = load float*, float** %9, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds float, float* %100, i64 %101
  store float* %102, float** %9, align 8
  %103 = load float*, float** %9, align 8
  %104 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 5
  store float* %103, float** %104, align 8
  %105 = load %struct.Input*, %struct.Input** %4, align 8
  %106 = getelementptr inbounds %struct.Input, %struct.Input* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load float*, float** %9, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds float, float* %108, i64 %109
  store float* %110, float** %9, align 8
  %111 = load float*, float** %9, align 8
  %112 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 6
  store float* %111, float** %112, align 8
  %113 = load %struct.Input*, %struct.Input** %4, align 8
  %114 = getelementptr inbounds %struct.Input, %struct.Input* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load float*, float** %9, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds float, float* %116, i64 %117
  store float* %118, float** %9, align 8
  %119 = load float*, float** %9, align 8
  %120 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 7
  store float* %119, float** %120, align 8
  %121 = load %struct.Input*, %struct.Input** %4, align 8
  %122 = getelementptr inbounds %struct.Input, %struct.Input* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 4
  %124 = load float*, float** %9, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds float, float* %124, i64 %125
  store float* %126, float** %9, align 8
  %127 = load float*, float** %9, align 8
  %128 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 8
  store float* %127, float** %128, align 8
  %129 = load %struct.Input*, %struct.Input** %4, align 8
  %130 = getelementptr inbounds %struct.Input, %struct.Input* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = load float*, float** %9, align 8
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds float, float* %132, i64 %133
  store float* %134, float** %9, align 8
  %135 = load float*, float** %9, align 8
  %136 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 9
  store float* %135, float** %136, align 8
  %137 = load %struct.Input*, %struct.Input** %4, align 8
  %138 = getelementptr inbounds %struct.Input, %struct.Input* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = load float*, float** %9, align 8
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds float, float* %140, i64 %141
  store float* %142, float** %9, align 8
  %143 = load float*, float** %9, align 8
  %144 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 10
  store float* %143, float** %144, align 8
  %145 = load %struct.Input*, %struct.Input** %4, align 8
  %146 = getelementptr inbounds %struct.Input, %struct.Input* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = load float*, float** %9, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds float, float* %148, i64 %149
  store float* %150, float** %9, align 8
  %151 = load float*, float** %9, align 8
  %152 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 11
  store float* %151, float** %152, align 8
  %153 = load %struct.Input*, %struct.Input** %4, align 8
  %154 = getelementptr inbounds %struct.Input, %struct.Input* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = load float*, float** %9, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds float, float* %156, i64 %157
  store float* %158, float** %9, align 8
  %159 = load float*, float** %9, align 8
  %160 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 12
  store float* %159, float** %160, align 8
  %161 = load %struct.Input*, %struct.Input** %4, align 8
  %162 = getelementptr inbounds %struct.Input, %struct.Input* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 4
  %164 = load float*, float** %9, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds float, float* %164, i64 %165
  store float* %166, float** %9, align 8
  %167 = load float*, float** %9, align 8
  %168 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %8, i32 0, i32 13
  store float* %167, float** %168, align 8
  store i64 0, i64* %10, align 8
  br label %169

169:                                              ; preds = %481, %35
  %170 = load i64, i64* %10, align 8
  %171 = load %struct.Input*, %struct.Input** %4, align 8
  %172 = getelementptr inbounds %struct.Input, %struct.Input* %171, i32 0, i32 18
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %484

175:                                              ; preds = %169
  store i8 1, i8* %11, align 1
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %477, %175
  %177 = load i32, i32* %12, align 4
  %178 = load %struct.Input*, %struct.Input** %4, align 8
  %179 = getelementptr inbounds %struct.Input, %struct.Input* %178, i32 0, i32 8
  %180 = load i32, i32* %179, align 8
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %480

182:                                              ; preds = %176
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.Input*, %struct.Input** %4, align 8
  %185 = getelementptr inbounds %struct.Input, %struct.Input* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %186, 2
  %188 = icmp eq i32 %183, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i8 0, i8* %11, align 1
  br label %190

190:                                              ; preds = %189, %182
  %191 = load %struct.Params*, %struct.Params** %3, align 8
  %192 = getelementptr inbounds %struct.Params, %struct.Params* %191, i32 0, i32 3
  %193 = load float*, float** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds float, float* %193, i64 %195
  %197 = load float, float* %196, align 4
  store float %197, float* %13, align 4
  %198 = load float, float* %13, align 4
  %199 = fpext float %198 to double
  %200 = call double @cos(double %199) #6
  %201 = fptrunc double %200 to float
  store float %201, float* %14, align 4
  store i32 0, i32* %15, align 4
  %202 = load %struct.Input*, %struct.Input** %4, align 8
  %203 = getelementptr inbounds %struct.Input, %struct.Input* %202, i32 0, i32 19
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %205

205:                                              ; preds = %473, %190
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = load %struct.Params*, %struct.Params** %3, align 8
  %209 = getelementptr inbounds %struct.Params, %struct.Params* %208, i32 0, i32 0
  %210 = load %struct.Track2D*, %struct.Track2D** %209, align 8
  %211 = load i64, i64* %10, align 8
  %212 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %210, i64 %211
  %213 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp slt i64 %207, %214
  br i1 %215, label %216, label %476

216:                                              ; preds = %205
  %217 = load %struct.Params*, %struct.Params** %3, align 8
  %218 = getelementptr inbounds %struct.Params, %struct.Params* %217, i32 0, i32 0
  %219 = load %struct.Track2D*, %struct.Track2D** %218, align 8
  %220 = load i64, i64* %10, align 8
  %221 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %219, i64 %220
  %222 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %221, i32 0, i32 2
  %223 = load %struct.Segment*, %struct.Segment** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.Segment, %struct.Segment* %223, i64 %225
  %227 = getelementptr inbounds %struct.Segment, %struct.Segment* %226, i32 0, i32 0
  %228 = load float, float* %227, align 8
  %229 = fpext float %228 to double
  %230 = load float, float* %13, align 4
  %231 = fpext float %230 to double
  %232 = call double @sin(double %231) #6
  %233 = fdiv double %229, %232
  %234 = fptrunc double %233 to float
  store float %234, float* %18, align 4
  store float 0.000000e+00, float* %19, align 4
  %235 = load i32, i32* %15, align 4
  store i32 %235, i32* %20, align 4
  br label %236

236:                                              ; preds = %469, %216
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %16, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %472

240:                                              ; preds = %236
  %241 = load float, float* %18, align 4
  store float %241, float* %21, align 4
  %242 = load %struct.Params*, %struct.Params** %3, align 8
  %243 = getelementptr inbounds %struct.Params, %struct.Params* %242, i32 0, i32 1
  %244 = load %struct.Track***, %struct.Track**** %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = getelementptr inbounds %struct.Track**, %struct.Track*** %244, i64 %245
  %247 = load %struct.Track**, %struct.Track*** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.Track*, %struct.Track** %247, i64 %249
  %251 = load %struct.Track*, %struct.Track** %250, align 8
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.Track, %struct.Track* %251, i64 %253
  store %struct.Track* %254, %struct.Track** %22, align 8
  store i8 0, i8* %23, align 1
  %255 = load i8, i8* %11, align 1
  %256 = trunc i8 %255 to i1
  br i1 %256, label %257, label %264

257:                                              ; preds = %240
  %258 = load %struct.Track*, %struct.Track** %22, align 8
  %259 = getelementptr inbounds %struct.Track, %struct.Track* %258, i32 0, i32 1
  %260 = load float, float* %259, align 4
  %261 = load double, double* %6, align 8
  %262 = fptrunc double %261 to float
  %263 = call i32 @get_pos_interval(float %260, float %262)
  store i32 %263, i32* %24, align 4
  br label %271

264:                                              ; preds = %240
  %265 = load %struct.Track*, %struct.Track** %22, align 8
  %266 = getelementptr inbounds %struct.Track, %struct.Track* %265, i32 0, i32 1
  %267 = load float, float* %266, align 4
  %268 = load double, double* %6, align 8
  %269 = fptrunc double %268 to float
  %270 = call i32 @get_neg_interval(float %267, float %269)
  store i32 %270, i32* %24, align 4
  br label %271

271:                                              ; preds = %264, %257
  br label %272

272:                                              ; preds = %467, %271
  %273 = load i8, i8* %23, align 1
  %274 = trunc i8 %273 to i1
  %275 = xor i1 %274, true
  br i1 %275, label %276, label %468

276:                                              ; preds = %272
  store i8 0, i8* %25, align 1
  %277 = load %struct.Track*, %struct.Track** %22, align 8
  %278 = getelementptr inbounds %struct.Track, %struct.Track* %277, i32 0, i32 1
  %279 = load float, float* %278, align 4
  %280 = fpext float %279 to double
  %281 = load float, float* %21, align 4
  %282 = fpext float %281 to double
  %283 = load float, float* %13, align 4
  %284 = fpext float %283 to double
  %285 = call double @cos(double %284) #6
  %286 = fmul double %282, %285
  %287 = fadd double %280, %286
  %288 = fptrunc double %287 to float
  store float %288, float* %26, align 4
  %289 = load i8, i8* %11, align 1
  %290 = trunc i8 %289 to i1
  br i1 %290, label %291, label %296

291:                                              ; preds = %276
  %292 = load float, float* %26, align 4
  %293 = load double, double* %6, align 8
  %294 = fptrunc double %293 to float
  %295 = call i32 @get_pos_interval(float %292, float %294)
  store i32 %295, i32* %27, align 4
  br label %301

296:                                              ; preds = %276
  %297 = load float, float* %26, align 4
  %298 = load double, double* %6, align 8
  %299 = fptrunc double %298 to float
  %300 = call i32 @get_neg_interval(float %297, float %299)
  store i32 %300, i32* %27, align 4
  br label %301

301:                                              ; preds = %296, %291
  %302 = load i32, i32* %27, align 4
  %303 = load i32, i32* %24, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %301
  store i8 1, i8* %23, align 1
  %306 = load float, float* %21, align 4
  store float %306, float* %19, align 4
  br label %365

307:                                              ; preds = %301
  %308 = load i8, i8* %11, align 1
  %309 = trunc i8 %308 to i1
  br i1 %309, label %310, label %319

310:                                              ; preds = %307
  %311 = load i32, i32* %24, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %24, align 4
  %313 = load double, double* %6, align 8
  %314 = load i32, i32* %24, align 4
  %315 = sitofp i32 %314 to float
  %316 = fpext float %315 to double
  %317 = fmul double %313, %316
  %318 = fptrunc double %317 to float
  store float %318, float* %26, align 4
  br label %328

319:                                              ; preds = %307
  %320 = load i32, i32* %24, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %24, align 4
  %322 = load double, double* %6, align 8
  %323 = load i32, i32* %24, align 4
  %324 = sitofp i32 %323 to float
  %325 = fpext float %324 to double
  %326 = fmul double %322, %325
  %327 = fptrunc double %326 to float
  store float %327, float* %26, align 4
  br label %328

328:                                              ; preds = %319, %310
  %329 = load float, float* %26, align 4
  %330 = load %struct.Track*, %struct.Track** %22, align 8
  %331 = getelementptr inbounds %struct.Track, %struct.Track* %330, i32 0, i32 1
  %332 = load float, float* %331, align 4
  %333 = fsub float %329, %332
  %334 = fpext float %333 to double
  %335 = load float, float* %13, align 4
  %336 = fpext float %335 to double
  %337 = call double @cos(double %336) #6
  %338 = fdiv double %334, %337
  %339 = fptrunc double %338 to float
  store float %339, float* %19, align 4
  %340 = load float, float* %19, align 4
  %341 = load float, float* %21, align 4
  %342 = fsub float %341, %340
  store float %342, float* %21, align 4
  %343 = load float, float* %21, align 4
  %344 = fcmp ole float %343, 0.000000e+00
  br i1 %344, label %345, label %346

345:                                              ; preds = %328
  store i8 1, i8* %23, align 1
  br label %346

346:                                              ; preds = %345, %328
  %347 = load float, float* %26, align 4
  %348 = fcmp ole float %347, 0.000000e+00
  br i1 %348, label %354, label %349

349:                                              ; preds = %346
  %350 = load float, float* %26, align 4
  %351 = fpext float %350 to double
  %352 = load double, double* %5, align 8
  %353 = fcmp oge double %351, %352
  br i1 %353, label %354, label %364

354:                                              ; preds = %349, %346
  store i8 1, i8* %23, align 1
  %355 = load i8, i8* %11, align 1
  %356 = trunc i8 %355 to i1
  br i1 %356, label %357, label %360

357:                                              ; preds = %354
  %358 = load i32, i32* %16, align 4
  %359 = add nsw i32 %358, -1
  store i32 %359, i32* %16, align 4
  br label %363

360:                                              ; preds = %354
  %361 = load i32, i32* %15, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %15, align 4
  br label %363

363:                                              ; preds = %360, %357
  store i8 1, i8* %25, align 1
  br label %364

364:                                              ; preds = %363, %349
  br label %365

365:                                              ; preds = %364, %305
  %366 = call i32 @glibc_compat_rand()
  %367 = sext i32 %366 to i64
  %368 = load %struct.Input*, %struct.Input** %4, align 8
  %369 = getelementptr inbounds %struct.Input, %struct.Input* %368, i32 0, i32 24
  %370 = load i64, i64* %369, align 8
  %371 = srem i64 %367, %370
  store i64 %371, i64* %28, align 8
  %372 = load %struct.Input*, %struct.Input** %4, align 8
  %373 = getelementptr inbounds %struct.Input, %struct.Input* %372, i32 0, i32 4
  %374 = load i32, i32* %373, align 8
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %376, label %396

376:                                              ; preds = %365
  %377 = load %struct.Track*, %struct.Track** %22, align 8
  %378 = load %struct.Params*, %struct.Params** %3, align 8
  %379 = getelementptr inbounds %struct.Params, %struct.Params* %378, i32 0, i32 2
  %380 = load %struct.Source*, %struct.Source** %379, align 8
  %381 = load i64, i64* %28, align 8
  %382 = getelementptr inbounds %struct.Source, %struct.Source* %380, i64 %381
  %383 = load %struct.Input*, %struct.Input** %4, align 8
  %384 = load %struct.Params*, %struct.Params** %3, align 8
  %385 = load float, float* %19, align 4
  %386 = load float, float* %14, align 4
  %387 = load %struct.Params*, %struct.Params** %3, align 8
  %388 = getelementptr inbounds %struct.Params, %struct.Params* %387, i32 0, i32 0
  %389 = load %struct.Track2D*, %struct.Track2D** %388, align 8
  %390 = load i64, i64* %10, align 8
  %391 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %389, i64 %390
  %392 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %391, i32 0, i32 0
  %393 = load float, float* %392, align 8
  call void @attenuate_fluxes(%struct.Track* %377, i1 zeroext true, %struct.Source* %382, %struct.Input* %383, %struct.Params* %384, float %385, float %386, float %393, %struct.AttenuateVars* %8)
  %394 = load i64, i64* %7, align 8
  %395 = add nsw i64 %394, 1
  store i64 %395, i64* %7, align 8
  br label %425

396:                                              ; preds = %365
  %397 = load %struct.Input*, %struct.Input** %4, align 8
  %398 = getelementptr inbounds %struct.Input, %struct.Input* %397, i32 0, i32 4
  %399 = load i32, i32* %398, align 8
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %421

401:                                              ; preds = %396
  %402 = load %struct.Track*, %struct.Track** %22, align 8
  %403 = load %struct.Params*, %struct.Params** %3, align 8
  %404 = getelementptr inbounds %struct.Params, %struct.Params* %403, i32 0, i32 2
  %405 = load %struct.Source*, %struct.Source** %404, align 8
  %406 = load i64, i64* %28, align 8
  %407 = getelementptr inbounds %struct.Source, %struct.Source* %405, i64 %406
  %408 = load %struct.Input*, %struct.Input** %4, align 8
  %409 = load %struct.Params*, %struct.Params** %3, align 8
  %410 = load float, float* %19, align 4
  %411 = load float, float* %14, align 4
  %412 = load %struct.Params*, %struct.Params** %3, align 8
  %413 = getelementptr inbounds %struct.Params, %struct.Params* %412, i32 0, i32 0
  %414 = load %struct.Track2D*, %struct.Track2D** %413, align 8
  %415 = load i64, i64* %10, align 8
  %416 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %414, i64 %415
  %417 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %416, i32 0, i32 0
  %418 = load float, float* %417, align 8
  call void @attenuate_FSR_fluxes(%struct.Track* %402, i1 zeroext true, %struct.Source* %407, %struct.Input* %408, %struct.Params* %409, float %410, float %411, float %418, %struct.AttenuateVars* %8)
  %419 = load i64, i64* %7, align 8
  %420 = add nsw i64 %419, 1
  store i64 %420, i64* %7, align 8
  br label %424

421:                                              ; preds = %396
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.66, i64 0, i64 0))
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.67, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

424:                                              ; preds = %401
  br label %425

425:                                              ; preds = %424, %376
  %426 = load i32, i32* %17, align 4
  %427 = sext i32 %426 to i64
  %428 = load %struct.Params*, %struct.Params** %3, align 8
  %429 = getelementptr inbounds %struct.Params, %struct.Params* %428, i32 0, i32 0
  %430 = load %struct.Track2D*, %struct.Track2D** %429, align 8
  %431 = load i64, i64* %10, align 8
  %432 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %430, i64 %431
  %433 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = sub nsw i64 %434, 1
  %436 = icmp eq i64 %427, %435
  br i1 %436, label %440, label %437

437:                                              ; preds = %425
  %438 = load i8, i8* %25, align 1
  %439 = trunc i8 %438 to i1
  br i1 %439, label %440, label %463

440:                                              ; preds = %437, %425
  %441 = load i8, i8* %11, align 1
  %442 = trunc i8 %441 to i1
  br i1 %442, label %443, label %452

443:                                              ; preds = %440
  %444 = load %struct.Input*, %struct.Input** %4, align 8
  %445 = getelementptr inbounds %struct.Input, %struct.Input* %444, i32 0, i32 6
  %446 = load float, float* %445, align 8
  %447 = load i32, i32* %20, align 4
  %448 = sitofp i32 %447 to float
  %449 = fmul float %446, %448
  %450 = load %struct.Track*, %struct.Track** %22, align 8
  %451 = getelementptr inbounds %struct.Track, %struct.Track* %450, i32 0, i32 1
  store float %449, float* %451, align 4
  br label %462

452:                                              ; preds = %440
  %453 = load %struct.Input*, %struct.Input** %4, align 8
  %454 = getelementptr inbounds %struct.Input, %struct.Input* %453, i32 0, i32 6
  %455 = load float, float* %454, align 8
  %456 = load i32, i32* %20, align 4
  %457 = add nsw i32 %456, 1
  %458 = sitofp i32 %457 to float
  %459 = fmul float %455, %458
  %460 = load %struct.Track*, %struct.Track** %22, align 8
  %461 = getelementptr inbounds %struct.Track, %struct.Track* %460, i32 0, i32 1
  store float %459, float* %461, align 4
  br label %462

462:                                              ; preds = %452, %443
  br label %467

463:                                              ; preds = %437
  %464 = load float, float* %26, align 4
  %465 = load %struct.Track*, %struct.Track** %22, align 8
  %466 = getelementptr inbounds %struct.Track, %struct.Track* %465, i32 0, i32 1
  store float %464, float* %466, align 4
  br label %467

467:                                              ; preds = %463, %462
  br label %272

468:                                              ; preds = %272
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %20, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %20, align 4
  br label %236

472:                                              ; preds = %236
  br label %473

473:                                              ; preds = %472
  %474 = load i32, i32* %17, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %17, align 4
  br label %205

476:                                              ; preds = %205
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %12, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %12, align 4
  br label %176

480:                                              ; preds = %176
  br label %481

481:                                              ; preds = %480
  %482 = load i64, i64* %10, align 8
  %483 = add nsw i64 %482, 1
  store i64 %483, i64* %10, align 8
  br label %169

484:                                              ; preds = %169
  %485 = load i64, i64* %7, align 8
  %486 = load %struct.Input*, %struct.Input** %4, align 8
  %487 = getelementptr inbounds %struct.Input, %struct.Input* %486, i32 0, i32 27
  store i64 %485, i64* %487, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local double @cos(double) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_pos_interval(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fdiv float %6, %7
  %9 = fptosi float %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_neg_interval(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fdiv float %6, %7
  %9 = fpext float %8 to double
  %10 = fsub double 0x41DFFFFFFFC00000, %9
  %11 = fptosi double %10 to i32
  %12 = sub nsw i32 2147483647, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @attenuate_FSR_fluxes(%struct.Track* %0, i1 zeroext %1, %struct.Source* %2, %struct.Input* %3, %struct.Params* %4, float %5, float %6, float %7, %struct.AttenuateVars* %8) #0 {
  %10 = alloca %struct.Track*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.Source*, align 8
  %13 = alloca %struct.Input*, align 8
  %14 = alloca %struct.Params*, align 8
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.AttenuateVars*, align 8
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca %struct.Params, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca float*, align 8
  %32 = alloca i32, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  store %struct.Track* %0, %struct.Track** %10, align 8
  %36 = zext i1 %1 to i8
  store i8 %36, i8* %11, align 1
  store %struct.Source* %2, %struct.Source** %12, align 8
  store %struct.Input* %3, %struct.Input** %13, align 8
  store %struct.Params* %4, %struct.Params** %14, align 8
  store float %5, float* %15, align 4
  store float %6, float* %16, align 4
  store float %7, float* %17, align 4
  store %struct.AttenuateVars* %8, %struct.AttenuateVars** %18, align 8
  %37 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %38 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %37, i32 0, i32 9
  %39 = load float*, float** %38, align 8
  store float* %39, float** %19, align 8
  %40 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %41 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %40, i32 0, i32 6
  %42 = load float*, float** %41, align 8
  store float* %42, float** %20, align 8
  %43 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %44 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %43, i32 0, i32 3
  %45 = load float*, float** %44, align 8
  store float* %45, float** %21, align 8
  %46 = load %struct.AttenuateVars*, %struct.AttenuateVars** %18, align 8
  %47 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %46, i32 0, i32 4
  %48 = load float*, float** %47, align 8
  store float* %48, float** %22, align 8
  %49 = load %struct.Params*, %struct.Params** %14, align 8
  %50 = bitcast %struct.Params* %23 to i8*
  %51 = bitcast %struct.Params* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %50, i8* align 8 %51, i64 64, i1 false)
  %52 = load %struct.Input*, %struct.Input** %13, align 8
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %52, i32 0, i32 14
  %54 = load float, float* %53, align 4
  %55 = load %struct.Input*, %struct.Input** %13, align 8
  %56 = getelementptr inbounds %struct.Input, %struct.Input* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.Input*, %struct.Input** %13, align 8
  %59 = getelementptr inbounds %struct.Input, %struct.Input* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.Input*, %struct.Input** %13, align 8
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = sitofp i32 %65 to float
  %67 = fdiv float %54, %66
  store float %67, float* %24, align 4
  %68 = load %struct.Track*, %struct.Track** %10, align 8
  %69 = getelementptr inbounds %struct.Track, %struct.Track* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = load float, float* %24, align 4
  %72 = load %struct.Track*, %struct.Track** %10, align 8
  %73 = getelementptr inbounds %struct.Track, %struct.Track* %72, i32 0, i32 1
  %74 = load float, float* %73, align 4
  %75 = load float, float* %24, align 4
  %76 = fdiv float %74, %75
  %77 = fptosi float %76 to i32
  %78 = sitofp i32 %77 to float
  %79 = fadd float %78, 5.000000e-01
  %80 = fmul float %71, %79
  %81 = fsub float %70, %80
  store float %81, float* %25, align 4
  %82 = load %struct.Track*, %struct.Track** %10, align 8
  %83 = getelementptr inbounds %struct.Track, %struct.Track* %82, i32 0, i32 1
  %84 = load float, float* %83, align 4
  %85 = load float, float* %24, align 4
  %86 = fdiv float %84, %85
  %87 = fptosi float %86 to i32
  %88 = load %struct.Input*, %struct.Input** %13, align 8
  %89 = getelementptr inbounds %struct.Input, %struct.Input* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = srem i32 %87, %90
  store i32 %91, i32* %26, align 4
  %92 = load %struct.Track*, %struct.Track** %10, align 8
  %93 = getelementptr inbounds %struct.Track, %struct.Track* %92, i32 0, i32 0
  %94 = load float, float* %93, align 8
  %95 = load float, float* %17, align 4
  %96 = fmul float %94, %95
  %97 = load float, float* %16, align 4
  %98 = fmul float %96, %97
  store float %98, float* %27, align 4
  %99 = load %struct.Source*, %struct.Source** %12, align 8
  %100 = getelementptr inbounds %struct.Source, %struct.Source* %99, i32 0, i32 0
  %101 = load float**, float*** %100, align 8
  %102 = load i32, i32* %26, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %101, i64 %103
  %105 = load float*, float** %104, align 8
  store float* %105, float** %28, align 8
  store i32 0, i32* %29, align 4
  br label %106

106:                                              ; preds = %135, %9
  %107 = load i32, i32* %29, align 4
  %108 = load %struct.Input*, %struct.Input** %13, align 8
  %109 = getelementptr inbounds %struct.Input, %struct.Input* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %138

112:                                              ; preds = %106
  %113 = load %struct.Source*, %struct.Source** %12, align 8
  %114 = getelementptr inbounds %struct.Source, %struct.Source* %113, i32 0, i32 3
  %115 = load float*, float** %114, align 8
  %116 = load i32, i32* %29, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %21, align 8
  %121 = load i32, i32* %29, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  store float %119, float* %123, align 4
  %124 = load float*, float** %21, align 8
  %125 = load i32, i32* %29, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float, float* %124, i64 %126
  %128 = load float, float* %127, align 4
  %129 = load float, float* %15, align 4
  %130 = fmul float %128, %129
  %131 = load float*, float** %22, align 8
  %132 = load i32, i32* %29, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  store float %130, float* %134, align 4
  br label %135

135:                                              ; preds = %112
  %136 = load i32, i32* %29, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %29, align 4
  br label %106

138:                                              ; preds = %106
  store i32 0, i32* %30, align 4
  br label %139

139:                                              ; preds = %157, %138
  %140 = load i32, i32* %30, align 4
  %141 = load %struct.Input*, %struct.Input** %13, align 8
  %142 = getelementptr inbounds %struct.Input, %struct.Input* %141, i32 0, i32 9
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.Params, %struct.Params* %23, i32 0, i32 5
  %147 = load float*, float** %22, align 8
  %148 = load i32, i32* %30, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, float* %147, i64 %149
  %151 = load float, float* %150, align 4
  %152 = call float @interpolateTable(%struct.Table* byval(%struct.Table) align 8 %146, float %151)
  %153 = load float*, float** %20, align 8
  %154 = load i32, i32* %30, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %153, i64 %155
  store float %152, float* %156, align 4
  br label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %30, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %30, align 4
  br label %139

160:                                              ; preds = %139
  %161 = load i8, i8* %11, align 1
  %162 = trunc i8 %161 to i1
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = load %struct.Track*, %struct.Track** %10, align 8
  %165 = getelementptr inbounds %struct.Track, %struct.Track* %164, i32 0, i32 4
  %166 = load float*, float** %165, align 8
  store float* %166, float** %31, align 8
  br label %171

167:                                              ; preds = %160
  %168 = load %struct.Track*, %struct.Track** %10, align 8
  %169 = getelementptr inbounds %struct.Track, %struct.Track* %168, i32 0, i32 5
  %170 = load float*, float** %169, align 8
  store float* %170, float** %31, align 8
  br label %171

171:                                              ; preds = %167, %163
  store i32 0, i32* %32, align 4
  br label %172

172:                                              ; preds = %223, %171
  %173 = load i32, i32* %32, align 4
  %174 = load %struct.Input*, %struct.Input** %13, align 8
  %175 = getelementptr inbounds %struct.Input, %struct.Input* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %226

178:                                              ; preds = %172
  %179 = load %struct.Source*, %struct.Source** %12, align 8
  %180 = getelementptr inbounds %struct.Source, %struct.Source* %179, i32 0, i32 1
  %181 = load float**, float*** %180, align 8
  %182 = load i32, i32* %26, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float*, float** %181, i64 %183
  %185 = load float*, float** %184, align 8
  %186 = load i32, i32* %32, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds float, float* %185, i64 %187
  %189 = load float, float* %188, align 4
  %190 = load float*, float** %21, align 8
  %191 = load i32, i32* %32, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %190, i64 %192
  %194 = load float, float* %193, align 4
  %195 = fdiv float %189, %194
  store float %195, float* %33, align 4
  %196 = load float*, float** %31, align 8
  %197 = load i32, i32* %32, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = load float, float* %33, align 4
  %202 = fsub float %200, %201
  %203 = load float*, float** %20, align 8
  %204 = load i32, i32* %32, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %203, i64 %205
  %207 = load float, float* %206, align 4
  %208 = fmul float %202, %207
  store float %208, float* %34, align 4
  %209 = load float, float* %27, align 4
  %210 = load float, float* %34, align 4
  %211 = fmul float %209, %210
  %212 = load float*, float** %19, align 8
  %213 = load i32, i32* %32, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %211, float* %215, align 4
  %216 = load float, float* %34, align 4
  %217 = load float*, float** %31, align 8
  %218 = load i32, i32* %32, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fsub float %221, %216
  store float %222, float* %220, align 4
  br label %223

223:                                              ; preds = %178
  %224 = load i32, i32* %32, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %32, align 4
  br label %172

226:                                              ; preds = %172
  store i32 0, i32* %35, align 4
  br label %227

227:                                              ; preds = %245, %226
  %228 = load i32, i32* %35, align 4
  %229 = load %struct.Input*, %struct.Input** %13, align 8
  %230 = getelementptr inbounds %struct.Input, %struct.Input* %229, i32 0, i32 9
  %231 = load i32, i32* %230, align 4
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %227
  %234 = load float*, float** %19, align 8
  %235 = load i32, i32* %35, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = load float*, float** %28, align 8
  %240 = load i32, i32* %35, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  %244 = fadd float %243, %238
  store float %244, float* %242, align 4
  br label %245

245:                                              ; preds = %233
  %246 = load i32, i32* %35, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %35, align 4
  br label %227

248:                                              ; preds = %227
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @two_way_transport_sweep(%struct.Params* %0, %struct.Input* %1) #0 {
  %3 = alloca %struct.Params*, align 8
  %4 = alloca %struct.Input*, align 8
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.AttenuateVars, align 8
  %10 = alloca float*, align 8
  %11 = alloca i64, align 8
  %12 = alloca double**, align 8
  %13 = alloca %struct.Source***, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.Track*, align 8
  %30 = alloca i32, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca i8, align 1
  %34 = alloca i64, align 8
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca float, align 4
  %43 = alloca %struct.Track*, align 8
  %44 = alloca i32, align 4
  %45 = alloca %struct.Track*, align 8
  %46 = alloca i32, align 4
  store %struct.Params* %0, %struct.Params** %3, align 8
  store %struct.Input* %1, %struct.Input** %4, align 8
  %47 = load %struct.Input*, %struct.Input** %4, align 8
  %48 = getelementptr inbounds %struct.Input, %struct.Input* %47, i32 0, i32 17
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %2
  %54 = load %struct.Input*, %struct.Input** %4, align 8
  %55 = getelementptr inbounds %struct.Input, %struct.Input* %54, i32 0, i32 14
  %56 = load float, float* %55, align 4
  %57 = load %struct.Input*, %struct.Input** %4, align 8
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = sitofp i32 %59 to float
  %61 = fdiv float %56, %60
  %62 = fpext float %61 to double
  store double %62, double* %5, align 8
  %63 = load %struct.Input*, %struct.Input** %4, align 8
  %64 = getelementptr inbounds %struct.Input, %struct.Input* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.Input*, %struct.Input** %4, align 8
  %67 = getelementptr inbounds %struct.Input, %struct.Input* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  store i32 %69, i32* %6, align 4
  %70 = load double, double* %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sitofp i32 %71 to double
  %73 = fdiv double %70, %72
  store double %73, double* %7, align 8
  store i64 0, i64* %8, align 8
  %74 = load %struct.Input*, %struct.Input** %4, align 8
  %75 = getelementptr inbounds %struct.Input, %struct.Input* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %76, 14
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = call noalias i8* @malloc(i64 %79) #6
  %81 = bitcast i8* %80 to float*
  store float* %81, float** %10, align 8
  %82 = load float*, float** %10, align 8
  %83 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 0
  store float* %82, float** %83, align 8
  %84 = load %struct.Input*, %struct.Input** %4, align 8
  %85 = getelementptr inbounds %struct.Input, %struct.Input* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = load float*, float** %10, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds float, float* %87, i64 %88
  store float* %89, float** %10, align 8
  %90 = load float*, float** %10, align 8
  %91 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 1
  store float* %90, float** %91, align 8
  %92 = load %struct.Input*, %struct.Input** %4, align 8
  %93 = getelementptr inbounds %struct.Input, %struct.Input* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load float*, float** %10, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds float, float* %95, i64 %96
  store float* %97, float** %10, align 8
  %98 = load float*, float** %10, align 8
  %99 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 2
  store float* %98, float** %99, align 8
  %100 = load %struct.Input*, %struct.Input** %4, align 8
  %101 = getelementptr inbounds %struct.Input, %struct.Input* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = load float*, float** %10, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds float, float* %103, i64 %104
  store float* %105, float** %10, align 8
  %106 = load float*, float** %10, align 8
  %107 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 3
  store float* %106, float** %107, align 8
  %108 = load %struct.Input*, %struct.Input** %4, align 8
  %109 = getelementptr inbounds %struct.Input, %struct.Input* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = load float*, float** %10, align 8
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds float, float* %111, i64 %112
  store float* %113, float** %10, align 8
  %114 = load float*, float** %10, align 8
  %115 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 4
  store float* %114, float** %115, align 8
  %116 = load %struct.Input*, %struct.Input** %4, align 8
  %117 = getelementptr inbounds %struct.Input, %struct.Input* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load float*, float** %10, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds float, float* %119, i64 %120
  store float* %121, float** %10, align 8
  %122 = load float*, float** %10, align 8
  %123 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 5
  store float* %122, float** %123, align 8
  %124 = load %struct.Input*, %struct.Input** %4, align 8
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = load float*, float** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds float, float* %127, i64 %128
  store float* %129, float** %10, align 8
  %130 = load float*, float** %10, align 8
  %131 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 6
  store float* %130, float** %131, align 8
  %132 = load %struct.Input*, %struct.Input** %4, align 8
  %133 = getelementptr inbounds %struct.Input, %struct.Input* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = load float*, float** %10, align 8
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds float, float* %135, i64 %136
  store float* %137, float** %10, align 8
  %138 = load float*, float** %10, align 8
  %139 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 7
  store float* %138, float** %139, align 8
  %140 = load %struct.Input*, %struct.Input** %4, align 8
  %141 = getelementptr inbounds %struct.Input, %struct.Input* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = load float*, float** %10, align 8
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds float, float* %143, i64 %144
  store float* %145, float** %10, align 8
  %146 = load float*, float** %10, align 8
  %147 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 8
  store float* %146, float** %147, align 8
  %148 = load %struct.Input*, %struct.Input** %4, align 8
  %149 = getelementptr inbounds %struct.Input, %struct.Input* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = load float*, float** %10, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds float, float* %151, i64 %152
  store float* %153, float** %10, align 8
  %154 = load float*, float** %10, align 8
  %155 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 9
  store float* %154, float** %155, align 8
  %156 = load %struct.Input*, %struct.Input** %4, align 8
  %157 = getelementptr inbounds %struct.Input, %struct.Input* %156, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = load float*, float** %10, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds float, float* %159, i64 %160
  store float* %161, float** %10, align 8
  %162 = load float*, float** %10, align 8
  %163 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 10
  store float* %162, float** %163, align 8
  %164 = load %struct.Input*, %struct.Input** %4, align 8
  %165 = getelementptr inbounds %struct.Input, %struct.Input* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = load float*, float** %10, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds float, float* %167, i64 %168
  store float* %169, float** %10, align 8
  %170 = load float*, float** %10, align 8
  %171 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 11
  store float* %170, float** %171, align 8
  %172 = load %struct.Input*, %struct.Input** %4, align 8
  %173 = getelementptr inbounds %struct.Input, %struct.Input* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load float*, float** %10, align 8
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds float, float* %175, i64 %176
  store float* %177, float** %10, align 8
  %178 = load float*, float** %10, align 8
  %179 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 12
  store float* %178, float** %179, align 8
  %180 = load %struct.Input*, %struct.Input** %4, align 8
  %181 = getelementptr inbounds %struct.Input, %struct.Input* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = load float*, float** %10, align 8
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds float, float* %183, i64 %184
  store float* %185, float** %10, align 8
  %186 = load float*, float** %10, align 8
  %187 = getelementptr inbounds %struct.AttenuateVars, %struct.AttenuateVars* %9, i32 0, i32 13
  store float* %186, float** %187, align 8
  store i64 0, i64* %11, align 8
  br label %188

188:                                              ; preds = %869, %53
  %189 = load i64, i64* %11, align 8
  %190 = load %struct.Input*, %struct.Input** %4, align 8
  %191 = getelementptr inbounds %struct.Input, %struct.Input* %190, i32 0, i32 18
  %192 = load i64, i64* %191, align 8
  %193 = icmp slt i64 %189, %192
  br i1 %193, label %194, label %872

194:                                              ; preds = %188
  %195 = load i64, i64* %11, align 8
  %196 = srem i64 %195, 50
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %194
  %199 = load %struct.Input*, %struct.Input** %4, align 8
  %200 = getelementptr inbounds %struct.Input, %struct.Input* %199, i32 0, i32 17
  %201 = load i64, i64* %200, align 8
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load i64, i64* %11, align 8
  %205 = load %struct.Input*, %struct.Input** %4, align 8
  %206 = getelementptr inbounds %struct.Input, %struct.Input* %205, i32 0, i32 18
  %207 = load i64, i64* %206, align 8
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3.68, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4.69, i64 0, i64 0), i64 %204, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.70, i64 0, i64 0), i64 %207)
  br label %209

209:                                              ; preds = %203, %198
  br label %210

210:                                              ; preds = %209, %194
  %211 = load %struct.Input*, %struct.Input** %4, align 8
  %212 = getelementptr inbounds %struct.Input, %struct.Input* %211, i32 0, i32 19
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 8
  %216 = call noalias i8* @malloc(i64 %215) #6
  %217 = bitcast i8* %216 to double**
  store double** %217, double*** %12, align 8
  %218 = load %struct.Input*, %struct.Input** %4, align 8
  %219 = getelementptr inbounds %struct.Input, %struct.Input* %218, i32 0, i32 19
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = mul i64 %221, 8
  %223 = call noalias i8* @malloc(i64 %222) #6
  %224 = bitcast i8* %223 to %struct.Source***
  store %struct.Source*** %224, %struct.Source**** %13, align 8
  %225 = load %struct.Input*, %struct.Input** %4, align 8
  %226 = getelementptr inbounds %struct.Input, %struct.Input* %225, i32 0, i32 19
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 4
  %230 = call noalias i8* @malloc(i64 %229) #6
  %231 = bitcast i8* %230 to i32*
  store i32* %231, i32** %14, align 8
  %232 = load %struct.Input*, %struct.Input** %4, align 8
  %233 = getelementptr inbounds %struct.Input, %struct.Input* %232, i32 0, i32 19
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = mul i64 %235, 4
  %237 = call noalias i8* @malloc(i64 %236) #6
  %238 = bitcast i8* %237 to i32*
  store i32* %238, i32** %15, align 8
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %285, %210
  %240 = load i32, i32* %16, align 4
  %241 = load %struct.Input*, %struct.Input** %4, align 8
  %242 = getelementptr inbounds %struct.Input, %struct.Input* %241, i32 0, i32 19
  %243 = load i32, i32* %242, align 8
  %244 = icmp slt i32 %240, %243
  br i1 %244, label %245, label %288

245:                                              ; preds = %239
  %246 = load %struct.Input*, %struct.Input** %4, align 8
  %247 = getelementptr inbounds %struct.Input, %struct.Input* %246, i32 0, i32 12
  %248 = load i64, i64* %247, align 8
  %249 = mul nsw i64 2, %248
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** %15, align 8
  %252 = load i32, i32* %16, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 %250, i32* %254, align 4
  %255 = load i32*, i32** %15, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = mul i64 %260, 8
  %262 = call noalias i8* @malloc(i64 %261) #6
  %263 = bitcast i8* %262 to double*
  %264 = load double**, double*** %12, align 8
  %265 = load i32, i32* %16, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds double*, double** %264, i64 %266
  store double* %263, double** %267, align 8
  %268 = load i32*, i32** %15, align 8
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = sext i32 %272 to i64
  %274 = mul i64 %273, 8
  %275 = call noalias i8* @malloc(i64 %274) #6
  %276 = bitcast i8* %275 to %struct.Source**
  %277 = load %struct.Source***, %struct.Source**** %13, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.Source**, %struct.Source*** %277, i64 %279
  store %struct.Source** %276, %struct.Source*** %280, align 8
  %281 = load i32*, i32** %14, align 8
  %282 = load i32, i32* %16, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 0, i32* %284, align 4
  br label %285

285:                                              ; preds = %245
  %286 = load i32, i32* %16, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %16, align 4
  br label %239

288:                                              ; preds = %239
  store i8 1, i8* %17, align 1
  store i32 0, i32* %18, align 4
  br label %289

289:                                              ; preds = %834, %288
  %290 = load i32, i32* %18, align 4
  %291 = load %struct.Input*, %struct.Input** %4, align 8
  %292 = getelementptr inbounds %struct.Input, %struct.Input* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %837

295:                                              ; preds = %289
  %296 = load i32, i32* %18, align 4
  %297 = load %struct.Input*, %struct.Input** %4, align 8
  %298 = getelementptr inbounds %struct.Input, %struct.Input* %297, i32 0, i32 8
  %299 = load i32, i32* %298, align 8
  %300 = sdiv i32 %299, 2
  %301 = icmp eq i32 %296, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %295
  store i8 0, i8* %17, align 1
  br label %303

303:                                              ; preds = %302, %295
  %304 = load %struct.Params*, %struct.Params** %3, align 8
  %305 = getelementptr inbounds %struct.Params, %struct.Params* %304, i32 0, i32 3
  %306 = load float*, float** %305, align 8
  %307 = load i32, i32* %18, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds float, float* %306, i64 %308
  %310 = load float, float* %309, align 4
  store float %310, float* %19, align 4
  %311 = load float, float* %19, align 4
  %312 = fpext float %311 to double
  %313 = call double @cos(double %312) #6
  %314 = fptrunc double %313 to float
  store float %314, float* %20, align 4
  store i32 0, i32* %21, align 4
  %315 = load %struct.Input*, %struct.Input** %4, align 8
  %316 = getelementptr inbounds %struct.Input, %struct.Input* %315, i32 0, i32 19
  %317 = load i32, i32* %316, align 8
  store i32 %317, i32* %22, align 4
  store i32 0, i32* %23, align 4
  br label %318

318:                                              ; preds = %329, %303
  %319 = load i32, i32* %23, align 4
  %320 = load %struct.Input*, %struct.Input** %4, align 8
  %321 = getelementptr inbounds %struct.Input, %struct.Input* %320, i32 0, i32 19
  %322 = load i32, i32* %321, align 8
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %332

324:                                              ; preds = %318
  %325 = load i32*, i32** %14, align 8
  %326 = load i32, i32* %23, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 0, i32* %328, align 4
  br label %329

329:                                              ; preds = %324
  %330 = load i32, i32* %23, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %23, align 4
  br label %318

332:                                              ; preds = %318
  store i32 0, i32* %24, align 4
  br label %333

333:                                              ; preds = %670, %332
  %334 = load i32, i32* %24, align 4
  %335 = sext i32 %334 to i64
  %336 = load %struct.Params*, %struct.Params** %3, align 8
  %337 = getelementptr inbounds %struct.Params, %struct.Params* %336, i32 0, i32 0
  %338 = load %struct.Track2D*, %struct.Track2D** %337, align 8
  %339 = load i64, i64* %11, align 8
  %340 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %338, i64 %339
  %341 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = icmp slt i64 %335, %342
  br i1 %343, label %344, label %673

344:                                              ; preds = %333
  %345 = load %struct.Params*, %struct.Params** %3, align 8
  %346 = getelementptr inbounds %struct.Params, %struct.Params* %345, i32 0, i32 0
  %347 = load %struct.Track2D*, %struct.Track2D** %346, align 8
  %348 = load i64, i64* %11, align 8
  %349 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %347, i64 %348
  %350 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %349, i32 0, i32 2
  %351 = load %struct.Segment*, %struct.Segment** %350, align 8
  %352 = load i32, i32* %24, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.Segment, %struct.Segment* %351, i64 %353
  %355 = getelementptr inbounds %struct.Segment, %struct.Segment* %354, i32 0, i32 0
  %356 = load float, float* %355, align 8
  %357 = fpext float %356 to double
  %358 = load float, float* %19, align 4
  %359 = fpext float %358 to double
  %360 = call double @sin(double %359) #6
  %361 = fdiv double %357, %360
  %362 = fptrunc double %361 to float
  store float %362, float* %25, align 4
  store float 0.000000e+00, float* %26, align 4
  store i32 0, i32* %27, align 4
  %363 = load i32, i32* %21, align 4
  store i32 %363, i32* %28, align 4
  br label %364

364:                                              ; preds = %655, %344
  %365 = load i32, i32* %28, align 4
  %366 = load i32, i32* %22, align 4
  %367 = icmp slt i32 %365, %366
  br i1 %367, label %368, label %658

368:                                              ; preds = %364
  %369 = load %struct.Params*, %struct.Params** %3, align 8
  %370 = getelementptr inbounds %struct.Params, %struct.Params* %369, i32 0, i32 1
  %371 = load %struct.Track***, %struct.Track**** %370, align 8
  %372 = load i64, i64* %11, align 8
  %373 = getelementptr inbounds %struct.Track**, %struct.Track*** %371, i64 %372
  %374 = load %struct.Track**, %struct.Track*** %373, align 8
  %375 = load i32, i32* %18, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.Track*, %struct.Track** %374, i64 %376
  %378 = load %struct.Track*, %struct.Track** %377, align 8
  %379 = load i32, i32* %28, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.Track, %struct.Track* %378, i64 %380
  store %struct.Track* %381, %struct.Track** %29, align 8
  %382 = load %struct.Track*, %struct.Track** %29, align 8
  %383 = getelementptr inbounds %struct.Track, %struct.Track* %382, i32 0, i32 1
  %384 = load float, float* %383, align 4
  %385 = fptosi float %384 to i32
  %386 = sitofp i32 %385 to double
  %387 = load double, double* %7, align 8
  %388 = fdiv double %386, %387
  %389 = fptosi double %388 to i32
  store i32 %389, i32* %30, align 4
  %390 = load i8, i8* %17, align 1
  %391 = trunc i8 %390 to i1
  br i1 %391, label %392, label %403

392:                                              ; preds = %368
  %393 = load double, double* %5, align 8
  %394 = load %struct.Track*, %struct.Track** %29, align 8
  %395 = getelementptr inbounds %struct.Track, %struct.Track* %394, i32 0, i32 1
  %396 = load float, float* %395, align 4
  %397 = fpext float %396 to double
  %398 = fsub double %393, %397
  %399 = load float, float* %20, align 4
  %400 = fpext float %399 to double
  %401 = fdiv double %398, %400
  %402 = fptrunc double %401 to float
  store float %402, float* %31, align 4
  br label %410

403:                                              ; preds = %368
  %404 = load %struct.Track*, %struct.Track** %29, align 8
  %405 = getelementptr inbounds %struct.Track, %struct.Track* %404, i32 0, i32 1
  %406 = load float, float* %405, align 4
  %407 = fneg float %406
  %408 = load float, float* %20, align 4
  %409 = fdiv float %407, %408
  store float %409, float* %31, align 4
  br label %410

410:                                              ; preds = %403, %392
  %411 = load float, float* %25, align 4
  %412 = load float, float* %31, align 4
  %413 = fcmp olt float %411, %412
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  %415 = load float, float* %25, align 4
  store float %415, float* %32, align 4
  br label %420

416:                                              ; preds = %410
  %417 = load float, float* %31, align 4
  store float %417, float* %32, align 4
  %418 = load i32, i32* %27, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %27, align 4
  br label %420

420:                                              ; preds = %416, %414
  store i8 0, i8* %33, align 1
  br label %421

421:                                              ; preds = %653, %420
  %422 = load i8, i8* %33, align 1
  %423 = trunc i8 %422 to i1
  %424 = xor i1 %423, true
  br i1 %424, label %425, label %654

425:                                              ; preds = %421
  %426 = load i32, i32* %30, align 4
  %427 = load i32, i32* %6, align 4
  %428 = load i32, i32* %24, align 4
  %429 = mul nsw i32 %427, %428
  %430 = add nsw i32 %426, %429
  %431 = sext i32 %430 to i64
  store i64 %431, i64* %34, align 8
  %432 = load i8, i8* %17, align 1
  %433 = trunc i8 %432 to i1
  br i1 %433, label %434, label %441

434:                                              ; preds = %425
  %435 = load i32, i32* %30, align 4
  %436 = add nsw i32 %435, 1
  %437 = sitofp i32 %436 to double
  %438 = load double, double* %7, align 8
  %439 = fmul double %437, %438
  %440 = fptrunc double %439 to float
  store float %440, float* %37, align 4
  br label %447

441:                                              ; preds = %425
  %442 = load i32, i32* %30, align 4
  %443 = sitofp i32 %442 to double
  %444 = load double, double* %7, align 8
  %445 = fmul double %443, %444
  %446 = fptrunc double %445 to float
  store float %446, float* %37, align 4
  br label %447

447:                                              ; preds = %441, %434
  %448 = load float, float* %37, align 4
  %449 = load %struct.Track*, %struct.Track** %29, align 8
  %450 = getelementptr inbounds %struct.Track, %struct.Track* %449, i32 0, i32 1
  %451 = load float, float* %450, align 4
  %452 = fsub float %448, %451
  store float %452, float* %38, align 4
  %453 = load float, float* %38, align 4
  %454 = load float, float* %20, align 4
  %455 = fdiv float %453, %454
  store float %455, float* %39, align 4
  %456 = load float, float* %39, align 4
  %457 = load float, float* %32, align 4
  %458 = fcmp olt float %456, %457
  br i1 %458, label %459, label %475

459:                                              ; preds = %447
  %460 = load i8, i8* %17, align 1
  %461 = trunc i8 %460 to i1
  br i1 %461, label %462, label %465

462:                                              ; preds = %459
  %463 = load i32, i32* %30, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %30, align 4
  br label %468

465:                                              ; preds = %459
  %466 = load i32, i32* %30, align 4
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %30, align 4
  br label %468

468:                                              ; preds = %465, %462
  %469 = load float, float* %39, align 4
  store float %469, float* %35, align 4
  %470 = load %struct.Track*, %struct.Track** %29, align 8
  %471 = getelementptr inbounds %struct.Track, %struct.Track* %470, i32 0, i32 1
  %472 = load float, float* %471, align 4
  %473 = load float, float* %38, align 4
  %474 = fadd float %472, %473
  store float %474, float* %36, align 4
  br label %484

475:                                              ; preds = %447
  %476 = load float, float* %32, align 4
  store float %476, float* %35, align 4
  %477 = load %struct.Track*, %struct.Track** %29, align 8
  %478 = getelementptr inbounds %struct.Track, %struct.Track* %477, i32 0, i32 1
  %479 = load float, float* %478, align 4
  %480 = load float, float* %32, align 4
  %481 = load float, float* %20, align 4
  %482 = fmul float %480, %481
  %483 = fadd float %479, %482
  store float %483, float* %36, align 4
  br label %484

484:                                              ; preds = %475, %468
  %485 = load float, float* %35, align 4
  %486 = load float, float* %32, align 4
  %487 = fsub float %486, %485
  store float %487, float* %32, align 4
  %488 = load float, float* %32, align 4
  %489 = fcmp ole float %488, 0.000000e+00
  br i1 %489, label %497, label %490

490:                                              ; preds = %484
  %491 = load i32, i32* %30, align 4
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %497, label %493

493:                                              ; preds = %490
  %494 = load i32, i32* %30, align 4
  %495 = load i32, i32* %6, align 4
  %496 = icmp sge i32 %494, %495
  br i1 %496, label %497, label %498

497:                                              ; preds = %493, %490, %484
  store i8 1, i8* %33, align 1
  br label %498

498:                                              ; preds = %497, %493
  %499 = call i32 @glibc_compat_rand()
  %500 = sext i32 %499 to i64
  %501 = load %struct.Input*, %struct.Input** %4, align 8
  %502 = getelementptr inbounds %struct.Input, %struct.Input* %501, i32 0, i32 24
  %503 = load i64, i64* %502, align 8
  %504 = srem i64 %500, %503
  store i64 %504, i64* %34, align 8
  %505 = load %struct.Input*, %struct.Input** %4, align 8
  %506 = getelementptr inbounds %struct.Input, %struct.Input* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = icmp eq i32 %507, 2
  br i1 %508, label %509, label %529

509:                                              ; preds = %498
  %510 = load %struct.Track*, %struct.Track** %29, align 8
  %511 = load %struct.Params*, %struct.Params** %3, align 8
  %512 = getelementptr inbounds %struct.Params, %struct.Params* %511, i32 0, i32 2
  %513 = load %struct.Source*, %struct.Source** %512, align 8
  %514 = load i64, i64* %34, align 8
  %515 = getelementptr inbounds %struct.Source, %struct.Source* %513, i64 %514
  %516 = load %struct.Input*, %struct.Input** %4, align 8
  %517 = load %struct.Params*, %struct.Params** %3, align 8
  %518 = load float, float* %35, align 4
  %519 = load float, float* %20, align 4
  %520 = load %struct.Params*, %struct.Params** %3, align 8
  %521 = getelementptr inbounds %struct.Params, %struct.Params* %520, i32 0, i32 0
  %522 = load %struct.Track2D*, %struct.Track2D** %521, align 8
  %523 = load i64, i64* %11, align 8
  %524 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %522, i64 %523
  %525 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %524, i32 0, i32 0
  %526 = load float, float* %525, align 8
  call void @attenuate_fluxes(%struct.Track* %510, i1 zeroext true, %struct.Source* %515, %struct.Input* %516, %struct.Params* %517, float %518, float %519, float %526, %struct.AttenuateVars* %9)
  %527 = load i64, i64* %8, align 8
  %528 = add nsw i64 %527, 1
  store i64 %528, i64* %8, align 8
  br label %556

529:                                              ; preds = %498
  %530 = load %struct.Input*, %struct.Input** %4, align 8
  %531 = getelementptr inbounds %struct.Input, %struct.Input* %530, i32 0, i32 4
  %532 = load i32, i32* %531, align 8
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %552

534:                                              ; preds = %529
  %535 = load %struct.Track*, %struct.Track** %29, align 8
  %536 = load %struct.Params*, %struct.Params** %3, align 8
  %537 = getelementptr inbounds %struct.Params, %struct.Params* %536, i32 0, i32 2
  %538 = load %struct.Source*, %struct.Source** %537, align 8
  %539 = load i64, i64* %34, align 8
  %540 = getelementptr inbounds %struct.Source, %struct.Source* %538, i64 %539
  %541 = load %struct.Input*, %struct.Input** %4, align 8
  %542 = load %struct.Params*, %struct.Params** %3, align 8
  %543 = load float, float* %35, align 4
  %544 = load float, float* %20, align 4
  %545 = load %struct.Params*, %struct.Params** %3, align 8
  %546 = getelementptr inbounds %struct.Params, %struct.Params* %545, i32 0, i32 0
  %547 = load %struct.Track2D*, %struct.Track2D** %546, align 8
  %548 = load i64, i64* %11, align 8
  %549 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %547, i64 %548
  %550 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %549, i32 0, i32 0
  %551 = load float, float* %550, align 8
  call void @attenuate_FSR_fluxes(%struct.Track* %535, i1 zeroext true, %struct.Source* %540, %struct.Input* %541, %struct.Params* %542, float %543, float %544, float %551, %struct.AttenuateVars* %9)
  br label %555

552:                                              ; preds = %529
  %553 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1.66, i64 0, i64 0))
  %554 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2.67, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

555:                                              ; preds = %534
  br label %556

556:                                              ; preds = %555, %509
  %557 = load float, float* %36, align 4
  %558 = load %struct.Track*, %struct.Track** %29, align 8
  %559 = getelementptr inbounds %struct.Track, %struct.Track* %558, i32 0, i32 1
  store float %557, float* %559, align 4
  %560 = load float, float* %35, align 4
  %561 = fpext float %560 to double
  %562 = load double**, double*** %12, align 8
  %563 = load i32, i32* %28, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds double*, double** %562, i64 %564
  %566 = load double*, double** %565, align 8
  %567 = load i32*, i32** %14, align 8
  %568 = load i32, i32* %28, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds double, double* %566, i64 %572
  store double %561, double* %573, align 8
  %574 = load %struct.Params*, %struct.Params** %3, align 8
  %575 = getelementptr inbounds %struct.Params, %struct.Params* %574, i32 0, i32 2
  %576 = load %struct.Source*, %struct.Source** %575, align 8
  %577 = load i64, i64* %34, align 8
  %578 = getelementptr inbounds %struct.Source, %struct.Source* %576, i64 %577
  %579 = load %struct.Source***, %struct.Source**** %13, align 8
  %580 = load i32, i32* %28, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.Source**, %struct.Source*** %579, i64 %581
  %583 = load %struct.Source**, %struct.Source*** %582, align 8
  %584 = load i32*, i32** %14, align 8
  %585 = load i32, i32* %28, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.Source*, %struct.Source** %583, i64 %589
  store %struct.Source* %578, %struct.Source** %590, align 8
  %591 = load i32*, i32** %14, align 8
  %592 = load i32, i32* %28, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32* %591, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %594, align 4
  %597 = load i32*, i32** %14, align 8
  %598 = load i32, i32* %28, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds i32, i32* %597, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = load i32*, i32** %15, align 8
  %603 = load i32, i32* %28, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32, i32* %602, i64 %604
  %606 = load i32, i32* %605, align 4
  %607 = icmp sge i32 %601, %606
  br i1 %607, label %608, label %653

608:                                              ; preds = %556
  %609 = load i32*, i32** %15, align 8
  %610 = load i32, i32* %28, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i32, i32* %609, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = mul nsw i32 %613, 2
  store i32 %614, i32* %612, align 4
  %615 = load double**, double*** %12, align 8
  %616 = load i32, i32* %28, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds double*, double** %615, i64 %617
  %619 = load double*, double** %618, align 8
  %620 = bitcast double* %619 to i8*
  %621 = load i32*, i32** %15, align 8
  %622 = load i32, i32* %28, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = mul i64 %626, 8
  %628 = call i8* @realloc(i8* %620, i64 %627) #6
  %629 = bitcast i8* %628 to double*
  %630 = load double**, double*** %12, align 8
  %631 = load i32, i32* %28, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds double*, double** %630, i64 %632
  store double* %629, double** %633, align 8
  %634 = load %struct.Source***, %struct.Source**** %13, align 8
  %635 = load i32, i32* %28, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.Source**, %struct.Source*** %634, i64 %636
  %638 = load %struct.Source**, %struct.Source*** %637, align 8
  %639 = bitcast %struct.Source** %638 to i8*
  %640 = load i32*, i32** %15, align 8
  %641 = load i32, i32* %28, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, i32* %640, i64 %642
  %644 = load i32, i32* %643, align 4
  %645 = sext i32 %644 to i64
  %646 = mul i64 %645, 8
  %647 = call i8* @realloc(i8* %639, i64 %646) #6
  %648 = bitcast i8* %647 to %struct.Source**
  %649 = load %struct.Source***, %struct.Source**** %13, align 8
  %650 = load i32, i32* %28, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds %struct.Source**, %struct.Source*** %649, i64 %651
  store %struct.Source** %648, %struct.Source*** %652, align 8
  br label %653

653:                                              ; preds = %608, %556
  br label %421

654:                                              ; preds = %421
  br label %655

655:                                              ; preds = %654
  %656 = load i32, i32* %28, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %28, align 4
  br label %364

658:                                              ; preds = %364
  %659 = load i8, i8* %17, align 1
  %660 = trunc i8 %659 to i1
  br i1 %660, label %661, label %665

661:                                              ; preds = %658
  %662 = load i32, i32* %27, align 4
  %663 = load i32, i32* %22, align 4
  %664 = sub nsw i32 %663, %662
  store i32 %664, i32* %22, align 4
  br label %669

665:                                              ; preds = %658
  %666 = load i32, i32* %27, align 4
  %667 = load i32, i32* %21, align 4
  %668 = add nsw i32 %667, %666
  store i32 %668, i32* %21, align 4
  br label %669

669:                                              ; preds = %665, %661
  br label %670

670:                                              ; preds = %669
  %671 = load i32, i32* %24, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %24, align 4
  br label %333

673:                                              ; preds = %333
  store i32 0, i32* %40, align 4
  br label %674

674:                                              ; preds = %784, %673
  %675 = load i32, i32* %40, align 4
  %676 = load %struct.Input*, %struct.Input** %4, align 8
  %677 = getelementptr inbounds %struct.Input, %struct.Input* %676, i32 0, i32 19
  %678 = load i32, i32* %677, align 8
  %679 = icmp slt i32 %675, %678
  br i1 %679, label %680, label %787

680:                                              ; preds = %674
  %681 = load i32*, i32** %14, align 8
  %682 = load i32, i32* %40, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32, i32* %681, i64 %683
  %685 = load i32, i32* %684, align 4
  %686 = sub nsw i32 %685, 1
  store i32 %686, i32* %41, align 4
  br label %687

687:                                              ; preds = %780, %680
  %688 = load i32, i32* %41, align 4
  %689 = icmp sge i32 %688, 0
  br i1 %689, label %690, label %783

690:                                              ; preds = %687
  %691 = load double**, double*** %12, align 8
  %692 = load i32, i32* %40, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds double*, double** %691, i64 %693
  %695 = load double*, double** %694, align 8
  %696 = load i32, i32* %41, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds double, double* %695, i64 %697
  %699 = load double, double* %698, align 8
  %700 = fptrunc double %699 to float
  store float %700, float* %42, align 4
  %701 = load %struct.Params*, %struct.Params** %3, align 8
  %702 = getelementptr inbounds %struct.Params, %struct.Params* %701, i32 0, i32 1
  %703 = load %struct.Track***, %struct.Track**** %702, align 8
  %704 = load i64, i64* %11, align 8
  %705 = getelementptr inbounds %struct.Track**, %struct.Track*** %703, i64 %704
  %706 = load %struct.Track**, %struct.Track*** %705, align 8
  %707 = load i32, i32* %18, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds %struct.Track*, %struct.Track** %706, i64 %708
  %710 = load %struct.Track*, %struct.Track** %709, align 8
  %711 = load i32, i32* %40, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds %struct.Track, %struct.Track* %710, i64 %712
  store %struct.Track* %713, %struct.Track** %43, align 8
  %714 = load %struct.Input*, %struct.Input** %4, align 8
  %715 = getelementptr inbounds %struct.Input, %struct.Input* %714, i32 0, i32 4
  %716 = load i32, i32* %715, align 8
  %717 = icmp eq i32 %716, 2
  br i1 %717, label %718, label %743

718:                                              ; preds = %690
  %719 = load %struct.Track*, %struct.Track** %43, align 8
  %720 = load %struct.Source***, %struct.Source**** %13, align 8
  %721 = load i32, i32* %40, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.Source**, %struct.Source*** %720, i64 %722
  %724 = load %struct.Source**, %struct.Source*** %723, align 8
  %725 = load i32, i32* %41, align 4
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds %struct.Source*, %struct.Source** %724, i64 %726
  %728 = load %struct.Source*, %struct.Source** %727, align 8
  %729 = load %struct.Input*, %struct.Input** %4, align 8
  %730 = load %struct.Params*, %struct.Params** %3, align 8
  %731 = load float, float* %42, align 4
  %732 = load float, float* %20, align 4
  %733 = fneg float %732
  %734 = load %struct.Params*, %struct.Params** %3, align 8
  %735 = getelementptr inbounds %struct.Params, %struct.Params* %734, i32 0, i32 0
  %736 = load %struct.Track2D*, %struct.Track2D** %735, align 8
  %737 = load i64, i64* %11, align 8
  %738 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %736, i64 %737
  %739 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %738, i32 0, i32 0
  %740 = load float, float* %739, align 8
  call void @attenuate_fluxes(%struct.Track* %719, i1 zeroext false, %struct.Source* %728, %struct.Input* %729, %struct.Params* %730, float %731, float %733, float %740, %struct.AttenuateVars* %9)
  %741 = load i64, i64* %8, align 8
  %742 = add nsw i64 %741, 1
  store i64 %742, i64* %8, align 8
  br label %772

743:                                              ; preds = %690
  %744 = load %struct.Input*, %struct.Input** %4, align 8
  %745 = getelementptr inbounds %struct.Input, %struct.Input* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 8
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %748, label %771

748:                                              ; preds = %743
  %749 = load %struct.Track*, %struct.Track** %43, align 8
  %750 = load %struct.Source***, %struct.Source**** %13, align 8
  %751 = load i32, i32* %40, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.Source**, %struct.Source*** %750, i64 %752
  %754 = load %struct.Source**, %struct.Source*** %753, align 8
  %755 = load i32, i32* %41, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds %struct.Source*, %struct.Source** %754, i64 %756
  %758 = load %struct.Source*, %struct.Source** %757, align 8
  %759 = load %struct.Input*, %struct.Input** %4, align 8
  %760 = load %struct.Params*, %struct.Params** %3, align 8
  %761 = load float, float* %42, align 4
  %762 = load float, float* %20, align 4
  %763 = fneg float %762
  %764 = load %struct.Params*, %struct.Params** %3, align 8
  %765 = getelementptr inbounds %struct.Params, %struct.Params* %764, i32 0, i32 0
  %766 = load %struct.Track2D*, %struct.Track2D** %765, align 8
  %767 = load i64, i64* %11, align 8
  %768 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %766, i64 %767
  %769 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %768, i32 0, i32 0
  %770 = load float, float* %769, align 8
  call void @attenuate_FSR_fluxes(%struct.Track* %749, i1 zeroext false, %struct.Source* %758, %struct.Input* %759, %struct.Params* %760, float %761, float %763, float %770, %struct.AttenuateVars* %9)
  br label %771

771:                                              ; preds = %748, %743
  br label %772

772:                                              ; preds = %771, %718
  %773 = load float, float* %42, align 4
  %774 = load float, float* %20, align 4
  %775 = fmul float %773, %774
  %776 = load %struct.Track*, %struct.Track** %43, align 8
  %777 = getelementptr inbounds %struct.Track, %struct.Track* %776, i32 0, i32 1
  %778 = load float, float* %777, align 4
  %779 = fsub float %778, %775
  store float %779, float* %777, align 4
  br label %780

780:                                              ; preds = %772
  %781 = load i32, i32* %41, align 4
  %782 = add nsw i32 %781, -1
  store i32 %782, i32* %41, align 4
  br label %687

783:                                              ; preds = %687
  br label %784

784:                                              ; preds = %783
  %785 = load i32, i32* %40, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %40, align 4
  br label %674

787:                                              ; preds = %674
  store i32 0, i32* %44, align 4
  br label %788

788:                                              ; preds = %830, %787
  %789 = load i32, i32* %44, align 4
  %790 = load %struct.Input*, %struct.Input** %4, align 8
  %791 = getelementptr inbounds %struct.Input, %struct.Input* %790, i32 0, i32 19
  %792 = load i32, i32* %791, align 8
  %793 = icmp slt i32 %789, %792
  br i1 %793, label %794, label %833

794:                                              ; preds = %788
  %795 = load %struct.Params*, %struct.Params** %3, align 8
  %796 = getelementptr inbounds %struct.Params, %struct.Params* %795, i32 0, i32 1
  %797 = load %struct.Track***, %struct.Track**** %796, align 8
  %798 = load i64, i64* %11, align 8
  %799 = getelementptr inbounds %struct.Track**, %struct.Track*** %797, i64 %798
  %800 = load %struct.Track**, %struct.Track*** %799, align 8
  %801 = load i32, i32* %18, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds %struct.Track*, %struct.Track** %800, i64 %802
  %804 = load %struct.Track*, %struct.Track** %803, align 8
  %805 = load i32, i32* %44, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds %struct.Track, %struct.Track* %804, i64 %806
  store %struct.Track* %807, %struct.Track** %45, align 8
  %808 = load i8, i8* %17, align 1
  %809 = trunc i8 %808 to i1
  br i1 %809, label %810, label %819

810:                                              ; preds = %794
  %811 = load %struct.Input*, %struct.Input** %4, align 8
  %812 = getelementptr inbounds %struct.Input, %struct.Input* %811, i32 0, i32 6
  %813 = load float, float* %812, align 8
  %814 = load i32, i32* %44, align 4
  %815 = sitofp i32 %814 to float
  %816 = fmul float %813, %815
  %817 = load %struct.Track*, %struct.Track** %45, align 8
  %818 = getelementptr inbounds %struct.Track, %struct.Track* %817, i32 0, i32 1
  store float %816, float* %818, align 4
  br label %829

819:                                              ; preds = %794
  %820 = load %struct.Input*, %struct.Input** %4, align 8
  %821 = getelementptr inbounds %struct.Input, %struct.Input* %820, i32 0, i32 6
  %822 = load float, float* %821, align 8
  %823 = load i32, i32* %44, align 4
  %824 = add nsw i32 %823, 1
  %825 = sitofp i32 %824 to float
  %826 = fmul float %822, %825
  %827 = load %struct.Track*, %struct.Track** %45, align 8
  %828 = getelementptr inbounds %struct.Track, %struct.Track* %827, i32 0, i32 1
  store float %826, float* %828, align 4
  br label %829

829:                                              ; preds = %819, %810
  br label %830

830:                                              ; preds = %829
  %831 = load i32, i32* %44, align 4
  %832 = add nsw i32 %831, 1
  store i32 %832, i32* %44, align 4
  br label %788

833:                                              ; preds = %788
  br label %834

834:                                              ; preds = %833
  %835 = load i32, i32* %18, align 4
  %836 = add nsw i32 %835, 1
  store i32 %836, i32* %18, align 4
  br label %289

837:                                              ; preds = %289
  store i32 0, i32* %46, align 4
  br label %838

838:                                              ; preds = %857, %837
  %839 = load i32, i32* %46, align 4
  %840 = load %struct.Input*, %struct.Input** %4, align 8
  %841 = getelementptr inbounds %struct.Input, %struct.Input* %840, i32 0, i32 19
  %842 = load i32, i32* %841, align 8
  %843 = icmp slt i32 %839, %842
  br i1 %843, label %844, label %860

844:                                              ; preds = %838
  %845 = load double**, double*** %12, align 8
  %846 = load i32, i32* %46, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds double*, double** %845, i64 %847
  %849 = load double*, double** %848, align 8
  %850 = bitcast double* %849 to i8*
  call void @free(i8* %850) #6
  %851 = load %struct.Source***, %struct.Source**** %13, align 8
  %852 = load i32, i32* %46, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds %struct.Source**, %struct.Source*** %851, i64 %853
  %855 = load %struct.Source**, %struct.Source*** %854, align 8
  %856 = bitcast %struct.Source** %855 to i8*
  call void @free(i8* %856) #6
  br label %857

857:                                              ; preds = %844
  %858 = load i32, i32* %46, align 4
  %859 = add nsw i32 %858, 1
  store i32 %859, i32* %46, align 4
  br label %838

860:                                              ; preds = %838
  %861 = load double**, double*** %12, align 8
  %862 = bitcast double** %861 to i8*
  call void @free(i8* %862) #6
  %863 = load %struct.Source***, %struct.Source**** %13, align 8
  %864 = bitcast %struct.Source*** %863 to i8*
  call void @free(i8* %864) #6
  %865 = load i32*, i32** %14, align 8
  %866 = bitcast i32* %865 to i8*
  call void @free(i8* %866) #6
  %867 = load i32*, i32** %15, align 8
  %868 = bitcast i32* %867 to i8*
  call void @free(i8* %868) #6
  br label %869

869:                                              ; preds = %860
  %870 = load i64, i64* %11, align 8
  %871 = add nsw i64 %870, 1
  store i64 %871, i64* %11, align 8
  br label %188

872:                                              ; preds = %188
  %873 = load i64, i64* %8, align 8
  %874 = load %struct.Input*, %struct.Input** %4, align 8
  %875 = getelementptr inbounds %struct.Input, %struct.Input* %874, i32 0, i32 27
  store i64 %873, i64* %875, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @calc_next_fai(float %0, float %1, i1 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  %11 = load float, float* %5, align 4
  %12 = load float, float* %6, align 4
  %13 = fdiv float %11, %12
  %14 = fptosi float %13 to i32
  store i32 %14, i32* %8, align 4
  %15 = load float, float* %6, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sitofp i32 %16 to float
  %18 = fmul float %15, %17
  store float %18, float* %9, align 4
  %19 = load i8, i8* %7, align 1
  %20 = trunc i8 %19 to i1
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @alt_attenuate_fluxes(%struct.Track* %0, i1 zeroext %1, %struct.Source* %2, %struct.Input* %3, %struct.Params* %4, float %5, float %6, float %7) #0 {
  %9 = alloca %struct.Track*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.Source*, align 8
  %12 = alloca %struct.Input*, align 8
  %13 = alloca %struct.Params*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float*, align 8
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca float, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  %34 = alloca float, align 4
  %35 = alloca float, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca float, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float*, align 8
  %46 = alloca float, align 4
  store %struct.Track* %0, %struct.Track** %9, align 8
  %47 = zext i1 %1 to i8
  store i8 %47, i8* %10, align 1
  store %struct.Source* %2, %struct.Source** %11, align 8
  store %struct.Input* %3, %struct.Input** %12, align 8
  store %struct.Params* %4, %struct.Params** %13, align 8
  store float %5, float* %14, align 4
  store float %6, float* %15, align 4
  store float %7, float* %16, align 4
  %48 = load %struct.Input*, %struct.Input** %12, align 8
  %49 = getelementptr inbounds %struct.Input, %struct.Input* %48, i32 0, i32 14
  %50 = load float, float* %49, align 4
  %51 = load %struct.Input*, %struct.Input** %12, align 8
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.Input*, %struct.Input** %12, align 8
  %55 = getelementptr inbounds %struct.Input, %struct.Input* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = load %struct.Input*, %struct.Input** %12, align 8
  %59 = getelementptr inbounds %struct.Input, %struct.Input* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = sitofp i32 %61 to float
  %63 = fdiv float %50, %62
  store float %63, float* %17, align 4
  %64 = load %struct.Track*, %struct.Track** %9, align 8
  %65 = getelementptr inbounds %struct.Track, %struct.Track* %64, i32 0, i32 1
  %66 = load float, float* %65, align 4
  %67 = fpext float %66 to double
  %68 = load float, float* %17, align 4
  %69 = fpext float %68 to double
  %70 = load %struct.Track*, %struct.Track** %9, align 8
  %71 = getelementptr inbounds %struct.Track, %struct.Track* %70, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = load float, float* %17, align 4
  %74 = fdiv float %72, %73
  %75 = fptosi float %74 to i32
  %76 = sitofp i32 %75 to double
  %77 = fadd double %76, 5.000000e-01
  %78 = fmul double %69, %77
  %79 = fsub double %67, %78
  %80 = fptrunc double %79 to float
  store float %80, float* %18, align 4
  %81 = load %struct.Track*, %struct.Track** %9, align 8
  %82 = getelementptr inbounds %struct.Track, %struct.Track* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = load float, float* %17, align 4
  %85 = fdiv float %83, %84
  %86 = fptosi float %85 to i32
  %87 = load %struct.Input*, %struct.Input** %12, align 8
  %88 = getelementptr inbounds %struct.Input, %struct.Input* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = srem i32 %86, %89
  store i32 %90, i32* %19, align 4
  %91 = load %struct.Track*, %struct.Track** %9, align 8
  %92 = getelementptr inbounds %struct.Track, %struct.Track* %91, i32 0, i32 0
  %93 = load float, float* %92, align 8
  %94 = load float, float* %16, align 4
  %95 = fmul float %93, %94
  store float %95, float* %20, align 4
  %96 = load float, float* %15, align 4
  %97 = load float, float* %15, align 4
  %98 = fmul float %96, %97
  store float %98, float* %21, align 4
  %99 = load %struct.Source*, %struct.Source** %11, align 8
  %100 = getelementptr inbounds %struct.Source, %struct.Source* %99, i32 0, i32 0
  %101 = load float**, float*** %100, align 8
  %102 = load i32, i32* %19, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float*, float** %101, i64 %103
  %105 = load float*, float** %104, align 8
  store float* %105, float** %22, align 8
  store i32 0, i32* %23, align 4
  br label %106

106:                                              ; preds = %408, %8
  %107 = load i32, i32* %23, align 4
  %108 = load %struct.Input*, %struct.Input** %12, align 8
  %109 = getelementptr inbounds %struct.Input, %struct.Input* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %411

112:                                              ; preds = %106
  %113 = load %struct.Source*, %struct.Source** %11, align 8
  %114 = getelementptr inbounds %struct.Source, %struct.Source* %113, i32 0, i32 3
  %115 = load float*, float** %114, align 8
  %116 = load i32, i32* %23, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, float* %115, i64 %117
  %119 = load float, float* %118, align 4
  store float %119, float* %24, align 4
  %120 = load i32, i32* %19, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %158

122:                                              ; preds = %112
  %123 = load %struct.Source*, %struct.Source** %11, align 8
  %124 = getelementptr inbounds %struct.Source, %struct.Source* %123, i32 0, i32 1
  %125 = load float**, float*** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float*, float** %125, i64 %127
  %129 = load float*, float** %128, align 8
  %130 = load i32, i32* %23, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds float, float* %129, i64 %131
  %133 = load float, float* %132, align 4
  store float %133, float* %28, align 4
  %134 = load %struct.Source*, %struct.Source** %11, align 8
  %135 = getelementptr inbounds %struct.Source, %struct.Source* %134, i32 0, i32 1
  %136 = load float**, float*** %135, align 8
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds float*, float** %136, i64 %139
  %141 = load float*, float** %140, align 8
  %142 = load i32, i32* %23, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, float* %141, i64 %143
  %145 = load float, float* %144, align 4
  store float %145, float* %29, align 4
  %146 = load float, float* %28, align 4
  store float %146, float* %30, align 4
  %147 = load float, float* %29, align 4
  %148 = load float, float* %28, align 4
  %149 = fsub float %147, %148
  %150 = load float, float* %17, align 4
  %151 = fdiv float %149, %150
  store float %151, float* %31, align 4
  %152 = load float, float* %30, align 4
  %153 = load float, float* %31, align 4
  %154 = load float, float* %18, align 4
  %155 = fmul float %153, %154
  %156 = fadd float %152, %155
  store float %156, float* %25, align 4
  %157 = load float, float* %31, align 4
  store float %157, float* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  br label %274

158:                                              ; preds = %112
  %159 = load i32, i32* %19, align 4
  %160 = load %struct.Input*, %struct.Input** %12, align 8
  %161 = getelementptr inbounds %struct.Input, %struct.Input* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = sub nsw i32 %162, 1
  %164 = icmp eq i32 %159, %163
  br i1 %164, label %165, label %201

165:                                              ; preds = %158
  %166 = load %struct.Source*, %struct.Source** %11, align 8
  %167 = getelementptr inbounds %struct.Source, %struct.Source* %166, i32 0, i32 1
  %168 = load float**, float*** %167, align 8
  %169 = load i32, i32* %19, align 4
  %170 = sub nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds float*, float** %168, i64 %171
  %173 = load float*, float** %172, align 8
  %174 = load i32, i32* %23, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %173, i64 %175
  %177 = load float, float* %176, align 4
  store float %177, float* %32, align 4
  %178 = load %struct.Source*, %struct.Source** %11, align 8
  %179 = getelementptr inbounds %struct.Source, %struct.Source* %178, i32 0, i32 1
  %180 = load float**, float*** %179, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float*, float** %180, i64 %182
  %184 = load float*, float** %183, align 8
  %185 = load i32, i32* %23, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float, float* %184, i64 %186
  %188 = load float, float* %187, align 4
  store float %188, float* %33, align 4
  %189 = load float, float* %33, align 4
  store float %189, float* %34, align 4
  %190 = load float, float* %33, align 4
  %191 = load float, float* %32, align 4
  %192 = fsub float %190, %191
  %193 = load float, float* %17, align 4
  %194 = fdiv float %192, %193
  store float %194, float* %35, align 4
  %195 = load float, float* %34, align 4
  %196 = load float, float* %35, align 4
  %197 = load float, float* %18, align 4
  %198 = fmul float %196, %197
  %199 = fadd float %195, %198
  store float %199, float* %25, align 4
  %200 = load float, float* %35, align 4
  store float %200, float* %26, align 4
  store float 0.000000e+00, float* %27, align 4
  br label %273

201:                                              ; preds = %158
  %202 = load %struct.Source*, %struct.Source** %11, align 8
  %203 = getelementptr inbounds %struct.Source, %struct.Source* %202, i32 0, i32 1
  %204 = load float**, float*** %203, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float*, float** %204, i64 %207
  %209 = load float*, float** %208, align 8
  %210 = load i32, i32* %23, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, float* %209, i64 %211
  %213 = load float, float* %212, align 4
  store float %213, float* %36, align 4
  %214 = load %struct.Source*, %struct.Source** %11, align 8
  %215 = getelementptr inbounds %struct.Source, %struct.Source* %214, i32 0, i32 1
  %216 = load float**, float*** %215, align 8
  %217 = load i32, i32* %19, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds float*, float** %216, i64 %218
  %220 = load float*, float** %219, align 8
  %221 = load i32, i32* %23, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %220, i64 %222
  %224 = load float, float* %223, align 4
  store float %224, float* %37, align 4
  %225 = load %struct.Source*, %struct.Source** %11, align 8
  %226 = getelementptr inbounds %struct.Source, %struct.Source* %225, i32 0, i32 1
  %227 = load float**, float*** %226, align 8
  %228 = load i32, i32* %19, align 4
  %229 = add nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds float*, float** %227, i64 %230
  %232 = load float*, float** %231, align 8
  %233 = load i32, i32* %23, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load float, float* %235, align 4
  store float %236, float* %38, align 4
  %237 = load float, float* %37, align 4
  store float %237, float* %39, align 4
  %238 = load float, float* %36, align 4
  %239 = load float, float* %38, align 4
  %240 = fsub float %238, %239
  %241 = load float, float* %17, align 4
  %242 = fmul float 2.000000e+00, %241
  %243 = fdiv float %240, %242
  store float %243, float* %40, align 4
  %244 = load float, float* %36, align 4
  %245 = load float, float* %37, align 4
  %246 = fmul float 2.000000e+00, %245
  %247 = fsub float %244, %246
  %248 = load float, float* %38, align 4
  %249 = fadd float %247, %248
  %250 = load float, float* %17, align 4
  %251 = fmul float 2.000000e+00, %250
  %252 = load float, float* %17, align 4
  %253 = fmul float %251, %252
  %254 = fdiv float %249, %253
  store float %254, float* %41, align 4
  %255 = load float, float* %39, align 4
  %256 = load float, float* %40, align 4
  %257 = load float, float* %18, align 4
  %258 = fmul float %256, %257
  %259 = fadd float %255, %258
  %260 = load float, float* %41, align 4
  %261 = load float, float* %18, align 4
  %262 = fmul float %260, %261
  %263 = load float, float* %18, align 4
  %264 = fmul float %262, %263
  %265 = fadd float %259, %264
  store float %265, float* %25, align 4
  %266 = load float, float* %40, align 4
  %267 = load float, float* %41, align 4
  %268 = fmul float 2.000000e+00, %267
  %269 = load float, float* %18, align 4
  %270 = fmul float %268, %269
  %271 = fadd float %266, %270
  store float %271, float* %26, align 4
  %272 = load float, float* %41, align 4
  store float %272, float* %27, align 4
  br label %273

273:                                              ; preds = %201, %165
  br label %274

274:                                              ; preds = %273, %122
  %275 = load float, float* %24, align 4
  %276 = load float, float* %14, align 4
  %277 = fmul float %275, %276
  store float %277, float* %42, align 4
  %278 = load float, float* %24, align 4
  %279 = load float, float* %24, align 4
  %280 = fmul float %278, %279
  store float %280, float* %43, align 4
  %281 = load %struct.Params*, %struct.Params** %13, align 8
  %282 = getelementptr inbounds %struct.Params, %struct.Params* %281, i32 0, i32 5
  %283 = load float, float* %42, align 4
  %284 = call float @interpolateTable(%struct.Table* byval(%struct.Table) align 8 %282, float %283)
  store float %284, float* %44, align 4
  %285 = load i8, i8* %10, align 1
  %286 = trunc i8 %285 to i1
  br i1 %286, label %287, label %291

287:                                              ; preds = %274
  %288 = load %struct.Track*, %struct.Track** %9, align 8
  %289 = getelementptr inbounds %struct.Track, %struct.Track* %288, i32 0, i32 4
  %290 = load float*, float** %289, align 8
  store float* %290, float** %45, align 8
  br label %295

291:                                              ; preds = %274
  %292 = load %struct.Track*, %struct.Track** %9, align 8
  %293 = getelementptr inbounds %struct.Track, %struct.Track* %292, i32 0, i32 5
  %294 = load float*, float** %293, align 8
  store float* %294, float** %45, align 8
  br label %295

295:                                              ; preds = %291, %287
  %296 = load float, float* %25, align 4
  %297 = load float, float* %42, align 4
  %298 = fmul float %296, %297
  %299 = load float, float* %24, align 4
  %300 = load float*, float** %45, align 8
  %301 = load i32, i32* %23, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds float, float* %300, i64 %302
  %304 = load float, float* %303, align 4
  %305 = fmul float %299, %304
  %306 = load float, float* %25, align 4
  %307 = fsub float %305, %306
  %308 = load float, float* %44, align 4
  %309 = fmul float %307, %308
  %310 = fadd float %298, %309
  %311 = load float, float* %43, align 4
  %312 = fdiv float %310, %311
  %313 = load float, float* %26, align 4
  %314 = load float, float* %15, align 4
  %315 = fmul float %313, %314
  %316 = load float, float* %42, align 4
  %317 = load float, float* %42, align 4
  %318 = fsub float %317, 2.000000e+00
  %319 = fmul float %316, %318
  %320 = load float, float* %44, align 4
  %321 = fmul float 2.000000e+00, %320
  %322 = fadd float %319, %321
  %323 = fmul float %315, %322
  %324 = load float, float* %24, align 4
  %325 = load float, float* %43, align 4
  %326 = fmul float %324, %325
  %327 = fdiv float %323, %326
  %328 = fadd float %312, %327
  %329 = load float, float* %27, align 4
  %330 = load float, float* %21, align 4
  %331 = fmul float %329, %330
  %332 = load float, float* %42, align 4
  %333 = load float, float* %42, align 4
  %334 = load float, float* %42, align 4
  %335 = fsub float %334, 3.000000e+00
  %336 = fmul float %333, %335
  %337 = fadd float %336, 6.000000e+00
  %338 = fmul float %332, %337
  %339 = load float, float* %44, align 4
  %340 = fmul float 6.000000e+00, %339
  %341 = fsub float %338, %340
  %342 = fmul float %331, %341
  %343 = load float, float* %43, align 4
  %344 = fmul float 3.000000e+00, %343
  %345 = load float, float* %43, align 4
  %346 = fmul float %344, %345
  %347 = fdiv float %342, %346
  %348 = fadd float %328, %347
  store float %348, float* %46, align 4
  %349 = load float, float* %20, align 4
  %350 = load float, float* %46, align 4
  %351 = fmul float %349, %350
  %352 = load float*, float** %22, align 8
  %353 = load i32, i32* %23, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  %356 = load float, float* %355, align 4
  %357 = fadd float %356, %351
  store float %357, float* %355, align 4
  %358 = load float*, float** %45, align 8
  %359 = load i32, i32* %23, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds float, float* %358, i64 %360
  %362 = load float, float* %361, align 4
  %363 = fpext float %362 to double
  %364 = load float, float* %44, align 4
  %365 = fpext float %364 to double
  %366 = fsub double 1.000000e+00, %365
  %367 = fmul double %363, %366
  %368 = load float, float* %25, align 4
  %369 = load float, float* %44, align 4
  %370 = fmul float %368, %369
  %371 = load float, float* %24, align 4
  %372 = fdiv float %370, %371
  %373 = fpext float %372 to double
  %374 = fadd double %367, %373
  %375 = load float, float* %26, align 4
  %376 = load float, float* %15, align 4
  %377 = fmul float %375, %376
  %378 = load float, float* %42, align 4
  %379 = load float, float* %44, align 4
  %380 = fsub float %378, %379
  %381 = fmul float %377, %380
  %382 = load float, float* %43, align 4
  %383 = fdiv float %381, %382
  %384 = fpext float %383 to double
  %385 = fadd double %374, %384
  %386 = load float, float* %27, align 4
  %387 = load float, float* %21, align 4
  %388 = fmul float %386, %387
  %389 = load float, float* %42, align 4
  %390 = load float, float* %42, align 4
  %391 = fsub float %390, 2.000000e+00
  %392 = fmul float %389, %391
  %393 = load float, float* %44, align 4
  %394 = fmul float 2.000000e+00, %393
  %395 = fadd float %392, %394
  %396 = fmul float %388, %395
  %397 = load float, float* %43, align 4
  %398 = load float, float* %24, align 4
  %399 = fmul float %397, %398
  %400 = fdiv float %396, %399
  %401 = fpext float %400 to double
  %402 = fadd double %385, %401
  %403 = fptrunc double %402 to float
  %404 = load float*, float** %45, align 8
  %405 = load i32, i32* %23, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds float, float* %404, i64 %406
  store float %403, float* %407, align 4
  br label %408

408:                                              ; preds = %295
  %409 = load i32, i32* %23, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %23, align 4
  br label %106

411:                                              ; preds = %106
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @renormalize_flux(%struct.Params* byval(%struct.Params) align 8 %0, %struct.Input* byval(%struct.Input) align 8 %1, %struct.CommGrid* byval(%struct.CommGrid) align 8 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Source, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.Source*, align 8
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 17
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6.73, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %3
  store float 0.000000e+00, float* %4, align 4
  %29 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %30 = load i64, i64* %29, align 8
  %31 = mul i64 %30, 4
  %32 = call noalias i8* @malloc(i64 %31) #6
  %33 = bitcast i8* %32 to float*
  store float* %33, float** %5, align 8
  %34 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = call noalias i8* @malloc(i64 %37) #6
  %39 = bitcast i8* %38 to float*
  store float* %39, float** %6, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = call noalias i8* @malloc(i64 %43) #6
  %45 = bitcast i8* %44 to float*
  store float* %45, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %124, %28
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %52, label %127

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  %54 = load %struct.Source*, %struct.Source** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.Source, %struct.Source* %54, i64 %56
  %58 = bitcast %struct.Source* %9 to i8*
  %59 = bitcast %struct.Source* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 48, i1 false)
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %111, %52
  %61 = load i32, i32* %10, align 4
  %62 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %98, %65
  %67 = load i32, i32* %11, align 4
  %68 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.Source, %struct.Source* %9, i32 0, i32 0
  %73 = load float**, float*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds float*, float** %73, i64 %75
  %77 = load float*, float** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %77, i64 %79
  %81 = load float, float* %80, align 4
  %82 = getelementptr inbounds %struct.Source, %struct.Source* %9, i32 0, i32 2
  %83 = load float, float* %82, align 8
  %84 = fmul float %81, %83
  %85 = getelementptr inbounds %struct.Source, %struct.Source* %9, i32 0, i32 4
  %86 = load float**, float*** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float*, float** %86, i64 %88
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 0
  %92 = load float, float* %91, align 4
  %93 = fmul float %84, %92
  %94 = load float*, float** %7, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  store float %93, float* %97, align 4
  br label %98

98:                                               ; preds = %71
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %66

101:                                              ; preds = %66
  %102 = load float*, float** %7, align 8
  %103 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = call float @pairwise_sum(float* %102, i64 %105)
  %107 = load float*, float** %6, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %107, i64 %109
  store float %106, float* %110, align 4
  br label %111

111:                                              ; preds = %101
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %60

114:                                              ; preds = %60
  %115 = load float*, float** %6, align 8
  %116 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = call float @pairwise_sum(float* %115, i64 %118)
  %120 = load float*, float** %5, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  store float %119, float* %123, align 4
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %46

127:                                              ; preds = %46
  %128 = load float*, float** %5, align 8
  %129 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %130 = load i64, i64* %129, align 8
  %131 = call float @pairwise_sum(float* %128, i64 %130)
  store float %131, float* %4, align 4
  %132 = load float*, float** %5, align 8
  %133 = bitcast float* %132 to i8*
  call void @free(i8* %133) #6
  %134 = load float*, float** %6, align 8
  %135 = bitcast float* %134 to i8*
  call void @free(i8* %135) #6
  %136 = load float*, float** %7, align 8
  %137 = bitcast float* %136 to i8*
  call void @free(i8* %137) #6
  %138 = load float, float* %4, align 4
  store float %138, float* %12, align 4
  %139 = load float, float* %12, align 4
  %140 = fpext float %139 to double
  %141 = fdiv double 1.000000e+00, %140
  %142 = fptrunc double %141 to float
  store float %142, float* %13, align 4
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %202, %127
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %147 = load i64, i64* %146, align 8
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %205

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  %151 = load %struct.Source*, %struct.Source** %150, align 8
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.Source, %struct.Source* %151, i64 %153
  store %struct.Source* %154, %struct.Source** %15, align 8
  %155 = load float, float* %13, align 4
  %156 = fmul float %155, 4.000000e+00
  %157 = fpext float %156 to double
  %158 = fmul double %157, 0x400921FB54442D18
  %159 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to double
  %162 = fmul double %158, %161
  %163 = load %struct.Source*, %struct.Source** %15, align 8
  %164 = getelementptr inbounds %struct.Source, %struct.Source* %163, i32 0, i32 2
  %165 = load float, float* %164, align 8
  %166 = fpext float %165 to double
  %167 = fdiv double %162, %166
  %168 = fptrunc double %167 to float
  store float %168, float* %16, align 4
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %198, %149
  %170 = load i32, i32* %17, align 4
  %171 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %169
  store i32 0, i32* %18, align 4
  br label %175

175:                                              ; preds = %194, %174
  %176 = load i32, i32* %18, align 4
  %177 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %176, %178
  br i1 %179, label %180, label %197

180:                                              ; preds = %175
  %181 = load float, float* %16, align 4
  %182 = load %struct.Source*, %struct.Source** %15, align 8
  %183 = getelementptr inbounds %struct.Source, %struct.Source* %182, i32 0, i32 0
  %184 = load float**, float*** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds float, float* %188, i64 %190
  %192 = load float, float* %191, align 4
  %193 = fmul float %192, %181
  store float %193, float* %191, align 4
  br label %194

194:                                              ; preds = %180
  %195 = load i32, i32* %18, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %18, align 4
  br label %175

197:                                              ; preds = %175
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %17, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %17, align 4
  br label %169

201:                                              ; preds = %169
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %14, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %14, align 4
  br label %143

205:                                              ; preds = %143
  store i64 0, i64* %19, align 8
  br label %206

206:                                              ; preds = %282, %205
  %207 = load i64, i64* %19, align 8
  %208 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 18
  %209 = load i64, i64* %208, align 8
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %211, label %285

211:                                              ; preds = %206
  store i32 0, i32* %20, align 4
  br label %212

212:                                              ; preds = %278, %211
  %213 = load i32, i32* %20, align 4
  %214 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %213, %215
  br i1 %216, label %217, label %281

217:                                              ; preds = %212
  store i32 0, i32* %21, align 4
  br label %218

218:                                              ; preds = %274, %217
  %219 = load i32, i32* %21, align 4
  %220 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 19
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %277

223:                                              ; preds = %218
  store i32 0, i32* %22, align 4
  br label %224

224:                                              ; preds = %270, %223
  %225 = load i32, i32* %22, align 4
  %226 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = icmp slt i32 %225, %227
  br i1 %228, label %229, label %273

229:                                              ; preds = %224
  %230 = load float, float* %13, align 4
  %231 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 1
  %232 = load %struct.Track***, %struct.Track**** %231, align 8
  %233 = load i64, i64* %19, align 8
  %234 = getelementptr inbounds %struct.Track**, %struct.Track*** %232, i64 %233
  %235 = load %struct.Track**, %struct.Track*** %234, align 8
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.Track*, %struct.Track** %235, i64 %237
  %239 = load %struct.Track*, %struct.Track** %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.Track, %struct.Track* %239, i64 %241
  %243 = getelementptr inbounds %struct.Track, %struct.Track* %242, i32 0, i32 4
  %244 = load float*, float** %243, align 8
  %245 = load i32, i32* %22, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = fmul float %248, %230
  store float %249, float* %247, align 4
  %250 = load float, float* %13, align 4
  %251 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 1
  %252 = load %struct.Track***, %struct.Track**** %251, align 8
  %253 = load i64, i64* %19, align 8
  %254 = getelementptr inbounds %struct.Track**, %struct.Track*** %252, i64 %253
  %255 = load %struct.Track**, %struct.Track*** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.Track*, %struct.Track** %255, i64 %257
  %259 = load %struct.Track*, %struct.Track** %258, align 8
  %260 = load i32, i32* %21, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.Track, %struct.Track* %259, i64 %261
  %263 = getelementptr inbounds %struct.Track, %struct.Track* %262, i32 0, i32 5
  %264 = load float*, float** %263, align 8
  %265 = load i32, i32* %22, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds float, float* %264, i64 %266
  %268 = load float, float* %267, align 4
  %269 = fmul float %268, %250
  store float %269, float* %267, align 4
  br label %270

270:                                              ; preds = %229
  %271 = load i32, i32* %22, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %22, align 4
  br label %224

273:                                              ; preds = %224
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %21, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %21, align 4
  br label %218

277:                                              ; preds = %218
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %20, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %20, align 4
  br label %212

281:                                              ; preds = %212
  br label %282

282:                                              ; preds = %281
  %283 = load i64, i64* %19, align 8
  %284 = add nsw i64 %283, 1
  store i64 %284, i64* %19, align 8
  br label %206

285:                                              ; preds = %206
  %286 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 17
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %285
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7.74, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %285
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @update_sources(%struct.Params* byval(%struct.Params) align 8 %0, %struct.Input* byval(%struct.Input) align 8 %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.Source, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  store float %2, float* %4, align 4
  %23 = load float, float* %4, align 4
  %24 = fpext float %23 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = fptrunc double %25 to float
  store float %26, float* %6, align 4
  %27 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = call noalias i8* @malloc(i64 %30) #6
  %32 = bitcast i8* %31 to float*
  store float* %32, float** %7, align 8
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = call noalias i8* @malloc(i64 %36) #6
  %38 = bitcast i8* %37 to float*
  store float* %38, float** %8, align 8
  %39 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %40 = load i64, i64* %39, align 8
  %41 = mul i64 %40, 4
  %42 = call noalias i8* @malloc(i64 %41) #6
  %43 = bitcast i8* %42 to float*
  store float* %43, float** %9, align 8
  %44 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = call noalias i8* @malloc(i64 %47) #6
  %49 = bitcast i8* %48 to float*
  store float* %49, float** %10, align 8
  %50 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = call noalias i8* @malloc(i64 %53) #6
  %55 = bitcast i8* %54 to float*
  store float* %55, float** %11, align 8
  store i64 0, i64* %12, align 8
  br label %56

56:                                               ; preds = %237, %3
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %61, label %240

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  %63 = load %struct.Source*, %struct.Source** %62, align 8
  %64 = load i64, i64* %12, align 8
  %65 = getelementptr inbounds %struct.Source, %struct.Source* %63, i64 %64
  %66 = bitcast %struct.Source* %13 to i8*
  %67 = bitcast %struct.Source* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 48, i1 false)
  store i32 0, i32* %14, align 4
  br label %68

68:                                               ; preds = %225, %61
  %69 = load i32, i32* %14, align 4
  %70 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %228

73:                                               ; preds = %68
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %103, %73
  %75 = load i32, i32* %17, align 4
  %76 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %106

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 0
  %81 = load float**, float*** %80, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float*, float** %81, i64 %83
  %85 = load float*, float** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  %89 = load float, float* %88, align 4
  %90 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 4
  %91 = load float**, float*** %90, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds float*, float** %91, i64 %93
  %95 = load float*, float** %94, align 8
  %96 = getelementptr inbounds float, float* %95, i64 0
  %97 = load float, float* %96, align 4
  %98 = fmul float %89, %97
  %99 = load float*, float** %10, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds float, float* %99, i64 %101
  store float %98, float* %102, align 4
  br label %103

103:                                              ; preds = %79
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %74

106:                                              ; preds = %74
  %107 = load float*, float** %10, align 8
  %108 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = call float @pairwise_sum(float* %107, i64 %110)
  store float %111, float* %15, align 4
  %112 = load float, float* %6, align 4
  %113 = load float, float* %15, align 4
  %114 = fmul float %113, %112
  store float %114, float* %15, align 4
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %212, %106
  %116 = load i32, i32* %18, align 4
  %117 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %120, label %215

120:                                              ; preds = %115
  store i32 0, i32* %19, align 4
  br label %121

121:                                              ; preds = %152, %120
  %122 = load i32, i32* %19, align 4
  %123 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 5
  %128 = load float**, float*** %127, align 8
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds float*, float** %128, i64 %130
  %132 = load float*, float** %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds float, float* %132, i64 %134
  %136 = load float, float* %135, align 4
  %137 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 0
  %138 = load float**, float*** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds float*, float** %138, i64 %140
  %142 = load float*, float** %141, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float, float* %142, i64 %144
  %146 = load float, float* %145, align 4
  %147 = fmul float %136, %146
  %148 = load float*, float** %11, align 8
  %149 = load i32, i32* %19, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds float, float* %148, i64 %150
  store float %147, float* %151, align 4
  br label %152

152:                                              ; preds = %126
  %153 = load i32, i32* %19, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %19, align 4
  br label %121

155:                                              ; preds = %121
  %156 = load float*, float** %11, align 8
  %157 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = call float @pairwise_sum(float* %156, i64 %159)
  store float %160, float* %16, align 4
  %161 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 4
  %162 = load float**, float*** %161, align 8
  %163 = load i32, i32* %18, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float*, float** %162, i64 %164
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 2
  %168 = load float, float* %167, align 4
  store float %168, float* %20, align 4
  %169 = load float, float* %15, align 4
  %170 = load float, float* %20, align 4
  %171 = fmul float %169, %170
  %172 = load float, float* %16, align 4
  %173 = fadd float %171, %172
  %174 = fpext float %173 to double
  %175 = fdiv double %174, 0x402921FB54442D18
  %176 = fptrunc double %175 to float
  store float %176, float* %21, align 4
  %177 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 1
  %178 = load float**, float*** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float*, float** %178, i64 %180
  %182 = load float*, float** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds float, float* %182, i64 %184
  %186 = load float, float* %185, align 4
  store float %186, float* %22, align 4
  %187 = load float, float* %21, align 4
  %188 = load float, float* %22, align 4
  %189 = fsub float %187, %188
  %190 = load float, float* %21, align 4
  %191 = load float, float* %22, align 4
  %192 = fsub float %190, %191
  %193 = fmul float %189, %192
  %194 = load float, float* %22, align 4
  %195 = load float, float* %22, align 4
  %196 = fmul float %194, %195
  %197 = fdiv float %193, %196
  %198 = load float*, float** %7, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds float, float* %198, i64 %200
  store float %197, float* %201, align 4
  %202 = load float, float* %21, align 4
  %203 = getelementptr inbounds %struct.Source, %struct.Source* %13, i32 0, i32 1
  %204 = load float**, float*** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float*, float** %204, i64 %206
  %208 = load float*, float** %207, align 8
  %209 = load i32, i32* %18, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  store float %202, float* %211, align 4
  br label %212

212:                                              ; preds = %155
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %18, align 4
  br label %115

215:                                              ; preds = %115
  %216 = load float*, float** %7, align 8
  %217 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = call float @pairwise_sum(float* %216, i64 %219)
  %221 = load float*, float** %8, align 8
  %222 = load i32, i32* %14, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds float, float* %221, i64 %223
  store float %220, float* %224, align 4
  br label %225

225:                                              ; preds = %215
  %226 = load i32, i32* %14, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %14, align 4
  br label %68

228:                                              ; preds = %68
  %229 = load float*, float** %8, align 8
  %230 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = call float @pairwise_sum(float* %229, i64 %232)
  %234 = load float*, float** %9, align 8
  %235 = load i64, i64* %12, align 8
  %236 = getelementptr inbounds float, float* %234, i64 %235
  store float %233, float* %236, align 4
  br label %237

237:                                              ; preds = %228
  %238 = load i64, i64* %12, align 8
  %239 = add nsw i64 %238, 1
  store i64 %239, i64* %12, align 8
  br label %56

240:                                              ; preds = %56
  %241 = load float*, float** %9, align 8
  %242 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %243 = load i64, i64* %242, align 8
  %244 = call float @pairwise_sum(float* %241, i64 %243)
  store float %244, float* %5, align 4
  %245 = load float*, float** %10, align 8
  %246 = bitcast float* %245 to i8*
  call void @free(i8* %246) #6
  %247 = load float*, float** %11, align 8
  %248 = bitcast float* %247 to i8*
  call void @free(i8* %248) #6
  %249 = load float*, float** %7, align 8
  %250 = bitcast float* %249 to i8*
  call void @free(i8* %250) #6
  %251 = load float*, float** %8, align 8
  %252 = bitcast float* %251 to i8*
  call void @free(i8* %252) #6
  %253 = load float*, float** %9, align 8
  %254 = bitcast float* %253 to i8*
  call void @free(i8* %254) #6
  %255 = load float, float* %5, align 4
  ret float %255
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @compute_keff(%struct.Params* byval(%struct.Params) align 8 %0, %struct.Input* byval(%struct.Input) align 8 %1, %struct.CommGrid* byval(%struct.CommGrid) align 8 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Source, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.Source, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca i32, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call noalias i8* @malloc(i64 %29) #6
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %4, align 8
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  %36 = call noalias i8* @malloc(i64 %35) #6
  %37 = bitcast i8* %36 to float*
  store float* %37, float** %5, align 8
  %38 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = call noalias i8* @malloc(i64 %41) #6
  %43 = bitcast i8* %42 to float*
  store float* %43, float** %6, align 8
  %44 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %45 = load i64, i64* %44, align 8
  %46 = mul i64 %45, 4
  %47 = call noalias i8* @malloc(i64 %46) #6
  %48 = bitcast i8* %47 to float*
  store float* %48, float** %7, align 8
  store i64 0, i64* %8, align 8
  br label %49

49:                                               ; preds = %141, %3
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %144

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  %56 = load %struct.Source*, %struct.Source** %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct.Source, %struct.Source* %56, i64 %57
  %59 = bitcast %struct.Source* %9 to i8*
  %60 = bitcast %struct.Source* %58 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 48, i1 false)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %79, %54
  %62 = load i32, i32* %10, align 4
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.Source, %struct.Source* %9, i32 0, i32 4
  %68 = load float**, float*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float*, float** %68, i64 %70
  %72 = load float*, float** %71, align 8
  %73 = getelementptr inbounds float, float* %72, i64 1
  %74 = load float, float* %73, align 4
  %75 = load float*, float** %4, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  store float %74, float* %78, align 4
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %61

82:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %129, %82
  %84 = load i32, i32* %11, align 4
  %85 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %132

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.Source, %struct.Source* %9, i32 0, i32 0
  %90 = load float**, float*** %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds float*, float** %90, i64 %92
  %94 = load float*, float** %93, align 8
  store float* %94, float** %12, align 8
  store i32 0, i32* %13, align 4
  br label %95

95:                                               ; preds = %116, %88
  %96 = load i32, i32* %13, align 4
  %97 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load float*, float** %4, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load float*, float** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = fmul float %105, %110
  %112 = load float*, float** %5, align 8
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float, float* %112, i64 %114
  store float %111, float* %115, align 4
  br label %116

116:                                              ; preds = %100
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %95

119:                                              ; preds = %95
  %120 = load float*, float** %5, align 8
  %121 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = call float @pairwise_sum(float* %120, i64 %123)
  %125 = load float*, float** %6, align 8
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %125, i64 %127
  store float %124, float* %128, align 4
  br label %129

129:                                              ; preds = %119
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %11, align 4
  br label %83

132:                                              ; preds = %83
  %133 = load float*, float** %6, align 8
  %134 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = call float @pairwise_sum(float* %133, i64 %136)
  %138 = load float*, float** %7, align 8
  %139 = load i64, i64* %8, align 8
  %140 = getelementptr inbounds float, float* %138, i64 %139
  store float %137, float* %140, align 4
  br label %141

141:                                              ; preds = %132
  %142 = load i64, i64* %8, align 8
  %143 = add nsw i64 %142, 1
  store i64 %143, i64* %8, align 8
  br label %49

144:                                              ; preds = %49
  %145 = load float*, float** %7, align 8
  %146 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %147 = load i64, i64* %146, align 8
  %148 = call float @pairwise_sum(float* %145, i64 %147)
  store float %148, float* %14, align 4
  store i64 0, i64* %15, align 8
  br label %149

149:                                              ; preds = %241, %144
  %150 = load i64, i64* %15, align 8
  %151 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %150, %152
  br i1 %153, label %154, label %244

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 2
  %156 = load %struct.Source*, %struct.Source** %155, align 8
  %157 = load i64, i64* %15, align 8
  %158 = getelementptr inbounds %struct.Source, %struct.Source* %156, i64 %157
  %159 = bitcast %struct.Source* %16 to i8*
  %160 = bitcast %struct.Source* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 48, i1 false)
  store i32 0, i32* %17, align 4
  br label %161

161:                                              ; preds = %179, %154
  %162 = load i32, i32* %17, align 4
  %163 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.Source, %struct.Source* %16, i32 0, i32 4
  %168 = load float**, float*** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float*, float** %168, i64 %170
  %172 = load float*, float** %171, align 8
  %173 = getelementptr inbounds float, float* %172, i64 0
  %174 = load float, float* %173, align 4
  %175 = load float*, float** %4, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  store float %174, float* %178, align 4
  br label %179

179:                                              ; preds = %166
  %180 = load i32, i32* %17, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %17, align 4
  br label %161

182:                                              ; preds = %161
  store i32 0, i32* %18, align 4
  br label %183

183:                                              ; preds = %229, %182
  %184 = load i32, i32* %18, align 4
  %185 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %232

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.Source, %struct.Source* %16, i32 0, i32 0
  %190 = load float**, float*** %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float*, float** %190, i64 %192
  %194 = load float*, float** %193, align 8
  store float* %194, float** %19, align 8
  store i32 0, i32* %20, align 4
  br label %195

195:                                              ; preds = %216, %188
  %196 = load i32, i32* %20, align 4
  %197 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %219

200:                                              ; preds = %195
  %201 = load float*, float** %4, align 8
  %202 = load i32, i32* %20, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds float, float* %201, i64 %203
  %205 = load float, float* %204, align 4
  %206 = load float*, float** %19, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds float, float* %206, i64 %208
  %210 = load float, float* %209, align 4
  %211 = fmul float %205, %210
  %212 = load float*, float** %5, align 8
  %213 = load i32, i32* %20, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds float, float* %212, i64 %214
  store float %211, float* %215, align 4
  br label %216

216:                                              ; preds = %200
  %217 = load i32, i32* %20, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %20, align 4
  br label %195

219:                                              ; preds = %195
  %220 = load float*, float** %5, align 8
  %221 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = call float @pairwise_sum(float* %220, i64 %223)
  %225 = load float*, float** %6, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  store float %224, float* %228, align 4
  br label %229

229:                                              ; preds = %219
  %230 = load i32, i32* %18, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %18, align 4
  br label %183

232:                                              ; preds = %183
  %233 = load float*, float** %6, align 8
  %234 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = call float @pairwise_sum(float* %233, i64 %236)
  %238 = load float*, float** %7, align 8
  %239 = load i64, i64* %15, align 8
  %240 = getelementptr inbounds float, float* %238, i64 %239
  store float %237, float* %240, align 4
  br label %241

241:                                              ; preds = %232
  %242 = load i64, i64* %15, align 8
  %243 = add nsw i64 %242, 1
  store i64 %243, i64* %15, align 8
  br label %149

244:                                              ; preds = %149
  %245 = load float*, float** %7, align 8
  %246 = getelementptr inbounds %struct.Input, %struct.Input* %1, i32 0, i32 24
  %247 = load i64, i64* %246, align 8
  %248 = call float @pairwise_sum(float* %245, i64 %247)
  store float %248, float* %21, align 4
  store float 0.000000e+00, float* %22, align 4
  store float 0.000000e+00, float* %23, align 4
  store float 0.000000e+00, float* %24, align 4
  %249 = load float, float* %21, align 4
  %250 = load float, float* %14, align 4
  %251 = getelementptr inbounds %struct.Params, %struct.Params* %0, i32 0, i32 4
  %252 = load float*, float** %251, align 8
  %253 = load float, float* %252, align 4
  %254 = fadd float %250, %253
  %255 = fdiv float %249, %254
  store float %255, float* %25, align 4
  %256 = load float*, float** %4, align 8
  %257 = bitcast float* %256 to i8*
  call void @free(i8* %257) #6
  %258 = load float*, float** %5, align 8
  %259 = bitcast float* %258 to i8*
  call void @free(i8* %259) #6
  %260 = load float*, float** %6, align 8
  %261 = bitcast float* %260 to i8*
  call void @free(i8* %261) #6
  %262 = load float*, float** %7, align 8
  %263 = bitcast float* %262 to i8*
  call void @free(i8* %263) #6
  %264 = load float, float* %25, align 4
  ret float %264
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Source* @initialize_sources(%struct.Input* byval(%struct.Input) align 8 %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.Source*, align 8
  %5 = alloca i64, align 8
  %6 = alloca float***, align 8
  %7 = alloca float**, align 8
  %8 = alloca float*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca float***, align 8
  %16 = alloca float**, align 8
  %17 = alloca float*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float***, align 8
  %25 = alloca float**, align 8
  %26 = alloca float***, align 8
  %27 = alloca float**, align 8
  %28 = alloca float**, align 8
  %29 = alloca float*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i64, align 8
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i64, align 8
  store i64* %1, i64** %3, align 8
  %47 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %48 = load i64, i64* %47, align 8
  %49 = mul i64 %48, 48
  %50 = call noalias i8* @malloc(i64 %49) #6
  %51 = bitcast i8* %50 to %struct.Source*
  store %struct.Source* %51, %struct.Source** %4, align 8
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %53 = load i64, i64* %52, align 8
  %54 = mul i64 %53, 48
  %55 = load i64*, i64** %3, align 8
  %56 = load i64, i64* %55, align 8
  %57 = add i64 %56, %54
  store i64 %57, i64* %55, align 8
  %58 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %59 = load i64, i64* %58, align 8
  %60 = sdiv i64 %59, 8
  store i64 %60, i64* %5, align 8
  %61 = load i64, i64* %5, align 8
  %62 = mul i64 %61, 8
  %63 = call noalias i8* @malloc(i64 %62) #6
  %64 = bitcast i8* %63 to float***
  store float*** %64, float**** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = mul i64 %65, 8
  %67 = load i64*, i64** %3, align 8
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %66
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %5, align 8
  %71 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %70, %73
  %75 = mul i64 %74, 8
  %76 = call noalias i8* @malloc(i64 %75) #6
  %77 = bitcast i8* %76 to float**
  store float** %77, float*** %7, align 8
  %78 = load i64, i64* %5, align 8
  %79 = mul i64 %78, 8
  %80 = load i64*, i64** %3, align 8
  %81 = load i64, i64* %80, align 8
  %82 = add i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = mul nsw i64 %83, %86
  %88 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %87, %90
  %92 = mul i64 %91, 4
  %93 = call noalias i8* @malloc(i64 %92) #6
  %94 = bitcast i8* %93 to float*
  store float* %94, float** %8, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = mul nsw i64 %95, %98
  %100 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = mul nsw i64 %99, %102
  %104 = mul i64 %103, 4
  %105 = load i64*, i64** %3, align 8
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %104
  store i64 %107, i64* %105, align 8
  store i64 0, i64* %9, align 8
  br label %108

108:                                              ; preds = %123, %2
  %109 = load i64, i64* %9, align 8
  %110 = load i64, i64* %5, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load float**, float*** %7, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = mul nsw i64 %114, %117
  %119 = getelementptr inbounds float*, float** %113, i64 %118
  %120 = load float***, float**** %6, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds float**, float*** %120, i64 %121
  store float** %119, float*** %122, align 8
  br label %123

123:                                              ; preds = %112
  %124 = load i64, i64* %9, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %9, align 8
  br label %108

126:                                              ; preds = %108
  store i64 0, i64* %10, align 8
  br label %127

127:                                              ; preds = %166, %126
  %128 = load i64, i64* %10, align 8
  %129 = load i64, i64* %5, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %169

131:                                              ; preds = %127
  store i64 0, i64* %11, align 8
  br label %132

132:                                              ; preds = %162, %131
  %133 = load i64, i64* %11, align 8
  %134 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %165

138:                                              ; preds = %132
  %139 = load float*, float** %8, align 8
  %140 = load i64, i64* %10, align 8
  %141 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = mul nsw i64 %140, %143
  %145 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = mul nsw i64 %144, %147
  %149 = load i64, i64* %11, align 8
  %150 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = mul nsw i64 %149, %152
  %154 = add nsw i64 %148, %153
  %155 = getelementptr inbounds float, float* %139, i64 %154
  %156 = load float***, float**** %6, align 8
  %157 = load i64, i64* %10, align 8
  %158 = getelementptr inbounds float**, float*** %156, i64 %157
  %159 = load float**, float*** %158, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds float*, float** %159, i64 %160
  store float* %155, float** %161, align 8
  br label %162

162:                                              ; preds = %138
  %163 = load i64, i64* %11, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %11, align 8
  br label %132

165:                                              ; preds = %132
  br label %166

166:                                              ; preds = %165
  %167 = load i64, i64* %10, align 8
  %168 = add nsw i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %127

169:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  br label %170

170:                                              ; preds = %207, %169
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %210

174:                                              ; preds = %170
  store i64 0, i64* %13, align 8
  br label %175

175:                                              ; preds = %203, %174
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp slt i64 %176, %179
  br i1 %180, label %181, label %206

181:                                              ; preds = %175
  store i64 0, i64* %14, align 8
  br label %182

182:                                              ; preds = %199, %181
  %183 = load i64, i64* %14, align 8
  %184 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = icmp slt i64 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %182
  %189 = call float @urand()
  %190 = load float***, float**** %6, align 8
  %191 = load i64, i64* %12, align 8
  %192 = getelementptr inbounds float**, float*** %190, i64 %191
  %193 = load float**, float*** %192, align 8
  %194 = load i64, i64* %13, align 8
  %195 = getelementptr inbounds float*, float** %193, i64 %194
  %196 = load float*, float** %195, align 8
  %197 = load i64, i64* %14, align 8
  %198 = getelementptr inbounds float, float* %196, i64 %197
  store float %189, float* %198, align 4
  br label %199

199:                                              ; preds = %188
  %200 = load i64, i64* %14, align 8
  %201 = add nsw i64 %200, 1
  store i64 %201, i64* %14, align 8
  br label %182

202:                                              ; preds = %182
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %13, align 8
  %205 = add nsw i64 %204, 1
  store i64 %205, i64* %13, align 8
  br label %175

206:                                              ; preds = %175
  br label %207

207:                                              ; preds = %206
  %208 = load i64, i64* %12, align 8
  %209 = add nsw i64 %208, 1
  store i64 %209, i64* %12, align 8
  br label %170

210:                                              ; preds = %170
  %211 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i64 0, i64 0))
  br label %216

216:                                              ; preds = %214, %210
  %217 = load i64, i64* %5, align 8
  %218 = mul i64 %217, 8
  %219 = call noalias i8* @malloc(i64 %218) #6
  %220 = bitcast i8* %219 to float***
  store float*** %220, float**** %15, align 8
  %221 = load i64, i64* %5, align 8
  %222 = mul i64 %221, 8
  %223 = load i64*, i64** %3, align 8
  %224 = load i64, i64* %223, align 8
  %225 = add i64 %224, %222
  store i64 %225, i64* %223, align 8
  %226 = load i64, i64* %5, align 8
  %227 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = mul nsw i64 %226, %229
  %231 = mul i64 %230, 8
  %232 = call noalias i8* @malloc(i64 %231) #6
  %233 = bitcast i8* %232 to float**
  store float** %233, float*** %16, align 8
  %234 = load i64, i64* %5, align 8
  %235 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  %238 = mul nsw i64 %234, %237
  %239 = mul i64 %238, 8
  %240 = load i64*, i64** %3, align 8
  %241 = load i64, i64* %240, align 8
  %242 = add i64 %241, %239
  store i64 %242, i64* %240, align 8
  %243 = load i64, i64* %5, align 8
  %244 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = mul nsw i64 %243, %246
  %248 = mul nsw i64 %247, 3
  %249 = mul i64 %248, 4
  %250 = call noalias i8* @malloc(i64 %249) #6
  %251 = bitcast i8* %250 to float*
  store float* %251, float** %17, align 8
  %252 = load i64, i64* %5, align 8
  %253 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = mul nsw i64 %252, %255
  %257 = mul nsw i64 %256, 3
  %258 = mul i64 %257, 4
  %259 = load i64*, i64** %3, align 8
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, %258
  store i64 %261, i64* %259, align 8
  store i64 0, i64* %18, align 8
  br label %262

262:                                              ; preds = %277, %216
  %263 = load i64, i64* %18, align 8
  %264 = load i64, i64* %5, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %266, label %280

266:                                              ; preds = %262
  %267 = load float**, float*** %16, align 8
  %268 = load i64, i64* %18, align 8
  %269 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = mul nsw i64 %268, %271
  %273 = getelementptr inbounds float*, float** %267, i64 %272
  %274 = load float***, float**** %15, align 8
  %275 = load i64, i64* %18, align 8
  %276 = getelementptr inbounds float**, float*** %274, i64 %275
  store float** %273, float*** %276, align 8
  br label %277

277:                                              ; preds = %266
  %278 = load i64, i64* %18, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %18, align 8
  br label %262

280:                                              ; preds = %262
  store i64 0, i64* %19, align 8
  br label %281

281:                                              ; preds = %314, %280
  %282 = load i64, i64* %19, align 8
  %283 = load i64, i64* %5, align 8
  %284 = icmp slt i64 %282, %283
  br i1 %284, label %285, label %317

285:                                              ; preds = %281
  store i64 0, i64* %20, align 8
  br label %286

286:                                              ; preds = %310, %285
  %287 = load i64, i64* %20, align 8
  %288 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = icmp slt i64 %287, %290
  br i1 %291, label %292, label %313

292:                                              ; preds = %286
  %293 = load float*, float** %17, align 8
  %294 = load i64, i64* %19, align 8
  %295 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = mul nsw i64 %294, %297
  %299 = mul nsw i64 %298, 3
  %300 = load i64, i64* %20, align 8
  %301 = mul nsw i64 %300, 3
  %302 = add nsw i64 %299, %301
  %303 = getelementptr inbounds float, float* %293, i64 %302
  %304 = load float***, float**** %15, align 8
  %305 = load i64, i64* %19, align 8
  %306 = getelementptr inbounds float**, float*** %304, i64 %305
  %307 = load float**, float*** %306, align 8
  %308 = load i64, i64* %20, align 8
  %309 = getelementptr inbounds float*, float** %307, i64 %308
  store float* %303, float** %309, align 8
  br label %310

310:                                              ; preds = %292
  %311 = load i64, i64* %20, align 8
  %312 = add nsw i64 %311, 1
  store i64 %312, i64* %20, align 8
  br label %286

313:                                              ; preds = %286
  br label %314

314:                                              ; preds = %313
  %315 = load i64, i64* %19, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %19, align 8
  br label %281

317:                                              ; preds = %281
  store i64 0, i64* %21, align 8
  br label %318

318:                                              ; preds = %353, %317
  %319 = load i64, i64* %21, align 8
  %320 = load i64, i64* %5, align 8
  %321 = icmp slt i64 %319, %320
  br i1 %321, label %322, label %356

322:                                              ; preds = %318
  store i32 0, i32* %22, align 4
  br label %323

323:                                              ; preds = %349, %322
  %324 = load i32, i32* %22, align 4
  %325 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %326 = load i32, i32* %325, align 4
  %327 = icmp slt i32 %324, %326
  br i1 %327, label %328, label %352

328:                                              ; preds = %323
  store i32 0, i32* %23, align 4
  br label %329

329:                                              ; preds = %345, %328
  %330 = load i32, i32* %23, align 4
  %331 = icmp slt i32 %330, 3
  br i1 %331, label %332, label %348

332:                                              ; preds = %329
  %333 = call float @urand()
  %334 = load float***, float**** %15, align 8
  %335 = load i64, i64* %21, align 8
  %336 = getelementptr inbounds float**, float*** %334, i64 %335
  %337 = load float**, float*** %336, align 8
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds float*, float** %337, i64 %339
  %341 = load float*, float** %340, align 8
  %342 = load i32, i32* %23, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds float, float* %341, i64 %343
  store float %333, float* %344, align 4
  br label %345

345:                                              ; preds = %332
  %346 = load i32, i32* %23, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %23, align 4
  br label %329

348:                                              ; preds = %329
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %22, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %22, align 4
  br label %323

352:                                              ; preds = %323
  br label %353

353:                                              ; preds = %352
  %354 = load i64, i64* %21, align 8
  %355 = add nsw i64 %354, 1
  store i64 %355, i64* %21, align 8
  br label %318

356:                                              ; preds = %318
  %357 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %356
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.82, i64 0, i64 0))
  br label %362

362:                                              ; preds = %360, %356
  %363 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %364 = load i64, i64* %363, align 8
  %365 = mul i64 %364, 8
  %366 = call noalias i8* @malloc(i64 %365) #6
  %367 = bitcast i8* %366 to float***
  store float*** %367, float**** %24, align 8
  %368 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %369 = load i64, i64* %368, align 8
  %370 = mul i64 %369, 8
  %371 = load i64*, i64** %3, align 8
  %372 = load i64, i64* %371, align 8
  %373 = add i64 %372, %370
  store i64 %373, i64* %371, align 8
  %374 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %375 = load i64, i64* %374, align 8
  %376 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = mul nsw i64 %375, %378
  %380 = mul i64 %379, 8
  %381 = call noalias i8* @malloc(i64 %380) #6
  %382 = bitcast i8* %381 to float**
  store float** %382, float*** %25, align 8
  %383 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = mul nsw i64 %384, %387
  %389 = mul i64 %388, 8
  %390 = load i64*, i64** %3, align 8
  %391 = load i64, i64* %390, align 8
  %392 = add i64 %391, %389
  store i64 %392, i64* %390, align 8
  %393 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %394 = load i64, i64* %393, align 8
  %395 = mul i64 %394, 8
  %396 = call noalias i8* @malloc(i64 %395) #6
  %397 = bitcast i8* %396 to float***
  store float*** %397, float**** %26, align 8
  %398 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %399 = load i64, i64* %398, align 8
  %400 = mul i64 %399, 8
  %401 = load i64*, i64** %3, align 8
  %402 = load i64, i64* %401, align 8
  %403 = add i64 %402, %400
  store i64 %403, i64* %401, align 8
  %404 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %405 = load i64, i64* %404, align 8
  %406 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = mul nsw i64 %405, %408
  %410 = mul i64 %409, 8
  %411 = call noalias i8* @malloc(i64 %410) #6
  %412 = bitcast i8* %411 to float**
  store float** %412, float*** %27, align 8
  %413 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %414 = load i64, i64* %413, align 8
  %415 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = mul nsw i64 %414, %417
  %419 = mul i64 %418, 8
  %420 = load i64*, i64** %3, align 8
  %421 = load i64, i64* %420, align 8
  %422 = add i64 %421, %419
  store i64 %422, i64* %420, align 8
  %423 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %424 = load i64, i64* %423, align 8
  %425 = mul i64 %424, 8
  %426 = call noalias i8* @malloc(i64 %425) #6
  %427 = bitcast i8* %426 to float**
  store float** %427, float*** %28, align 8
  %428 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = mul nsw i32 2, %429
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %434 = load i64, i64* %433, align 8
  %435 = mul nsw i64 %432, %434
  %436 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  %439 = mul nsw i64 %435, %438
  %440 = mul i64 %439, 4
  %441 = call noalias i8* @malloc(i64 %440) #6
  %442 = bitcast i8* %441 to float*
  store float* %442, float** %29, align 8
  %443 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %444 = load i64, i64* %443, align 8
  %445 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %446 = load i32, i32* %445, align 4
  %447 = sext i32 %446 to i64
  %448 = mul nsw i64 %444, %447
  %449 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %450 = load i32, i32* %449, align 4
  %451 = sext i32 %450 to i64
  %452 = mul nsw i64 %448, %451
  %453 = mul i64 %452, 4
  %454 = load i64*, i64** %3, align 8
  %455 = load i64, i64* %454, align 8
  %456 = add i64 %455, %453
  store i64 %456, i64* %454, align 8
  store i64 0, i64* %30, align 8
  br label %457

457:                                              ; preds = %473, %362
  %458 = load i64, i64* %30, align 8
  %459 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %460 = load i64, i64* %459, align 8
  %461 = icmp slt i64 %458, %460
  br i1 %461, label %462, label %476

462:                                              ; preds = %457
  %463 = load float**, float*** %25, align 8
  %464 = load i64, i64* %30, align 8
  %465 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %466 = load i32, i32* %465, align 4
  %467 = sext i32 %466 to i64
  %468 = mul nsw i64 %464, %467
  %469 = getelementptr inbounds float*, float** %463, i64 %468
  %470 = load float***, float**** %24, align 8
  %471 = load i64, i64* %30, align 8
  %472 = getelementptr inbounds float**, float*** %470, i64 %471
  store float** %469, float*** %472, align 8
  br label %473

473:                                              ; preds = %462
  %474 = load i64, i64* %30, align 8
  %475 = add nsw i64 %474, 1
  store i64 %475, i64* %30, align 8
  br label %457

476:                                              ; preds = %457
  store i64 0, i64* %31, align 8
  br label %477

477:                                              ; preds = %517, %476
  %478 = load i64, i64* %31, align 8
  %479 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %480 = load i64, i64* %479, align 8
  %481 = icmp slt i64 %478, %480
  br i1 %481, label %482, label %520

482:                                              ; preds = %477
  store i64 0, i64* %32, align 8
  br label %483

483:                                              ; preds = %513, %482
  %484 = load i64, i64* %32, align 8
  %485 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = icmp slt i64 %484, %487
  br i1 %488, label %489, label %516

489:                                              ; preds = %483
  %490 = load float*, float** %29, align 8
  %491 = load i64, i64* %31, align 8
  %492 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  %495 = mul nsw i64 %491, %494
  %496 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %497 = load i32, i32* %496, align 4
  %498 = sext i32 %497 to i64
  %499 = mul nsw i64 %495, %498
  %500 = load i64, i64* %32, align 8
  %501 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %502 = load i32, i32* %501, align 4
  %503 = sext i32 %502 to i64
  %504 = mul nsw i64 %500, %503
  %505 = add nsw i64 %499, %504
  %506 = getelementptr inbounds float, float* %490, i64 %505
  %507 = load float***, float**** %24, align 8
  %508 = load i64, i64* %31, align 8
  %509 = getelementptr inbounds float**, float*** %507, i64 %508
  %510 = load float**, float*** %509, align 8
  %511 = load i64, i64* %32, align 8
  %512 = getelementptr inbounds float*, float** %510, i64 %511
  store float* %506, float** %512, align 8
  br label %513

513:                                              ; preds = %489
  %514 = load i64, i64* %32, align 8
  %515 = add nsw i64 %514, 1
  store i64 %515, i64* %32, align 8
  br label %483

516:                                              ; preds = %483
  br label %517

517:                                              ; preds = %516
  %518 = load i64, i64* %31, align 8
  %519 = add nsw i64 %518, 1
  store i64 %519, i64* %31, align 8
  br label %477

520:                                              ; preds = %477
  store i64 0, i64* %33, align 8
  br label %521

521:                                              ; preds = %537, %520
  %522 = load i64, i64* %33, align 8
  %523 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %524 = load i64, i64* %523, align 8
  %525 = icmp slt i64 %522, %524
  br i1 %525, label %526, label %540

526:                                              ; preds = %521
  %527 = load float**, float*** %27, align 8
  %528 = load i64, i64* %33, align 8
  %529 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  %532 = mul nsw i64 %528, %531
  %533 = getelementptr inbounds float*, float** %527, i64 %532
  %534 = load float***, float**** %26, align 8
  %535 = load i64, i64* %33, align 8
  %536 = getelementptr inbounds float**, float*** %534, i64 %535
  store float** %533, float*** %536, align 8
  br label %537

537:                                              ; preds = %526
  %538 = load i64, i64* %33, align 8
  %539 = add nsw i64 %538, 1
  store i64 %539, i64* %33, align 8
  br label %521

540:                                              ; preds = %521
  store i64 0, i64* %34, align 8
  br label %541

541:                                              ; preds = %583, %540
  %542 = load i64, i64* %34, align 8
  %543 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %544 = load i64, i64* %543, align 8
  %545 = icmp slt i64 %542, %544
  br i1 %545, label %546, label %586

546:                                              ; preds = %541
  store i32 0, i32* %35, align 4
  br label %547

547:                                              ; preds = %579, %546
  %548 = load i32, i32* %35, align 4
  %549 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %550 = load i32, i32* %549, align 4
  %551 = icmp slt i32 %548, %550
  br i1 %551, label %552, label %582

552:                                              ; preds = %547
  %553 = load float*, float** %29, align 8
  %554 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %555 = load i32, i32* %554, align 4
  %556 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %557 = load i32, i32* %556, align 4
  %558 = mul nsw i32 %555, %557
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %561 = load i64, i64* %560, align 8
  %562 = load i64, i64* %34, align 8
  %563 = add nsw i64 %561, %562
  %564 = mul nsw i64 %559, %563
  %565 = load i32, i32* %35, align 4
  %566 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %567 = load i32, i32* %566, align 4
  %568 = mul nsw i32 %565, %567
  %569 = sext i32 %568 to i64
  %570 = add nsw i64 %564, %569
  %571 = getelementptr inbounds float, float* %553, i64 %570
  %572 = load float***, float**** %26, align 8
  %573 = load i64, i64* %34, align 8
  %574 = getelementptr inbounds float**, float*** %572, i64 %573
  %575 = load float**, float*** %574, align 8
  %576 = load i32, i32* %35, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds float*, float** %575, i64 %577
  store float* %571, float** %578, align 8
  br label %579

579:                                              ; preds = %552
  %580 = load i32, i32* %35, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %35, align 4
  br label %547

582:                                              ; preds = %547
  br label %583

583:                                              ; preds = %582
  %584 = load i64, i64* %34, align 8
  %585 = add nsw i64 %584, 1
  store i64 %585, i64* %34, align 8
  br label %541

586:                                              ; preds = %541
  store i64 0, i64* %36, align 8
  br label %587

587:                                              ; preds = %615, %586
  %588 = load i64, i64* %36, align 8
  %589 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %590 = load i64, i64* %589, align 8
  %591 = icmp slt i64 %588, %590
  br i1 %591, label %592, label %618

592:                                              ; preds = %587
  %593 = load float*, float** %29, align 8
  %594 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %595 = load i64, i64* %594, align 8
  %596 = mul nsw i64 2, %595
  %597 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %598 = load i32, i32* %597, align 4
  %599 = sext i32 %598 to i64
  %600 = mul nsw i64 %596, %599
  %601 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %602 = load i32, i32* %601, align 4
  %603 = sext i32 %602 to i64
  %604 = mul nsw i64 %600, %603
  %605 = load i64, i64* %36, align 8
  %606 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = mul nsw i64 %605, %608
  %610 = add nsw i64 %604, %609
  %611 = getelementptr inbounds float, float* %593, i64 %610
  %612 = load float**, float*** %28, align 8
  %613 = load i64, i64* %36, align 8
  %614 = getelementptr inbounds float*, float** %612, i64 %613
  store float* %611, float** %614, align 8
  br label %615

615:                                              ; preds = %592
  %616 = load i64, i64* %36, align 8
  %617 = add nsw i64 %616, 1
  store i64 %617, i64* %36, align 8
  br label %587

618:                                              ; preds = %587
  store i64 0, i64* %37, align 8
  br label %619

619:                                              ; preds = %657, %618
  %620 = load i64, i64* %37, align 8
  %621 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %622 = load i64, i64* %621, align 8
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %624, label %660

624:                                              ; preds = %619
  store i32 0, i32* %38, align 4
  br label %625

625:                                              ; preds = %653, %624
  %626 = load i32, i32* %38, align 4
  %627 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %628 = load i32, i32* %627, align 4
  %629 = icmp slt i32 %626, %628
  br i1 %629, label %630, label %656

630:                                              ; preds = %625
  store i32 0, i32* %39, align 4
  br label %631

631:                                              ; preds = %649, %630
  %632 = load i32, i32* %39, align 4
  %633 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %634 = load i32, i32* %633, align 4
  %635 = icmp slt i32 %632, %634
  br i1 %635, label %636, label %652

636:                                              ; preds = %631
  %637 = call float @urand()
  %638 = load float***, float**** %24, align 8
  %639 = load i64, i64* %37, align 8
  %640 = getelementptr inbounds float**, float*** %638, i64 %639
  %641 = load float**, float*** %640, align 8
  %642 = load i32, i32* %38, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds float*, float** %641, i64 %643
  %645 = load float*, float** %644, align 8
  %646 = load i32, i32* %39, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds float, float* %645, i64 %647
  store float %637, float* %648, align 4
  br label %649

649:                                              ; preds = %636
  %650 = load i32, i32* %39, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %39, align 4
  br label %631

652:                                              ; preds = %631
  br label %653

653:                                              ; preds = %652
  %654 = load i32, i32* %38, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %38, align 4
  br label %625

656:                                              ; preds = %625
  br label %657

657:                                              ; preds = %656
  %658 = load i64, i64* %37, align 8
  %659 = add nsw i64 %658, 1
  store i64 %659, i64* %37, align 8
  br label %619

660:                                              ; preds = %619
  store i64 0, i64* %40, align 8
  br label %661

661:                                              ; preds = %698, %660
  %662 = load i64, i64* %40, align 8
  %663 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %664 = load i64, i64* %663, align 8
  %665 = icmp slt i64 %662, %664
  br i1 %665, label %666, label %701

666:                                              ; preds = %661
  store i32 0, i32* %41, align 4
  br label %667

667:                                              ; preds = %694, %666
  %668 = load i32, i32* %41, align 4
  %669 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %670 = load i32, i32* %669, align 4
  %671 = icmp slt i32 %668, %670
  br i1 %671, label %672, label %697

672:                                              ; preds = %667
  store i32 0, i32* %42, align 4
  br label %673

673:                                              ; preds = %690, %672
  %674 = load i32, i32* %42, align 4
  %675 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %676 = load i32, i32* %675, align 4
  %677 = icmp slt i32 %674, %676
  br i1 %677, label %678, label %693

678:                                              ; preds = %673
  %679 = load float***, float**** %26, align 8
  %680 = load i64, i64* %40, align 8
  %681 = getelementptr inbounds float**, float*** %679, i64 %680
  %682 = load float**, float*** %681, align 8
  %683 = load i32, i32* %41, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds float*, float** %682, i64 %684
  %686 = load float*, float** %685, align 8
  %687 = load i32, i32* %42, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds float, float* %686, i64 %688
  store float 0.000000e+00, float* %689, align 4
  br label %690

690:                                              ; preds = %678
  %691 = load i32, i32* %42, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %42, align 4
  br label %673

693:                                              ; preds = %673
  br label %694

694:                                              ; preds = %693
  %695 = load i32, i32* %41, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %41, align 4
  br label %667

697:                                              ; preds = %667
  br label %698

698:                                              ; preds = %697
  %699 = load i64, i64* %40, align 8
  %700 = add nsw i64 %699, 1
  store i64 %700, i64* %40, align 8
  br label %661

701:                                              ; preds = %661
  store i64 0, i64* %43, align 8
  br label %702

702:                                              ; preds = %726, %701
  %703 = load i64, i64* %43, align 8
  %704 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %705 = load i64, i64* %704, align 8
  %706 = icmp slt i64 %703, %705
  br i1 %706, label %707, label %729

707:                                              ; preds = %702
  store i32 0, i32* %44, align 4
  br label %708

708:                                              ; preds = %722, %707
  %709 = load i32, i32* %44, align 4
  %710 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %711 = load i32, i32* %710, align 4
  %712 = icmp slt i32 %709, %711
  br i1 %712, label %713, label %725

713:                                              ; preds = %708
  %714 = call float @urand()
  %715 = load float**, float*** %28, align 8
  %716 = load i64, i64* %43, align 8
  %717 = getelementptr inbounds float*, float** %715, i64 %716
  %718 = load float*, float** %717, align 8
  %719 = load i32, i32* %44, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds float, float* %718, i64 %720
  store float %714, float* %721, align 4
  br label %722

722:                                              ; preds = %713
  %723 = load i32, i32* %44, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %44, align 4
  br label %708

725:                                              ; preds = %708
  br label %726

726:                                              ; preds = %725
  %727 = load i64, i64* %43, align 8
  %728 = add nsw i64 %727, 1
  store i64 %728, i64* %43, align 8
  br label %702

729:                                              ; preds = %702
  store i64 0, i64* %45, align 8
  br label %730

730:                                              ; preds = %790, %729
  %731 = load i64, i64* %45, align 8
  %732 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %733 = load i64, i64* %732, align 8
  %734 = icmp slt i64 %731, %733
  br i1 %734, label %735, label %793

735:                                              ; preds = %730
  %736 = load i64, i64* %45, align 8
  %737 = icmp eq i64 %736, 0
  br i1 %737, label %738, label %739

738:                                              ; preds = %735
  store i64 0, i64* %46, align 8
  br label %744

739:                                              ; preds = %735
  %740 = call i32 @glibc_compat_rand()
  %741 = sext i32 %740 to i64
  %742 = load i64, i64* %5, align 8
  %743 = srem i64 %741, %742
  store i64 %743, i64* %46, align 8
  br label %744

744:                                              ; preds = %739, %738
  %745 = load float***, float**** %6, align 8
  %746 = load i64, i64* %46, align 8
  %747 = getelementptr inbounds float**, float*** %745, i64 %746
  %748 = load float**, float*** %747, align 8
  %749 = load %struct.Source*, %struct.Source** %4, align 8
  %750 = load i64, i64* %45, align 8
  %751 = getelementptr inbounds %struct.Source, %struct.Source* %749, i64 %750
  %752 = getelementptr inbounds %struct.Source, %struct.Source* %751, i32 0, i32 5
  store float** %748, float*** %752, align 8
  %753 = load float***, float**** %15, align 8
  %754 = load i64, i64* %46, align 8
  %755 = getelementptr inbounds float**, float*** %753, i64 %754
  %756 = load float**, float*** %755, align 8
  %757 = load %struct.Source*, %struct.Source** %4, align 8
  %758 = load i64, i64* %45, align 8
  %759 = getelementptr inbounds %struct.Source, %struct.Source* %757, i64 %758
  %760 = getelementptr inbounds %struct.Source, %struct.Source* %759, i32 0, i32 4
  store float** %756, float*** %760, align 8
  %761 = load float***, float**** %26, align 8
  %762 = load i64, i64* %45, align 8
  %763 = getelementptr inbounds float**, float*** %761, i64 %762
  %764 = load float**, float*** %763, align 8
  %765 = load %struct.Source*, %struct.Source** %4, align 8
  %766 = load i64, i64* %45, align 8
  %767 = getelementptr inbounds %struct.Source, %struct.Source* %765, i64 %766
  %768 = getelementptr inbounds %struct.Source, %struct.Source* %767, i32 0, i32 0
  store float** %764, float*** %768, align 8
  %769 = load float***, float**** %24, align 8
  %770 = load i64, i64* %45, align 8
  %771 = getelementptr inbounds float**, float*** %769, i64 %770
  %772 = load float**, float*** %771, align 8
  %773 = load %struct.Source*, %struct.Source** %4, align 8
  %774 = load i64, i64* %45, align 8
  %775 = getelementptr inbounds %struct.Source, %struct.Source* %773, i64 %774
  %776 = getelementptr inbounds %struct.Source, %struct.Source* %775, i32 0, i32 1
  store float** %772, float*** %776, align 8
  %777 = load float**, float*** %28, align 8
  %778 = load i64, i64* %45, align 8
  %779 = getelementptr inbounds float*, float** %777, i64 %778
  %780 = load float*, float** %779, align 8
  %781 = load %struct.Source*, %struct.Source** %4, align 8
  %782 = load i64, i64* %45, align 8
  %783 = getelementptr inbounds %struct.Source, %struct.Source* %781, i64 %782
  %784 = getelementptr inbounds %struct.Source, %struct.Source* %783, i32 0, i32 3
  store float* %780, float** %784, align 8
  %785 = call float @urand()
  %786 = load %struct.Source*, %struct.Source** %4, align 8
  %787 = load i64, i64* %45, align 8
  %788 = getelementptr inbounds %struct.Source, %struct.Source* %786, i64 %787
  %789 = getelementptr inbounds %struct.Source, %struct.Source* %788, i32 0, i32 2
  store float %785, float* %789, align 8
  br label %790

790:                                              ; preds = %744
  %791 = load i64, i64* %45, align 8
  %792 = add nsw i64 %791, 1
  store i64 %792, i64* %45, align 8
  br label %730

793:                                              ; preds = %730
  %794 = load float***, float**** %6, align 8
  %795 = bitcast float*** %794 to i8*
  call void @free(i8* %795) #6
  %796 = load float***, float**** %15, align 8
  %797 = bitcast float*** %796 to i8*
  call void @free(i8* %797) #6
  %798 = load float***, float**** %26, align 8
  %799 = bitcast float*** %798 to i8*
  call void @free(i8* %799) #6
  %800 = load float***, float**** %24, align 8
  %801 = bitcast float*** %800 to i8*
  call void @free(i8* %801) #6
  %802 = load float**, float*** %28, align 8
  %803 = bitcast float** %802 to i8*
  call void @free(i8* %803) #6
  %804 = load %struct.Source*, %struct.Source** %4, align 8
  ret %struct.Source* %804
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_sources(%struct.Input* byval(%struct.Input) align 8 %0, %struct.Source* %1) #0 {
  %3 = alloca %struct.Source*, align 8
  store %struct.Source* %1, %struct.Source** %3, align 8
  %4 = load %struct.Source*, %struct.Source** %3, align 8
  %5 = getelementptr inbounds %struct.Source, %struct.Source* %4, i64 0
  %6 = getelementptr inbounds %struct.Source, %struct.Source* %5, i32 0, i32 4
  %7 = load float**, float*** %6, align 8
  %8 = getelementptr inbounds float*, float** %7, i64 0
  %9 = load float*, float** %8, align 8
  %10 = bitcast float* %9 to i8*
  call void @free(i8* %10) #6
  %11 = load %struct.Source*, %struct.Source** %3, align 8
  %12 = getelementptr inbounds %struct.Source, %struct.Source* %11, i64 0
  %13 = getelementptr inbounds %struct.Source, %struct.Source* %12, i32 0, i32 4
  %14 = load float**, float*** %13, align 8
  %15 = bitcast float** %14 to i8*
  call void @free(i8* %15) #6
  %16 = load %struct.Source*, %struct.Source** %3, align 8
  %17 = getelementptr inbounds %struct.Source, %struct.Source* %16, i64 0
  %18 = getelementptr inbounds %struct.Source, %struct.Source* %17, i32 0, i32 0
  %19 = load float**, float*** %18, align 8
  %20 = getelementptr inbounds float*, float** %19, i64 0
  %21 = load float*, float** %20, align 8
  %22 = bitcast float* %21 to i8*
  call void @free(i8* %22) #6
  %23 = load %struct.Source*, %struct.Source** %3, align 8
  %24 = getelementptr inbounds %struct.Source, %struct.Source* %23, i64 0
  %25 = getelementptr inbounds %struct.Source, %struct.Source* %24, i32 0, i32 0
  %26 = load float**, float*** %25, align 8
  %27 = bitcast float** %26 to i8*
  call void @free(i8* %27) #6
  %28 = load %struct.Source*, %struct.Source** %3, align 8
  %29 = getelementptr inbounds %struct.Source, %struct.Source* %28, i64 0
  %30 = getelementptr inbounds %struct.Source, %struct.Source* %29, i32 0, i32 5
  %31 = load float**, float*** %30, align 8
  %32 = getelementptr inbounds float*, float** %31, i64 0
  %33 = load float*, float** %32, align 8
  %34 = bitcast float* %33 to i8*
  call void @free(i8* %34) #6
  %35 = load %struct.Source*, %struct.Source** %3, align 8
  %36 = getelementptr inbounds %struct.Source, %struct.Source* %35, i64 0
  %37 = getelementptr inbounds %struct.Source, %struct.Source* %36, i32 0, i32 5
  %38 = load float**, float*** %37, align 8
  %39 = bitcast float** %38 to i8*
  call void @free(i8* %39) #6
  %40 = load %struct.Source*, %struct.Source** %3, align 8
  %41 = getelementptr inbounds %struct.Source, %struct.Source* %40, i64 0
  %42 = getelementptr inbounds %struct.Source, %struct.Source* %41, i32 0, i32 1
  %43 = load float**, float*** %42, align 8
  %44 = getelementptr inbounds float*, float** %43, i64 0
  %45 = load float*, float** %44, align 8
  %46 = bitcast float* %45 to i8*
  call void @free(i8* %46) #6
  %47 = load %struct.Source*, %struct.Source** %3, align 8
  %48 = getelementptr inbounds %struct.Source, %struct.Source* %47, i64 0
  %49 = getelementptr inbounds %struct.Source, %struct.Source* %48, i32 0, i32 1
  %50 = load float**, float*** %49, align 8
  %51 = bitcast float** %50 to i8*
  call void @free(i8* %51) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_Input_struct(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.83, i64 0, i64 0))
  %3 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 0
  %4 = load i32, i32* %3, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %4)
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %7)
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %13)
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 5
  %19 = load float, float* %18, align 4
  %20 = fpext float %19 to double
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %20)
  %22 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %23 = load float, float* %22, align 8
  %24 = fpext float %23 to double
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %24)
  %26 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 11
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %39)
  %41 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  %42 = load float, float* %41, align 8
  %43 = fpext float %42 to double
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %43)
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 14
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %47)
  %49 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 15
  %50 = load float, float* %49, align 8
  %51 = fpext float %50 to double
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %51)
  %53 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 16
  %54 = load float, float* %53, align 4
  %55 = fpext float %54 to double
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.85, i64 0, i64 0), double %55)
  %57 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 17
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %58)
  %60 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %61)
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %67)
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %70)
  %72 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 22
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.84, i64 0, i64 0), i32 %73)
  %75 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 23
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %76)
  %78 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.86, i64 0, i64 0), i64 %79)
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.87, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gen_norm_pts(float %0, float %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store float %0, float* %4, align 4
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5.88, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.89, i64 0, i64 0))
  store %struct._IO_FILE* %10, %struct._IO_FILE** %7, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7.90, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %14 = load float, float* %4, align 4
  %15 = fpext float %14 to double
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.91, i64 0, i64 0), double %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %18 = load float, float* %5, align 4
  %19 = fpext float %18 to double
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9.92, i64 0, i64 0), double %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10.93, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load float, float* %4, align 4
  %29 = load float, float* %5, align 4
  %30 = call float @nrand(float %28, float %29)
  store float %30, float* %9, align 4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %32 = load float, float* %9, align 4
  %33 = fpext float %32 to double
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.94, i64 0, i64 0), double %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %40 = call i32 @fclose(%struct._IO_FILE* %39)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track2D* @generate_2D_tracks(%struct.Input* byval(%struct.Input) align 8 %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i32, align 4
  store i64* %1, i64** %3, align 8
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %7 = load i64, i64* %6, align 8
  %8 = mul i64 %7, 32
  %9 = call noalias i8* @malloc(i64 %8) #6
  %10 = bitcast i8* %9 to %struct.Track2D*
  store %struct.Track2D* %10, %struct.Track2D** %4, align 8
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %12 = load i64, i64* %11, align 8
  %13 = mul i64 %12, 32
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %15, %13
  store i64 %16, i64* %14, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = call float @urand()
  %25 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %25, i64 %27
  %29 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %28, i32 0, i32 0
  store float %24, float* %29, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %17

33:                                               ; preds = %17
  %34 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %35 = load i64*, i64** %3, align 8
  call void @generate_2D_segments(%struct.Input* byval(%struct.Input) align 8 %0, %struct.Track2D* %34, i64* %35)
  %36 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  ret %struct.Track2D* %36
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_2D_segments(%struct.Input* byval(%struct.Input) align 8 %0, %struct.Track2D* %1, i64* %2) #0 {
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Segment*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.Track2D* %1, %struct.Track2D** %4, align 8
  store i64* %2, i64** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %31, %3
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = call i64 @segments_per_2D_track_distribution(%struct.Input* byval(%struct.Input) align 8 %0)
  %20 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %20, i64 %21
  %23 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %22, i32 0, i32 1
  store i64 %19, i64* %23, align 8
  %24 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %24, i64 %25
  %27 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add nsw i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %18
  %32 = load i64, i64* %7, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %13

34:                                               ; preds = %13
  %35 = load i64, i64* %6, align 8
  %36 = mul i64 %35, 16
  %37 = call noalias i8* @malloc(i64 %36) #6
  %38 = bitcast i8* %37 to %struct.Segment*
  store %struct.Segment* %38, %struct.Segment** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = mul i64 %39, 16
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, %40
  store i64 %43, i64* %41, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %44

44:                                               ; preds = %64, %34
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %44
  %50 = load %struct.Segment*, %struct.Segment** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.Segment, %struct.Segment* %50, i64 %51
  %53 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %53, i64 %54
  %56 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %55, i32 0, i32 2
  store %struct.Segment* %52, %struct.Segment** %56, align 8
  %57 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %57, i64 %58
  %60 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %49
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %44

67:                                               ; preds = %44
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %73, label %109

73:                                               ; preds = %68
  store i64 0, i64* %12, align 8
  br label %74

74:                                               ; preds = %102, %73
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %76, i64 %77
  %79 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %75, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = call float @urand()
  %84 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 13
  %85 = load float, float* %84, align 8
  %86 = fmul float %83, %85
  %87 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %88 = load i64, i64* %11, align 8
  %89 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %87, i64 %88
  %90 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = sitofp i64 %91 to float
  %93 = fdiv float %86, %92
  %94 = load %struct.Track2D*, %struct.Track2D** %4, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %94, i64 %95
  %97 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %96, i32 0, i32 2
  %98 = load %struct.Segment*, %struct.Segment** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.Segment, %struct.Segment* %98, i64 %99
  %101 = getelementptr inbounds %struct.Segment, %struct.Segment* %100, i32 0, i32 0
  store float %93, float* %101, align 8
  br label %102

102:                                              ; preds = %82
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %74

105:                                              ; preds = %74
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %11, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %11, align 8
  br label %68

109:                                              ; preds = %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @segments_per_2D_track_distribution(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %3 = load i64, i64* %2, align 8
  %4 = sitofp i64 %3 to float
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = call double @sqrt(double %7) #6
  %9 = fptrunc double %8 to float
  %10 = call float @nrand(float %4, float %9)
  %11 = fptosi float %10 to i64
  ret i64 %11
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_2D_tracks(%struct.Track2D* %0) #0 {
  %2 = alloca %struct.Track2D*, align 8
  store %struct.Track2D* %0, %struct.Track2D** %2, align 8
  %3 = load %struct.Track2D*, %struct.Track2D** %2, align 8
  %4 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %3, i64 0
  %5 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %4, i32 0, i32 2
  %6 = load %struct.Segment*, %struct.Segment** %5, align 8
  %7 = bitcast %struct.Segment* %6 to i8*
  call void @free(i8* %7) #6
  %8 = load %struct.Track2D*, %struct.Track2D** %2, align 8
  %9 = bitcast %struct.Track2D* %8 to i8*
  call void @free(i8* %9) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track*** @generate_tracks(%struct.Input* byval(%struct.Input) align 8 %0, %struct.Track2D* %1, i64* %2) #0 {
  %4 = alloca %struct.Track2D*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.Track***, align 8
  %7 = alloca %struct.Track**, align 8
  %8 = alloca %struct.Track*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca float*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.Track2D* %1, %struct.Track2D** %4, align 8
  store i64* %2, i64** %5, align 8
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #6
  %24 = bitcast i8* %23 to %struct.Track***
  store %struct.Track*** %24, %struct.Track**** %6, align 8
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %26, 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %32, %35
  %37 = mul i64 %36, 8
  %38 = call noalias i8* @malloc(i64 %37) #6
  %39 = bitcast i8* %38 to %struct.Track**
  store %struct.Track** %39, %struct.Track*** %7, align 8
  %40 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %41, %44
  %46 = mul i64 %45, 8
  %47 = load i64*, i64** %5, align 8
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, %46
  store i64 %49, i64* %47, align 8
  %50 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 40
  %53 = call noalias i8* @malloc(i64 %52) #6
  %54 = bitcast i8* %53 to %struct.Track*
  store %struct.Track* %54, %struct.Track** %8, align 8
  %55 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %56 = load i64, i64* %55, align 8
  %57 = mul i64 %56, 40
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, %57
  store i64 %60, i64* %58, align 8
  store i64 0, i64* %9, align 8
  br label %61

61:                                               ; preds = %77, %3
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.Track**, %struct.Track*** %7, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = mul nsw i64 %68, %71
  %73 = getelementptr inbounds %struct.Track*, %struct.Track** %67, i64 %72
  %74 = load %struct.Track***, %struct.Track**** %6, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.Track**, %struct.Track*** %74, i64 %75
  store %struct.Track** %73, %struct.Track*** %76, align 8
  br label %77

77:                                               ; preds = %66
  %78 = load i64, i64* %9, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %9, align 8
  br label %61

80:                                               ; preds = %61
  store i64 0, i64* %10, align 8
  br label %81

81:                                               ; preds = %118, %80
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %86, label %121

86:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %114, %86
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %87
  %93 = load %struct.Track*, %struct.Track** %8, align 8
  %94 = load i64, i64* %10, align 8
  %95 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %94, %97
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %101, %104
  %106 = getelementptr inbounds %struct.Track, %struct.Track* %93, i64 %105
  %107 = load %struct.Track***, %struct.Track**** %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds %struct.Track**, %struct.Track*** %107, i64 %108
  %110 = load %struct.Track**, %struct.Track*** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.Track*, %struct.Track** %110, i64 %112
  store %struct.Track* %106, %struct.Track** %113, align 8
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %87

117:                                              ; preds = %87
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %81

121:                                              ; preds = %81
  %122 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %123 = load i64, i64* %122, align 8
  %124 = mul nsw i64 2, %123
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = mul nsw i64 %124, %127
  %129 = mul i64 %128, 4
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call noalias i8* @malloc(i64 %130) #6
  %132 = bitcast i8* %131 to float*
  store float* %132, float** %13, align 8
  %133 = load i64, i64* %12, align 8
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %134, align 8
  %136 = add i64 %135, %133
  store i64 %136, i64* %134, align 8
  store i64 0, i64* %14, align 8
  %137 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = mul nsw i64 %138, %141
  store i64 %142, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %143

143:                                              ; preds = %307, %121
  %144 = load i64, i64* %16, align 8
  %145 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %144, %146
  br i1 %147, label %148, label %310

148:                                              ; preds = %143
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %303, %148
  %150 = load i32, i32* %17, align 4
  %151 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %306

154:                                              ; preds = %149
  store i32 0, i32* %18, align 4
  br label %155

155:                                              ; preds = %299, %154
  %156 = load i32, i32* %18, align 4
  %157 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %156, %158
  br i1 %159, label %160, label %302

160:                                              ; preds = %155
  %161 = load i32, i32* %17, align 4
  %162 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %163, 2
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %168 = load float, float* %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sitofp i32 %169 to float
  %171 = fmul float %168, %170
  %172 = load %struct.Track***, %struct.Track**** %6, align 8
  %173 = load i64, i64* %16, align 8
  %174 = getelementptr inbounds %struct.Track**, %struct.Track*** %172, i64 %173
  %175 = load %struct.Track**, %struct.Track*** %174, align 8
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.Track*, %struct.Track** %175, i64 %177
  %179 = load %struct.Track*, %struct.Track** %178, align 8
  %180 = load i32, i32* %18, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.Track, %struct.Track* %179, i64 %181
  %183 = getelementptr inbounds %struct.Track, %struct.Track* %182, i32 0, i32 1
  store float %171, float* %183, align 4
  br label %203

184:                                              ; preds = %160
  %185 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %186 = load float, float* %185, align 8
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 1
  %189 = sitofp i32 %188 to float
  %190 = fmul float %186, %189
  %191 = load %struct.Track***, %struct.Track**** %6, align 8
  %192 = load i64, i64* %16, align 8
  %193 = getelementptr inbounds %struct.Track**, %struct.Track*** %191, i64 %192
  %194 = load %struct.Track**, %struct.Track*** %193, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.Track*, %struct.Track** %194, i64 %196
  %198 = load %struct.Track*, %struct.Track** %197, align 8
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.Track, %struct.Track* %198, i64 %200
  %202 = getelementptr inbounds %struct.Track, %struct.Track* %201, i32 0, i32 1
  store float %190, float* %202, align 4
  br label %203

203:                                              ; preds = %184, %166
  %204 = call float @urand()
  %205 = load %struct.Track***, %struct.Track**** %6, align 8
  %206 = load i64, i64* %16, align 8
  %207 = getelementptr inbounds %struct.Track**, %struct.Track*** %205, i64 %206
  %208 = load %struct.Track**, %struct.Track*** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.Track*, %struct.Track** %208, i64 %210
  %212 = load %struct.Track*, %struct.Track** %211, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.Track, %struct.Track* %212, i64 %214
  %216 = getelementptr inbounds %struct.Track, %struct.Track* %215, i32 0, i32 0
  store float %204, float* %216, align 8
  %217 = load float*, float** %13, align 8
  %218 = load i64, i64* %14, align 8
  %219 = getelementptr inbounds float, float* %217, i64 %218
  %220 = load %struct.Track***, %struct.Track**** %6, align 8
  %221 = load i64, i64* %16, align 8
  %222 = getelementptr inbounds %struct.Track**, %struct.Track*** %220, i64 %221
  %223 = load %struct.Track**, %struct.Track*** %222, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.Track*, %struct.Track** %223, i64 %225
  %227 = load %struct.Track*, %struct.Track** %226, align 8
  %228 = load i32, i32* %18, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.Track, %struct.Track* %227, i64 %229
  %231 = getelementptr inbounds %struct.Track, %struct.Track* %230, i32 0, i32 4
  store float* %219, float** %231, align 8
  %232 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* %14, align 8
  %236 = add i64 %235, %234
  store i64 %236, i64* %14, align 8
  %237 = load float*, float** %13, align 8
  %238 = load i64, i64* %14, align 8
  %239 = getelementptr inbounds float, float* %237, i64 %238
  %240 = load %struct.Track***, %struct.Track**** %6, align 8
  %241 = load i64, i64* %16, align 8
  %242 = getelementptr inbounds %struct.Track**, %struct.Track*** %240, i64 %241
  %243 = load %struct.Track**, %struct.Track*** %242, align 8
  %244 = load i32, i32* %17, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.Track*, %struct.Track** %243, i64 %245
  %247 = load %struct.Track*, %struct.Track** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.Track, %struct.Track* %247, i64 %249
  %251 = getelementptr inbounds %struct.Track, %struct.Track* %250, i32 0, i32 5
  store float* %239, float** %251, align 8
  %252 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = load i64, i64* %14, align 8
  %256 = add i64 %255, %254
  store i64 %256, i64* %14, align 8
  store i32 0, i32* %19, align 4
  br label %257

257:                                              ; preds = %295, %203
  %258 = load i32, i32* %19, align 4
  %259 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %258, %260
  br i1 %261, label %262, label %298

262:                                              ; preds = %257
  %263 = load %struct.Track***, %struct.Track**** %6, align 8
  %264 = load i64, i64* %16, align 8
  %265 = getelementptr inbounds %struct.Track**, %struct.Track*** %263, i64 %264
  %266 = load %struct.Track**, %struct.Track*** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.Track*, %struct.Track** %266, i64 %268
  %270 = load %struct.Track*, %struct.Track** %269, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.Track, %struct.Track* %270, i64 %272
  %274 = getelementptr inbounds %struct.Track, %struct.Track* %273, i32 0, i32 4
  %275 = load float*, float** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  store float 0.000000e+00, float* %278, align 4
  %279 = load %struct.Track***, %struct.Track**** %6, align 8
  %280 = load i64, i64* %16, align 8
  %281 = getelementptr inbounds %struct.Track**, %struct.Track*** %279, i64 %280
  %282 = load %struct.Track**, %struct.Track*** %281, align 8
  %283 = load i32, i32* %17, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.Track*, %struct.Track** %282, i64 %284
  %286 = load %struct.Track*, %struct.Track** %285, align 8
  %287 = load i32, i32* %18, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.Track, %struct.Track* %286, i64 %288
  %290 = getelementptr inbounds %struct.Track, %struct.Track* %289, i32 0, i32 5
  %291 = load float*, float** %290, align 8
  %292 = load i32, i32* %19, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds float, float* %291, i64 %293
  store float 0.000000e+00, float* %294, align 4
  br label %295

295:                                              ; preds = %262
  %296 = load i32, i32* %19, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %19, align 4
  br label %257

298:                                              ; preds = %257
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %18, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %18, align 4
  br label %155

302:                                              ; preds = %155
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %17, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %17, align 4
  br label %149

306:                                              ; preds = %149
  br label %307

307:                                              ; preds = %306
  %308 = load i64, i64* %16, align 8
  %309 = add nsw i64 %308, 1
  store i64 %309, i64* %16, align 8
  br label %143

310:                                              ; preds = %143
  %311 = load %struct.Track***, %struct.Track**** %6, align 8
  ret %struct.Track*** %311
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_tracks(%struct.Track*** %0) #0 {
  %2 = alloca %struct.Track***, align 8
  store %struct.Track*** %0, %struct.Track**** %2, align 8
  %3 = load %struct.Track***, %struct.Track**** %2, align 8
  %4 = bitcast %struct.Track*** %3 to i8*
  call void @free(i8* %4) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float* @generate_polar_angles(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 4
  %8 = call noalias i8* @malloc(i64 %7) #6
  %9 = bitcast i8* %8 to float*
  store float* %9, float** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %29, %1
  %11 = load i32, i32* %3, align 4
  %12 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 5.000000e-01
  %19 = fmul double 0x400921FB54442D18, %18
  %20 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %21 = load i32, i32* %20, align 8
  %22 = sitofp i32 %21 to double
  %23 = fdiv double %19, %22
  %24 = fptrunc double %23 to float
  %25 = load float*, float** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  store float %24, float* %28, align 4
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %10

32:                                               ; preds = %10
  %33 = load float*, float** %2, align 8
  ret float* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Track2D* @load_OpenMOC_tracks(i8* %0, i1 zeroext %1, %struct.Input* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.Input*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca double, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca double, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.Track2D*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct._G_fpos_t, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca %struct.Segment*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  %45 = zext i1 %1 to i8
  store i8 %45, i8* %6, align 1
  store %struct.Input* %2, %struct.Input** %7, align 8
  store i64* %3, i64** %8, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = call %struct._IO_FILE* @fopen(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i64 0, i64 0))
  store %struct._IO_FILE* %47, %struct._IO_FILE** %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.108, i64 0, i64 0), i8* %48)
  %50 = bitcast i32* %11 to i8*
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %52 = call i64 @fread(i8* %50, i64 4, i64 1, %struct._IO_FILE* %51)
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = call i8* @llvm.stacksave()
  store i8* %56, i8** %12, align 8
  %57 = alloca i8, i64 %55, align 16
  store i64 %55, i64* %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 1, %59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %62 = call i64 @fread(i8* %57, i64 %60, i64 1, %struct._IO_FILE* %61)
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %9, align 4
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.109, i64 0, i64 0))
  %65 = load %struct.Input*, %struct.Input** %7, align 8
  %66 = getelementptr inbounds %struct.Input, %struct.Input* %65, i32 0, i32 7
  %67 = bitcast i32* %66 to i8*
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %69 = call i64 @fread(i8* %67, i64 4, i64 1, %struct._IO_FILE* %68)
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  %71 = bitcast double* %14 to i8*
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %73 = call i64 @fread(i8* %71, i64 8, i64 1, %struct._IO_FILE* %72)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load double, double* %14, align 8
  %76 = fptrunc double %75 to float
  %77 = load %struct.Input*, %struct.Input** %7, align 8
  %78 = getelementptr inbounds %struct.Input, %struct.Input* %77, i32 0, i32 5
  store float %76, float* %78, align 4
  %79 = load %struct.Input*, %struct.Input** %7, align 8
  %80 = getelementptr inbounds %struct.Input, %struct.Input* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = alloca i32, i64 %82, align 16
  store i64 %82, i64* %15, align 8
  %84 = load %struct.Input*, %struct.Input** %7, align 8
  %85 = getelementptr inbounds %struct.Input, %struct.Input* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = zext i32 %86 to i64
  %88 = alloca i32, i64 %87, align 16
  store i64 %87, i64* %16, align 8
  %89 = load %struct.Input*, %struct.Input** %7, align 8
  %90 = getelementptr inbounds %struct.Input, %struct.Input* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = zext i32 %91 to i64
  %93 = alloca i32, i64 %92, align 16
  store i64 %92, i64* %17, align 8
  %94 = load %struct.Input*, %struct.Input** %7, align 8
  %95 = getelementptr inbounds %struct.Input, %struct.Input* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = zext i32 %96 to i64
  %98 = alloca double, i64 %97, align 16
  store i64 %97, i64* %18, align 8
  %99 = bitcast i32* %83 to i8*
  %100 = load %struct.Input*, %struct.Input** %7, align 8
  %101 = getelementptr inbounds %struct.Input, %struct.Input* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %105 = call i64 @fread(i8* %99, i64 4, i64 %103, %struct._IO_FILE* %104)
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %9, align 4
  %107 = bitcast i32* %88 to i8*
  %108 = load %struct.Input*, %struct.Input** %7, align 8
  %109 = getelementptr inbounds %struct.Input, %struct.Input* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %113 = call i64 @fread(i8* %107, i64 4, i64 %111, %struct._IO_FILE* %112)
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %9, align 4
  %115 = bitcast i32* %93 to i8*
  %116 = load %struct.Input*, %struct.Input** %7, align 8
  %117 = getelementptr inbounds %struct.Input, %struct.Input* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %121 = call i64 @fread(i8* %115, i64 4, i64 %119, %struct._IO_FILE* %120)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %9, align 4
  %123 = bitcast double* %98 to i8*
  %124 = load %struct.Input*, %struct.Input** %7, align 8
  %125 = getelementptr inbounds %struct.Input, %struct.Input* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %129 = call i64 @fread(i8* %123, i64 8, i64 %127, %struct._IO_FILE* %128)
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %9, align 4
  %131 = load %struct.Input*, %struct.Input** %7, align 8
  %132 = getelementptr inbounds %struct.Input, %struct.Input* %131, i32 0, i32 18
  store i64 0, i64* %132, align 8
  store i32 0, i32* %32, align 4
  br label %133

133:                                              ; preds = %149, %4
  %134 = load i32, i32* %32, align 4
  %135 = load %struct.Input*, %struct.Input** %7, align 8
  %136 = getelementptr inbounds %struct.Input, %struct.Input* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %133
  %140 = load i32, i32* %32, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %83, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.Input*, %struct.Input** %7, align 8
  %146 = getelementptr inbounds %struct.Input, %struct.Input* %145, i32 0, i32 18
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %32, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %32, align 4
  br label %133

152:                                              ; preds = %133
  %153 = load %struct.Input*, %struct.Input** %7, align 8
  %154 = getelementptr inbounds %struct.Input, %struct.Input* %153, i32 0, i32 18
  %155 = load i64, i64* %154, align 8
  %156 = mul i64 %155, 32
  %157 = call noalias i8* @malloc(i64 %156) #6
  %158 = bitcast i8* %157 to %struct.Track2D*
  store %struct.Track2D* %158, %struct.Track2D** %33, align 8
  %159 = load %struct.Input*, %struct.Input** %7, align 8
  %160 = getelementptr inbounds %struct.Input, %struct.Input* %159, i32 0, i32 18
  %161 = load i64, i64* %160, align 8
  %162 = mul i64 %161, 32
  %163 = load i64*, i64** %8, align 8
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %162
  store i64 %165, i64* %163, align 8
  store i64 0, i64* %34, align 8
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %167 = call i32 @fgetpos(%struct._IO_FILE* %166, %struct._G_fpos_t* %35)
  store i32 0, i32* %36, align 4
  br label %168

168:                                              ; preds = %214, %152
  %169 = load i32, i32* %36, align 4
  %170 = load %struct.Input*, %struct.Input** %7, align 8
  %171 = getelementptr inbounds %struct.Input, %struct.Input* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %168
  store i32 0, i32* %37, align 4
  br label %175

175:                                              ; preds = %210, %174
  %176 = load i32, i32* %37, align 4
  %177 = load i32, i32* %36, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %83, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %176, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %175
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %184 = call i32 @fseek(%struct._IO_FILE* %183, i64 44, i32 1)
  %185 = bitcast i32* %25 to i8*
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %187 = call i64 @fread(i8* %185, i64 4, i64 1, %struct._IO_FILE* %186)
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %25, align 4
  %190 = sext i32 %189 to i64
  %191 = load i64, i64* %34, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %34, align 8
  store i32 0, i32* %38, align 4
  br label %193

193:                                              ; preds = %206, %182
  %194 = load i32, i32* %38, align 4
  %195 = load i32, i32* %25, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %209

197:                                              ; preds = %193
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %199 = call i32 @fseek(%struct._IO_FILE* %198, i64 16, i32 1)
  %200 = load i8, i8* %6, align 1
  %201 = trunc i8 %200 to i1
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %204 = call i32 @fseek(%struct._IO_FILE* %203, i64 8, i32 1)
  br label %205

205:                                              ; preds = %202, %197
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %38, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %38, align 4
  br label %193

209:                                              ; preds = %193
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %37, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %37, align 4
  br label %175

213:                                              ; preds = %175
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %36, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %36, align 4
  br label %168

217:                                              ; preds = %168
  %218 = load i64, i64* %34, align 8
  %219 = mul i64 %218, 16
  %220 = call noalias i8* @malloc(i64 %219) #6
  %221 = bitcast i8* %220 to %struct.Segment*
  store %struct.Segment* %221, %struct.Segment** %39, align 8
  %222 = load i64, i64* %34, align 8
  %223 = mul i64 %222, 16
  %224 = load i64*, i64** %8, align 8
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, %223
  store i64 %226, i64* %224, align 8
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %228 = call i32 @fsetpos(%struct._IO_FILE* %227, %struct._G_fpos_t* %35)
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  br label %229

229:                                              ; preds = %367, %217
  %230 = load i32, i32* %42, align 4
  %231 = load %struct.Input*, %struct.Input** %7, align 8
  %232 = getelementptr inbounds %struct.Input, %struct.Input* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %230, %233
  br i1 %234, label %235, label %370

235:                                              ; preds = %229
  store i32 0, i32* %43, align 4
  br label %236

236:                                              ; preds = %363, %235
  %237 = load i32, i32* %43, align 4
  %238 = load i32, i32* %42, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %83, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp slt i32 %237, %241
  br i1 %242, label %243, label %366

243:                                              ; preds = %236
  %244 = bitcast double* %19 to i8*
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %246 = call i64 @fread(i8* %244, i64 8, i64 1, %struct._IO_FILE* %245)
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %9, align 4
  %248 = bitcast double* %20 to i8*
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %250 = call i64 @fread(i8* %248, i64 8, i64 1, %struct._IO_FILE* %249)
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %9, align 4
  %252 = bitcast double* %21 to i8*
  %253 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %254 = call i64 @fread(i8* %252, i64 8, i64 1, %struct._IO_FILE* %253)
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %9, align 4
  %256 = bitcast double* %22 to i8*
  %257 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %258 = call i64 @fread(i8* %256, i64 8, i64 1, %struct._IO_FILE* %257)
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %9, align 4
  %260 = bitcast double* %23 to i8*
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %262 = call i64 @fread(i8* %260, i64 8, i64 1, %struct._IO_FILE* %261)
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %9, align 4
  %264 = bitcast i32* %24 to i8*
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %266 = call i64 @fread(i8* %264, i64 4, i64 1, %struct._IO_FILE* %265)
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %9, align 4
  %268 = bitcast i32* %25 to i8*
  %269 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %270 = call i64 @fread(i8* %268, i64 4, i64 1, %struct._IO_FILE* %269)
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %9, align 4
  %272 = load i32, i32* %25, align 4
  %273 = sext i32 %272 to i64
  %274 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %275 = load i32, i32* %40, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %274, i64 %276
  %278 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %277, i32 0, i32 1
  store i64 %273, i64* %278, align 8
  %279 = load %struct.Segment*, %struct.Segment** %39, align 8
  %280 = load i32, i32* %41, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.Segment, %struct.Segment* %279, i64 %281
  %283 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %284 = load i32, i32* %40, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %283, i64 %285
  %287 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %286, i32 0, i32 2
  store %struct.Segment* %282, %struct.Segment** %287, align 8
  %288 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %289 = load i32, i32* %40, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %288, i64 %290
  %292 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = load i32, i32* %41, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %293
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %41, align 4
  %298 = call float @urand()
  %299 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %300 = load i32, i32* %40, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %299, i64 %301
  %303 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %302, i32 0, i32 0
  store float %298, float* %303, align 8
  store i32 0, i32* %44, align 4
  br label %304

304:                                              ; preds = %357, %243
  %305 = load i32, i32* %44, align 4
  %306 = load i32, i32* %25, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %360

308:                                              ; preds = %304
  %309 = bitcast double* %26 to i8*
  %310 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %311 = call i64 @fread(i8* %309, i64 8, i64 1, %struct._IO_FILE* %310)
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %9, align 4
  %313 = bitcast i32* %27 to i8*
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %315 = call i64 @fread(i8* %313, i64 4, i64 1, %struct._IO_FILE* %314)
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %9, align 4
  %317 = bitcast i32* %28 to i8*
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %319 = call i64 @fread(i8* %317, i64 4, i64 1, %struct._IO_FILE* %318)
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %9, align 4
  %321 = load double, double* %26, align 8
  %322 = fptrunc double %321 to float
  %323 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %324 = load i32, i32* %40, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %323, i64 %325
  %327 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %326, i32 0, i32 2
  %328 = load %struct.Segment*, %struct.Segment** %327, align 8
  %329 = load i32, i32* %44, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.Segment, %struct.Segment* %328, i64 %330
  %332 = getelementptr inbounds %struct.Segment, %struct.Segment* %331, i32 0, i32 0
  store float %322, float* %332, align 8
  %333 = load i32, i32* %28, align 4
  %334 = sext i32 %333 to i64
  %335 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %336 = load i32, i32* %40, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %335, i64 %337
  %339 = getelementptr inbounds %struct.Track2D, %struct.Track2D* %338, i32 0, i32 2
  %340 = load %struct.Segment*, %struct.Segment** %339, align 8
  %341 = load i32, i32* %44, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.Segment, %struct.Segment* %340, i64 %342
  %344 = getelementptr inbounds %struct.Segment, %struct.Segment* %343, i32 0, i32 1
  store i64 %334, i64* %344, align 8
  %345 = load i8, i8* %6, align 1
  %346 = trunc i8 %345 to i1
  br i1 %346, label %347, label %356

347:                                              ; preds = %308
  %348 = bitcast i32* %29 to i8*
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %350 = call i64 @fread(i8* %348, i64 4, i64 1, %struct._IO_FILE* %349)
  %351 = trunc i64 %350 to i32
  store i32 %351, i32* %9, align 4
  %352 = bitcast i32* %30 to i8*
  %353 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %354 = call i64 @fread(i8* %352, i64 4, i64 1, %struct._IO_FILE* %353)
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %9, align 4
  br label %356

356:                                              ; preds = %347, %308
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %44, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %44, align 4
  br label %304

360:                                              ; preds = %304
  %361 = load i32, i32* %40, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %40, align 4
  br label %363

363:                                              ; preds = %360
  %364 = load i32, i32* %43, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %43, align 4
  br label %236

366:                                              ; preds = %236
  br label %367

367:                                              ; preds = %366
  %368 = load i32, i32* %42, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %42, align 4
  br label %229

370:                                              ; preds = %229
  %371 = load i64, i64* %34, align 8
  %372 = load %struct.Input*, %struct.Input** %7, align 8
  %373 = getelementptr inbounds %struct.Input, %struct.Input* %372, i32 0, i32 18
  %374 = load i64, i64* %373, align 8
  %375 = sdiv i64 %371, %374
  %376 = load %struct.Input*, %struct.Input** %7, align 8
  %377 = getelementptr inbounds %struct.Input, %struct.Input* %376, i32 0, i32 12
  store i64 %375, i64* %377, align 8
  %378 = load %struct.Input*, %struct.Input** %7, align 8
  %379 = getelementptr inbounds %struct.Input, %struct.Input* %378, i32 0, i32 18
  %380 = load i64, i64* %379, align 8
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.110, i64 0, i64 0), i64 %380)
  %382 = load %struct.Input*, %struct.Input** %7, align 8
  %383 = getelementptr inbounds %struct.Input, %struct.Input* %382, i32 0, i32 18
  %384 = load i64, i64* %383, align 8
  %385 = load %struct.Input*, %struct.Input** %7, align 8
  %386 = getelementptr inbounds %struct.Input, %struct.Input* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 8
  %388 = sext i32 %387 to i64
  %389 = mul nsw i64 %384, %388
  %390 = load %struct.Input*, %struct.Input** %7, align 8
  %391 = getelementptr inbounds %struct.Input, %struct.Input* %390, i32 0, i32 19
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = mul nsw i64 %389, %393
  %395 = load %struct.Input*, %struct.Input** %7, align 8
  %396 = getelementptr inbounds %struct.Input, %struct.Input* %395, i32 0, i32 20
  store i64 %394, i64* %396, align 8
  %397 = load %struct.Input*, %struct.Input** %7, align 8
  %398 = getelementptr inbounds %struct.Input, %struct.Input* %397, i32 0, i32 20
  %399 = load i64, i64* %398, align 8
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.111, i64 0, i64 0), i64 %399)
  %401 = load i64, i64* %34, align 8
  %402 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5.112, i64 0, i64 0), i64 %401)
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %404 = call i32 @fclose(%struct._IO_FILE* %403)
  %405 = load %struct.Track2D*, %struct.Track2D** %33, align 8
  %406 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %406)
  ret %struct.Track2D* %405
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

declare dso_local i32 @fgetpos(%struct._IO_FILE*, %struct._G_fpos_t*) #3

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare dso_local i32 @fsetpos(%struct._IO_FILE*, %struct._G_fpos_t*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: noinline nounwind uwtable
define dso_local float @urand() #0 {
  %1 = call i32 @glibc_compat_rand()
  %2 = sitofp i32 %1 to float
  %3 = fdiv float %2, 0x41E0000000000000
  ret float %3
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @nrand(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %8 = call float @urand()
  store float %8, float* %5, align 4
  %9 = call float @urand()
  store float %9, float* %6, align 4
  %10 = load float, float* %5, align 4
  %11 = fpext float %10 to double
  %12 = call double @log(double %11) #6
  %13 = fmul double -2.000000e+00, %12
  %14 = call double @sqrt(double %13) #6
  %15 = load float, float* %6, align 4
  %16 = fpext float %15 to double
  %17 = fmul double 0x401921FB54442D18, %16
  %18 = call double @cos(double %17) #6
  %19 = fmul double %14, %18
  %20 = fptrunc double %19 to float
  store float %20, float* %7, align 4
  %21 = load float, float* %7, align 4
  %22 = load float, float* %4, align 4
  %23 = fmul float %21, %22
  %24 = load float, float* %3, align 4
  %25 = fadd float %23, %24
  ret float %25
}

; Function Attrs: nounwind
declare dso_local double @log(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local float @pairwise_sum(float* %0, i64 %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i64, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store i64 %1, i64* %4, align 8
  store float 0.000000e+00, float* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = icmp sle i64 %7, 16
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %9
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load float*, float** %3, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds float, float* %16, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float, float* %5, align 4
  %22 = fadd float %21, %20
  store float %22, float* %5, align 4
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %10
  br label %43

27:                                               ; preds = %2
  %28 = load float*, float** %3, align 8
  %29 = getelementptr inbounds float, float* %28, i64 0
  %30 = load i64, i64* %4, align 8
  %31 = sdiv i64 %30, 2
  %32 = call float @pairwise_sum(float* %29, i64 %31)
  %33 = load float*, float** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = sdiv i64 %34, 2
  %36 = getelementptr inbounds float, float* %33, i64 %35
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sdiv i64 %38, 2
  %40 = sub nsw i64 %37, %39
  %41 = call float @pairwise_sum(float* %36, i64 %40)
  %42 = fadd float %32, %41
  store float %42, float* %5, align 4
  br label %43

43:                                               ; preds = %27, %26
  %44 = load float, float* %5, align 4
  ret float %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @buildExponentialTable(%struct.Table* noalias sret %0, float %1, float %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store float %1, float* %4, align 4
  store float %2, float* %5, align 4
  %11 = load float, float* %5, align 4
  %12 = fpext float %11 to double
  %13 = load float, float* %4, align 4
  %14 = fpext float %13 to double
  %15 = fmul double 8.000000e+00, %14
  %16 = fmul double %15, 1.000000e-02
  %17 = fdiv double 1.000000e+00, %16
  %18 = call double @sqrt(double %17) #6
  %19 = fmul double %12, %18
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load float, float* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %21, %23
  store float %24, float* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call noalias i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to float*
  store float* %30, float** %8, align 8
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %65, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 0, %36
  %38 = sitofp i32 %37 to float
  %39 = load float, float* %7, align 4
  %40 = fmul float %38, %39
  %41 = fpext float %40 to double
  %42 = call double @exp(double %41) #6
  %43 = fptrunc double %42 to float
  store float %43, float* %10, align 4
  %44 = load float, float* %10, align 4
  %45 = fneg float %44
  %46 = load float*, float** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = mul nsw i32 2, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %46, i64 %49
  store float %45, float* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sitofp i32 %51 to float
  %53 = load float, float* %7, align 4
  %54 = fmul float %52, %53
  %55 = fsub float %54, 1.000000e+00
  %56 = load float, float* %10, align 4
  %57 = fmul float %55, %56
  %58 = fadd float 1.000000e+00, %57
  %59 = load float*, float** %8, align 8
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 2, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %59, i64 %63
  store float %58, float* %64, align 4
  br label %65

65:                                               ; preds = %35
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %31

68:                                               ; preds = %31
  %69 = load float, float* %7, align 4
  %70 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 1
  store float %69, float* %70, align 8
  %71 = load float*, float** %8, align 8
  %72 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 0
  store float* %71, float** %72, align 8
  %73 = load float, float* %5, align 4
  %74 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 1
  %75 = load float, float* %74, align 8
  %76 = fsub float %73, %75
  %77 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 2
  store float %76, float* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds %struct.Table, %struct.Table* %0, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local double @exp(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local double @get_time() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @clock() #6
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = sitofp i64 %3 to double
  %5 = fdiv double %4, 1.000000e+06
  ret double %5
}

; Function Attrs: nounwind
declare dso_local i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @est_mem_usage(%struct.Input* byval(%struct.Input) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %5 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 14
  %6 = load float, float* %5, align 4
  %7 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 6
  %8 = load float, float* %7, align 8
  %9 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = sitofp i32 %10 to float
  %12 = fmul float %8, %11
  %13 = fdiv float %6, %12
  %14 = fptosi float %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %16 = load i64, i64* %15, align 8
  %17 = sdiv i64 %16, 8
  store i64 %17, i64* %4, align 8
  %18 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %19, 32
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %21, %20
  store i64 %22, i64* %2, align 8
  %23 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %26 = load i64, i64* %25, align 8
  %27 = mul nsw i64 %24, %26
  %28 = mul i64 %27, 16
  %29 = load i64, i64* %2, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %2, align 8
  %31 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %32, 8
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %2, align 8
  %36 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul nsw i64 %37, %40
  %42 = mul i64 %41, 8
  %43 = load i64, i64* %2, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %2, align 8
  %45 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 20
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 40
  %48 = load i64, i64* %2, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %2, align 8
  %50 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 18
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 8
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul nsw i64 %51, %54
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = mul nsw i64 %55, %57
  %59 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %58, %61
  %63 = mul i64 %62, 4
  %64 = mul i64 %63, 2
  %65 = load i64, i64* %2, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %2, align 8
  %67 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %68, 48
  %70 = load i64, i64* %2, align 8
  %71 = add i64 %70, %69
  store i64 %71, i64* %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = mul i64 %72, 8
  %74 = load i64, i64* %2, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %2, align 8
  %76 = load i64, i64* %4, align 8
  %77 = mul i64 %76, 8
  %78 = load i64, i64* %2, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %2, align 8
  %80 = load i64, i64* %4, align 8
  %81 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul nsw i64 %80, %83
  %85 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = mul nsw i64 %84, %87
  %89 = mul i64 %88, 4
  %90 = load i64, i64* %2, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %2, align 8
  %92 = load i64, i64* %4, align 8
  %93 = mul i64 %92, 8
  %94 = load i64, i64* %2, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %2, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %96, %99
  %101 = mul i64 %100, 8
  %102 = load i64, i64* %2, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %2, align 8
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %104, %107
  %109 = mul nsw i64 %108, 3
  %110 = mul i64 %109, 4
  %111 = load i64, i64* %2, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %2, align 8
  %113 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %114 = load i64, i64* %113, align 8
  %115 = mul i64 %114, 8
  %116 = load i64, i64* %2, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %2, align 8
  %118 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = mul nsw i64 %119, %122
  %124 = mul i64 %123, 8
  %125 = load i64, i64* %2, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %2, align 8
  %127 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %128 = load i64, i64* %127, align 8
  %129 = mul i64 %128, 8
  %130 = load i64, i64* %2, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %2, align 8
  %132 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %133, %136
  %138 = mul i64 %137, 8
  %139 = load i64, i64* %2, align 8
  %140 = add i64 %139, %138
  store i64 %140, i64* %2, align 8
  %141 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 24
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul nsw i64 %142, %145
  %147 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = mul nsw i64 %146, %149
  %151 = mul i64 %150, 4
  %152 = load i64, i64* %2, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %2, align 8
  %154 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %155 = load i32, i32* %154, align 8
  %156 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %155, %157
  %159 = sext i32 %158 to i64
  %160 = mul i64 %159, 8
  %161 = load i64, i64* %2, align 8
  %162 = add i64 %161, %160
  store i64 %162, i64* %2, align 8
  %163 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %164, %166
  %168 = sext i32 %167 to i64
  %169 = mul i64 %168, 8
  %170 = load i64, i64* %2, align 8
  %171 = add i64 %170, %169
  store i64 %171, i64* %2, align 8
  %172 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %175 = load i32, i32* %174, align 8
  %176 = mul nsw i32 %173, %175
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 4
  %179 = load i64, i64* %2, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %2, align 8
  %181 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %182 = load i32, i32* %181, align 8
  %183 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %182, %184
  %186 = sext i32 %185 to i64
  %187 = mul i64 %186, 4
  %188 = load i64, i64* %2, align 8
  %189 = add i64 %188, %187
  store i64 %189, i64* %2, align 8
  %190 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %191 = load i32, i32* %190, align 8
  %192 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %193 = load i32, i32* %192, align 8
  %194 = mul nsw i32 %191, %193
  %195 = mul nsw i32 %194, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %198 = load i64, i64* %197, align 8
  %199 = mul nsw i64 %196, %198
  %200 = mul i64 %199, 8
  %201 = load i64, i64* %2, align 8
  %202 = add i64 %201, %200
  store i64 %202, i64* %2, align 8
  %203 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 21
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 19
  %206 = load i32, i32* %205, align 8
  %207 = mul nsw i32 %204, %206
  %208 = mul nsw i32 %207, 2
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 12
  %211 = load i64, i64* %210, align 8
  %212 = mul nsw i64 %209, %211
  %213 = mul i64 %212, 8
  %214 = load i64, i64* %2, align 8
  %215 = add i64 %214, %213
  store i64 %215, i64* %2, align 8
  %216 = load i64, i64* %2, align 8
  ret i64 %216
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @time_per_intersection(%struct.Input* byval(%struct.Input) align 8 %0, double %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  store double %1, double* %3, align 8
  %5 = load double, double* %3, align 8
  %6 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 27
  %7 = load i64, i64* %6, align 8
  %8 = sitofp i64 %7 to double
  %9 = fdiv double %5, %8
  %10 = fmul double %9, 1.000000e+09
  %11 = getelementptr inbounds %struct.Input, %struct.Input* %0, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %10, %13
  store double %14, double* %4, align 8
  %15 = load double, double* %4, align 8
  ret double %15
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
