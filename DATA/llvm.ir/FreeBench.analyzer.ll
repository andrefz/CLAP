; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.conf_list_t = type { i8*, i64, i32 }
%struct.def_list_t = type { i8*, i64, i32, i32 }
%struct.hard_raw = type { %struct.hard_raw*, %struct.hard_raw*, i64, i32, i32, i64, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.epoch_t = type { %struct.trans_t*, %struct.trans_t*, i32, i64, i64, i64, i64 }
%struct.trans_t = type { i32, i64, i64, i8* }

@list_len = dso_local global i32 0, align 4
@top_list_len = dso_local global i32 10, align 4
@epoch_length = dso_local global i32 1, align 4
@def_table_size = dso_local global i32 10007, align 4
@list = dso_local global %struct.conf_list_t* null, align 8
@first = dso_local global i32 1, align 4
@def_table = dso_local global %struct.def_list_t** null, align 8
@hard_raw_list = dso_local global %struct.hard_raw* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [71 x i8] c"--- Dependency Analyzer version: %s, Copyleft 1999 Peter Rundberg ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"--- Compiled: %s ---\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"--- Flags: %s ---\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"--- Host: %s ---\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"thishost\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Out of memory...\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"analyzer.conf\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"ERROR: \09Could not find file: %s\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"ERROR: Number of loop iterations is less than epoch length: %d<%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"File %s is empty\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"Num_epochs: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"START:\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"LD:\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"ST:\00", align 1
@.str.24 = private unnamed_addr constant [48 x i8] c"ALERT: \09Name dependecy testing not implemented\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"\0DProcessing %3.2f %%    \00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"END:\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"\0DProcessing 100.00 %%    \0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.29 = private unnamed_addr constant [33 x i8] c"ERROR: \09Wrong format on file %s\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"%d RAW:s for 0x%lx\0A\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"ALERT: \09No such kernel present\0A\00", align 1
@loop_time = common dso_local global i64 0, align 8
@prog_time = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1.33 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.2.34 = private unnamed_addr constant [11 x i8] c"%s %lu %lu\00", align 1
@.str.3.35 = private unnamed_addr constant [27 x i8] c"Time for loop: %lu issues\0A\00", align 1
@.str.4.36 = private unnamed_addr constant [30 x i8] c"Time for program: %lu issues\0A\00", align 1
@.str.5.37 = private unnamed_addr constant [29 x i8] c"Loop is %0.3g %% of program\0A\00", align 1
@.str.6.44 = private unnamed_addr constant [25 x i8] c"OPTIMUM RESTART RESULTS\0A\00", align 1
@.str.7.45 = private unnamed_addr constant [41 x i8] c"Time for speculative loop is %lu issues\0A\00", align 1
@.str.8.46 = private unnamed_addr constant [41 x i8] c"Potential speedup for loop: %0.3g times\0A\00", align 1
@.str.9.47 = private unnamed_addr constant [44 x i8] c"Potential speedup for program: %0.3g times\0A\00", align 1
@.str.10.48 = private unnamed_addr constant [16 x i8] c"optloop: %0.3g\0A\00", align 1
@.str.11.49 = private unnamed_addr constant [16 x i8] c"optprog: %0.3g\0A\00", align 1
@.str.12.52 = private unnamed_addr constant [55 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\0A\00", align 1
@.str.13.53 = private unnamed_addr constant [38 x i8] c"REALISTIC RESTART RESULTS -- %d CPUs\0A\00", align 1
@.str.14.54 = private unnamed_addr constant [20 x i8] c"realloop: %d %0.3g\0A\00", align 1
@.str.15.55 = private unnamed_addr constant [20 x i8] c"realprog: %d %0.3g\0A\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"Help/Manual for Dependency Analyzer\00", align 1
@.str.1.57 = private unnamed_addr constant [79 x i8] c"\0AThis program is written by Peter Rundberg, Chalmers University of Technology\0A\00", align 1
@.str.2.58 = private unnamed_addr constant [74 x i8] c"Questions about this software should be directed to biff@ce.chalmers.se\0A\0A\00", align 1
@.str.3.59 = private unnamed_addr constant [77 x i8] c"To determine the data hazards between loop iterations this program analyzes\0A\00", align 1
@.str.4.60 = private unnamed_addr constant [78 x i8] c"trace data from a run of the program examined. The program also analyzes the\0A\00", align 1
@.str.5.61 = private unnamed_addr constant [77 x i8] c"potential speedup obtainable from running the loop iterations in parallel.\0A\0A\00", align 1
@.str.6.62 = private unnamed_addr constant [68 x i8] c"The program requires a number of settings to be done either on the\0A\00", align 1
@.str.7.63 = private unnamed_addr constant [40 x i8] c"command line or in the settings file.\0A\0A\00", align 1
@.str.8.64 = private unnamed_addr constant [65 x i8] c"Available flags. Many of these can be set in the settings file.\0A\00", align 1
@.str.9.65 = private unnamed_addr constant [79 x i8] c"-c #      : CPU limit. Only effective with 'realistic restart'. 0==unlimited.\0A\00", align 1
@.str.10.66 = private unnamed_addr constant [63 x i8] c"-C #      : CPU limit for run through several configurations.\0A\00", align 1
@.str.11.67 = private unnamed_addr constant [47 x i8] c"-d        : Check for DATA dependencies (RAW)\0A\00", align 1
@.str.12.68 = private unnamed_addr constant [65 x i8] c"-e #      : Epoch length (number of loop iterations per epoch).\0A\00", align 1
@.str.13.69 = private unnamed_addr constant [56 x i8] c"-E        : Use epoch length as total number of epochs\0A\00", align 1
@.str.14.70 = private unnamed_addr constant [55 x i8] c"-f        : Do NOT use forwarding in speedup analysis\0A\00", align 1
@.str.15.71 = private unnamed_addr constant [42 x i8] c"-g #      : Specify Thread start penalty\0A\00", align 1
@.str.16.72 = private unnamed_addr constant [36 x i8] c"-G #      : Specify Commit penalty\0A\00", align 1
@.str.17.73 = private unnamed_addr constant [40 x i8] c"-h        : Show complete help message\0A\00", align 1
@.str.18.74 = private unnamed_addr constant [64 x i8] c"-i #      : Print SpeedUp for 1 - Loop, 2 - Program, 3 - Both.\0A\00", align 1
@.str.19.75 = private unnamed_addr constant [53 x i8] c"-k #      : The test kernel to be used in the test.\0A\00", align 1
@.str.20.76 = private unnamed_addr constant [66 x i8] c"            1 - Optimum restart. 2 - Realistic restart. 3 - Both\0A\00", align 1
@.str.21.77 = private unnamed_addr constant [66 x i8] c"-l #      : Max length of hazard top-list. -- NOT IMPLEMENTED --\0A\00", align 1
@.str.22.78 = private unnamed_addr constant [37 x i8] c"-m        : Analyze instruction mix\0A\00", align 1
@.str.23.79 = private unnamed_addr constant [75 x i8] c"-n        : Check for NAME dependencies (WAR & WAW) -- NOT IMPLEMENTED --\0A\00", align 1
@.str.24.80 = private unnamed_addr constant [42 x i8] c"-o <FILE> : Output graphing data to FILE\0A\00", align 1
@.str.25.81 = private unnamed_addr constant [34 x i8] c"-p #      : Specify load penalty\0A\00", align 1
@.str.26.82 = private unnamed_addr constant [35 x i8] c"-P #      : Specify store penalty\0A\00", align 1
@.str.27.83 = private unnamed_addr constant [57 x i8] c"-q        : Quiet mode (do not print processing status)\0A\00", align 1
@.str.28.84 = private unnamed_addr constant [33 x i8] c"-s        : Do speedup analysis\0A\00", align 1
@.str.29.85 = private unnamed_addr constant [46 x i8] c"-S        : Do speedup analysis, start early\0A\00", align 1
@.str.30.86 = private unnamed_addr constant [53 x i8] c"-t #      : Specify the size of the def_hash_table.\0A\00", align 1
@.str.31.87 = private unnamed_addr constant [61 x i8] c"-x <FILE> : Use other settings file. DEFAULT: analyzer.conf\0A\00", align 1
@.str.32.88 = private unnamed_addr constant [46 x i8] c"-X        : Do not read settings from a file\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pattern = dso_local global [17 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.90, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.91, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3.92, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4.93, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.94, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6.95, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7.96, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8.97, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9.98, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10.99, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11.100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12.101, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14.103, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15.104, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16.105, i32 0, i32 0)], align 16
@.str.89 = private unnamed_addr constant [13 x i8] c"LOAD_PENALTY\00", align 1
@.str.1.90 = private unnamed_addr constant [14 x i8] c"STORE_PENALTY\00", align 1
@.str.2.91 = private unnamed_addr constant [5 x i8] c"DATA\00", align 1
@.str.3.92 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.4.93 = private unnamed_addr constant [6 x i8] c"SPEED\00", align 1
@.str.5.94 = private unnamed_addr constant [12 x i8] c"EARLY_SPEED\00", align 1
@.str.6.95 = private unnamed_addr constant [14 x i8] c"NO_FORWARDING\00", align 1
@.str.7.96 = private unnamed_addr constant [9 x i8] c"INST_MIX\00", align 1
@.str.8.97 = private unnamed_addr constant [6 x i8] c"QUIET\00", align 1
@.str.9.98 = private unnamed_addr constant [13 x i8] c"EPOCH_LENGTH\00", align 1
@.str.10.99 = private unnamed_addr constant [7 x i8] c"KERNEL\00", align 1
@.str.11.100 = private unnamed_addr constant [9 x i8] c"CPULIMIT\00", align 1
@.str.12.101 = private unnamed_addr constant [8 x i8] c"CONFIGS\00", align 1
@.str.13.102 = private unnamed_addr constant [13 x i8] c"SHOW_SPEEDUP\00", align 1
@.str.14.103 = private unnamed_addr constant [11 x i8] c"THREAD_PEN\00", align 1
@.str.15.104 = private unnamed_addr constant [11 x i8] c"COMMIT_PEN\00", align 1
@.str.16.105 = private unnamed_addr constant [27 x i8] c"EPOCH_LENGTH_AS_NUM_EPOCHS\00", align 1
@settings = common dso_local global [17 x i32] zeroinitializer, align 16
@.str.17.110 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.18.111 = private unnamed_addr constant [24 x i8] c"Could not find file %s\0A\00", align 1
@.str.19.112 = private unnamed_addr constant [2 x i8] c" \00", align 1
@hard_raw_mod.hr_empty = internal global i32 1, align 4
@.str.115 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@hard_raw_mod.last = internal global %struct.hard_raw* null, align 8
@conflict_list.next = internal global %struct.conf_list_t* null, align 8

; Function Attrs: noinline nounwind uwtable
define dso_local void @version() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), double 1.000000e+00)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_def_table(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = call noalias i8* @malloc(i64 %6) #5
  %8 = bitcast i8* %7 to %struct.def_list_t**
  store %struct.def_list_t** %8, %struct.def_list_t*** @def_table, align 8
  %9 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %10 = icmp eq %struct.def_list_t** %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %24, %14
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %20, i64 %22
  store %struct.def_list_t* null, %struct.def_list_t** %23, align 8
  br label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %15

27:                                               ; preds = %15
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @error(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @exit(i32 1) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [100 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca %struct.epoch_t*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.trans_t*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca %struct.def_list_t*, align 8
  %45 = alloca %struct.conf_list_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 1, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 1, i32* %28, align 4
  store i32 3, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 3, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i64 0, i64* %36, align 8
  store %struct.epoch_t* null, %struct.epoch_t** %37, align 8
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %42, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %56

52:                                               ; preds = %2
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  %55 = load i8*, i8** %54, align 8
  call void @error(i8* %55)
  br label %56

56:                                               ; preds = %52, %2
  %57 = load i32, i32* %28, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %85, label %59

59:                                               ; preds = %56
  %60 = load i8*, i8** %42, align 8
  %61 = call i32 @parse_settings(i8* %60)
  %62 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 0), align 4
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 1), align 4
  store i32 %63, i32* %27, align 4
  %64 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 2), align 4
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 3), align 4
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 4), align 4
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 5), align 4
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 6), align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 7), align 4
  store i32 %72, i32* %25, align 4
  %73 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 8), align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %21, align 4
  %77 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 9), align 4
  store i32 %77, i32* @epoch_length, align 4
  %78 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 10), align 4
  store i32 %78, i32* %29, align 4
  %79 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 11), align 4
  store i32 %79, i32* %30, align 4
  %80 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 12), align 4
  store i32 %80, i32* %31, align 4
  %81 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 13), align 4
  store i32 %81, i32* %32, align 4
  %82 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 14), align 4
  store i32 %82, i32* %33, align 4
  %83 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 15), align 4
  store i32 %83, i32* %34, align 4
  %84 = load i32, i32* getelementptr inbounds ([17 x i32], [17 x i32]* @settings, i64 0, i64 16), align 4
  store i32 %84, i32* %35, align 4
  br label %85

