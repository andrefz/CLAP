; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.GridPoint = type { double, i32* }
%struct.NuclideGridPoint = type { double, double, double, double, double, double }
%struct.Inputs = type { i32, i64, i64, i32, i8* }

@.str = private unnamed_addr constant [37 x i8] c"Generating Unionized Energy Grid...\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Copying and Sorting all nuclide grids...\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Assigning energies to unionized grid...\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"ERROR - Out Of Memory!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Assigning pointers to Unionized Energy Grid...\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [488 x i8] c"                   __   __ ___________                 _                        \0A                   \\ \\ / //  ___| ___ \\               | |                       \0A                    \\ V / \\ `--.| |_/ / ___ _ __   ___| |__                     \0A                    /   \\  `--. \\ ___ \\/ _ \\ '_ \\ / __| '_ \\                    \0A                   / /^\\ \\/\\__/ / |_/ /  __/ | | | (__| | | |                   \0A                   \\/   \\/\\____/\\____/ \\___|_| |_|\\___|_| |_|                   \0A\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [41 x i8] c"Developed at Argonne National Laboratory\00", align 1
@.str.2.8 = private unnamed_addr constant [12 x i8] c"Version: %d\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [82 x i8] c"================================================================================\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [8 x i8] c"RESULTS\00", align 1
@.str.6.12 = private unnamed_addr constant [17 x i8] c"Threads:     %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Verification checksum: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"INPUT SUMMARY\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Verification Mode:            on\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"Materials:                    %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"H-M Benchmark Size:           %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"Total Nuclides:               %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Gridpoints (per Nuclide):     \00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Unionized Energy Gridpoints:  \00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"XS Lookups:                   \00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Threads:                      %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Est. Memory Usage (MB):       \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"INITIALIZATION\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%ld,%03ld\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"%ld,%03ld,%03ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"%ld,%03ld,%03ld,%03ld\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Usage: ./XSBench <options>\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"Options include:\0A\00", align 1
@.str.26 = private unnamed_addr constant [52 x i8] c"  -t <threads>     Number of OpenMP threads to run\0A\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"  -s <size>        Size of H-M Benchmark to run (small, large, XL, XXL)\0A\00", align 1
@.str.28 = private unnamed_addr constant [77 x i8] c"  -g <gridpoints>  Number of gridpoints per nuclide (overrides -s defaults)\0A\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"  -l <lookups>     Number of Cross-section (XS) lookups\0A\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Default is equivalent to: -s large -l 15000000\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"See readme for full description of default run values\0A\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"small\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"large\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"XL\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"XXL\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Generating Nuclide Energy Grids...\0A\00", align 1
@.str.1.41 = private unnamed_addr constant [33 x i8] c"Sorting Nuclide Energy Grids...\0A\00", align 1
@.str.2.42 = private unnamed_addr constant [17 x i8] c"Loading Mats...\0A\00", align 1
@.str.3.43 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.44 = private unnamed_addr constant [11 x i8] c"SIMULATION\00", align 1
@.str.5.45 = private unnamed_addr constant [39 x i8] c"%.5lf %d %.5lf %.5lf %.5lf %.5lf %.5lf\00", align 1
@.str.6.46 = private unnamed_addr constant [22 x i8] c"Simulation complete.\0A\00", align 1
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
@rn_v.seed = internal global i64 1337, align 8
@.str.69 = private unnamed_addr constant [12 x i8] c"XS_data.dat\00", align 1
@.str.1.70 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2.71 = private unnamed_addr constant [3 x i8] c"rb\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_micro_xs(double %0, i32 %1, i64 %2, i64 %3, %struct.GridPoint* noalias %4, %struct.NuclideGridPoint** noalias %5, i32 %6, double* noalias %7) #0 {
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.GridPoint*, align 8
  %14 = alloca %struct.NuclideGridPoint**, align 8
  %15 = alloca i32, align 4
  %16 = alloca double*, align 8
  %17 = alloca double, align 8
  %18 = alloca %struct.NuclideGridPoint*, align 8
  %19 = alloca %struct.NuclideGridPoint*, align 8
  store double %0, double* %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.GridPoint* %4, %struct.GridPoint** %13, align 8
  store %struct.NuclideGridPoint** %5, %struct.NuclideGridPoint*** %14, align 8
  store i32 %6, i32* %15, align 4
  store double* %7, double** %16, align 8
  %20 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %21 = load i32, i32* %15, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %20, i64 %22
  %24 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %12, align 8
  %32 = sub nsw i64 %31, 1
  %33 = icmp eq i64 %30, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %8
  %35 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %14, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %35, i64 %37
  %39 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %38, align 8
  %40 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %40, i64 %42
  %44 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %39, i64 %51
  store %struct.NuclideGridPoint* %52, %struct.NuclideGridPoint** %18, align 8
  br label %71

53:                                               ; preds = %8
  %54 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, i64 %56
  %58 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %57, align 8
  %59 = load %struct.GridPoint*, %struct.GridPoint** %13, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %59, i64 %61
  %63 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %58, i64 %69
  store %struct.NuclideGridPoint* %70, %struct.NuclideGridPoint** %18, align 8
  br label %71

