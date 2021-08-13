; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i8**, i32*, %struct.node*, i8, i32, %struct.node* }
%struct.record = type { i32 }
%struct.knode = type { i32, [509 x i32], [509 x i32], i8, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.list_t = type { %struct.list_item*, %struct.list_item*, i32, i32 (i8*, i8*)*, void (i8*)* }
%struct.list_item = type { %struct.list_item*, %struct.list_item*, i8* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [52 x i8] c"Time spent in different stages of CPU/MCPU KERNEL:\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : MCPU: SET DEVICE\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: KERNEL\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"Time spent in different stages of CPU/MCPU KERNEL:\0A\00", align 1
@.str.1.5 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : MCPU: SET DEVICE\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [41 x i8] c"%15.12f s, %15.12f % : CPU/MCPU: KERNEL\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [13 x i8] c"Total time:\0A\00", align 1
@order = dso_local global i32 508, align 4
@queue = dso_local global %struct.node* null, align 8
@verbose_output = dso_local global i8 0, align 1
@freeptr = common dso_local global i64 0, align 8
@malloc_size = common dso_local global i64 0, align 8
@mem = common dso_local global i8* null, align 8
@size = common dso_local global i64 0, align 8
@krecords = common dso_local global %struct.record* null, align 8
@knodes = common dso_local global %struct.knode* null, align 8
@maxheight = common dso_local global i64 0, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [29 x i8] c"Allocation failed at %s:%d!\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@.str.2.10 = private unnamed_addr constant [17 x i8] c"Memory Overflow\0A\00", align 1
@.str.3.11 = private unnamed_addr constant [22 x i8] c"Initial malloc error\0A\00", align 1
@.str.4.12 = private unnamed_addr constant [42 x i8] c"Successfully created knode with index %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Is Leaf: %d, Num Keys: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Pointers: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d | \00", align 1
@.str.8.13 = private unnamed_addr constant [8 x i8] c"\0AKeys: \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"\0ANumber of records = %d, sizeof(record)=%d, total=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Number of knodes = %d, sizeof(knode)=%d, total=%d\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"\0ADone Transformation. Mem used: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Tree transformation took %f\0A\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"Empty tree.\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%d] \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"%d ->\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"Leaf [\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"%d] ->\0A\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"B+ Tree of Order %d.\0A\00", align 1
@.str.16 = private unnamed_addr constant [56 x i8] c"\09Amittai Aviram -- amittai.aviram@yale.edu  Version %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"\09following Silberschatz, Korth, Sidarshan, Database Concepts, 5th ed.\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"To build a B+ tree of a different order, start again and enter the order\0A\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"as an integer argument:  bpt <order>.  \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"3 <= order <=20\0A\00", align 1
@.str.22 = private unnamed_addr constant [86 x i8] c"To start with input from a file of newline-delimited integers, start again and enter\0A\00", align 1
@.str.23 = private unnamed_addr constant [63 x i8] c"the order followed by the filename:  bpt <order> <inputfile>.\0A\00", align 1
@.str.24 = private unnamed_addr constant [58 x i8] c"Enter any of the following commands after the prompt > :\0A\00", align 1
@.str.25 = private unnamed_addr constant [60 x i8] c"\09i <k>  -- Insert <k> (an integer) as both key and value).\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"\09f <k>  -- Find the value under key <k>.\0A\00", align 1
@.str.27 = private unnamed_addr constant [75 x i8] c"\09p <k> -- Print the path from the root to key k and its associated value.\0A\00", align 1
@.str.28 = private unnamed_addr constant [53 x i8] c"\09d <k>  -- Delete key <k> and its associated value.\0A\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"\09x -- Destroy the whole tree.  Start again with an empty tree of the same order.\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\09t -- Print the B+ tree.\0A\00", align 1
@.str.31 = private unnamed_addr constant [62 x i8] c"\09l -- Print the keys of the leaves (bottom row of the tree).\0A\00", align 1
@.str.32 = private unnamed_addr constant [74 x i8] c"\09v -- Toggle output of pointer addresses (\22verbose\22) in tree and leaves.\0A\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"\09q -- Quit. (Or use Ctl-D.)\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"\09? -- Print this help message.\0A\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"(%x)\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Record creation.\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"Node creation.\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"New node keys array.\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"New node pointers array.\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Temporary keys array.\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"Temporary pointers array.\00", align 1
@.str.52 = private unnamed_addr constant [46 x i8] c"Temporary pointers array for splitting nodes.\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Temporary keys array for splitting nodes.\00", align 1
@.str.54 = private unnamed_addr constant [51 x i8] c"Search for nonexistent pointer to node in parent.\0A\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.57 = private unnamed_addr constant [41 x i8] c"ERROR: Missing value to -file parameter\0A\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"ERROR: Missing value to command parameter\0A\00", align 1
@.str.60 = private unnamed_addr constant [54 x i8] c"Usage: ./b+tree file input_file command command_list\0A\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"Input File: %s \0A\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"Command File: %s \0A\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"Command File error\00", align 1
@.str.65 = private unnamed_addr constant [28 x i8] c"Command Buffer memory error\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"Command file reading error\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"Command Buffer: \0A\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.70 = private unnamed_addr constant [19 x i8] c"Fail to open %s !\0A\00", align 1
@.str.71 = private unnamed_addr constant [22 x i8] c"******starting******\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"Getting input from file %s...\0A\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.74 = private unnamed_addr constant [28 x i8] c"Failure to open input file.\00", align 1
@.str.75 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.76 = private unnamed_addr constant [31 x i8] c"ERROR: Argument -file missing\0A\00", align 1
@.str.77 = private unnamed_addr constant [50 x i8] c"Transforming data to a GPU suitable structure...\0A\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"Waiting for command\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.82 = private unnamed_addr constant [32 x i8] c"Record not found under key %d.\0A\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"Record found: %d\0A\00", align 1
@.str.84 = private unnamed_addr constant [30 x i8] c"\0A ******command: k count=%d \0A\00", align 1
@.str.85 = private unnamed_addr constant [93 x i8] c"ERROR: Number of requested querries should be 65,535 at most. (limited by # of CUDA blocks)\0A\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"aw+\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"%d    %d\0A\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"For range %d to %d, \00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"%d records found\0A\00", align 1
@.str.91 = private unnamed_addr constant [39 x i8] c"\0A******command: j count=%d, rSize=%d \0A\00", align 1
@.str.92 = private unnamed_addr constant [52 x i8] c"Search range size is larger than data set size %d.\0A\00", align 1
@.str.93 = private unnamed_addr constant [16 x i8] c"%d    %d    %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @kernel_cpu_2(i32 %0, %struct.knode* %1, i64 %2, i32 %3, i64 %4, i32 %5, i64* %6, i64* %7, i64* %8, i64* %9, i32* %10, i32* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca %struct.knode*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %15, align 4
  store %struct.knode* %1, %struct.knode** %16, align 8
  store i64 %2, i64* %17, align 8
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i32 %5, i32* %20, align 4
  store i64* %6, i64** %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i64* %9, i64** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* %13, i32** %28, align 8
  %37 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %37, i64* %29, align 8
  store i32 1, i32* %33, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp slt i32 %38, 1024
  br i1 %39, label %40, label %42

40:                                               ; preds = %14
  %41 = load i32, i32* %18, align 4
  br label %43

42:                                               ; preds = %14
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 1024, %42 ]
  store i32 %44, i32* %34, align 4
  %45 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %45, i64* %30, align 8
  store i32 0, i32* %36, align 4
  br label %46

46:                                               ; preds = %333, %43
  %47 = load i32, i32* %36, align 4
  %48 = load i32, i32* %20, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %336

50:                                               ; preds = %46
  store i32 0, i32* %32, align 4
  br label %51

51:                                               ; preds = %232, %50
  %52 = load i32, i32* %32, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %19, align 8
  %55 = icmp slt i64 %53, %54
  br i1 %55, label %56, label %235

56:                                               ; preds = %51
  store i32 0, i32* %35, align 4
  br label %57

57:                                               ; preds = %210, %56
  %58 = load i32, i32* %35, align 4
  %59 = load i32, i32* %34, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %213

61:                                               ; preds = %57
  %62 = load %struct.knode*, %struct.knode** %16, align 8
  %63 = load i64*, i64** %21, align 8
  %64 = load i32, i32* %36, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.knode, %struct.knode* %62, i64 %67
  %69 = getelementptr inbounds %struct.knode, %struct.knode* %68, i32 0, i32 2
  %70 = load i32, i32* %35, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [509 x i32], [509 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %25, align 8
  %75 = load i32, i32* %36, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp sle i32 %73, %78
  br i1 %79, label %80, label %135

80:                                               ; preds = %61
  %81 = load %struct.knode*, %struct.knode** %16, align 8
  %82 = load i64*, i64** %21, align 8
  %83 = load i32, i32* %36, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.knode, %struct.knode* %81, i64 %86
  %88 = getelementptr inbounds %struct.knode, %struct.knode* %87, i32 0, i32 2
  %89 = load i32, i32* %35, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [509 x i32], [509 x i32]* %88, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %25, align 8
  %95 = load i32, i32* %36, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = icmp sgt i32 %93, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %80
  %101 = load %struct.knode*, %struct.knode** %16, align 8
  %102 = load i64*, i64** %21, align 8
  %103 = load i32, i32* %36, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.knode, %struct.knode* %101, i64 %106
  %108 = getelementptr inbounds %struct.knode, %struct.knode* %107, i32 0, i32 1
  %109 = load i32, i32* %35, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [509 x i32], [509 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %17, align 8
  %115 = icmp slt i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %100
  %117 = load %struct.knode*, %struct.knode** %16, align 8
  %118 = load i64*, i64** %21, align 8
  %119 = load i32, i32* %36, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.knode, %struct.knode* %117, i64 %122
  %124 = getelementptr inbounds %struct.knode, %struct.knode* %123, i32 0, i32 1
  %125 = load i32, i32* %35, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [509 x i32], [509 x i32]* %124, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64*, i64** %22, align 8
  %131 = load i32, i32* %36, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i64, i64* %130, i64 %132
  store i64 %129, i64* %133, align 8
  br label %134

134:                                              ; preds = %116, %100
  br label %135

135:                                              ; preds = %134, %80, %61
  %136 = load %struct.knode*, %struct.knode** %16, align 8
  %137 = load i64*, i64** %23, align 8
  %138 = load i32, i32* %36, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.knode, %struct.knode* %136, i64 %141
  %143 = getelementptr inbounds %struct.knode, %struct.knode* %142, i32 0, i32 2
  %144 = load i32, i32* %35, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [509 x i32], [509 x i32]* %143, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %26, align 8
  %149 = load i32, i32* %36, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = icmp sle i32 %147, %152
  br i1 %153, label %154, label %209

154:                                              ; preds = %135
  %155 = load %struct.knode*, %struct.knode** %16, align 8
  %156 = load i64*, i64** %23, align 8
  %157 = load i32, i32* %36, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.knode, %struct.knode* %155, i64 %160
  %162 = getelementptr inbounds %struct.knode, %struct.knode* %161, i32 0, i32 2
  %163 = load i32, i32* %35, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [509 x i32], [509 x i32]* %162, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %26, align 8
  %169 = load i32, i32* %36, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = icmp sgt i32 %167, %172
  br i1 %173, label %174, label %209

174:                                              ; preds = %154
  %175 = load %struct.knode*, %struct.knode** %16, align 8
  %176 = load i64*, i64** %23, align 8
  %177 = load i32, i32* %36, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.knode, %struct.knode* %175, i64 %180
  %182 = getelementptr inbounds %struct.knode, %struct.knode* %181, i32 0, i32 1
  %183 = load i32, i32* %35, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [509 x i32], [509 x i32]* %182, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* %17, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %174
  %191 = load %struct.knode*, %struct.knode** %16, align 8
  %192 = load i64*, i64** %23, align 8
  %193 = load i32, i32* %36, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i64, i64* %192, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.knode, %struct.knode* %191, i64 %196
  %198 = getelementptr inbounds %struct.knode, %struct.knode* %197, i32 0, i32 1
  %199 = load i32, i32* %35, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [509 x i32], [509 x i32]* %198, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = load i64*, i64** %24, align 8
  %205 = load i32, i32* %36, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  store i64 %203, i64* %207, align 8
  br label %208

208:                                              ; preds = %190, %174
  br label %209

209:                                              ; preds = %208, %154, %135
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %35, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %35, align 4
  br label %57

213:                                              ; preds = %57
  %214 = load i64*, i64** %22, align 8
  %215 = load i32, i32* %36, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = load i64*, i64** %21, align 8
  %220 = load i32, i32* %36, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64, i64* %219, i64 %221
  store i64 %218, i64* %222, align 8
  %223 = load i64*, i64** %24, align 8
  %224 = load i32, i32* %36, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %223, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %23, align 8
  %229 = load i32, i32* %36, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  store i64 %227, i64* %231, align 8
  br label %232

232:                                              ; preds = %213
  %233 = load i32, i32* %32, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %32, align 4
  br label %51

235:                                              ; preds = %51
  store i32 0, i32* %35, align 4
  br label %236

236:                                              ; preds = %277, %235
  %237 = load i32, i32* %35, align 4
  %238 = load i32, i32* %34, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %280

240:                                              ; preds = %236
  %241 = load %struct.knode*, %struct.knode** %16, align 8
  %242 = load i64*, i64** %21, align 8
  %243 = load i32, i32* %36, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.knode, %struct.knode* %241, i64 %246
  %248 = getelementptr inbounds %struct.knode, %struct.knode* %247, i32 0, i32 2
  %249 = load i32, i32* %35, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [509 x i32], [509 x i32]* %248, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %25, align 8
  %254 = load i32, i32* %36, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %252, %257
  br i1 %258, label %259, label %276

259:                                              ; preds = %240
  %260 = load %struct.knode*, %struct.knode** %16, align 8
  %261 = load i64*, i64** %21, align 8
  %262 = load i32, i32* %36, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i64, i64* %261, i64 %263
  %265 = load i64, i64* %264, align 8
  %266 = getelementptr inbounds %struct.knode, %struct.knode* %260, i64 %265
  %267 = getelementptr inbounds %struct.knode, %struct.knode* %266, i32 0, i32 1
  %268 = load i32, i32* %35, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [509 x i32], [509 x i32]* %267, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %27, align 8
  %273 = load i32, i32* %36, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %271, i32* %275, align 4
  br label %276

276:                                              ; preds = %259, %240
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %35, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %35, align 4
  br label %236

280:                                              ; preds = %236
  store i32 0, i32* %35, align 4
  br label %281

281:                                              ; preds = %329, %280
  %282 = load i32, i32* %35, align 4
  %283 = load i32, i32* %34, align 4
  %284 = icmp slt i32 %282, %283
  br i1 %284, label %285, label %332

285:                                              ; preds = %281
  %286 = load %struct.knode*, %struct.knode** %16, align 8
  %287 = load i64*, i64** %23, align 8
  %288 = load i32, i32* %36, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64, i64* %287, i64 %289
  %291 = load i64, i64* %290, align 8
  %292 = getelementptr inbounds %struct.knode, %struct.knode* %286, i64 %291
  %293 = getelementptr inbounds %struct.knode, %struct.knode* %292, i32 0, i32 2
  %294 = load i32, i32* %35, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [509 x i32], [509 x i32]* %293, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** %26, align 8
  %299 = load i32, i32* %36, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %297, %302
  br i1 %303, label %304, label %328

304:                                              ; preds = %285
  %305 = load %struct.knode*, %struct.knode** %16, align 8
  %306 = load i64*, i64** %23, align 8
  %307 = load i32, i32* %36, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.knode, %struct.knode* %305, i64 %310
  %312 = getelementptr inbounds %struct.knode, %struct.knode* %311, i32 0, i32 1
  %313 = load i32, i32* %35, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [509 x i32], [509 x i32]* %312, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %27, align 8
  %318 = load i32, i32* %36, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %317, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = sub nsw i32 %316, %321
  %323 = add nsw i32 %322, 1
  %324 = load i32*, i32** %28, align 8
  %325 = load i32, i32* %36, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  store i32 %323, i32* %327, align 4
  br label %328

328:                                              ; preds = %304, %285
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %35, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %35, align 4
  br label %281

332:                                              ; preds = %281
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %36, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %36, align 4
  br label %46

336:                                              ; preds = %46
  %337 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %337, i64* %31, align 8
  %338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %339 = load i64, i64* %30, align 8
  %340 = load i64, i64* %29, align 8
  %341 = sub nsw i64 %339, %340
  %342 = sitofp i64 %341 to float
  %343 = fdiv float %342, 1.000000e+06
  %344 = fpext float %343 to double
  %345 = load i64, i64* %30, align 8
  %346 = load i64, i64* %29, align 8
  %347 = sub nsw i64 %345, %346
  %348 = sitofp i64 %347 to float
  %349 = load i64, i64* %31, align 8
  %350 = load i64, i64* %29, align 8
  %351 = sub nsw i64 %349, %350
  %352 = sitofp i64 %351 to float
  %353 = fdiv float %348, %352
  %354 = fmul float %353, 1.000000e+02
  %355 = fpext float %354 to double
  %356 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), double %344, double %355)
  %357 = load i64, i64* %31, align 8
  %358 = load i64, i64* %30, align 8
  %359 = sub nsw i64 %357, %358
  %360 = sitofp i64 %359 to float
  %361 = fdiv float %360, 1.000000e+06
  %362 = fpext float %361 to double
  %363 = load i64, i64* %31, align 8
  %364 = load i64, i64* %30, align 8
  %365 = sub nsw i64 %363, %364
  %366 = sitofp i64 %365 to float
  %367 = load i64, i64* %31, align 8
  %368 = load i64, i64* %29, align 8
  %369 = sub nsw i64 %367, %368
  %370 = sitofp i64 %369 to float
  %371 = fdiv float %366, %370
  %372 = fmul float %371, 1.000000e+02
  %373 = fpext float %372 to double
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), double %362, double %373)
  %375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @kernel_cpu(i32 %0, %struct.record* %1, %struct.knode* %2, i64 %3, i32 %4, i64 %5, i32 %6, i64* %7, i64* %8, i32* %9, %struct.record* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.record*, align 8
  %14 = alloca %struct.knode*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.record*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store %struct.record* %1, %struct.record** %13, align 8
  store %struct.knode* %2, %struct.knode** %14, align 8
  store i64 %3, i64* %15, align 8
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i64* %7, i64** %19, align 8
  store i64* %8, i64** %20, align 8
  store i32* %9, i32** %21, align 8
  store %struct.record* %10, %struct.record** %22, align 8
  %31 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %31, i64* %23, align 8
  store i32 1, i32* %26, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp slt i32 %32, 1024
  br i1 %33, label %34, label %36

34:                                               ; preds = %11
  %35 = load i32, i32* %16, align 4
  br label %37

36:                                               ; preds = %11
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 1024, %36 ]
  store i32 %38, i32* %27, align 4
  %39 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %39, i64* %24, align 8
  store i32 0, i32* %29, align 4
  br label %40

40:                                               ; preds = %198, %37
  %41 = load i32, i32* %29, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %201

44:                                               ; preds = %40
  store i32 0, i32* %30, align 4
  br label %45

45:                                               ; preds = %143, %44
  %46 = load i32, i32* %30, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %17, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %146

50:                                               ; preds = %45
  store i32 0, i32* %28, align 4
  br label %51

51:                                               ; preds = %130, %50
  %52 = load i32, i32* %28, align 4
  %53 = load i32, i32* %27, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %133

55:                                               ; preds = %51
  %56 = load %struct.knode*, %struct.knode** %14, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = load i32, i32* %29, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.knode, %struct.knode* %56, i64 %61
  %63 = getelementptr inbounds %struct.knode, %struct.knode* %62, i32 0, i32 2
  %64 = load i32, i32* %28, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [509 x i32], [509 x i32]* %63, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %21, align 8
  %69 = load i32, i32* %29, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %67, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %55
  %75 = load %struct.knode*, %struct.knode** %14, align 8
  %76 = load i64*, i64** %19, align 8
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.knode, %struct.knode* %75, i64 %80
  %82 = getelementptr inbounds %struct.knode, %struct.knode* %81, i32 0, i32 2
  %83 = load i32, i32* %28, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [509 x i32], [509 x i32]* %82, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %21, align 8
  %89 = load i32, i32* %29, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %87, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %74
  %95 = load %struct.knode*, %struct.knode** %14, align 8
  %96 = load i64*, i64** %20, align 8
  %97 = load i32, i32* %29, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %96, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds %struct.knode, %struct.knode* %95, i64 %100
  %102 = getelementptr inbounds %struct.knode, %struct.knode* %101, i32 0, i32 1
  %103 = load i32, i32* %28, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [509 x i32], [509 x i32]* %102, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %15, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %94
  %111 = load %struct.knode*, %struct.knode** %14, align 8
  %112 = load i64*, i64** %20, align 8
  %113 = load i32, i32* %29, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.knode, %struct.knode* %111, i64 %116
  %118 = getelementptr inbounds %struct.knode, %struct.knode* %117, i32 0, i32 1
  %119 = load i32, i32* %28, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [509 x i32], [509 x i32]* %118, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64*, i64** %20, align 8
  %125 = load i32, i32* %29, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  store i64 %123, i64* %127, align 8
  br label %128

128:                                              ; preds = %110, %94
  br label %129

129:                                              ; preds = %128, %74, %55
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %28, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %28, align 4
  br label %51

133:                                              ; preds = %51
  %134 = load i64*, i64** %20, align 8
  %135 = load i32, i32* %29, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %19, align 8
  %140 = load i32, i32* %29, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 %138, i64* %142, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load i32, i32* %30, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %30, align 4
  br label %45

146:                                              ; preds = %45
  store i32 0, i32* %28, align 4
  br label %147

147:                                              ; preds = %194, %146
  %148 = load i32, i32* %28, align 4
  %149 = load i32, i32* %27, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %197

151:                                              ; preds = %147
  %152 = load %struct.knode*, %struct.knode** %14, align 8
  %153 = load i64*, i64** %19, align 8
  %154 = load i32, i32* %29, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.knode, %struct.knode* %152, i64 %157
  %159 = getelementptr inbounds %struct.knode, %struct.knode* %158, i32 0, i32 2
  %160 = load i32, i32* %28, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [509 x i32], [509 x i32]* %159, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %21, align 8
  %165 = load i32, i32* %29, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %163, %168
  br i1 %169, label %170, label %193

170:                                              ; preds = %151
  %171 = load %struct.record*, %struct.record** %13, align 8
  %172 = load %struct.knode*, %struct.knode** %14, align 8
  %173 = load i64*, i64** %19, align 8
  %174 = load i32, i32* %29, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.knode, %struct.knode* %172, i64 %177
  %179 = getelementptr inbounds %struct.knode, %struct.knode* %178, i32 0, i32 1
  %180 = load i32, i32* %28, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [509 x i32], [509 x i32]* %179, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.record, %struct.record* %171, i64 %184
  %186 = getelementptr inbounds %struct.record, %struct.record* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.record*, %struct.record** %22, align 8
  %189 = load i32, i32* %29, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.record, %struct.record* %188, i64 %190
  %192 = getelementptr inbounds %struct.record, %struct.record* %191, i32 0, i32 0
  store i32 %187, i32* %192, align 4
  br label %193

193:                                              ; preds = %170, %151
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %28, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %28, align 4
  br label %147

197:                                              ; preds = %147
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %29, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %29, align 4
  br label %40