85:                                               ; preds = %59, %56
  %86 = load i32, i32* @def_table_size, align 4
  call void @init_def_table(i32 %86)
  %87 = load i8**, i8*** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8*, i8** %87, i64 %90
  %92 = load i8*, i8** %91, align 8
  %93 = call %struct._IO_FILE* @fopen(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct._IO_FILE* %93, %struct._IO_FILE** %6, align 8
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %95 = icmp ne %struct._IO_FILE* %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %85
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %98, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %103)
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  %107 = load i8*, i8** %106, align 8
  call void @error(i8* %107)
  br label %108

108:                                              ; preds = %96, %85
  br label %109

109:                                              ; preds = %113, %108
  %110 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %112 = call i8* @fgets(i8* %110, i32 100, %struct._IO_FILE* %111)
  br label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %115 = load i8, i8* %114, align 16
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 69
  br i1 %117, label %109, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %120 = getelementptr inbounds i8, i8* %119, i64 5
  %121 = call i32 @atoi(i8* %120) #7
  store i32 %121, i32* %38, align 4
  %122 = load i32, i32* %38, align 4
  store i32 %122, i32* %39, align 4
  %123 = load i32, i32* %39, align 4
  %124 = load i32, i32* @epoch_length, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = load i32, i32* %38, align 4
  %129 = load i32, i32* @epoch_length, align 4
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i32 %128, i32 %129)
  call void @exit(i32 0) #6
  unreachable

131:                                              ; preds = %118
  %132 = load i32, i32* %35, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32, i32* %38, align 4
  %136 = load i32, i32* @epoch_length, align 4
  %137 = sdiv i32 %135, %136
  store i32 %137, i32* @epoch_length, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i32, i32* %38, align 4
  %140 = load i32, i32* @epoch_length, align 4
  %141 = srem i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i32, i32* %38, align 4
  %145 = load i32, i32* @epoch_length, align 4
  %146 = sdiv i32 %144, %145
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %38, align 4
  br label %152

148:                                              ; preds = %138
  %149 = load i32, i32* %38, align 4
  %150 = load i32, i32* @epoch_length, align 4
  %151 = sdiv i32 %149, %150
  store i32 %151, i32* %38, align 4
  br label %152

152:                                              ; preds = %148, %143
  %153 = load i32, i32* %38, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %152
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = load i8**, i8*** %5, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8*, i8** %157, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %162)
  call void @exit(i32 0) #6
  unreachable

164:                                              ; preds = %152
  %165 = load i32, i32* %38, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %165)
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @rewind(%struct._IO_FILE* %167)
  %168 = load i32, i32* %24, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @speedup_test(%struct._IO_FILE* %171)
  br label %172

172:                                              ; preds = %170, %164
  %173 = load i32, i32* %25, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %177 = call i64 @imix_test(%struct._IO_FILE* %176)
  store i64 %177, i64* %10, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %19, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %22, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %638

187:                                              ; preds = %184, %181, %178
  %188 = load i32, i32* %38, align 4
  %189 = sext i32 %188 to i64
  %190 = mul i64 %189, 56
  %191 = call noalias i8* @malloc(i64 %190) #5
  %192 = bitcast i8* %191 to %struct.epoch_t*
  store %struct.epoch_t* %192, %struct.epoch_t** %37, align 8
  %193 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %194 = icmp ne %struct.epoch_t* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %187
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

198:                                              ; preds = %187
  store i32 0, i32* %18, align 4
  br label %199

199:                                              ; preds = %219, %198
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %38, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %222

203:                                              ; preds = %199
  %204 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %204, i64 %206
  %208 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %207, i32 0, i32 0
  store %struct.trans_t* null, %struct.trans_t** %208, align 8
  %209 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %209, i64 %211
  %213 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %212, i32 0, i32 1
  store %struct.trans_t* null, %struct.trans_t** %213, align 8
  %214 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %215 = load i32, i32* %18, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %214, i64 %216
  %218 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %217, i32 0, i32 2
  store i32 1, i32* %218, align 8
  br label %219

219:                                              ; preds = %203
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %18, align 4
  br label %199

222:                                              ; preds = %199
  %223 = load i64, i64* %10, align 8
  %224 = load i32, i32* %39, align 4
  %225 = sext i32 %224 to i64
  %226 = add i64 %223, %225
  %227 = add i64 %226, 10
  %228 = mul i64 %227, 8
  %229 = call noalias i8* @malloc(i64 %228) #5
  %230 = bitcast i8* %229 to i8**
  store i8** %230, i8*** %8, align 8
  br label %231

231:                                              ; preds = %236, %222
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %233 = call i32 @feof(%struct._IO_FILE* %232) #5
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  br i1 %235, label %236, label %247

236:                                              ; preds = %231
  %237 = call noalias i8* @malloc(i64 50) #5
  store i8* %237, i8** %43, align 8
  %238 = load i8*, i8** %43, align 8
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %240 = call i8* @fgets(i8* %238, i32 50, %struct._IO_FILE* %239)
  %241 = load i8*, i8** %43, align 8
  %242 = load i8**, i8*** %8, align 8
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  %245 = sext i32 %243 to i64
  %246 = getelementptr inbounds i8*, i8** %242, i64 %245
  store i8* %241, i8** %246, align 8
  br label %231

247:                                              ; preds = %231
  store i32 0, i32* %9, align 4
  %248 = load i8**, i8*** %8, align 8
  %249 = load i32, i32* %9, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %9, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8*, i8** %248, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %255 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %253, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %254, i64* %17) #5
  %256 = load i64, i64* %17, align 8
  %257 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %258 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %257, i64 0
  %259 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %258, i32 0, i32 3
  store i64 %256, i64* %259, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %260