71:                                               ; preds = %53, %34
  %72 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %73 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %72, i64 1
  store %struct.NuclideGridPoint* %73, %struct.NuclideGridPoint** %19, align 8
  %74 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %75 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %74, i32 0, i32 0
  %76 = load double, double* %75, align 8
  %77 = load double, double* %9, align 8
  %78 = fsub double %76, %77
  %79 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %80 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %79, i32 0, i32 0
  %81 = load double, double* %80, align 8
  %82 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %83 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %82, i32 0, i32 0
  %84 = load double, double* %83, align 8
  %85 = fsub double %81, %84
  %86 = fdiv double %78, %85
  store double %86, double* %17, align 8
  %87 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %88 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %87, i32 0, i32 1
  %89 = load double, double* %88, align 8
  %90 = load double, double* %17, align 8
  %91 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %92 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %91, i32 0, i32 1
  %93 = load double, double* %92, align 8
  %94 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %95 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %94, i32 0, i32 1
  %96 = load double, double* %95, align 8
  %97 = fsub double %93, %96
  %98 = fmul double %90, %97
  %99 = fsub double %89, %98
  %100 = load double*, double** %16, align 8
  %101 = getelementptr inbounds double, double* %100, i64 0
  store double %99, double* %101, align 8
  %102 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %103 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %102, i32 0, i32 2
  %104 = load double, double* %103, align 8
  %105 = load double, double* %17, align 8
  %106 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %107 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %106, i32 0, i32 2
  %108 = load double, double* %107, align 8
  %109 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %110 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %109, i32 0, i32 2
  %111 = load double, double* %110, align 8
  %112 = fsub double %108, %111
  %113 = fmul double %105, %112
  %114 = fsub double %104, %113
  %115 = load double*, double** %16, align 8
  %116 = getelementptr inbounds double, double* %115, i64 1
  store double %114, double* %116, align 8
  %117 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %118 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %117, i32 0, i32 3
  %119 = load double, double* %118, align 8
  %120 = load double, double* %17, align 8
  %121 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %122 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %121, i32 0, i32 3
  %123 = load double, double* %122, align 8
  %124 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %125 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %124, i32 0, i32 3
  %126 = load double, double* %125, align 8
  %127 = fsub double %123, %126
  %128 = fmul double %120, %127
  %129 = fsub double %119, %128
  %130 = load double*, double** %16, align 8
  %131 = getelementptr inbounds double, double* %130, i64 2
  store double %129, double* %131, align 8
  %132 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %133 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %132, i32 0, i32 4
  %134 = load double, double* %133, align 8
  %135 = load double, double* %17, align 8
  %136 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %137 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %136, i32 0, i32 4
  %138 = load double, double* %137, align 8
  %139 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %140 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %139, i32 0, i32 4
  %141 = load double, double* %140, align 8
  %142 = fsub double %138, %141
  %143 = fmul double %135, %142
  %144 = fsub double %134, %143
  %145 = load double*, double** %16, align 8
  %146 = getelementptr inbounds double, double* %145, i64 3
  store double %144, double* %146, align 8
  %147 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %148 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %147, i32 0, i32 5
  %149 = load double, double* %148, align 8
  %150 = load double, double* %17, align 8
  %151 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, align 8
  %152 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %151, i32 0, i32 5
  %153 = load double, double* %152, align 8
  %154 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, align 8
  %155 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %154, i32 0, i32 5
  %156 = load double, double* %155, align 8
  %157 = fsub double %153, %156
  %158 = fmul double %150, %157
  %159 = fsub double %149, %158
  %160 = load double*, double** %16, align 8
  %161 = getelementptr inbounds double, double* %160, i64 4
  store double %159, double* %161, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calculate_macro_xs(double %0, i32 %1, i64 %2, i64 %3, i32* noalias %4, double** noalias %5, %struct.GridPoint* noalias %6, %struct.NuclideGridPoint** noalias %7, i32** noalias %8, double* noalias %9) #0 {
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca double**, align 8
  %17 = alloca %struct.GridPoint*, align 8
  %18 = alloca %struct.NuclideGridPoint**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca double*, align 8
  %21 = alloca [5 x double], align 16
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca double, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store double %0, double* %11, align 8
  store i32 %1, i32* %12, align 4
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32* %4, i32** %15, align 8
  store double** %5, double*** %16, align 8
  store %struct.GridPoint* %6, %struct.GridPoint** %17, align 8
  store %struct.NuclideGridPoint** %7, %struct.NuclideGridPoint*** %18, align 8
  store i32** %8, i32*** %19, align 8
  store double* %9, double** %20, align 8
  store i64 0, i64* %23, align 8
  store i32 0, i32* %25, align 4
  br label %28

28:                                               ; preds = %36, %10
  %29 = load i32, i32* %25, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load double*, double** %20, align 8
  %33 = load i32, i32* %25, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds double, double* %32, i64 %34
  store double 0.000000e+00, double* %35, align 8
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %25, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %25, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = mul nsw i64 %40, %41
  %43 = load double, double* %11, align 8
  %44 = load %struct.GridPoint*, %struct.GridPoint** %17, align 8
  %45 = call i64 @grid_search(i64 %42, double %43, %struct.GridPoint* %44)
  store i64 %45, i64* %23, align 8
  store i32 0, i32* %26, align 4
  br label %46

46:                                               ; preds = %102, %39
  %47 = load i32, i32* %26, align 4
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %105

54:                                               ; preds = %46
  %55 = load i32**, i32*** %19, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %26, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %22, align 4
  %64 = load double**, double*** %16, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds double*, double** %64, i64 %66
  %68 = load double*, double** %67, align 8
  %69 = load i32, i32* %26, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  store double %72, double* %24, align 8
  %73 = load double, double* %11, align 8
  %74 = load i32, i32* %22, align 4
  %75 = load i64, i64* %13, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load %struct.GridPoint*, %struct.GridPoint** %17, align 8
  %78 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %18, align 8
  %79 = load i64, i64* %23, align 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds [5 x double], [5 x double]* %21, i64 0, i64 0
  call void @calculate_micro_xs(double %73, i32 %74, i64 %75, i64 %76, %struct.GridPoint* %77, %struct.NuclideGridPoint** %78, i32 %80, double* %81)
  store i32 0, i32* %27, align 4
  br label %82

82:                                               ; preds = %98, %54
  %83 = load i32, i32* %27, align 4
  %84 = icmp slt i32 %83, 5
  br i1 %84, label %85, label %101

85:                                               ; preds = %82
  %86 = load i32, i32* %27, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x double], [5 x double]* %21, i64 0, i64 %87
  %89 = load double, double* %88, align 8
  %90 = load double, double* %24, align 8
  %91 = fmul double %89, %90
  %92 = load double*, double** %20, align 8
  %93 = load i32, i32* %27, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds double, double* %92, i64 %94
  %96 = load double, double* %95, align 8
  %97 = fadd double %96, %91
  store double %97, double* %95, align 8
  br label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %27, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %27, align 4
  br label %82

101:                                              ; preds = %82
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %26, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %26, align 4
  br label %46