201:                                              ; preds = %40
  %202 = call i64 (...) bitcast (i64 ()* @get_time to i64 (...)*)()
  store i64 %202, i64* %25, align 8
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %204 = load i64, i64* %24, align 8
  %205 = load i64, i64* %23, align 8
  %206 = sub nsw i64 %204, %205
  %207 = sitofp i64 %206 to float
  %208 = fdiv float %207, 1.000000e+06
  %209 = fpext float %208 to double
  %210 = load i64, i64* %24, align 8
  %211 = load i64, i64* %23, align 8
  %212 = sub nsw i64 %210, %211
  %213 = sitofp i64 %212 to float
  %214 = load i64, i64* %25, align 8
  %215 = load i64, i64* %23, align 8
  %216 = sub nsw i64 %214, %215
  %217 = sitofp i64 %216 to float
  %218 = fdiv float %213, %217
  %219 = fmul float %218, 1.000000e+02
  %220 = fpext float %219 to double
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1.5, i64 0, i64 0), double %209, double %220)
  %222 = load i64, i64* %25, align 8
  %223 = load i64, i64* %24, align 8
  %224 = sub nsw i64 %222, %223
  %225 = sitofp i64 %224 to float
  %226 = fdiv float %225, 1.000000e+06
  %227 = fpext float %226 to double
  %228 = load i64, i64* %25, align 8
  %229 = load i64, i64* %24, align 8
  %230 = sub nsw i64 %228, %229
  %231 = sitofp i64 %230 to float
  %232 = load i64, i64* %25, align 8
  %233 = load i64, i64* %23, align 8
  %234 = sub nsw i64 %232, %233
  %235 = sitofp i64 %234 to float
  %236 = fdiv float %231, %235
  %237 = fmul float %236, 1.000000e+02
  %238 = fpext float %237 to double
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2.6, i64 0, i64 0), double %227, double %238)
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.7, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_init(%struct.list_t* %0, i32 (i8*, i8*)* %1, void (i8*)* %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca i32 (i8*, i8*)*, align 8
  %6 = alloca void (i8*)*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store i32 (i8*, i8*)* %1, i32 (i8*, i8*)** %5, align 8
  store void (i8*)* %2, void (i8*)** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %8, align 8
  %9 = load %struct.list_t*, %struct.list_t** %4, align 8
  %10 = getelementptr inbounds %struct.list_t, %struct.list_t* %9, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %10, align 8
  %11 = load %struct.list_t*, %struct.list_t** %4, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %5, align 8
  %14 = load %struct.list_t*, %struct.list_t** %4, align 8
  %15 = getelementptr inbounds %struct.list_t, %struct.list_t* %14, i32 0, i32 3
  store i32 (i8*, i8*)* %13, i32 (i8*, i8*)** %15, align 8
  %16 = load void (i8*)*, void (i8*)** %6, align 8
  %17 = load %struct.list_t*, %struct.list_t** %4, align 8
  %18 = getelementptr inbounds %struct.list_t, %struct.list_t* %17, i32 0, i32 4
  store void (i8*)* %16, void (i8*)** %18, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_delete(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %5 = load %struct.list_t*, %struct.list_t** %2, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  store %struct.list_item* %7, %struct.list_item** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.list_item*, %struct.list_item** %3, align 8
  %10 = icmp ne %struct.list_item* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load %struct.list_item*, %struct.list_item** %3, align 8
  store %struct.list_item* %12, %struct.list_item** %4, align 8
  %13 = load %struct.list_item*, %struct.list_item** %3, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  %15 = load %struct.list_item*, %struct.list_item** %14, align 8
  store %struct.list_item* %15, %struct.list_item** %3, align 8
  %16 = load %struct.list_item*, %struct.list_item** %4, align 8
  %17 = load %struct.list_t*, %struct.list_t** %2, align 8
  %18 = getelementptr inbounds %struct.list_t, %struct.list_t* %17, i32 0, i32 4
  %19 = load void (i8*)*, void (i8*)** %18, align 8
  call void @list_item_delete(%struct.list_item* %16, void (i8*)* %19)
  br label %8

20:                                               ; preds = %8
  %21 = load %struct.list_t*, %struct.list_t** %2, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %22, align 8
  %23 = load %struct.list_t*, %struct.list_t** %2, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %24, align 8
  %25 = load %struct.list_t*, %struct.list_t** %2, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_item_delete(%struct.list_item* %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca void (i8*)*, align 8
  store %struct.list_item* %0, %struct.list_item** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %5 = load void (i8*)*, void (i8*)** %4, align 8
  %6 = icmp ne void (i8*)* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load void (i8*)*, void (i8*)** %4, align 8
  %9 = load %struct.list_item*, %struct.list_item** %3, align 8
  %10 = getelementptr inbounds %struct.list_item, %struct.list_item* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  call void %8(i8* %11)
  br label %12

12:                                               ; preds = %7, %2
  %13 = load %struct.list_item*, %struct.list_item** %3, align 8
  %14 = bitcast %struct.list_item* %13 to i8*
  call void @free(i8* %14) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reset(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  call void @list_delete(%struct.list_t* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_item_head(%struct.list_t* %0, %struct.list_item* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.list_t*, %struct.list_t** %3, align 8
  %11 = getelementptr inbounds %struct.list_t, %struct.list_t* %10, i32 0, i32 0
  %12 = load %struct.list_item*, %struct.list_item** %11, align 8
  %13 = load %struct.list_item*, %struct.list_item** %4, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  store %struct.list_item* %12, %struct.list_item** %14, align 8
  %15 = load %struct.list_item*, %struct.list_item** %4, align 8
  %16 = load %struct.list_t*, %struct.list_t** %3, align 8
  %17 = getelementptr inbounds %struct.list_t, %struct.list_t* %16, i32 0, i32 0
  %18 = load %struct.list_item*, %struct.list_item** %17, align 8
  %19 = getelementptr inbounds %struct.list_item, %struct.list_item* %18, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %19, align 8
  %20 = load %struct.list_item*, %struct.list_item** %4, align 8
  %21 = load %struct.list_t*, %struct.list_t** %3, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 0
  store %struct.list_item* %20, %struct.list_item** %22, align 8
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  %25 = load %struct.list_item*, %struct.list_item** %24, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %26, align 8
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.list_item*, %struct.list_item** %4, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 1
  store %struct.list_item* %28, %struct.list_item** %30, align 8
  %31 = load %struct.list_t*, %struct.list_t** %3, align 8
  %32 = getelementptr inbounds %struct.list_t, %struct.list_t* %31, i32 0, i32 0
  store %struct.list_item* %28, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %4, align 8
  %34 = getelementptr inbounds %struct.list_item, %struct.list_item* %33, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %4, align 8
  %36 = getelementptr inbounds %struct.list_item, %struct.list_item* %35, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %36, align 8
  br label %37

37:                                               ; preds = %27, %9
  %38 = load %struct.list_t*, %struct.list_t** %3, align 8
  %39 = getelementptr inbounds %struct.list_t, %struct.list_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, i32* %39, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_item_tail(%struct.list_t* %0, %struct.list_item* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = getelementptr inbounds %struct.list_t, %struct.list_t* %5, i32 0, i32 0
  %7 = load %struct.list_item*, %struct.list_item** %6, align 8
  %8 = icmp ne %struct.list_item* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %2
  %10 = load %struct.list_item*, %struct.list_item** %4, align 8
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 1
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  store %struct.list_item* %10, %struct.list_item** %14, align 8
  %15 = load %struct.list_t*, %struct.list_t** %3, align 8
  %16 = getelementptr inbounds %struct.list_t, %struct.list_t* %15, i32 0, i32 1
  %17 = load %struct.list_item*, %struct.list_item** %16, align 8
  %18 = load %struct.list_item*, %struct.list_item** %4, align 8
  %19 = getelementptr inbounds %struct.list_item, %struct.list_item* %18, i32 0, i32 0
  store %struct.list_item* %17, %struct.list_item** %19, align 8
  %20 = load %struct.list_item*, %struct.list_item** %4, align 8
  %21 = getelementptr inbounds %struct.list_item, %struct.list_item* %20, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %21, align 8
  %22 = load %struct.list_item*, %struct.list_item** %4, align 8
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 1
  store %struct.list_item* %22, %struct.list_item** %24, align 8
  br label %35

25:                                               ; preds = %2
  %26 = load %struct.list_item*, %struct.list_item** %4, align 8
  %27 = load %struct.list_t*, %struct.list_t** %3, align 8
  %28 = getelementptr inbounds %struct.list_t, %struct.list_t* %27, i32 0, i32 1
  store %struct.list_item* %26, %struct.list_item** %28, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 0
  store %struct.list_item* %26, %struct.list_item** %30, align 8
  %31 = load %struct.list_item*, %struct.list_item** %4, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %4, align 8
  %34 = getelementptr inbounds %struct.list_item, %struct.list_item* %33, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %34, align 8
  br label %35

35:                                               ; preds = %25, %9
  %36 = load %struct.list_t*, %struct.list_t** %3, align 8
  %37 = getelementptr inbounds %struct.list_t, %struct.list_t* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = add i32 %38, 1
  store i32 %39, i32* %37, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_item_before(%struct.list_t* %0, %struct.list_item* %1, %struct.list_item* %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store %struct.list_item* %2, %struct.list_item** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 0
  %9 = load %struct.list_item*, %struct.list_item** %8, align 8
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp eq %struct.list_item* %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.list_item*, %struct.list_item** %5, align 8
  %14 = load %struct.list_item*, %struct.list_item** %6, align 8
  %15 = getelementptr inbounds %struct.list_item, %struct.list_item* %14, i32 0, i32 1
  store %struct.list_item* %13, %struct.list_item** %15, align 8
  %16 = load %struct.list_item*, %struct.list_item** %6, align 8
  %17 = getelementptr inbounds %struct.list_item, %struct.list_item* %16, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %17, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load %struct.list_t*, %struct.list_t** %4, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  %21 = load %struct.list_item*, %struct.list_item** %6, align 8
  %22 = load %struct.list_item*, %struct.list_item** %5, align 8
  %23 = getelementptr inbounds %struct.list_item, %struct.list_item* %22, i32 0, i32 0
  store %struct.list_item* %21, %struct.list_item** %23, align 8
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = load %struct.list_item*, %struct.list_item** %6, align 8
  %27 = getelementptr inbounds %struct.list_item, %struct.list_item* %26, i32 0, i32 1
  store %struct.list_item* %25, %struct.list_item** %27, align 8
  %28 = load %struct.list_item*, %struct.list_item** %5, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 0
  %30 = load %struct.list_item*, %struct.list_item** %29, align 8
  %31 = load %struct.list_item*, %struct.list_item** %6, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 0
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %6, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 0
  %36 = load %struct.list_item*, %struct.list_item** %35, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 1
  store %struct.list_item* %33, %struct.list_item** %37, align 8
  %38 = load %struct.list_item*, %struct.list_item** %6, align 8
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 0
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  br label %41

41:                                               ; preds = %24, %12
  %42 = load %struct.list_t*, %struct.list_t** %4, align 8
  %43 = getelementptr inbounds %struct.list_t, %struct.list_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_item_after(%struct.list_t* %0, %struct.list_item* %1, %struct.list_item* %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store %struct.list_item* %2, %struct.list_item** %6, align 8
  %7 = load %struct.list_t*, %struct.list_t** %4, align 8
  %8 = getelementptr inbounds %struct.list_t, %struct.list_t* %7, i32 0, i32 1
  %9 = load %struct.list_item*, %struct.list_item** %8, align 8
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp eq %struct.list_item* %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = load %struct.list_item*, %struct.list_item** %5, align 8
  %14 = load %struct.list_item*, %struct.list_item** %6, align 8
  %15 = getelementptr inbounds %struct.list_item, %struct.list_item* %14, i32 0, i32 0
  store %struct.list_item* %13, %struct.list_item** %15, align 8
  %16 = load %struct.list_item*, %struct.list_item** %6, align 8
  %17 = getelementptr inbounds %struct.list_item, %struct.list_item* %16, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %17, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load %struct.list_t*, %struct.list_t** %4, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 1
  store %struct.list_item* %18, %struct.list_item** %20, align 8
  %21 = load %struct.list_item*, %struct.list_item** %6, align 8
  %22 = load %struct.list_item*, %struct.list_item** %5, align 8
  %23 = getelementptr inbounds %struct.list_item, %struct.list_item* %22, i32 0, i32 1
  store %struct.list_item* %21, %struct.list_item** %23, align 8
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = load %struct.list_item*, %struct.list_item** %6, align 8
  %27 = getelementptr inbounds %struct.list_item, %struct.list_item* %26, i32 0, i32 0
  store %struct.list_item* %25, %struct.list_item** %27, align 8
  %28 = load %struct.list_item*, %struct.list_item** %5, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 1
  %30 = load %struct.list_item*, %struct.list_item** %29, align 8
  %31 = load %struct.list_item*, %struct.list_item** %6, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 1
  store %struct.list_item* %30, %struct.list_item** %32, align 8
  %33 = load %struct.list_item*, %struct.list_item** %6, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 1
  %36 = load %struct.list_item*, %struct.list_item** %35, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 0
  store %struct.list_item* %33, %struct.list_item** %37, align 8
  %38 = load %struct.list_item*, %struct.list_item** %6, align 8
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 1
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  br label %41

41:                                               ; preds = %24, %12
  %42 = load %struct.list_t*, %struct.list_t** %4, align 8
  %43 = getelementptr inbounds %struct.list_t, %struct.list_t* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  store i32 %45, i32* %43, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_item_sorted(%struct.list_t* %0, %struct.list_item* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = icmp ne %struct.list_item* %8, null
  br i1 %9, label %10, label %71

10:                                               ; preds = %2
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 0
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  store %struct.list_item* %13, %struct.list_item** %5, align 8
  br label %14

14:                                               ; preds = %30, %10
  %15 = load %struct.list_item*, %struct.list_item** %5, align 8
  %16 = icmp ne %struct.list_item* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.list_t*, %struct.list_t** %3, align 8
  %19 = getelementptr inbounds %struct.list_t, %struct.list_t* %18, i32 0, i32 3
  %20 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %19, align 8
  %21 = load %struct.list_item*, %struct.list_item** %4, align 8
  %22 = call i8* @list_item_get_datum(%struct.list_item* %21)
  %23 = load %struct.list_item*, %struct.list_item** %5, align 8
  %24 = call i8* @list_item_get_datum(%struct.list_item* %23)
  %25 = call i32 %20(i8* %22, i8* %24)
  %26 = icmp slt i32 %25, 0
  br label %27

27:                                               ; preds = %17, %14
  %28 = phi i1 [ false, %14 ], [ %26, %17 ]
  br i1 %28, label %29, label %34

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.list_item*, %struct.list_item** %5, align 8
  %32 = getelementptr inbounds %struct.list_item, %struct.list_item* %31, i32 0, i32 1
  %33 = load %struct.list_item*, %struct.list_item** %32, align 8
  store %struct.list_item* %33, %struct.list_item** %5, align 8
  br label %14

34:                                               ; preds = %27
  %35 = load %struct.list_item*, %struct.list_item** %5, align 8
  %36 = icmp ne %struct.list_item* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load %struct.list_item*, %struct.list_item** %5, align 8
  %39 = load %struct.list_item*, %struct.list_item** %4, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 1
  store %struct.list_item* %38, %struct.list_item** %40, align 8
  %41 = load %struct.list_item*, %struct.list_item** %5, align 8
  %42 = getelementptr inbounds %struct.list_item, %struct.list_item* %41, i32 0, i32 0
  %43 = load %struct.list_item*, %struct.list_item** %42, align 8
  %44 = load %struct.list_item*, %struct.list_item** %4, align 8
  %45 = getelementptr inbounds %struct.list_item, %struct.list_item* %44, i32 0, i32 0
  store %struct.list_item* %43, %struct.list_item** %45, align 8
  %46 = load %struct.list_item*, %struct.list_item** %4, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 0
  store %struct.list_item* %46, %struct.list_item** %48, align 8
  %49 = load %struct.list_item*, %struct.list_item** %4, align 8
  %50 = load %struct.list_item*, %struct.list_item** %4, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 0
  %52 = load %struct.list_item*, %struct.list_item** %51, align 8
  %53 = getelementptr inbounds %struct.list_item, %struct.list_item* %52, i32 0, i32 1
  store %struct.list_item* %49, %struct.list_item** %53, align 8
  br label %70

54:                                               ; preds = %34
  %55 = load %struct.list_item*, %struct.list_item** %4, align 8
  %56 = load %struct.list_t*, %struct.list_t** %3, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 1
  %58 = load %struct.list_item*, %struct.list_item** %57, align 8
  %59 = getelementptr inbounds %struct.list_item, %struct.list_item* %58, i32 0, i32 1
  store %struct.list_item* %55, %struct.list_item** %59, align 8
  %60 = load %struct.list_t*, %struct.list_t** %3, align 8
  %61 = getelementptr inbounds %struct.list_t, %struct.list_t* %60, i32 0, i32 1
  %62 = load %struct.list_item*, %struct.list_item** %61, align 8
  %63 = load %struct.list_item*, %struct.list_item** %4, align 8
  %64 = getelementptr inbounds %struct.list_item, %struct.list_item* %63, i32 0, i32 0
  store %struct.list_item* %62, %struct.list_item** %64, align 8
  %65 = load %struct.list_item*, %struct.list_item** %4, align 8
  %66 = getelementptr inbounds %struct.list_item, %struct.list_item* %65, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %66, align 8
  %67 = load %struct.list_item*, %struct.list_item** %4, align 8
  %68 = load %struct.list_t*, %struct.list_t** %3, align 8
  %69 = getelementptr inbounds %struct.list_t, %struct.list_t* %68, i32 0, i32 1
  store %struct.list_item* %67, %struct.list_item** %69, align 8
  br label %70

70:                                               ; preds = %54, %37
  br label %81

71:                                               ; preds = %2
  %72 = load %struct.list_item*, %struct.list_item** %4, align 8
  %73 = load %struct.list_t*, %struct.list_t** %3, align 8
  %74 = getelementptr inbounds %struct.list_t, %struct.list_t* %73, i32 0, i32 1
  store %struct.list_item* %72, %struct.list_item** %74, align 8
  %75 = load %struct.list_t*, %struct.list_t** %3, align 8
  %76 = getelementptr inbounds %struct.list_t, %struct.list_t* %75, i32 0, i32 0
  store %struct.list_item* %72, %struct.list_item** %76, align 8
  %77 = load %struct.list_item*, %struct.list_item** %4, align 8
  %78 = getelementptr inbounds %struct.list_item, %struct.list_item* %77, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %78, align 8
  %79 = load %struct.list_item*, %struct.list_item** %4, align 8
  %80 = getelementptr inbounds %struct.list_item, %struct.list_item* %79, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %80, align 8
  br label %81

81:                                               ; preds = %71, %70
  %82 = load %struct.list_t*, %struct.list_t** %3, align 8
  %83 = getelementptr inbounds %struct.list_t, %struct.list_t* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add i32 %84, 1
  store i32 %85, i32* %83, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_item_get_datum(%struct.list_item* %0) #0 {
  %2 = alloca %struct.list_item*, align 8
  store %struct.list_item* %0, %struct.list_item** %2, align 8
  %3 = load %struct.list_item*, %struct.list_item** %2, align 8
  %4 = getelementptr inbounds %struct.list_item, %struct.list_item* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  ret i8* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_head(%struct.list_t* %0, i8* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call noalias i8* @malloc(i64 24) #6
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 290)
  call void @exit(i32 -1) #7
  unreachable

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.list_item*
  store %struct.list_item* %16, %struct.list_item** %5, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = load i8*, i8** %4, align 8
  call void @list_item_init(%struct.list_item* %17, i8* %18)
  %19 = load %struct.list_t*, %struct.list_t** %3, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  %21 = load %struct.list_item*, %struct.list_item** %20, align 8
  %22 = icmp ne %struct.list_item* %21, null
  br i1 %22, label %23, label %41

23:                                               ; preds = %13
  %24 = load %struct.list_t*, %struct.list_t** %3, align 8
  %25 = getelementptr inbounds %struct.list_t, %struct.list_t* %24, i32 0, i32 0
  %26 = load %struct.list_item*, %struct.list_item** %25, align 8
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = getelementptr inbounds %struct.list_item, %struct.list_item* %27, i32 0, i32 1
  store %struct.list_item* %26, %struct.list_item** %28, align 8
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = load %struct.list_t*, %struct.list_t** %3, align 8
  %31 = getelementptr inbounds %struct.list_t, %struct.list_t* %30, i32 0, i32 0
  %32 = load %struct.list_item*, %struct.list_item** %31, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 0
  store %struct.list_item* %29, %struct.list_item** %33, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = load %struct.list_t*, %struct.list_t** %3, align 8
  %36 = getelementptr inbounds %struct.list_t, %struct.list_t* %35, i32 0, i32 0
  store %struct.list_item* %34, %struct.list_item** %36, align 8
  %37 = load %struct.list_t*, %struct.list_t** %3, align 8
  %38 = getelementptr inbounds %struct.list_t, %struct.list_t* %37, i32 0, i32 0
  %39 = load %struct.list_item*, %struct.list_item** %38, align 8
  %40 = getelementptr inbounds %struct.list_item, %struct.list_item* %39, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %40, align 8
  br label %51

41:                                               ; preds = %13
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 1
  store %struct.list_item* %42, %struct.list_item** %44, align 8
  %45 = load %struct.list_t*, %struct.list_t** %3, align 8
  %46 = getelementptr inbounds %struct.list_t, %struct.list_t* %45, i32 0, i32 0
  store %struct.list_item* %42, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %48, align 8
  %49 = load %struct.list_item*, %struct.list_item** %5, align 8
  %50 = getelementptr inbounds %struct.list_item, %struct.list_item* %49, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %50, align 8
  br label %51

51:                                               ; preds = %41, %23
  %52 = load %struct.list_t*, %struct.list_t** %3, align 8
  %53 = getelementptr inbounds %struct.list_t, %struct.list_t* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = add i32 %54, 1
  store i32 %55, i32* %53, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_item_init(%struct.list_item* %0, i8* %1) #0 {
  %3 = alloca %struct.list_item*, align 8
  %4 = alloca i8*, align 8
  store %struct.list_item* %0, %struct.list_item** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.list_item*, %struct.list_item** %3, align 8
  %6 = getelementptr inbounds %struct.list_item, %struct.list_item* %5, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %6, align 8
  %7 = load %struct.list_item*, %struct.list_item** %3, align 8
  %8 = getelementptr inbounds %struct.list_item, %struct.list_item* %7, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %8, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.list_item*, %struct.list_item** %3, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_tail(%struct.list_t* %0, i8* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = call noalias i8* @malloc(i64 24) #6
  store i8* %8, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 311)
  call void @exit(i32 -1) #7
  unreachable

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.list_item*
  store %struct.list_item* %16, %struct.list_item** %5, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = load i8*, i8** %4, align 8
  call void @list_item_init(%struct.list_item* %17, i8* %18)
  %19 = load %struct.list_t*, %struct.list_t** %3, align 8
  %20 = getelementptr inbounds %struct.list_t, %struct.list_t* %19, i32 0, i32 0
  %21 = load %struct.list_item*, %struct.list_item** %20, align 8
  %22 = icmp ne %struct.list_item* %21, null
  br i1 %22, label %23, label %39

23:                                               ; preds = %13
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = load %struct.list_t*, %struct.list_t** %3, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  %28 = getelementptr inbounds %struct.list_item, %struct.list_item* %27, i32 0, i32 1
  store %struct.list_item* %24, %struct.list_item** %28, align 8
  %29 = load %struct.list_t*, %struct.list_t** %3, align 8
  %30 = getelementptr inbounds %struct.list_t, %struct.list_t* %29, i32 0, i32 1
  %31 = load %struct.list_item*, %struct.list_item** %30, align 8
  %32 = load %struct.list_item*, %struct.list_item** %5, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 0
  store %struct.list_item* %31, %struct.list_item** %33, align 8
  %34 = load %struct.list_item*, %struct.list_item** %5, align 8
  %35 = getelementptr inbounds %struct.list_item, %struct.list_item* %34, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %35, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = load %struct.list_t*, %struct.list_t** %3, align 8
  %38 = getelementptr inbounds %struct.list_t, %struct.list_t* %37, i32 0, i32 1
  store %struct.list_item* %36, %struct.list_item** %38, align 8
  br label %49

39:                                               ; preds = %13
  %40 = load %struct.list_item*, %struct.list_item** %5, align 8
  %41 = load %struct.list_t*, %struct.list_t** %3, align 8
  %42 = getelementptr inbounds %struct.list_t, %struct.list_t* %41, i32 0, i32 1
  store %struct.list_item* %40, %struct.list_item** %42, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 0
  store %struct.list_item* %40, %struct.list_item** %44, align 8
  %45 = load %struct.list_item*, %struct.list_item** %5, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %5, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %48, align 8
  br label %49

49:                                               ; preds = %39, %23
  %50 = load %struct.list_t*, %struct.list_t** %3, align 8
  %51 = getelementptr inbounds %struct.list_t, %struct.list_t* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, 1
  store i32 %53, i32* %51, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_before(%struct.list_t* %0, %struct.list_item* %1, i8* %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call noalias i8* @malloc(i64 24) #6
  store i8* %10, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 332)
  call void @exit(i32 -1) #7
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.list_item*
  store %struct.list_item* %18, %struct.list_item** %7, align 8
  %19 = load %struct.list_item*, %struct.list_item** %7, align 8
  %20 = load i8*, i8** %6, align 8
  call void @list_item_init(%struct.list_item* %19, i8* %20)
  %21 = load %struct.list_t*, %struct.list_t** %4, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 0
  %23 = load %struct.list_item*, %struct.list_item** %22, align 8
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = icmp eq %struct.list_item* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = load %struct.list_item*, %struct.list_item** %7, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 1
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item*, %struct.list_item** %7, align 8
  %31 = getelementptr inbounds %struct.list_item, %struct.list_item* %30, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %31, align 8
  %32 = load %struct.list_item*, %struct.list_item** %7, align 8
  %33 = load %struct.list_t*, %struct.list_t** %4, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 0
  store %struct.list_item* %32, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %7, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 0
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = load %struct.list_item*, %struct.list_item** %7, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 1
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = getelementptr inbounds %struct.list_item, %struct.list_item* %42, i32 0, i32 0
  %44 = load %struct.list_item*, %struct.list_item** %43, align 8
  %45 = load %struct.list_item*, %struct.list_item** %7, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 0
  store %struct.list_item* %44, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %7, align 8
  %48 = load %struct.list_item*, %struct.list_item** %5, align 8
  %49 = getelementptr inbounds %struct.list_item, %struct.list_item* %48, i32 0, i32 0
  %50 = load %struct.list_item*, %struct.list_item** %49, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 1
  store %struct.list_item* %47, %struct.list_item** %51, align 8
  %52 = load %struct.list_item*, %struct.list_item** %7, align 8
  %53 = load %struct.list_item*, %struct.list_item** %5, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 0
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  br label %55

55:                                               ; preds = %38, %26
  %56 = load %struct.list_t*, %struct.list_t** %4, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_after(%struct.list_t* %0, %struct.list_item* %1, i8* %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.list_item*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %4, align 8
  store %struct.list_item* %1, %struct.list_item** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = call noalias i8* @malloc(i64 24) #6
  store i8* %10, i8** %8, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 358)
  call void @exit(i32 -1) #7
  unreachable

15:                                               ; preds = %3
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.list_item*
  store %struct.list_item* %18, %struct.list_item** %7, align 8
  %19 = load %struct.list_item*, %struct.list_item** %7, align 8
  %20 = load i8*, i8** %6, align 8
  call void @list_item_init(%struct.list_item* %19, i8* %20)
  %21 = load %struct.list_t*, %struct.list_t** %4, align 8
  %22 = getelementptr inbounds %struct.list_t, %struct.list_t* %21, i32 0, i32 1
  %23 = load %struct.list_item*, %struct.list_item** %22, align 8
  %24 = load %struct.list_item*, %struct.list_item** %5, align 8
  %25 = icmp eq %struct.list_item* %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %15
  %27 = load %struct.list_item*, %struct.list_item** %5, align 8
  %28 = load %struct.list_item*, %struct.list_item** %7, align 8
  %29 = getelementptr inbounds %struct.list_item, %struct.list_item* %28, i32 0, i32 0
  store %struct.list_item* %27, %struct.list_item** %29, align 8
  %30 = load %struct.list_item*, %struct.list_item** %7, align 8
  %31 = getelementptr inbounds %struct.list_item, %struct.list_item* %30, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %31, align 8
  %32 = load %struct.list_item*, %struct.list_item** %7, align 8
  %33 = load %struct.list_t*, %struct.list_t** %4, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 1
  store %struct.list_item* %32, %struct.list_item** %34, align 8
  %35 = load %struct.list_item*, %struct.list_item** %7, align 8
  %36 = load %struct.list_item*, %struct.list_item** %5, align 8
  %37 = getelementptr inbounds %struct.list_item, %struct.list_item* %36, i32 0, i32 1
  store %struct.list_item* %35, %struct.list_item** %37, align 8
  br label %55

38:                                               ; preds = %15
  %39 = load %struct.list_item*, %struct.list_item** %5, align 8
  %40 = load %struct.list_item*, %struct.list_item** %7, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 0
  store %struct.list_item* %39, %struct.list_item** %41, align 8
  %42 = load %struct.list_item*, %struct.list_item** %5, align 8
  %43 = getelementptr inbounds %struct.list_item, %struct.list_item* %42, i32 0, i32 1
  %44 = load %struct.list_item*, %struct.list_item** %43, align 8
  %45 = load %struct.list_item*, %struct.list_item** %7, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 1
  store %struct.list_item* %44, %struct.list_item** %46, align 8
  %47 = load %struct.list_item*, %struct.list_item** %7, align 8
  %48 = load %struct.list_item*, %struct.list_item** %5, align 8
  %49 = getelementptr inbounds %struct.list_item, %struct.list_item* %48, i32 0, i32 1
  %50 = load %struct.list_item*, %struct.list_item** %49, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 0
  store %struct.list_item* %47, %struct.list_item** %51, align 8
  %52 = load %struct.list_item*, %struct.list_item** %7, align 8
  %53 = load %struct.list_item*, %struct.list_item** %5, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  br label %55

55:                                               ; preds = %38, %26
  %56 = load %struct.list_t*, %struct.list_t** %4, align 8
  %57 = getelementptr inbounds %struct.list_t, %struct.list_t* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, i32* %57, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_insert_sorted(%struct.list_t* %0, i8* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  %6 = alloca %struct.list_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call noalias i8* @malloc(i64 24) #6
  store i8* %9, i8** %7, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 384)
  call void @exit(i32 -1) #7
  unreachable

14:                                               ; preds = %2
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.list_item*
  store %struct.list_item* %17, %struct.list_item** %6, align 8
  %18 = load %struct.list_item*, %struct.list_item** %6, align 8
  %19 = load i8*, i8** %4, align 8
  call void @list_item_init(%struct.list_item* %18, i8* %19)
  %20 = load %struct.list_t*, %struct.list_t** %3, align 8
  %21 = getelementptr inbounds %struct.list_t, %struct.list_t* %20, i32 0, i32 0
  %22 = load %struct.list_item*, %struct.list_item** %21, align 8
  %23 = icmp ne %struct.list_item* %22, null
  br i1 %23, label %24, label %85

24:                                               ; preds = %14
  %25 = load %struct.list_t*, %struct.list_t** %3, align 8
  %26 = getelementptr inbounds %struct.list_t, %struct.list_t* %25, i32 0, i32 0
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %28

28:                                               ; preds = %44, %24
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = icmp ne %struct.list_item* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.list_t*, %struct.list_t** %3, align 8
  %33 = getelementptr inbounds %struct.list_t, %struct.list_t* %32, i32 0, i32 3
  %34 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %33, align 8
  %35 = load %struct.list_item*, %struct.list_item** %6, align 8
  %36 = call i8* @list_item_get_datum(%struct.list_item* %35)
  %37 = load %struct.list_item*, %struct.list_item** %5, align 8
  %38 = call i8* @list_item_get_datum(%struct.list_item* %37)
  %39 = call i32 %34(i8* %36, i8* %38)
  %40 = icmp slt i32 %39, 0
  br label %41

41:                                               ; preds = %31, %28
  %42 = phi i1 [ false, %28 ], [ %40, %31 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.list_item*, %struct.list_item** %5, align 8
  %46 = getelementptr inbounds %struct.list_item, %struct.list_item* %45, i32 0, i32 1
  %47 = load %struct.list_item*, %struct.list_item** %46, align 8
  store %struct.list_item* %47, %struct.list_item** %5, align 8
  br label %28

48:                                               ; preds = %41
  %49 = load %struct.list_item*, %struct.list_item** %5, align 8
  %50 = icmp ne %struct.list_item* %49, null
  br i1 %50, label %51, label %68

51:                                               ; preds = %48
  %52 = load %struct.list_item*, %struct.list_item** %5, align 8
  %53 = load %struct.list_item*, %struct.list_item** %6, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %54, align 8
  %55 = load %struct.list_item*, %struct.list_item** %5, align 8
  %56 = getelementptr inbounds %struct.list_item, %struct.list_item* %55, i32 0, i32 0
  %57 = load %struct.list_item*, %struct.list_item** %56, align 8
  %58 = load %struct.list_item*, %struct.list_item** %6, align 8
  %59 = getelementptr inbounds %struct.list_item, %struct.list_item* %58, i32 0, i32 0
  store %struct.list_item* %57, %struct.list_item** %59, align 8
  %60 = load %struct.list_item*, %struct.list_item** %6, align 8
  %61 = load %struct.list_item*, %struct.list_item** %5, align 8
  %62 = getelementptr inbounds %struct.list_item, %struct.list_item* %61, i32 0, i32 0
  store %struct.list_item* %60, %struct.list_item** %62, align 8
  %63 = load %struct.list_item*, %struct.list_item** %6, align 8
  %64 = load %struct.list_item*, %struct.list_item** %6, align 8
  %65 = getelementptr inbounds %struct.list_item, %struct.list_item* %64, i32 0, i32 0
  %66 = load %struct.list_item*, %struct.list_item** %65, align 8
  %67 = getelementptr inbounds %struct.list_item, %struct.list_item* %66, i32 0, i32 1
  store %struct.list_item* %63, %struct.list_item** %67, align 8
  br label %84

68:                                               ; preds = %48
  %69 = load %struct.list_item*, %struct.list_item** %6, align 8
  %70 = load %struct.list_t*, %struct.list_t** %3, align 8
  %71 = getelementptr inbounds %struct.list_t, %struct.list_t* %70, i32 0, i32 1
  %72 = load %struct.list_item*, %struct.list_item** %71, align 8
  %73 = getelementptr inbounds %struct.list_item, %struct.list_item* %72, i32 0, i32 1
  store %struct.list_item* %69, %struct.list_item** %73, align 8
  %74 = load %struct.list_t*, %struct.list_t** %3, align 8
  %75 = getelementptr inbounds %struct.list_t, %struct.list_t* %74, i32 0, i32 1
  %76 = load %struct.list_item*, %struct.list_item** %75, align 8
  %77 = load %struct.list_item*, %struct.list_item** %6, align 8
  %78 = getelementptr inbounds %struct.list_item, %struct.list_item* %77, i32 0, i32 0
  store %struct.list_item* %76, %struct.list_item** %78, align 8
  %79 = load %struct.list_item*, %struct.list_item** %6, align 8
  %80 = getelementptr inbounds %struct.list_item, %struct.list_item* %79, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %80, align 8
  %81 = load %struct.list_item*, %struct.list_item** %6, align 8
  %82 = load %struct.list_t*, %struct.list_t** %3, align 8
  %83 = getelementptr inbounds %struct.list_t, %struct.list_t* %82, i32 0, i32 1
  store %struct.list_item* %81, %struct.list_item** %83, align 8
  br label %84

84:                                               ; preds = %68, %51
  br label %95

85:                                               ; preds = %14
  %86 = load %struct.list_item*, %struct.list_item** %6, align 8
  %87 = load %struct.list_t*, %struct.list_t** %3, align 8
  %88 = getelementptr inbounds %struct.list_t, %struct.list_t* %87, i32 0, i32 1
  store %struct.list_item* %86, %struct.list_item** %88, align 8
  %89 = load %struct.list_t*, %struct.list_t** %3, align 8
  %90 = getelementptr inbounds %struct.list_t, %struct.list_t* %89, i32 0, i32 0
  store %struct.list_item* %86, %struct.list_item** %90, align 8
  %91 = load %struct.list_item*, %struct.list_item** %6, align 8
  %92 = getelementptr inbounds %struct.list_item, %struct.list_item* %91, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %92, align 8
  %93 = load %struct.list_item*, %struct.list_item** %6, align 8
  %94 = getelementptr inbounds %struct.list_item, %struct.list_item* %93, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %94, align 8
  br label %95

95:                                               ; preds = %85, %84
  %96 = load %struct.list_t*, %struct.list_t** %3, align 8
  %97 = getelementptr inbounds %struct.list_t, %struct.list_t* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add i32 %98, 1
  store i32 %99, i32* %97, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_remove_item(%struct.list_t* %0, %struct.list_item* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item* %1, %struct.list_item** %4, align 8
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = icmp eq %struct.list_item* %5, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %2
  %11 = load %struct.list_t*, %struct.list_t** %3, align 8
  %12 = getelementptr inbounds %struct.list_t, %struct.list_t* %11, i32 0, i32 0
  %13 = load %struct.list_item*, %struct.list_item** %12, align 8
  %14 = getelementptr inbounds %struct.list_item, %struct.list_item* %13, i32 0, i32 1
  %15 = load %struct.list_item*, %struct.list_item** %14, align 8
  %16 = load %struct.list_t*, %struct.list_t** %3, align 8
  %17 = getelementptr inbounds %struct.list_t, %struct.list_t* %16, i32 0, i32 0
  store %struct.list_item* %15, %struct.list_item** %17, align 8
  %18 = load %struct.list_t*, %struct.list_t** %3, align 8
  %19 = getelementptr inbounds %struct.list_t, %struct.list_t* %18, i32 0, i32 0
  %20 = load %struct.list_item*, %struct.list_item** %19, align 8
  %21 = icmp ne %struct.list_item* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = load %struct.list_t*, %struct.list_t** %3, align 8
  %24 = getelementptr inbounds %struct.list_t, %struct.list_t* %23, i32 0, i32 0
  %25 = load %struct.list_item*, %struct.list_item** %24, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 0
  store %struct.list_item* null, %struct.list_item** %26, align 8
  br label %30

27:                                               ; preds = %10
  %28 = load %struct.list_t*, %struct.list_t** %3, align 8
  %29 = getelementptr inbounds %struct.list_t, %struct.list_t* %28, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  br label %65

31:                                               ; preds = %2
  %32 = load %struct.list_item*, %struct.list_item** %4, align 8
  %33 = load %struct.list_t*, %struct.list_t** %3, align 8
  %34 = getelementptr inbounds %struct.list_t, %struct.list_t* %33, i32 0, i32 1
  %35 = load %struct.list_item*, %struct.list_item** %34, align 8
  %36 = icmp eq %struct.list_item* %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load %struct.list_t*, %struct.list_t** %3, align 8
  %39 = getelementptr inbounds %struct.list_t, %struct.list_t* %38, i32 0, i32 1
  %40 = load %struct.list_item*, %struct.list_item** %39, align 8
  %41 = getelementptr inbounds %struct.list_item, %struct.list_item* %40, i32 0, i32 0
  %42 = load %struct.list_item*, %struct.list_item** %41, align 8
  %43 = load %struct.list_t*, %struct.list_t** %3, align 8
  %44 = getelementptr inbounds %struct.list_t, %struct.list_t* %43, i32 0, i32 1
  store %struct.list_item* %42, %struct.list_item** %44, align 8
  %45 = load %struct.list_t*, %struct.list_t** %3, align 8
  %46 = getelementptr inbounds %struct.list_t, %struct.list_t* %45, i32 0, i32 1
  %47 = load %struct.list_item*, %struct.list_item** %46, align 8
  %48 = getelementptr inbounds %struct.list_item, %struct.list_item* %47, i32 0, i32 1
  store %struct.list_item* null, %struct.list_item** %48, align 8
  br label %64

49:                                               ; preds = %31
  %50 = load %struct.list_item*, %struct.list_item** %4, align 8
  %51 = getelementptr inbounds %struct.list_item, %struct.list_item* %50, i32 0, i32 1
  %52 = load %struct.list_item*, %struct.list_item** %51, align 8
  %53 = load %struct.list_item*, %struct.list_item** %4, align 8
  %54 = getelementptr inbounds %struct.list_item, %struct.list_item* %53, i32 0, i32 0
  %55 = load %struct.list_item*, %struct.list_item** %54, align 8
  %56 = getelementptr inbounds %struct.list_item, %struct.list_item* %55, i32 0, i32 1
  store %struct.list_item* %52, %struct.list_item** %56, align 8
  %57 = load %struct.list_item*, %struct.list_item** %4, align 8
  %58 = getelementptr inbounds %struct.list_item, %struct.list_item* %57, i32 0, i32 0
  %59 = load %struct.list_item*, %struct.list_item** %58, align 8
  %60 = load %struct.list_item*, %struct.list_item** %4, align 8
  %61 = getelementptr inbounds %struct.list_item, %struct.list_item* %60, i32 0, i32 1
  %62 = load %struct.list_item*, %struct.list_item** %61, align 8
  %63 = getelementptr inbounds %struct.list_item, %struct.list_item* %62, i32 0, i32 0
  store %struct.list_item* %59, %struct.list_item** %63, align 8
  br label %64

64:                                               ; preds = %49, %37
  br label %65

65:                                               ; preds = %64, %30
  %66 = load %struct.list_t*, %struct.list_t** %3, align 8
  %67 = getelementptr inbounds %struct.list_t, %struct.list_t* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.list_item*, %struct.list_item** %4, align 8
  %71 = load %struct.list_t*, %struct.list_t** %3, align 8
  %72 = getelementptr inbounds %struct.list_t, %struct.list_t* %71, i32 0, i32 4
  %73 = load void (i8*)*, void (i8*)** %72, align 8
  call void @list_item_delete(%struct.list_item* %70, void (i8*)* %73)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_remove_head(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = load %struct.list_t*, %struct.list_t** %2, align 8
  %5 = getelementptr inbounds %struct.list_t, %struct.list_t* %4, i32 0, i32 0
  %6 = load %struct.list_item*, %struct.list_item** %5, align 8
  call void @list_remove_item(%struct.list_t* %3, %struct.list_item* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_remove_tail(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = load %struct.list_t*, %struct.list_t** %2, align 8
  %5 = getelementptr inbounds %struct.list_t, %struct.list_t* %4, i32 0, i32 1
  %6 = load %struct.list_item*, %struct.list_item** %5, align 8
  call void @list_remove_item(%struct.list_t* %3, %struct.list_item* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list_item* @list_find_item(%struct.list_t* %0, i8* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.list_t*, %struct.list_t** %3, align 8
  %14 = getelementptr inbounds %struct.list_t, %struct.list_t* %13, i32 0, i32 3
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = call i8* @list_item_get_datum(%struct.list_item* %17)
  %19 = call i32 %15(i8* %16, i8* %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %9

28:                                               ; preds = %21
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  ret %struct.list_item* %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list_item* @list_get_head_item(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  ret %struct.list_item* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list_item* @list_get_tail_item(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 1
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  ret %struct.list_item* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_find(%struct.list_t* %0, i8* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load %struct.list_t*, %struct.list_t** %3, align 8
  %14 = getelementptr inbounds %struct.list_t, %struct.list_t* %13, i32 0, i32 3
  %15 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %14, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = call i8* @list_item_get_datum(%struct.list_item* %17)
  %19 = call i32 %15(i8* %16, i8* %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %12, %9
  %22 = phi i1 [ false, %9 ], [ %20, %12 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.list_item*, %struct.list_item** %5, align 8
  %26 = getelementptr inbounds %struct.list_item, %struct.list_item* %25, i32 0, i32 1
  %27 = load %struct.list_item*, %struct.list_item** %26, align 8
  store %struct.list_item* %27, %struct.list_item** %5, align 8
  br label %9

28:                                               ; preds = %21
  %29 = load %struct.list_item*, %struct.list_item** %5, align 8
  %30 = icmp ne %struct.list_item* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.list_item*, %struct.list_item** %5, align 8
  %33 = getelementptr inbounds %struct.list_item, %struct.list_item* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  br label %36

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i8* [ %34, %31 ], [ null, %35 ]
  ret i8* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_get_head(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 0
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.list_t*, %struct.list_t** %2, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8* [ %12, %7 ], [ null, %13 ]
  ret i8* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_get_tail(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 1
  %5 = load %struct.list_item*, %struct.list_item** %4, align 8
  %6 = icmp ne %struct.list_item* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.list_t*, %struct.list_t** %2, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = getelementptr inbounds %struct.list_item, %struct.list_item* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  br label %14

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i8* [ %12, %7 ], [ null, %13 ]
  ret i8* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @list_get_length(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @list_is_empty(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @list_not_empty(%struct.list_t* %0) #0 {
  %2 = alloca %struct.list_t*, align 8
  store %struct.list_t* %0, %struct.list_t** %2, align 8
  %3 = load %struct.list_t*, %struct.list_t** %2, align 8
  %4 = getelementptr inbounds %struct.list_t, %struct.list_t* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_visit_items(%struct.list_t* %0, void (i8*)* %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca void (i8*)*, align 8
  %5 = alloca %struct.list_item*, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store void (i8*)* %1, void (i8*)** %4, align 8
  %6 = load %struct.list_t*, %struct.list_t** %3, align 8
  %7 = getelementptr inbounds %struct.list_t, %struct.list_t* %6, i32 0, i32 0
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  store %struct.list_item* %8, %struct.list_item** %5, align 8
  br label %9

9:                                                ; preds = %16, %2
  %10 = load %struct.list_item*, %struct.list_item** %5, align 8
  %11 = icmp ne %struct.list_item* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load void (i8*)*, void (i8*)** %4, align 8
  %14 = load %struct.list_item*, %struct.list_item** %5, align 8
  %15 = call i8* @list_item_get_datum(%struct.list_item* %14)
  call void %13(i8* %15)
  br label %16

16:                                               ; preds = %12
  %17 = load %struct.list_item*, %struct.list_item** %5, align 8
  %18 = getelementptr inbounds %struct.list_item, %struct.list_item* %17, i32 0, i32 1
  %19 = load %struct.list_item*, %struct.list_item** %18, align 8
  store %struct.list_item* %19, %struct.list_item** %5, align 8
  br label %9

20:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_iterator_init(%struct.list_t* %0, %struct.list_item** %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item**, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item** %1, %struct.list_item*** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = icmp ne %struct.list_t* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.list_t*, %struct.list_t** %3, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi %struct.list_item* [ %10, %7 ], [ null, %11 ]
  %14 = load %struct.list_item**, %struct.list_item*** %4, align 8
  store %struct.list_item* %13, %struct.list_item** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_iterator_delete(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* null, %struct.list_item** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_iterator_next(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_iterator_prev(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_iterator_get_datum(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8* [ %10, %6 ], [ null, %11 ]
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @list_iterator_is_valid(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  ret i1 %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reverse_iterator_init(%struct.list_t* %0, %struct.list_item** %1) #0 {
  %3 = alloca %struct.list_t*, align 8
  %4 = alloca %struct.list_item**, align 8
  store %struct.list_t* %0, %struct.list_t** %3, align 8
  store %struct.list_item** %1, %struct.list_item*** %4, align 8
  %5 = load %struct.list_t*, %struct.list_t** %3, align 8
  %6 = icmp ne %struct.list_t* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.list_t*, %struct.list_t** %3, align 8
  %9 = getelementptr inbounds %struct.list_t, %struct.list_t* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi %struct.list_item* [ %10, %7 ], [ null, %11 ]
  %14 = load %struct.list_item**, %struct.list_item*** %4, align 8
  store %struct.list_item* %13, %struct.list_item** %14, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reverse_iterator_delete(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* null, %struct.list_item** %3, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reverse_iterator_next(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 0
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @list_reverse_iterator_prev(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 1
  %10 = load %struct.list_item*, %struct.list_item** %9, align 8
  %11 = load %struct.list_item**, %struct.list_item*** %2, align 8
  store %struct.list_item* %10, %struct.list_item** %11, align 8
  br label %12

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @list_reverse_iterator_get_datum(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = load %struct.list_item*, %struct.list_item** %3, align 8
  %5 = icmp ne %struct.list_item* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %8 = load %struct.list_item*, %struct.list_item** %7, align 8
  %9 = getelementptr inbounds %struct.list_item, %struct.list_item* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %6
  %13 = phi i8* [ %10, %6 ], [ null, %11 ]
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @list_reverse_iterator_is_valid(%struct.list_item** %0) #0 {
  %2 = alloca %struct.list_item**, align 8
  store %struct.list_item** %0, %struct.list_item*** %2, align 8
  %3 = load %struct.list_item**, %struct.list_item*** %2, align 8
  %4 = icmp ne %struct.list_item** %3, null
  ret i1 %4
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @kmalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @freeptr, align 8
  %5 = inttoptr i64 %4 to i8*
  store i8* %5, i8** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = load i64, i64* @freeptr, align 8
  %9 = add nsw i64 %8, %7
  store i64 %9, i64* @freeptr, align 8
  %10 = load i64, i64* @freeptr, align 8
  %11 = load i64, i64* @malloc_size, align 8
  %12 = load i8*, i8** @mem, align 8
  %13 = ptrtoint i8* %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.10, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @transform_to_cuda(%struct.node* %0, i1 zeroext %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.node*, align 8
  %12 = alloca %struct.knode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %20 = zext i1 %1 to i8
  store i8 %20, i8* %4, align 1
  %21 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %5, i8* null)
  %22 = load i32, i32* @order, align 4
  %23 = sitofp i32 %22 to double
  %24 = load i64, i64* @size, align 8
  %25 = sitofp i64 %24 to double
  %26 = call double @log(double %25) #6
  %27 = load i32, i32* @order, align 4
  %28 = sitofp i32 %27 to double
  %29 = fdiv double %28, 2.000000e+00
  %30 = call double @log(double %29) #6
  %31 = fdiv double %26, %30
  %32 = fsub double %31, 1.000000e+00
  %33 = call double @pow(double %23, double %32) #6
  %34 = fadd double %33, 1.000000e+00
  %35 = fptosi double %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* @size, align 8
  %37 = mul i64 %36, 4
  %38 = load i64, i64* %8, align 8
  %39 = mul i64 %38, 4084
  %40 = add i64 %37, %39
  store i64 %40, i64* @malloc_size, align 8
  %41 = load i64, i64* @malloc_size, align 8
  %42 = call noalias i8* @malloc(i64 %41) #6
  store i8* %42, i8** %9, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %2
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 655)
  call void @exit(i32 -1) #7
  unreachable

47:                                               ; preds = %2
  %48 = load i8*, i8** %9, align 8
  store i8* %48, i8** %10, align 8
  %49 = load i8*, i8** %10, align 8
  store i8* %49, i8** @mem, align 8
  %50 = load i8*, i8** @mem, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.11, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

54:                                               ; preds = %47
  %55 = load i8*, i8** @mem, align 8
  %56 = ptrtoint i8* %55 to i64
  store i64 %56, i64* @freeptr, align 8
  %57 = load i64, i64* @size, align 8
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i8* @kmalloc(i32 %59)
  %61 = bitcast i8* %60 to %struct.record*
  store %struct.record* %61, %struct.record** @krecords, align 8
  %62 = load i64, i64* %8, align 8
  %63 = mul i64 %62, 4084
  %64 = trunc i64 %63 to i32
  %65 = call i8* @kmalloc(i32 %64)
  %66 = bitcast i8* %65 to %struct.knode*
  store %struct.knode* %66, %struct.knode** @knodes, align 8
  store %struct.node* null, %struct.node** @queue, align 8
  %67 = load %struct.node*, %struct.node** %3, align 8
  call void @enqueue(%struct.node* %67)
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %68 = load i64, i64* %14, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %14, align 8
  %70 = trunc i64 %68 to i32
  %71 = load %struct.knode*, %struct.knode** @knodes, align 8
  %72 = getelementptr inbounds %struct.knode, %struct.knode* %71, i64 0
  %73 = getelementptr inbounds %struct.knode, %struct.knode* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 4
  br label %74

74:                                               ; preds = %308, %54
  %75 = load %struct.node*, %struct.node** @queue, align 8
  %76 = icmp ne %struct.node* %75, null
  br i1 %76, label %77, label %309

77:                                               ; preds = %74
  %78 = call %struct.node* @dequeue()
  store %struct.node* %78, %struct.node** %11, align 8
  %79 = load %struct.knode*, %struct.knode** @knodes, align 8
  %80 = load i64, i64* %16, align 8
  %81 = getelementptr inbounds %struct.knode, %struct.knode* %79, i64 %80
  store %struct.knode* %81, %struct.knode** %12, align 8
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %16, align 8
  %84 = trunc i64 %82 to i32
  %85 = load %struct.knode*, %struct.knode** %12, align 8
  %86 = getelementptr inbounds %struct.knode, %struct.knode* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.node*, %struct.node** %11, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 3
  %89 = load i8, i8* %88, align 8
  %90 = trunc i8 %89 to i1
  %91 = load %struct.knode*, %struct.knode** %12, align 8
  %92 = getelementptr inbounds %struct.knode, %struct.knode* %91, i32 0, i32 3
  %93 = zext i1 %90 to i8
  store i8 %93, i8* %92, align 4
  %94 = load %struct.node*, %struct.node** %11, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 2
  %98 = load %struct.knode*, %struct.knode** %12, align 8
  %99 = getelementptr inbounds %struct.knode, %struct.knode* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 4
  %100 = load %struct.knode*, %struct.knode** %12, align 8
  %101 = getelementptr inbounds %struct.knode, %struct.knode* %100, i32 0, i32 2
  %102 = getelementptr inbounds [509 x i32], [509 x i32]* %101, i64 0, i64 0
  store i32 -2147483648, i32* %102, align 4
  %103 = load %struct.knode*, %struct.knode** %12, align 8
  %104 = getelementptr inbounds %struct.knode, %struct.knode* %103, i32 0, i32 2
  %105 = load %struct.knode*, %struct.knode** %12, align 8
  %106 = getelementptr inbounds %struct.knode, %struct.knode* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [509 x i32], [509 x i32]* %104, i64 0, i64 %109
  store i32 2147483647, i32* %110, align 4
  %111 = load %struct.knode*, %struct.knode** %12, align 8
  %112 = getelementptr inbounds %struct.knode, %struct.knode* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %13, align 4
  br label %114

114:                                              ; preds = %124, %77
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* @order, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load %struct.knode*, %struct.knode** %12, align 8
  %120 = getelementptr inbounds %struct.knode, %struct.knode* %119, i32 0, i32 2
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [509 x i32], [509 x i32]* %120, i64 0, i64 %122
  store i32 2147483647, i32* %123, align 4
  br label %124

124:                                              ; preds = %118
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %114

127:                                              ; preds = %114
  %128 = load %struct.knode*, %struct.knode** %12, align 8
  %129 = getelementptr inbounds %struct.knode, %struct.knode* %128, i32 0, i32 3
  %130 = load i8, i8* %129, align 4
  %131 = trunc i8 %130 to i1
  br i1 %131, label %190, label %132

132:                                              ; preds = %127
  %133 = load i64, i64* %14, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %14, align 8
  %135 = trunc i64 %133 to i32
  %136 = load %struct.knode*, %struct.knode** %12, align 8
  %137 = getelementptr inbounds %struct.knode, %struct.knode* %136, i32 0, i32 1
  %138 = getelementptr inbounds [509 x i32], [509 x i32]* %137, i64 0, i64 0
  store i32 %135, i32* %138, align 4
  store i32 1, i32* %13, align 4
  br label %139

139:                                              ; preds = %177, %132
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.knode*, %struct.knode** %12, align 8
  %142 = getelementptr inbounds %struct.knode, %struct.knode* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %180

146:                                              ; preds = %139
  %147 = load %struct.node*, %struct.node** %11, align 8
  %148 = getelementptr inbounds %struct.node, %struct.node* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.knode*, %struct.knode** %12, align 8
  %156 = getelementptr inbounds %struct.knode, %struct.knode* %155, i32 0, i32 2
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [509 x i32], [509 x i32]* %156, i64 0, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load %struct.node*, %struct.node** %11, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 0
  %162 = load i8**, i8*** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sub nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8*, i8** %162, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = bitcast i8* %167 to %struct.node*
  call void @enqueue(%struct.node* %168)
  %169 = load i64, i64* %14, align 8
  %170 = add nsw i64 %169, 1
  store i64 %170, i64* %14, align 8
  %171 = trunc i64 %169 to i32
  %172 = load %struct.knode*, %struct.knode** %12, align 8
  %173 = getelementptr inbounds %struct.knode, %struct.knode* %172, i32 0, i32 1
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [509 x i32], [509 x i32]* %173, i64 0, i64 %175
  store i32 %171, i32* %176, align 4
  br label %177

177:                                              ; preds = %146
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %139

180:                                              ; preds = %139
  %181 = load %struct.node*, %struct.node** %11, align 8
  %182 = getelementptr inbounds %struct.node, %struct.node* %181, i32 0, i32 0
  %183 = load i8**, i8*** %182, align 8
  %184 = load i32, i32* %13, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %183, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = bitcast i8* %188 to %struct.node*
  call void @enqueue(%struct.node* %189)
  br label %242

190:                                              ; preds = %127
  %191 = load %struct.knode*, %struct.knode** %12, align 8
  %192 = getelementptr inbounds %struct.knode, %struct.knode* %191, i32 0, i32 1
  %193 = getelementptr inbounds [509 x i32], [509 x i32]* %192, i64 0, i64 0
  store i32 0, i32* %193, align 4
  store i32 1, i32* %13, align 4
  br label %194

194:                                              ; preds = %238, %190
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.knode*, %struct.knode** %12, align 8
  %197 = getelementptr inbounds %struct.knode, %struct.knode* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = sub nsw i32 %198, 1
  %200 = icmp slt i32 %195, %199
  br i1 %200, label %201, label %241

201:                                              ; preds = %194
  %202 = load %struct.node*, %struct.node** %11, align 8
  %203 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %13, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.knode*, %struct.knode** %12, align 8
  %211 = getelementptr inbounds %struct.knode, %struct.knode* %210, i32 0, i32 2
  %212 = load i32, i32* %13, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [509 x i32], [509 x i32]* %211, i64 0, i64 %213
  store i32 %209, i32* %214, align 4
  %215 = load %struct.node*, %struct.node** %11, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 0
  %217 = load i8**, i8*** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sub nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %217, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = bitcast i8* %222 to %struct.record*
  %224 = getelementptr inbounds %struct.record, %struct.record* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.record*, %struct.record** @krecords, align 8
  %227 = load i64, i64* %15, align 8
  %228 = getelementptr inbounds %struct.record, %struct.record* %226, i64 %227
  %229 = getelementptr inbounds %struct.record, %struct.record* %228, i32 0, i32 0
  store i32 %225, i32* %229, align 4
  %230 = load i64, i64* %15, align 8
  %231 = add nsw i64 %230, 1
  store i64 %231, i64* %15, align 8
  %232 = trunc i64 %230 to i32
  %233 = load %struct.knode*, %struct.knode** %12, align 8
  %234 = getelementptr inbounds %struct.knode, %struct.knode* %233, i32 0, i32 1
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [509 x i32], [509 x i32]* %234, i64 0, i64 %236
  store i32 %232, i32* %237, align 4
  br label %238

238:                                              ; preds = %201
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %13, align 4
  br label %194

241:                                              ; preds = %194
  br label %242

242:                                              ; preds = %241, %180
  %243 = load i64, i64* %16, align 8
  %244 = trunc i64 %243 to i32
  %245 = load %struct.knode*, %struct.knode** %12, align 8
  %246 = getelementptr inbounds %struct.knode, %struct.knode* %245, i32 0, i32 1
  %247 = load %struct.knode*, %struct.knode** %12, align 8
  %248 = getelementptr inbounds %struct.knode, %struct.knode* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 1
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [509 x i32], [509 x i32]* %246, i64 0, i64 %251
  store i32 %244, i32* %252, align 4
  %253 = load i8, i8* %4, align 1
  %254 = trunc i8 %253 to i1
  br i1 %254, label %255, label %308

255:                                              ; preds = %242
  %256 = load %struct.knode*, %struct.knode** %12, align 8
  %257 = getelementptr inbounds %struct.knode, %struct.knode* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.12, i64 0, i64 0), i32 %258)
  %260 = load %struct.knode*, %struct.knode** %12, align 8
  %261 = getelementptr inbounds %struct.knode, %struct.knode* %260, i32 0, i32 3
  %262 = load i8, i8* %261, align 4
  %263 = trunc i8 %262 to i1
  %264 = zext i1 %263 to i32
  %265 = load %struct.knode*, %struct.knode** %12, align 8
  %266 = getelementptr inbounds %struct.knode, %struct.knode* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %264, i32 %267)
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %270

270:                                              ; preds = %284, %255
  %271 = load i32, i32* %13, align 4
  %272 = load %struct.knode*, %struct.knode** %12, align 8
  %273 = getelementptr inbounds %struct.knode, %struct.knode* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %276, label %287

276:                                              ; preds = %270
  %277 = load %struct.knode*, %struct.knode** %12, align 8
  %278 = getelementptr inbounds %struct.knode, %struct.knode* %277, i32 0, i32 1
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [509 x i32], [509 x i32]* %278, i64 0, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %276
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %270

287:                                              ; preds = %270
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8.13, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %289

289:                                              ; preds = %303, %287
  %290 = load i32, i32* %13, align 4
  %291 = load %struct.knode*, %struct.knode** %12, align 8
  %292 = getelementptr inbounds %struct.knode, %struct.knode* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %306

295:                                              ; preds = %289
  %296 = load %struct.knode*, %struct.knode** %12, align 8
  %297 = getelementptr inbounds %struct.knode, %struct.knode* %296, i32 0, i32 2
  %298 = load i32, i32* %13, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [509 x i32], [509 x i32]* %297, i64 0, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %295
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %13, align 4
  br label %289

306:                                              ; preds = %289
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %308

308:                                              ; preds = %306, %242
  br label %74

309:                                              ; preds = %74
  %310 = load i64, i64* @size, align 8
  %311 = mul i64 %310, 4
  %312 = load i64, i64* %14, align 8
  %313 = mul i64 %312, 4084
  %314 = add i64 %311, %313
  store i64 %314, i64* %17, align 8
  %315 = load i8, i8* %4, align 1
  %316 = trunc i8 %315 to i1
  br i1 %316, label %317, label %345

317:                                              ; preds = %309
  store i32 0, i32* %13, align 4
  br label %318

318:                                              ; preds = %331, %317
  %319 = load i32, i32* %13, align 4
  %320 = sext i32 %319 to i64
  %321 = load i64, i64* @size, align 8
  %322 = icmp slt i64 %320, %321
  br i1 %322, label %323, label %334

323:                                              ; preds = %318
  %324 = load %struct.record*, %struct.record** @krecords, align 8
  %325 = load i32, i32* %13, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.record, %struct.record* %324, i64 %326
  %328 = getelementptr inbounds %struct.record, %struct.record* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %329)
  br label %331

331:                                              ; preds = %323
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  br label %318

334:                                              ; preds = %318
  %335 = load i64, i64* @size, align 8
  %336 = load i64, i64* @size, align 8
  %337 = mul i64 %336, 4
  %338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i64 %335, i64 4, i64 %337)
  %339 = load i64, i64* %14, align 8
  %340 = load i64, i64* %14, align 8
  %341 = mul i64 %340, 4084
  %342 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i64 %339, i64 4084, i64 %341)
  %343 = load i64, i64* %17, align 8
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i64 %343)
  br label %345

345:                                              ; preds = %334, %309
  %346 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %6, i8* null)
  %347 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = sitofp i64 %348 to double
  %350 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = sitofp i64 %351 to double
  %353 = fmul double %352, 0x3EB0C6F7A0B5ED8D
  %354 = fadd double %349, %353
  store double %354, double* %18, align 8
  %355 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = sitofp i64 %356 to double
  %358 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = sitofp i64 %359 to double
  %361 = fmul double %360, 0x3EB0C6F7A0B5ED8D
  %362 = fadd double %357, %361
  store double %362, double* %19, align 8
  %363 = load double, double* %19, align 8
  %364 = load double, double* %18, align 8
  %365 = fsub double %363, %364
  store double %365, double* %7, align 8
  %366 = load double, double* %7, align 8
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), double %366)
  %368 = load i64, i64* %17, align 8
  ret i64 %368
}

declare dso_local i32 @gettimeofday(...) #1

; Function Attrs: nounwind
declare dso_local double @log(double) #2

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @enqueue(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** @queue, align 8
  %5 = icmp eq %struct.node* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %7, %struct.node** @queue, align 8
  %8 = load %struct.node*, %struct.node** @queue, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 5
  store %struct.node* null, %struct.node** %9, align 8
  br label %27

10:                                               ; preds = %1
  %11 = load %struct.node*, %struct.node** @queue, align 8
  store %struct.node* %11, %struct.node** %3, align 8
  br label %12

12:                                               ; preds = %17, %10
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 5
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = icmp ne %struct.node* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 5
  %20 = load %struct.node*, %struct.node** %19, align 8
  store %struct.node* %20, %struct.node** %3, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 5
  store %struct.node* %22, %struct.node** %24, align 8
  %25 = load %struct.node*, %struct.node** %2, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 5
  store %struct.node* null, %struct.node** %26, align 8
  br label %27

27:                                               ; preds = %21, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @dequeue() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = load %struct.node*, %struct.node** @queue, align 8
  store %struct.node* %2, %struct.node** %1, align 8
  %3 = load %struct.node*, %struct.node** @queue, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 5
  %5 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %5, %struct.node** @queue, align 8
  %6 = load %struct.node*, %struct.node** %1, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 5
  store %struct.node* null, %struct.node** %7, align 8
  %8 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %8
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.list_t* @findRange(%struct.node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.list_t*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.list_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.node*, %struct.node** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.node* @find_leaf(%struct.node* %15, i32 %16, i1 zeroext false)
  store %struct.node* %17, %struct.node** %9, align 8
  %18 = load %struct.node*, %struct.node** %9, align 8
  %19 = icmp eq %struct.node* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.list_t* null, %struct.list_t** %4, align 8
  br label %87

21:                                               ; preds = %3
  %22 = call noalias i8* @malloc(i64 40) #6
  store i8* %22, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 763)
  call void @exit(i32 -1) #7
  unreachable

27:                                               ; preds = %21
  %28 = load i8*, i8** %11, align 8
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = bitcast i8* %29 to %struct.list_t*
  store %struct.list_t* %30, %struct.list_t** %10, align 8
  %31 = load %struct.list_t*, %struct.list_t** %10, align 8
  call void @list_init(%struct.list_t* %31, i32 (i8*, i8*)* null, void (i8*)* null)
  store i32 0, i32* %13, align 4
  store i8 1, i8* %14, align 1
  br label %32

32:                                               ; preds = %75, %27
  %33 = load i8, i8* %14, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.node*, %struct.node** %9, align 8
  %37 = icmp ne %struct.node* %36, null
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %85

40:                                               ; preds = %38
  store i8 0, i8* %14, align 1
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %41
  %48 = load %struct.node*, %struct.node** %9, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %47
  %58 = load %struct.node*, %struct.node** %9, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  store i8 1, i8* %14, align 1
  br label %71

70:                                               ; preds = %57, %47
  store i8 0, i8* %14, align 1
  br label %75

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %41

75:                                               ; preds = %70, %41
  %76 = load %struct.node*, %struct.node** %9, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* @order, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %78, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to %struct.node*
  store %struct.node* %84, %struct.node** %9, align 8
  br label %32

85:                                               ; preds = %38
  %86 = load %struct.list_t*, %struct.list_t** %10, align 8
  store %struct.list_t* %86, %struct.list_t** %4, align 8
  br label %87

87:                                               ; preds = %85, %20
  %88 = load %struct.list_t*, %struct.list_t** %4, align 8
  ret %struct.list_t* %88
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @find_leaf(%struct.node* %0, i32 %1, i1 zeroext %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %11, %struct.node** %9, align 8
  %12 = load %struct.node*, %struct.node** %9, align 8
  %13 = icmp eq %struct.node* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i8, i8* %7, align 1
  %16 = trunc i8 %15 to i1
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %20, %struct.node** %4, align 8
  br label %133

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %89, %21
  %23 = load %struct.node*, %struct.node** %9, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 3
  %25 = load i8, i8* %24, align 8
  %26 = trunc i8 %25 to i1
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %98

28:                                               ; preds = %22
  %29 = load i8, i8* %7, align 1
  %30 = trunc i8 %29 to i1
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %49, %31
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.node*, %struct.node** %9, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load %struct.node*, %struct.node** %9, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.node*, %struct.node** %9, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %52, %28
  store i32 0, i32* %8, align 4
  br label %62

62:                                               ; preds = %82, %61
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.node*, %struct.node** %9, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.node*, %struct.node** %9, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %69, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %82

81:                                               ; preds = %68
  br label %83

82:                                               ; preds = %78
  br label %62

83:                                               ; preds = %81, %62
  %84 = load i8, i8* %7, align 1
  %85 = trunc i8 %84 to i1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load %struct.node*, %struct.node** %9, align 8
  %91 = getelementptr inbounds %struct.node, %struct.node* %90, i32 0, i32 0
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = bitcast i8* %96 to %struct.node*
  store %struct.node* %97, %struct.node** %9, align 8
  br label %22

98:                                               ; preds = %22
  %99 = load i8, i8* %7, align 1
  %100 = trunc i8 %99 to i1
  br i1 %100, label %101, label %131

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %119, %101
  %104 = load i32, i32* %8, align 4
  %105 = load %struct.node*, %struct.node** %9, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 1
  %109 = icmp slt i32 %104, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.node*, %struct.node** %9, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %103

122:                                              ; preds = %103
  %123 = load %struct.node*, %struct.node** %9, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %122, %98
  %132 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %132, %struct.node** %4, align 8
  br label %133

133:                                              ; preds = %131, %19
  %134 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %134
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage_1() #0 {
  %1 = load i32, i32* @order, align 4
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %1)
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.18, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.22, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.23, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @usage_2() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.24, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.25, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.26, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.27, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.29, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.31, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.32, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_leaves(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %4, align 8
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = icmp eq %struct.node* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %77

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %17, %10
  %12 = load %struct.node*, %struct.node** %4, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = trunc i8 %14 to i1
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.node*, %struct.node** %4, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = bitcast i8* %22 to %struct.node*
  store %struct.node* %23, %struct.node** %4, align 8
  br label %11

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %74, %24
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.node*, %struct.node** %4, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load i8, i8* @verbose_output, align 1
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.node*, %struct.node** %4, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %35, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i8, i8* @verbose_output, align 1
  %50 = trunc i8 %49 to i1
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.node*, %struct.node** %4, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i32, i32* @order, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %72

61:                                               ; preds = %51
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0))
  %63 = load %struct.node*, %struct.node** %4, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* @order, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.node*
  store %struct.node* %71, %struct.node** %4, align 8
  br label %73

72:                                               ; preds = %51
  br label %75

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %48
  br label %25

75:                                               ; preds = %72
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @height(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.node*, %struct.node** %2, align 8
  store %struct.node* %5, %struct.node** %4, align 8
  br label %6

6:                                                ; preds = %12, %1
  %7 = load %struct.node*, %struct.node** %4, align 8
  %8 = getelementptr inbounds %struct.node, %struct.node* %7, i32 0, i32 3
  %9 = load i8, i8* %8, align 8
  %10 = trunc i8 %9 to i1
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load %struct.node*, %struct.node** %4, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = bitcast i8* %17 to %struct.node*
  store %struct.node* %18, %struct.node** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @path_to_root(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %7, %struct.node** %6, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = icmp ne %struct.node* %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %15, %struct.node** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %8

18:                                               ; preds = %8
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_tree(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store %struct.node* null, %struct.node** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.node*, %struct.node** %2, align 8
  %8 = icmp eq %struct.node* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %140

11:                                               ; preds = %1
  store %struct.node* null, %struct.node** @queue, align 8
  %12 = load %struct.node*, %struct.node** %2, align 8
  call void @enqueue(%struct.node* %12)
  br label %13

13:                                               ; preds = %136, %11
  %14 = load %struct.node*, %struct.node** @queue, align 8
  %15 = icmp ne %struct.node* %14, null
  br i1 %15, label %16, label %138

16:                                               ; preds = %13
  %17 = call %struct.node* @dequeue()
  store %struct.node* %17, %struct.node** %3, align 8
  %18 = load %struct.node*, %struct.node** %3, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 2
  %20 = load %struct.node*, %struct.node** %19, align 8
  %21 = icmp ne %struct.node* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.node*, %struct.node** %3, align 8
  %24 = load %struct.node*, %struct.node** %3, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 2
  %26 = load %struct.node*, %struct.node** %25, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to %struct.node*
  %32 = icmp eq %struct.node* %23, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %22
  %34 = load %struct.node*, %struct.node** %2, align 8
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = call i32 @path_to_root(%struct.node* %34, %struct.node* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %22, %16
  %45 = load i8, i8* @verbose_output, align 1
  %46 = trunc i8 %45 to i1
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.node*, %struct.node** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), %struct.node* %48)
  br label %50

50:                                               ; preds = %47, %44
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %78, %50
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.node*, %struct.node** %3, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load i8, i8* @verbose_output, align 1
  %59 = trunc i8 %58 to i1
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.node*, %struct.node** %3, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %60, %57
  %70 = load %struct.node*, %struct.node** %3, align 8
  %71 = getelementptr inbounds %struct.node, %struct.node* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %51

81:                                               ; preds = %51
  %82 = load %struct.node*, %struct.node** %3, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 3
  %84 = load i8, i8* %83, align 8
  %85 = trunc i8 %84 to i1
  br i1 %85, label %106, label %86

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %4, align 4
  %89 = load %struct.node*, %struct.node** %3, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp sle i32 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.node*, %struct.node** %3, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  %101 = bitcast i8* %100 to %struct.node*
  call void @enqueue(%struct.node* %101)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %87

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %81
  %107 = load i8, i8* @verbose_output, align 1
  %108 = trunc i8 %107 to i1
  br i1 %108, label %109, label %136

109:                                              ; preds = %106
  %110 = load %struct.node*, %struct.node** %3, align 8
  %111 = getelementptr inbounds %struct.node, %struct.node* %110, i32 0, i32 3
  %112 = load i8, i8* %111, align 8
  %113 = trunc i8 %112 to i1
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load %struct.node*, %struct.node** %3, align 8
  %116 = getelementptr inbounds %struct.node, %struct.node* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* @order, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %117, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* %122)
  br label %135

124:                                              ; preds = %109
  %125 = load %struct.node*, %struct.node** %3, align 8
  %126 = getelementptr inbounds %struct.node, %struct.node* %125, i32 0, i32 0
  %127 = load i8**, i8*** %126, align 8
  %128 = load %struct.node*, %struct.node** %3, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %127, i64 %131
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0), i8* %133)
  br label %135

135:                                              ; preds = %124, %114
  br label %136

136:                                              ; preds = %135, %106
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  br label %13

138:                                              ; preds = %13
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.record* @find(%struct.node* %0, i32 %1, i1 zeroext %2) #0 {
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  store i32 0, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8, i8* %7, align 1
  %14 = trunc i8 %13 to i1
  %15 = call %struct.node* @find_leaf(%struct.node* %11, i32 %12, i1 zeroext %14)
  store %struct.node* %15, %struct.node** %9, align 8
  %16 = load %struct.node*, %struct.node** %9, align 8
  %17 = icmp eq %struct.node* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.record* null, %struct.record** %4, align 8
  br label %57

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.node*, %struct.node** %9, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.node*, %struct.node** %9, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %41

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %20

41:                                               ; preds = %36, %20
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store %struct.record* null, %struct.record** %4, align 8
  br label %57

48:                                               ; preds = %41
  %49 = load %struct.node*, %struct.node** %9, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = bitcast i8* %55 to %struct.record*
  store %struct.record* %56, %struct.record** %4, align 8
  br label %57

57:                                               ; preds = %48, %47, %18
  %58 = load %struct.record*, %struct.record** %4, align 8
  ret %struct.record* %58
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @cut(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = srem i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sdiv i32 %8, 2
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %7
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.record* @make_record(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %6 = call noalias i8* @malloc(i64 4) #6
  store i8* %6, i8** %4, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1027)
  call void @exit(i32 -1) #7
  unreachable

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.record*
  store %struct.record* %14, %struct.record** %3, align 8
  %15 = load %struct.record*, %struct.record** %3, align 8
  %16 = icmp eq %struct.record* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  call void @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.record*, %struct.record** %3, align 8
  %21 = getelementptr inbounds %struct.record, %struct.record* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18
  %23 = load %struct.record*, %struct.record** %3, align 8
  ret %struct.record* %23
}

declare dso_local void @perror(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @make_node() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call noalias i8* @malloc(i64 40) #6
  store i8* %8, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1043)
  call void @exit(i32 -1) #7
  unreachable

13:                                               ; preds = %0
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to %struct.node*
  store %struct.node* %16, %struct.node** %1, align 8
  %17 = load %struct.node*, %struct.node** %1, align 8
  %18 = icmp eq %struct.node* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  call void @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

20:                                               ; preds = %13
  %21 = load i32, i32* @order, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 %24) #6
  store i8* %25, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1048)
  call void @exit(i32 -1) #7
  unreachable

30:                                               ; preds = %20
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.node*, %struct.node** %1, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.node*, %struct.node** %1, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  call void @perror(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

41:                                               ; preds = %30
  %42 = load i32, i32* @order, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 %44) #6
  store i8* %45, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1053)
  call void @exit(i32 -1) #7
  unreachable

50:                                               ; preds = %41
  %51 = load i8*, i8** %6, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i8**
  %54 = load %struct.node*, %struct.node** %1, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  store i8** %53, i8*** %55, align 8
  %56 = load %struct.node*, %struct.node** %1, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = icmp eq i8** %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  call void @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.49, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

61:                                               ; preds = %50
  %62 = load %struct.node*, %struct.node** %1, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 3
  store i8 0, i8* %63, align 8
  %64 = load %struct.node*, %struct.node** %1, align 8
  %65 = getelementptr inbounds %struct.node, %struct.node* %64, i32 0, i32 4
  store i32 0, i32* %65, align 4
  %66 = load %struct.node*, %struct.node** %1, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 2
  store %struct.node* null, %struct.node** %67, align 8
  %68 = load %struct.node*, %struct.node** %1, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 5
  store %struct.node* null, %struct.node** %69, align 8
  %70 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %70
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @make_leaf() #0 {
  %1 = alloca %struct.node*, align 8
  %2 = call %struct.node* @make_node()
  store %struct.node* %2, %struct.node** %1, align 8
  %3 = load %struct.node*, %struct.node** %1, align 8
  %4 = getelementptr inbounds %struct.node, %struct.node* %3, i32 0, i32 3
  store i8 1, i8* %4, align 8
  %5 = load %struct.node*, %struct.node** %1, align 8
  ret %struct.node* %5
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_left_index(%struct.node* %0, %struct.node* %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %3, align 8
  store %struct.node* %1, %struct.node** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.node*, %struct.node** %3, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %7, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = load %struct.node*, %struct.node** %3, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.node*, %struct.node** %4, align 8
  %21 = bitcast %struct.node* %20 to i8*
  %22 = icmp ne i8* %19, %21
  br label %23

23:                                               ; preds = %12, %6
  %24 = phi i1 [ false, %6 ], [ %22, %12 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_leaf(%struct.node* %0, i32 %1, %struct.record* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.record* %2, %struct.record** %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.node*, %struct.node** %4, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.node*, %struct.node** %4, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %15, %9
  %26 = phi i1 [ false, %9 ], [ %24, %15 ]
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9

30:                                               ; preds = %25
  %31 = load %struct.node*, %struct.node** %4, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %67, %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %70

38:                                               ; preds = %34
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.node*, %struct.node** %4, align 8
  %48 = getelementptr inbounds %struct.node, %struct.node* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load %struct.node*, %struct.node** %4, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 0
  %55 = load i8**, i8*** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %55, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.node*, %struct.node** %4, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %60, i8** %66, align 8
  br label %67

67:                                               ; preds = %38
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %7, align 4
  br label %34

70:                                               ; preds = %34
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.node*, %struct.node** %4, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  %78 = load %struct.record*, %struct.record** %6, align 8
  %79 = bitcast %struct.record* %78 to i8*
  %80 = load %struct.node*, %struct.node** %4, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load %struct.node*, %struct.node** %4, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %90
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_leaf_after_splitting(%struct.node* %0, %struct.node* %1, i32 %2, %struct.record* %3) #0 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.record*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store %struct.node* %1, %struct.node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.record* %3, %struct.record** %8, align 8
  %21 = call %struct.node* @make_leaf()
  store %struct.node* %21, %struct.node** %9, align 8
  %22 = load i32, i32* @order, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = call noalias i8* @malloc(i64 %24) #6
  store i8* %25, i8** %17, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1122)
  call void @exit(i32 -1) #7
  unreachable

30:                                               ; preds = %4
  %31 = load i8*, i8** %17, align 8
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %18, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  call void @perror(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

37:                                               ; preds = %30
  %38 = load i32, i32* @order, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = call noalias i8* @malloc(i64 %40) #6
  store i8* %41, i8** %19, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1128)
  call void @exit(i32 -1) #7
  unreachable

46:                                               ; preds = %37
  %47 = load i8*, i8** %19, align 8
  store i8* %47, i8** %20, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = bitcast i8* %48 to i8**
  store i8** %49, i8*** %11, align 8
  %50 = load i8**, i8*** %11, align 8
  %51 = icmp eq i8** %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  call void @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

53:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %71, %53
  %55 = load %struct.node*, %struct.node** %6, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @order, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp slt i32 %65, %67
  br label %69

69:                                               ; preds = %64, %54
  %70 = phi i1 [ false, %54 ], [ %68, %64 ]
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %54

74:                                               ; preds = %69
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %111, %74
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.node*, %struct.node** %6, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %116

81:                                               ; preds = %75
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.node*, %struct.node** %6, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load %struct.node*, %struct.node** %6, align 8
  %101 = getelementptr inbounds %struct.node, %struct.node* %100, i32 0, i32 0
  %102 = load i8**, i8*** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8*, i8** %102, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %11, align 8
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %107, i64 %109
  store i8* %106, i8** %110, align 8
  br label %111

111:                                              ; preds = %88
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %75

116:                                              ; preds = %75
  %117 = load i32, i32* %7, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load %struct.record*, %struct.record** %8, align 8
  %123 = bitcast %struct.record* %122 to i8*
  %124 = load i8**, i8*** %11, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %124, i64 %126
  store i8* %123, i8** %127, align 8
  %128 = load %struct.node*, %struct.node** %6, align 8
  %129 = getelementptr inbounds %struct.node, %struct.node* %128, i32 0, i32 4
  store i32 0, i32* %129, align 4
  %130 = load i32, i32* @order, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @cut(i32 %131)
  store i32 %132, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %133

133:                                              ; preds = %164, %116
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %133
  %138 = load i8**, i8*** %11, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.node*, %struct.node** %6, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* %142, i8** %148, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.node*, %struct.node** %6, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %153, i32* %159, align 4
  %160 = load %struct.node*, %struct.node** %6, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %137
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %133

167:                                              ; preds = %133
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %169

169:                                              ; preds = %200, %167
  %170 = load i32, i32* %15, align 4
  %171 = load i32, i32* @order, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %205

173:                                              ; preds = %169
  %174 = load i8**, i8*** %11, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.node*, %struct.node** %9, align 8
  %180 = getelementptr inbounds %struct.node, %struct.node* %179, i32 0, i32 0
  %181 = load i8**, i8*** %180, align 8
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8*, i8** %181, i64 %183
  store i8* %178, i8** %184, align 8
  %185 = load i32*, i32** %10, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.node*, %struct.node** %9, align 8
  %191 = getelementptr inbounds %struct.node, %struct.node* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  %196 = load %struct.node*, %struct.node** %9, align 8
  %197 = getelementptr inbounds %struct.node, %struct.node* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %173
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %169

205:                                              ; preds = %169
  %206 = load i8**, i8*** %11, align 8
  %207 = bitcast i8** %206 to i8*
  call void @free(i8* %207) #6
  %208 = load i32*, i32** %10, align 8
  %209 = bitcast i32* %208 to i8*
  call void @free(i8* %209) #6
  %210 = load %struct.node*, %struct.node** %6, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* @order, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %212, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.node*, %struct.node** %9, align 8
  %219 = getelementptr inbounds %struct.node, %struct.node* %218, i32 0, i32 0
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* @order, align 4
  %222 = sub nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %220, i64 %223
  store i8* %217, i8** %224, align 8
  %225 = load %struct.node*, %struct.node** %9, align 8
  %226 = bitcast %struct.node* %225 to i8*
  %227 = load %struct.node*, %struct.node** %6, align 8
  %228 = getelementptr inbounds %struct.node, %struct.node* %227, i32 0, i32 0
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* @order, align 4
  %231 = sub nsw i32 %230, 1
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %229, i64 %232
  store i8* %226, i8** %233, align 8
  %234 = load %struct.node*, %struct.node** %6, align 8
  %235 = getelementptr inbounds %struct.node, %struct.node* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %15, align 4
  br label %237

237:                                              ; preds = %249, %205
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* @order, align 4
  %240 = sub nsw i32 %239, 1
  %241 = icmp slt i32 %238, %240
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load %struct.node*, %struct.node** %6, align 8
  %244 = getelementptr inbounds %struct.node, %struct.node* %243, i32 0, i32 0
  %245 = load i8**, i8*** %244, align 8
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* null, i8** %248, align 8
  br label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %15, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %15, align 4
  br label %237

252:                                              ; preds = %237
  %253 = load %struct.node*, %struct.node** %9, align 8
  %254 = getelementptr inbounds %struct.node, %struct.node* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %15, align 4
  br label %256

256:                                              ; preds = %268, %252
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* @order, align 4
  %259 = sub nsw i32 %258, 1
  %260 = icmp slt i32 %257, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.node*, %struct.node** %9, align 8
  %263 = getelementptr inbounds %struct.node, %struct.node* %262, i32 0, i32 0
  %264 = load i8**, i8*** %263, align 8
  %265 = load i32, i32* %15, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  store i8* null, i8** %267, align 8
  br label %268

268:                                              ; preds = %261
  %269 = load i32, i32* %15, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %15, align 4
  br label %256

271:                                              ; preds = %256
  %272 = load %struct.node*, %struct.node** %6, align 8
  %273 = getelementptr inbounds %struct.node, %struct.node* %272, i32 0, i32 2
  %274 = load %struct.node*, %struct.node** %273, align 8
  %275 = load %struct.node*, %struct.node** %9, align 8
  %276 = getelementptr inbounds %struct.node, %struct.node* %275, i32 0, i32 2
  store %struct.node* %274, %struct.node** %276, align 8
  %277 = load %struct.node*, %struct.node** %9, align 8
  %278 = getelementptr inbounds %struct.node, %struct.node* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 0
  %281 = load i32, i32* %280, align 4
  store i32 %281, i32* %14, align 4
  %282 = load %struct.node*, %struct.node** %5, align 8
  %283 = load %struct.node*, %struct.node** %6, align 8
  %284 = load i32, i32* %14, align 4
  %285 = load %struct.node*, %struct.node** %9, align 8
  %286 = call %struct.node* @insert_into_parent(%struct.node* %282, %struct.node* %283, i32 %284, %struct.node* %285)
  ret %struct.node* %286
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_parent(%struct.node* %0, %struct.node* %1, i32 %2, %struct.node* %3) #0 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.node* %3, %struct.node** %9, align 8
  %12 = load %struct.node*, %struct.node** %7, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 2
  %14 = load %struct.node*, %struct.node** %13, align 8
  store %struct.node* %14, %struct.node** %11, align 8
  %15 = load %struct.node*, %struct.node** %11, align 8
  %16 = icmp eq %struct.node* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.node*, %struct.node** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.node*, %struct.node** %9, align 8
  %21 = call %struct.node* @insert_into_new_root(%struct.node* %18, i32 %19, %struct.node* %20)
  store %struct.node* %21, %struct.node** %5, align 8
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.node*, %struct.node** %11, align 8
  %24 = load %struct.node*, %struct.node** %7, align 8
  %25 = call i32 @get_left_index(%struct.node* %23, %struct.node* %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.node*, %struct.node** %11, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @order, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.node*, %struct.node** %6, align 8
  %34 = load %struct.node*, %struct.node** %11, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.node*, %struct.node** %9, align 8
  %38 = call %struct.node* @insert_into_node(%struct.node* %33, %struct.node* %34, i32 %35, i32 %36, %struct.node* %37)
  store %struct.node* %38, %struct.node** %5, align 8
  br label %46

39:                                               ; preds = %22
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = load %struct.node*, %struct.node** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.node*, %struct.node** %9, align 8
  %45 = call %struct.node* @insert_into_node_after_splitting(%struct.node* %40, %struct.node* %41, i32 %42, i32 %43, %struct.node* %44)
  store %struct.node* %45, %struct.node** %5, align 8
  br label %46

46:                                               ; preds = %39, %32, %17
  %47 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %47
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_new_root(%struct.node* %0, i32 %1, %struct.node* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = call %struct.node* @make_node()
  store %struct.node* %8, %struct.node** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.node*, %struct.node** %7, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load %struct.node*, %struct.node** %4, align 8
  %15 = bitcast %struct.node* %14 to i8*
  %16 = load %struct.node*, %struct.node** %7, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  store i8* %15, i8** %19, align 8
  %20 = load %struct.node*, %struct.node** %6, align 8
  %21 = bitcast %struct.node* %20 to i8*
  %22 = load %struct.node*, %struct.node** %7, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.node*, %struct.node** %7, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.node*, %struct.node** %7, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 2
  store %struct.node* null, %struct.node** %31, align 8
  %32 = load %struct.node*, %struct.node** %7, align 8
  %33 = load %struct.node*, %struct.node** %4, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 2
  store %struct.node* %32, %struct.node** %34, align 8
  %35 = load %struct.node*, %struct.node** %7, align 8
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 2
  store %struct.node* %35, %struct.node** %37, align 8
  %38 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_node(%struct.node* %0, %struct.node* %1, i32 %2, i32 %3, %struct.node* %4) #0 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.node* %4, %struct.node** %10, align 8
  %12 = load %struct.node*, %struct.node** %7, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  br label %15

15:                                               ; preds = %48, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load %struct.node*, %struct.node** %7, align 8
  %21 = getelementptr inbounds %struct.node, %struct.node* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.node*, %struct.node** %7, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %26, i8** %33, align 8
  %34 = load %struct.node*, %struct.node** %7, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.node*, %struct.node** %7, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %19
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %11, align 4
  br label %15

51:                                               ; preds = %15
  %52 = load %struct.node*, %struct.node** %10, align 8
  %53 = bitcast %struct.node* %52 to i8*
  %54 = load %struct.node*, %struct.node** %7, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %56 = load i8**, i8*** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %56, i64 %59
  store i8* %53, i8** %60, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.node*, %struct.node** %7, align 8
  %63 = getelementptr inbounds %struct.node, %struct.node* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.node*, %struct.node** %7, align 8
  %69 = getelementptr inbounds %struct.node, %struct.node* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.node*, %struct.node** %6, align 8
  ret %struct.node* %72
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert_into_node_after_splitting(%struct.node* %0, %struct.node* %1, i32 %2, i32 %3, %struct.node* %4) #0 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.node*, align 8
  %16 = alloca %struct.node*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.node**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.node* %4, %struct.node** %10, align 8
  %23 = load i32, i32* @order, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 %26) #6
  store i8* %27, i8** %19, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %5
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1224)
  call void @exit(i32 -1) #7
  unreachable

32:                                               ; preds = %5
  %33 = load i8*, i8** %19, align 8
  store i8* %33, i8** %20, align 8
  %34 = load i8*, i8** %20, align 8
  %35 = bitcast i8* %34 to %struct.node**
  store %struct.node** %35, %struct.node*** %18, align 8
  %36 = load %struct.node**, %struct.node*** %18, align 8
  %37 = icmp eq %struct.node** %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  call void @perror(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.52, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

39:                                               ; preds = %32
  %40 = load i32, i32* @order, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = call noalias i8* @malloc(i64 %42) #6
  store i8* %43, i8** %21, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1229)
  call void @exit(i32 -1) #7
  unreachable

48:                                               ; preds = %39
  %49 = load i8*, i8** %21, align 8
  store i8* %49, i8** %22, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = bitcast i8* %50 to i32*
  store i32* %51, i32** %17, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  call void @perror(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

55:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %84, %55
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.node*, %struct.node** %7, align 8
  %59 = getelementptr inbounds %struct.node, %struct.node* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load %struct.node*, %struct.node** %7, align 8
  %73 = getelementptr inbounds %struct.node, %struct.node* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = bitcast i8* %78 to %struct.node*
  %80 = load %struct.node**, %struct.node*** %18, align 8
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.node*, %struct.node** %80, i64 %82
  store %struct.node* %79, %struct.node** %83, align 8
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %56

89:                                               ; preds = %56
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %90

90:                                               ; preds = %115, %89
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.node*, %struct.node** %7, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %90
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %96
  %104 = load %struct.node*, %struct.node** %7, align 8
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** %17, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  br label %90

120:                                              ; preds = %90
  %121 = load %struct.node*, %struct.node** %10, align 8
  %122 = load %struct.node**, %struct.node*** %18, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.node*, %struct.node** %122, i64 %125
  store %struct.node* %121, %struct.node** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32*, i32** %17, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @order, align 4
  %133 = call i32 @cut(i32 %132)
  store i32 %133, i32* %13, align 4
  %134 = call %struct.node* @make_node()
  store %struct.node* %134, %struct.node** %15, align 8
  %135 = load %struct.node*, %struct.node** %7, align 8
  %136 = getelementptr inbounds %struct.node, %struct.node* %135, i32 0, i32 4
  store i32 0, i32* %136, align 4
  store i32 0, i32* %11, align 4
  br label %137

137:                                              ; preds = %170, %120
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %13, align 4
  %140 = sub nsw i32 %139, 1
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %142, label %173

142:                                              ; preds = %137
  %143 = load %struct.node**, %struct.node*** %18, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.node*, %struct.node** %143, i64 %145
  %147 = load %struct.node*, %struct.node** %146, align 8
  %148 = bitcast %struct.node* %147 to i8*
  %149 = load %struct.node*, %struct.node** %7, align 8
  %150 = getelementptr inbounds %struct.node, %struct.node* %149, i32 0, i32 0
  %151 = load i8**, i8*** %150, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  store i8* %148, i8** %154, align 8
  %155 = load i32*, i32** %17, align 8
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.node*, %struct.node** %7, align 8
  %161 = getelementptr inbounds %struct.node, %struct.node* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  store i32 %159, i32* %165, align 4
  %166 = load %struct.node*, %struct.node** %7, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %142
  %171 = load i32, i32* %11, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %11, align 4
  br label %137

173:                                              ; preds = %137
  %174 = load %struct.node**, %struct.node*** %18, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.node*, %struct.node** %174, i64 %176
  %178 = load %struct.node*, %struct.node** %177, align 8
  %179 = bitcast %struct.node* %178 to i8*
  %180 = load %struct.node*, %struct.node** %7, align 8
  %181 = getelementptr inbounds %struct.node, %struct.node* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = load i32, i32* %11, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* %179, i8** %185, align 8
  %186 = load i32*, i32** %17, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %11, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %194

194:                                              ; preds = %226, %173
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* @order, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %231

198:                                              ; preds = %194
  %199 = load %struct.node**, %struct.node*** %18, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.node*, %struct.node** %199, i64 %201
  %203 = load %struct.node*, %struct.node** %202, align 8
  %204 = bitcast %struct.node* %203 to i8*
  %205 = load %struct.node*, %struct.node** %15, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 0
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  store i8* %204, i8** %210, align 8
  %211 = load i32*, i32** %17, align 8
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.node*, %struct.node** %15, align 8
  %217 = getelementptr inbounds %struct.node, %struct.node* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  %222 = load %struct.node*, %struct.node** %15, align 8
  %223 = getelementptr inbounds %struct.node, %struct.node* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %198
  %227 = load i32, i32* %11, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %194

231:                                              ; preds = %194
  %232 = load %struct.node**, %struct.node*** %18, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.node*, %struct.node** %232, i64 %234
  %236 = load %struct.node*, %struct.node** %235, align 8
  %237 = bitcast %struct.node* %236 to i8*
  %238 = load %struct.node*, %struct.node** %15, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 0
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  store i8* %237, i8** %243, align 8
  %244 = load %struct.node**, %struct.node*** %18, align 8
  %245 = bitcast %struct.node** %244 to i8*
  call void @free(i8* %245) #6
  %246 = load i32*, i32** %17, align 8
  %247 = bitcast i32* %246 to i8*
  call void @free(i8* %247) #6
  %248 = load %struct.node*, %struct.node** %7, align 8
  %249 = getelementptr inbounds %struct.node, %struct.node* %248, i32 0, i32 2
  %250 = load %struct.node*, %struct.node** %249, align 8
  %251 = load %struct.node*, %struct.node** %15, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 2
  store %struct.node* %250, %struct.node** %252, align 8
  store i32 0, i32* %11, align 4
  br label %253

253:                                              ; preds = %271, %231
  %254 = load i32, i32* %11, align 4
  %255 = load %struct.node*, %struct.node** %15, align 8
  %256 = getelementptr inbounds %struct.node, %struct.node* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = icmp sle i32 %254, %257
  br i1 %258, label %259, label %274

259:                                              ; preds = %253
  %260 = load %struct.node*, %struct.node** %15, align 8
  %261 = getelementptr inbounds %struct.node, %struct.node* %260, i32 0, i32 0
  %262 = load i8**, i8*** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = bitcast i8* %266 to %struct.node*
  store %struct.node* %267, %struct.node** %16, align 8
  %268 = load %struct.node*, %struct.node** %15, align 8
  %269 = load %struct.node*, %struct.node** %16, align 8
  %270 = getelementptr inbounds %struct.node, %struct.node* %269, i32 0, i32 2
  store %struct.node* %268, %struct.node** %270, align 8
  br label %271

271:                                              ; preds = %259
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  br label %253

274:                                              ; preds = %253
  %275 = load %struct.node*, %struct.node** %6, align 8
  %276 = load %struct.node*, %struct.node** %7, align 8
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.node*, %struct.node** %15, align 8
  %279 = call %struct.node* @insert_into_parent(%struct.node* %275, %struct.node* %276, i32 %277, %struct.node* %278)
  ret %struct.node* %279
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @start_new_tree(i32 %0, %struct.record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.record*, align 8
  %5 = alloca %struct.node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.record* %1, %struct.record** %4, align 8
  %6 = call %struct.node* @make_leaf()
  store %struct.node* %6, %struct.node** %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.node*, %struct.node** %5, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %7, i32* %11, align 4
  %12 = load %struct.record*, %struct.record** %4, align 8
  %13 = bitcast %struct.record* %12 to i8*
  %14 = load %struct.node*, %struct.node** %5, align 8
  %15 = getelementptr inbounds %struct.node, %struct.node* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* %13, i8** %17, align 8
  %18 = load %struct.node*, %struct.node** %5, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* @order, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %20, i64 %23
  store i8* null, i8** %24, align 8
  %25 = load %struct.node*, %struct.node** %5, align 8
  %26 = getelementptr inbounds %struct.node, %struct.node* %25, i32 0, i32 2
  store %struct.node* null, %struct.node** %26, align 8
  %27 = load %struct.node*, %struct.node** %5, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %31
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @insert(%struct.node* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.record*, align 8
  %9 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.node*, %struct.node** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.record* @find(%struct.node* %10, i32 %11, i1 zeroext false)
  %13 = icmp ne %struct.record* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %15, %struct.node** %4, align 8
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.record* @make_record(i32 %17)
  store %struct.record* %18, %struct.record** %8, align 8
  %19 = load %struct.node*, %struct.node** %5, align 8
  %20 = icmp eq %struct.node* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.record*, %struct.record** %8, align 8
  %24 = call %struct.node* @start_new_tree(i32 %22, %struct.record* %23)
  store %struct.node* %24, %struct.node** %4, align 8
  br label %47

25:                                               ; preds = %16
  %26 = load %struct.node*, %struct.node** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.node* @find_leaf(%struct.node* %26, i32 %27, i1 zeroext false)
  store %struct.node* %28, %struct.node** %9, align 8
  %29 = load %struct.node*, %struct.node** %9, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @order, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.node*, %struct.node** %9, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.record*, %struct.record** %8, align 8
  %39 = call %struct.node* @insert_into_leaf(%struct.node* %36, i32 %37, %struct.record* %38)
  store %struct.node* %39, %struct.node** %9, align 8
  %40 = load %struct.node*, %struct.node** %5, align 8
  store %struct.node* %40, %struct.node** %4, align 8
  br label %47

41:                                               ; preds = %25
  %42 = load %struct.node*, %struct.node** %5, align 8
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.record*, %struct.record** %8, align 8
  %46 = call %struct.node* @insert_into_leaf_after_splitting(%struct.node* %42, %struct.node* %43, i32 %44, %struct.record* %45)
  store %struct.node* %46, %struct.node** %4, align 8
  br label %47

47:                                               ; preds = %41, %35, %21, %14
  %48 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @get_neighbor_index(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.node*, %struct.node** %2, align 8
  %7 = getelementptr inbounds %struct.node, %struct.node* %6, i32 0, i32 2
  %8 = load %struct.node*, %struct.node** %7, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp sle i32 %5, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %4
  %13 = load %struct.node*, %struct.node** %2, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 2
  %15 = load %struct.node*, %struct.node** %14, align 8
  %16 = getelementptr inbounds %struct.node, %struct.node* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.node*, %struct.node** %2, align 8
  %23 = bitcast %struct.node* %22 to i8*
  %24 = icmp eq i8* %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 %26, 1
  ret i32 %27

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %4

32:                                               ; preds = %4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.54, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @remove_entry_from_node(%struct.node* %0, i32 %1, %struct.node* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.node* %2, %struct.node** %6, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load %struct.node*, %struct.node** %4, align 8
  %11 = getelementptr inbounds %struct.node, %struct.node* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %9
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %46, %22
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.node*, %struct.node** %4, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %25
  %32 = load %struct.node*, %struct.node** %4, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.node*, %struct.node** %4, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.node*, %struct.node** %4, align 8
  %51 = getelementptr inbounds %struct.node, %struct.node* %50, i32 0, i32 3
  %52 = load i8, i8* %51, align 8
  %53 = trunc i8 %52 to i1
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.node*, %struct.node** %4, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  br label %63

58:                                               ; preds = %49
  %59 = load %struct.node*, %struct.node** %4, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i32 [ %57, %54 ], [ %62, %58 ]
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %76, %63
  %66 = load %struct.node*, %struct.node** %4, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.node*, %struct.node** %6, align 8
  %74 = bitcast %struct.node* %73 to i8*
  %75 = icmp ne i8* %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %65
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %65

79:                                               ; preds = %65
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %101, %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.node*, %struct.node** %4, align 8
  %88 = getelementptr inbounds %struct.node, %struct.node* %87, i32 0, i32 0
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.node*, %struct.node** %4, align 8
  %95 = getelementptr inbounds %struct.node, %struct.node* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %96, i64 %99
  store i8* %93, i8** %100, align 8
  br label %101

101:                                              ; preds = %86
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %82

104:                                              ; preds = %82
  %105 = load %struct.node*, %struct.node** %4, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.node*, %struct.node** %4, align 8
  %110 = getelementptr inbounds %struct.node, %struct.node* %109, i32 0, i32 3
  %111 = load i8, i8* %110, align 8
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %133

113:                                              ; preds = %104
  %114 = load %struct.node*, %struct.node** %4, align 8
  %115 = getelementptr inbounds %struct.node, %struct.node* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %129, %113
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @order, align 4
  %120 = sub nsw i32 %119, 1
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.node*, %struct.node** %4, align 8
  %124 = getelementptr inbounds %struct.node, %struct.node* %123, i32 0, i32 0
  %125 = load i8**, i8*** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* null, i8** %128, align 8
  br label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %117

132:                                              ; preds = %117
  br label %153

133:                                              ; preds = %104
  %134 = load %struct.node*, %struct.node** %4, align 8
  %135 = getelementptr inbounds %struct.node, %struct.node* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %149, %133
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @order, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %138
  %143 = load %struct.node*, %struct.node** %4, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %145, i64 %147
  store i8* null, i8** %148, align 8
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %138

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %154
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @adjust_root(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca %struct.node*, align 8
  %4 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  %5 = load %struct.node*, %struct.node** %3, align 8
  %6 = getelementptr inbounds %struct.node, %struct.node* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.node*, %struct.node** %3, align 8
  store %struct.node* %10, %struct.node** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.node*, %struct.node** %3, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = trunc i8 %14 to i1
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load %struct.node*, %struct.node** %3, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.node*
  store %struct.node* %22, %struct.node** %4, align 8
  %23 = load %struct.node*, %struct.node** %4, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 2
  store %struct.node* null, %struct.node** %24, align 8
  br label %26

25:                                               ; preds = %11
  store %struct.node* null, %struct.node** %4, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.node*, %struct.node** %3, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load %struct.node*, %struct.node** %3, align 8
  %32 = getelementptr inbounds %struct.node, %struct.node* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = bitcast i8** %33 to i8*
  call void @free(i8* %34) #6
  %35 = load %struct.node*, %struct.node** %3, align 8
  %36 = bitcast %struct.node* %35 to i8*
  call void @free(i8* %36) #6
  %37 = load %struct.node*, %struct.node** %4, align 8
  store %struct.node* %37, %struct.node** %2, align 8
  br label %38

38:                                               ; preds = %26, %9
  %39 = load %struct.node*, %struct.node** %2, align 8
  ret %struct.node* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @coalesce_nodes(%struct.node* %0, %struct.node* %1, %struct.node* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.node*, align 8
  %18 = alloca i8, align 1
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store %struct.node* %2, %struct.node** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.node*, %struct.node** %7, align 8
  store %struct.node* %22, %struct.node** %17, align 8
  %23 = load %struct.node*, %struct.node** %8, align 8
  store %struct.node* %23, %struct.node** %7, align 8
  %24 = load %struct.node*, %struct.node** %17, align 8
  store %struct.node* %24, %struct.node** %8, align 8
  br label %25

25:                                               ; preds = %21, %5
  %26 = load %struct.node*, %struct.node** %8, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  store i8 0, i8* %18, align 1
  %29 = load %struct.node*, %struct.node** %7, align 8
  %30 = getelementptr inbounds %struct.node, %struct.node* %29, i32 0, i32 3
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  br i1 %32, label %216, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.node*, %struct.node** %8, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.node*, %struct.node** %8, align 8
  %42 = getelementptr inbounds %struct.node, %struct.node* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load %struct.node*, %struct.node** %7, align 8
  %46 = getelementptr inbounds %struct.node, %struct.node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %15, align 4
  store i32 0, i32* %14, align 4
  %48 = load %struct.node*, %struct.node** %7, align 8
  %49 = getelementptr inbounds %struct.node, %struct.node* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.node*, %struct.node** %8, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* @order, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %33
  store i8 1, i8* %18, align 1
  %58 = load i32, i32* @order, align 4
  %59 = call i32 @cut(i32 %58)
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %57, %33
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %105, %61
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %110

68:                                               ; preds = %64
  %69 = load %struct.node*, %struct.node** %7, align 8
  %70 = getelementptr inbounds %struct.node, %struct.node* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.node*, %struct.node** %8, align 8
  %77 = getelementptr inbounds %struct.node, %struct.node* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  %82 = load %struct.node*, %struct.node** %7, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.node*, %struct.node** %8, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load %struct.node*, %struct.node** %8, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = load %struct.node*, %struct.node** %7, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %68
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %12, align 4
  br label %64

110:                                              ; preds = %64
  %111 = load %struct.node*, %struct.node** %7, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 0
  %113 = load i8**, i8*** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.node*, %struct.node** %8, align 8
  %119 = getelementptr inbounds %struct.node, %struct.node* %118, i32 0, i32 0
  %120 = load i8**, i8*** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %120, i64 %122
  store i8* %117, i8** %123, align 8
  %124 = load i8, i8* %18, align 1
  %125 = trunc i8 %124 to i1
  br i1 %125, label %126, label %192

126:                                              ; preds = %110
  %127 = load %struct.node*, %struct.node** %7, align 8
  %128 = getelementptr inbounds %struct.node, %struct.node* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %16, align 4
  store i32 0, i32* %11, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %136

136:                                              ; preds = %169, %126
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.node*, %struct.node** %7, align 8
  %139 = getelementptr inbounds %struct.node, %struct.node* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %174

142:                                              ; preds = %136
  %143 = load %struct.node*, %struct.node** %7, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.node*, %struct.node** %7, align 8
  %151 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load %struct.node*, %struct.node** %7, align 8
  %157 = getelementptr inbounds %struct.node, %struct.node* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %158, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.node*, %struct.node** %7, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 0
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  store i8* %162, i8** %168, align 8
  br label %169

169:                                              ; preds = %142
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %136

174:                                              ; preds = %136
  %175 = load %struct.node*, %struct.node** %7, align 8
  %176 = getelementptr inbounds %struct.node, %struct.node* %175, i32 0, i32 0
  %177 = load i8**, i8*** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8*, i8** %177, i64 %179
  %181 = load i8*, i8** %180, align 8
  %182 = load %struct.node*, %struct.node** %7, align 8
  %183 = getelementptr inbounds %struct.node, %struct.node* %182, i32 0, i32 0
  %184 = load i8**, i8*** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  store i8* %181, i8** %187, align 8
  %188 = load %struct.node*, %struct.node** %7, align 8
  %189 = getelementptr inbounds %struct.node, %struct.node* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %174, %110
  store i32 0, i32* %11, align 4
  br label %193

193:                                              ; preds = %212, %192
  %194 = load i32, i32* %11, align 4
  %195 = load %struct.node*, %struct.node** %8, align 8
  %196 = getelementptr inbounds %struct.node, %struct.node* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  %199 = icmp slt i32 %194, %198
  br i1 %199, label %200, label %215

200:                                              ; preds = %193
  %201 = load %struct.node*, %struct.node** %8, align 8
  %202 = getelementptr inbounds %struct.node, %struct.node* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8*, i8** %203, i64 %205
  %207 = load i8*, i8** %206, align 8
  %208 = bitcast i8* %207 to %struct.node*
  store %struct.node* %208, %struct.node** %17, align 8
  %209 = load %struct.node*, %struct.node** %8, align 8
  %210 = load %struct.node*, %struct.node** %17, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 2
  store %struct.node* %209, %struct.node** %211, align 8
  br label %212

212:                                              ; preds = %200
  %213 = load i32, i32* %11, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %11, align 4
  br label %193

215:                                              ; preds = %193
  br label %276

216:                                              ; preds = %25
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %218

218:                                              ; preds = %255, %216
  %219 = load i32, i32* %12, align 4
  %220 = load %struct.node*, %struct.node** %7, align 8
  %221 = getelementptr inbounds %struct.node, %struct.node* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %260

224:                                              ; preds = %218
  %225 = load %struct.node*, %struct.node** %7, align 8
  %226 = getelementptr inbounds %struct.node, %struct.node* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.node*, %struct.node** %8, align 8
  %233 = getelementptr inbounds %struct.node, %struct.node* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %231, i32* %237, align 4
  %238 = load %struct.node*, %struct.node** %7, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 0
  %240 = load i8**, i8*** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8*, i8** %240, i64 %242
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.node*, %struct.node** %8, align 8
  %246 = getelementptr inbounds %struct.node, %struct.node* %245, i32 0, i32 0
  %247 = load i8**, i8*** %246, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8*, i8** %247, i64 %249
  store i8* %244, i8** %250, align 8
  %251 = load %struct.node*, %struct.node** %8, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %224
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  %258 = load i32, i32* %12, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %12, align 4
  br label %218

260:                                              ; preds = %218
  %261 = load %struct.node*, %struct.node** %7, align 8
  %262 = getelementptr inbounds %struct.node, %struct.node* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* @order, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %263, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.node*, %struct.node** %8, align 8
  %270 = getelementptr inbounds %struct.node, %struct.node* %269, i32 0, i32 0
  %271 = load i8**, i8*** %270, align 8
  %272 = load i32, i32* @order, align 4
  %273 = sub nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %271, i64 %274
  store i8* %268, i8** %275, align 8
  br label %276

276:                                              ; preds = %260, %215
  %277 = load i8, i8* %18, align 1
  %278 = trunc i8 %277 to i1
  br i1 %278, label %298, label %279

279:                                              ; preds = %276
  %280 = load %struct.node*, %struct.node** %6, align 8
  %281 = load %struct.node*, %struct.node** %7, align 8
  %282 = getelementptr inbounds %struct.node, %struct.node* %281, i32 0, i32 2
  %283 = load %struct.node*, %struct.node** %282, align 8
  %284 = load i32, i32* %10, align 4
  %285 = load %struct.node*, %struct.node** %7, align 8
  %286 = bitcast %struct.node* %285 to i8*
  %287 = call %struct.node* @delete_entry(%struct.node* %280, %struct.node* %283, i32 %284, i8* %286)
  store %struct.node* %287, %struct.node** %6, align 8
  %288 = load %struct.node*, %struct.node** %7, align 8
  %289 = getelementptr inbounds %struct.node, %struct.node* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = bitcast i32* %290 to i8*
  call void @free(i8* %291) #6
  %292 = load %struct.node*, %struct.node** %7, align 8
  %293 = getelementptr inbounds %struct.node, %struct.node* %292, i32 0, i32 0
  %294 = load i8**, i8*** %293, align 8
  %295 = bitcast i8** %294 to i8*
  call void @free(i8* %295) #6
  %296 = load %struct.node*, %struct.node** %7, align 8
  %297 = bitcast %struct.node* %296 to i8*
  call void @free(i8* %297) #6
  br label %336

298:                                              ; preds = %276
  store i32 0, i32* %11, align 4
  br label %299

299:                                              ; preds = %332, %298
  %300 = load i32, i32* %11, align 4
  %301 = load %struct.node*, %struct.node** %7, align 8
  %302 = getelementptr inbounds %struct.node, %struct.node* %301, i32 0, i32 2
  %303 = load %struct.node*, %struct.node** %302, align 8
  %304 = getelementptr inbounds %struct.node, %struct.node* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = icmp slt i32 %300, %305
  br i1 %306, label %307, label %335

307:                                              ; preds = %299
  %308 = load %struct.node*, %struct.node** %7, align 8
  %309 = getelementptr inbounds %struct.node, %struct.node* %308, i32 0, i32 2
  %310 = load %struct.node*, %struct.node** %309, align 8
  %311 = getelementptr inbounds %struct.node, %struct.node* %310, i32 0, i32 0
  %312 = load i8**, i8*** %311, align 8
  %313 = load i32, i32* %11, align 4
  %314 = add nsw i32 %313, 1
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8*, i8** %312, i64 %315
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.node*, %struct.node** %7, align 8
  %319 = bitcast %struct.node* %318 to i8*
  %320 = icmp eq i8* %317, %319
  br i1 %320, label %321, label %331

321:                                              ; preds = %307
  %322 = load i32, i32* %16, align 4
  %323 = load %struct.node*, %struct.node** %7, align 8
  %324 = getelementptr inbounds %struct.node, %struct.node* %323, i32 0, i32 2
  %325 = load %struct.node*, %struct.node** %324, align 8
  %326 = getelementptr inbounds %struct.node, %struct.node* %325, i32 0, i32 1
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %322, i32* %330, align 4
  br label %335

331:                                              ; preds = %307
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %11, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %11, align 4
  br label %299

335:                                              ; preds = %321, %299
  br label %336

336:                                              ; preds = %335, %279
  %337 = load %struct.node*, %struct.node** %6, align 8
  ret %struct.node* %337
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @delete_entry(%struct.node* %0, %struct.node* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %6, align 8
  store %struct.node* %1, %struct.node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load %struct.node*, %struct.node** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.node*
  %20 = call %struct.node* @remove_entry_from_node(%struct.node* %16, i32 %17, %struct.node* %19)
  store %struct.node* %20, %struct.node** %7, align 8
  %21 = load %struct.node*, %struct.node** %7, align 8
  %22 = load %struct.node*, %struct.node** %6, align 8
  %23 = icmp eq %struct.node* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.node*, %struct.node** %6, align 8
  %26 = call %struct.node* @adjust_root(%struct.node* %25)
  store %struct.node* %26, %struct.node** %5, align 8
  br label %127

27:                                               ; preds = %4
  %28 = load %struct.node*, %struct.node** %7, align 8
  %29 = getelementptr inbounds %struct.node, %struct.node* %28, i32 0, i32 3
  %30 = load i8, i8* %29, align 8
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @order, align 4
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @cut(i32 %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* @order, align 4
  %38 = call i32 @cut(i32 %37)
  %39 = sub nsw i32 %38, 1
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  store i32 %41, i32* %10, align 4
  %42 = load %struct.node*, %struct.node** %7, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %48, %struct.node** %5, align 8
  br label %127

49:                                               ; preds = %40
  %50 = load %struct.node*, %struct.node** %7, align 8
  %51 = call i32 @get_neighbor_index(%struct.node* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %13, align 4
  %59 = load %struct.node*, %struct.node** %7, align 8
  %60 = getelementptr inbounds %struct.node, %struct.node* %59, i32 0, i32 2
  %61 = load %struct.node*, %struct.node** %60, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %79

70:                                               ; preds = %57
  %71 = load %struct.node*, %struct.node** %7, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 2
  %73 = load %struct.node*, %struct.node** %72, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 1
  %77 = load i8*, i8** %76, align 8
  %78 = bitcast i8* %77 to %struct.node*
  br label %90

79:                                               ; preds = %57
  %80 = load %struct.node*, %struct.node** %7, align 8
  %81 = getelementptr inbounds %struct.node, %struct.node* %80, i32 0, i32 2
  %82 = load %struct.node*, %struct.node** %81, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = bitcast i8* %88 to %struct.node*
  br label %90

90:                                               ; preds = %79, %70
  %91 = phi %struct.node* [ %78, %70 ], [ %89, %79 ]
  store %struct.node* %91, %struct.node** %11, align 8
  %92 = load %struct.node*, %struct.node** %7, align 8
  %93 = getelementptr inbounds %struct.node, %struct.node* %92, i32 0, i32 3
  %94 = load i8, i8* %93, align 8
  %95 = trunc i8 %94 to i1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i32, i32* @order, align 4
  br label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @order, align 4
  %100 = sub nsw i32 %99, 1
  br label %101

101:                                              ; preds = %98, %96
  %102 = phi i32 [ %97, %96 ], [ %100, %98 ]
  store i32 %102, i32* %15, align 4
  %103 = load %struct.node*, %struct.node** %11, align 8
  %104 = getelementptr inbounds %struct.node, %struct.node* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.node*, %struct.node** %7, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %105, %108
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %101
  %113 = load %struct.node*, %struct.node** %6, align 8
  %114 = load %struct.node*, %struct.node** %7, align 8
  %115 = load %struct.node*, %struct.node** %11, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %14, align 4
  %118 = call %struct.node* @coalesce_nodes(%struct.node* %113, %struct.node* %114, %struct.node* %115, i32 %116, i32 %117)
  store %struct.node* %118, %struct.node** %5, align 8
  br label %127

119:                                              ; preds = %101
  %120 = load %struct.node*, %struct.node** %6, align 8
  %121 = load %struct.node*, %struct.node** %7, align 8
  %122 = load %struct.node*, %struct.node** %11, align 8
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call %struct.node* @redistribute_nodes(%struct.node* %120, %struct.node* %121, %struct.node* %122, i32 %123, i32 %124, i32 %125)
  store %struct.node* %126, %struct.node** %5, align 8
  br label %127

127:                                              ; preds = %119, %112, %47, %24
  %128 = load %struct.node*, %struct.node** %5, align 8
  ret %struct.node* %128
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @redistribute_nodes(%struct.node* %0, %struct.node* %1, %struct.node* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %7, align 8
  store %struct.node* %1, %struct.node** %8, align 8
  store %struct.node* %2, %struct.node** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %191

17:                                               ; preds = %6
  %18 = load %struct.node*, %struct.node** %8, align 8
  %19 = getelementptr inbounds %struct.node, %struct.node* %18, i32 0, i32 3
  %20 = load i8, i8* %19, align 8
  %21 = trunc i8 %20 to i1
  br i1 %21, label %41, label %22

22:                                               ; preds = %17
  %23 = load %struct.node*, %struct.node** %8, align 8
  %24 = getelementptr inbounds %struct.node, %struct.node* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = load %struct.node*, %struct.node** %8, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %25, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.node*, %struct.node** %8, align 8
  %33 = getelementptr inbounds %struct.node, %struct.node* %32, i32 0, i32 0
  %34 = load i8**, i8*** %33, align 8
  %35 = load %struct.node*, %struct.node** %8, align 8
  %36 = getelementptr inbounds %struct.node, %struct.node* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %34, i64 %39
  store i8* %31, i8** %40, align 8
  br label %41

41:                                               ; preds = %22, %17
  %42 = load %struct.node*, %struct.node** %8, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %77, %41
  %46 = load i32, i32* %13, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %45
  %49 = load %struct.node*, %struct.node** %8, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.node*, %struct.node** %8, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.node*, %struct.node** %8, align 8
  %64 = getelementptr inbounds %struct.node, %struct.node* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.node*, %struct.node** %8, align 8
  %72 = getelementptr inbounds %struct.node, %struct.node* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  br label %77

77:                                               ; preds = %48
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %13, align 4
  br label %45

80:                                               ; preds = %45
  %81 = load %struct.node*, %struct.node** %8, align 8
  %82 = getelementptr inbounds %struct.node, %struct.node* %81, i32 0, i32 3
  %83 = load i8, i8* %82, align 8
  %84 = trunc i8 %83 to i1
  br i1 %84, label %139, label %85

85:                                               ; preds = %80
  %86 = load %struct.node*, %struct.node** %9, align 8
  %87 = getelementptr inbounds %struct.node, %struct.node* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = load %struct.node*, %struct.node** %9, align 8
  %90 = getelementptr inbounds %struct.node, %struct.node* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %88, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct.node*, %struct.node** %8, align 8
  %96 = getelementptr inbounds %struct.node, %struct.node* %95, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %94, i8** %98, align 8
  %99 = load %struct.node*, %struct.node** %8, align 8
  %100 = getelementptr inbounds %struct.node, %struct.node* %99, i32 0, i32 0
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = bitcast i8* %103 to %struct.node*
  store %struct.node* %104, %struct.node** %14, align 8
  %105 = load %struct.node*, %struct.node** %8, align 8
  %106 = load %struct.node*, %struct.node** %14, align 8
  %107 = getelementptr inbounds %struct.node, %struct.node* %106, i32 0, i32 2
  store %struct.node* %105, %struct.node** %107, align 8
  %108 = load %struct.node*, %struct.node** %9, align 8
  %109 = getelementptr inbounds %struct.node, %struct.node* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.node*, %struct.node** %9, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8*, i8** %110, i64 %114
  store i8* null, i8** %115, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.node*, %struct.node** %8, align 8
  %118 = getelementptr inbounds %struct.node, %struct.node* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %116, i32* %120, align 4
  %121 = load %struct.node*, %struct.node** %9, align 8
  %122 = getelementptr inbounds %struct.node, %struct.node* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.node*, %struct.node** %9, align 8
  %125 = getelementptr inbounds %struct.node, %struct.node* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %123, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.node*, %struct.node** %8, align 8
  %132 = getelementptr inbounds %struct.node, %struct.node* %131, i32 0, i32 2
  %133 = load %struct.node*, %struct.node** %132, align 8
  %134 = getelementptr inbounds %struct.node, %struct.node* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  store i32 %130, i32* %138, align 4
  br label %190

139:                                              ; preds = %80
  %140 = load %struct.node*, %struct.node** %9, align 8
  %141 = getelementptr inbounds %struct.node, %struct.node* %140, i32 0, i32 0
  %142 = load i8**, i8*** %141, align 8
  %143 = load %struct.node*, %struct.node** %9, align 8
  %144 = getelementptr inbounds %struct.node, %struct.node* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8*, i8** %142, i64 %147
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.node*, %struct.node** %8, align 8
  %151 = getelementptr inbounds %struct.node, %struct.node* %150, i32 0, i32 0
  %152 = load i8**, i8*** %151, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  store i8* %149, i8** %153, align 8
  %154 = load %struct.node*, %struct.node** %9, align 8
  %155 = getelementptr inbounds %struct.node, %struct.node* %154, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = load %struct.node*, %struct.node** %9, align 8
  %158 = getelementptr inbounds %struct.node, %struct.node* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %156, i64 %161
  store i8* null, i8** %162, align 8
  %163 = load %struct.node*, %struct.node** %9, align 8
  %164 = getelementptr inbounds %struct.node, %struct.node* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.node*, %struct.node** %9, align 8
  %167 = getelementptr inbounds %struct.node, %struct.node* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %165, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.node*, %struct.node** %8, align 8
  %174 = getelementptr inbounds %struct.node, %struct.node* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load %struct.node*, %struct.node** %8, align 8
  %178 = getelementptr inbounds %struct.node, %struct.node* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.node*, %struct.node** %8, align 8
  %183 = getelementptr inbounds %struct.node, %struct.node* %182, i32 0, i32 2
  %184 = load %struct.node*, %struct.node** %183, align 8
  %185 = getelementptr inbounds %struct.node, %struct.node* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %181, i32* %189, align 4
  br label %190

190:                                              ; preds = %139, %85
  br label %347

191:                                              ; preds = %6
  %192 = load %struct.node*, %struct.node** %8, align 8
  %193 = getelementptr inbounds %struct.node, %struct.node* %192, i32 0, i32 3
  %194 = load i8, i8* %193, align 8
  %195 = trunc i8 %194 to i1
  br i1 %195, label %196, label %236

196:                                              ; preds = %191
  %197 = load %struct.node*, %struct.node** %9, align 8
  %198 = getelementptr inbounds %struct.node, %struct.node* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.node*, %struct.node** %8, align 8
  %203 = getelementptr inbounds %struct.node, %struct.node* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = load %struct.node*, %struct.node** %8, align 8
  %206 = getelementptr inbounds %struct.node, %struct.node* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  store i32 %201, i32* %209, align 4
  %210 = load %struct.node*, %struct.node** %9, align 8
  %211 = getelementptr inbounds %struct.node, %struct.node* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = getelementptr inbounds i8*, i8** %212, i64 0
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.node*, %struct.node** %8, align 8
  %216 = getelementptr inbounds %struct.node, %struct.node* %215, i32 0, i32 0
  %217 = load i8**, i8*** %216, align 8
  %218 = load %struct.node*, %struct.node** %8, align 8
  %219 = getelementptr inbounds %struct.node, %struct.node* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8*, i8** %217, i64 %221
  store i8* %214, i8** %222, align 8
  %223 = load %struct.node*, %struct.node** %9, align 8
  %224 = getelementptr inbounds %struct.node, %struct.node* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.node*, %struct.node** %8, align 8
  %229 = getelementptr inbounds %struct.node, %struct.node* %228, i32 0, i32 2
  %230 = load %struct.node*, %struct.node** %229, align 8
  %231 = getelementptr inbounds %struct.node, %struct.node* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %227, i32* %235, align 4
  br label %287

236:                                              ; preds = %191
  %237 = load i32, i32* %12, align 4
  %238 = load %struct.node*, %struct.node** %8, align 8
  %239 = getelementptr inbounds %struct.node, %struct.node* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.node*, %struct.node** %8, align 8
  %242 = getelementptr inbounds %struct.node, %struct.node* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %240, i64 %244
  store i32 %237, i32* %245, align 4
  %246 = load %struct.node*, %struct.node** %9, align 8
  %247 = getelementptr inbounds %struct.node, %struct.node* %246, i32 0, i32 0
  %248 = load i8**, i8*** %247, align 8
  %249 = getelementptr inbounds i8*, i8** %248, i64 0
  %250 = load i8*, i8** %249, align 8
  %251 = load %struct.node*, %struct.node** %8, align 8
  %252 = getelementptr inbounds %struct.node, %struct.node* %251, i32 0, i32 0
  %253 = load i8**, i8*** %252, align 8
  %254 = load %struct.node*, %struct.node** %8, align 8
  %255 = getelementptr inbounds %struct.node, %struct.node* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %253, i64 %258
  store i8* %250, i8** %259, align 8
  %260 = load %struct.node*, %struct.node** %8, align 8
  %261 = getelementptr inbounds %struct.node, %struct.node* %260, i32 0, i32 0
  %262 = load i8**, i8*** %261, align 8
  %263 = load %struct.node*, %struct.node** %8, align 8
  %264 = getelementptr inbounds %struct.node, %struct.node* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %262, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = bitcast i8* %269 to %struct.node*
  store %struct.node* %270, %struct.node** %14, align 8
  %271 = load %struct.node*, %struct.node** %8, align 8
  %272 = load %struct.node*, %struct.node** %14, align 8
  %273 = getelementptr inbounds %struct.node, %struct.node* %272, i32 0, i32 2
  store %struct.node* %271, %struct.node** %273, align 8
  %274 = load %struct.node*, %struct.node** %9, align 8
  %275 = getelementptr inbounds %struct.node, %struct.node* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.node*, %struct.node** %8, align 8
  %280 = getelementptr inbounds %struct.node, %struct.node* %279, i32 0, i32 2
  %281 = load %struct.node*, %struct.node** %280, align 8
  %282 = getelementptr inbounds %struct.node, %struct.node* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  store i32 %278, i32* %286, align 4
  br label %287

287:                                              ; preds = %236, %196
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %323, %287
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.node*, %struct.node** %9, align 8
  %291 = getelementptr inbounds %struct.node, %struct.node* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 4
  %293 = icmp slt i32 %289, %292
  br i1 %293, label %294, label %326

294:                                              ; preds = %288
  %295 = load %struct.node*, %struct.node** %9, align 8
  %296 = getelementptr inbounds %struct.node, %struct.node* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = load %struct.node*, %struct.node** %9, align 8
  %304 = getelementptr inbounds %struct.node, %struct.node* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %13, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  store i32 %302, i32* %308, align 4
  %309 = load %struct.node*, %struct.node** %9, align 8
  %310 = getelementptr inbounds %struct.node, %struct.node* %309, i32 0, i32 0
  %311 = load i8**, i8*** %310, align 8
  %312 = load i32, i32* %13, align 4
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8*, i8** %311, i64 %314
  %316 = load i8*, i8** %315, align 8
  %317 = load %struct.node*, %struct.node** %9, align 8
  %318 = getelementptr inbounds %struct.node, %struct.node* %317, i32 0, i32 0
  %319 = load i8**, i8*** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8*, i8** %319, i64 %321
  store i8* %316, i8** %322, align 8
  br label %323

323:                                              ; preds = %294
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %13, align 4
  br label %288

326:                                              ; preds = %288
  %327 = load %struct.node*, %struct.node** %8, align 8
  %328 = getelementptr inbounds %struct.node, %struct.node* %327, i32 0, i32 3
  %329 = load i8, i8* %328, align 8
  %330 = trunc i8 %329 to i1
  br i1 %330, label %346, label %331

331:                                              ; preds = %326
  %332 = load %struct.node*, %struct.node** %9, align 8
  %333 = getelementptr inbounds %struct.node, %struct.node* %332, i32 0, i32 0
  %334 = load i8**, i8*** %333, align 8
  %335 = load i32, i32* %13, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8*, i8** %334, i64 %337
  %339 = load i8*, i8** %338, align 8
  %340 = load %struct.node*, %struct.node** %9, align 8
  %341 = getelementptr inbounds %struct.node, %struct.node* %340, i32 0, i32 0
  %342 = load i8**, i8*** %341, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  store i8* %339, i8** %345, align 8
  br label %346

346:                                              ; preds = %331, %326
  br label %347

347:                                              ; preds = %346, %190
  %348 = load %struct.node*, %struct.node** %8, align 8
  %349 = getelementptr inbounds %struct.node, %struct.node* %348, i32 0, i32 4
  %350 = load i32, i32* %349, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %349, align 4
  %352 = load %struct.node*, %struct.node** %9, align 8
  %353 = getelementptr inbounds %struct.node, %struct.node* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 4
  %355 = add nsw i32 %354, -1
  store i32 %355, i32* %353, align 4
  %356 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %356
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @deleteVal(%struct.node* %0, i32 %1) #0 {
  %3 = alloca %struct.node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.node*, align 8
  %6 = alloca %struct.record*, align 8
  store %struct.node* %0, %struct.node** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.node*, %struct.node** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.record* @find(%struct.node* %7, i32 %8, i1 zeroext false)
  store %struct.record* %9, %struct.record** %6, align 8
  %10 = load %struct.node*, %struct.node** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.node* @find_leaf(%struct.node* %10, i32 %11, i1 zeroext false)
  store %struct.node* %12, %struct.node** %5, align 8
  %13 = load %struct.record*, %struct.record** %6, align 8
  %14 = icmp ne %struct.record* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load %struct.node*, %struct.node** %5, align 8
  %17 = icmp ne %struct.node* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load %struct.record*, %struct.record** %6, align 8
  %20 = bitcast %struct.record* %19 to i8*
  call void @free(i8* %20) #6
  %21 = load %struct.node*, %struct.node** %3, align 8
  %22 = load %struct.node*, %struct.node** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.record*, %struct.record** %6, align 8
  %25 = bitcast %struct.record* %24 to i8*
  %26 = call %struct.node* @delete_entry(%struct.node* %21, %struct.node* %22, i32 %23, i8* %25)
  store %struct.node* %26, %struct.node** %3, align 8
  br label %27

27:                                               ; preds = %18, %15, %2
  %28 = load %struct.node*, %struct.node** %3, align 8
  ret %struct.node* %28
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @destroy_tree_nodes(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  %3 = alloca i32, align 4
  store %struct.node* %0, %struct.node** %2, align 8
  %4 = load %struct.node*, %struct.node** %2, align 8
  %5 = getelementptr inbounds %struct.node, %struct.node* %4, i32 0, i32 3
  %6 = load i8, i8* %5, align 8
  %7 = trunc i8 %6 to i1
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %23, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.node*, %struct.node** %2, align 8
  %12 = getelementptr inbounds %struct.node, %struct.node* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.node*, %struct.node** %2, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  call void @free(i8* %22) #6
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %9

26:                                               ; preds = %9
  br label %48

27:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.node*, %struct.node** %2, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = load %struct.node*, %struct.node** %2, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = bitcast i8* %42 to %struct.node*
  call void @destroy_tree_nodes(%struct.node* %43)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %28

47:                                               ; preds = %28
  br label %48

48:                                               ; preds = %47, %26
  %49 = load %struct.node*, %struct.node** %2, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 0
  %51 = load i8**, i8*** %50, align 8
  %52 = bitcast i8** %51 to i8*
  call void @free(i8* %52) #6
  %53 = load %struct.node*, %struct.node** %2, align 8
  %54 = getelementptr inbounds %struct.node, %struct.node* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  call void @free(i8* %56) #6
  %57 = load %struct.node*, %struct.node** %2, align 8
  %58 = bitcast %struct.node* %57 to i8*
  call void @free(i8* %58) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.node* @destroy_tree(%struct.node* %0) #0 {
  %2 = alloca %struct.node*, align 8
  store %struct.node* %0, %struct.node** %2, align 8
  %3 = load %struct.node*, %struct.node** %2, align 8
  call void @destroy_tree_nodes(%struct.node* %3)
  ret %struct.node* null
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca %struct._IO_FILE*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct._IO_FILE*, align 8
  %20 = alloca %struct.node*, align 8
  %21 = alloca %struct.record*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.record*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca %struct.knode*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca %struct.record*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.list_t*, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %struct.knode*, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64*, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i8*, align 8
  %58 = alloca i64*, align 8
  %59 = alloca i8*, align 8
  %60 = alloca i8*, align 8
  %61 = alloca i64*, align 8
  %62 = alloca i8*, align 8
  %63 = alloca i8*, align 8
  %64 = alloca i64*, align 8
  %65 = alloca i8*, align 8
  %66 = alloca i8*, align 8
  %67 = alloca i32*, align 8
  %68 = alloca i8*, align 8
  %69 = alloca i8*, align 8
  %70 = alloca i32*, align 8
  %71 = alloca i8*, align 8
  %72 = alloca i8*, align 8
  %73 = alloca i32, align 4
  %74 = alloca i32*, align 8
  %75 = alloca i8*, align 8
  %76 = alloca i8*, align 8
  %77 = alloca i32*, align 8
  %78 = alloca i8*, align 8
  %79 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.55, i64 0, i64 0), i8** %10, align 8
  store i32 1, i32* %6, align 4
  br label %80

80:                                               ; preds = %136, %2
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %139

84:                                               ; preds = %80
  %85 = load i8**, i8*** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0)) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  %96 = icmp sge i32 %93, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  store i8* %103, i8** %8, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %108

106:                                              ; preds = %92
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.57, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %901

108:                                              ; preds = %97
  br label %135

109:                                              ; preds = %84
  %110 = load i8**, i8*** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0)) #8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %109
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  %121 = icmp sge i32 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load i8**, i8*** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %123, i64 %126
  %128 = load i8*, i8** %127, align 8
  store i8* %128, i8** %9, align 8
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %133

131:                                              ; preds = %117
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %901

133:                                              ; preds = %122
  br label %134

134:                                              ; preds = %133, %109
  br label %135

135:                                              ; preds = %134, %108
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %80

139:                                              ; preds = %80
  %140 = load i8*, i8** %8, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %139
  %143 = load i8*, i8** %9, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %142, %139
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.60, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %142
  %148 = load i8*, i8** %8, align 8
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i64 0, i64 0), i8* %148)
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i64 0, i64 0), i8* %150)
  %152 = load i8*, i8** %9, align 8
  %153 = call %struct._IO_FILE* @fopen(i8* %152, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0))
  store %struct._IO_FILE* %153, %struct._IO_FILE** %12, align 8
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %155 = icmp eq %struct._IO_FILE* %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %158 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), %struct._IO_FILE* %157)
  call void @exit(i32 1) #7
  unreachable

159:                                              ; preds = %147
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %161 = call i32 @fseek(%struct._IO_FILE* %160, i64 0, i32 2)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %163 = call i64 @ftell(%struct._IO_FILE* %162)
  store i64 %163, i64* %13, align 8
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  call void @rewind(%struct._IO_FILE* %164)
  %165 = load i64, i64* %13, align 8
  %166 = mul i64 1, %165
  %167 = call noalias i8* @malloc(i64 %166) #6
  store i8* %167, i8** %16, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %172, label %169

169:                                              ; preds = %159
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 1908)
  call void @exit(i32 -1) #7
  unreachable

172:                                              ; preds = %159
  %173 = load i8*, i8** %16, align 8
  store i8* %173, i8** %17, align 8
  %174 = load i8*, i8** %17, align 8
  store i8* %174, i8** %14, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %179 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.65, i64 0, i64 0), %struct._IO_FILE* %178)
  call void @exit(i32 2) #7
  unreachable

180:                                              ; preds = %172
  %181 = load i8*, i8** %14, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %184 = call i64 @fread(i8* %181, i64 1, i64 %182, %struct._IO_FILE* %183)
  store i64 %184, i64* %15, align 8
  %185 = load i64, i64* %15, align 8
  %186 = load i64, i64* %13, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %180
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %190 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), %struct._IO_FILE* %189)
  call void @exit(i32 3) #7
  unreachable

191:                                              ; preds = %180
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %12, align 8
  %193 = call i32 @fclose(%struct._IO_FILE* %192)
  %194 = load i8*, i8** %14, align 8
  store i8* %194, i8** %18, align 8
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i64 0, i64 0))
  %196 = load i8*, i8** %14, align 8
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i64 0, i64 0), i8* %196)
  %198 = load i8*, i8** %10, align 8
  %199 = call %struct._IO_FILE* @fopen(i8* %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i64 0, i64 0))
  store %struct._IO_FILE* %199, %struct._IO_FILE** %11, align 8
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %201 = icmp eq %struct._IO_FILE* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %191
  %203 = load i8*, i8** %10, align 8
  %204 = bitcast i8* %203 to %struct._IO_FILE*
  %205 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), %struct._IO_FILE* %204)
  br label %206

206:                                              ; preds = %202, %191
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.71, i64 0, i64 0))
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %210 = call i32 @fclose(%struct._IO_FILE* %209)
  store %struct.node* null, %struct.node** %20, align 8
  store i32 508, i32* @order, align 4
  store i8 0, i8* @verbose_output, align 1
  %211 = load i8*, i8** %8, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %243

213:                                              ; preds = %206
  %214 = load i8**, i8*** %5, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 1
  %216 = load i8*, i8** %215, align 8
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0), i8* %216)
  %218 = load i8*, i8** %8, align 8
  %219 = call %struct._IO_FILE* @fopen(i8* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i64 0, i64 0))
  store %struct._IO_FILE* %219, %struct._IO_FILE** %19, align 8
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %221 = icmp eq %struct._IO_FILE* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %213
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.74, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

223:                                              ; preds = %213
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i32* %22)
  %226 = load i32, i32* %22, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* @size, align 8
  br label %228

228:                                              ; preds = %233, %223
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %230 = call i32 @feof(%struct._IO_FILE* %229) #6
  %231 = icmp ne i32 %230, 0
  %232 = xor i1 %231, true
  br i1 %232, label %233, label %240

233:                                              ; preds = %228
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %235 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %234, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.75, i64 0, i64 0), i32* %22)
  %236 = load %struct.node*, %struct.node** %20, align 8
  %237 = load i32, i32* %22, align 4
  %238 = load i32, i32* %22, align 4
  %239 = call %struct.node* @insert(%struct.node* %236, i32 %237, i32 %238)
  store %struct.node* %239, %struct.node** %20, align 8
  br label %228

240:                                              ; preds = %228
  %241 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %242 = call i32 @fclose(%struct._IO_FILE* %241)
  br label %245

243:                                              ; preds = %206
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.76, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %901

245:                                              ; preds = %240
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.77, i64 0, i64 0))
  %247 = load %struct.node*, %struct.node** %20, align 8
  %248 = call i64 @transform_to_cuda(%struct.node* %247, i1 zeroext false)
  store i64 %248, i64* %24, align 8
  %249 = load %struct.node*, %struct.node** %20, align 8
  %250 = call i32 @height(%struct.node* %249)
  %251 = sext i32 %250 to i64
  store i64 %251, i64* @maxheight, align 8
  %252 = load %struct.knode*, %struct.knode** @knodes, align 8
  %253 = ptrtoint %struct.knode* %252 to i64
  %254 = load i8*, i8** @mem, align 8
  %255 = ptrtoint i8* %254 to i64
  %256 = sub nsw i64 %253, %255
  store i64 %256, i64* %25, align 8
  %257 = load i8*, i8** %14, align 8
  store i8* %257, i8** %26, align 8
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i64 0, i64 0))
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0))
  br label %260