260:                                              ; preds = %636, %247
  %261 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %262 = call i32 @strcmp(i8* %261, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #7
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %610, label %264

264:                                              ; preds = %260
  %265 = load i32, i32* %11, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %11, align 4
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %14, align 4
  %269 = load i32, i32* %14, align 4
  %270 = load i32, i32* @epoch_length, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %304

272:                                              ; preds = %264
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %273 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %274 = load i64, i64* %16, align 8
  %275 = call i32 (i8*, i8*, ...) @sprintf(i8* %273, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i64 %274) #5
  %276 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %277 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i64* %17) #5
  %278 = load i64, i64* %36, align 8
  %279 = load i64, i64* %17, align 8
  %280 = add i64 %279, %278
  store i64 %280, i64* %17, align 8
  %281 = load i64, i64* %17, align 8
  %282 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %283 = load i32, i32* %11, align 4
  %284 = load i32, i32* @epoch_length, align 4
  %285 = sdiv i32 %283, %284
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %282, i64 %286
  %288 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %287, i32 0, i32 3
  store i64 %281, i64* %288, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* @epoch_length, align 4
  %291 = sdiv i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %303

293:                                              ; preds = %272
  %294 = load i64, i64* %17, align 8
  %295 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* @epoch_length, align 4
  %298 = sdiv i32 %296, %297
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %295, i64 %300
  %302 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %301, i32 0, i32 4
  store i64 %294, i64* %302, align 8
  br label %303

303:                                              ; preds = %293, %272
  br label %304

304:                                              ; preds = %303, %264
  br label %305

305:                                              ; preds = %606, %304
  %306 = load i8**, i8*** %8, align 8
  %307 = load i32, i32* %9, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %9, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i8*, i8** %306, i64 %309
  %311 = load i8*, i8** %310, align 8
  %312 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %313 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %311, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* %312, i64* %16, i64* %17) #5
  %314 = load i64, i64* %36, align 8
  %315 = load i64, i64* %17, align 8
  %316 = add i64 %315, %314
  store i64 %316, i64* %17, align 8
  %317 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %318 = call i32 @strcmp(i8* %317, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0)) #7
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %400, label %320

320:                                              ; preds = %305
  %321 = load i32, i32* %26, align 4
  %322 = sext i32 %321 to i64
  %323 = load i64, i64* %36, align 8
  %324 = add i64 %323, %322
  store i64 %324, i64* %36, align 8
  store i32 1, i32* %41, align 4
  %325 = call noalias i8* @malloc(i64 32) #5
  %326 = bitcast i8* %325 to %struct.trans_t*
  store %struct.trans_t* %326, %struct.trans_t** %40, align 8
  %327 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %328 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %327, i32 0, i32 0
  store i32 1, i32* %328, align 8
  %329 = load i64, i64* %16, align 8
  %330 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %331 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %330, i32 0, i32 1
  store i64 %329, i64* %331, align 8
  %332 = load i64, i64* %17, align 8
  %333 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %334 = load i32, i32* %11, align 4
  %335 = load i32, i32* @epoch_length, align 4
  %336 = sdiv i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %333, i64 %337
  %339 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %338, i32 0, i32 3
  %340 = load i64, i64* %339, align 8
  %341 = sub i64 %332, %340
  %342 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %343 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %342, i32 0, i32 2
  store i64 %341, i64* %343, align 8
  %344 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %345 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %344, i32 0, i32 3
  store i8* null, i8** %345, align 8
  %346 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %347 = load i32, i32* %11, align 4
  %348 = load i32, i32* @epoch_length, align 4
  %349 = sdiv i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %346, i64 %350
  %352 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 8
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %379

355:                                              ; preds = %320
  %356 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %357 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %358 = load i32, i32* %11, align 4
  %359 = load i32, i32* @epoch_length, align 4
  %360 = sdiv i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %357, i64 %361
  %363 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %362, i32 0, i32 0
  store %struct.trans_t* %356, %struct.trans_t** %363, align 8
  %364 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %365 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* @epoch_length, align 4
  %368 = sdiv i32 %366, %367
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %365, i64 %369
  %371 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %370, i32 0, i32 1
  store %struct.trans_t* %364, %struct.trans_t** %371, align 8
  %372 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %373 = load i32, i32* %11, align 4
  %374 = load i32, i32* @epoch_length, align 4
  %375 = sdiv i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %372, i64 %376
  %378 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %377, i32 0, i32 2
  store i32 0, i32* %378, align 8
  br label %399

379:                                              ; preds = %320
  %380 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %381 = bitcast %struct.trans_t* %380 to i8*
  %382 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %383 = load i32, i32* %11, align 4
  %384 = load i32, i32* @epoch_length, align 4
  %385 = sdiv i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %382, i64 %386
  %388 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %387, i32 0, i32 1
  %389 = load %struct.trans_t*, %struct.trans_t** %388, align 8
  %390 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %389, i32 0, i32 3
  store i8* %381, i8** %390, align 8
  %391 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %392 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %393 = load i32, i32* %11, align 4
  %394 = load i32, i32* @epoch_length, align 4
  %395 = sdiv i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %392, i64 %396
  %398 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %397, i32 0, i32 1
  store %struct.trans_t* %391, %struct.trans_t** %398, align 8
  br label %399

399:                                              ; preds = %379, %355
  br label %491