105:                                              ; preds = %46
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @grid_search(i64 %0, double %1, %struct.GridPoint* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca %struct.GridPoint*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store double %1, double* %5, align 8
  store %struct.GridPoint* %2, %struct.GridPoint** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = sub nsw i64 %11, 1
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub nsw i64 %13, %14
  store i64 %15, i64* %10, align 8
  br label %16

16:                                               ; preds = %35, %3
  %17 = load i64, i64* %10, align 8
  %18 = icmp sgt i64 %17, 1
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %10, align 8
  %22 = sdiv i64 %21, 2
  %23 = add nsw i64 %20, %22
  store i64 %23, i64* %9, align 8
  %24 = load %struct.GridPoint*, %struct.GridPoint** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %24, i64 %25
  %27 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %26, i32 0, i32 0
  %28 = load double, double* %27, align 8
  %29 = load double, double* %5, align 8
  %30 = fcmp ogt double %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %8, align 8
  br label %35

33:                                               ; preds = %19
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = sub nsw i64 %36, %37
  store i64 %38, i64* %10, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load i64, i64* %7, align 8
  ret i64 %40
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids(%struct.NuclideGridPoint** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %83, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %79, %13
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %14
  %19 = call i32 @rand() #7
  %20 = sitofp i32 %19 to double
  %21 = fdiv double %20, 0x41DFFFFFFFC00000
  %22 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %22, i64 %23
  %25 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i64 %26
  %28 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %27, i32 0, i32 0
  store double %21, double* %28, align 8
  %29 = call i32 @rand() #7
  %30 = sitofp i32 %29 to double
  %31 = fdiv double %30, 0x41DFFFFFFFC00000
  %32 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %32, i64 %33
  %35 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %35, i64 %36
  %38 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %37, i32 0, i32 1
  store double %31, double* %38, align 8
  %39 = call i32 @rand() #7
  %40 = sitofp i32 %39 to double
  %41 = fdiv double %40, 0x41DFFFFFFFC00000
  %42 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %42, i64 %43
  %45 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %45, i64 %46
  %48 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %47, i32 0, i32 2
  store double %41, double* %48, align 8
  %49 = call i32 @rand() #7
  %50 = sitofp i32 %49 to double
  %51 = fdiv double %50, 0x41DFFFFFFFC00000
  %52 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %52, i64 %53
  %55 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %55, i64 %56
  %58 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %57, i32 0, i32 3
  store double %51, double* %58, align 8
  %59 = call i32 @rand() #7
  %60 = sitofp i32 %59 to double
  %61 = fdiv double %60, 0x41DFFFFFFFC00000
  %62 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %62, i64 %63
  %65 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i64 %66
  %68 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %67, i32 0, i32 4
  store double %61, double* %68, align 8
  %69 = call i32 @rand() #7
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, 0x41DFFFFFFFC00000
  %72 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %72, i64 %73
  %75 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %75, i64 %76
  %78 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %77, i32 0, i32 5
  store double %71, double* %78, align 8
  br label %79

79:                                               ; preds = %18
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %14

82:                                               ; preds = %14
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %7, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  br label %9

86:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_grids_v(%struct.NuclideGridPoint** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %71, %3
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %74

13:                                               ; preds = %9
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %70

18:                                               ; preds = %14
  %19 = call double @rn_v()
  %20 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %20, i64 %21
  %23 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %23, i64 %24
  %26 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i32 0, i32 0
  store double %19, double* %26, align 8
  %27 = call double @rn_v()
  %28 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %28, i64 %29
  %31 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %31, i64 %32
  %34 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %33, i32 0, i32 1
  store double %27, double* %34, align 8
  %35 = call double @rn_v()
  %36 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %36, i64 %37
  %39 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %39, i64 %40
  %42 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %41, i32 0, i32 2
  store double %35, double* %42, align 8
  %43 = call double @rn_v()
  %44 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %44, i64 %45
  %47 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %47, i64 %48
  %50 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %49, i32 0, i32 3
  store double %43, double* %50, align 8
  %51 = call double @rn_v()
  %52 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %52, i64 %53
  %55 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %55, i64 %56
  %58 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %57, i32 0, i32 4
  store double %51, double* %58, align 8
  %59 = call double @rn_v()
  %60 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %60, i64 %61
  %63 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %63, i64 %64
  %66 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i32 0, i32 5
  store double %59, double* %66, align 8
  br label %67

67:                                               ; preds = %18
  %68 = load i64, i64* %8, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %8, align 8
  br label %14

70:                                               ; preds = %14
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %9

74:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @sort_nuclide_grids(%struct.NuclideGridPoint** %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.NuclideGridPoint**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  %8 = alloca i64, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %21, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %14, i64 %15
  %17 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %16, align 8
  %18 = bitcast %struct.NuclideGridPoint* %17 to i8*
  %19 = load i64, i64* %6, align 8
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  call void @qsort(i8* %18, i64 %19, i64 48, i32 (i8*, i8*)* %20)
  br label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %8, align 8
  br label %9

24:                                               ; preds = %9
  ret void
}

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GridPoint* @generate_energy_grid(i64 %0, i64 %1, %struct.NuclideGridPoint** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.NuclideGridPoint**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32 (i8*, i8*)*, align 8
  %10 = alloca %struct.GridPoint*, align 8
  %11 = alloca %struct.NuclideGridPoint**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = mul nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  store i32 (i8*, i8*)* @NGP_compare, i32 (i8*, i8*)** %9, align 8
  %23 = load i64, i64* %8, align 8
  %24 = mul i64 %23, 16
  %25 = call noalias i8* @malloc(i64 %24) #7
  %26 = bitcast i8* %25 to %struct.GridPoint*
  store %struct.GridPoint* %26, %struct.GridPoint** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = call %struct.NuclideGridPoint** @gpmatrix(i64 %32, i64 %33)
  store %struct.NuclideGridPoint** %34, %struct.NuclideGridPoint*** %11, align 8
  %35 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %36 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %35, i64 0
  %37 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %36, align 8
  %38 = bitcast %struct.NuclideGridPoint* %37 to i8*
  %39 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %6, align 8
  %40 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %39, i64 0
  %41 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %40, align 8
  %42 = bitcast %struct.NuclideGridPoint* %41 to i8*
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = mul nsw i64 %43, %44
  %46 = mul i64 %45, 48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %42, i64 %46, i1 false)
  %47 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %48 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %47, i64 0
  %49 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %48, align 8
  %50 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %49, i64 0
  %51 = bitcast %struct.NuclideGridPoint* %50 to i8*
  %52 = load i64, i64* %8, align 8
  %53 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %9, align 8
  call void @qsort(i8* %51, i64 %52, i64 48, i32 (i8*, i8*)* %53)
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %31
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %31
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %75, %58
  %60 = load i64, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %59
  %64 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  %65 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %64, i64 0
  %66 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %66, i64 %67
  %69 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %68, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %71, i64 %72
  %74 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %73, i32 0, i32 0
  store double %70, double* %74, align 8
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %12, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %59

78:                                               ; preds = %59
  %79 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %11, align 8
  call void @gpmatrix_free(%struct.NuclideGridPoint** %79)
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = mul nsw i64 %80, %81
  %83 = mul i64 %82, 4
  %84 = call noalias i8* @malloc(i64 %83) #7
  %85 = bitcast i8* %84 to i32*
  store i32* %85, i32** %13, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

91:                                               ; preds = %78
  store i64 0, i64* %14, align 8
  br label %92

92:                                               ; preds = %106, %91
  %93 = load i64, i64* %14, align 8
  %94 = load i64, i64* %8, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32*, i32** %13, align 8
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* %14, align 8
  %100 = mul nsw i64 %98, %99
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %102, i64 %103
  %105 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %104, i32 0, i32 1
  store i32* %101, i32** %105, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load i64, i64* %14, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %14, align 8
  br label %92

109:                                              ; preds = %92
  %110 = load %struct.GridPoint*, %struct.GridPoint** %10, align 8
  ret %struct.GridPoint* %110
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @set_grid_ptrs(%struct.GridPoint* %0, %struct.NuclideGridPoint** %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.GridPoint*, align 8
  %6 = alloca %struct.NuclideGridPoint**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i64, align 8
  store %struct.GridPoint* %0, %struct.GridPoint** %5, align 8
  store %struct.NuclideGridPoint** %1, %struct.NuclideGridPoint*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %4
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %56, %19
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = mul nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %20
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %27 = load %struct.GridPoint*, %struct.GridPoint** %5, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %27, i64 %28
  %30 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %29, i32 0, i32 0
  %31 = load double, double* %30, align 8
  store double %31, double* %13, align 8
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %52, %26
  %33 = load i64, i64* %14, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %6, align 8
  %38 = load i64, i64* %14, align 8
  %39 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %37, i64 %38
  %40 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %39, align 8
  %41 = load double, double* %13, align 8
  %42 = load i64, i64* %8, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @binary_search(%struct.NuclideGridPoint* %40, double %41, i32 %43)
  %45 = load %struct.GridPoint*, %struct.GridPoint** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %45, i64 %46
  %48 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %14, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %44, i32* %51, align 4
  br label %52

52:                                               ; preds = %36
  %53 = load i64, i64* %14, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %14, align 8
  br label %32

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %20

59:                                               ; preds = %20
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @logo(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  store i32 %0, i32* %2, align 4
  call void @border_print()
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([488 x i8], [488 x i8]* @.str.6, i64 0, i64 0))
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.7, i64 0, i64 0), i32 79)
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2.8, i64 0, i64 0), i32 %6) #7
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  call void @center_print(i8* %8, i32 79)
  call void @border_print()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @border_print() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.19, i64 0, i64 0))
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
  %8 = call i64 @strlen(i8* %7) #9
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
  %19 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.9, i64 0, i64 0), %struct._IO_FILE* %18)
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
  %28 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.10, i64 0, i64 0), %struct._IO_FILE* %27)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_results(%struct.Inputs* byval(%struct.Inputs) align 8 %0, i32 %1, double %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 %4, i64* %9, align 8
  %11 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = sitofp i32 %12 to double
  %14 = load double, double* %7, align 8
  %15 = fdiv double %13, %14
  %16 = fptosi double %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5.11, i64 0, i64 0), i32 79)
  call void @border_print()
  %20 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6.12, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %23)
  call void @border_print()
  br label %25

25:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_inputs(%struct.Inputs* byval(%struct.Inputs) align 8 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %1, i32* %4, align 4
  store i32 %2, i32* %5, align 4
  %7 = call i64 @estimate_mem_usage(%struct.Inputs* byval(%struct.Inputs) align 8 %0)
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  call void @logo(i32 %9)
  call void @center_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 79)
  call void @border_print()
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 12)
  %12 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i8* %13)
  %15 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  call void @fancy_int(i64 %20)
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %22 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %23, %25
  call void @fancy_int(i64 %26)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  call void @fancy_int(i64 %30)
  %31 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  call void @fancy_int(i64 %36)
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 79)
  call void @border_print()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @fancy_int(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp slt i64 %3, 1000
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* %2, align 8
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 %6)
  br label %56

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = icmp sge i64 %9, 1000
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = icmp slt i64 %12, 1000000
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i64, i64* %2, align 8
  %16 = sdiv i64 %15, 1000
  %17 = load i64, i64* %2, align 8
  %18 = srem i64 %17, 1000
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i64 %16, i64 %18)
  br label %55

20:                                               ; preds = %11, %8
  %21 = load i64, i64* %2, align 8
  %22 = icmp sge i64 %21, 1000000
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i64, i64* %2, align 8
  %25 = icmp slt i64 %24, 1000000000
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i64, i64* %2, align 8
  %28 = sdiv i64 %27, 1000000
  %29 = load i64, i64* %2, align 8
  %30 = srem i64 %29, 1000000
  %31 = sdiv i64 %30, 1000
  %32 = load i64, i64* %2, align 8
  %33 = srem i64 %32, 1000
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i64 %28, i64 %31, i64 %33)
  br label %54

35:                                               ; preds = %23, %20
  %36 = load i64, i64* %2, align 8
  %37 = icmp sge i64 %36, 1000000000
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load i64, i64* %2, align 8
  %40 = sdiv i64 %39, 1000000000
  %41 = load i64, i64* %2, align 8
  %42 = srem i64 %41, 1000000000
  %43 = sdiv i64 %42, 1000000
  %44 = load i64, i64* %2, align 8
  %45 = srem i64 %44, 1000000
  %46 = sdiv i64 %45, 1000
  %47 = load i64, i64* %2, align 8
  %48 = srem i64 %47, 1000
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i64 %40, i64 %43, i64 %46, i64 %48)
  br label %53

50:                                               ; preds = %35
  %51 = load i64, i64* %2, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i64 %51)
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
define dso_local void @print_CLI_error() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.26, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.28, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.29, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.30, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 4) #8
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @read_CLI(%struct.Inputs* noalias sret %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %1, i32* %4, align 4
  store i8** %2, i8*** %5, align 8
  %9 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  store i64 355, i64* %10, align 8
  %11 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  store i64 11303, i64* %11, align 8
  %12 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 3
  store i32 15000000, i32* %12, align 8
  %13 = call noalias i8* @malloc(i64 6) #7
  %14 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 108, i8* %17, align 1
  %18 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 97, i8* %20, align 1
  %21 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 114, i8* %23, align 1
  %24 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  store i8 103, i8* %26, align 1
  %27 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 4
  store i8 101, i8* %29, align 1
  %30 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  store i8 0, i8* %32, align 1
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %122, %3
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %125

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %8, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i64 0, i64 0)) #9
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i8**, i8*** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @atoi(i8* %56) #9
  %58 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  br label %60

59:                                               ; preds = %46
  call void @print_CLI_error()
  br label %60