260:                                              ; preds = %896, %245
  %261 = load i8*, i8** %26, align 8
  %262 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.80, i64 0, i64 0), i8* %23) #6
  %263 = icmp ne i32 %262, -1
  br i1 %263, label %264, label %898

264:                                              ; preds = %260
  %265 = load i8*, i8** %26, align 8
  %266 = getelementptr inbounds i8, i8* %265, i32 1
  store i8* %266, i8** %26, align 8
  %267 = load i8, i8* %23, align 1
  %268 = sext i8 %267 to i32
  switch i32 %268, label %895 [
    i32 105, label %269
    i32 102, label %281
    i32 112, label %282
    i32 100, label %306
    i32 120, label %317
    i32 108, label %326
    i32 116, label %333
    i32 118, label %340
    i32 113, label %350
    i32 107, label %356
    i32 114, label %542
    i32 106, label %565
  ]

269:                                              ; preds = %264
  %270 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %22)
  br label %271

271:                                              ; preds = %274, %269
  %272 = call i32 @getchar()
  %273 = icmp ne i32 %272, 10
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  br label %271

275:                                              ; preds = %271
  %276 = load %struct.node*, %struct.node** %20, align 8
  %277 = load i32, i32* %22, align 4
  %278 = load i32, i32* %22, align 4
  %279 = call %struct.node* @insert(%struct.node* %276, i32 %277, i32 %278)
  store %struct.node* %279, %struct.node** %20, align 8
  %280 = load %struct.node*, %struct.node** %20, align 8
  call void @print_tree(%struct.node* %280)
  br label %896