400:                                              ; preds = %305
  %401 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %402 = call i32 @strcmp(i8* %401, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #7
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %489, label %404

404:                                              ; preds = %400
  %405 = load i32, i32* %27, align 4
  %406 = sext i32 %405 to i64
  %407 = load i64, i64* %36, align 8
  %408 = add i64 %407, %406
  store i64 %408, i64* %36, align 8
  store i32 2, i32* %41, align 4
  %409 = call noalias i8* @malloc(i64 32) #5
  %410 = bitcast i8* %409 to %struct.trans_t*
  store %struct.trans_t* %410, %struct.trans_t** %40, align 8
  %411 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %412 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %411, i32 0, i32 0
  store i32 2, i32* %412, align 8
  %413 = load i64, i64* %16, align 8
  %414 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %415 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %414, i32 0, i32 1
  store i64 %413, i64* %415, align 8
  %416 = load i64, i64* %17, align 8
  %417 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %418 = load i32, i32* %11, align 4
  %419 = load i32, i32* @epoch_length, align 4
  %420 = sdiv i32 %418, %419
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %417, i64 %421
  %423 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %422, i32 0, i32 3
  %424 = load i64, i64* %423, align 8
  %425 = sub i64 %416, %424
  %426 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %427 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %426, i32 0, i32 2
  store i64 %425, i64* %427, align 8
  %428 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %429 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %428, i32 0, i32 3
  store i8* null, i8** %429, align 8
  %430 = load i64, i64* %16, align 8
  %431 = load i32, i32* %11, align 4
  %432 = load i32, i32* @epoch_length, align 4
  %433 = sdiv i32 %431, %432
  %434 = load i32, i32* %12, align 4
  call void @def_list_mod(i64 %430, i32 %433, i32 %434)
  %435 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %436 = load i32, i32* %11, align 4
  %437 = load i32, i32* @epoch_length, align 4
  %438 = sdiv i32 %436, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %435, i64 %439
  %441 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %468

444:                                              ; preds = %404
  %445 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %446 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %447 = load i32, i32* %11, align 4
  %448 = load i32, i32* @epoch_length, align 4
  %449 = sdiv i32 %447, %448
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %446, i64 %450
  %452 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %451, i32 0, i32 0
  store %struct.trans_t* %445, %struct.trans_t** %452, align 8
  %453 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %454 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %455 = load i32, i32* %11, align 4
  %456 = load i32, i32* @epoch_length, align 4
  %457 = sdiv i32 %455, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %454, i64 %458
  %460 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %459, i32 0, i32 1
  store %struct.trans_t* %453, %struct.trans_t** %460, align 8
  %461 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %462 = load i32, i32* %11, align 4
  %463 = load i32, i32* @epoch_length, align 4
  %464 = sdiv i32 %462, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %461, i64 %465
  %467 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %466, i32 0, i32 2
  store i32 0, i32* %467, align 8
  br label %488

468:                                              ; preds = %404
  %469 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %470 = bitcast %struct.trans_t* %469 to i8*
  %471 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %472 = load i32, i32* %11, align 4
  %473 = load i32, i32* @epoch_length, align 4
  %474 = sdiv i32 %472, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %471, i64 %475
  %477 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %476, i32 0, i32 1
  %478 = load %struct.trans_t*, %struct.trans_t** %477, align 8
  %479 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %478, i32 0, i32 3
  store i8* %470, i8** %479, align 8
  %480 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %481 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %482 = load i32, i32* %11, align 4
  %483 = load i32, i32* @epoch_length, align 4
  %484 = sdiv i32 %482, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %481, i64 %485
  %487 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %486, i32 0, i32 1
  store %struct.trans_t* %480, %struct.trans_t** %487, align 8
  br label %488

488:                                              ; preds = %468, %444
  br label %490

489:                                              ; preds = %400
  br label %609

490:                                              ; preds = %488
  br label %491

491:                                              ; preds = %490, %399
  %492 = load i32, i32* %19, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load i32, i32* %22, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %583

497:                                              ; preds = %494, %491
  %498 = load i32, i32* %41, align 4
  %499 = icmp eq i32 %498, 1
  br i1 %499, label %500, label %581

500:                                              ; preds = %497
  store i32 0, i32* %18, align 4
  br label %501

501:                                              ; preds = %577, %500
  %502 = load i32, i32* %18, align 4
  %503 = load i32, i32* %11, align 4
  %504 = load i32, i32* @epoch_length, align 4
  %505 = sdiv i32 %503, %504
  %506 = icmp slt i32 %502, %505
  br i1 %506, label %507, label %580

507:                                              ; preds = %501
  %508 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %509 = load i32, i32* %18, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %508, i64 %510
  %512 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %511, i32 0, i32 0
  %513 = load %struct.trans_t*, %struct.trans_t** %512, align 8
  store %struct.trans_t* %513, %struct.trans_t** %40, align 8
  store i32 -1, i32* %13, align 4
  br label %514

514:                                              ; preds = %571, %507
  %515 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %516 = icmp ne %struct.trans_t* %515, null
  br i1 %516, label %517, label %576

517:                                              ; preds = %514
  %518 = load i32, i32* %13, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %13, align 4
  %520 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %521 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = icmp eq i32 %522, 2
  br i1 %523, label %524, label %571

524:                                              ; preds = %517
  %525 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %526 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %525, i32 0, i32 1
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* %16, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %571

530:                                              ; preds = %524
  store %struct.def_list_t* null, %struct.def_list_t** %44, align 8
  %531 = load i64, i64* %16, align 8
  %532 = call %struct.def_list_t* @def_list_lookup(i64 %531)
  store %struct.def_list_t* %532, %struct.def_list_t** %44, align 8
  %533 = load %struct.def_list_t*, %struct.def_list_t** %44, align 8
  %534 = icmp ne %struct.def_list_t* %533, null
  br i1 %534, label %535, label %570

535:                                              ; preds = %530
  %536 = load %struct.def_list_t*, %struct.def_list_t** %44, align 8
  %537 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %536, i32 0, i32 2
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* %18, align 4
  %540 = icmp eq i32 %538, %539
  br i1 %540, label %541, label %569

541:                                              ; preds = %535
  %542 = load %struct.def_list_t*, %struct.def_list_t** %44, align 8
  %543 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* %13, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %569

547:                                              ; preds = %541
  %548 = load i64, i64* %16, align 8
  call void @conflict_list(i64 %548)
  %549 = load i64, i64* %16, align 8
  %550 = load i32, i32* %18, align 4
  %551 = load i32, i32* %13, align 4
  %552 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %553 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %552, i32 0, i32 2
  %554 = load i64, i64* %553, align 8
  %555 = load i32, i32* %11, align 4
  %556 = load i32, i32* @epoch_length, align 4
  %557 = sdiv i32 %555, %556
  %558 = load i32, i32* %12, align 4
  %559 = load i64, i64* %17, align 8
  %560 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %561 = load i32, i32* %11, align 4
  %562 = load i32, i32* @epoch_length, align 4
  %563 = sdiv i32 %561, %562
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %560, i64 %564
  %566 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %565, i32 0, i32 3
  %567 = load i64, i64* %566, align 8
  %568 = sub i64 %559, %567
  call void @hard_raw_mod(i64 %549, i32 %550, i32 %551, i64 %554, i32 %557, i32 %558, i64 %568)
  br label %569

569:                                              ; preds = %547, %541, %535
  br label %570

570:                                              ; preds = %569, %530
  br label %571

571:                                              ; preds = %570, %524, %517
  %572 = load %struct.trans_t*, %struct.trans_t** %40, align 8
  %573 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %572, i32 0, i32 3
  %574 = load i8*, i8** %573, align 8
  %575 = bitcast i8* %574 to %struct.trans_t*
  store %struct.trans_t* %575, %struct.trans_t** %40, align 8
  br label %514

576:                                              ; preds = %514
  br label %577

577:                                              ; preds = %576
  %578 = load i32, i32* %18, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %18, align 4
  br label %501

580:                                              ; preds = %501
  br label %582

581:                                              ; preds = %497
  br label %582

582:                                              ; preds = %581, %580
  br label %583

583:                                              ; preds = %582, %494
  %584 = load i32, i32* %20, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %589

586:                                              ; preds = %583
  %587 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %588 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %587, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.24, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

589:                                              ; preds = %583
  %590 = load i32, i32* %21, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %606

592:                                              ; preds = %589
  %593 = load i32, i32* %11, align 4
  %594 = srem i32 %593, 10
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %606, label %596

596:                                              ; preds = %592
  %597 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %598 = load i32, i32* %11, align 4
  %599 = sitofp i32 %598 to float
  %600 = fmul float 1.000000e+02, %599
  %601 = load i32, i32* %39, align 4
  %602 = sitofp i32 %601 to float
  %603 = fdiv float %600, %602
  %604 = fpext float %603 to double
  %605 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %597, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), double %604)
  br label %606

606:                                              ; preds = %596, %592, %589
  %607 = load i32, i32* %12, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %12, align 4
  br label %305

609:                                              ; preds = %489
  br label %636

610:                                              ; preds = %260
  %611 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %612 = call i32 @strcmp(i8* %611, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i64 0, i64 0)) #7
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %621, label %614

614:                                              ; preds = %610
  %615 = load i32, i32* %21, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %620

617:                                              ; preds = %614
  %618 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %619 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %618, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  br label %620

620:                                              ; preds = %617, %614
  br label %637

621:                                              ; preds = %610
  %622 = load i32, i32* %21, align 4
  %623 = icmp ne i32 %622, 0
  br i1 %623, label %624, label %627

624:                                              ; preds = %621
  %625 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %626 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %625, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  br label %627

627:                                              ; preds = %624, %621
  %628 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %629 = load i8**, i8*** %5, align 8
  %630 = load i32, i32* %4, align 4
  %631 = sub nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8*, i8** %629, i64 %632
  %634 = load i8*, i8** %633, align 8
  %635 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %628, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i64 0, i64 0), i8* %634)
  call void @exit(i32 1) #6
  unreachable

636:                                              ; preds = %609
  br label %260

637:                                              ; preds = %620
  br label %638

638:                                              ; preds = %637, %184
  %639 = load i32, i32* %19, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %659

641:                                              ; preds = %638
  %642 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %642, %struct.conf_list_t** %45, align 8
  br label %643

643:                                              ; preds = %646, %641
  %644 = load %struct.conf_list_t*, %struct.conf_list_t** %45, align 8
  %645 = icmp ne %struct.conf_list_t* %644, null
  br i1 %645, label %646, label %658

646:                                              ; preds = %643
  %647 = load %struct.conf_list_t*, %struct.conf_list_t** %45, align 8
  %648 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = load %struct.conf_list_t*, %struct.conf_list_t** %45, align 8
  %651 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %650, i32 0, i32 1
  %652 = load i64, i64* %651, align 8
  %653 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 %649, i64 %652)
  %654 = load %struct.conf_list_t*, %struct.conf_list_t** %45, align 8
  %655 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %654, i32 0, i32 0
  %656 = load i8*, i8** %655, align 8
  %657 = bitcast i8* %656 to %struct.conf_list_t*
  store %struct.conf_list_t* %657, %struct.conf_list_t** %45, align 8
  br label %643

658:                                              ; preds = %643
  br label %659

659:                                              ; preds = %658, %638
  %660 = load i32, i32* %22, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %775

662:                                              ; preds = %659
  %663 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %664 = load i32, i32* %11, align 4
  %665 = load i32, i32* @epoch_length, align 4
  %666 = sdiv i32 %664, %665
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %663, i64 %667
  %669 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %668, i32 0, i32 3
  %670 = load i64, i64* %669, align 8
  %671 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %672 = load i32, i32* %11, align 4
  %673 = load i32, i32* @epoch_length, align 4
  %674 = sdiv i32 %672, %673
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %671, i64 %675
  %677 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %676, i32 0, i32 1
  %678 = load %struct.trans_t*, %struct.trans_t** %677, align 8
  %679 = getelementptr inbounds %struct.trans_t, %struct.trans_t* %678, i32 0, i32 2
  %680 = load i64, i64* %679, align 8
  %681 = add i64 %670, %680
  %682 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %683 = load i32, i32* %11, align 4
  %684 = load i32, i32* @epoch_length, align 4
  %685 = sdiv i32 %683, %684
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %682, i64 %686
  %688 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %687, i32 0, i32 4
  store i64 %681, i64* %688, align 8
  %689 = load i32, i32* %23, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %692

691:                                              ; preds = %662
  call void (...) bitcast (void ()* @find_hard_raws to void (...)*)()
  br label %692

692:                                              ; preds = %691, %662
  %693 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  call void @speedup_test(%struct._IO_FILE* %693)
  %694 = load i32, i32* %29, align 4
  %695 = icmp eq i32 %694, 1
  br i1 %695, label %696, label %703

696:                                              ; preds = %692
  %697 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %698 = load i32, i32* %38, align 4
  %699 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %700 = load i32, i32* %32, align 4
  %701 = load i32, i32* %33, align 4
  %702 = load i32, i32* %34, align 4
  call void @specul_time_o(%struct.epoch_t* %697, i32 %698, %struct._IO_FILE* %699, i32 %700, i32 %701, i32 %702)
  br label %774