60:                                               ; preds = %59, %51
  br label %121

61:                                               ; preds = %37
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i64 0, i64 0)) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  store i32 1, i32* %6, align 4
  %71 = load i8**, i8*** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @atol(i8* %75) #9
  %77 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  store i64 %76, i64* %77, align 8
  br label %79

78:                                               ; preds = %65
  call void @print_CLI_error()
  br label %79

79:                                               ; preds = %78, %70
  br label %120

80:                                               ; preds = %61
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0)) #9
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load i8**, i8*** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @atoi(i8* %94) #9
  %96 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 3
  store i32 %95, i32* %96, align 8
  br label %98

97:                                               ; preds = %84
  call void @print_CLI_error()
  br label %98

98:                                               ; preds = %97, %89
  br label %119

99:                                               ; preds = %80
  %100 = load i8*, i8** %8, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)) #9
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  store i8* %113, i8** %114, align 8
  br label %116

115:                                              ; preds = %103
  call void @print_CLI_error()
  br label %116

116:                                              ; preds = %115, %108
  br label %118

117:                                              ; preds = %99
  call void @print_CLI_error()
  br label %118

118:                                              ; preds = %117, %116
  br label %119

119:                                              ; preds = %118, %98
  br label %120

120:                                              ; preds = %119, %79
  br label %121

121:                                              ; preds = %120, %60
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %7, align 4
  br label %33

125:                                              ; preds = %33
  %126 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  call void @print_CLI_error()
  br label %130

130:                                              ; preds = %129, %125
  %131 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 1
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  call void @print_CLI_error()
  br label %135

135:                                              ; preds = %134, %130
  %136 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  call void @print_CLI_error()
  br label %140

140:                                              ; preds = %139, %135
  %141 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  call void @print_CLI_error()
  br label %145

145:                                              ; preds = %144, %140
  %146 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = call i32 @strcasecmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #9
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %166

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @strcasecmp(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0)) #9
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @strcasecmp(i8* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #9
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @strcasecmp(i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #9
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  call void @print_CLI_error()
  br label %166

166:                                              ; preds = %165, %160, %155, %150, %145
  %167 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strcasecmp(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0)) #9
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  store i64 68, i64* %172, align 8
  br label %195

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @strcasecmp(i8* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0)) #9
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* %6, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  store i64 238847, i64* %182, align 8
  br label %194

183:                                              ; preds = %178, %173
  %184 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 4
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcasecmp(i8* %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0)) #9
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i32, i32* %6, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  store i64 501578, i64* %192, align 8
  br label %193

193:                                              ; preds = %191, %188, %183
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %171
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @atol(i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.Inputs, align 8
  %19 = alloca %struct.NuclideGridPoint**, align 8
  %20 = alloca %struct.GridPoint*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca double**, align 8
  %24 = alloca [5 x double], align 16
  %25 = alloca double*, align 8
  %26 = alloca [256 x i8], align 16
  %27 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store i64 0, i64* %16, align 8
  call void @srand(i32 26) #7
  %28 = load i32, i32* %4, align 4
  %29 = load i8**, i8*** %5, align 8
  call void @read_CLI(%struct.Inputs* sret %18, i32 %28, i8** %29)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %17, align 4
  %34 = load i32, i32* %6, align 4
  call void @print_inputs(%struct.Inputs* byval(%struct.Inputs) align 8 %18, i32 %33, i32 %34)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  %41 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call %struct.NuclideGridPoint** @gpmatrix(i64 %42, i64 %44)
  store %struct.NuclideGridPoint** %45, %struct.NuclideGridPoint*** %19, align 8
  %46 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %19, align 8
  %47 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  call void @generate_grids_v(%struct.NuclideGridPoint** %46, i64 %48, i64 %50)
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1.41, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %40
  %56 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %19, align 8
  %57 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  call void @sort_nuclide_grids(%struct.NuclideGridPoint** %56, i64 %58, i64 %60)
  %61 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %19, align 8
  %66 = call %struct.GridPoint* @generate_energy_grid(i64 %62, i64 %64, %struct.NuclideGridPoint** %65)
  store %struct.GridPoint* %66, %struct.GridPoint** %20, align 8
  %67 = load %struct.GridPoint*, %struct.GridPoint** %20, align 8
  %68 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %19, align 8
  %69 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  call void @set_grid_ptrs(%struct.GridPoint* %67, %struct.NuclideGridPoint** %68, i64 %70, i64 %72)
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.42, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %55
  %78 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32* @load_num_nucs(i64 %79)
  store i32* %80, i32** %21, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32** @load_mats(i32* %81, i64 %83)
  store i32** %84, i32*** %22, align 8
  %85 = load i32*, i32** %21, align 8
  %86 = call double** @load_concs_v(i32* %85)
  store double** %86, double*** %23, align 8
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.43, i64 0, i64 0))
  call void @border_print()
  call void @center_print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4.44, i64 0, i64 0), i32 79)
  call void @border_print()
  br label %91

91:                                               ; preds = %89, %77
  %92 = call noalias i8* @calloc(i64 5, i64 8) #7
  %93 = bitcast i8* %92 to double*
  store double* %93, double** %25, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  %96 = mul nsw i32 %95, 19
  %97 = add nsw i32 %96, 17
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %143, %91
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %99
  %105 = call double @rn_v()
  store double %105, double* %15, align 8
  %106 = call i32 @pick_mat(i64* %12)
  store i32 %106, i32* %11, align 4
  %107 = load double, double* %15, align 8
  %108 = load i32, i32* %11, align 4
  %109 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %18, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = load double**, double*** %23, align 8
  %115 = load %struct.GridPoint*, %struct.GridPoint** %20, align 8
  %116 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %19, align 8
  %117 = load i32**, i32*** %22, align 8
  %118 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 0
  call void @calculate_macro_xs(double %107, i32 %108, i64 %110, i64 %112, i32* %113, double** %114, %struct.GridPoint* %115, %struct.NuclideGridPoint** %116, i32** %117, double* %118)
  %119 = load double*, double** %25, align 8
  %120 = bitcast double* %119 to i8*
  %121 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 0
  %122 = bitcast double* %121 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %120, i8* align 16 %122, i64 40, i1 false)
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 0
  %124 = load double, double* %15, align 8
  %125 = load i32, i32* %11, align 4
  %126 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 0
  %127 = load double, double* %126, align 16
  %128 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 1
  %129 = load double, double* %128, align 8
  %130 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 2
  %131 = load double, double* %130, align 16
  %132 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 3
  %133 = load double, double* %132, align 8
  %134 = getelementptr inbounds [5 x double], [5 x double]* %24, i64 0, i64 4
  %135 = load double, double* %134, align 16
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5.45, i64 0, i64 0), double %124, i32 %125, double %127, double %129, double %131, double %133, double %135) #7
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %26, i64 0, i64 0
  %138 = call i32 @hash(i8* %137, i32 10000)
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %27, align 8
  %140 = load i64, i64* %27, align 8
  %141 = load i64, i64* %16, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %16, align 8
  br label %143