281:                                              ; preds = %264
  br label %282

282:                                              ; preds = %281, %264
  %283 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %22)
  br label %284

284:                                              ; preds = %287, %282
  %285 = call i32 @getchar()
  %286 = icmp ne i32 %285, 10
  br i1 %286, label %287, label %288

287:                                              ; preds = %284
  br label %284

288:                                              ; preds = %284
  %289 = load %struct.node*, %struct.node** %20, align 8
  %290 = load i32, i32* %22, align 4
  %291 = load i8, i8* %23, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 112
  %294 = call %struct.record* @find(%struct.node* %289, i32 %290, i1 zeroext %293)
  store %struct.record* %294, %struct.record** %21, align 8
  %295 = load %struct.record*, %struct.record** %21, align 8
  %296 = icmp eq %struct.record* %295, null
  br i1 %296, label %297, label %300

297:                                              ; preds = %288
  %298 = load i32, i32* %22, align 4
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.82, i64 0, i64 0), i32 %298)
  br label %305

300:                                              ; preds = %288
  %301 = load %struct.record*, %struct.record** %21, align 8
  %302 = getelementptr inbounds %struct.record, %struct.record* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0), i32 %303)
  br label %305

305:                                              ; preds = %300, %297
  br label %896

306:                                              ; preds = %264
  %307 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %22)
  br label %308