703:                                              ; preds = %692
  %704 = load i32, i32* %29, align 4
  %705 = icmp eq i32 %704, 2
  br i1 %705, label %706, label %733

706:                                              ; preds = %703
  %707 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %708 = load i32, i32* %38, align 4
  %709 = load i32, i32* %30, align 4
  %710 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %711 = load i32, i32* %32, align 4
  %712 = load i32, i32* %33, align 4
  %713 = load i32, i32* %34, align 4
  call void @specul_time_r(%struct.epoch_t* %707, i32 %708, i32 %709, %struct._IO_FILE* %710, i32 %711, i32 %712, i32 %713)
  %714 = load i32, i32* %31, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %732

716:                                              ; preds = %706
  store i32 1, i32* %18, align 4
  br label %717

717:                                              ; preds = %721, %716
  %718 = load i32, i32* %18, align 4
  %719 = load i32, i32* %31, align 4
  %720 = icmp sle i32 %718, %719
  br i1 %720, label %721, label %731

721:                                              ; preds = %717
  %722 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %723 = load i32, i32* %38, align 4
  %724 = load i32, i32* %18, align 4
  %725 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %726 = load i32, i32* %32, align 4
  %727 = load i32, i32* %33, align 4
  %728 = load i32, i32* %34, align 4
  call void @specul_time_r(%struct.epoch_t* %722, i32 %723, i32 %724, %struct._IO_FILE* %725, i32 %726, i32 %727, i32 %728)
  %729 = load i32, i32* %18, align 4
  %730 = mul nsw i32 %729, 2
  store i32 %730, i32* %18, align 4
  br label %717

731:                                              ; preds = %717
  br label %732

732:                                              ; preds = %731, %706
  br label %773

733:                                              ; preds = %703
  %734 = load i32, i32* %29, align 4
  %735 = icmp eq i32 %734, 3
  br i1 %735, label %736, label %769

736:                                              ; preds = %733
  %737 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %738 = load i32, i32* %38, align 4
  %739 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %740 = load i32, i32* %32, align 4
  %741 = load i32, i32* %33, align 4
  %742 = load i32, i32* %34, align 4
  call void @specul_time_o(%struct.epoch_t* %737, i32 %738, %struct._IO_FILE* %739, i32 %740, i32 %741, i32 %742)
  %743 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %744 = load i32, i32* %38, align 4
  %745 = load i32, i32* %30, align 4
  %746 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %747 = load i32, i32* %32, align 4
  %748 = load i32, i32* %33, align 4
  %749 = load i32, i32* %34, align 4
  call void @specul_time_r(%struct.epoch_t* %743, i32 %744, i32 %745, %struct._IO_FILE* %746, i32 %747, i32 %748, i32 %749)
  %750 = load i32, i32* %31, align 4
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %768

752:                                              ; preds = %736
  store i32 1, i32* %18, align 4
  br label %753

753:                                              ; preds = %757, %752
  %754 = load i32, i32* %18, align 4
  %755 = load i32, i32* %31, align 4
  %756 = icmp sle i32 %754, %755
  br i1 %756, label %757, label %767

757:                                              ; preds = %753
  %758 = load %struct.epoch_t*, %struct.epoch_t** %37, align 8
  %759 = load i32, i32* %38, align 4
  %760 = load i32, i32* %18, align 4
  %761 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %762 = load i32, i32* %32, align 4
  %763 = load i32, i32* %33, align 4
  %764 = load i32, i32* %34, align 4
  call void @specul_time_r(%struct.epoch_t* %758, i32 %759, i32 %760, %struct._IO_FILE* %761, i32 %762, i32 %763, i32 %764)
  %765 = load i32, i32* %18, align 4
  %766 = mul nsw i32 %765, 2
  store i32 %766, i32* %18, align 4
  br label %753

767:                                              ; preds = %753
  br label %768

768:                                              ; preds = %767, %736
  br label %772

769:                                              ; preds = %733
  %770 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %771 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %770, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

772:                                              ; preds = %768
  br label %773

773:                                              ; preds = %772, %732
  br label %774

774:                                              ; preds = %773, %696
  br label %775

775:                                              ; preds = %774, %659
  ret i32 0
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #4

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local void @rewind(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @speedup_test(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %12, i64* %7)
  br label %14

14:                                               ; preds = %21, %1
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %17 = call i8* @strcpy(i8* %15, i8* %16) #5
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %20 = call i8* @fgets(i8* %18, i32 100, %struct._IO_FILE* %19)
  br label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 69
  br i1 %25, label %14, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.33, i64 0, i64 0), i8* %28, i64* %6, i64* %8) #5
  %30 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %31 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %32 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2.34, i64 0, i64 0), i8* %31, i64* %6, i64* %9) #5
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* @loop_time, align 8
  %36 = load i64, i64* @loop_time, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3.35, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* %9, align 8
  store i64 %38, i64* @prog_time, align 8
  %39 = load i64, i64* @prog_time, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4.36, i64 0, i64 0), i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %41, %42
  %44 = uitofp i64 %43 to double
  %45 = load i64, i64* %9, align 8
  %46 = uitofp i64 %45 to double
  %47 = fdiv double %44, %46
  %48 = fmul double %47, 1.000000e+02
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5.37, i64 0, i64 0), double %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* %50)
  ret void
}

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @imix_test(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* %10)
  %11 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %13 = call i8* @fgets(i8* %11, i32 100, %struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %15 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8* %15, i64* %7)
  br label %17

17:                                               ; preds = %32, %1
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 2
  %19 = load i8, i8* %18, align 2
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 58
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %22, %17
  %26 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = call i8* @strcpy(i8* %26, i8* %27) #5
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %31 = call i8* @fgets(i8* %29, i32 100, %struct._IO_FILE* %30)
  br label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %34 = load i8, i8* %33, align 16
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 69
  br i1 %36, label %17, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %5, i64 0, i64 0
  %40 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1.33, i64 0, i64 0), i8* %39, i64* %6, i64* %8) #5
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @rewind(%struct._IO_FILE* %41)
  %42 = load i64, i64* %9, align 8
  ret i64 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_hard_raws() #0 {
  %1 = alloca %struct.hard_raw*, align 8
  store %struct.hard_raw* null, %struct.hard_raw** %1, align 8
  %2 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %2, %struct.hard_raw** %1, align 8
  br label %3

3:                                                ; preds = %35, %0
  %4 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %5 = icmp ne %struct.hard_raw* %4, null
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %8 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %7, i32 0, i32 8
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %11 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %9, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %6
  %15 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %16 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %15, i32 0, i32 1
  %17 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %18 = icmp ne %struct.hard_raw* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %21 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %20, i32 0, i32 0
  %22 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %23 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %24 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %23, i32 0, i32 1
  %25 = load %struct.hard_raw*, %struct.hard_raw** %24, align 8
  %26 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %25, i32 0, i32 0
  store %struct.hard_raw* %22, %struct.hard_raw** %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %29 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %28, i32 0, i32 0
  %30 = load %struct.hard_raw*, %struct.hard_raw** %29, align 8
  store %struct.hard_raw* %30, %struct.hard_raw** %1, align 8
  br label %35

31:                                               ; preds = %6
  %32 = load %struct.hard_raw*, %struct.hard_raw** %1, align 8
  %33 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %32, i32 0, i32 0
  %34 = load %struct.hard_raw*, %struct.hard_raw** %33, align 8
  store %struct.hard_raw* %34, %struct.hard_raw** %1, align 8
  br label %35

35:                                               ; preds = %31, %27
  br label %3

36:                                               ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_o(%struct.epoch_t* %0, i32 %1, %struct._IO_FILE* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.epoch_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %0, %struct.epoch_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct._IO_FILE* %2, %struct._IO_FILE** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i64 0, i64* %15, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %45, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %17
  %22 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %22, i64 %24
  %26 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %28, i64 %30
  %32 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %27, %33
  %35 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %38, i32 0, i32 5
  store i64 %34, i64* %39, align 8
  %40 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %40, i64 %42
  %44 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %43, i32 0, i32 6
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %21
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %17

48:                                               ; preds = %17
  store %struct.hard_raw* null, %struct.hard_raw** %16, align 8
  %49 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %49, %struct.hard_raw** %16, align 8
  br label %50

50:                                               ; preds = %97, %48
  %51 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %52 = icmp ne %struct.hard_raw* %51, null
  br i1 %52, label %53, label %101

53:                                               ; preds = %50
  %54 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %55 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %59 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %57, i64 %61
  %63 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %62, i32 0, i32 6
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %56, %64
  %66 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %67 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %68 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %66, i64 %70
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp ugt i64 %65, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %53
  %76 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %77 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %80 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %81 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %79, i64 %83
  %85 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = add i64 %78, %86
  %88 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %89 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %90 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %88, i64 %92
  %94 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %93, i32 0, i32 6
  store i64 %87, i64* %94, align 8
  %95 = load i64, i64* %15, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %15, align 8
  br label %97

97:                                               ; preds = %75, %53
  %98 = load %struct.hard_raw*, %struct.hard_raw** %16, align 8
  %99 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %98, i32 0, i32 0
  %100 = load %struct.hard_raw*, %struct.hard_raw** %99, align 8
  store %struct.hard_raw* %100, %struct.hard_raw** %16, align 8
  br label %50

101:                                              ; preds = %50
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %125, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %107, i64 %109
  %111 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %113, i64 %115
  %117 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %116, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %112, %118
  %120 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %120, i64 %122
  %124 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %123, i32 0, i32 5
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %106
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %102

128:                                              ; preds = %102
  %129 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %130 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %129, i64 0
  %131 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %14, align 8
  store i32 0, i32* %13, align 4
  br label %133

133:                                              ; preds = %154, %128
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %157

137:                                              ; preds = %133
  %138 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %138, i64 %140
  %142 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = icmp ugt i64 %143, %144
  br i1 %145, label %146, label %153

146:                                              ; preds = %137
  %147 = load %struct.epoch_t*, %struct.epoch_t** %7, align 8
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %147, i64 %149
  %151 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  store i64 %152, i64* %14, align 8
  br label %153

153:                                              ; preds = %146, %137
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %133

157:                                              ; preds = %133
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.44, i64 0, i64 0))
  %159 = load i64, i64* %15, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %159, %161
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %162, %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %12, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = add i64 %165, %169
  %171 = load i64, i64* %14, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %14, align 8
  %173 = load i64, i64* %14, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7.45, i64 0, i64 0), i64 %173)
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %180, label %177