143:                                              ; preds = %104
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %99

146:                                              ; preds = %99
  %147 = load i32, i32* %7, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.43, i64 0, i64 0))
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6.46, i64 0, i64 0))
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* %7, align 4
  %154 = load double, double* %14, align 8
  %155 = load double, double* %13, align 8
  %156 = fsub double %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = load i64, i64* %16, align 8
  call void @print_results(%struct.Inputs* byval(%struct.Inputs) align 8 %18, i32 %153, double %156, i32 %157, i64 %158)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32* @load_num_nucs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call noalias i8* @malloc(i64 48) #7
  %5 = bitcast i8* %4 to i32*
  store i32* %5, i32** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 68
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 34, i32* %10, align 4
  br label %14

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 321, i32* %13, align 4
  br label %14

14:                                               ; preds = %11, %8
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 5, i32* %16, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  store i32 4, i32* %18, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 4, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32 27, i32* %22, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 21, i32* %24, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  store i32 21, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 7
  store i32 21, i32* %28, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 8
  store i32 21, i32* %30, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  store i32 21, i32* %32, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 10
  store i32 9, i32* %34, align 4
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 11
  store i32 9, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32** @load_mats(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [34 x i32], align 16
  %8 = alloca [321 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [27 x i32], align 16
  %14 = alloca [21 x i32], align 16
  %15 = alloca [21 x i32], align 16
  %16 = alloca [21 x i32], align 16
  %17 = alloca [21 x i32], align 16
  %18 = alloca [21 x i32], align 16
  %19 = alloca [9 x i32], align 16
  %20 = alloca [9 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %21 = call noalias i8* @malloc(i64 96) #7
  %22 = bitcast i8* %21 to i32**
  store i32** %22, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %40, %2
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 12
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = call noalias i8* @malloc(i64 %33) #7
  %35 = bitcast i8* %34 to i32*
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* %35, i32** %39, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %23

43:                                               ; preds = %23
  %44 = bitcast [34 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %44, i8* align 16 bitcast ([34 x i32]* @__const.load_mats.mats0_Sml to i8*), i64 136, i1 false)
  %45 = bitcast [321 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 16 bitcast (<{ [34 x i32], [287 x i32] }>* @__const.load_mats.mats0_Lrg to i8*), i64 1284, i1 false)
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %56, %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 287
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 68, %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 34, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [321 x i32], [321 x i32]* %8, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %46

59:                                               ; preds = %46
  %60 = bitcast [5 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %60, i8* align 16 bitcast ([5 x i32]* @__const.load_mats.mats1 to i8*), i64 20, i1 false)
  %61 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %61, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats2 to i8*), i64 16, i1 false)
  %62 = bitcast [4 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([4 x i32]* @__const.load_mats.mats3 to i8*), i64 16, i1 false)
  %63 = bitcast [27 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %63, i8* align 16 bitcast ([27 x i32]* @__const.load_mats.mats4 to i8*), i64 108, i1 false)
  %64 = bitcast [21 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %64, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats5 to i8*), i64 84, i1 false)
  %65 = bitcast [21 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats6 to i8*), i64 84, i1 false)
  %66 = bitcast [21 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats7 to i8*), i64 84, i1 false)
  %67 = bitcast [21 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %67, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats8 to i8*), i64 84, i1 false)
  %68 = bitcast [21 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %68, i8* align 16 bitcast ([21 x i32]* @__const.load_mats.mats9 to i8*), i64 84, i1 false)
  %69 = bitcast [9 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %69, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats10 to i8*), i64 36, i1 false)
  %70 = bitcast [9 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %70, i8* align 16 bitcast ([9 x i32]* @__const.load_mats.mats11 to i8*), i64 36, i1 false)
  %71 = load i64, i64* %4, align 8
  %72 = icmp eq i64 %71, 68
  br i1 %72, label %73, label %85

73:                                               ; preds = %59
  %74 = load i32**, i32*** %5, align 8
  %75 = getelementptr inbounds i32*, i32** %74, i64 0
  %76 = load i32*, i32** %75, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = getelementptr inbounds [34 x i32], [34 x i32]* %7, i64 0, i64 0
  %79 = bitcast i32* %78 to i8*
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 16 %79, i64 %84, i1 false)
  br label %97

85:                                               ; preds = %59
  %86 = load i32**, i32*** %5, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 0
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = getelementptr inbounds [321 x i32], [321 x i32]* %8, i64 0, i64 0
  %91 = bitcast i32* %90 to i8*
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = mul i64 %95, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 16 %91, i64 %96, i1 false)
  br label %97