308:                                              ; preds = %311, %306
  %309 = call i32 @getchar()
  %310 = icmp ne i32 %309, 10
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  br label %308

312:                                              ; preds = %308
  %313 = load %struct.node*, %struct.node** %20, align 8
  %314 = load i32, i32* %22, align 4
  %315 = call %struct.node* @deleteVal(%struct.node* %313, i32 %314)
  store %struct.node* %315, %struct.node** %20, align 8
  %316 = load %struct.node*, %struct.node** %20, align 8
  call void @print_tree(%struct.node* %316)
  br label %896

317:                                              ; preds = %264
  br label %318

318:                                              ; preds = %321, %317
  %319 = call i32 @getchar()
  %320 = icmp ne i32 %319, 10
  br i1 %320, label %321, label %322

321:                                              ; preds = %318
  br label %318

322:                                              ; preds = %318
  %323 = load %struct.node*, %struct.node** %20, align 8
  %324 = call %struct.node* @destroy_tree(%struct.node* %323)
  store %struct.node* %324, %struct.node** %20, align 8
  %325 = load %struct.node*, %struct.node** %20, align 8
  call void @print_tree(%struct.node* %325)
  br label %896

326:                                              ; preds = %264
  br label %327

327:                                              ; preds = %330, %326
  %328 = call i32 @getchar()
  %329 = icmp ne i32 %328, 10
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  br label %327