177:                                              ; preds = %157
  %178 = load i32, i32* %10, align 4
  %179 = icmp eq i32 %178, 3
  br i1 %179, label %180, label %187

180:                                              ; preds = %177, %157
  %181 = load i64, i64* @loop_time, align 8
  %182 = uitofp i64 %181 to double
  %183 = load i64, i64* %14, align 8
  %184 = uitofp i64 %183 to double
  %185 = fdiv double %182, %184
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8.46, i64 0, i64 0), double %185)
  br label %187

187:                                              ; preds = %180, %177
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 2
  br i1 %189, label %193, label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %191, 3
  br i1 %192, label %193, label %204

193:                                              ; preds = %190, %187
  %194 = load i64, i64* @prog_time, align 8
  %195 = uitofp i64 %194 to double
  %196 = load i64, i64* %14, align 8
  %197 = load i64, i64* @prog_time, align 8
  %198 = add i64 %196, %197
  %199 = load i64, i64* @loop_time, align 8
  %200 = sub i64 %198, %199
  %201 = uitofp i64 %200 to double
  %202 = fdiv double %195, %201
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9.47, i64 0, i64 0), double %202)
  br label %204

204:                                              ; preds = %193, %190
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %206 = icmp ne %struct._IO_FILE* %205, null
  br i1 %206, label %207, label %240

207:                                              ; preds = %204
  %208 = load i32, i32* %10, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 3
  br i1 %212, label %213, label %221

213:                                              ; preds = %210, %207
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %215 = load i64, i64* @loop_time, align 8
  %216 = uitofp i64 %215 to double
  %217 = load i64, i64* %14, align 8
  %218 = uitofp i64 %217 to double
  %219 = fdiv double %216, %218
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10.48, i64 0, i64 0), double %219)
  br label %221

221:                                              ; preds = %213, %210
  %222 = load i32, i32* %10, align 4
  %223 = icmp eq i32 %222, 2
  br i1 %223, label %227, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %10, align 4
  %226 = icmp eq i32 %225, 3
  br i1 %226, label %227, label %239

227:                                              ; preds = %224, %221
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %229 = load i64, i64* @prog_time, align 8
  %230 = uitofp i64 %229 to double
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* @prog_time, align 8
  %233 = add i64 %231, %232
  %234 = load i64, i64* @loop_time, align 8
  %235 = sub i64 %233, %234
  %236 = uitofp i64 %235 to double
  %237 = fdiv double %230, %236
  %238 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11.49, i64 0, i64 0), double %237)
  br label %239

239:                                              ; preds = %227, %224
  br label %240

240:                                              ; preds = %239, %204
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @specul_time_r(%struct.epoch_t* %0, i32 %1, i32 %2, %struct._IO_FILE* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.epoch_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IO_FILE*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.hard_raw*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.hard_raw*, align 8
  store %struct.epoch_t* %0, %struct.epoch_t** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct._IO_FILE* %3, %struct._IO_FILE** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %172

24:                                               ; preds = %7
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12.52, i64 0, i64 0))
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %54, %24
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %26
  %31 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %31, i64 %33
  %35 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %37, i64 %39
  %41 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %36, %42
  %44 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %44, i64 %46
  %48 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %47, i32 0, i32 5
  store i64 %43, i64* %48, align 8
  %49 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %49, i64 %51
  %53 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %30
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %26

57:                                               ; preds = %26
  store %struct.hard_raw* null, %struct.hard_raw** %18, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %58, %struct.hard_raw** %18, align 8
  br label %59

59:                                               ; preds = %111, %57
  %60 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %61 = icmp ne %struct.hard_raw* %60, null
  br i1 %61, label %62, label %115

62:                                               ; preds = %59
  %63 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %64 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %67 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %68 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %66, i64 %70
  %72 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %65, %73
  %75 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %76 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %77 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %75, i64 %79
  %81 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %74, %82
  br i1 %83, label %84, label %111

84:                                               ; preds = %62
  %85 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %86 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %87 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %85, i64 %89
  %91 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %94 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %95 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %93, i64 %97
  %99 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %92, %100
  %102 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %103 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %104 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %102, i64 %106
  %108 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %107, i32 0, i32 6
  store i64 %101, i64* %108, align 8
  %109 = load i64, i64* %17, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %17, align 8
  br label %111

111:                                              ; preds = %84, %62
  %112 = load %struct.hard_raw*, %struct.hard_raw** %18, align 8
  %113 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %112, i32 0, i32 0
  %114 = load %struct.hard_raw*, %struct.hard_raw** %113, align 8
  store %struct.hard_raw* %114, %struct.hard_raw** %18, align 8
  br label %59

115:                                              ; preds = %59
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %139, %115
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %116
  %121 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %121, i64 %123
  %125 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %127, i64 %129
  %131 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %130, i32 0, i32 6
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %126, %132
  %134 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %134, i64 %136
  %138 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %137, i32 0, i32 5
  store i64 %133, i64* %138, align 8
  br label %139

139:                                              ; preds = %120
  %140 = load i32, i32* %15, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %15, align 4
  br label %116

142:                                              ; preds = %116
  %143 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %144 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %143, i64 0
  %145 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %168, %142
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %171

151:                                              ; preds = %147
  %152 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %152, i64 %154
  %156 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %16, align 8
  %159 = icmp ugt i64 %157, %158
  br i1 %159, label %160, label %167

160:                                              ; preds = %151
  %161 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %162 = load i32, i32* %15, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %161, i64 %163
  %165 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %16, align 8
  br label %167

167:                                              ; preds = %160, %151
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %147

171:                                              ; preds = %147
  br label %394

172:                                              ; preds = %7
  store i64 0, i64* %20, align 8
  %173 = load i32, i32* %10, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13.53, i64 0, i64 0), i32 %173)
  store i32 0, i32* %15, align 4
  br label %175

175:                                              ; preds = %203, %172
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %206

179:                                              ; preds = %175
  %180 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %180, i64 %182
  %184 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %187 = load i32, i32* %15, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %186, i64 %188
  %190 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = sub i64 %185, %191
  %193 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %194 = load i32, i32* %15, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %193, i64 %195
  %197 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %196, i32 0, i32 5
  store i64 %192, i64* %197, align 8
  %198 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %198, i64 %200
  %202 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %201, i32 0, i32 6
  store i64 0, i64* %202, align 8
  br label %203

203:                                              ; preds = %179
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %15, align 4
  br label %175

206:                                              ; preds = %175
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %273, %206
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %277

212:                                              ; preds = %208
  store i64 0, i64* %20, align 8
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %10, align 4
  %215 = sub nsw i32 %213, %214
  store i32 %215, i32* %19, align 4
  br label %216

216:                                              ; preds = %251, %212
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %254

220:                                              ; preds = %216
  %221 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %221, i64 %223
  %225 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %224, i32 0, i32 5
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %228 = load i32, i32* %19, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %227, i64 %229
  %231 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %230, i32 0, i32 6
  %232 = load i64, i64* %231, align 8
  %233 = add i64 %226, %232
  %234 = load i64, i64* %20, align 8
  %235 = icmp ugt i64 %233, %234
  br i1 %235, label %236, label %250

236:                                              ; preds = %220
  %237 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %237, i64 %239
  %241 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %244 = load i32, i32* %19, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %243, i64 %245
  %247 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %246, i32 0, i32 6
  %248 = load i64, i64* %247, align 8
  %249 = add i64 %242, %248
  store i64 %249, i64* %20, align 8
  br label %250

250:                                              ; preds = %236, %220
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %19, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %19, align 4
  br label %216

254:                                              ; preds = %216
  %255 = load i32, i32* %15, align 4
  store i32 %255, i32* %19, align 4
  br label %256

256:                                              ; preds = %269, %254
  %257 = load i32, i32* %19, align 4
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %15, align 4
  %260 = add nsw i32 %258, %259
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %256
  %263 = load i64, i64* %20, align 8
  %264 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %265 = load i32, i32* %19, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %264, i64 %266
  %268 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %267, i32 0, i32 6
  store i64 %263, i64* %268, align 8
  br label %269