97:                                               ; preds = %85, %73
  %98 = load i32**, i32*** %5, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 1
  %100 = load i32*, i32** %99, align 8
  %101 = bitcast i32* %100 to i8*
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %103 = bitcast i32* %102 to i8*
  %104 = load i32*, i32** %3, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 16 %103, i64 %108, i1 false)
  %109 = load i32**, i32*** %5, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 2
  %111 = load i32*, i32** %110, align 8
  %112 = bitcast i32* %111 to i8*
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %114 = bitcast i32* %113 to i8*
  %115 = load i32*, i32** %3, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %112, i8* align 16 %114, i64 %119, i1 false)
  %120 = load i32**, i32*** %5, align 8
  %121 = getelementptr inbounds i32*, i32** %120, i64 3
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %125 = bitcast i32* %124 to i8*
  %126 = load i32*, i32** %3, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %123, i8* align 16 %125, i64 %130, i1 false)
  %131 = load i32**, i32*** %5, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 4
  %133 = load i32*, i32** %132, align 8
  %134 = bitcast i32* %133 to i8*
  %135 = getelementptr inbounds [27 x i32], [27 x i32]* %13, i64 0, i64 0
  %136 = bitcast i32* %135 to i8*
  %137 = load i32*, i32** %3, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 4
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 16 %136, i64 %141, i1 false)
  %142 = load i32**, i32*** %5, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 5
  %144 = load i32*, i32** %143, align 8
  %145 = bitcast i32* %144 to i8*
  %146 = getelementptr inbounds [21 x i32], [21 x i32]* %14, i64 0, i64 0
  %147 = bitcast i32* %146 to i8*
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 5
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %145, i8* align 16 %147, i64 %152, i1 false)
  %153 = load i32**, i32*** %5, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 6
  %155 = load i32*, i32** %154, align 8
  %156 = bitcast i32* %155 to i8*
  %157 = getelementptr inbounds [21 x i32], [21 x i32]* %15, i64 0, i64 0
  %158 = bitcast i32* %157 to i8*
  %159 = load i32*, i32** %3, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = mul i64 %162, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 16 %158, i64 %163, i1 false)
  %164 = load i32**, i32*** %5, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 7
  %166 = load i32*, i32** %165, align 8
  %167 = bitcast i32* %166 to i8*
  %168 = getelementptr inbounds [21 x i32], [21 x i32]* %16, i64 0, i64 0
  %169 = bitcast i32* %168 to i8*
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 7
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 %173, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 16 %169, i64 %174, i1 false)
  %175 = load i32**, i32*** %5, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 8
  %177 = load i32*, i32** %176, align 8
  %178 = bitcast i32* %177 to i8*
  %179 = getelementptr inbounds [21 x i32], [21 x i32]* %17, i64 0, i64 0
  %180 = bitcast i32* %179 to i8*
  %181 = load i32*, i32** %3, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 8
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 16 %180, i64 %185, i1 false)
  %186 = load i32**, i32*** %5, align 8
  %187 = getelementptr inbounds i32*, i32** %186, i64 9
  %188 = load i32*, i32** %187, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = getelementptr inbounds [21 x i32], [21 x i32]* %18, i64 0, i64 0
  %191 = bitcast i32* %190 to i8*
  %192 = load i32*, i32** %3, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 9
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = mul i64 %195, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %189, i8* align 16 %191, i64 %196, i1 false)
  %197 = load i32**, i32*** %5, align 8
  %198 = getelementptr inbounds i32*, i32** %197, i64 10
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %202 = bitcast i32* %201 to i8*
  %203 = load i32*, i32** %3, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 10
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %200, i8* align 16 %202, i64 %207, i1 false)
  %208 = load i32**, i32*** %5, align 8
  %209 = getelementptr inbounds i32*, i32** %208, i64 11
  %210 = load i32*, i32** %209, align 8
  %211 = bitcast i32* %210 to i8*
  %212 = getelementptr inbounds [9 x i32], [9 x i32]* %20, i64 0, i64 0
  %213 = bitcast i32* %212 to i8*
  %214 = load i32*, i32** %3, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 11
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul i64 %217, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 16 %213, i64 %218, i1 false)
  %219 = load i32**, i32*** %5, align 8
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
  %7 = call noalias i8* @malloc(i64 96) #7
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
  %20 = call noalias i8* @malloc(i64 %19) #7
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
  %43 = call i32 @rand() #7
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
define dso_local double** @load_concs_v(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca double**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = call noalias i8* @malloc(i64 96) #7
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
  %20 = call noalias i8* @malloc(i64 %19) #7
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

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 12
  br i1 %32, label %33, label %59

33:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %52, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = call double @rn_v()
  %44 = load double**, double*** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double*, double** %44, i64 %46
  %48 = load double*, double** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds double, double* %48, i64 %50
  store double %43, double* %51, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %34

55:                                               ; preds = %34
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %30

59:                                               ; preds = %30
  %60 = load double**, double*** %3, align 8
  ret double** %60
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
  %21 = call double @rn_v()
  store double %21, double* %5, align 8
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %47, %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %50

25:                                               ; preds = %22
  store double 0.000000e+00, double* %7, align 8
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %37, %25
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [12 x double], [12 x double]* %4, i64 0, i64 %32
  %34 = load double, double* %33, align 8
  %35 = load double, double* %7, align 8
  %36 = fadd double %35, %34
  store double %36, double* %7, align 8
  br label %37

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %8, align 4
  br label %27

40:                                               ; preds = %27
  %41 = load double, double* %5, align 8
  %42 = load double, double* %7, align 8
  %43 = fcmp olt double %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %22

50:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NuclideGridPoint** @gpmatrix(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.NuclideGridPoint*, align 8
  %8 = alloca %struct.NuclideGridPoint**, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = mul i64 %9, %10
  %12 = mul i64 %11, 48
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %14, %struct.NuclideGridPoint** %7, align 8
  %15 = load i64, i64* %3, align 8
  %16 = mul i64 %15, 8
  %17 = call noalias i8* @malloc(i64 %16) #7
  %18 = bitcast i8* %17 to %struct.NuclideGridPoint**
  store %struct.NuclideGridPoint** %18, %struct.NuclideGridPoint*** %8, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %43, %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %22, %23
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %4, align 8
  %30 = urem i64 %28, %29
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %33, i64 %35
  %37 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %37, i64 %40
  store %struct.NuclideGridPoint* %36, %struct.NuclideGridPoint** %41, align 8
  br label %42

42:                                               ; preds = %32, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %19

46:                                               ; preds = %19
  %47 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %8, align 8
  ret %struct.NuclideGridPoint** %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @gpmatrix_free(%struct.NuclideGridPoint** %0) #0 {
  %2 = alloca %struct.NuclideGridPoint**, align 8
  store %struct.NuclideGridPoint** %0, %struct.NuclideGridPoint*** %2, align 8
  %3 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %2, align 8
  %4 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %3, align 8
  %5 = bitcast %struct.NuclideGridPoint* %4 to i8*
  call void @free(i8* %5) #7
  %6 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %2, align 8
  %7 = bitcast %struct.NuclideGridPoint** %6 to i8*
  call void @free(i8* %7) #7
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @NGP_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NuclideGridPoint*, align 8
  %7 = alloca %struct.NuclideGridPoint*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %9, %struct.NuclideGridPoint** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.NuclideGridPoint*
  store %struct.NuclideGridPoint* %11, %struct.NuclideGridPoint** %7, align 8
  %12 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %6, align 8
  %13 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %12, i32 0, i32 0
  %14 = load double, double* %13, align 8
  %15 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %16 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %15, i32 0, i32 0
  %17 = load double, double* %16, align 8
  %18 = fcmp ogt double %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %6, align 8
  %22 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %7, align 8
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %24, i32 0, i32 0
  %26 = load double, double* %25, align 8
  %27 = fcmp olt double %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @binary_search(%struct.NuclideGridPoint* %0, double %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.NuclideGridPoint*, align 8
  %6 = alloca double, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.NuclideGridPoint* %0, %struct.NuclideGridPoint** %5, align 8
  store double %1, double* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %9, align 4
  %13 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %14 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %13, i64 0
  %15 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = load double, double* %6, align 8
  %18 = fcmp ogt double %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %21, i64 %24
  %26 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %25, i32 0, i32 0
  %27 = load double, double* %26, align 8
  %28 = load double, double* %6, align 8
  %29 = fcmp olt double %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 2
  store i32 %32, i32* %4, align 4
  br label %79

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33
  br label %35

35:                                               ; preds = %76, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = sitofp i32 %40 to double
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sitofp i32 %44 to double
  %46 = fdiv double %45, 2.000000e+00
  %47 = call double @llvm.floor.f64(double %46)
  %48 = fadd double %41, %47
  %49 = fptosi double %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %50, i64 %52
  %54 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %53, i32 0, i32 0
  %55 = load double, double* %54, align 8
  %56 = load double, double* %6, align 8
  %57 = fcmp olt double %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %39
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %76

61:                                               ; preds = %39
  %62 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %62, i64 %64
  %66 = getelementptr inbounds %struct.NuclideGridPoint, %struct.NuclideGridPoint* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = load double, double* %6, align 8
  %69 = fcmp ogt double %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %4, align 4
  br label %79

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %58
  br label %35

77:                                               ; preds = %35
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %77, %73, %30, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #6

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
define dso_local double @rn_v() #0 {
  %1 = alloca double, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 16807, i64* %3, align 8
  store i64 2147483647, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @rn_v.seed, align 8
  %7 = mul i64 %5, %6
  %8 = load i64, i64* %4, align 8
  %9 = urem i64 %7, %8
  store i64 %9, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* @rn_v.seed, align 8
  %11 = load i64, i64* %2, align 8
  %12 = uitofp i64 %11 to double
  %13 = load i64, i64* %4, align 8
  %14 = uitofp i64 %13 to double
  %15 = fdiv double %12, %14
  store double %15, double* %1, align 8
  %16 = load double, double* %1, align 8
  ret double %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @hash(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 5381, i32* %5, align 4
  br label %7

7:                                                ; preds = %13, %2
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i32 1
  store i8* %9, i8** %3, align 8
  %10 = load i8, i8* %8, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 5
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %5, align 4
  br label %7

20:                                               ; preds = %7
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %4, align 4
  %23 = urem i32 %21, %22
  ret i32 %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @estimate_mem_usage(%struct.Inputs* byval(%struct.Inputs) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = mul i64 %8, 48
  store i64 %9, i64* %2, align 8
  %10 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = mul i64 %11, %12
  store i64 %13, i64* %3, align 8
  %14 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = mul i64 %15, 4
  %17 = add i64 16, %16
  store i64 %17, i64* %4, align 8
  %18 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.Inputs, %struct.Inputs* %0, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = mul nsw i64 %19, %21
  %23 = load i64, i64* %4, align 8
  %24 = mul i64 %22, %23
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %3, align 8
  %29 = udiv i64 %28, 1048576
  store i64 %29, i64* %3, align 8
  %30 = load i64, i64* %5, align 8
  %31 = udiv i64 %30, 1048576
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = udiv i64 %32, 1048576
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  ret i64 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_dump(i64 %0, i64 %1, %struct.NuclideGridPoint** %2, %struct.GridPoint* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.NuclideGridPoint**, align 8
  %8 = alloca %struct.GridPoint*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %7, align 8
  store %struct.GridPoint* %3, %struct.GridPoint** %8, align 8
  %12 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1.70, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %26, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %18, i64 %19
  %21 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %20, align 8
  %22 = bitcast %struct.NuclideGridPoint* %21 to i8*
  %23 = load i64, i64* %6, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %25 = call i64 @fwrite(i8* %22, i64 48, i64 %23, %struct._IO_FILE* %24)
  br label %26

26:                                               ; preds = %17
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  br label %13

29:                                               ; preds = %13
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %53, %29
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = mul nsw i64 %32, %33
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %37, i64 %38
  %40 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %39, i32 0, i32 0
  %41 = bitcast double* %40 to i8*
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %43 = call i64 @fwrite(i8* %41, i64 8, i64 1, %struct._IO_FILE* %42)
  %44 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %44, i64 %45
  %47 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = load i64, i64* %5, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %52 = call i64 @fwrite(i8* %49, i64 4, i64 %50, %struct._IO_FILE* %51)
  br label %53

53:                                               ; preds = %36
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %30

56:                                               ; preds = %30
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %58 = call i32 @fclose(%struct._IO_FILE* %57)
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @binary_read(i64 %0, i64 %1, %struct.NuclideGridPoint** %2, %struct.GridPoint* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.NuclideGridPoint**, align 8
  %8 = alloca %struct.GridPoint*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._IO_FILE*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.NuclideGridPoint** %2, %struct.NuclideGridPoint*** %7, align 8
  store %struct.GridPoint* %3, %struct.GridPoint** %8, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.71, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %10, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %28, %4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.NuclideGridPoint**, %struct.NuclideGridPoint*** %7, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %19, i64 %20
  %22 = load %struct.NuclideGridPoint*, %struct.NuclideGridPoint** %21, align 8
  %23 = bitcast %struct.NuclideGridPoint* %22 to i8*
  %24 = load i64, i64* %6, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %26 = call i64 @fread(i8* %23, i64 48, i64 %24, %struct._IO_FILE* %25)
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %18
  %29 = load i64, i64* %11, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %11, align 8
  br label %14

31:                                               ; preds = %14
  store i64 0, i64* %12, align 8
  br label %32

32:                                               ; preds = %57, %31
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = mul nsw i64 %34, %35
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %32
  %39 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %40 = load i64, i64* %12, align 8
  %41 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %39, i64 %40
  %42 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %41, i32 0, i32 0
  %43 = bitcast double* %42 to i8*
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %45 = call i64 @fread(i8* %43, i64 8, i64 1, %struct._IO_FILE* %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %9, align 4
  %47 = load %struct.GridPoint*, %struct.GridPoint** %8, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %47, i64 %48
  %50 = getelementptr inbounds %struct.GridPoint, %struct.GridPoint* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i64, i64* %5, align 8
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %55 = call i64 @fread(i8* %52, i64 4, i64 %53, %struct._IO_FILE* %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %38
  %58 = load i64, i64* %12, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %12, align 8
  br label %32

60:                                               ; preds = %32
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %10, align 8
  %62 = call i32 @fclose(%struct._IO_FILE* %61)
  ret void
}

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