331:                                              ; preds = %327
  %332 = load %struct.node*, %struct.node** %20, align 8
  call void @print_leaves(%struct.node* %332)
  br label %896

333:                                              ; preds = %264
  br label %334

334:                                              ; preds = %337, %333
  %335 = call i32 @getchar()
  %336 = icmp ne i32 %335, 10
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  br label %334

338:                                              ; preds = %334
  %339 = load %struct.node*, %struct.node** %20, align 8
  call void @print_tree(%struct.node* %339)
  br label %896

340:                                              ; preds = %264
  br label %341

341:                                              ; preds = %344, %340
  %342 = call i32 @getchar()
  %343 = icmp ne i32 %342, 10
  br i1 %343, label %344, label %345

344:                                              ; preds = %341
  br label %341

345:                                              ; preds = %341
  %346 = load i8, i8* @verbose_output, align 1
  %347 = trunc i8 %346 to i1
  %348 = xor i1 %347, true
  %349 = zext i1 %348 to i8
  store i8 %349, i8* @verbose_output, align 1
  br label %896

350:                                              ; preds = %264
  br label %351

351:                                              ; preds = %354, %350
  %352 = call i32 @getchar()
  %353 = icmp ne i32 %352, 10
  br i1 %353, label %354, label %355

354:                                              ; preds = %351
  br label %351