269:                                              ; preds = %262
  %270 = load i32, i32* %19, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %19, align 4
  br label %256

272:                                              ; preds = %256
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %10, align 4
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %15, align 4
  br label %208

277:                                              ; preds = %208
  store %struct.hard_raw* null, %struct.hard_raw** %21, align 8
  %278 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %278, %struct.hard_raw** %21, align 8
  br label %279

279:                                              ; preds = %333, %277
  %280 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %281 = icmp ne %struct.hard_raw* %280, null
  br i1 %281, label %282, label %337

282:                                              ; preds = %279
  %283 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %284 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %287 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %288 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %286, i64 %290
  %292 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %291, i32 0, i32 6
  %293 = load i64, i64* %292, align 8
  %294 = add i64 %285, %293
  %295 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %296 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %297 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %295, i64 %299
  %301 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %300, i32 0, i32 6
  %302 = load i64, i64* %301, align 8
  %303 = icmp ugt i64 %294, %302
  br i1 %303, label %304, label %333

304:                                              ; preds = %282
  %305 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %306 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %307 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %305, i64 %309
  %311 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %310, i32 0, i32 5
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %314 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %315 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 8
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %313, i64 %317
  %319 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %318, i32 0, i32 6
  %320 = load i64, i64* %319, align 8
  %321 = add i64 %312, %320
  %322 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %323 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %324 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %322, i64 %326
  %328 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = add i64 %329, %321
  store i64 %330, i64* %328, align 8
  %331 = load i64, i64* %17, align 8
  %332 = add i64 %331, 1
  store i64 %332, i64* %17, align 8
  br label %333

333:                                              ; preds = %304, %282
  %334 = load %struct.hard_raw*, %struct.hard_raw** %21, align 8
  %335 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %334, i32 0, i32 0
  %336 = load %struct.hard_raw*, %struct.hard_raw** %335, align 8
  store %struct.hard_raw* %336, %struct.hard_raw** %21, align 8
  br label %279

337:                                              ; preds = %279
  store i32 0, i32* %15, align 4
  br label %338

338:                                              ; preds = %361, %337
  %339 = load i32, i32* %15, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %364

342:                                              ; preds = %338
  %343 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %344 = load i32, i32* %15, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %343, i64 %345
  %347 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %350 = load i32, i32* %15, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %349, i64 %351
  %353 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %352, i32 0, i32 6
  %354 = load i64, i64* %353, align 8
  %355 = add i64 %348, %354
  %356 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %357 = load i32, i32* %15, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %356, i64 %358
  %360 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %359, i32 0, i32 5
  store i64 %355, i64* %360, align 8
  br label %361

361:                                              ; preds = %342
  %362 = load i32, i32* %15, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %15, align 4
  br label %338

364:                                              ; preds = %338
  %365 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %366 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %365, i64 0
  %367 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %366, i32 0, i32 5
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %369

369:                                              ; preds = %390, %364
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %393

373:                                              ; preds = %369
  %374 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %374, i64 %376
  %378 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %377, i32 0, i32 5
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %16, align 8
  %381 = icmp ugt i64 %379, %380
  br i1 %381, label %382, label %389

382:                                              ; preds = %373
  %383 = load %struct.epoch_t*, %struct.epoch_t** %8, align 8
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %383, i64 %385
  %387 = getelementptr inbounds %struct.epoch_t, %struct.epoch_t* %386, i32 0, i32 5
  %388 = load i64, i64* %387, align 8
  store i64 %388, i64* %16, align 8
  br label %389

389:                                              ; preds = %382, %373
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %15, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %15, align 4
  br label %369

393:                                              ; preds = %369
  br label %394

394:                                              ; preds = %393, %171
  %395 = load i64, i64* %17, align 8
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = add i64 %395, %397
  %399 = load i32, i32* %13, align 4
  %400 = sext i32 %399 to i64
  %401 = mul i64 %398, %400
  %402 = load i32, i32* %9, align 4
  %403 = load i32, i32* %14, align 4
  %404 = mul nsw i32 %402, %403
  %405 = sext i32 %404 to i64
  %406 = add i64 %401, %405
  %407 = load i64, i64* %16, align 8
  %408 = add i64 %407, %406
  store i64 %408, i64* %16, align 8
  %409 = load i64, i64* %16, align 8
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7.45, i64 0, i64 0), i64 %409)
  %411 = load i32, i32* %12, align 4
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %416, label %413

413:                                              ; preds = %394
  %414 = load i32, i32* %12, align 4
  %415 = icmp eq i32 %414, 3
  br i1 %415, label %416, label %423

416:                                              ; preds = %413, %394
  %417 = load i64, i64* @loop_time, align 8
  %418 = uitofp i64 %417 to double
  %419 = load i64, i64* %16, align 8
  %420 = uitofp i64 %419 to double
  %421 = fdiv double %418, %420
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8.46, i64 0, i64 0), double %421)
  br label %423

423:                                              ; preds = %416, %413
  %424 = load i32, i32* %12, align 4
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %429, label %426

426:                                              ; preds = %423
  %427 = load i32, i32* %12, align 4
  %428 = icmp eq i32 %427, 3
  br i1 %428, label %429, label %440

429:                                              ; preds = %426, %423
  %430 = load i64, i64* @prog_time, align 8
  %431 = uitofp i64 %430 to double
  %432 = load i64, i64* %16, align 8
  %433 = load i64, i64* @prog_time, align 8
  %434 = add i64 %432, %433
  %435 = load i64, i64* @loop_time, align 8
  %436 = sub i64 %434, %435
  %437 = uitofp i64 %436 to double
  %438 = fdiv double %431, %437
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9.47, i64 0, i64 0), double %438)
  br label %440

440:                                              ; preds = %429, %426
  %441 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %442 = icmp ne %struct._IO_FILE* %441, null
  br i1 %442, label %443, label %478

443:                                              ; preds = %440
  %444 = load i32, i32* %12, align 4
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %449, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %12, align 4
  %448 = icmp eq i32 %447, 3
  br i1 %448, label %449, label %458

449:                                              ; preds = %446, %443
  %450 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %451 = load i32, i32* %10, align 4
  %452 = load i64, i64* @loop_time, align 8
  %453 = uitofp i64 %452 to double
  %454 = load i64, i64* %16, align 8
  %455 = uitofp i64 %454 to double
  %456 = fdiv double %453, %455
  %457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %450, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14.54, i64 0, i64 0), i32 %451, double %456)
  br label %458

458:                                              ; preds = %449, %446
  %459 = load i32, i32* %12, align 4
  %460 = icmp eq i32 %459, 2
  br i1 %460, label %464, label %461

461:                                              ; preds = %458
  %462 = load i32, i32* %12, align 4
  %463 = icmp eq i32 %462, 3
  br i1 %463, label %464, label %477

464:                                              ; preds = %461, %458
  %465 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %466 = load i32, i32* %10, align 4
  %467 = load i64, i64* @prog_time, align 8
  %468 = uitofp i64 %467 to double
  %469 = load i64, i64* %16, align 8
  %470 = load i64, i64* @prog_time, align 8
  %471 = add i64 %469, %470
  %472 = load i64, i64* @loop_time, align 8
  %473 = sub i64 %471, %472
  %474 = uitofp i64 %473 to double
  %475 = fdiv double %468, %474
  %476 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %465, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15.55, i64 0, i64 0), i32 %466, double %475)
  br label %477

477:                                              ; preds = %464, %461
  br label %478

478:                                              ; preds = %477, %440
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @show_help(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.56, i64 0, i64 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1.57, i64 0, i64 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2.58, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3.59, i64 0, i64 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4.60, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5.61, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6.62, i64 0, i64 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7.63, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8.64, i64 0, i64 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.9.65, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10.66, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11.67, i64 0, i64 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12.68, i64 0, i64 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13.69, i64 0, i64 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14.70, i64 0, i64 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15.71, i64 0, i64 0))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16.72, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17.73, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18.74, i64 0, i64 0))
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.19.75, i64 0, i64 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.20.76, i64 0, i64 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.21.77, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22.78, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23.79, i64 0, i64 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24.80, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25.81, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26.82, i64 0, i64 0))
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27.83, i64 0, i64 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28.84, i64 0, i64 0))
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.29.85, i64 0, i64 0))
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.30.86, i64 0, i64 0))
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31.87, i64 0, i64 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32.88, i64 0, i64 0))
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @parse_settings(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = call noalias i8* @malloc(i64 100) #5
  store i8* %6, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 17
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %12
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %7

17:                                               ; preds = %7
  %18 = load i8*, i8** %2, align 8
  %19 = call %struct._IO_FILE* @fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17.110, i64 0, i64 0))
  store %struct._IO_FILE* %19, %struct._IO_FILE** %3, align 8
  %20 = icmp eq %struct._IO_FILE* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18.111, i64 0, i64 0), i8* %23)
  call void @exit(i32 1) #6
  unreachable

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %68, %40, %25
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %28 = call i32 @feof(%struct._IO_FILE* %27) #5
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %69

31:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %34 = call i8* @fgets(i8* %32, i32 100, %struct._IO_FILE* %33)
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 35
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %26

41:                                               ; preds = %31
  %42 = load i8*, i8** %4, align 8
  %43 = call i8* @strtok(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19.112, i64 0, i64 0)) #5
  br label %44