355:                                              ; preds = %351
  store i32 0, i32* %3, align 4
  br label %901

356:                                              ; preds = %264
  %357 = load i8*, i8** %26, align 8
  %358 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %357, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %27) #6
  br label %359

359:                                              ; preds = %369, %356
  %360 = load i8*, i8** %26, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp ne i32 %362, 32
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = load i8*, i8** %26, align 8
  %366 = icmp ne i8* %365, inttoptr (i64 10 to i8*)
  br label %367

367:                                              ; preds = %364, %359
  %368 = phi i1 [ false, %359 ], [ %366, %364 ]
  br i1 %368, label %369, label %372

369:                                              ; preds = %367
  %370 = load i8*, i8** %26, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %26, align 8
  br label %359

372:                                              ; preds = %367
  %373 = load i32, i32* %27, align 4
  %374 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* %27, align 4
  %376 = icmp sgt i32 %375, 65535
  br i1 %376, label %377, label %379

377:                                              ; preds = %372
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.85, i64 0, i64 0))
  call void @exit(i32 0) #7
  unreachable

379:                                              ; preds = %372
  %380 = load i8*, i8** @mem, align 8
  %381 = bitcast i8* %380 to %struct.record*
  store %struct.record* %381, %struct.record** %28, align 8
  %382 = load i64, i64* %25, align 8
  %383 = udiv i64 %382, 4
  store i64 %383, i64* %29, align 8
  %384 = load i64, i64* %25, align 8
  store i64 %384, i64* %30, align 8
  %385 = load i8*, i8** @mem, align 8
  %386 = ptrtoint i8* %385 to i64
  %387 = load i64, i64* %25, align 8
  %388 = add nsw i64 %386, %387
  %389 = inttoptr i64 %388 to %struct.knode*
  store %struct.knode* %389, %struct.knode** %31, align 8
  %390 = load i64, i64* %24, align 8
  %391 = load i64, i64* %25, align 8
  %392 = sub nsw i64 %390, %391
  %393 = udiv i64 %392, 4084
  store i64 %393, i64* %32, align 8
  %394 = load i64, i64* %24, align 8
  %395 = load i64, i64* %25, align 8
  %396 = sub nsw i64 %394, %395
  store i64 %396, i64* %33, align 8
  %397 = load i32, i32* %27, align 4
  %398 = sext i32 %397 to i64
  %399 = mul i64 %398, 8
  %400 = call noalias i8* @malloc(i64 %399) #6
  store i8* %400, i8** %35, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %405, label %402

402:                                              ; preds = %379
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2144)
  call void @exit(i32 -1) #7
  unreachable

405:                                              ; preds = %379
  %406 = load i8*, i8** %35, align 8
  store i8* %406, i8** %36, align 8
  %407 = load i8*, i8** %36, align 8
  %408 = bitcast i8* %407 to i64*
  store i64* %408, i64** %34, align 8
  %409 = load i64*, i64** %34, align 8
  %410 = bitcast i64* %409 to i8*
  %411 = load i32, i32* %27, align 4
  %412 = sext i32 %411 to i64
  %413 = mul i64 %412, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %410, i8 0, i64 %413, i1 false)
  %414 = load i32, i32* %27, align 4
  %415 = sext i32 %414 to i64
  %416 = mul i64 %415, 8
  %417 = call noalias i8* @malloc(i64 %416) #6
  store i8* %417, i8** %38, align 8
  %418 = icmp ne i8* %417, null
  br i1 %418, label %422, label %419

419:                                              ; preds = %405
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2150)
  call void @exit(i32 -1) #7
  unreachable

422:                                              ; preds = %405
  %423 = load i8*, i8** %38, align 8
  store i8* %423, i8** %39, align 8
  %424 = load i8*, i8** %39, align 8
  %425 = bitcast i8* %424 to i64*
  store i64* %425, i64** %37, align 8
  %426 = load i64*, i64** %37, align 8
  %427 = bitcast i64* %426 to i8*
  %428 = load i32, i32* %27, align 4
  %429 = sext i32 %428 to i64
  %430 = mul i64 %429, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %427, i8 0, i64 %430, i1 false)
  %431 = load i32, i32* %27, align 4
  %432 = sext i32 %431 to i64
  %433 = mul i64 %432, 4
  %434 = call noalias i8* @malloc(i64 %433) #6
  store i8* %434, i8** %41, align 8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %439, label %436

436:                                              ; preds = %422
  %437 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %438 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %437, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2156)
  call void @exit(i32 -1) #7
  unreachable

439:                                              ; preds = %422
  %440 = load i8*, i8** %41, align 8
  store i8* %440, i8** %42, align 8
  %441 = load i8*, i8** %42, align 8
  %442 = bitcast i8* %441 to i32*
  store i32* %442, i32** %40, align 8
  store i32 0, i32* %43, align 4
  br label %443

443:                                              ; preds = %459, %439
  %444 = load i32, i32* %43, align 4
  %445 = load i32, i32* %27, align 4
  %446 = icmp slt i32 %444, %445
  br i1 %446, label %447, label %462

447:                                              ; preds = %443
  %448 = call i32 @rand() #6
  %449 = sitofp i32 %448 to float
  %450 = fdiv float %449, 0x41E0000000000000
  %451 = load i64, i64* @size, align 8
  %452 = sitofp i64 %451 to float
  %453 = fmul float %450, %452
  %454 = fptosi float %453 to i32
  %455 = load i32*, i32** %40, align 8
  %456 = load i32, i32* %43, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  store i32 %454, i32* %458, align 4
  br label %459

459:                                              ; preds = %447
  %460 = load i32, i32* %43, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %43, align 4
  br label %443

462:                                              ; preds = %443
  %463 = load i32, i32* %27, align 4
  %464 = sext i32 %463 to i64
  %465 = mul i64 4, %464
  %466 = call noalias i8* @malloc(i64 %465) #6
  store i8* %466, i8** %45, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %471, label %468

468:                                              ; preds = %462
  %469 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %470 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %469, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2164)
  call void @exit(i32 -1) #7
  unreachable

471:                                              ; preds = %462
  %472 = load i8*, i8** %45, align 8
  store i8* %472, i8** %46, align 8
  %473 = load i8*, i8** %46, align 8
  %474 = bitcast i8* %473 to %struct.record*
  store %struct.record* %474, %struct.record** %44, align 8
  store i32 0, i32* %43, align 4
  br label %475

475:                                              ; preds = %485, %471
  %476 = load i32, i32* %43, align 4
  %477 = load i32, i32* %27, align 4
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %479, label %488

479:                                              ; preds = %475
  %480 = load %struct.record*, %struct.record** %44, align 8
  %481 = load i32, i32* %43, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.record, %struct.record* %480, i64 %482
  %484 = getelementptr inbounds %struct.record, %struct.record* %483, i32 0, i32 0
  store i32 -1, i32* %484, align 4
  br label %485

485:                                              ; preds = %479
  %486 = load i32, i32* %43, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %43, align 4
  br label %475

488:                                              ; preds = %475
  %489 = load i32, i32* %7, align 4
  %490 = load %struct.record*, %struct.record** %28, align 8
  %491 = load %struct.knode*, %struct.knode** %31, align 8
  %492 = load i64, i64* %32, align 8
  %493 = load i32, i32* @order, align 4
  %494 = load i64, i64* @maxheight, align 8
  %495 = load i32, i32* %27, align 4
  %496 = load i64*, i64** %34, align 8
  %497 = load i64*, i64** %37, align 8
  %498 = load i32*, i32** %40, align 8
  %499 = load %struct.record*, %struct.record** %44, align 8
  call void @kernel_cpu(i32 %489, %struct.record* %490, %struct.knode* %491, i64 %492, i32 %493, i64 %494, i32 %495, i64* %496, i64* %497, i32* %498, %struct.record* %499)
  %500 = load i8*, i8** %10, align 8
  %501 = call %struct._IO_FILE* @fopen(i8* %500, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0))
  store %struct._IO_FILE* %501, %struct._IO_FILE** %11, align 8
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %503 = icmp eq %struct._IO_FILE* %502, null
  br i1 %503, label %504, label %508

504:                                              ; preds = %488
  %505 = load i8*, i8** %10, align 8
  %506 = bitcast i8* %505 to %struct._IO_FILE*
  %507 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), %struct._IO_FILE* %506)
  br label %508

508:                                              ; preds = %504, %488
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %510 = load i32, i32* %27, align 4
  %511 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %509, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.84, i64 0, i64 0), i32 %510)
  store i32 0, i32* %43, align 4
  br label %512

512:                                              ; preds = %526, %508
  %513 = load i32, i32* %43, align 4
  %514 = load i32, i32* %27, align 4
  %515 = icmp slt i32 %513, %514
  br i1 %515, label %516, label %529

516:                                              ; preds = %512
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %518 = load i32, i32* %43, align 4
  %519 = load %struct.record*, %struct.record** %44, align 8
  %520 = load i32, i32* %43, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.record, %struct.record* %519, i64 %521
  %523 = getelementptr inbounds %struct.record, %struct.record* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 4
  %525 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %517, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i64 0, i64 0), i32 %518, i32 %524)
  br label %526

526:                                              ; preds = %516
  %527 = load i32, i32* %43, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %43, align 4
  br label %512

529:                                              ; preds = %512
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %531 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %530, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0))
  %532 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %533 = call i32 @fclose(%struct._IO_FILE* %532)
  %534 = load i64*, i64** %34, align 8
  %535 = bitcast i64* %534 to i8*
  call void @free(i8* %535) #6
  %536 = load i64*, i64** %37, align 8
  %537 = bitcast i64* %536 to i8*
  call void @free(i8* %537) #6
  %538 = load i32*, i32** %40, align 8
  %539 = bitcast i32* %538 to i8*
  call void @free(i8* %539) #6
  %540 = load %struct.record*, %struct.record** %44, align 8
  %541 = bitcast %struct.record* %540 to i8*
  call void @free(i8* %541) #6
  br label %896

542:                                              ; preds = %264
  %543 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %47)
  %544 = call i32 (i8*, ...) @__isoc99_scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %48)
  %545 = load i32, i32* %47, align 4
  %546 = load i32, i32* %48, align 4
  %547 = icmp sgt i32 %545, %546
  br i1 %547, label %548, label %552

548:                                              ; preds = %542
  %549 = load i32, i32* %47, align 4
  store i32 %549, i32* %22, align 4
  %550 = load i32, i32* %48, align 4
  store i32 %550, i32* %47, align 4
  %551 = load i32, i32* %22, align 4
  store i32 %551, i32* %48, align 4
  br label %552

552:                                              ; preds = %548, %542
  %553 = load i32, i32* %47, align 4
  %554 = load i32, i32* %48, align 4
  %555 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i64 0, i64 0), i32 %553, i32 %554)
  %556 = load %struct.node*, %struct.node** %20, align 8
  %557 = load i32, i32* %47, align 4
  %558 = load i32, i32* %48, align 4
  %559 = call %struct.list_t* @findRange(%struct.node* %556, i32 %557, i32 %558)
  store %struct.list_t* %559, %struct.list_t** %49, align 8
  %560 = load %struct.list_t*, %struct.list_t** %49, align 8
  %561 = call i32 @list_get_length(%struct.list_t* %560)
  %562 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.90, i64 0, i64 0), i32 %561)
  %563 = load %struct.list_t*, %struct.list_t** %49, align 8
  %564 = bitcast %struct.list_t* %563 to i8*
  call void @free(i8* %564) #6
  br label %896

565:                                              ; preds = %264
  %566 = load i8*, i8** %26, align 8
  %567 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %566, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %50) #6
  br label %568

568:                                              ; preds = %578, %565
  %569 = load i8*, i8** %26, align 8
  %570 = load i8, i8* %569, align 1
  %571 = sext i8 %570 to i32
  %572 = icmp ne i32 %571, 32
  br i1 %572, label %573, label %576

573:                                              ; preds = %568
  %574 = load i8*, i8** %26, align 8
  %575 = icmp ne i8* %574, inttoptr (i64 10 to i8*)
  br label %576

576:                                              ; preds = %573, %568
  %577 = phi i1 [ false, %568 ], [ %575, %573 ]
  br i1 %577, label %578, label %581

578:                                              ; preds = %576
  %579 = load i8*, i8** %26, align 8
  %580 = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %580, i8** %26, align 8
  br label %568

581:                                              ; preds = %576
  %582 = load i8*, i8** %26, align 8
  %583 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %582, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.81, i64 0, i64 0), i32* %51) #6
  br label %584

584:                                              ; preds = %594, %581
  %585 = load i8*, i8** %26, align 8
  %586 = load i8, i8* %585, align 1
  %587 = sext i8 %586 to i32
  %588 = icmp ne i32 %587, 32
  br i1 %588, label %589, label %592

589:                                              ; preds = %584
  %590 = load i8*, i8** %26, align 8
  %591 = icmp ne i8* %590, inttoptr (i64 10 to i8*)
  br label %592

592:                                              ; preds = %589, %584
  %593 = phi i1 [ false, %584 ], [ %591, %589 ]
  br i1 %593, label %594, label %597

594:                                              ; preds = %592
  %595 = load i8*, i8** %26, align 8
  %596 = getelementptr inbounds i8, i8* %595, i32 1
  store i8* %596, i8** %26, align 8
  br label %584

597:                                              ; preds = %592
  %598 = load i32, i32* %50, align 4
  %599 = load i32, i32* %51, align 4
  %600 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.91, i64 0, i64 0), i32 %598, i32 %599)
  %601 = load i32, i32* %51, align 4
  %602 = sext i32 %601 to i64
  %603 = load i64, i64* @size, align 8
  %604 = icmp sgt i64 %602, %603
  br i1 %604, label %608, label %605

605:                                              ; preds = %597
  %606 = load i32, i32* %51, align 4
  %607 = icmp slt i32 %606, 0
  br i1 %607, label %608, label %612

608:                                              ; preds = %605, %597
  %609 = load i64, i64* @size, align 8
  %610 = trunc i64 %609 to i32
  %611 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.92, i64 0, i64 0), i32 %610)
  call void @exit(i32 0) #7
  unreachable

612:                                              ; preds = %605
  %613 = load i8*, i8** @mem, align 8
  %614 = ptrtoint i8* %613 to i64
  %615 = load i64, i64* %25, align 8
  %616 = add nsw i64 %614, %615
  %617 = inttoptr i64 %616 to %struct.knode*
  store %struct.knode* %617, %struct.knode** %52, align 8
  %618 = load i64, i64* %24, align 8
  %619 = load i64, i64* %25, align 8
  %620 = sub nsw i64 %618, %619
  %621 = udiv i64 %620, 4084
  store i64 %621, i64* %53, align 8
  %622 = load i64, i64* %24, align 8
  %623 = load i64, i64* %25, align 8
  %624 = sub nsw i64 %622, %623
  store i64 %624, i64* %54, align 8
  %625 = load i32, i32* %50, align 4
  %626 = sext i32 %625 to i64
  %627 = mul i64 %626, 8
  %628 = call noalias i8* @malloc(i64 %627) #6
  store i8* %628, i8** %56, align 8
  %629 = icmp ne i8* %628, null
  br i1 %629, label %633, label %630

630:                                              ; preds = %612
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %632 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %631, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2276)
  call void @exit(i32 -1) #7
  unreachable

633:                                              ; preds = %612
  %634 = load i8*, i8** %56, align 8
  store i8* %634, i8** %57, align 8
  %635 = load i8*, i8** %57, align 8
  %636 = bitcast i8* %635 to i64*
  store i64* %636, i64** %55, align 8
  %637 = load i64*, i64** %55, align 8
  %638 = bitcast i64* %637 to i8*
  %639 = load i32, i32* %50, align 4
  %640 = sext i32 %639 to i64
  %641 = mul i64 %640, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %638, i8 0, i64 %641, i1 false)
  %642 = load i32, i32* %50, align 4
  %643 = sext i32 %642 to i64
  %644 = mul i64 %643, 8
  %645 = call noalias i8* @malloc(i64 %644) #6
  store i8* %645, i8** %59, align 8
  %646 = icmp ne i8* %645, null
  br i1 %646, label %650, label %647

647:                                              ; preds = %633
  %648 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %649 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %648, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2282)
  call void @exit(i32 -1) #7
  unreachable

650:                                              ; preds = %633
  %651 = load i8*, i8** %59, align 8
  store i8* %651, i8** %60, align 8
  %652 = load i8*, i8** %60, align 8
  %653 = bitcast i8* %652 to i64*
  store i64* %653, i64** %58, align 8
  %654 = load i64*, i64** %58, align 8
  %655 = bitcast i64* %654 to i8*
  %656 = load i32, i32* %50, align 4
  %657 = sext i32 %656 to i64
  %658 = mul i64 %657, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %655, i8 0, i64 %658, i1 false)
  %659 = load i32, i32* %50, align 4
  %660 = sext i32 %659 to i64
  %661 = mul i64 %660, 8
  %662 = call noalias i8* @malloc(i64 %661) #6
  store i8* %662, i8** %62, align 8
  %663 = icmp ne i8* %662, null
  br i1 %663, label %667, label %664

664:                                              ; preds = %650
  %665 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %666 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %665, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2288)
  call void @exit(i32 -1) #7
  unreachable

667:                                              ; preds = %650
  %668 = load i8*, i8** %62, align 8
  store i8* %668, i8** %63, align 8
  %669 = load i8*, i8** %63, align 8
  %670 = bitcast i8* %669 to i64*
  store i64* %670, i64** %61, align 8
  %671 = load i64*, i64** %61, align 8
  %672 = bitcast i64* %671 to i8*
  %673 = load i32, i32* %50, align 4
  %674 = sext i32 %673 to i64
  %675 = mul i64 %674, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %672, i8 0, i64 %675, i1 false)
  %676 = load i32, i32* %50, align 4
  %677 = sext i32 %676 to i64
  %678 = mul i64 %677, 8
  %679 = call noalias i8* @malloc(i64 %678) #6
  store i8* %679, i8** %65, align 8
  %680 = icmp ne i8* %679, null
  br i1 %680, label %684, label %681

681:                                              ; preds = %667
  %682 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %683 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %682, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2294)
  call void @exit(i32 -1) #7
  unreachable

684:                                              ; preds = %667
  %685 = load i8*, i8** %65, align 8
  store i8* %685, i8** %66, align 8
  %686 = load i8*, i8** %66, align 8
  %687 = bitcast i8* %686 to i64*
  store i64* %687, i64** %64, align 8
  %688 = load i64*, i64** %64, align 8
  %689 = bitcast i64* %688 to i8*
  %690 = load i32, i32* %50, align 4
  %691 = sext i32 %690 to i64
  %692 = mul i64 %691, 8
  call void @llvm.memset.p0i8.i64(i8* align 8 %689, i8 0, i64 %692, i1 false)
  %693 = load i32, i32* %50, align 4
  %694 = sext i32 %693 to i64
  %695 = mul i64 %694, 4
  %696 = call noalias i8* @malloc(i64 %695) #6
  store i8* %696, i8** %68, align 8
  %697 = icmp ne i8* %696, null
  br i1 %697, label %701, label %698

698:                                              ; preds = %684
  %699 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %700 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %699, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2300)
  call void @exit(i32 -1) #7
  unreachable

701:                                              ; preds = %684
  %702 = load i8*, i8** %68, align 8
  store i8* %702, i8** %69, align 8
  %703 = load i8*, i8** %69, align 8
  %704 = bitcast i8* %703 to i32*
  store i32* %704, i32** %67, align 8
  %705 = load i32, i32* %50, align 4
  %706 = sext i32 %705 to i64
  %707 = mul i64 %706, 4
  %708 = call noalias i8* @malloc(i64 %707) #6
  store i8* %708, i8** %71, align 8
  %709 = icmp ne i8* %708, null
  br i1 %709, label %713, label %710

710:                                              ; preds = %701
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %711, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2302)
  call void @exit(i32 -1) #7
  unreachable

713:                                              ; preds = %701
  %714 = load i8*, i8** %71, align 8
  store i8* %714, i8** %72, align 8
  %715 = load i8*, i8** %72, align 8
  %716 = bitcast i8* %715 to i32*
  store i32* %716, i32** %70, align 8
  store i32 0, i32* %73, align 4
  br label %717

717:                                              ; preds = %781, %713
  %718 = load i32, i32* %73, align 4
  %719 = load i32, i32* %50, align 4
  %720 = icmp slt i32 %718, %719
  br i1 %720, label %721, label %784

721:                                              ; preds = %717
  %722 = call i32 @rand() #6
  %723 = sitofp i32 %722 to float
  %724 = fdiv float %723, 0x41E0000000000000
  %725 = load i64, i64* @size, align 8
  %726 = sitofp i64 %725 to float
  %727 = fmul float %724, %726
  %728 = fptosi float %727 to i32
  %729 = load i32*, i32** %67, align 8
  %730 = load i32, i32* %73, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, i32* %729, i64 %731
  store i32 %728, i32* %732, align 4
  %733 = load i32*, i32** %67, align 8
  %734 = load i32, i32* %73, align 4
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %733, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = load i32, i32* %51, align 4
  %739 = add nsw i32 %737, %738
  %740 = load i32*, i32** %70, align 8
  %741 = load i32, i32* %73, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, i32* %740, i64 %742
  store i32 %739, i32* %743, align 4
  %744 = load i32*, i32** %70, align 8
  %745 = load i32, i32* %73, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i32, i32* %744, i64 %746
  %748 = load i32, i32* %747, align 4
  %749 = sext i32 %748 to i64
  %750 = load i64, i64* @size, align 8
  %751 = icmp sge i64 %749, %750
  br i1 %751, label %752, label %780

752:                                              ; preds = %721
  %753 = load i32*, i32** %67, align 8
  %754 = load i32, i32* %73, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %753, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  %759 = load i32*, i32** %70, align 8
  %760 = load i32, i32* %73, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds i32, i32* %759, i64 %761
  %763 = load i32, i32* %762, align 4
  %764 = sext i32 %763 to i64
  %765 = load i64, i64* @size, align 8
  %766 = sub nsw i64 %764, %765
  %767 = sub nsw i64 %758, %766
  %768 = trunc i64 %767 to i32
  %769 = load i32*, i32** %67, align 8
  %770 = load i32, i32* %73, align 4
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %769, i64 %771
  store i32 %768, i32* %772, align 4
  %773 = load i64, i64* @size, align 8
  %774 = sub nsw i64 %773, 1
  %775 = trunc i64 %774 to i32
  %776 = load i32*, i32** %70, align 8
  %777 = load i32, i32* %73, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i32, i32* %776, i64 %778
  store i32 %775, i32* %779, align 4
  br label %780

780:                                              ; preds = %752, %721
  br label %781

781:                                              ; preds = %780
  %782 = load i32, i32* %73, align 4
  %783 = add nsw i32 %782, 1
  store i32 %783, i32* %73, align 4
  br label %717

784:                                              ; preds = %717
  %785 = load i32, i32* %50, align 4
  %786 = sext i32 %785 to i64
  %787 = mul i64 %786, 4
  %788 = call noalias i8* @malloc(i64 %787) #6
  store i8* %788, i8** %75, align 8
  %789 = icmp ne i8* %788, null
  br i1 %789, label %793, label %790

790:                                              ; preds = %784
  %791 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %792 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %791, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2316)
  call void @exit(i32 -1) #7
  unreachable

793:                                              ; preds = %784
  %794 = load i8*, i8** %75, align 8
  store i8* %794, i8** %76, align 8
  %795 = load i8*, i8** %76, align 8
  %796 = bitcast i8* %795 to i32*
  store i32* %796, i32** %74, align 8
  %797 = load i32, i32* %50, align 4
  %798 = sext i32 %797 to i64
  %799 = mul i64 %798, 4
  %800 = call noalias i8* @malloc(i64 %799) #6
  store i8* %800, i8** %78, align 8
  %801 = icmp ne i8* %800, null
  br i1 %801, label %805, label %802

802:                                              ; preds = %793
  %803 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %804 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %803, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i64 0, i64 0), i32 2318)
  call void @exit(i32 -1) #7
  unreachable

805:                                              ; preds = %793
  %806 = load i8*, i8** %78, align 8
  store i8* %806, i8** %79, align 8
  %807 = load i8*, i8** %79, align 8
  %808 = bitcast i8* %807 to i32*
  store i32* %808, i32** %77, align 8
  store i32 0, i32* %73, align 4
  br label %809

809:                                              ; preds = %822, %805
  %810 = load i32, i32* %73, align 4
  %811 = load i32, i32* %50, align 4
  %812 = icmp slt i32 %810, %811
  br i1 %812, label %813, label %825

813:                                              ; preds = %809
  %814 = load i32*, i32** %74, align 8
  %815 = load i32, i32* %73, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i32, i32* %814, i64 %816
  store i32 0, i32* %817, align 4
  %818 = load i32*, i32** %77, align 8
  %819 = load i32, i32* %73, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds i32, i32* %818, i64 %820
  store i32 0, i32* %821, align 4
  br label %822

822:                                              ; preds = %813
  %823 = load i32, i32* %73, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %73, align 4
  br label %809

825:                                              ; preds = %809
  %826 = load i32, i32* %7, align 4
  %827 = load %struct.knode*, %struct.knode** %52, align 8
  %828 = load i64, i64* %53, align 8
  %829 = load i32, i32* @order, align 4
  %830 = load i64, i64* @maxheight, align 8
  %831 = load i32, i32* %50, align 4
  %832 = load i64*, i64** %55, align 8
  %833 = load i64*, i64** %58, align 8
  %834 = load i64*, i64** %61, align 8
  %835 = load i64*, i64** %64, align 8
  %836 = load i32*, i32** %67, align 8
  %837 = load i32*, i32** %70, align 8
  %838 = load i32*, i32** %74, align 8
  %839 = load i32*, i32** %77, align 8
  call void @kernel_cpu_2(i32 %826, %struct.knode* %827, i64 %828, i32 %829, i64 %830, i32 %831, i64* %832, i64* %833, i64* %834, i64* %835, i32* %836, i32* %837, i32* %838, i32* %839)
  %840 = load i8*, i8** %10, align 8
  %841 = call %struct._IO_FILE* @fopen(i8* %840, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.86, i64 0, i64 0))
  store %struct._IO_FILE* %841, %struct._IO_FILE** %11, align 8
  %842 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %843 = icmp eq %struct._IO_FILE* %842, null
  br i1 %843, label %844, label %848

844:                                              ; preds = %825
  %845 = load i8*, i8** %10, align 8
  %846 = bitcast i8* %845 to %struct._IO_FILE*
  %847 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.70, i64 0, i64 0), %struct._IO_FILE* %846)
  br label %848

848:                                              ; preds = %844, %825
  %849 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %850 = load i32, i32* %50, align 4
  %851 = load i32, i32* %51, align 4
  %852 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %849, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.91, i64 0, i64 0), i32 %850, i32 %851)
  store i32 0, i32* %73, align 4
  br label %853

853:                                              ; preds = %871, %848
  %854 = load i32, i32* %73, align 4
  %855 = load i32, i32* %50, align 4
  %856 = icmp slt i32 %854, %855
  br i1 %856, label %857, label %874

857:                                              ; preds = %853
  %858 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %859 = load i32, i32* %73, align 4
  %860 = load i32*, i32** %74, align 8
  %861 = load i32, i32* %73, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i32, i32* %860, i64 %862
  %864 = load i32, i32* %863, align 4
  %865 = load i32*, i32** %77, align 8
  %866 = load i32, i32* %73, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  %869 = load i32, i32* %868, align 4
  %870 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %858, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.93, i64 0, i64 0), i32 %859, i32 %864, i32 %869)
  br label %871

871:                                              ; preds = %857
  %872 = load i32, i32* %73, align 4
  %873 = add nsw i32 %872, 1
  store i32 %873, i32* %73, align 4
  br label %853

874:                                              ; preds = %853
  %875 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %876 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %875, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i64 0, i64 0))
  %877 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %878 = call i32 @fclose(%struct._IO_FILE* %877)
  %879 = load i64*, i64** %55, align 8
  %880 = bitcast i64* %879 to i8*
  call void @free(i8* %880) #6
  %881 = load i64*, i64** %58, align 8
  %882 = bitcast i64* %881 to i8*
  call void @free(i8* %882) #6
  %883 = load i64*, i64** %61, align 8
  %884 = bitcast i64* %883 to i8*
  call void @free(i8* %884) #6
  %885 = load i64*, i64** %64, align 8
  %886 = bitcast i64* %885 to i8*
  call void @free(i8* %886) #6
  %887 = load i32*, i32** %67, align 8
  %888 = bitcast i32* %887 to i8*
  call void @free(i8* %888) #6
  %889 = load i32*, i32** %70, align 8
  %890 = bitcast i32* %889 to i8*
  call void @free(i8* %890) #6
  %891 = load i32*, i32** %74, align 8
  %892 = bitcast i32* %891 to i8*
  call void @free(i8* %892) #6
  %893 = load i32*, i32** %77, align 8
  %894 = bitcast i32* %893 to i8*
  call void @free(i8* %894) #6
  br label %896

895:                                              ; preds = %264
  br label %896

896:                                              ; preds = %895, %874, %552, %529, %345, %338, %331, %322, %312, %305, %275
  %897 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0))
  br label %260

898:                                              ; preds = %260
  %899 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  %900 = load i8*, i8** @mem, align 8
  call void @free(i8* %900) #6
  store i32 0, i32* %3, align 4
  br label %901

901:                                              ; preds = %898, %355, %243, %131, %106
  %902 = load i32, i32* %3, align 4
  ret i32 %902
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

declare dso_local i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare dso_local i64 @ftell(%struct._IO_FILE*) #1

declare dso_local void @rewind(%struct._IO_FILE*) #1

declare dso_local i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare dso_local i32 @fclose(%struct._IO_FILE*) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local i32 @__isoc99_scanf(i8*, ...) #1

declare dso_local i32 @getchar() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @isInteger(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %27, %9
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp slt i32 %18, 48
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp sgt i32 %23, 57
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15
  store i32 0, i32* %2, align 4
  br label %31

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %10

30:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25, %8
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @get_time() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %1, i8* null)
  %3 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = mul nsw i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %5, %7
  ret i64 %8
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