44:                                               ; preds = %65, %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 17
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [17 x i8*], [17 x i8*]* @pattern, i64 0, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* %51, i8* %52) #7
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strlen(i8* %57) #7
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %56, i64 %59
  %61 = call i32 @atoi(i8* %60) #7
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [17 x i32], [17 x i32]* @settings, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  br label %65

65:                                               ; preds = %55, %47
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %44

68:                                               ; preds = %44
  br label %26

69:                                               ; preds = %26
  %70 = load i8*, i8** %4, align 8
  call void @free(i8* %70) #5
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @hard_raw_mod(i64 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %15 = load i32, i32* @hard_raw_mod.hr_empty, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %7
  %18 = call noalias i8* @malloc(i64 56) #5
  %19 = bitcast i8* %18 to %struct.hard_raw*
  store %struct.hard_raw* %19, %struct.hard_raw** @hard_raw_list, align 8
  %20 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %21 = icmp ne %struct.hard_raw* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

25:                                               ; preds = %17
  %26 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %27 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %26, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %27, align 8
  %28 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %29 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %28, i32 0, i32 1
  store %struct.hard_raw* null, %struct.hard_raw** %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %32 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %35 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %38 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %41 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %44 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %47 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  %50 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %49, i32 0, i32 8
  store i64 %48, i64* %50, align 8
  store i32 0, i32* @hard_raw_mod.hr_empty, align 4
  %51 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_list, align 8
  store %struct.hard_raw* %51, %struct.hard_raw** @hard_raw_mod.last, align 8
  br label %94

52:                                               ; preds = %7
  %53 = call noalias i8* @malloc(i64 56) #5
  %54 = bitcast i8* %53 to %struct.hard_raw*
  %55 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %56 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %55, i32 0, i32 0
  store %struct.hard_raw* %54, %struct.hard_raw** %56, align 8
  %57 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %58 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %59 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %58, i32 0, i32 0
  %60 = load %struct.hard_raw*, %struct.hard_raw** %59, align 8
  %61 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %60, i32 0, i32 1
  store %struct.hard_raw* %57, %struct.hard_raw** %61, align 8
  %62 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %63 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %62, i32 0, i32 0
  %64 = load %struct.hard_raw*, %struct.hard_raw** %63, align 8
  store %struct.hard_raw* %64, %struct.hard_raw** @hard_raw_mod.last, align 8
  %65 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %66 = icmp ne %struct.hard_raw* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %52
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

70:                                               ; preds = %52
  %71 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %72 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %71, i32 0, i32 0
  store %struct.hard_raw* null, %struct.hard_raw** %72, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %75 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %78 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %81 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %84 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %87 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %90 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %89, i32 0, i32 7
  store i32 %88, i32* %90, align 4
  %91 = load i64, i64* %14, align 8
  %92 = load %struct.hard_raw*, %struct.hard_raw** @hard_raw_mod.last, align 8
  %93 = getelementptr inbounds %struct.hard_raw, %struct.hard_raw* %92, i32 0, i32 8
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %70, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @def_hash(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i32, i32* @def_table_size, align 4
  %5 = sext i32 %4 to i64
  %6 = urem i64 %3, %5
  ret i64 %6
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.def_list_t* @def_list_lookup(i64 %0) #0 {
  %2 = alloca %struct.def_list_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.def_list_t*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @def_hash(i64 %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %8, i64 %9
  %11 = load %struct.def_list_t*, %struct.def_list_t** %10, align 8
  store %struct.def_list_t* %11, %struct.def_list_t** %5, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %14 = icmp ne %struct.def_list_t* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %12
  %16 = load i64, i64* %3, align 8
  %17 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %18 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  store %struct.def_list_t* %22, %struct.def_list_t** %2, align 8
  br label %29

23:                                               ; preds = %15
  %24 = load %struct.def_list_t*, %struct.def_list_t** %5, align 8
  %25 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = bitcast i8* %26 to %struct.def_list_t*
  store %struct.def_list_t* %27, %struct.def_list_t** %5, align 8
  br label %12

28:                                               ; preds = %12
  store %struct.def_list_t* null, %struct.def_list_t** %2, align 8
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.def_list_t*, %struct.def_list_t** %2, align 8
  ret %struct.def_list_t* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @def_list_mod(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.def_list_t*, align 8
  %8 = alloca %struct.def_list_t*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.def_list_t* null, %struct.def_list_t** %7, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @def_hash(i64 %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %13 = load i64, i64* %9, align 8
  %14 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %12, i64 %13
  %15 = load %struct.def_list_t*, %struct.def_list_t** %14, align 8
  %16 = icmp eq %struct.def_list_t* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %3
  %18 = call noalias i8* @malloc(i64 24) #5
  %19 = bitcast i8* %18 to %struct.def_list_t*
  store %struct.def_list_t* %19, %struct.def_list_t** %7, align 8
  %20 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %21 = icmp ne %struct.def_list_t* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

25:                                               ; preds = %17
  %26 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %27 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %30 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %33 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %36 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %38 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %38, i64 %39
  store %struct.def_list_t* %37, %struct.def_list_t** %40, align 8
  br label %93

41:                                               ; preds = %3
  %42 = load %struct.def_list_t**, %struct.def_list_t*** @def_table, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds %struct.def_list_t*, %struct.def_list_t** %42, i64 %43
  %45 = load %struct.def_list_t*, %struct.def_list_t** %44, align 8
  store %struct.def_list_t* %45, %struct.def_list_t** %8, align 8
  br label %46

46:                                               ; preds = %64, %41
  %47 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %48 = icmp ne %struct.def_list_t* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  store %struct.def_list_t* %50, %struct.def_list_t** %7, align 8
  %51 = load i64, i64* %4, align 8
  %52 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %53 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %59 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %62 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  br label %93

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %66 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = bitcast i8* %67 to %struct.def_list_t*
  store %struct.def_list_t* %68, %struct.def_list_t** %8, align 8
  br label %46

69:                                               ; preds = %46
  %70 = call noalias i8* @malloc(i64 24) #5
  %71 = bitcast i8* %70 to %struct.def_list_t*
  store %struct.def_list_t* %71, %struct.def_list_t** %8, align 8
  %72 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %73 = icmp ne %struct.def_list_t* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

77:                                               ; preds = %69
  %78 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %79 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %78, i32 0, i32 0
  store i8* null, i8** %79, align 8
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %82 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %85 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %88 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.def_list_t*, %struct.def_list_t** %8, align 8
  %90 = bitcast %struct.def_list_t* %89 to i8*
  %91 = load %struct.def_list_t*, %struct.def_list_t** %7, align 8
  %92 = getelementptr inbounds %struct.def_list_t, %struct.def_list_t* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  br label %93

93:                                               ; preds = %77, %56, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @conflict_list(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.conf_list_t*, align 8
  %4 = alloca %struct.conf_list_t*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store %struct.conf_list_t* null, %struct.conf_list_t** %3, align 8
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @first, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = call noalias i8* @malloc(i64 24) #5
  %10 = bitcast i8* %9 to %struct.conf_list_t*
  store %struct.conf_list_t* %10, %struct.conf_list_t** @list, align 8
  %11 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %12 = icmp ne %struct.conf_list_t* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

16:                                               ; preds = %8
  %17 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %18 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %17, i32 0, i32 0
  store i8* null, i8** %18, align 8
  %19 = load i64, i64* %2, align 8
  %20 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %21 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  %23 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %22, i32 0, i32 2
  store i32 1, i32* %23, align 8
  store i32 0, i32* @first, align 4
  %24 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %24, %struct.conf_list_t** @conflict_list.next, align 8
  br label %71

25:                                               ; preds = %1
  %26 = load %struct.conf_list_t*, %struct.conf_list_t** @list, align 8
  store %struct.conf_list_t* %26, %struct.conf_list_t** %4, align 8
  br label %27

27:                                               ; preds = %43, %25
  %28 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %29 = icmp ne %struct.conf_list_t* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  store %struct.conf_list_t* %31, %struct.conf_list_t** %3, align 8
  %32 = load i64, i64* %2, align 8
  %33 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %34 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %39 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  store i32 0, i32* %5, align 4
  br label %48

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.conf_list_t*, %struct.conf_list_t** %4, align 8
  %45 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = bitcast i8* %46 to %struct.conf_list_t*
  store %struct.conf_list_t* %47, %struct.conf_list_t** %4, align 8
  br label %27

48:                                               ; preds = %37, %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = call noalias i8* @malloc(i64 24) #5
  %53 = bitcast i8* %52 to %struct.conf_list_t*
  store %struct.conf_list_t* %53, %struct.conf_list_t** @conflict_list.next, align 8
  %54 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %55 = icmp ne %struct.conf_list_t* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.115, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

59:                                               ; preds = %51
  %60 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %61 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %60, i32 0, i32 0
  store i8* null, i8** %61, align 8
  %62 = load i64, i64* %2, align 8
  %63 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %64 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %66 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.conf_list_t*, %struct.conf_list_t** @conflict_list.next, align 8
  %68 = bitcast %struct.conf_list_t* %67 to i8*
  %69 = load %struct.conf_list_t*, %struct.conf_list_t** %3, align 8
  %70 = getelementptr inbounds %struct.conf_list_t, %struct.conf_list_t* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %59, %48, %16
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
