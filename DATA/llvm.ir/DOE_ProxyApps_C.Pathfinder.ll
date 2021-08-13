; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.StatsStruct = type { %struct.IntVectorStruct*, i32, i32, double, double, i32* }
%struct.IntVectorStruct = type { i32, i32, i32* }
%struct.BitfieldStruct = type { i32, i8* }
%struct.NodeStruct = type { i32, i32, i8*, i32, i32, %struct.NodeStruct*, %struct.NodeListStruct*, %struct.EdgeListStruct*, i32, i32 }
%struct.NodeListStruct = type { %struct.NodeStruct*, %struct.NodeListStruct* }
%struct.EdgeListStruct = type { i32, %struct.NodeStruct*, %struct.EdgeListStruct* }
%struct.SearchOptionsStruct = type { i32, i8, i8, i8, i8*, i32 }
%struct.ConfigurationStruct = type { %struct.GraphStruct**, i8***, %struct.SearchOptionsStruct*, i32 }
%struct.GraphStruct = type { i8*, i32, %struct.NodeListStruct*, %struct.EdgeReferencesStruct*, %struct.SystemCallMapStruct* }
%struct.EdgeReferencesStruct = type { %struct.NodeStruct*, %struct.EdgeReferencesStruct* }
%struct.SystemCallMapStruct = type { i32, i32, %struct.SystemCallMapElementStruct** }
%struct.SystemCallMapElementStruct = type { i8*, i32, %struct.NodePtrVecStruct* }
%struct.NodePtrVecStruct = type { i32, i32, %struct.NodeStruct** }
%struct.NodeVecVecStruct = type { i32, i32, %struct.NodePtrVecStruct** }
%struct.CharVectorStruct = type { i32, i32, i8* }
%struct.HistogramElementStruct = type { i32, i32, %struct.HistogramElementStruct* }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Functions: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Basic blocks: %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0 \0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"-------------------------------------------- \0ASYSTEM CALLS \0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d %s \0A\00", align 1
@__const.main.defaultFile = private unnamed_addr constant [23 x i8] c"MicroTestData.adj_list\00", align 16
@.str.9 = private unnamed_addr constant [633 x i8] c"\0A\0A        PathFinder: finding a series of labeled nodes within a\0A                two-layer directed, cyclic graph.\0A               Copyright (2013) Sandia Corporation\0A\0A Sandia National Laboratories is a multi-program laboratory managed and\0A operated by Sandia Corporation, a wholly owned subsidiary of Lockheed\0A Martin Corporation, for the U.S. Department of Energy's National Nuclear\0A Security Administration under terms of Contract DE-AC04-94AL85000,\0A there is a non-exclusive license for use of this work by or on behalf\0A of the U.S. Government. Export of this program may require a license \0A from the United States Government.\0A\0A\0A\00", align 1
@.str.1.10 = private unnamed_addr constant [68 x i8] c"Error: Could not allocation configuration structure.\0A\0A\09---Exiting\0A\0A\00", align 1
@.str.2.11 = private unnamed_addr constant [14 x i8] c"c:i:x:o:q:huy\00", align 1
@optopt = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.3.12 = private unnamed_addr constant [38 x i8] c"\09Please specify configuration file.\0A\0A\00", align 1
@.str.4.13 = private unnamed_addr constant [29 x i8] c"\09Please specify data file.\0A\0A\00", align 1
@.str.5.14 = private unnamed_addr constant [42 x i8] c"\09Please specify output graph data file.\0A\0A\00", align 1
@.str.6.15 = private unnamed_addr constant [58 x i8] c"\09Please specify recursion depth to keep spawning tasks.\0A\0A\00", align 1
@.str.7.16 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [625 x i8] c"\0AUsage: PathFinder.exe [OPTIONS] [<fileName>]\0A\0A  Operation:\0A    -c  <config file>   use configuration file\0A    -i  <data file>     interactive search of specified data file\0A    -x  <data file>     exhaustive leg search (any label to any label) of data file\0A\0A  Other:\0A    -o  <output file>   save optimized graph to file\0A    -h,u                prints this help message.\0A    -q  <depth>         use qthread parallelism (config file only). The depth value\0A                        specifies how deep in recursion to continue spawning new tasks\0A                        during searches\0A    -y                  create YAML output\0A\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.9.17 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"-c -i and -x are mutually exclusive, PathFinder can only do one of those.\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"-c (config file) -i (interactive) or -x (exhaustive) must be specified.\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"-o (optimized graph output) is only compatible with -x (exhaustive searches).\0A\0A\00", align 1
@__const.runInteractively.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.17 = private unnamed_addr constant [82 x i8] c"\0APlease insert a node label for this signature (\22\22 to complete, \22bail\22 to exit):\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"bail\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"\0ASignature: \00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"Found, resultant path has %d steps.\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"\0A\09Path not found for signature.\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Error: No config file entered.\0A\0A\09---Exiting---\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\0A\0AOverall Parse Time: %02d:%02d:%02.3f\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0A\0ASearches complete.\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"\0A\0ATotal %d legs found\0A\0A\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Specified entrance edge length does not match data size for node: %d\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [61 x i8] c"Specified edge length does not match data size for node: %d\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [64 x i8] c"resolveNodeEdges: Outer node %d edge to non-contained node: %d\0A\00", align 1
@.str.4.31 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str.5.32 = private unnamed_addr constant [9 x i8] c"entrance\00", align 1
@.str.3.33 = private unnamed_addr constant [22 x i8] c"\09%d is type: %s (%d)\0A\00", align 1
@.str.6.34 = private unnamed_addr constant [74 x i8] c"resolveNodeEdges: Outer node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.7.35 = private unnamed_addr constant [77 x i8] c"resolveNodeEdges: Interior node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.8.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.39 = private unnamed_addr constant [52 x i8] c"Could not open data file: %s (parsing.c:parseFile)\0A\00", align 1
@.str.10.40 = private unnamed_addr constant [11 x i8] c"Functions:\00", align 1
@.str.11.41 = private unnamed_addr constant [25 x i8] c"\09%d functions specified\0A\00", align 1
@.str.12.42 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.13.43 = private unnamed_addr constant [60 x i8] c"Malformed file, Function count not specified in first line\0A\00", align 1
@.str.14.44 = private unnamed_addr constant [14 x i8] c"Basic blocks:\00", align 1
@.str.15.45 = private unnamed_addr constant [28 x i8] c"\09%d basic blocks specified\0A\00", align 1
@.str.16.46 = private unnamed_addr constant [13 x i8] c"Basic Blocks\00", align 1
@.str.17.47 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.18.48 = private unnamed_addr constant [13 x i8] c"SYSTEM CALLS\00", align 1
@.str.19.49 = private unnamed_addr constant [56 x i8] c"Error in parseFile: Node %d undefined as an outer node\0A\00", align 1
@.str.20.50 = private unnamed_addr constant [36 x i8] c"\09%d total System Call Map elements\0A\00", align 1
@.str.21.51 = private unnamed_addr constant [13 x i8] c"System Calls\00", align 1
@.str.22.52 = private unnamed_addr constant [23 x i8] c"\09...parsing complete.\0A\00", align 1
@.str.23.55 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.24.56 = private unnamed_addr constant [12 x i8] c"Opened %s\0A\0A\00", align 1
@.str.25.57 = private unnamed_addr constant [25 x i8] c"Pathfinder Configuration\00", align 1
@.str.26.58 = private unnamed_addr constant [69 x i8] c"Error in config file: doesn't start with \22Pathfinder Configuration\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.28.59 = private unnamed_addr constant [53 x i8] c"Error in config file: second line is not file count\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"No files to parse, exiting.\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"signatures\00", align 1
@.str.31 = private unnamed_addr constant [57 x i8] c"Error in config file: third line is not signature count\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"No signatures to search, exiting.\0A\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"search type\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.35 = private unnamed_addr constant [43 x i8] c"Could not allocate graph storage. Exiting\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"file \00", align 1
@.str.37 = private unnamed_addr constant [46 x i8] c"Error in config file: mismatch of file count\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Could not allocate signature storage. Exiting\0A\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"signature \00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"Error in config file: mismatch of signature count\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.64 = private unnamed_addr constant [41 x i8] c"\0A\0AOverall Search Time: %02d:02%d:%05.2f\0A\00", align 1
@.str.8.65 = private unnamed_addr constant [18 x i8] c"CrashAndBURN!!!\0A\0A\00", align 1
@globalStats = internal global %struct.StatsStruct* null, align 8
@.str.1.68 = private unnamed_addr constant [29 x i8] c"Immediately before parallel\0A\00", align 1
@__const.findAllPossibleLegs.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.2.69 = private unnamed_addr constant [58 x i8] c"\0A\0A%d found out of %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@.str.3.70 = private unnamed_addr constant [17 x i8] c"%02d:%02d:%02.3f\00", align 1
@.str.4.71 = private unnamed_addr constant [17 x i8] c"Signatures Found\00", align 1
@.str.5.72 = private unnamed_addr constant [12 x i8] c"Search Time\00", align 1
@.str.6.75 = private unnamed_addr constant [33 x i8] c"Immediately before nested for's\0A\00", align 1
@__const.findAndLogAllPossibleLegs.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.7.76 = private unnamed_addr constant [55 x i8] c"\0A\0A%d found for %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@.str.9.77 = private unnamed_addr constant [91 x i8] c"\0AThis graph has %f average nodes between labels.\0AStandard deviation: %f, total paths: %d\0A\0A\00", align 1
@.str.10.78 = private unnamed_addr constant [38 x i8] c"\09Shortest Path: %d, Longest Path: %d\0A\00", align 1
@.str.11.79 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1
@.str.84 = private unnamed_addr constant [52 x i8] c"Bummer. outerIdx: %d, innerIdx: %d, node count: %d\0A\00", align 1
@.str.93 = private unnamed_addr constant [21 x i8] c"avg: %f\0Astd dev: %f\0A\00", align 1
@.str.1.94 = private unnamed_addr constant [12 x i8] c"Histogram:\0A\00", align 1
@.str.2.95 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1.103 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.2.104 = private unnamed_addr constant [5 x i8] c" %d,\00", align 1
@.str.3.105 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.106 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.107 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8.109 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.7.110 = private unnamed_addr constant [41 x i8] c"Outer Node: %d, idx: %d, label: %s (%d)\0A\00", align 1
@.str.9.111 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.10.112 = private unnamed_addr constant [17 x i8] c"\09Inner Node: %d\0A\00", align 1
@.str.11.113 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.12.114 = private unnamed_addr constant [8 x i8] c"'%s'\0A\09:\00", align 1
@.str.13.115 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.14.116 = private unnamed_addr constant [36 x i8] c"\09%d total System Call Map elements\0A\00", align 1
@.str.15.117 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.16.118 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.125 = private unnamed_addr constant [48 x i8] c"\0A\0AIntVector_insertEnd failed realloc size = %d\0A\00", align 1
@.str.1.136 = private unnamed_addr constant [39 x i8] c"Malloc failure in NodePtrVec creation\0A\00", align 1
@.str.2.137 = private unnamed_addr constant [47 x i8] c"Malloc failure in NodePtrVec storage creation\0A\00", align 1
@.str.3.142 = private unnamed_addr constant [46 x i8] c"\0A\0ANodePtrVec_push failed malloc(%d). Node: %d\00", align 1
@.str.4.143 = private unnamed_addr constant [13 x i8] c", label: %s\0A\00", align 1
@.str.5.144 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6.151 = private unnamed_addr constant [47 x i8] c"Malloc failure in NodeVecVec storage creation\0A\00", align 1
@.str.7.152 = private unnamed_addr constant [39 x i8] c"Malloc failure in NodeVecVec creation\0A\00", align 1
@.str.8.155 = private unnamed_addr constant [33 x i8] c"\0A\0ANodeVecVec_push failed malloc\0A\00", align 1
@output = internal global %struct._IO_FILE* null, align 8
@.str.158 = private unnamed_addr constant [34 x i8] c"PathFinder_%d-%d-%d_%d-%d-%d.yaml\00", align 1
@.str.1.159 = private unnamed_addr constant [19 x i8] c"%d/%d/%d, %d:%d:%d\00", align 1
@.str.2.160 = private unnamed_addr constant [20 x i8] c"\0AWriting YAML: %s\0A\0A\00", align 1
@.str.3.161 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.162 = private unnamed_addr constant [22 x i8] c"Mini-Application Name\00", align 1
@.str.5.163 = private unnamed_addr constant [11 x i8] c"PathFinder\00", align 1
@.str.6.166 = private unnamed_addr constant [25 x i8] c"Mini-Application Version\00", align 1
@.str.7.167 = private unnamed_addr constant [6 x i8] c"1.0.0\00", align 1
@.str.8.168 = private unnamed_addr constant [14 x i8] c"Run Date/Time\00", align 1
@.str.9.169 = private unnamed_addr constant [17 x i8] c"Compiler Version\00", align 1
@.str.10.170 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11.171 = private unnamed_addr constant [15 x i8] c"Compiler Flags\00", align 1
@.str.12.172 = private unnamed_addr constant [4 x i8] c"MPI\00", align 1
@.str.13.173 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.14.174 = private unnamed_addr constant [7 x i8] c"OpenMP\00", align 1
@.str.15.175 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16.180 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1
@.str.17.181 = private unnamed_addr constant [9 x i8] c"%s: %lf\0A\00", align 1
@.str.18.182 = private unnamed_addr constant [8 x i8] c"%s: %f\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_new(i32 %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.BitfieldStruct*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = add nsw i32 %6, 7
  %8 = sdiv i32 %7, 8
  store i32 %8, i32* %4, align 4
  %9 = call noalias i8* @malloc(i64 16) #7
  %10 = bitcast i8* %9 to %struct.BitfieldStruct*
  store %struct.BitfieldStruct* %10, %struct.BitfieldStruct** %5, align 8
  %11 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %12 = icmp ne %struct.BitfieldStruct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = call noalias i8* @calloc(i64 %16, i64 1) #7
  %18 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %19 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %21 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %26 = bitcast %struct.BitfieldStruct* %25 to i8*
  call void @free(i8* %26) #7
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %32

27:                                               ; preds = %14
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %30 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  store %struct.BitfieldStruct* %31, %struct.BitfieldStruct** %2, align 8
  br label %32

32:                                               ; preds = %27, %24, %13
  %33 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  ret %struct.BitfieldStruct* %33
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bitfield_delete(%struct.BitfieldStruct* %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %2, align 8
  %3 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %4 = icmp ne %struct.BitfieldStruct* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %7 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %12 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #7
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %16 = bitcast %struct.BitfieldStruct* %15 to i8*
  call void @free(i8* %16) #7
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca %struct.BitfieldStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %3, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %4, align 8
  %9 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %10 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %14 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %6, align 1
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %21 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  %24 = shl i32 1, %23
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %7, align 1
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %7, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %8, align 1
  %33 = load i8, i8* %7, align 1
  %34 = sext i8 %33 to i32
  %35 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %36 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = or i32 %42, %34
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = load i8, i8* %8, align 1
  %46 = trunc i8 %45 to i1
  ret i1 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.BitfieldStruct* @Bitfield_copy(%struct.BitfieldStruct* %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca %struct.BitfieldStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.BitfieldStruct*, align 8
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %3, align 8
  %6 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %7 = icmp ne %struct.BitfieldStruct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %11 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.BitfieldStruct* @Bitfield_new(i32 %12)
  store %struct.BitfieldStruct* %13, %struct.BitfieldStruct** %5, align 8
  %14 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %15 = icmp ne %struct.BitfieldStruct* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %18, 8
  %20 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %21 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %3, align 8
  %26 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  %33 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 %31, i8* %37, align 1
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %5, align 8
  store %struct.BitfieldStruct* %42, %struct.BitfieldStruct** %2, align 8
  br label %44

43:                                               ; preds = %9
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %2, align 8
  br label %44

44:                                               ; preds = %43, %41, %8
  %45 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  ret %struct.BitfieldStruct* %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Bitfield_clear(%struct.BitfieldStruct* %0) #0 {
  %2 = alloca %struct.BitfieldStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.BitfieldStruct* %0, %struct.BitfieldStruct** %2, align 8
  %4 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %5 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 7
  %8 = sdiv i32 %7, 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %2, align 8
  %10 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %13, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SearchOptionsStruct* @SearchOptions_new() #0 {
  %1 = alloca %struct.SearchOptionsStruct*, align 8
  %2 = alloca %struct.SearchOptionsStruct*, align 8
  %3 = call noalias i8* @malloc(i64 24) #7
  %4 = bitcast i8* %3 to %struct.SearchOptionsStruct*
  store %struct.SearchOptionsStruct* %4, %struct.SearchOptionsStruct** %2, align 8
  %5 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %6 = icmp ne %struct.SearchOptionsStruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.SearchOptionsStruct* null, %struct.SearchOptionsStruct** %1, align 8
  br label %22

8:                                                ; preds = %0
  %9 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %10 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %11, i32 0, i32 1
  store i8 0, i8* %12, align 4
  %13 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %14 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %13, i32 0, i32 2
  store i8 0, i8* %14, align 1
  %15 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %15, i32 0, i32 3
  store i8 0, i8* %16, align 2
  %17 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %18 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %17, i32 0, i32 4
  store i8* null, i8** %18, align 8
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  %20 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %19, i32 0, i32 5
  store i32 0, i32* %20, align 8
  %21 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %2, align 8
  store %struct.SearchOptionsStruct* %21, %struct.SearchOptionsStruct** %1, align 8
  br label %22

22:                                               ; preds = %8, %7
  %23 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %1, align 8
  ret %struct.SearchOptionsStruct* %23
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.ConfigurationStruct* @Configuration_new() #0 {
  %1 = alloca %struct.ConfigurationStruct*, align 8
  %2 = alloca %struct.ConfigurationStruct*, align 8
  %3 = alloca %struct.SearchOptionsStruct*, align 8
  %4 = call noalias i8* @malloc(i64 32) #7
  %5 = bitcast i8* %4 to %struct.ConfigurationStruct*
  store %struct.ConfigurationStruct* %5, %struct.ConfigurationStruct** %2, align 8
  %6 = call %struct.SearchOptionsStruct* @SearchOptions_new()
  store %struct.SearchOptionsStruct* %6, %struct.SearchOptionsStruct** %3, align 8
  %7 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %8 = icmp ne %struct.ConfigurationStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %11 = icmp ne %struct.SearchOptionsStruct* %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9, %0
  %13 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %14 = icmp ne %struct.ConfigurationStruct* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %17 = bitcast %struct.ConfigurationStruct* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %20 = icmp ne %struct.SearchOptionsStruct* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %23 = bitcast %struct.SearchOptionsStruct* %22 to i8*
  call void @free(i8* %23) #7
  br label %24

24:                                               ; preds = %21, %18
  store %struct.ConfigurationStruct* null, %struct.ConfigurationStruct** %1, align 8
  br label %36

25:                                               ; preds = %9
  %26 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %27 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %26, i32 0, i32 0
  store %struct.GraphStruct** null, %struct.GraphStruct*** %27, align 8
  %28 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %29 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %28, i32 0, i32 1
  store i8*** null, i8**** %29, align 8
  %30 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %3, align 8
  %31 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %32 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %31, i32 0, i32 2
  store %struct.SearchOptionsStruct* %30, %struct.SearchOptionsStruct** %32, align 8
  %33 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %34 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %33, i32 0, i32 3
  store i32 0, i32* %34, align 8
  %35 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  store %struct.ConfigurationStruct* %35, %struct.ConfigurationStruct** %1, align 8
  br label %36

36:                                               ; preds = %25, %24
  %37 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %1, align 8
  ret %struct.ConfigurationStruct* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local double @currentTime() #0 {
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** %0, i32 %1) #0 {
  %3 = alloca %struct.GraphStruct*, align 8
  %4 = alloca %struct.NodeVecVecStruct**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.GraphStruct*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.NodeVecVecStruct** %0, %struct.NodeVecVecStruct*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call %struct.GraphStruct* (...) bitcast (%struct.GraphStruct* ()* @Graph_new to %struct.GraphStruct* (...)*)()
  store %struct.GraphStruct* %13, %struct.GraphStruct** %6, align 8
  %14 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %15 = icmp ne %struct.NodeVecVecStruct** %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %18 = icmp ne %struct.GraphStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

20:                                               ; preds = %16
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %163, %20
  %22 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %22, i64 %24
  %26 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %25, align 8
  %27 = icmp ne %struct.NodeVecVecStruct* %26, null
  br i1 %27, label %28, label %166

28:                                               ; preds = %21
  store i32 0, i32* %11, align 4
  br label %29

29:                                               ; preds = %159, %28
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %31, i64 %33
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %34, align 8
  %36 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %30, %37
  br i1 %38, label %39, label %162

39:                                               ; preds = %29
  %40 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %40, i64 %42
  %44 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %43, align 8
  %45 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %44, i32 0, i32 2
  %46 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %46, i64 %48
  %50 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %49, align 8
  %51 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %50, i32 0, i32 2
  %52 = load %struct.NodeStruct**, %struct.NodeStruct*** %51, align 8
  %53 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %52, i64 0
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %53, align 8
  store %struct.NodeStruct* %54, %struct.NodeStruct** %7, align 8
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %56 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %57 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* %55, %struct.NodeStruct* %56)
  store %struct.NodeStruct* %57, %struct.NodeStruct** %8, align 8
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %59 = icmp ne %struct.NodeStruct* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %39
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

61:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  br label %62

62:                                               ; preds = %155, %61
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %64, i64 %66
  %68 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %67, align 8
  %69 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %68, i32 0, i32 2
  %70 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %70, i64 %72
  %74 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %73, align 8
  %75 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %63, %76
  br i1 %77, label %78, label %158

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %82, i64 %84
  %86 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %85, align 8
  %87 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %86, i32 0, i32 2
  %88 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %88, i64 %90
  %92 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %91, align 8
  %93 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %12, align 4
  br label %126

96:                                               ; preds = %78
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %121, %99
  %101 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %101, i64 %103
  %105 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %104, align 8
  %106 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %105, i32 0, i32 2
  %107 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %106, align 8
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %107, i64 %109
  %111 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %110, align 8
  %112 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %111, i32 0, i32 2
  %113 = load %struct.NodeStruct**, %struct.NodeStruct*** %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %113, i64 %115
  %117 = load %struct.NodeStruct*, %struct.NodeStruct** %116, align 8
  %118 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %100
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %100

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124, %96
  br label %126

126:                                              ; preds = %125, %81
  %127 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %4, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %127, i64 %129
  %131 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %130, align 8
  %132 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %131, i32 0, i32 2
  %133 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %133, i64 %135
  %137 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %136, align 8
  %138 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %137, i32 0, i32 2
  %139 = load %struct.NodeStruct**, %struct.NodeStruct*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %139, i64 %141
  %143 = load %struct.NodeStruct*, %struct.NodeStruct** %142, align 8
  store %struct.NodeStruct* %143, %struct.NodeStruct** %7, align 8
  %144 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %145 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %146 = call %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* %144, %struct.NodeStruct* %145)
  store %struct.NodeStruct* %146, %struct.NodeStruct** %9, align 8
  %147 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %148 = icmp ne %struct.NodeStruct* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %126
  store %struct.GraphStruct* null, %struct.GraphStruct** %3, align 8
  br label %168

150:                                              ; preds = %126
  %151 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %152 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %153 = call zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* %151, %struct.NodeStruct* %152)
  %154 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  store %struct.NodeStruct* %154, %struct.NodeStruct** %8, align 8
  br label %155

155:                                              ; preds = %150
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %62

158:                                              ; preds = %62
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %29

162:                                              ; preds = %29
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %21

166:                                              ; preds = %21
  %167 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  store %struct.GraphStruct* %167, %struct.GraphStruct** %3, align 8
  br label %168

168:                                              ; preds = %166, %149, %60, %19
  %169 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  ret %struct.GraphStruct* %169
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.NodeStruct* @getDuplicateNodeForGraph(%struct.GraphStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.NodeStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %9 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %7, i32 %10, i1 zeroext true)
  store %struct.NodeStruct* %11, %struct.NodeStruct** %6, align 8
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %13 = icmp ne %struct.NodeStruct* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %15, %struct.NodeStruct** %3, align 8
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %18 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %19 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = call %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* %17, i32 %20)
  store %struct.NodeStruct* %22, %struct.NodeStruct** %6, align 8
  %23 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %24 = icmp ne %struct.NodeStruct* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %28 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* %26, %struct.NodeStruct* %27)
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %31, %struct.NodeStruct** %3, align 8
  br label %34

32:                                               ; preds = %16
  %33 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  call void @Graph_delete(%struct.GraphStruct* %33)
  store %struct.NodeStruct* null, %struct.NodeStruct** %3, align 8
  br label %34

34:                                               ; preds = %32, %25, %14
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  ret %struct.NodeStruct* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @exportGraph(%struct.GraphStruct* %0, i8* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct.NodeListStruct*, align 8
  %8 = alloca %struct.EdgeListStruct*, align 8
  %9 = alloca i32, align 4
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %6, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %7, align 8
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %11 = icmp ne %struct.GraphStruct* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i1 false, i1* %3, align 1
  br label %165

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct._IO_FILE* @fopen(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct._IO_FILE* %18, %struct._IO_FILE** %6, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %20 = icmp ne %struct._IO_FILE* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i1 false, i1* %3, align 1
  br label %165

22:                                               ; preds = %16
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %23, i32 0, i32 2
  %25 = load %struct.NodeListStruct*, %struct.NodeListStruct** %24, align 8
  store %struct.NodeListStruct* %25, %struct.NodeListStruct** %7, align 8
  br label %26

26:                                               ; preds = %32, %22
  %27 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %28 = icmp ne %struct.NodeListStruct* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %34 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %33, i32 0, i32 1
  %35 = load %struct.NodeListStruct*, %struct.NodeListStruct** %34, align 8
  store %struct.NodeListStruct* %35, %struct.NodeListStruct** %7, align 8
  br label %26

36:                                               ; preds = %26
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %41 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %42 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %46 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %45, i32 0, i32 2
  %47 = load %struct.NodeListStruct*, %struct.NodeListStruct** %46, align 8
  store %struct.NodeListStruct* %47, %struct.NodeListStruct** %7, align 8
  br label %48

48:                                               ; preds = %126, %36
  %49 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %50 = icmp ne %struct.NodeListStruct* %49, null
  br i1 %50, label %51, label %130

51:                                               ; preds = %48
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %53 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %54 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %53, i32 0, i32 0
  %55 = load %struct.NodeStruct*, %struct.NodeStruct** %54, align 8
  %56 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %60 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %59, i32 0, i32 0
  %61 = load %struct.NodeStruct*, %struct.NodeStruct** %60, align 8
  %62 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %61, i32 0, i32 7
  %63 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %62, align 8
  %64 = icmp ne %struct.EdgeListStruct* %63, null
  br i1 %64, label %65, label %122

65:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  %66 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %67 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %66, i32 0, i32 0
  %68 = load %struct.NodeStruct*, %struct.NodeStruct** %67, align 8
  %69 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %68, i32 0, i32 7
  %70 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %69, align 8
  store %struct.EdgeListStruct* %70, %struct.EdgeListStruct** %8, align 8
  br label %71

71:                                               ; preds = %85, %65
  %72 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %73 = icmp ne %struct.EdgeListStruct* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %76 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %75, i32 0, i32 1
  %77 = load %struct.NodeStruct*, %struct.NodeStruct** %76, align 8
  %78 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %81, %74
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %87 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %86, i32 0, i32 2
  %88 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %87, align 8
  store %struct.EdgeListStruct* %88, %struct.EdgeListStruct** %8, align 8
  br label %71

89:                                               ; preds = %71
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %94 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %93, i32 0, i32 0
  %95 = load %struct.NodeStruct*, %struct.NodeStruct** %94, align 8
  %96 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %95, i32 0, i32 7
  %97 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %96, align 8
  store %struct.EdgeListStruct* %97, %struct.EdgeListStruct** %8, align 8
  br label %98

98:                                               ; preds = %115, %89
  %99 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %100 = icmp ne %struct.EdgeListStruct* %99, null
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %103 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %102, i32 0, i32 1
  %104 = load %struct.NodeStruct*, %struct.NodeStruct** %103, align 8
  %105 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %110 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %111 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %117 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %116, i32 0, i32 2
  %118 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %117, align 8
  store %struct.EdgeListStruct* %118, %struct.EdgeListStruct** %8, align 8
  br label %98

119:                                              ; preds = %98
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %121 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %125

122:                                              ; preds = %51
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %128 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %127, i32 0, i32 1
  %129 = load %struct.NodeListStruct*, %struct.NodeListStruct** %128, align 8
  store %struct.NodeListStruct* %129, %struct.NodeListStruct** %7, align 8
  br label %48

130:                                              ; preds = %48
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %133 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %134 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %133, i32 0, i32 2
  %135 = load %struct.NodeListStruct*, %struct.NodeListStruct** %134, align 8
  store %struct.NodeListStruct* %135, %struct.NodeListStruct** %7, align 8
  br label %136

136:                                              ; preds = %160, %130
  %137 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %138 = icmp ne %struct.NodeListStruct* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %136
  %140 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %141 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %140, i32 0, i32 0
  %142 = load %struct.NodeStruct*, %struct.NodeStruct** %141, align 8
  %143 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %142, i32 0, i32 2
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %139
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %148 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %149 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %148, i32 0, i32 0
  %150 = load %struct.NodeStruct*, %struct.NodeStruct** %149, align 8
  %151 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %154 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %153, i32 0, i32 0
  %155 = load %struct.NodeStruct*, %struct.NodeStruct** %154, align 8
  %156 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %155, i32 0, i32 2
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %152, i8* %157)
  br label %159

159:                                              ; preds = %146, %139
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %162 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %161, i32 0, i32 1
  %163 = load %struct.NodeListStruct*, %struct.NodeListStruct** %162, align 8
  store %struct.NodeListStruct* %163, %struct.NodeListStruct** %7, align 8
  br label %136

164:                                              ; preds = %136
  store i1 true, i1* %3, align 1
  br label %165

165:                                              ; preds = %164, %21, %15
  %166 = load i1, i1* %3, align 1
  ret i1 %166
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @Graph_new() #0 {
  %1 = alloca %struct.GraphStruct*, align 8
  store %struct.GraphStruct* null, %struct.GraphStruct** %1, align 8
  %2 = call noalias i8* @malloc(i64 40) #7
  %3 = bitcast i8* %2 to %struct.GraphStruct*
  store %struct.GraphStruct* %3, %struct.GraphStruct** %1, align 8
  %4 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  %5 = icmp ne %struct.GraphStruct* %4, null
  br i1 %5, label %6, label %15

6:                                                ; preds = %0
  %7 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  %8 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %7, i32 0, i32 0
  store i8* null, i8** %8, align 8
  %9 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  %10 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %9, i32 0, i32 1
  store i32 0, i32* %10, align 8
  %11 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  %12 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %11, i32 0, i32 2
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %12, align 8
  %13 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  %14 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %13, i32 0, i32 3
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %14, align 8
  br label %15

15:                                               ; preds = %6, %0
  %16 = load %struct.GraphStruct*, %struct.GraphStruct** %1, align 8
  ret %struct.GraphStruct* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Graph_delete(%struct.GraphStruct* %0) #0 {
  %2 = alloca %struct.GraphStruct*, align 8
  %3 = alloca %struct.EdgeReferencesStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %2, align 8
  %4 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %5 = icmp ne %struct.GraphStruct* %4, null
  br i1 %5, label %6, label %42

6:                                                ; preds = %1
  %7 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %8 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  call void @free(i8* %9) #7
  %10 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %11 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %10, i32 0, i32 2
  %12 = load %struct.NodeListStruct*, %struct.NodeListStruct** %11, align 8
  call void @NodeList_clear(%struct.NodeListStruct* %12, i1 zeroext true)
  %13 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %14 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %13, i32 0, i32 3
  %15 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %16 = icmp ne %struct.EdgeReferencesStruct* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %6
  %18 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %19 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %18, i32 0, i32 3
  %20 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %19, align 8
  store %struct.EdgeReferencesStruct* %20, %struct.EdgeReferencesStruct** %3, align 8
  br label %21

21:                                               ; preds = %31, %17
  %22 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %3, align 8
  %23 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %22, i32 0, i32 0
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = icmp ne %struct.NodeStruct* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %3, align 8
  %28 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %27, i32 0, i32 1
  %29 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %28, align 8
  %30 = bitcast %struct.EdgeReferencesStruct* %29 to i8*
  call void @free(i8* %30) #7
  br label %31

31:                                               ; preds = %26
  %32 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %3, align 8
  %33 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %32, i32 1
  store %struct.EdgeReferencesStruct* %33, %struct.EdgeReferencesStruct** %3, align 8
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %36 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %35, i32 0, i32 3
  %37 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %36, align 8
  %38 = bitcast %struct.EdgeReferencesStruct* %37 to i8*
  call void @free(i8* %38) #7
  br label %39

39:                                               ; preds = %34, %6
  %40 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %41 = bitcast %struct.GraphStruct* %40 to i8*
  call void @free(i8* %41) #7
  br label %42

42:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %6 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %7 = icmp ne %struct.GraphStruct* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %10 = icmp ne %struct.NodeStruct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i1 false, i1* %3, align 1
  br label %38

12:                                               ; preds = %8
  %13 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %14 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %13, i32 0, i32 2
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %14, align 8
  %16 = icmp eq %struct.NodeListStruct* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = call %struct.NodeListStruct* (...) bitcast (%struct.NodeListStruct* ()* @NodeList_new to %struct.NodeListStruct* (...)*)()
  %19 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %20 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %19, i32 0, i32 2
  store %struct.NodeListStruct* %18, %struct.NodeListStruct** %20, align 8
  %21 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %22 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %21, i32 0, i32 2
  %23 = load %struct.NodeListStruct*, %struct.NodeListStruct** %22, align 8
  %24 = icmp ne %struct.NodeListStruct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i1 false, i1* %3, align 1
  br label %38

26:                                               ; preds = %17
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %28 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %29 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %28, i32 0, i32 2
  %30 = load %struct.NodeListStruct*, %struct.NodeListStruct** %29, align 8
  %31 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %30, i32 0, i32 0
  store %struct.NodeStruct* %27, %struct.NodeStruct** %31, align 8
  store i1 true, i1* %3, align 1
  br label %38

32:                                               ; preds = %12
  %33 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %34 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %33, i32 0, i32 2
  %35 = load %struct.NodeListStruct*, %struct.NodeListStruct** %34, align 8
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %37 = call zeroext i1 @NodeList_insertBack(%struct.NodeListStruct* %35, %struct.NodeStruct* %36)
  store i1 %37, i1* %3, align 1
  br label %38

38:                                               ; preds = %32, %26, %25, %11
  %39 = load i1, i1* %3, align 1
  ret i1 %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %0, i32 %1, i1 zeroext %2) #0 {
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca %struct.GraphStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.NodeListStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %5, align 8
  store i32 %1, i32* %6, align 4
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %7, align 1
  %11 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %12 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %11, i32 0, i32 2
  %13 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  store %struct.NodeListStruct* %13, %struct.NodeListStruct** %8, align 8
  br label %14

14:                                               ; preds = %44, %3
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %16 = icmp ne %struct.NodeListStruct* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %19 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %18, i32 0, i32 0
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %19, align 8
  %21 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %27 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %26, i32 0, i32 0
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %27, align 8
  store %struct.NodeStruct* %28, %struct.NodeStruct** %4, align 8
  br label %49

29:                                               ; preds = %17
  %30 = load i8, i8* %7, align 1
  %31 = trunc i8 %30 to i1
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %34 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %33, i32 0, i32 0
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* %35, i32 %36)
  store %struct.NodeStruct* %37, %struct.NodeStruct** %9, align 8
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %39 = icmp ne %struct.NodeStruct* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  store %struct.NodeStruct* %41, %struct.NodeStruct** %4, align 8
  br label %49

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %46 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %45, i32 0, i32 1
  %47 = load %struct.NodeListStruct*, %struct.NodeListStruct** %46, align 8
  store %struct.NodeListStruct* %47, %struct.NodeListStruct** %8, align 8
  br label %14

48:                                               ; preds = %14
  store %struct.NodeStruct* null, %struct.NodeStruct** %4, align 8
  br label %49

49:                                               ; preds = %48, %40, %25
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  ret %struct.NodeStruct* %50
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* %0, i32 %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.NodeListStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %8 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %7, i32 0, i32 6
  %9 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  store %struct.NodeListStruct* %9, %struct.NodeListStruct** %6, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %12 = icmp ne %struct.NodeListStruct* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %15 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %14, i32 0, i32 0
  %16 = load %struct.NodeStruct*, %struct.NodeStruct** %15, align 8
  %17 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %23 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %22, i32 0, i32 0
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  store %struct.NodeStruct* %24, %struct.NodeStruct** %3, align 8
  br label %31

25:                                               ; preds = %13
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %28 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %27, i32 0, i32 1
  %29 = load %struct.NodeListStruct*, %struct.NodeListStruct** %28, align 8
  store %struct.NodeListStruct* %29, %struct.NodeListStruct** %6, align 8
  br label %10

30:                                               ; preds = %10
  store %struct.NodeStruct* null, %struct.NodeStruct** %3, align 8
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  ret %struct.NodeStruct* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [23 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ConfigurationStruct*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i32, align 4
  %18 = alloca [200 x i8], align 16
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %20 = bitcast [23 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([23 x i8], [23 x i8]* @__const.main.defaultFile, i32 0, i32 0), i64 23, i1 false)
  store i8* null, i8** %7, align 8
  %21 = call %struct.ConfigurationStruct* (...) bitcast (%struct.ConfigurationStruct* ()* @Configuration_new to %struct.ConfigurationStruct* (...)*)()
  store %struct.ConfigurationStruct* %21, %struct.ConfigurationStruct** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8 0, i8* %16, align 1
  store i32 0, i32* %17, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([633 x i8], [633 x i8]* @.str.9, i64 0, i64 0))
  %23 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  %24 = icmp ne %struct.ConfigurationStruct* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1.10, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = getelementptr inbounds [23 x i8], [23 x i8]* %6, i64 0, i64 0
  %32 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  call void @exhaustiveLegSearch(i8* %31, %struct.ConfigurationStruct* %32)
  br label %177

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %130, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = call i32 @getopt(i32 %35, i8** %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2.11, i64 0, i64 0)) #7
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %9, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %131

41:                                               ; preds = %34
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  switch i32 %43, label %129 [
    i32 63, label %44
    i32 104, label %75
    i32 117, label %75
    i32 99, label %77
    i32 105, label %79
    i32 120, label %81
    i32 111, label %83
    i32 115, label %93
    i32 113, label %98
    i32 121, label %108
  ]

44:                                               ; preds = %41
  %45 = load i32, i32* @optopt, align 4
  %46 = icmp eq i32 %45, 99
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3.12, i64 0, i64 0))
  br label %74

50:                                               ; preds = %44
  %51 = load i32, i32* @optopt, align 4
  %52 = icmp eq i32 %51, 105
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @optopt, align 4
  %55 = icmp eq i32 %54, 120
  br i1 %55, label %56, label %59

56:                                               ; preds = %53, %50
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4.13, i64 0, i64 0))
  br label %73

59:                                               ; preds = %53
  %60 = load i32, i32* @optopt, align 4
  %61 = icmp eq i32 %60, 111
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.14, i64 0, i64 0))
  br label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @optopt, align 4
  %67 = icmp eq i32 %66, 113
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6.15, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73, %47
  store i32 1, i32* %3, align 4
  br label %178

75:                                               ; preds = %41, %41
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.16, i64 0, i64 0), i8* getelementptr inbounds ([625 x i8], [625 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %178

77:                                               ; preds = %41
  %78 = load i8*, i8** @optarg, align 8
  store i8* %78, i8** %7, align 8
  store i32 1, i32* %10, align 4
  br label %130

79:                                               ; preds = %41
  %80 = load i8*, i8** @optarg, align 8
  store i8* %80, i8** %7, align 8
  store i32 1, i32* %11, align 4
  br label %130

81:                                               ; preds = %41
  %82 = load i8*, i8** @optarg, align 8
  store i8* %82, i8** %7, align 8
  store i32 1, i32* %12, align 4
  br label %130

83:                                               ; preds = %41
  %84 = load i8*, i8** @optarg, align 8
  %85 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  %86 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %85, i32 0, i32 2
  %87 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %86, align 8
  %88 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %87, i32 0, i32 4
  store i8* %84, i8** %88, align 8
  %89 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  %90 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %89, i32 0, i32 2
  %91 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %90, align 8
  %92 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %91, i32 0, i32 3
  store i8 1, i8* %92, align 2
  store i32 1, i32* %15, align 4
  br label %130

93:                                               ; preds = %41
  %94 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  %95 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %94, i32 0, i32 2
  %96 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %95, align 8
  %97 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %96, i32 0, i32 2
  store i8 1, i8* %97, align 1
  br label %130

98:                                               ; preds = %41
  %99 = load i8*, i8** @optarg, align 8
  %100 = call i32 @atoi(i8* %99) #9
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  store i32 1, i32* %17, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  %107 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  br label %130

108:                                              ; preds = %41
  call void (...) bitcast (void ()* @YAMLOpen to void (...)*)()
  %109 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  store i8 0, i8* %109, align 16
  store i32 0, i32* %19, align 4
  br label %110

110:                                              ; preds = %123, %108
  %111 = load i32, i32* %19, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %126

114:                                              ; preds = %110
  %115 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %116 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %117 = load i8**, i8*** %5, align 8
  %118 = load i32, i32* %19, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.17, i64 0, i64 0), i8* %116, i8* %121) #7
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %19, align 4
  br label %110

126:                                              ; preds = %110
  %127 = getelementptr inbounds [200 x i8], [200 x i8]* %18, i64 0, i64 0
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  call void @YAMLWriteString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* %128)
  br label %130

129:                                              ; preds = %41
  br label %130

130:                                              ; preds = %129, %126, %104, %93, %83, %81, %79, %77
  br label %34

131:                                              ; preds = %34
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %134, %135
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %178

141:                                              ; preds = %131
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %144, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %178

151:                                              ; preds = %141
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %159 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %178

160:                                              ; preds = %154, %151
  %161 = load i32, i32* %10, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i8*, i8** %7, align 8
  %165 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  call void @runBatch(i8* %164, %struct.ConfigurationStruct* %165)
  br label %176

166:                                              ; preds = %160
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i8*, i8** %7, align 8
  %171 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  call void @runInteractively(i8* %170, %struct.ConfigurationStruct* %171)
  br label %175

172:                                              ; preds = %166
  %173 = load i8*, i8** %7, align 8
  %174 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %8, align 8
  call void @exhaustiveLegSearch(i8* %173, %struct.ConfigurationStruct* %174)
  br label %175

175:                                              ; preds = %172, %169
  br label %176

176:                                              ; preds = %175, %163
  br label %177

177:                                              ; preds = %176, %30
  call void (...) bitcast (void ()* @YAMLClose to void (...)*)()
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %157, %148, %138, %75, %74
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @exhaustiveLegSearch(i8* %0, %struct.ConfigurationStruct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ConfigurationStruct*, align 8
  %5 = alloca %struct.GraphStruct*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ConfigurationStruct* %1, %struct.ConfigurationStruct** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.GraphStruct* @parseFile(i8* %7)
  store %struct.GraphStruct* %8, %struct.GraphStruct** %5, align 8
  %9 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %10 = icmp ne %struct.GraphStruct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %13 = icmp ne %struct.ConfigurationStruct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  br label %40

15:                                               ; preds = %11
  %16 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %17 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %16, i32 0, i32 2
  %18 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %17, align 8
  %19 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %15
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %24 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %25 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %24, i32 0, i32 2
  %26 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %25, align 8
  %27 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @findAllPossibleLegs(%struct.GraphStruct* %23, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %36

30:                                               ; preds = %15
  %31 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %32 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %33 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %32, i32 0, i32 2
  %34 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %33, align 8
  %35 = call i32 @findAndLogAllPossibleLegs(%struct.GraphStruct* %31, %struct.SearchOptionsStruct* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %30, %22
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i32 %37)
  %39 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  call void @Graph_delete(%struct.GraphStruct* %39)
  br label %40

40:                                               ; preds = %36, %14
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @runBatch(i8* %0, %struct.ConfigurationStruct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ConfigurationStruct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ConfigurationStruct* %1, %struct.ConfigurationStruct** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 0) #8
  unreachable

17:                                               ; preds = %2
  %18 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %18, double* %8, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %21 = call zeroext i1 @parseConfigFile(i8* %19, %struct.ConfigurationStruct* %20)
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %5, align 1
  %23 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %23, double* %9, align 8
  %24 = load double, double* %9, align 8
  %25 = load double, double* %8, align 8
  %26 = fsub double %24, %25
  store double %26, double* %12, align 8
  %27 = load double, double* %12, align 8
  %28 = fptosi double %27 to i32
  %29 = sdiv i32 %28, 3600
  store i32 %29, i32* %10, align 4
  %30 = load double, double* %12, align 8
  %31 = call double @fmod(double %30, double 3.600000e+03) #7
  store double %31, double* %12, align 8
  %32 = load double, double* %12, align 8
  %33 = fptosi double %32 to i32
  %34 = sdiv i32 %33, 60
  store i32 %34, i32* %11, align 4
  %35 = load double, double* %12, align 8
  %36 = call double @fmod(double %35, double 6.000000e+01) #7
  store double %36, double* %12, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load double, double* %12, align 8
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0), i32 %37, i32 %38, double %39)
  %41 = load i8, i8* %5, align 1
  %42 = trunc i8 %41 to i1
  br i1 %42, label %43, label %45

43:                                               ; preds = %17
  %44 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  call void @doMultiSearches(%struct.ConfigurationStruct* %44)
  br label %45

45:                                               ; preds = %43, %17
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @runInteractively(i8* %0, %struct.ConfigurationStruct* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ConfigurationStruct*, align 8
  %5 = alloca [200 x i8], align 16
  %6 = alloca %struct.GraphStruct*, align 8
  %7 = alloca [25 x i8*], align 16
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  store i8* %0, i8** %3, align 8
  store %struct.ConfigurationStruct* %1, %struct.ConfigurationStruct** %4, align 8
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %8, align 8
  store i8 0, i8* %9, align 1
  %13 = bitcast [3 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast ([3 x i32]* @__const.runInteractively.fullIntSignature to i8*), i64 12, i1 false)
  %14 = load i8*, i8** %3, align 8
  %15 = call %struct.GraphStruct* @parseFile(i8* %14)
  store %struct.GraphStruct* %15, %struct.GraphStruct** %6, align 8
  %16 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %17 = icmp ne %struct.GraphStruct* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  ret void

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %99, %19
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.17, i64 0, i64 0))
  %23 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @gets to i32 (i8*, ...)*)(i8* %23)
  %25 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %26 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  call void @exit(i32 1) #8
  unreachable

29:                                               ; preds = %21
  %30 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)) #9
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %35 = call noalias i8* @strdup(i8* %34) #7
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [25 x i8*], [25 x i8*]* %7, i64 0, i64 %37
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %33, %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 25
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = getelementptr inbounds [200 x i8], [200 x i8]* %5, i64 0, i64 0
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0)) #9
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %21, label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [25 x i8*], [25 x i8*]* %7, i64 0, i64 %53
  store i8* null, i8** %54, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %75, %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [25 x i8*], [25 x i8*]* %7, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %67, 1
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %74

72:                                               ; preds = %60
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %56

78:                                               ; preds = %56
  %79 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 50)
  store %struct.NodePtrVecStruct* %79, %struct.NodePtrVecStruct** %8, align 8
  %80 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %81 = getelementptr inbounds [25 x i8*], [25 x i8*]* %7, i64 0, i64 0
  %82 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %83 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %4, align 8
  %84 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %83, i32 0, i32 2
  %85 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %84, align 8
  %86 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call zeroext i1 @findLabelPath(%struct.GraphStruct* %80, i8** %81, %struct.NodePtrVecStruct* %82, i32 %87)
  %89 = zext i1 %88 to i8
  store i8 %89, i8* %9, align 1
  %90 = load i8, i8* %9, align 1
  %91 = trunc i8 %90 to i1
  br i1 %91, label %92, label %97

92:                                               ; preds = %78
  %93 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %94 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0), i32 %95)
  br label %99

97:                                               ; preds = %78
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %92
  %100 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %100)
  br label %20
}

declare dso_local i32 @gets(...) #3

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #1

; Function Attrs: nounwind
declare dso_local double @fmod(double, double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @Node_new(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NodeStruct*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = call noalias i8* @malloc(i64 56) #7
  %8 = bitcast i8* %7 to %struct.NodeStruct*
  store %struct.NodeStruct* %8, %struct.NodeStruct** %6, align 8
  %9 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %10 = icmp ne %struct.NodeStruct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.NodeStruct* null, %struct.NodeStruct** %3, align 8
  br label %36

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %15 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %18 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %20 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %19, i32 0, i32 2
  store i8* null, i8** %20, align 8
  %21 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %22 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %21, i32 0, i32 3
  store i32 -1, i32* %22, align 8
  %23 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %24 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %23, i32 0, i32 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %26 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %25, i32 0, i32 5
  store %struct.NodeStruct* null, %struct.NodeStruct** %26, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %27, i32 0, i32 6
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %28, align 8
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 7
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %30, align 8
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %31, i32 0, i32 8
  store i32 0, i32* %32, align 8
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %34 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %33, i32 0, i32 9
  store i32 0, i32* %34, align 4
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %35, %struct.NodeStruct** %3, align 8
  br label %36

36:                                               ; preds = %12, %11
  %37 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  ret %struct.NodeStruct* %37
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Node_delete(%struct.NodeStruct* %0) #0 {
  %2 = alloca %struct.NodeStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %2, align 8
  %3 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %4 = icmp ne %struct.NodeStruct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %8 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %7, i32 0, i32 6
  %9 = load %struct.NodeListStruct*, %struct.NodeListStruct** %8, align 8
  %10 = icmp ne %struct.NodeListStruct* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %13 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %12, i32 0, i32 6
  %14 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  call void @NodeList_clear(%struct.NodeListStruct* %14, i1 zeroext true)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %17 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %16, i32 0, i32 7
  %18 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %17, align 8
  %19 = icmp ne %struct.EdgeListStruct* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %22 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %21, i32 0, i32 7
  %23 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %22, align 8
  call void @EdgeList_clear(%struct.EdgeListStruct* %23)
  br label %24

24:                                               ; preds = %20, %15
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  %26 = bitcast %struct.NodeStruct* %25 to i8*
  call void @free(i8* %26) #7
  br label %27

27:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodeList_clear(%struct.NodeListStruct* %0, i1 zeroext %1) #0 {
  %3 = alloca %struct.NodeListStruct*, align 8
  %4 = alloca i8, align 1
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %7 = icmp ne %struct.NodeListStruct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %30

9:                                                ; preds = %2
  %10 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %11 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %10, i32 0, i32 1
  %12 = load %struct.NodeListStruct*, %struct.NodeListStruct** %11, align 8
  %13 = icmp ne %struct.NodeListStruct* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %16 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %15, i32 0, i32 1
  %17 = load %struct.NodeListStruct*, %struct.NodeListStruct** %16, align 8
  %18 = load i8, i8* %4, align 1
  %19 = trunc i8 %18 to i1
  call void @NodeList_clear(%struct.NodeListStruct* %17, i1 zeroext %19)
  br label %20

20:                                               ; preds = %14, %9
  %21 = load i8, i8* %4, align 1
  %22 = trunc i8 %21 to i1
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %25 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %24, i32 0, i32 0
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %25, align 8
  call void @Node_delete(%struct.NodeStruct* %26)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %29 = bitcast %struct.NodeListStruct* %28 to i8*
  call void @free(i8* %29) #7
  br label %30

30:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @EdgeList_clear(%struct.EdgeListStruct* %0) #0 {
  %2 = alloca %struct.EdgeListStruct*, align 8
  store %struct.EdgeListStruct* %0, %struct.EdgeListStruct** %2, align 8
  %3 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %2, align 8
  %4 = icmp ne %struct.EdgeListStruct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  %7 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %2, align 8
  %8 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %7, i32 0, i32 2
  %9 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %8, align 8
  %10 = icmp ne %struct.EdgeListStruct* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %2, align 8
  %13 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %12, i32 0, i32 2
  %14 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  call void @EdgeList_clear(%struct.EdgeListStruct* %14)
  br label %15

15:                                               ; preds = %11, %6
  %16 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %2, align 8
  %17 = bitcast %struct.EdgeListStruct* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @Node_duplicate(%struct.NodeStruct* %0, i32 %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.NodeStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call noalias i8* @malloc(i64 56) #7
  %8 = bitcast i8* %7 to %struct.NodeStruct*
  store %struct.NodeStruct* %8, %struct.NodeStruct** %6, align 8
  %9 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %10 = icmp ne %struct.NodeStruct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %13 = icmp ne %struct.NodeStruct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %2
  store %struct.NodeStruct* null, %struct.NodeStruct** %3, align 8
  br label %50

15:                                               ; preds = %11
  %16 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %17 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %20 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %23 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %25 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %33 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %35 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %38 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %40 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %39, i32 0, i32 5
  store %struct.NodeStruct* null, %struct.NodeStruct** %40, align 8
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %42 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %41, i32 0, i32 6
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %42, align 8
  %43 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %44 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %43, i32 0, i32 7
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %44, align 8
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %46 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %45, i32 0, i32 8
  store i32 0, i32* %46, align 8
  %47 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %48 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %47, i32 0, i32 9
  store i32 0, i32* %48, align 4
  %49 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %49, %struct.NodeStruct** %3, align 8
  br label %50

50:                                               ; preds = %15, %14
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  ret %struct.NodeStruct* %51
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Node_setParent(%struct.NodeStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %3, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %4, align 8
  %5 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %6 = icmp ne %struct.NodeStruct* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %9 = icmp ne %struct.NodeStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %17

11:                                               ; preds = %7
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %13 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %14 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %13, i32 0, i32 5
  store %struct.NodeStruct* %12, %struct.NodeStruct** %14, align 8
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %16 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %15, i32 0, i32 4
  store i32 1, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Node_addInteriorNode(%struct.NodeStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %3, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %4, align 8
  %5 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %6 = icmp ne %struct.NodeStruct* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %9 = icmp ne %struct.NodeStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %40

11:                                               ; preds = %7
  %12 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %13 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %12, i32 0, i32 6
  %14 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %15 = icmp eq %struct.NodeListStruct* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = call %struct.NodeListStruct* @NodeList_new()
  %18 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %19 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %18, i32 0, i32 6
  store %struct.NodeListStruct* %17, %struct.NodeListStruct** %19, align 8
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %21 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %20, i32 0, i32 6
  %22 = load %struct.NodeListStruct*, %struct.NodeListStruct** %21, align 8
  %23 = icmp eq %struct.NodeListStruct* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %40

25:                                               ; preds = %16
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %28 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %27, i32 0, i32 6
  %29 = load %struct.NodeListStruct*, %struct.NodeListStruct** %28, align 8
  %30 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %29, i32 0, i32 0
  store %struct.NodeStruct* %26, %struct.NodeStruct** %30, align 8
  br label %37

31:                                               ; preds = %11
  %32 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %33 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %32, i32 0, i32 6
  %34 = load %struct.NodeListStruct*, %struct.NodeListStruct** %33, align 8
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %36 = call zeroext i1 @NodeList_insertBack(%struct.NodeListStruct* %34, %struct.NodeStruct* %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  call void @Node_setParent(%struct.NodeStruct* %38, %struct.NodeStruct* %39)
  br label %40

40:                                               ; preds = %37, %24, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeListStruct* @NodeList_new() #0 {
  %1 = alloca %struct.NodeListStruct*, align 8
  %2 = alloca %struct.NodeListStruct*, align 8
  %3 = call noalias i8* @malloc(i64 16) #7
  %4 = bitcast i8* %3 to %struct.NodeListStruct*
  store %struct.NodeListStruct* %4, %struct.NodeListStruct** %2, align 8
  %5 = load %struct.NodeListStruct*, %struct.NodeListStruct** %2, align 8
  %6 = icmp ne %struct.NodeListStruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %1, align 8
  br label %14

8:                                                ; preds = %0
  %9 = load %struct.NodeListStruct*, %struct.NodeListStruct** %2, align 8
  %10 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %9, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %10, align 8
  %11 = load %struct.NodeListStruct*, %struct.NodeListStruct** %2, align 8
  %12 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %11, i32 0, i32 1
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %12, align 8
  %13 = load %struct.NodeListStruct*, %struct.NodeListStruct** %2, align 8
  store %struct.NodeListStruct* %13, %struct.NodeListStruct** %1, align 8
  br label %14

14:                                               ; preds = %8, %7
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %1, align 8
  ret %struct.NodeListStruct* %15
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodeList_insertBack(%struct.NodeListStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodeListStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.NodeListStruct*, align 8
  %7 = alloca %struct.NodeListStruct*, align 8
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %8 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %9 = icmp ne %struct.NodeListStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %12 = icmp ne %struct.NodeStruct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i1 false, i1* %3, align 1
  br label %47

14:                                               ; preds = %10
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %16 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %15, i32 0, i32 0
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %16, align 8
  %18 = icmp eq %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %21 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %22 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %21, i32 0, i32 0
  store %struct.NodeStruct* %20, %struct.NodeStruct** %22, align 8
  store i1 true, i1* %3, align 1
  br label %47

23:                                               ; preds = %14
  %24 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  store %struct.NodeListStruct* %24, %struct.NodeListStruct** %6, align 8
  br label %25

25:                                               ; preds = %31, %23
  %26 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %27 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %26, i32 0, i32 1
  %28 = load %struct.NodeListStruct*, %struct.NodeListStruct** %27, align 8
  %29 = icmp ne %struct.NodeListStruct* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %33 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %32, i32 0, i32 1
  %34 = load %struct.NodeListStruct*, %struct.NodeListStruct** %33, align 8
  store %struct.NodeListStruct* %34, %struct.NodeListStruct** %6, align 8
  br label %25

35:                                               ; preds = %25
  %36 = call %struct.NodeListStruct* @NodeList_new()
  store %struct.NodeListStruct* %36, %struct.NodeListStruct** %7, align 8
  %37 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %38 = icmp ne %struct.NodeListStruct* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i1 false, i1* %3, align 1
  br label %47

40:                                               ; preds = %35
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %42 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %43 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %42, i32 0, i32 0
  store %struct.NodeStruct* %41, %struct.NodeStruct** %43, align 8
  %44 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %45 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %46 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %45, i32 0, i32 1
  store %struct.NodeListStruct* %44, %struct.NodeListStruct** %46, align 8
  store i1 true, i1* %3, align 1
  br label %47

47:                                               ; preds = %40, %39, %19, %13
  %48 = load i1, i1* %3, align 1
  ret i1 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Node_addEdgeToNode(%struct.NodeStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.EdgeListStruct*, align 8
  %7 = alloca %struct.EdgeListStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %6, align 8
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %7, align 8
  %8 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %9 = icmp ne %struct.NodeStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %12 = icmp ne %struct.NodeStruct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i1 false, i1* %3, align 1
  br label %59

14:                                               ; preds = %10
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %16 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %15, i32 0, i32 7
  %17 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %16, align 8
  store %struct.EdgeListStruct* %17, %struct.EdgeListStruct** %6, align 8
  br label %18

18:                                               ; preds = %29, %14
  %19 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %20 = icmp ne %struct.EdgeListStruct* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %23 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %22, i32 0, i32 1
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %26 = icmp eq %struct.NodeStruct* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i1 true, i1* %3, align 1
  br label %59

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %31 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %30, i32 0, i32 2
  %32 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %31, align 8
  store %struct.EdgeListStruct* %32, %struct.EdgeListStruct** %6, align 8
  br label %18

33:                                               ; preds = %18
  %34 = call %struct.EdgeListStruct* @EdgeList_new()
  store %struct.EdgeListStruct* %34, %struct.EdgeListStruct** %7, align 8
  %35 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %36 = icmp ne %struct.EdgeListStruct* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i1 false, i1* %3, align 1
  br label %59

38:                                               ; preds = %33
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %40 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %41 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %40, i32 0, i32 1
  store %struct.NodeStruct* %39, %struct.NodeStruct** %41, align 8
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %43 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %46 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %48 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %47, i32 0, i32 7
  %49 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %48, align 8
  %50 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %51 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %50, i32 0, i32 2
  store %struct.EdgeListStruct* %49, %struct.EdgeListStruct** %51, align 8
  %52 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %53 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %54 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %53, i32 0, i32 7
  store %struct.EdgeListStruct* %52, %struct.EdgeListStruct** %54, align 8
  %55 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %56 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i1 true, i1* %3, align 1
  br label %59

59:                                               ; preds = %38, %37, %27, %13
  %60 = load i1, i1* %3, align 1
  ret i1 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.EdgeListStruct* @EdgeList_new() #0 {
  %1 = alloca %struct.EdgeListStruct*, align 8
  %2 = call noalias i8* @malloc(i64 24) #7
  %3 = bitcast i8* %2 to %struct.EdgeListStruct*
  store %struct.EdgeListStruct* %3, %struct.EdgeListStruct** %1, align 8
  %4 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %1, align 8
  %5 = icmp ne %struct.EdgeListStruct* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %1, align 8
  %8 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %7, i32 0, i32 0
  store i32 -1, i32* %8, align 8
  %9 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %1, align 8
  %10 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %9, i32 0, i32 1
  store %struct.NodeStruct* null, %struct.NodeStruct** %10, align 8
  %11 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %1, align 8
  %12 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %11, i32 0, i32 2
  store %struct.EdgeListStruct* null, %struct.EdgeListStruct** %12, align 8
  br label %13

13:                                               ; preds = %6, %0
  %14 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %1, align 8
  ret %struct.EdgeListStruct* %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodeList_insertFront(%struct.NodeListStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodeListStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.NodeListStruct*, align 8
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = call %struct.NodeListStruct* @NodeList_new()
  store %struct.NodeListStruct* %7, %struct.NodeListStruct** %6, align 8
  %8 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %9 = icmp ne %struct.NodeListStruct* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %12 = icmp ne %struct.NodeStruct* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %15 = icmp ne %struct.NodeListStruct* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %10, %2
  store i1 false, i1* %3, align 1
  br label %34

17:                                               ; preds = %13
  %18 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %19 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %18, i32 0, i32 0
  %20 = load %struct.NodeStruct*, %struct.NodeStruct** %19, align 8
  %21 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %22 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %21, i32 0, i32 0
  store %struct.NodeStruct* %20, %struct.NodeStruct** %22, align 8
  %23 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %24 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %23, i32 0, i32 1
  %25 = load %struct.NodeListStruct*, %struct.NodeListStruct** %24, align 8
  %26 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %27 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %26, i32 0, i32 1
  store %struct.NodeListStruct* %25, %struct.NodeListStruct** %27, align 8
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %29 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %30 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %29, i32 0, i32 0
  store %struct.NodeStruct* %28, %struct.NodeStruct** %30, align 8
  %31 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  %32 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %33 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %32, i32 0, i32 1
  store %struct.NodeListStruct* %31, %struct.NodeListStruct** %33, align 8
  store i1 true, i1* %3, align 1
  br label %34

34:                                               ; preds = %17, %16
  %35 = load i1, i1* %3, align 1
  ret i1 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* %0, i32 %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.EdgeListStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.EdgeListStruct*, align 8
  %7 = alloca %struct.EdgeListStruct*, align 8
  store %struct.EdgeListStruct* %0, %struct.EdgeListStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %9 = icmp ne %struct.EdgeListStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %44

11:                                               ; preds = %2
  %12 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %13 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %19 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i1 true, i1* %3, align 1
  br label %44

20:                                               ; preds = %11
  %21 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  store %struct.EdgeListStruct* %21, %struct.EdgeListStruct** %6, align 8
  br label %22

22:                                               ; preds = %28, %20
  %23 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %24 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %23, i32 0, i32 2
  %25 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %24, align 8
  %26 = icmp ne %struct.EdgeListStruct* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %30 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %29, i32 0, i32 2
  %31 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %30, align 8
  store %struct.EdgeListStruct* %31, %struct.EdgeListStruct** %6, align 8
  br label %22

32:                                               ; preds = %22
  %33 = call %struct.EdgeListStruct* @EdgeList_new()
  store %struct.EdgeListStruct* %33, %struct.EdgeListStruct** %7, align 8
  %34 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %35 = icmp ne %struct.EdgeListStruct* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i1 false, i1* %3, align 1
  br label %44

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %40 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %42 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %6, align 8
  %43 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %42, i32 0, i32 2
  store %struct.EdgeListStruct* %41, %struct.EdgeListStruct** %43, align 8
  store i1 true, i1* %3, align 1
  br label %44

44:                                               ; preds = %37, %36, %16, %10
  %45 = load i1, i1* %3, align 1
  ret i1 %45
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @buildEntranceList(%struct.NodeStruct* %0, %struct.IntVectorStruct* %1) #0 {
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.NodeStruct* %0, %struct.NodeStruct** %3, align 8
  store %struct.IntVectorStruct* %1, %struct.IntVectorStruct** %4, align 8
  %7 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %8 = icmp ne %struct.NodeStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %11 = icmp ne %struct.IntVectorStruct* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  br label %76

13:                                               ; preds = %9
  %14 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %15 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %76

22:                                               ; preds = %13
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %25 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub nsw i32 %26, 2
  %28 = icmp ne i32 %23, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %37 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %36, i32 0, i32 7
  %38 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %37, align 8
  %39 = icmp ne %struct.EdgeListStruct* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = call %struct.EdgeListStruct* (...) bitcast (%struct.EdgeListStruct* ()* @EdgeList_new to %struct.EdgeListStruct* (...)*)()
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %43 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %42, i32 0, i32 7
  store %struct.EdgeListStruct* %41, %struct.EdgeListStruct** %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %46 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %45, i32 0, i32 7
  %47 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %46, align 8
  %48 = icmp ne %struct.EdgeListStruct* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  store i32 2, i32* %5, align 4
  br label %50

50:                                               ; preds = %72, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %53 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 7
  %59 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %58, align 8
  %60 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %61 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* %59, i32 %66)
  %68 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %69 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %56
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %50

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %75, %44, %21, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* %0) #0 {
  %2 = alloca %struct.NodeStruct*, align 8
  %3 = alloca %struct.IntVectorStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.NodeStruct*, align 8
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %3, align 8
  %7 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %8 = icmp eq %struct.IntVectorStruct* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %11 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %1
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %86

15:                                               ; preds = %9
  %16 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %17 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.NodeStruct* @Node_new(i32 %20, i32 -1)
  store %struct.NodeStruct* %21, %struct.NodeStruct** %6, align 8
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %23 = icmp ne %struct.NodeStruct* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %86

25:                                               ; preds = %15
  %26 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %27 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %33 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 2
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %25
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %40 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1.29, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %37, %25
  %46 = load i32, i32* %5, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = call %struct.EdgeListStruct* (...) bitcast (%struct.EdgeListStruct* ()* @EdgeList_new to %struct.EdgeListStruct* (...)*)()
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 7
  store %struct.EdgeListStruct* %49, %struct.EdgeListStruct** %51, align 8
  %52 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %53 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %52, i32 0, i32 7
  %54 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %53, align 8
  %55 = icmp ne %struct.EdgeListStruct* %54, null
  br i1 %55, label %56, label %83

56:                                               ; preds = %48
  store i32 2, i32* %4, align 4
  br label %57

57:                                               ; preds = %79, %56
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %60 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %65 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %64, i32 0, i32 7
  %66 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %65, align 8
  %67 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %3, align 8
  %68 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call zeroext i1 @EdgeList_insertNodeId(%struct.EdgeListStruct* %66, i32 %73)
  %75 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %76 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %63
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %45
  %85 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  store %struct.NodeStruct* %85, %struct.NodeStruct** %2, align 8
  br label %86

86:                                               ; preds = %84, %24, %14
  %87 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  ret %struct.NodeStruct* %87
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @resolveNodeEdges(%struct.GraphStruct* %0, %struct.NodeStruct* %1, i1 zeroext %2) #0 {
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca %struct.EdgeListStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca i8, align 1
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %10 = zext i1 %2 to i8
  store i8 %10, i8* %6, align 1
  %11 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %12 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %11, i32 0, i32 7
  %13 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %12, align 8
  store %struct.EdgeListStruct* %13, %struct.EdgeListStruct** %7, align 8
  br label %14

14:                                               ; preds = %124, %3
  %15 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %16 = icmp ne %struct.EdgeListStruct* %15, null
  br i1 %16, label %17, label %128

17:                                               ; preds = %14
  %18 = load i8, i8* %6, align 1
  %19 = trunc i8 %18 to i1
  br i1 %19, label %20, label %86

20:                                               ; preds = %17
  %21 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %22 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %23 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %21, i32 %24, i1 zeroext true)
  store %struct.NodeStruct* %25, %struct.NodeStruct** %8, align 8
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %27 = icmp ne %struct.NodeStruct* %26, null
  br i1 %27, label %28, label %76

28:                                               ; preds = %20
  store i8 1, i8* %9, align 1
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %30 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %35 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %68

38:                                               ; preds = %33, %28
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %40 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %39, i32 0, i32 5
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %40, align 8
  %42 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %43 = icmp ne %struct.NodeStruct* %41, %42
  br i1 %43, label %44, label %67

44:                                               ; preds = %38
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %47 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %50 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.30, i64 0, i64 0), i32 %48, i32 %51)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %55 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5.32, i64 0, i64 0)
  %63 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %64 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3.33, i64 0, i64 0), i32 %56, i8* %62, i32 %65)
  store i8 0, i8* %9, align 1
  br label %67

67:                                               ; preds = %44, %38
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i8, i8* %9, align 1
  %70 = trunc i8 %69 to i1
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %73 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %74 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %73, i32 0, i32 1
  store %struct.NodeStruct* %72, %struct.NodeStruct** %74, align 8
  br label %75

75:                                               ; preds = %71, %68
  br label %85

76:                                               ; preds = %20
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %78 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %79 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %82 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6.34, i64 0, i64 0), i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %76, %75
  br label %123

86:                                               ; preds = %17
  %87 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %88 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %89 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %87, i32 %90, i1 zeroext false)
  store %struct.NodeStruct* %91, %struct.NodeStruct** %8, align 8
  %92 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %93 = icmp ne %struct.NodeStruct* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %96 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %97 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %96, i32 0, i32 1
  store %struct.NodeStruct* %95, %struct.NodeStruct** %97, align 8
  br label %122

98:                                               ; preds = %86
  %99 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %100 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %99, i32 0, i32 5
  %101 = load %struct.NodeStruct*, %struct.NodeStruct** %100, align 8
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %103 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.NodeStruct* @Graph_findContainedNode(%struct.NodeStruct* %101, i32 %104)
  store %struct.NodeStruct* %105, %struct.NodeStruct** %8, align 8
  %106 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %107 = icmp ne %struct.NodeStruct* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %110 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %111 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %110, i32 0, i32 1
  store %struct.NodeStruct* %109, %struct.NodeStruct** %111, align 8
  br label %121

112:                                              ; preds = %98
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %115 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %118 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7.35, i64 0, i64 0), i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %112, %108
  br label %122

122:                                              ; preds = %121, %94
  br label %123

123:                                              ; preds = %122, %85
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %7, align 8
  %126 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %125, i32 0, i32 2
  %127 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %126, align 8
  store %struct.EdgeListStruct* %127, %struct.EdgeListStruct** %7, align 8
  br label %14

128:                                              ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.GraphStruct* @parseFile(i8* %0) #0 {
  %2 = alloca %struct.GraphStruct*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.IntVectorStruct*, align 8
  %6 = alloca %struct.CharVectorStruct*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.NodeListStruct*, align 8
  %13 = alloca %struct.NodeListStruct*, align 8
  %14 = alloca %struct.GraphStruct*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %5, align 8
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %6, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %7, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %8, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %9, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %12, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %13, align 8
  store %struct.GraphStruct* null, %struct.GraphStruct** %14, align 8
  store i32 50, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8 0, i8* %17, align 1
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

22:                                               ; preds = %1
  %23 = load i8*, i8** %3, align 8
  %24 = call %struct._IO_FILE* @fopen(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.38, i64 0, i64 0))
  store %struct._IO_FILE* %24, %struct._IO_FILE** %4, align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = icmp ne %struct._IO_FILE* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9.39, i64 0, i64 0), i8* %28)
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

30:                                               ; preds = %22
  %31 = call %struct.GraphStruct* (...) bitcast (%struct.GraphStruct* ()* @Graph_new to %struct.GraphStruct* (...)*)()
  store %struct.GraphStruct* %31, %struct.GraphStruct** %14, align 8
  %32 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %33 = icmp ne %struct.GraphStruct* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

35:                                               ; preds = %30
  %36 = load i8*, i8** %3, align 8
  %37 = call noalias i8* @strdup(i8* %36) #7
  %38 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %39 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = call %struct.CharVectorStruct* @CharVector_new(i32 1024)
  store %struct.CharVectorStruct* %40, %struct.CharVectorStruct** %6, align 8
  store i32 0, i32* %18, align 4
  %41 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %43 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %41, %struct._IO_FILE* %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %45 = call i32 @feof(%struct._IO_FILE* %44) #7
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %35
  %48 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %49 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10.40, i64 0, i64 0), i8* %50, i64 10) #9
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %55 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  %58 = call i32 @atoi(i8* %57) #9
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11.41, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %15, align 4
  call void @YAMLWriteInt(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12.42, i64 0, i64 0), i32 %61)
  br label %65

62:                                               ; preds = %47, %35
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.43, i64 0, i64 0))
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

65:                                               ; preds = %53
  %66 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %68 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %66, %struct._IO_FILE* %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %70 = call i32 @feof(%struct._IO_FILE* %69) #7
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %65
  %73 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %74 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14.44, i64 0, i64 0), i8* %75, i64 13) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %80 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 13
  %83 = call i32 @atoi(i8* %82) #9
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15.45, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %16, align 4
  call void @YAMLWriteInt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16.46, i64 0, i64 0), i32 %86)
  br label %90

87:                                               ; preds = %72, %65
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.43, i64 0, i64 0))
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

90:                                               ; preds = %78
  %91 = call %struct.IntVectorStruct* @IntVector_new(i32 8)
  store %struct.IntVectorStruct* %91, %struct.IntVectorStruct** %5, align 8
  br label %92

92:                                               ; preds = %139, %90
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %94 = call i32 @feof(%struct._IO_FILE* %93) #7
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br i1 %96, label %97, label %142

97:                                               ; preds = %92
  %98 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %100 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %98, %struct._IO_FILE* %99)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %102 = call i32 @feof(%struct._IO_FILE* %101) #7
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %142

105:                                              ; preds = %97
  %106 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %107 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %106, i32 0, i32 2
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17.47, i64 0, i64 0), i8* %108, i64 10) #9
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %142

112:                                              ; preds = %105
  %113 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %114 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %115 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* %113, i8* %116)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %139

120:                                              ; preds = %112
  %121 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %122 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* %121)
  store %struct.NodeStruct* %122, %struct.NodeStruct** %7, align 8
  %123 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %124 = icmp ne %struct.NodeStruct* %123, null
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %127 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %128 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* %126, %struct.NodeStruct* %127)
  %129 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %130 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %133 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %135 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %125, %120
  br label %139

139:                                              ; preds = %138, %112
  %140 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %141 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  br label %92

142:                                              ; preds = %111, %104, %92
  br label %143

143:                                              ; preds = %256, %142
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %145 = call i32 @feof(%struct._IO_FILE* %144) #7
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br i1 %147, label %148, label %257

148:                                              ; preds = %143
  %149 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %151 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %149, %struct._IO_FILE* %150)
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %153 = call i32 @feof(%struct._IO_FILE* %152) #7
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %257

156:                                              ; preds = %148
  %157 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %158 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %157, i32 0, i32 2
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18.48, i64 0, i64 0), i8* %159, i64 12) #9
  %161 = icmp eq i32 %160, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %17, align 1
  %163 = load i8, i8* %17, align 1
  %164 = trunc i8 %163 to i1
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  br label %257

166:                                              ; preds = %156
  %167 = call i16** @__ctype_b_loc() #10
  %168 = load i16*, i16** %167, align 8
  %169 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %170 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %169, i32 0, i32 2
  %171 = load i8*, i8** %170, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i16, i16* %168, i64 %175
  %177 = load i16, i16* %176, align 2
  %178 = zext i16 %177 to i32
  %179 = and i32 %178, 2048
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %166
  %182 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %183 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %182, i32 0, i32 2
  %184 = load i8*, i8** %183, align 8
  %185 = call i32 @atoi(i8* %184) #9
  store i32 %185, i32* %10, align 4
  br label %187

186:                                              ; preds = %166
  store i32 -1, i32* %10, align 4
  br label %187

187:                                              ; preds = %186, %181
  %188 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %189 = load i32, i32* %10, align 4
  %190 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %188, i32 %189, i1 zeroext false)
  store %struct.NodeStruct* %190, %struct.NodeStruct** %8, align 8
  %191 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %192 = icmp eq %struct.NodeStruct* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19.49, i64 0, i64 0), i32 %195)
  br label %257

197:                                              ; preds = %187
  br label %198

198:                                              ; preds = %253, %197
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %200 = call i32 @feof(%struct._IO_FILE* %199) #7
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  br i1 %202, label %203, label %256

203:                                              ; preds = %198
  %204 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %206 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %204, %struct._IO_FILE* %205)
  %207 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %208 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %207, i32 0, i32 2
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17.47, i64 0, i64 0), i8* %209, i64 10) #9
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %203
  br label %256

213:                                              ; preds = %203
  %214 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %215 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %216 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %215, i32 0, i32 2
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @IntVector_createFromString(%struct.IntVectorStruct* %214, i8* %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %253

221:                                              ; preds = %213
  %222 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %223 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %222, i32 0, i32 2
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %228 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = icmp eq i32 %226, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %221
  %232 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %233 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  call void @buildEntranceList(%struct.NodeStruct* %232, %struct.IntVectorStruct* %233)
  br label %252

234:                                              ; preds = %221
  %235 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %236 = call %struct.NodeStruct* @buildNodeFromData(%struct.IntVectorStruct* %235)
  store %struct.NodeStruct* %236, %struct.NodeStruct** %7, align 8
  %237 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %238 = icmp ne %struct.NodeStruct* %237, null
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %241 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %240, %struct.NodeStruct* %241)
  %242 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %243 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %246 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  %247 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %248 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 8
  br label %251

251:                                              ; preds = %239, %234
  br label %252

252:                                              ; preds = %251, %231
  br label %253

253:                                              ; preds = %252, %213
  %254 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  %255 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %254, i32 0, i32 0
  store i32 0, i32* %255, align 8
  br label %198

256:                                              ; preds = %212, %198
  br label %143

257:                                              ; preds = %193, %165, %155, %143
  %258 = load i32, i32* %15, align 4
  %259 = call %struct.SystemCallMapStruct* @SystemCallMap_new(i32 %258)
  %260 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %261 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %260, i32 0, i32 4
  store %struct.SystemCallMapStruct* %259, %struct.SystemCallMapStruct** %261, align 8
  %262 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %263 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %262, i32 0, i32 4
  %264 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %263, align 8
  %265 = icmp eq %struct.SystemCallMapStruct* %264, null
  br i1 %265, label %266, label %268

266:                                              ; preds = %257
  %267 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %5, align 8
  call void @IntVector_delete(%struct.IntVectorStruct* %267)
  store %struct.GraphStruct* null, %struct.GraphStruct** %2, align 8
  br label %430

268:                                              ; preds = %257
  %269 = load i8, i8* %17, align 1
  %270 = trunc i8 %269 to i1
  br i1 %270, label %271, label %372

271:                                              ; preds = %268
  br label %272

272:                                              ; preds = %370, %271
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %274 = call i32 @feof(%struct._IO_FILE* %273) #7
  %275 = icmp ne i32 %274, 0
  %276 = xor i1 %275, true
  br i1 %276, label %277, label %371

277:                                              ; preds = %272
  %278 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %280 = call i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %278, %struct._IO_FILE* %279)
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %282 = call i32 @feof(%struct._IO_FILE* %281) #7
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %371

285:                                              ; preds = %277
  %286 = call i16** @__ctype_b_loc() #10
  %287 = load i16*, i16** %286, align 8
  %288 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %289 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %288, i32 0, i32 2
  %290 = load i8*, i8** %289, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 0
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i16, i16* %287, i64 %294
  %296 = load i16, i16* %295, align 2
  %297 = zext i16 %296 to i32
  %298 = and i32 %297, 2048
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %285
  %301 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %302 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %301, i32 0, i32 2
  %303 = load i8*, i8** %302, align 8
  %304 = call i32 @atoi(i8* %303) #9
  store i32 %304, i32* %10, align 4
  br label %306

305:                                              ; preds = %285
  store i32 -1, i32* %10, align 4
  br label %306

306:                                              ; preds = %305, %300
  %307 = load i32, i32* %10, align 4
  %308 = icmp sge i32 %307, 0
  br i1 %308, label %309, label %370

309:                                              ; preds = %306
  store i32 0, i32* %18, align 4
  br label %310

310:                                              ; preds = %333, %309
  %311 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %312 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %311, i32 0, i32 2
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %18, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %330

320:                                              ; preds = %310
  %321 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %322 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = load i32, i32* %18, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %323, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 %328, 32
  br label %330

330:                                              ; preds = %320, %310
  %331 = phi i1 [ false, %310 ], [ %329, %320 ]
  br i1 %331, label %332, label %336

332:                                              ; preds = %330
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %18, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %18, align 4
  br label %310

336:                                              ; preds = %330
  %337 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %338 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %337, i32 0, i32 2
  %339 = load i8*, i8** %338, align 8
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i8, i8* %339, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp eq i32 %344, 32
  br i1 %345, label %346, label %369

346:                                              ; preds = %336
  %347 = load i32, i32* %18, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %18, align 4
  %349 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %350 = load i32, i32* %10, align 4
  %351 = call %struct.NodeStruct* @Graph_findNode(%struct.GraphStruct* %349, i32 %350, i1 zeroext true)
  store %struct.NodeStruct* %351, %struct.NodeStruct** %9, align 8
  %352 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %353 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = load i32, i32* %18, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %354, i64 %356
  call void @pruneLine(i8* %357)
  %358 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %359 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %358, i32 0, i32 4
  %360 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %359, align 8
  %361 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  %362 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 8
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, i8* %363, i64 %365
  %367 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  %368 = call zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* %360, i8* %366, %struct.NodeStruct* %367)
  br label %369

369:                                              ; preds = %346, %336
  br label %370

370:                                              ; preds = %369, %306
  br label %272

371:                                              ; preds = %284, %272
  br label %372

372:                                              ; preds = %371, %268
  %373 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %6, align 8
  call void @CharVector_delete(%struct.CharVectorStruct* %373)
  %374 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %375 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %374, i32 0, i32 2
  %376 = load %struct.NodeListStruct*, %struct.NodeListStruct** %375, align 8
  store %struct.NodeListStruct* %376, %struct.NodeListStruct** %12, align 8
  br label %377

377:                                              ; preds = %403, %372
  %378 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %379 = icmp ne %struct.NodeListStruct* %378, null
  br i1 %379, label %380, label %407

380:                                              ; preds = %377
  %381 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %382 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %383 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %382, i32 0, i32 0
  %384 = load %struct.NodeStruct*, %struct.NodeStruct** %383, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* %381, %struct.NodeStruct* %384, i1 zeroext true)
  %385 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %386 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %385, i32 0, i32 0
  %387 = load %struct.NodeStruct*, %struct.NodeStruct** %386, align 8
  %388 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %387, i32 0, i32 6
  %389 = load %struct.NodeListStruct*, %struct.NodeListStruct** %388, align 8
  store %struct.NodeListStruct* %389, %struct.NodeListStruct** %13, align 8
  br label %390

390:                                              ; preds = %398, %380
  %391 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %392 = icmp ne %struct.NodeListStruct* %391, null
  br i1 %392, label %393, label %402

393:                                              ; preds = %390
  %394 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %395 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %396 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %395, i32 0, i32 0
  %397 = load %struct.NodeStruct*, %struct.NodeStruct** %396, align 8
  call void @resolveNodeEdges(%struct.GraphStruct* %394, %struct.NodeStruct* %397, i1 zeroext false)
  br label %398

398:                                              ; preds = %393
  %399 = load %struct.NodeListStruct*, %struct.NodeListStruct** %13, align 8
  %400 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %399, i32 0, i32 1
  %401 = load %struct.NodeListStruct*, %struct.NodeListStruct** %400, align 8
  store %struct.NodeListStruct* %401, %struct.NodeListStruct** %13, align 8
  br label %390

402:                                              ; preds = %390
  br label %403

403:                                              ; preds = %402
  %404 = load %struct.NodeListStruct*, %struct.NodeListStruct** %12, align 8
  %405 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %404, i32 0, i32 1
  %406 = load %struct.NodeListStruct*, %struct.NodeListStruct** %405, align 8
  store %struct.NodeListStruct* %406, %struct.NodeListStruct** %12, align 8
  br label %377

407:                                              ; preds = %377
  %408 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %409 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %408, i32 0, i32 4
  %410 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %409, align 8
  %411 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20.50, i64 0, i64 0), i32 %412)
  %414 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %415 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %414, i32 0, i32 4
  %416 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %415, align 8
  %417 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  call void @YAMLWriteInt(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21.51, i64 0, i64 0), i32 %418)
  %419 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %420 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %419, i32 0, i32 2
  %421 = load %struct.NodeListStruct*, %struct.NodeListStruct** %420, align 8
  %422 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %423 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 8
  %425 = call %struct.EdgeReferencesStruct* @SearchDiagram_build(%struct.NodeListStruct* %421, i32 %424)
  %426 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  %427 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %426, i32 0, i32 3
  store %struct.EdgeReferencesStruct* %425, %struct.EdgeReferencesStruct** %427, align 8
  %428 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22.52, i64 0, i64 0))
  %429 = load %struct.GraphStruct*, %struct.GraphStruct** %14, align 8
  store %struct.GraphStruct* %429, %struct.GraphStruct** %2, align 8
  br label %430

430:                                              ; preds = %407, %266, %87, %62, %34, %27, %21
  %431 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  ret %struct.GraphStruct* %431
}

; Function Attrs: nounwind
declare dso_local i32 @feof(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind uwtable
define internal void @pruneLine(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %39, %1
  %5 = load i8*, i8** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, i8* %5, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %42

12:                                               ; preds = %4
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 13
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 0, i8* %24, align 1
  br label %42

25:                                               ; preds = %12
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8 0, i8* %37, align 1
  br label %42

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %4

42:                                               ; preds = %33, %20, %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8** @parseSignature(i8* %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8** null, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i8** null, i8*** %2, align 8
  br label %92

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %37, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %13
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 32
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  store i8 0, i8* %35, align 1
  br label %36

36:                                               ; preds = %29, %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %13

40:                                               ; preds = %13
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = call noalias i8* @malloc(i64 %44) #7
  %46 = bitcast i8* %45 to i8**
  store i8** %46, i8*** %7, align 8
  store i32 0, i32* %4, align 4
  %47 = load i8**, i8*** %7, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %90

49:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %8, align 8
  %59 = load i8*, i8** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = call noalias i8* @strdup(i8* %62) #7
  %64 = load i8**, i8*** %7, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  store i8* %63, i8** %67, align 8
  br label %68

68:                                               ; preds = %76, %54
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %68

79:                                               ; preds = %68
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %50

85:                                               ; preds = %50
  %86 = load i8**, i8*** %7, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %86, i64 %88
  store i8* null, i8** %89, align 8
  br label %90

90:                                               ; preds = %85, %40
  %91 = load i8**, i8*** %7, align 8
  store i8** %91, i8*** %2, align 8
  br label %92

92:                                               ; preds = %90, %11
  %93 = load i8**, i8*** %2, align 8
  ret i8** %93
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @parseConfigFile(i8* %0, %struct.ConfigurationStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ConfigurationStruct*, align 8
  %6 = alloca [1000 x i8], align 16
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ConfigurationStruct* %1, %struct.ConfigurationStruct** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8.38, i64 0, i64 0))
  store %struct._IO_FILE* %12, %struct._IO_FILE** %7, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %14 = icmp ne %struct._IO_FILE* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23.55, i64 0, i64 0), i8* %16)
  store i1 false, i1* %3, align 1
  br label %242

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24.56, i64 0, i64 0), i8* %19)
  br label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %24 = call i8* @fgets(i8* %22, i32 1000, %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %26 = call i32 @feof(%struct._IO_FILE* %25) #7
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %30 = call i32 @strncmp(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25.57, i64 0, i64 0), i8* %29, i64 24) #9
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %21
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26.58, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

34:                                               ; preds = %28
  %35 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %37 = call i8* @fgets(i8* %35, i32 1000, %struct._IO_FILE* %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %39 = call i32 @feof(%struct._IO_FILE* %38) #7
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %43 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* %42, i64 5) #9
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %34
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.28.59, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

47:                                               ; preds = %41
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 6
  %49 = call i32 @atoi(i8* %48) #9
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.29, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

54:                                               ; preds = %47
  %55 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %57 = call i8* @fgets(i8* %55, i32 1000, %struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %59 = call i32 @feof(%struct._IO_FILE* %58) #7
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %63 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8* %62, i64 10) #9
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %54
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

67:                                               ; preds = %61
  %68 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 11
  %69 = call i32 @atoi(i8* %68) #9
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

74:                                               ; preds = %67
  %75 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %77 = call i8* @fgets(i8* %75, i32 1000, %struct._IO_FILE* %76)
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %79 = call i32 @feof(%struct._IO_FILE* %78) #7
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %83 = call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i8* %82, i64 11) #9
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %74
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.31, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

87:                                               ; preds = %81
  %88 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 12
  %89 = call i32 @strncmp(i8* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i64 4) #9
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %93 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %92, i32 0, i32 2
  %94 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %93, align 8
  %95 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %94, i32 0, i32 0
  store i32 0, i32* %95, align 8
  br label %101

96:                                               ; preds = %87
  %97 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %98 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %97, i32 0, i32 2
  %99 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %98, align 8
  %100 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = call noalias i8* @malloc(i64 %105) #7
  %107 = bitcast i8* %106 to %struct.GraphStruct**
  %108 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %109 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %108, i32 0, i32 0
  store %struct.GraphStruct** %107, %struct.GraphStruct*** %109, align 8
  %110 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %111 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %110, i32 0, i32 0
  %112 = load %struct.GraphStruct**, %struct.GraphStruct*** %111, align 8
  %113 = icmp ne %struct.GraphStruct** %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %101
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

116:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %117

117:                                              ; preds = %160, %116
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %163

121:                                              ; preds = %117
  %122 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %124 = call i8* @fgets(i8* %122, i32 1000, %struct._IO_FILE* %123)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %126 = call i32 @feof(%struct._IO_FILE* %125) #7
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %121
  %129 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %130 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0), i8* %129, i64 5) #9
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128, %121
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.37, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

134:                                              ; preds = %128
  %135 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  call void @pruneLine(i8* %135)
  %136 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  %137 = call %struct.GraphStruct* @parseFile(i8* %136)
  %138 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %139 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %138, i32 0, i32 0
  %140 = load %struct.GraphStruct**, %struct.GraphStruct*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %140, i64 %142
  store %struct.GraphStruct* %137, %struct.GraphStruct** %143, align 8
  %144 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %145 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %144, i32 0, i32 0
  %146 = load %struct.GraphStruct**, %struct.GraphStruct*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %146, i64 %148
  %150 = load %struct.GraphStruct*, %struct.GraphStruct** %149, align 8
  %151 = icmp ne %struct.GraphStruct* %150, null
  br i1 %151, label %159, label %152

152:                                              ; preds = %134
  %153 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 5
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* %153)
  %155 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %156 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %155, i32 0, i32 0
  %157 = load %struct.GraphStruct**, %struct.GraphStruct*** %156, align 8
  %158 = bitcast %struct.GraphStruct** %157 to i8*
  call void @free(i8* %158) #7
  store i1 false, i1* %3, align 1
  br label %242

159:                                              ; preds = %134
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  br label %117

163:                                              ; preds = %117
  %164 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %165 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %164, i32 0, i32 0
  %166 = load %struct.GraphStruct**, %struct.GraphStruct*** %165, align 8
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %166, i64 %168
  store %struct.GraphStruct* null, %struct.GraphStruct** %169, align 8
  %170 = load i32, i32* %9, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = call noalias i8* @malloc(i64 %173) #7
  %175 = bitcast i8* %174 to i8***
  %176 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %177 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %176, i32 0, i32 1
  store i8*** %175, i8**** %177, align 8
  %178 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %179 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %178, i32 0, i32 1
  %180 = load i8***, i8**** %179, align 8
  %181 = icmp ne i8*** %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %163
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.39, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

184:                                              ; preds = %163
  store i32 0, i32* %10, align 4
  br label %185

185:                                              ; preds = %232, %184
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %235

189:                                              ; preds = %185
  %190 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %192 = call i8* @fgets(i8* %190, i32 1000, %struct._IO_FILE* %191)
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %194 = call i32 @feof(%struct._IO_FILE* %193) #7
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %198 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0), i8* %197, i64 10) #9
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %196, %189
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.41, i64 0, i64 0))
  store i1 false, i1* %3, align 1
  br label %242

202:                                              ; preds = %196
  %203 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  call void @pruneLine(i8* %203)
  %204 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  %205 = call i8** @parseSignature(i8* %204)
  %206 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %207 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %206, i32 0, i32 1
  %208 = load i8***, i8**** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8**, i8*** %208, i64 %210
  store i8** %205, i8*** %211, align 8
  %212 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %213 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %212, i32 0, i32 1
  %214 = load i8***, i8**** %213, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8**, i8*** %214, i64 %216
  %218 = load i8**, i8*** %217, align 8
  %219 = icmp ne i8** %218, null
  br i1 %219, label %231, label %220

220:                                              ; preds = %202
  %221 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 10
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* %221)
  %223 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %224 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %223, i32 0, i32 0
  %225 = load %struct.GraphStruct**, %struct.GraphStruct*** %224, align 8
  %226 = bitcast %struct.GraphStruct** %225 to i8*
  call void @free(i8* %226) #7
  %227 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %228 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %227, i32 0, i32 1
  %229 = load i8***, i8**** %228, align 8
  %230 = bitcast i8*** %229 to i8*
  call void @free(i8* %230) #7
  store i1 false, i1* %3, align 1
  br label %242

231:                                              ; preds = %202
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %185

235:                                              ; preds = %185
  %236 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %5, align 8
  %237 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %236, i32 0, i32 1
  %238 = load i8***, i8**** %237, align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8**, i8*** %238, i64 %240
  store i8** null, i8*** %241, align 8
  store i1 true, i1* %3, align 1
  br label %242

242:                                              ; preds = %235, %220, %200, %182, %152, %132, %114, %85, %72, %65, %52, %45, %32, %15
  %243 = load i1, i1* %3, align 1
  ret i1 %243
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @doMultiSearches(%struct.ConfigurationStruct* %0) #0 {
  %2 = alloca %struct.ConfigurationStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.GraphStruct*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  store %struct.ConfigurationStruct* %0, %struct.ConfigurationStruct** %2, align 8
  %15 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %15, double* %10, align 8
  %16 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 64)
  store %struct.NodePtrVecStruct* %16, %struct.NodePtrVecStruct** %3, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %74, %1
  %18 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %19 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %18, i32 0, i32 1
  %20 = load i8***, i8**** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8**, i8*** %20, i64 %22
  %24 = load i8**, i8*** %23, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %77

26:                                               ; preds = %17
  %27 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %28 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %27, i32 0, i32 1
  %29 = load i8***, i8**** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8**, i8*** %29, i64 %31
  %33 = load i8**, i8*** %32, align 8
  store i8** %33, i8*** %6, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %70, %26
  %35 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %36 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %35, i32 0, i32 0
  %37 = load %struct.GraphStruct**, %struct.GraphStruct*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %37, i64 %39
  %41 = load %struct.GraphStruct*, %struct.GraphStruct** %40, align 8
  %42 = icmp ne %struct.GraphStruct* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %34
  %44 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %45 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %44, i32 0, i32 0
  %46 = load %struct.GraphStruct**, %struct.GraphStruct*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.GraphStruct*, %struct.GraphStruct** %46, i64 %48
  %50 = load %struct.GraphStruct*, %struct.GraphStruct** %49, align 8
  store %struct.GraphStruct* %50, %struct.GraphStruct** %5, align 8
  %51 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %52 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %54 = call i32 @fflush(%struct._IO_FILE* %53)
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %5, align 8
  %56 = load i8**, i8*** %6, align 8
  %57 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %58 = load %struct.ConfigurationStruct*, %struct.ConfigurationStruct** %2, align 8
  %59 = getelementptr inbounds %struct.ConfigurationStruct, %struct.ConfigurationStruct* %58, i32 0, i32 2
  %60 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %59, align 8
  %61 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call zeroext i1 @findLabelPath(%struct.GraphStruct* %55, i8** %56, %struct.NodePtrVecStruct* %57, i32 %62)
  %64 = zext i1 %63 to i8
  store i8 %64, i8* %4, align 1
  %65 = load i8, i8* %4, align 1
  %66 = trunc i8 %65 to i1
  br i1 %66, label %67, label %68

67:                                               ; preds = %43
  br label %69

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %67
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %34

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %17

77:                                               ; preds = %17
  %78 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %78, double* %11, align 8
  %79 = load double, double* %11, align 8
  %80 = load double, double* %10, align 8
  %81 = fsub double %79, %80
  store double %81, double* %14, align 8
  %82 = load double, double* %14, align 8
  %83 = fptosi double %82 to i32
  %84 = sdiv i32 %83, 3600
  store i32 %84, i32* %12, align 4
  %85 = load double, double* %14, align 8
  %86 = call double @fmod(double %85, double 3.600000e+03) #7
  store double %86, double* %14, align 8
  %87 = load double, double* %14, align 8
  %88 = fptosi double %87 to i32
  %89 = sdiv i32 %88, 60
  store i32 %89, i32* %13, align 4
  %90 = load double, double* %14, align 8
  %91 = call double @fmod(double %90, double 6.000000e+01) #7
  store double %91, double* %14, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load double, double* %14, align 8
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0), i32 %92, i32 %93, double %94)
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findLabelPath(%struct.GraphStruct* %0, i8** %1, %struct.NodePtrVecStruct* %2, i32 %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.GraphStruct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.NodePtrVecStruct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct.BitfieldStruct*, align 8
  %14 = alloca %struct.EdgeReferencesStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.NodePtrVecStruct* %2, %struct.NodePtrVecStruct** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %10, align 8
  store i8 0, i8* %12, align 1
  %15 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %16 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.BitfieldStruct* @Bitfield_new(i32 %17)
  store %struct.BitfieldStruct* %18, %struct.BitfieldStruct** %13, align 8
  %19 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %20 = icmp ne %struct.GraphStruct* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %4
  %22 = load i8**, i8*** %7, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load i8**, i8*** %7, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i8**, i8*** %7, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %36 = icmp ne %struct.NodePtrVecStruct* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %39 = icmp ne %struct.BitfieldStruct* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %34, %29, %24, %21, %4
  store i1 false, i1* %5, align 1
  br label %130

41:                                               ; preds = %37
  %42 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %43 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %42, i32 0, i32 4
  %44 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %43, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* %44, i8* %47)
  store %struct.NodePtrVecStruct* %48, %struct.NodePtrVecStruct** %10, align 8
  %49 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %50 = icmp ne %struct.NodePtrVecStruct* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  store i1 false, i1* %5, align 1
  br label %130

52:                                               ; preds = %41
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %123, %52
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %56 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i8, i8* %12, align 1
  %61 = trunc i8 %60 to i1
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %59, %53
  %64 = phi i1 [ false, %53 ], [ %62, %59 ]
  br i1 %64, label %65, label %126

65:                                               ; preds = %63
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load %struct.GraphStruct*, %struct.GraphStruct** %6, align 8
  %70 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %69, i32 0, i32 3
  %71 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %70, align 8
  %72 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %73 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %72, i32 0, i32 2
  %74 = load %struct.NodeStruct**, %struct.NodeStruct*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %74, i64 %76
  %78 = load %struct.NodeStruct*, %struct.NodeStruct** %77, align 8
  %79 = call %struct.EdgeReferencesStruct* @SearchDiagram_findNode(%struct.EdgeReferencesStruct* %71, %struct.NodeStruct* %78)
  store %struct.EdgeReferencesStruct* %79, %struct.EdgeReferencesStruct** %14, align 8
  %80 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %81 = icmp ne %struct.EdgeReferencesStruct* %80, null
  br i1 %81, label %82, label %95

82:                                               ; preds = %68
  %83 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %84 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %83, i32 0, i32 0
  %85 = load %struct.NodeStruct*, %struct.NodeStruct** %84, align 8
  %86 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %87 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %86, i32 0, i32 1
  %88 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %87, align 8
  %89 = load i8**, i8*** %7, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 1
  %91 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %92 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %93 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* %85, %struct.EdgeReferencesStruct* %88, i8** %90, %struct.NodePtrVecStruct* %91, %struct.BitfieldStruct* %92)
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %12, align 1
  br label %95

95:                                               ; preds = %82, %68
  br label %110

96:                                               ; preds = %65
  %97 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %98 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %97, i32 0, i32 2
  %99 = load %struct.NodeStruct**, %struct.NodeStruct*** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %99, i64 %101
  %103 = load %struct.NodeStruct*, %struct.NodeStruct** %102, align 8
  %104 = load i8**, i8*** %7, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %107 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %108 = call zeroext i1 @findNextLabel(%struct.NodeStruct* %103, i8** %105, %struct.NodePtrVecStruct* %106, %struct.BitfieldStruct* %107)
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %12, align 1
  br label %110

110:                                              ; preds = %96, %95
  %111 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void (%struct.BitfieldStruct*, ...) bitcast (void (%struct.BitfieldStruct*)* @Bitfield_clear to void (%struct.BitfieldStruct*, ...)*)(%struct.BitfieldStruct* %111)
  %112 = load i8, i8* %12, align 1
  %113 = trunc i8 %112 to i1
  br i1 %113, label %122, label %114

114:                                              ; preds = %110
  %115 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %116 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %121 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %120, i32 0, i32 0
  store i32 0, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %114, %110
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %53

126:                                              ; preds = %63
  %127 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* %127)
  %128 = load i8, i8* %12, align 1
  %129 = trunc i8 %128 to i1
  store i1 %129, i1* %5, align 1
  br label %130

130:                                              ; preds = %126, %51, %40
  %131 = load i1, i1* %5, align 1
  ret i1 %131
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @findNextLabel(%struct.NodeStruct* %0, i8** %1, %struct.NodePtrVecStruct* %2, %struct.BitfieldStruct* %3) #0 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.NodeStruct*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  %9 = alloca %struct.BitfieldStruct*, align 8
  %10 = alloca %struct.EdgeListStruct*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.NodePtrVecStruct*, align 8
  %13 = alloca %struct.BitfieldStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %6, align 8
  store i8** %1, i8*** %7, align 8
  store %struct.NodePtrVecStruct* %2, %struct.NodePtrVecStruct** %8, align 8
  store %struct.BitfieldStruct* %3, %struct.BitfieldStruct** %9, align 8
  store i8 0, i8* %11, align 1
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %12, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %13, align 8
  %14 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %15 = icmp ne %struct.NodeStruct* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %4
  %17 = load i8**, i8*** %7, align 8
  %18 = icmp ne i8** %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %21 = icmp ne %struct.NodePtrVecStruct* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %24 = icmp ne %struct.BitfieldStruct* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22, %19, %16, %4
  store i1 false, i1* %5, align 1
  br label %126

26:                                               ; preds = %22
  %27 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %29 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* %27, %struct.NodeStruct* %28)
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i1 false, i1* %5, align 1
  br label %126

31:                                               ; preds = %26
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %34 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %32, %struct.NodeStruct* %33)
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %36 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %35, i32 0, i32 7
  %37 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %36, align 8
  store %struct.EdgeListStruct* %37, %struct.EdgeListStruct** %10, align 8
  br label %38

38:                                               ; preds = %95, %31
  %39 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %40 = icmp ne %struct.EdgeListStruct* %39, null
  br i1 %40, label %41, label %99

41:                                               ; preds = %38
  %42 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %43 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %42, i32 0, i32 1
  %44 = load %struct.NodeStruct*, %struct.NodeStruct** %43, align 8
  %45 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  %49 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %50 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %49, i32 0, i32 1
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  %52 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** %7, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strcmp(i8* %53, i8* %56) #9
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %48
  %60 = load i8**, i8*** %7, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 50)
  store %struct.NodePtrVecStruct* %65, %struct.NodePtrVecStruct** %12, align 8
  %66 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %67 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call %struct.BitfieldStruct* @Bitfield_new(i32 %68)
  store %struct.BitfieldStruct* %69, %struct.BitfieldStruct** %13, align 8
  %70 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %71 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %70, i32 0, i32 1
  %72 = load %struct.NodeStruct*, %struct.NodeStruct** %71, align 8
  %73 = load i8**, i8*** %7, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  %76 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  %77 = call zeroext i1 @findNextLabel(%struct.NodeStruct* %72, i8** %74, %struct.NodePtrVecStruct* %75, %struct.BitfieldStruct* %76)
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %11, align 1
  %79 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %13, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* %79)
  %80 = load i8, i8* %11, align 1
  %81 = trunc i8 %80 to i1
  br i1 %81, label %82, label %86

82:                                               ; preds = %64
  %83 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %84 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* %83, %struct.NodePtrVecStruct* %84, i1 zeroext true)
  %85 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %12, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %85)
  store i1 true, i1* %5, align 1
  br label %126

86:                                               ; preds = %64
  br label %93

87:                                               ; preds = %59
  %88 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %89 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %90 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %89, i32 0, i32 1
  %91 = load %struct.NodeStruct*, %struct.NodeStruct** %90, align 8
  %92 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %88, %struct.NodeStruct* %91)
  store i1 true, i1* %5, align 1
  br label %126

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93, %48, %41
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %97 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %96, i32 0, i32 2
  %98 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %97, align 8
  store %struct.EdgeListStruct* %98, %struct.EdgeListStruct** %10, align 8
  br label %38

99:                                               ; preds = %38
  %100 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  %101 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %100, i32 0, i32 7
  %102 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %101, align 8
  store %struct.EdgeListStruct* %102, %struct.EdgeListStruct** %10, align 8
  br label %103

103:                                              ; preds = %119, %99
  %104 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %105 = icmp ne %struct.EdgeListStruct* %104, null
  br i1 %105, label %106, label %123

106:                                              ; preds = %103
  %107 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %108 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %107, i32 0, i32 1
  %109 = load %struct.NodeStruct*, %struct.NodeStruct** %108, align 8
  %110 = load i8**, i8*** %7, align 8
  %111 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %112 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %9, align 8
  %113 = call zeroext i1 @findNextLabel(%struct.NodeStruct* %109, i8** %110, %struct.NodePtrVecStruct* %111, %struct.BitfieldStruct* %112)
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %11, align 1
  %115 = load i8, i8* %11, align 1
  %116 = trunc i8 %115 to i1
  br i1 %116, label %117, label %118

117:                                              ; preds = %106
  store i1 true, i1* %5, align 1
  br label %126

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %10, align 8
  %121 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %120, i32 0, i32 2
  %122 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %121, align 8
  store %struct.EdgeListStruct* %122, %struct.EdgeListStruct** %10, align 8
  br label %103

123:                                              ; preds = %103
  %124 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %125 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* %124)
  store i1 false, i1* %5, align 1
  br label %126

126:                                              ; preds = %123, %117, %87, %82, %30, %25
  %127 = load i1, i1* %5, align 1
  ret i1 %127
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @findAndRecordAllPaths(%struct.NodeStruct* %0, i8** %1, i32* %2, %struct.NodePtrVecStruct* %3, %struct.BitfieldStruct* %4, %struct.NodeVecVecStruct* %5, %struct.SearchOptionsStruct* %6) #0 {
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.NodePtrVecStruct*, align 8
  %12 = alloca %struct.BitfieldStruct*, align 8
  %13 = alloca %struct.NodeVecVecStruct*, align 8
  %14 = alloca %struct.SearchOptionsStruct*, align 8
  %15 = alloca %struct.EdgeListStruct*, align 8
  %16 = alloca %struct.BitfieldStruct*, align 8
  store %struct.NodeStruct* %0, %struct.NodeStruct** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.NodePtrVecStruct* %3, %struct.NodePtrVecStruct** %11, align 8
  store %struct.BitfieldStruct* %4, %struct.BitfieldStruct** %12, align 8
  store %struct.NodeVecVecStruct* %5, %struct.NodeVecVecStruct** %13, align 8
  store %struct.SearchOptionsStruct* %6, %struct.SearchOptionsStruct** %14, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %16, align 8
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %7
  %20 = load i8**, i8*** %9, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %27 = icmp ne %struct.NodePtrVecStruct* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %30 = icmp ne %struct.BitfieldStruct* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22, %19, %7
  br label %133

32:                                               ; preds = %28
  %33 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %35 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* %33, %struct.NodeStruct* %34)
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %133

37:                                               ; preds = %32
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %40 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %38, %struct.NodeStruct* %39)
  %41 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %42 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %41, i32 0, i32 7
  %43 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %42, align 8
  store %struct.EdgeListStruct* %43, %struct.EdgeListStruct** %15, align 8
  br label %44

44:                                               ; preds = %105, %37
  %45 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %46 = icmp ne %struct.EdgeListStruct* %45, null
  br i1 %46, label %47, label %109

47:                                               ; preds = %44
  %48 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %49 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %48, i32 0, i32 1
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %49, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %104

54:                                               ; preds = %47
  %55 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %56 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %55, i32 0, i32 1
  %57 = load %struct.NodeStruct*, %struct.NodeStruct** %56, align 8
  %58 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i8**, i8*** %9, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @strcmp(i8* %59, i8* %62) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %104

65:                                               ; preds = %54
  %66 = load i8**, i8*** %9, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 1
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %87

70:                                               ; preds = %65
  %71 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %72 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.BitfieldStruct* @Bitfield_new(i32 %73)
  store %struct.BitfieldStruct* %74, %struct.BitfieldStruct** %16, align 8
  %75 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %76 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %75, i32 0, i32 1
  %77 = load %struct.NodeStruct*, %struct.NodeStruct** %76, align 8
  %78 = load i8**, i8*** %9, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %83 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %16, align 8
  %84 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %85 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* %77, i8** %79, i32* %81, %struct.NodePtrVecStruct* %82, %struct.BitfieldStruct* %83, %struct.NodeVecVecStruct* %84, %struct.SearchOptionsStruct* %85)
  %86 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %16, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* %86)
  br label %103

87:                                               ; preds = %65
  %88 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %89 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %90 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %89, i32 0, i32 1
  %91 = load %struct.NodeStruct*, %struct.NodeStruct** %90, align 8
  %92 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %88, %struct.NodeStruct* %91)
  %93 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %94 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %95 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %94, i32 0, i32 1
  %96 = load %struct.NodeStruct*, %struct.NodeStruct** %95, align 8
  %97 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* %93, %struct.NodeStruct* %96)
  %98 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %99 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %100 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @logResult(%struct.NodeVecVecStruct* %98, %struct.NodePtrVecStruct* %99, %struct.SearchOptionsStruct* %100)
  %101 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %102 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* %101)
  br label %103

103:                                              ; preds = %87, %70
  br label %104

104:                                              ; preds = %103, %54, %47
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %107 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %106, i32 0, i32 2
  %108 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %107, align 8
  store %struct.EdgeListStruct* %108, %struct.EdgeListStruct** %15, align 8
  br label %44

109:                                              ; preds = %44
  %110 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %111 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %110, i32 0, i32 7
  %112 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %111, align 8
  store %struct.EdgeListStruct* %112, %struct.EdgeListStruct** %15, align 8
  br label %113

113:                                              ; preds = %126, %109
  %114 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %115 = icmp ne %struct.EdgeListStruct* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %118 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %117, i32 0, i32 1
  %119 = load %struct.NodeStruct*, %struct.NodeStruct** %118, align 8
  %120 = load i8**, i8*** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %123 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %12, align 8
  %124 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %13, align 8
  %125 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %14, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* %119, i8** %120, i32* %121, %struct.NodePtrVecStruct* %122, %struct.BitfieldStruct* %123, %struct.NodeVecVecStruct* %124, %struct.SearchOptionsStruct* %125)
  br label %126

126:                                              ; preds = %116
  %127 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %15, align 8
  %128 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %127, i32 0, i32 2
  %129 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %128, align 8
  store %struct.EdgeListStruct* %129, %struct.EdgeListStruct** %15, align 8
  br label %113

130:                                              ; preds = %113
  %131 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %11, align 8
  %132 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* %131)
  br label %133

133:                                              ; preds = %130, %36, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @logResult(%struct.NodeVecVecStruct* %0, %struct.NodePtrVecStruct* %1, %struct.SearchOptionsStruct* %2) #0 {
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca %struct.SearchOptionsStruct*, align 8
  %7 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  store %struct.SearchOptionsStruct* %2, %struct.SearchOptionsStruct** %6, align 8
  %8 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 2)
  store %struct.NodePtrVecStruct* %8, %struct.NodePtrVecStruct** %7, align 8
  %9 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %10 = icmp ne %struct.NodeVecVecStruct* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %13 = icmp ne %struct.NodePtrVecStruct* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %16 = icmp ne %struct.NodePtrVecStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %11, %3
  br label %59

18:                                               ; preds = %14
  %19 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %6, align 8
  %20 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %19, i32 0, i32 1
  %21 = load i8, i8* %20, align 4
  %22 = trunc i8 %21 to i1
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %6, align 8
  %25 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %24, i32 0, i32 2
  %26 = load i8, i8* %25, align 1
  %27 = trunc i8 %26 to i1
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  call void @logStats(%struct.NodePtrVecStruct* %29)
  br label %30

30:                                               ; preds = %28, %23, %18
  %31 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %33 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %32, i32 0, i32 2
  %34 = load %struct.NodeStruct**, %struct.NodeStruct*** %33, align 8
  %35 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %34, i64 0
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %35, align 8
  %37 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %31, %struct.NodeStruct* %36)
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %39 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %40 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %39, i32 0, i32 2
  %41 = load %struct.NodeStruct**, %struct.NodeStruct*** %40, align 8
  %42 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %43 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %41, i64 %46
  %48 = load %struct.NodeStruct*, %struct.NodeStruct** %47, align 8
  %49 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %38, %struct.NodeStruct* %48)
  %50 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %51 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %52 = call zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* %50, %struct.NodePtrVecStruct* %51)
  br i1 %52, label %57, label %53

53:                                               ; preds = %30
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8.65, i64 0, i64 0))
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %56 = call i32 @fflush(%struct._IO_FILE* %55)
  br label %57

57:                                               ; preds = %53, %30
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %58)
  br label %59

59:                                               ; preds = %57, %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @logStats(%struct.NodePtrVecStruct* %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %2, align 8
  %3 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %4 = icmp ne %struct.NodePtrVecStruct* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call %struct.StatsStruct* (...) bitcast (%struct.StatsStruct* ()* @Stats_new to %struct.StatsStruct* (...)*)()
  store %struct.StatsStruct* %10, %struct.StatsStruct** @globalStats, align 8
  br label %11

11:                                               ; preds = %9, %6
  %12 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %13 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %14 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %12, %struct.NodePtrVecStruct* %13)
  br label %15

15:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAllPossibleLegs(%struct.GraphStruct* %0, i32 %1) #0 {
  %3 = alloca %struct.GraphStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca [50 x i8], align 16
  %15 = alloca [3 x i8*], align 16
  %16 = alloca [3 x i32], align 4
  %17 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %18, double* %9, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.68, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %91, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %24 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %23, i32 0, i32 4
  %25 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %24, align 8
  %26 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %94

29:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %87, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %33 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %32, i32 0, i32 4
  %34 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %33, align 8
  %35 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %31, %36
  br i1 %37, label %38, label %90

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = bitcast [3 x i8*]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %41, i8 0, i64 24, i1 false)
  %42 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 bitcast ([3 x i32]* @__const.findAllPossibleLegs.fullIntSignature to i8*), i64 12, i1 false)
  %43 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %44 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %43, i32 0, i32 4
  %45 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %44, align 8
  %46 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %45, i32 0, i32 2
  %47 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %47, i64 %49
  %51 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %50, align 8
  %52 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  store i8* %53, i8** %54, align 16
  %55 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %56 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %55, i32 0, i32 4
  %57 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %56, align 8
  %58 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %57, i32 0, i32 2
  %59 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %59, i64 %61
  %63 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %62, align 8
  %64 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 1
  store i8* %65, i8** %66, align 8
  %67 = load i32, i32* %5, align 4
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %69, i32* %70, align 4
  %71 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 25)
  store %struct.NodePtrVecStruct* %71, %struct.NodePtrVecStruct** %17, align 8
  %72 = load %struct.GraphStruct*, %struct.GraphStruct** %3, align 8
  %73 = getelementptr inbounds [3 x i8*], [3 x i8*]* %15, i64 0, i64 0
  %74 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call zeroext i1 @findLabelPath(%struct.GraphStruct* %72, i8** %73, %struct.NodePtrVecStruct* %74, i32 %75)
  br i1 %76, label %77, label %80

77:                                               ; preds = %38
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %81

80:                                               ; preds = %38
  br label %81

81:                                               ; preds = %80, %77
  %82 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  %83 = icmp ne %struct.NodePtrVecStruct* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %17, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %85)
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %30

90:                                               ; preds = %30
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %21

94:                                               ; preds = %21
  %95 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %95, double* %10, align 8
  %96 = load double, double* %10, align 8
  %97 = load double, double* %9, align 8
  %98 = fsub double %96, %97
  store double %98, double* %13, align 8
  %99 = load double, double* %13, align 8
  %100 = fptosi double %99 to i32
  %101 = sdiv i32 %100, 3600
  store i32 %101, i32* %11, align 4
  %102 = load double, double* %13, align 8
  %103 = call double @fmod(double %102, double 3.600000e+03) #7
  store double %103, double* %13, align 8
  %104 = load double, double* %13, align 8
  %105 = fptosi double %104 to i32
  %106 = sdiv i32 %105, 60
  store i32 %106, i32* %12, align 4
  %107 = load double, double* %13, align 8
  %108 = call double @fmod(double %107, double 6.000000e+01) #7
  store double %108, double* %13, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load double, double* %13, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2.69, i64 0, i64 0), i32 %109, i32 %110, i32 %111, i32 %112, double %113)
  %115 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %115, align 16
  %116 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = load double, double* %13, align 8
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.70, i64 0, i64 0), i32 %117, i32 %118, double %119) #7
  %121 = load i32, i32* %7, align 4
  call void @YAMLWriteInt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.71, i64 0, i64 0), i32 %121)
  %122 = getelementptr inbounds [50 x i8], [50 x i8]* %14, i64 0, i64 0
  call void @YAMLWriteString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.72, i64 0, i64 0), i8* %122)
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @findAndLogAllPossibleLegs(%struct.GraphStruct* %0, %struct.SearchOptionsStruct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.GraphStruct*, align 8
  %5 = alloca %struct.SearchOptionsStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.NodeVecVecStruct**, align 8
  %18 = alloca %struct.GraphStruct*, align 8
  %19 = alloca [50 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca %struct.NodeVecVecStruct*, align 8
  %22 = alloca [3 x i8*], align 16
  %23 = alloca [3 x i32], align 4
  %24 = alloca %struct.NodePtrVecStruct*, align 8
  %25 = alloca %struct.BitfieldStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %4, align 8
  store %struct.SearchOptionsStruct* %1, %struct.SearchOptionsStruct** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %16, align 4
  store %struct.GraphStruct* null, %struct.GraphStruct** %18, align 8
  %26 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %27 = icmp ne %struct.GraphStruct* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %236

29:                                               ; preds = %2
  %30 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %30, double* %11, align 8
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1.68, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %21, align 8
  store i32 1, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = icmp sgt i32 %33, 1
  %35 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %36 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %35, i32 0, i32 1
  %37 = zext i1 %34 to i8
  store i8 %37, i8* %36, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = call noalias i8* @malloc(i64 %41) #7
  %43 = bitcast i8* %42 to %struct.NodeVecVecStruct**
  store %struct.NodeVecVecStruct** %43, %struct.NodeVecVecStruct*** %17, align 8
  %44 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %44, i64 %46
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %47, align 8
  %48 = call %struct.NodeVecVecStruct* @NodeVecVec_new(i32 64)
  %49 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %49, i64 %51
  store %struct.NodeVecVecStruct* %48, %struct.NodeVecVecStruct** %52, align 8
  %53 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %54 = load i32, i32* %20, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %53, i64 %55
  %57 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %56, align 8
  store %struct.NodeVecVecStruct* %57, %struct.NodeVecVecStruct** %21, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.75, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %168, %29
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %62 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %61, i32 0, i32 4
  %63 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %62, align 8
  %64 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %60, %65
  br i1 %66, label %67, label %171

67:                                               ; preds = %59
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %164, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %71 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %70, i32 0, i32 4
  %72 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %71, align 8
  %73 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %167

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %160, %76
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %82 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %81, i32 0, i32 4
  %83 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %82, align 8
  %84 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %83, i32 0, i32 2
  %85 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %85, i64 %87
  %89 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %88, align 8
  %90 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %89, i32 0, i32 2
  %91 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %90, align 8
  %92 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %80, %93
  br i1 %94, label %95, label %163

95:                                               ; preds = %79
  %96 = bitcast [3 x i8*]* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %96, i8 0, i64 24, i1 false)
  %97 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 bitcast ([3 x i32]* @__const.findAndLogAllPossibleLegs.fullIntSignature to i8*), i64 12, i1 false)
  %98 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %99 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %98, i32 0, i32 4
  %100 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %99, align 8
  %101 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %100, i32 0, i32 2
  %102 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %102, i64 %104
  %106 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %105, align 8
  %107 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 0
  store i8* %108, i8** %109, align 16
  %110 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %111 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %110, i32 0, i32 4
  %112 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %111, align 8
  %113 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %112, i32 0, i32 2
  %114 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %114, i64 %116
  %118 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %117, align 8
  %119 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %7, align 4
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 16)
  store %struct.NodePtrVecStruct* %126, %struct.NodePtrVecStruct** %24, align 8
  %127 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %128 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.BitfieldStruct* @Bitfield_new(i32 %129)
  store %struct.BitfieldStruct* %130, %struct.BitfieldStruct** %25, align 8
  %131 = load %struct.GraphStruct*, %struct.GraphStruct** %4, align 8
  %132 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %131, i32 0, i32 4
  %133 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %132, align 8
  %134 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %133, i32 0, i32 2
  %135 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %135, i64 %137
  %139 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %138, align 8
  %140 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %139, i32 0, i32 2
  %141 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %140, align 8
  %142 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %141, i32 0, i32 2
  %143 = load %struct.NodeStruct**, %struct.NodeStruct*** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %143, i64 %145
  %147 = load %struct.NodeStruct*, %struct.NodeStruct** %146, align 8
  %148 = getelementptr inbounds [3 x i8*], [3 x i8*]* %22, i64 0, i64 1
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 1
  %150 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  %151 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %25, align 8
  %152 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %21, align 8
  %153 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  call void @findAndRecordAllPaths(%struct.NodeStruct* %147, i8** %148, i32* %149, %struct.NodePtrVecStruct* %150, %struct.BitfieldStruct* %151, %struct.NodeVecVecStruct* %152, %struct.SearchOptionsStruct* %153)
  %154 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %25, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* %154)
  %155 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  %156 = icmp ne %struct.NodePtrVecStruct* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %95
  %158 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %24, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %158)
  br label %159

159:                                              ; preds = %157, %95
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %79

163:                                              ; preds = %79
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %68

167:                                              ; preds = %68
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %59

171:                                              ; preds = %59
  %172 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %21, align 8
  %173 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  store i32 %174, i32* %9, align 4
  %175 = call double (...) bitcast (double ()* @currentTime to double (...)*)()
  store double %175, double* %12, align 8
  %176 = load double, double* %12, align 8
  %177 = load double, double* %11, align 8
  %178 = fsub double %176, %177
  store double %178, double* %15, align 8
  %179 = load double, double* %15, align 8
  %180 = fptosi double %179 to i32
  %181 = sdiv i32 %180, 3600
  store i32 %181, i32* %13, align 4
  %182 = load double, double* %15, align 8
  %183 = call double @fmod(double %182, double 3.600000e+03) #7
  store double %183, double* %15, align 8
  %184 = load double, double* %15, align 8
  %185 = fptosi double %184 to i32
  %186 = sdiv i32 %185, 60
  store i32 %186, i32* %14, align 4
  %187 = load double, double* %15, align 8
  %188 = call double @fmod(double %187, double 6.000000e+01) #7
  store double %188, double* %15, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load double, double* %15, align 8
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7.76, i64 0, i64 0), i32 %189, i32 %190, i32 %191, i32 %192, double %193)
  %195 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  store i8 0, i8* %195, align 16
  %196 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load double, double* %15, align 8
  %200 = call i32 (i8*, i8*, ...) @sprintf(i8* %196, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3.70, i64 0, i64 0), i32 %197, i32 %198, double %199) #7
  %201 = load i32, i32* %9, align 4
  call void @YAMLWriteInt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4.71, i64 0, i64 0), i32 %201)
  %202 = getelementptr inbounds [50 x i8], [50 x i8]* %19, i64 0, i64 0
  call void @YAMLWriteString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5.72, i64 0, i64 0), i8* %202)
  %203 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %204 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %203, i32 0, i32 3
  %205 = load i8, i8* %204, align 2
  %206 = trunc i8 %205 to i1
  br i1 %206, label %207, label %223

207:                                              ; preds = %171
  %208 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %209 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load %struct.NodeVecVecStruct**, %struct.NodeVecVecStruct*** %17, align 8
  %214 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %215 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 8
  %217 = call %struct.GraphStruct* @buildGraphFromPaths(%struct.NodeVecVecStruct** %213, i32 %216)
  store %struct.GraphStruct* %217, %struct.GraphStruct** %18, align 8
  %218 = load %struct.GraphStruct*, %struct.GraphStruct** %18, align 8
  %219 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %220 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %219, i32 0, i32 4
  %221 = load i8*, i8** %220, align 8
  %222 = call zeroext i1 @exportGraph(%struct.GraphStruct* %218, i8* %221)
  br label %223

223:                                              ; preds = %212, %207, %171
  %224 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %225 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %224, i32 0, i32 2
  %226 = load i8, i8* %225, align 1
  %227 = trunc i8 %226 to i1
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.SearchOptionsStruct*, %struct.SearchOptionsStruct** %5, align 8
  %230 = getelementptr inbounds %struct.SearchOptionsStruct, %struct.SearchOptionsStruct* %229, i32 0, i32 1
  %231 = load i8, i8* %230, align 4
  %232 = trunc i8 %231 to i1
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  call void @printStats()
  br label %234

234:                                              ; preds = %233, %228, %223
  %235 = load i32, i32* %9, align 4
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %234, %28
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

; Function Attrs: noinline nounwind uwtable
define internal void @printStats() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %3 = icmp ne %struct.StatsStruct* %2, null
  br i1 %3, label %4, label %58

4:                                                ; preds = %0
  %5 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  call void @Stats_calculate(%struct.StatsStruct* %5)
  %6 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %6, i32 0, i32 3
  %8 = load double, double* %7, align 8
  %9 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %10 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %9, i32 0, i32 4
  %11 = load double, double* %10, align 8
  %12 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %13 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %12, i32 0, i32 0
  %14 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %13, align 8
  %15 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.9.77, i64 0, i64 0), double %8, double %11, i32 %16)
  %18 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %19 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10.78, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %26 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %54, %4
  %29 = load i32, i32* %1, align 4
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %31 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp sle i32 %29, %32
  br i1 %33, label %34, label %57

34:                                               ; preds = %28
  %35 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %36 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load i32, i32* %1, align 4
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** @globalStats, align 8
  %46 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11.79, i64 0, i64 0), i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %43, %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %28

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.EdgeReferencesStruct* @SearchDiagram_findNode(%struct.EdgeReferencesStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca %struct.EdgeReferencesStruct*, align 8
  %4 = alloca %struct.EdgeReferencesStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.EdgeReferencesStruct* %0, %struct.EdgeReferencesStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %4, align 8
  %8 = icmp ne %struct.EdgeReferencesStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %3, align 8
  br label %38

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %34, %10
  %12 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %12, i64 %14
  %16 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %15, i32 0, i32 0
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %16, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %11
  %20 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %20, i64 %22
  %24 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %23, i32 0, i32 0
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %24, align 8
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %27 = icmp eq %struct.NodeStruct* %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %29, i64 %31
  store %struct.EdgeReferencesStruct* %32, %struct.EdgeReferencesStruct** %3, align 8
  br label %38

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %11

37:                                               ; preds = %11
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %3, align 8
  br label %38

38:                                               ; preds = %37, %28, %9
  %39 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %3, align 8
  ret %struct.EdgeReferencesStruct* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.EdgeReferencesStruct* @SearchDiagram_build(%struct.NodeListStruct* %0, i32 %1) #0 {
  %3 = alloca %struct.EdgeReferencesStruct*, align 8
  %4 = alloca %struct.NodeListStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.EdgeReferencesStruct*, align 8
  %7 = alloca %struct.NodeListStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeListStruct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.EdgeListStruct*, align 8
  %14 = alloca %struct.EdgeReferencesStruct*, align 8
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %6, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %7, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %8, align 8
  store %struct.NodeListStruct* null, %struct.NodeListStruct** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  %17 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %18 = icmp ne %struct.NodeListStruct* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %2
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %3, align 8
  br label %321

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 16
  %28 = call noalias i8* @malloc(i64 %27) #7
  %29 = bitcast i8* %28 to %struct.EdgeReferencesStruct*
  store %struct.EdgeReferencesStruct* %29, %struct.EdgeReferencesStruct** %6, align 8
  %30 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %31 = icmp ne %struct.EdgeReferencesStruct* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %3, align 8
  br label %321

33:                                               ; preds = %23
  %34 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %34, i64 %36
  %38 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %37, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %38, align 8
  %39 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %39, i64 %41
  %43 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %42, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %43, align 8
  %44 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  store %struct.NodeListStruct* %44, %struct.NodeListStruct** %7, align 8
  br label %45

45:                                               ; preds = %181, %33
  %46 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %47 = icmp ne %struct.NodeListStruct* %46, null
  br i1 %47, label %48, label %185

48:                                               ; preds = %45
  %49 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %50 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %49, i32 0, i32 0
  %51 = load %struct.NodeStruct*, %struct.NodeStruct** %50, align 8
  store %struct.NodeStruct* %51, %struct.NodeStruct** %8, align 8
  %52 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %53 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %53, i64 %55
  %57 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %56, i32 0, i32 0
  store %struct.NodeStruct* %52, %struct.NodeStruct** %57, align 8
  %58 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %59 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %62 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %48
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = call noalias i8* @malloc(i64 %71) #7
  %73 = bitcast i8* %72 to %struct.EdgeReferencesStruct*
  %74 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %74, i64 %76
  %78 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %77, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %73, %struct.EdgeReferencesStruct** %78, align 8
  %79 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %79, i64 %81
  %83 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %82, i32 0, i32 1
  %84 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %84, i64 %86
  %88 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %87, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %88, align 8
  %89 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %89, i64 %91
  %93 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %92, i32 0, i32 1
  %94 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %94, i64 %96
  %98 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %97, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %98, align 8
  br label %105

99:                                               ; preds = %48
  %100 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %100, i64 %102
  %104 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %103, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %104, align 8
  br label %105

105:                                              ; preds = %99, %67
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %109 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %108, i32 0, i32 6
  %110 = load %struct.NodeListStruct*, %struct.NodeListStruct** %109, align 8
  store %struct.NodeListStruct* %110, %struct.NodeListStruct** %9, align 8
  br label %111

111:                                              ; preds = %176, %105
  %112 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %113 = icmp ne %struct.NodeListStruct* %112, null
  br i1 %113, label %114, label %180

114:                                              ; preds = %111
  %115 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %116 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %115, i32 0, i32 0
  %117 = load %struct.NodeStruct*, %struct.NodeStruct** %116, align 8
  store %struct.NodeStruct* %117, %struct.NodeStruct** %8, align 8
  %118 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %119 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %119, i64 %121
  %123 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %122, i32 0, i32 0
  store %struct.NodeStruct* %118, %struct.NodeStruct** %123, align 8
  %124 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %125 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %128 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  store i32 %130, i32* %12, align 4
  %131 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %132 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %114
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 16
  %140 = call noalias i8* @malloc(i64 %139) #7
  %141 = bitcast i8* %140 to %struct.EdgeReferencesStruct*
  %142 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %142, i64 %144
  %146 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %145, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %141, %struct.EdgeReferencesStruct** %146, align 8
  %147 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %147, i64 %149
  %151 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %150, i32 0, i32 1
  %152 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %152, i64 %154
  %156 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %155, i32 0, i32 0
  store %struct.NodeStruct* null, %struct.NodeStruct** %156, align 8
  %157 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %158 = load i32, i32* %11, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %157, i64 %159
  %161 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %160, i32 0, i32 1
  %162 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %162, i64 %164
  %166 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %165, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %166, align 8
  br label %173

167:                                              ; preds = %114
  %168 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %168, i64 %170
  %172 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %171, i32 0, i32 1
  store %struct.EdgeReferencesStruct* null, %struct.EdgeReferencesStruct** %172, align 8
  br label %173

173:                                              ; preds = %167, %135
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, -1
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %173
  %177 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %178 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %177, i32 0, i32 1
  %179 = load %struct.NodeListStruct*, %struct.NodeListStruct** %178, align 8
  store %struct.NodeListStruct* %179, %struct.NodeListStruct** %9, align 8
  br label %111

180:                                              ; preds = %111
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %183 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %182, i32 0, i32 1
  %184 = load %struct.NodeListStruct*, %struct.NodeListStruct** %183, align 8
  store %struct.NodeListStruct* %184, %struct.NodeListStruct** %7, align 8
  br label %45

185:                                              ; preds = %45
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  %189 = icmp ne i32 %186, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.84, i64 0, i64 0), i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %190, %185
  store i32 0, i32* %10, align 4
  %196 = load i32, i32* %5, align 4
  %197 = sub nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  store %struct.NodeListStruct* %198, %struct.NodeListStruct** %7, align 8
  br label %199

199:                                              ; preds = %315, %195
  %200 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %201 = icmp ne %struct.NodeListStruct* %200, null
  br i1 %201, label %202, label %319

202:                                              ; preds = %199
  %203 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %204 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %203, i32 0, i32 0
  %205 = load %struct.NodeStruct*, %struct.NodeStruct** %204, align 8
  store %struct.NodeStruct* %205, %struct.NodeStruct** %8, align 8
  %206 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %207 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %206, i32 0, i32 7
  %208 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %207, align 8
  store %struct.EdgeListStruct* %208, %struct.EdgeListStruct** %13, align 8
  store i32 0, i32* %12, align 4
  br label %209

209:                                              ; preds = %244, %202
  %210 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %211 = icmp ne %struct.EdgeListStruct* %210, null
  br i1 %211, label %212, label %250

212:                                              ; preds = %209
  %213 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %214 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %215 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %214, i32 0, i32 1
  %216 = load %struct.NodeStruct*, %struct.NodeStruct** %215, align 8
  %217 = call %struct.EdgeReferencesStruct* @SearchDiagram_findNode(%struct.EdgeReferencesStruct* %213, %struct.NodeStruct* %216)
  store %struct.EdgeReferencesStruct* %217, %struct.EdgeReferencesStruct** %14, align 8
  %218 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %219 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %218, i32 0, i32 1
  %220 = load %struct.NodeStruct*, %struct.NodeStruct** %219, align 8
  %221 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %221, i64 %223
  %225 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %224, i32 0, i32 1
  %226 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %226, i64 %228
  %230 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %229, i32 0, i32 0
  store %struct.NodeStruct* %220, %struct.NodeStruct** %230, align 8
  %231 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %232 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %231, i32 0, i32 1
  %233 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %232, align 8
  %234 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %234, i64 %236
  %238 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %237, i32 0, i32 1
  %239 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %238, align 8
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %239, i64 %241
  %243 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %242, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %233, %struct.EdgeReferencesStruct** %243, align 8
  br label %244

244:                                              ; preds = %212
  %245 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %246 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %245, i32 0, i32 2
  %247 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %246, align 8
  store %struct.EdgeListStruct* %247, %struct.EdgeListStruct** %13, align 8
  %248 = load i32, i32* %12, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %12, align 4
  br label %209

250:                                              ; preds = %209
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %254 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %253, i32 0, i32 6
  %255 = load %struct.NodeListStruct*, %struct.NodeListStruct** %254, align 8
  store %struct.NodeListStruct* %255, %struct.NodeListStruct** %9, align 8
  br label %256

256:                                              ; preds = %310, %250
  %257 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %258 = icmp ne %struct.NodeListStruct* %257, null
  br i1 %258, label %259, label %314

259:                                              ; preds = %256
  %260 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %261 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %260, i32 0, i32 0
  %262 = load %struct.NodeStruct*, %struct.NodeStruct** %261, align 8
  store %struct.NodeStruct* %262, %struct.NodeStruct** %8, align 8
  %263 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  %264 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %263, i32 0, i32 7
  %265 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %264, align 8
  store %struct.EdgeListStruct* %265, %struct.EdgeListStruct** %13, align 8
  store i32 0, i32* %12, align 4
  br label %266

266:                                              ; preds = %301, %259
  %267 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %268 = icmp ne %struct.EdgeListStruct* %267, null
  br i1 %268, label %269, label %307

269:                                              ; preds = %266
  %270 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %271 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %272 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %271, i32 0, i32 1
  %273 = load %struct.NodeStruct*, %struct.NodeStruct** %272, align 8
  %274 = call %struct.EdgeReferencesStruct* @SearchDiagram_findNode(%struct.EdgeReferencesStruct* %270, %struct.NodeStruct* %273)
  store %struct.EdgeReferencesStruct* %274, %struct.EdgeReferencesStruct** %14, align 8
  %275 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %276 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %275, i32 0, i32 1
  %277 = load %struct.NodeStruct*, %struct.NodeStruct** %276, align 8
  %278 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %278, i64 %280
  %282 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %281, i32 0, i32 1
  %283 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %282, align 8
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %283, i64 %285
  %287 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %286, i32 0, i32 0
  store %struct.NodeStruct* %277, %struct.NodeStruct** %287, align 8
  %288 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %14, align 8
  %289 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %288, i32 0, i32 1
  %290 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %289, align 8
  %291 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %291, i64 %293
  %295 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %294, i32 0, i32 1
  %296 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %295, align 8
  %297 = load i32, i32* %12, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %296, i64 %298
  %300 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %299, i32 0, i32 1
  store %struct.EdgeReferencesStruct* %290, %struct.EdgeReferencesStruct** %300, align 8
  br label %301

301:                                              ; preds = %269
  %302 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %13, align 8
  %303 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %302, i32 0, i32 2
  %304 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %303, align 8
  store %struct.EdgeListStruct* %304, %struct.EdgeListStruct** %13, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %12, align 4
  br label %266

307:                                              ; preds = %266
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %11, align 4
  br label %310

310:                                              ; preds = %307
  %311 = load %struct.NodeListStruct*, %struct.NodeListStruct** %9, align 8
  %312 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %311, i32 0, i32 1
  %313 = load %struct.NodeListStruct*, %struct.NodeListStruct** %312, align 8
  store %struct.NodeListStruct* %313, %struct.NodeListStruct** %9, align 8
  br label %256

314:                                              ; preds = %256
  br label %315

315:                                              ; preds = %314
  %316 = load %struct.NodeListStruct*, %struct.NodeListStruct** %7, align 8
  %317 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %316, i32 0, i32 1
  %318 = load %struct.NodeListStruct*, %struct.NodeListStruct** %317, align 8
  store %struct.NodeListStruct* %318, %struct.NodeListStruct** %7, align 8
  br label %199

319:                                              ; preds = %199
  %320 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %6, align 8
  store %struct.EdgeReferencesStruct* %320, %struct.EdgeReferencesStruct** %3, align 8
  br label %321

321:                                              ; preds = %319, %32, %22
  %322 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %3, align 8
  ret %struct.EdgeReferencesStruct* %322
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* %0, %struct.EdgeReferencesStruct* %1, i8** %2, %struct.NodePtrVecStruct* %3, %struct.BitfieldStruct* %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.EdgeReferencesStruct*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.NodePtrVecStruct*, align 8
  %11 = alloca %struct.BitfieldStruct*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.NodePtrVecStruct*, align 8
  %14 = alloca %struct.BitfieldStruct*, align 8
  %15 = alloca i32, align 4
  store %struct.NodeStruct* %0, %struct.NodeStruct** %7, align 8
  store %struct.EdgeReferencesStruct* %1, %struct.EdgeReferencesStruct** %8, align 8
  store i8** %2, i8*** %9, align 8
  store %struct.NodePtrVecStruct* %3, %struct.NodePtrVecStruct** %10, align 8
  store %struct.BitfieldStruct* %4, %struct.BitfieldStruct** %11, align 8
  store i8 0, i8* %12, align 1
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %13, align 8
  store %struct.BitfieldStruct* null, %struct.BitfieldStruct** %14, align 8
  %16 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %17 = icmp ne %struct.NodeStruct* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %5
  %19 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %20 = icmp ne %struct.EdgeReferencesStruct* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i8**, i8*** %9, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %26 = icmp ne %struct.NodePtrVecStruct* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %29 = icmp ne %struct.BitfieldStruct* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27, %24, %21, %18, %5
  store i1 false, i1* %6, align 1
  br label %161

31:                                               ; preds = %27
  %32 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %34 = call zeroext i1 @Bitfield_nodeVisited(%struct.BitfieldStruct* %32, %struct.NodeStruct* %33)
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i1 false, i1* %6, align 1
  br label %161

36:                                               ; preds = %31
  %37 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %39 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %37, %struct.NodeStruct* %38)
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %121, %36
  %41 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %41, i64 %43
  %45 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %44, i32 0, i32 0
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %45, align 8
  %47 = icmp ne %struct.NodeStruct* %46, null
  br i1 %47, label %48, label %124

48:                                               ; preds = %40
  %49 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %49, i64 %51
  %53 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %52, i32 0, i32 0
  %54 = load %struct.NodeStruct*, %struct.NodeStruct** %53, align 8
  %55 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %120

58:                                               ; preds = %48
  %59 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %59, i64 %61
  %63 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %62, i32 0, i32 0
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %63, align 8
  %65 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %9, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* %66, i8* %69) #9
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %119

72:                                               ; preds = %58
  %73 = load i8**, i8*** %9, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  %75 = load i8*, i8** %74, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %79 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %79, i64 %81
  %83 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %82, i32 0, i32 0
  %84 = load %struct.NodeStruct*, %struct.NodeStruct** %83, align 8
  %85 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %78, %struct.NodeStruct* %84)
  store i1 true, i1* %6, align 1
  br label %161

86:                                               ; preds = %72
  %87 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 50)
  store %struct.NodePtrVecStruct* %87, %struct.NodePtrVecStruct** %13, align 8
  %88 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %89 = getelementptr inbounds %struct.BitfieldStruct, %struct.BitfieldStruct* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.BitfieldStruct* @Bitfield_new(i32 %90)
  store %struct.BitfieldStruct* %91, %struct.BitfieldStruct** %14, align 8
  %92 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %92, i64 %94
  %96 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %95, i32 0, i32 0
  %97 = load %struct.NodeStruct*, %struct.NodeStruct** %96, align 8
  %98 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %99 = load i32, i32* %15, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %98, i64 %100
  %102 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %101, i32 0, i32 1
  %103 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %102, align 8
  %104 = load i8**, i8*** %9, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 1
  %106 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  %107 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %14, align 8
  %108 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* %97, %struct.EdgeReferencesStruct* %103, i8** %105, %struct.NodePtrVecStruct* %106, %struct.BitfieldStruct* %107)
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %12, align 1
  %110 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %14, align 8
  call void @Bitfield_delete(%struct.BitfieldStruct* %110)
  %111 = load i8, i8* %12, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %117

113:                                              ; preds = %86
  %114 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %115 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  call void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* %114, %struct.NodePtrVecStruct* %115, i1 zeroext true)
  %116 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %13, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %116)
  store i1 true, i1* %6, align 1
  br label %161

117:                                              ; preds = %86
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %58
  br label %120

120:                                              ; preds = %119, %48
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %40

124:                                              ; preds = %40
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %155, %124
  %126 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %126, i64 %128
  %130 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %129, i32 0, i32 0
  %131 = load %struct.NodeStruct*, %struct.NodeStruct** %130, align 8
  %132 = icmp ne %struct.NodeStruct* %131, null
  br i1 %132, label %133, label %158

133:                                              ; preds = %125
  %134 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %134, i64 %136
  %138 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %137, i32 0, i32 0
  %139 = load %struct.NodeStruct*, %struct.NodeStruct** %138, align 8
  %140 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %8, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %140, i64 %142
  %144 = getelementptr inbounds %struct.EdgeReferencesStruct, %struct.EdgeReferencesStruct* %143, i32 0, i32 1
  %145 = load %struct.EdgeReferencesStruct*, %struct.EdgeReferencesStruct** %144, align 8
  %146 = load i8**, i8*** %9, align 8
  %147 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %148 = load %struct.BitfieldStruct*, %struct.BitfieldStruct** %11, align 8
  %149 = call zeroext i1 @SearchDiagram_findSignatureAlongEdges(%struct.NodeStruct* %139, %struct.EdgeReferencesStruct* %145, i8** %146, %struct.NodePtrVecStruct* %147, %struct.BitfieldStruct* %148)
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %12, align 1
  %151 = load i8, i8* %12, align 1
  %152 = trunc i8 %151 to i1
  br i1 %152, label %153, label %154

153:                                              ; preds = %133
  store i1 true, i1* %6, align 1
  br label %161

154:                                              ; preds = %133
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %15, align 4
  br label %125

158:                                              ; preds = %125
  %159 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %10, align 8
  %160 = call %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* %159)
  store i1 false, i1* %6, align 1
  br label %161

161:                                              ; preds = %158, %153, %113, %77, %35, %30
  %162 = load i1, i1* %6, align 1
  ret i1 %162
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.HistogramElementStruct* @HistogramElement_new(i32 %0) #0 {
  %2 = alloca %struct.HistogramElementStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.HistogramElementStruct*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call noalias i8* @malloc(i64 16) #7
  %6 = bitcast i8* %5 to %struct.HistogramElementStruct*
  store %struct.HistogramElementStruct* %6, %struct.HistogramElementStruct** %4, align 8
  %7 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %8 = icmp ne %struct.HistogramElementStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %2, align 8
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %13 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %15 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %14, i32 0, i32 1
  store i32 1, i32* %15, align 4
  %16 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  %17 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %16, i32 0, i32 2
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %17, align 8
  %18 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %4, align 8
  store %struct.HistogramElementStruct* %18, %struct.HistogramElementStruct** %2, align 8
  br label %19

19:                                               ; preds = %10, %9
  %20 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %2, align 8
  ret %struct.HistogramElementStruct* %20
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @HistogramElement_updateList(%struct.HistogramElementStruct** %0, i32 %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.HistogramElementStruct**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.HistogramElementStruct**, align 8
  %7 = alloca %struct.HistogramElementStruct*, align 8
  %8 = alloca %struct.HistogramElementStruct*, align 8
  %9 = alloca i8, align 1
  store %struct.HistogramElementStruct** %0, %struct.HistogramElementStruct*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.HistogramElementStruct** null, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %7, align 8
  store %struct.HistogramElementStruct* null, %struct.HistogramElementStruct** %8, align 8
  store i8 0, i8* %9, align 1
  %10 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %4, align 8
  store %struct.HistogramElementStruct** %10, %struct.HistogramElementStruct*** %6, align 8
  %11 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %4, align 8
  %12 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %11, align 8
  store %struct.HistogramElementStruct* %12, %struct.HistogramElementStruct** %7, align 8
  br label %13

13:                                               ; preds = %55, %2
  %14 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %15 = icmp ne %struct.HistogramElementStruct* %14, null
  br i1 %15, label %16, label %59

16:                                               ; preds = %13
  %17 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %18 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %24 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %23, i32 0, i32 2
  store %struct.HistogramElementStruct** %24, %struct.HistogramElementStruct*** %6, align 8
  br label %55

25:                                               ; preds = %16
  %26 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %27 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %33 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  store i8 1, i8* %9, align 1
  br label %59

36:                                               ; preds = %25
  %37 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %38 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 %43)
  store %struct.HistogramElementStruct* %44, %struct.HistogramElementStruct** %8, align 8
  %45 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %46 = icmp ne %struct.HistogramElementStruct* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i1 false, i1* %3, align 1
  br label %72

48:                                               ; preds = %42
  %49 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %50 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %51 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %50, i32 0, i32 2
  store %struct.HistogramElementStruct* %49, %struct.HistogramElementStruct** %51, align 8
  %52 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %8, align 8
  %53 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* %52, %struct.HistogramElementStruct** %53, align 8
  store i8 1, i8* %9, align 1
  br label %59

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %7, align 8
  %57 = getelementptr inbounds %struct.HistogramElementStruct, %struct.HistogramElementStruct* %56, i32 0, i32 2
  %58 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %57, align 8
  store %struct.HistogramElementStruct* %58, %struct.HistogramElementStruct** %7, align 8
  br label %13

59:                                               ; preds = %48, %31, %13
  %60 = load i8, i8* %9, align 1
  %61 = trunc i8 %60 to i1
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.HistogramElementStruct* @HistogramElement_new(i32 %63)
  %65 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  store %struct.HistogramElementStruct* %64, %struct.HistogramElementStruct** %65, align 8
  %66 = load %struct.HistogramElementStruct**, %struct.HistogramElementStruct*** %6, align 8
  %67 = load %struct.HistogramElementStruct*, %struct.HistogramElementStruct** %66, align 8
  %68 = icmp eq %struct.HistogramElementStruct* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i1 false, i1* %3, align 1
  br label %72

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %59
  store i1 true, i1* %3, align 1
  br label %72

72:                                               ; preds = %71, %69, %47
  %73 = load i1, i1* %3, align 1
  ret i1 %73
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.StatsStruct* @Stats_new() #0 {
  %1 = alloca %struct.StatsStruct*, align 8
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = call noalias i8* @malloc(i64 40) #7
  %4 = bitcast i8* %3 to %struct.StatsStruct*
  store %struct.StatsStruct* %4, %struct.StatsStruct** %2, align 8
  %5 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %6 = icmp ne %struct.StatsStruct* %5, null
  br i1 %6, label %7, label %30

7:                                                ; preds = %0
  %8 = call %struct.IntVectorStruct* @IntVector_new(i32 16)
  %9 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %10 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %9, i32 0, i32 0
  store %struct.IntVectorStruct* %8, %struct.IntVectorStruct** %10, align 8
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %11, i32 0, i32 3
  store double 0.000000e+00, double* %12, align 8
  %13 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %14 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %13, i32 0, i32 4
  store double 0.000000e+00, double* %14, align 8
  %15 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %15, i32 0, i32 1
  store i32 2147483647, i32* %16, align 8
  %17 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %18 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %20 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %19, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 0
  %23 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %22, align 8
  %24 = icmp ne %struct.IntVectorStruct* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  store %struct.StatsStruct* %26, %struct.StatsStruct** %1, align 8
  br label %31

27:                                               ; preds = %7
  %28 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %29 = bitcast %struct.StatsStruct* %28 to i8*
  call void @free(i8* %29) #7
  store %struct.StatsStruct* null, %struct.StatsStruct** %1, align 8
  br label %31

30:                                               ; preds = %0
  store %struct.StatsStruct* null, %struct.StatsStruct** %1, align 8
  br label %31

31:                                               ; preds = %30, %27, %25
  %32 = load %struct.StatsStruct*, %struct.StatsStruct** %1, align 8
  ret %struct.StatsStruct* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_delete(%struct.StatsStruct* %0) #0 {
  %2 = alloca %struct.StatsStruct*, align 8
  store %struct.StatsStruct* %0, %struct.StatsStruct** %2, align 8
  %3 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %4 = icmp ne %struct.StatsStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %7 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %6, i32 0, i32 0
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %7, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %11, i32 0, i32 0
  %13 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %12, align 8
  %14 = bitcast %struct.IntVectorStruct* %13 to i8*
  call void @free(i8* %14) #7
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %17 = bitcast %struct.StatsStruct* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @Stats_logPath(%struct.StatsStruct* %0, %struct.NodePtrVecStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.StatsStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.StatsStruct* %0, %struct.StatsStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %10, i32 0, i32 0
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %11, align 8
  %13 = icmp ne %struct.IntVectorStruct* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %16 = icmp ne %struct.NodePtrVecStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %9, %2
  store i1 false, i1* %3, align 1
  br label %47

18:                                               ; preds = %14
  %19 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %24 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %30 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %27, %18
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %34 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %40 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.StatsStruct*, %struct.StatsStruct** %4, align 8
  %43 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %42, i32 0, i32 0
  %44 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* %44, i32 %45)
  store i1 %46, i1* %3, align 1
  br label %47

47:                                               ; preds = %41, %17
  %48 = load i1, i1* %3, align 1
  ret i1 %48
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Stats_calculate(%struct.StatsStruct* %0) #0 {
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store %struct.StatsStruct* %0, %struct.StatsStruct** %2, align 8
  %7 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %8 = icmp ne %struct.StatsStruct* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %11 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %10, i32 0, i32 0
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %11, align 8
  %13 = icmp ne %struct.IntVectorStruct* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %16 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %15, i32 0, i32 0
  %17 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %16, align 8
  %18 = icmp eq %struct.IntVectorStruct* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %9, %1
  br label %146

20:                                               ; preds = %14
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = call noalias i8* @calloc(i64 %25, i64 4) #7
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %29 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %31 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  br label %146

35:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %78, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %39 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %38, i32 0, i32 0
  %40 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %39, align 8
  %41 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %36
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %46 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %45, i32 0, i32 0
  %47 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %46, align 8
  %48 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %44
  %56 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %57 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %56, i32 0, i32 0
  %58 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %57, align 8
  %59 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = sitofp i32 %65 to double
  %67 = load double, double* %5, align 8
  %68 = fadd double %67, %66
  store double %68, double* %5, align 8
  %69 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %70 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %55, %44
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %36

81:                                               ; preds = %36
  %82 = load i32, i32* %3, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load double, double* %5, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %85, %87
  %89 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %90 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %89, i32 0, i32 3
  store double %88, double* %90, align 8
  br label %91

91:                                               ; preds = %84, %81
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %132, %91
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %95 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %94, i32 0, i32 0
  %96 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %95, align 8
  %97 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp slt i32 %93, %98
  br i1 %99, label %100, label %135

100:                                              ; preds = %92
  %101 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %102 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %101, i32 0, i32 0
  %103 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %102, align 8
  %104 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %131

111:                                              ; preds = %100
  %112 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %113 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %112, i32 0, i32 0
  %114 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %113, align 8
  %115 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = sitofp i32 %120 to double
  %122 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %123 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %122, i32 0, i32 3
  %124 = load double, double* %123, align 8
  %125 = fsub double %121, %124
  store double %125, double* %6, align 8
  %126 = load double, double* %6, align 8
  %127 = load double, double* %6, align 8
  %128 = fmul double %126, %127
  %129 = load double, double* %5, align 8
  %130 = fadd double %129, %128
  store double %130, double* %5, align 8
  br label %131

131:                                              ; preds = %111, %100
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %92

135:                                              ; preds = %92
  %136 = load i32, i32* %3, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load double, double* %5, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sitofp i32 %140 to double
  %142 = fdiv double %139, %141
  %143 = call double @sqrt(double %142) #7
  %144 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %145 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %144, i32 0, i32 4
  store double %143, double* %145, align 8
  br label %146

146:                                              ; preds = %138, %135, %34, %19
  ret void
}

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @testStats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.StatsStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct, align 8
  %4 = call %struct.StatsStruct* @Stats_new()
  store %struct.StatsStruct* %4, %struct.StatsStruct** %2, align 8
  store i32 2, i32* %1, align 4
  br label %5

5:                                                ; preds = %13, %0
  %6 = load i32, i32* %1, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %12 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %11, %struct.NodePtrVecStruct* %3)
  br label %13

13:                                               ; preds = %8
  %14 = load i32, i32* %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %1, align 4
  br label %5

16:                                               ; preds = %5
  %17 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %19 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %18, %struct.NodePtrVecStruct* %3)
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 4, i32* %20, align 8
  %21 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %22 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %21, %struct.NodePtrVecStruct* %3)
  %23 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %23, align 8
  %24 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %25 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %24, %struct.NodePtrVecStruct* %3)
  %26 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 6, i32* %26, align 8
  %27 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %28 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %27, %struct.NodePtrVecStruct* %3)
  %29 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %29, align 8
  %30 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %31 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %30, %struct.NodePtrVecStruct* %3)
  %32 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %32, align 8
  %33 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %34 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %33, %struct.NodePtrVecStruct* %3)
  %35 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 4, i32* %35, align 8
  %36 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %37 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %36, %struct.NodePtrVecStruct* %3)
  %38 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %38, align 8
  %39 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %40 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %39, %struct.NodePtrVecStruct* %3)
  %41 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 6, i32* %41, align 8
  %42 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %43 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %42, %struct.NodePtrVecStruct* %3)
  %44 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %44, align 8
  %45 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %46 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %45, %struct.NodePtrVecStruct* %3)
  %47 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %3, i32 0, i32 0
  store i32 5, i32* %47, align 8
  %48 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %49 = call zeroext i1 @Stats_logPath(%struct.StatsStruct* %48, %struct.NodePtrVecStruct* %3)
  %50 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  call void @Stats_calculate(%struct.StatsStruct* %50)
  %51 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %52 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %51, i32 0, i32 3
  %53 = load double, double* %52, align 8
  %54 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %55 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %54, i32 0, i32 4
  %56 = load double, double* %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.93, i64 0, i64 0), double %53, double %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.94, i64 0, i64 0))
  %59 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %60 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %78, %16
  %63 = load i32, i32* %1, align 4
  %64 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %65 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %62
  %69 = load i32, i32* %1, align 4
  %70 = load %struct.StatsStruct*, %struct.StatsStruct** %2, align 8
  %71 = getelementptr inbounds %struct.StatsStruct, %struct.StatsStruct* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2.95, i64 0, i64 0), i32 %69, i32 %76)
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %62

81:                                               ; preds = %62
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.SystemCallMapElementStruct*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SystemCallMapElementStruct*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call noalias i8* @malloc(i64 24) #7
  %8 = bitcast i8* %7 to %struct.SystemCallMapElementStruct*
  store %struct.SystemCallMapElementStruct* %8, %struct.SystemCallMapElementStruct** %6, align 8
  %9 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %10 = icmp ne %struct.SystemCallMapElementStruct* %9, null
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call noalias i8* @strdup(i8* %12) #7
  %14 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %15 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %17 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 8
  %18 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %19 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %11
  %23 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %24 = bitcast %struct.SystemCallMapElementStruct* %23 to i8*
  call void @free(i8* %24) #7
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

25:                                               ; preds = %11
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 %26)
  %28 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %28, i32 0, i32 2
  store %struct.NodePtrVecStruct* %27, %struct.NodePtrVecStruct** %29, align 8
  %30 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %31 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %30, i32 0, i32 2
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %31, align 8
  %33 = icmp ne %struct.NodePtrVecStruct* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %25
  %35 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  call void @free(i8* %37) #7
  %38 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  %39 = bitcast %struct.SystemCallMapElementStruct* %38 to i8*
  call void @free(i8* %39) #7
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %6, align 8
  store %struct.SystemCallMapElementStruct* %42, %struct.SystemCallMapElementStruct** %3, align 8
  br label %43

43:                                               ; preds = %41, %34, %22
  %44 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  ret %struct.SystemCallMapElementStruct* %44
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* %0) #0 {
  %2 = alloca %struct.SystemCallMapElementStruct*, align 8
  store %struct.SystemCallMapElementStruct* %0, %struct.SystemCallMapElementStruct** %2, align 8
  %3 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %4 = icmp ne %struct.SystemCallMapElementStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %7 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %12 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #7
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %15, i32 0, i32 2
  %17 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %16, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %17)
  br label %18

18:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.SystemCallMapStruct* @SystemCallMap_new(i32 %0) #0 {
  %2 = alloca %struct.SystemCallMapStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca %struct.SystemCallMapElementStruct**, align 8
  store i32 %0, i32* %3, align 4
  store %struct.SystemCallMapStruct* null, %struct.SystemCallMapStruct** %4, align 8
  store %struct.SystemCallMapElementStruct** null, %struct.SystemCallMapElementStruct*** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.SystemCallMapStruct* null, %struct.SystemCallMapStruct** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 %12) #7
  %14 = bitcast i8* %13 to %struct.SystemCallMapElementStruct**
  store %struct.SystemCallMapElementStruct** %14, %struct.SystemCallMapElementStruct*** %5, align 8
  %15 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %16 = icmp ne %struct.SystemCallMapElementStruct** %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %9
  %18 = call noalias i8* @malloc(i64 16) #7
  %19 = bitcast i8* %18 to %struct.SystemCallMapStruct*
  store %struct.SystemCallMapStruct* %19, %struct.SystemCallMapStruct** %4, align 8
  %20 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %21 = icmp ne %struct.SystemCallMapStruct* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %25 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %27 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %29 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %30 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %29, i32 0, i32 2
  store %struct.SystemCallMapElementStruct** %28, %struct.SystemCallMapElementStruct*** %30, align 8
  br label %34

31:                                               ; preds = %17
  %32 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %5, align 8
  %33 = bitcast %struct.SystemCallMapElementStruct** %32 to i8*
  call void @free(i8* %33) #7
  br label %34

34:                                               ; preds = %31, %22
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  store %struct.SystemCallMapStruct* %36, %struct.SystemCallMapStruct** %2, align 8
  br label %37

37:                                               ; preds = %35, %8
  %38 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  ret %struct.SystemCallMapStruct* %38
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SystemCallMap_delete(%struct.SystemCallMapStruct* %0) #0 {
  %2 = alloca %struct.SystemCallMapStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %2, align 8
  %4 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %5 = icmp ne %struct.SystemCallMapStruct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %25

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %22, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %11 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %8
  %15 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %15, i32 0, i32 2
  %17 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %17, i64 %19
  %21 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %20, align 8
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* %21)
  br label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %8

25:                                               ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SystemCallMap_insert(%struct.SystemCallMapStruct* %0, i8* %1, %struct.NodeStruct* %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.SystemCallMapStruct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.SystemCallMapElementStruct*, align 8
  %10 = alloca i8, align 1
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.NodeStruct* %2, %struct.NodeStruct** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %9, align 8
  store i8 0, i8* %10, align 1
  %11 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %12 = icmp ne %struct.SystemCallMapStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i1 false, i1* %4, align 1
  br label %147

20:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %67, %20
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %24 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %30 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %29, i32 0, i32 2
  %31 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %31, i64 %33
  %35 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %34, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @strcmp(i8* %28, i8* %37) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %27
  %41 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %42 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %41, i32 0, i32 2
  %43 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %43, i64 %45
  %47 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %46, align 8
  %48 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %54 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %56 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %55, i32 0, i32 2
  %57 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %57, i64 %59
  %61 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %60, align 8
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %61, i32 0, i32 2
  %63 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %62, align 8
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %65 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %63, %struct.NodeStruct* %64)
  store i1 %65, i1* %4, align 1
  br label %147

66:                                               ; preds = %27
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %21

70:                                               ; preds = %21
  %71 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %72 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %75 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %70
  %79 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %80 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %79, i32 0, i32 2
  %81 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %80, align 8
  %82 = bitcast %struct.SystemCallMapElementStruct** %81 to i8*
  %83 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %84 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = call i8* @realloc(i8* %82, i64 %88) #7
  %90 = bitcast i8* %89 to %struct.SystemCallMapElementStruct**
  %91 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %92 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %91, i32 0, i32 2
  store %struct.SystemCallMapElementStruct** %90, %struct.SystemCallMapElementStruct*** %92, align 8
  %93 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %94 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %93, i32 0, i32 2
  %95 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %94, align 8
  %96 = icmp ne %struct.SystemCallMapElementStruct** %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %78
  %98 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %99 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %99, align 4
  br label %103

102:                                              ; preds = %78
  store i1 false, i1* %4, align 1
  br label %147

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %70
  %105 = load i8*, i8** %6, align 8
  %106 = call %struct.SystemCallMapElementStruct* @SystemCallMapElement_new(i8* %105, i32 8)
  store %struct.SystemCallMapElementStruct* %106, %struct.SystemCallMapElementStruct** %9, align 8
  %107 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %108 = icmp ne %struct.SystemCallMapElementStruct* %107, null
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  store i1 false, i1* %4, align 1
  br label %147

110:                                              ; preds = %104
  %111 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %112 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %111, i32 0, i32 2
  %113 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %112, align 8
  %114 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %115 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %113, %struct.NodeStruct* %114)
  %116 = zext i1 %115 to i8
  store i8 %116, i8* %10, align 1
  %117 = load i8, i8* %10, align 1
  %118 = trunc i8 %117 to i1
  br i1 %118, label %121, label %119

119:                                              ; preds = %110
  %120 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  call void @SystemCallMapElement_delete(%struct.SystemCallMapElementStruct* %120)
  br label %121

121:                                              ; preds = %119, %110
  %122 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %123 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %126 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %125, i32 0, i32 2
  store i8* %124, i8** %126, align 8
  %127 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %128 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %131 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  %133 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %132, i32 0, i32 3
  store i32 %129, i32* %133, align 8
  %134 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %9, align 8
  %135 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %136 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %135, i32 0, i32 2
  %137 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %136, align 8
  %138 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %139 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %137, i64 %141
  store %struct.SystemCallMapElementStruct* %134, %struct.SystemCallMapElementStruct** %142, align 8
  %143 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %5, align 8
  %144 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  store i1 true, i1* %4, align 1
  br label %147

147:                                              ; preds = %121, %109, %102, %40, %19
  %148 = load i1, i1* %4, align 1
  ret i1 %148
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @SystemCallMap_findLabeledNodes(%struct.SystemCallMapStruct* %0, i8* %1) #0 {
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %8 = icmp ne %struct.SystemCallMapStruct* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %2
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %48

13:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %44, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %17 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %14
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %23 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %22, i32 0, i32 2
  %24 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %24, i64 %26
  %28 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %27, align 8
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %21, i8* %30) #9
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %20
  %34 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %35 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %34, i32 0, i32 2
  %36 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %36, i64 %38
  %40 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %39, align 8
  %41 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %40, i32 0, i32 2
  %42 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %41, align 8
  store %struct.NodePtrVecStruct* %42, %struct.NodePtrVecStruct** %3, align 8
  br label %48

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %14

47:                                               ; preds = %14
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %48

48:                                               ; preds = %47, %33, %12
  %49 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  ret %struct.NodePtrVecStruct* %49
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SystemCallMapStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %29, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %10 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %7
  %14 = load i8*, i8** %5, align 8
  %15 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %4, align 8
  %16 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %15, i32 0, i32 2
  %17 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %17, i64 %19
  %21 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %20, align 8
  %22 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strcmp(i8* %14, i8* %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %33

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %7

32:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @SystemCallMap_signatureRepresented(%struct.SystemCallMapStruct* %0, i8** %1) #0 {
  %3 = alloca %struct.SystemCallMapStruct*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i8 1, i8* %6, align 1
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i8**, i8*** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8*, i8** %8, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = load i8, i8* %6, align 1
  %16 = trunc i8 %15 to i1
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i1 [ false, %7 ], [ %16, %14 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %3, align 8
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @SystemCallMap_getLabelIndex(%struct.SystemCallMapStruct* %20, i8* %25)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i8 0, i8* %6, align 1
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %17
  %34 = load i8, i8* %6, align 1
  %35 = trunc i8 %34 to i1
  ret i1 %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @edgeListPrettyPrint(%struct.EdgeListStruct* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.EdgeListStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.EdgeListStruct* %0, %struct.EdgeListStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %14, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %7, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %7, align 4
  br label %8

17:                                               ; preds = %8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.103, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %28, %17
  %21 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %22 = icmp ne %struct.EdgeListStruct* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %25 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.104, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %4, align 8
  %30 = getelementptr inbounds %struct.EdgeListStruct, %struct.EdgeListStruct* %29, i32 0, i32 2
  %31 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %30, align 8
  store %struct.EdgeListStruct* %31, %struct.EdgeListStruct** %4, align 8
  br label %20

32:                                               ; preds = %20
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @nodeListPrettyPrint(%struct.NodeListStruct* %0, i32 %1, i8* %2, i1 zeroext %3) #0 {
  %5 = alloca %struct.NodeListStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store %struct.NodeListStruct* %0, %struct.NodeListStruct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = zext i1 %3 to i8
  store i8 %10, i8* %8, align 1
  %11 = load %struct.NodeListStruct*, %struct.NodeListStruct** %5, align 8
  %12 = icmp ne %struct.NodeListStruct* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %59

14:                                               ; preds = %4
  %15 = load %struct.NodeListStruct*, %struct.NodeListStruct** %5, align 8
  %16 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %15, i32 0, i32 0
  %17 = load %struct.NodeStruct*, %struct.NodeStruct** %16, align 8
  %18 = icmp ne %struct.NodeStruct* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.NodeListStruct*, %struct.NodeListStruct** %5, align 8
  %21 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %20, i32 0, i32 0
  %22 = load %struct.NodeStruct*, %struct.NodeStruct** %21, align 8
  %23 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.106, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %14
  %27 = load %struct.NodeListStruct*, %struct.NodeListStruct** %5, align 8
  %28 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %27, i32 0, i32 1
  %29 = load %struct.NodeListStruct*, %struct.NodeListStruct** %28, align 8
  %30 = icmp ne %struct.NodeListStruct* %29, null
  br i1 %30, label %31, label %57

31:                                               ; preds = %26
  %32 = load i8, i8* %8, align 1
  %33 = trunc i8 %32 to i1
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %42, %34
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.107, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %36

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.108, i64 0, i64 0), i8* %47)
  %49 = load %struct.NodeListStruct*, %struct.NodeListStruct** %5, align 8
  %50 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %49, i32 0, i32 1
  %51 = load %struct.NodeListStruct*, %struct.NodeListStruct** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i8*, i8** %7, align 8
  %55 = load i8, i8* %8, align 1
  %56 = trunc i8 %55 to i1
  call void @nodeListPrettyPrint(%struct.NodeListStruct* %51, i32 %53, i8* %54, i1 zeroext %56)
  br label %59

57:                                               ; preds = %26
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %46, %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @graphPrettyPrint(%struct.GraphStruct* %0) #0 {
  %2 = alloca %struct.GraphStruct*, align 8
  %3 = alloca %struct.NodeListStruct*, align 8
  %4 = alloca %struct.NodeListStruct*, align 8
  store %struct.GraphStruct* %0, %struct.GraphStruct** %2, align 8
  %5 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %6 = getelementptr inbounds %struct.GraphStruct, %struct.GraphStruct* %5, i32 0, i32 2
  %7 = load %struct.NodeListStruct*, %struct.NodeListStruct** %6, align 8
  store %struct.NodeListStruct* %7, %struct.NodeListStruct** %3, align 8
  br label %8

8:                                                ; preds = %73, %1
  %9 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %10 = icmp ne %struct.NodeListStruct* %9, null
  br i1 %10, label %11, label %77

11:                                               ; preds = %8
  %12 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %13 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %12, i32 0, i32 0
  %14 = load %struct.NodeStruct*, %struct.NodeStruct** %13, align 8
  %15 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %18 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %17, i32 0, i32 0
  %19 = load %struct.NodeStruct*, %struct.NodeStruct** %18, align 8
  %20 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %23 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %22, i32 0, i32 0
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %11
  %29 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %30 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %29, i32 0, i32 0
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %30, align 8
  %32 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34, %28
  %36 = phi i8* [ %33, %28 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8.109, i64 0, i64 0), %34 ]
  %37 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %38 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %37, i32 0, i32 0
  %39 = load %struct.NodeStruct*, %struct.NodeStruct** %38, align 8
  %40 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7.110, i64 0, i64 0), i32 %16, i32 %21, i8* %36, i32 %41)
  %43 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %44 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %43, i32 0, i32 0
  %45 = load %struct.NodeStruct*, %struct.NodeStruct** %44, align 8
  %46 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %45, i32 0, i32 7
  %47 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %46, align 8
  call void @edgeListPrettyPrint(%struct.EdgeListStruct* %47, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.111, i64 0, i64 0))
  %48 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %49 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %48, i32 0, i32 0
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %49, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 6
  %52 = load %struct.NodeListStruct*, %struct.NodeListStruct** %51, align 8
  store %struct.NodeListStruct* %52, %struct.NodeListStruct** %4, align 8
  br label %53

53:                                               ; preds = %68, %35
  %54 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %55 = icmp ne %struct.NodeListStruct* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %58 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %57, i32 0, i32 0
  %59 = load %struct.NodeStruct*, %struct.NodeStruct** %58, align 8
  %60 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10.112, i64 0, i64 0), i32 %61)
  %63 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %64 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %63, i32 0, i32 0
  %65 = load %struct.NodeStruct*, %struct.NodeStruct** %64, align 8
  %66 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %65, i32 0, i32 7
  %67 = load %struct.EdgeListStruct*, %struct.EdgeListStruct** %66, align 8
  call void @edgeListPrettyPrint(%struct.EdgeListStruct* %67, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.111, i64 0, i64 0))
  br label %68

68:                                               ; preds = %56
  %69 = load %struct.NodeListStruct*, %struct.NodeListStruct** %4, align 8
  %70 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %69, i32 0, i32 1
  %71 = load %struct.NodeListStruct*, %struct.NodeListStruct** %70, align 8
  store %struct.NodeListStruct* %71, %struct.NodeListStruct** %4, align 8
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.NodeListStruct*, %struct.NodeListStruct** %3, align 8
  %75 = getelementptr inbounds %struct.NodeListStruct, %struct.NodeListStruct* %74, i32 0, i32 1
  %76 = load %struct.NodeListStruct*, %struct.NodeListStruct** %75, align 8
  store %struct.NodeListStruct* %76, %struct.NodeListStruct** %3, align 8
  br label %8

77:                                               ; preds = %8
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11.113, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @systemCallMapPrettyPrint(%struct.SystemCallMapStruct* %0) #0 {
  %2 = alloca %struct.SystemCallMapStruct*, align 8
  %3 = alloca %struct.SystemCallMapElementStruct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.SystemCallMapStruct* %0, %struct.SystemCallMapStruct** %2, align 8
  store %struct.SystemCallMapElementStruct* null, %struct.SystemCallMapElementStruct** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %7 = icmp ne %struct.SystemCallMapStruct* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %81

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %73, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %13 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %10
  %17 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %18 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %17, i32 0, i32 2
  %19 = load %struct.SystemCallMapElementStruct**, %struct.SystemCallMapElementStruct*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %19, i64 %21
  %23 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %22, align 8
  store %struct.SystemCallMapElementStruct* %23, %struct.SystemCallMapElementStruct** %3, align 8
  %24 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  %25 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12.114, i64 0, i64 0), i8* %26)
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %69, %16
  %29 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  %30 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %29, i32 0, i32 2
  %31 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %30, align 8
  %32 = icmp ne %struct.NodePtrVecStruct* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  %36 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %35, i32 0, i32 2
  %37 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %36, align 8
  %38 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %34, %39
  br label %41

41:                                               ; preds = %33, %28
  %42 = phi i1 [ false, %28 ], [ %40, %33 ]
  br i1 %42, label %43, label %72

43:                                               ; preds = %41
  %44 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  %45 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %44, i32 0, i32 2
  %46 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %45, align 8
  %47 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %46, i32 0, i32 2
  %48 = load %struct.NodeStruct**, %struct.NodeStruct*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %48, i64 %50
  %52 = load %struct.NodeStruct*, %struct.NodeStruct** %51, align 8
  %53 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.106, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.SystemCallMapElementStruct*, %struct.SystemCallMapElementStruct** %3, align 8
  %58 = getelementptr inbounds %struct.SystemCallMapElementStruct, %struct.SystemCallMapElementStruct* %57, i32 0, i32 2
  %59 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %58, align 8
  %60 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = icmp slt i32 %56, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.115, i64 0, i64 0))
  br label %68

66:                                               ; preds = %43
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11.113, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %64
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %28

72:                                               ; preds = %41
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %10

76:                                               ; preds = %10
  %77 = load %struct.SystemCallMapStruct*, %struct.SystemCallMapStruct** %2, align 8
  %78 = getelementptr inbounds %struct.SystemCallMapStruct, %struct.SystemCallMapStruct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14.116, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @testGraph() #0 {
  %1 = alloca i1, align 1
  %2 = alloca %struct.GraphStruct*, align 8
  %3 = alloca %struct.NodeStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca %struct.NodeStruct*, align 8
  %7 = alloca %struct.NodeStruct*, align 8
  %8 = alloca %struct.NodeStruct*, align 8
  %9 = alloca %struct.NodeStruct*, align 8
  %10 = call noalias i8* @malloc(i64 40) #7
  %11 = bitcast i8* %10 to %struct.GraphStruct*
  store %struct.GraphStruct* %11, %struct.GraphStruct** %2, align 8
  %12 = call %struct.NodeStruct* @Node_new(i32 10, i32 0)
  store %struct.NodeStruct* %12, %struct.NodeStruct** %3, align 8
  %13 = call %struct.NodeStruct* @Node_new(i32 20, i32 1)
  store %struct.NodeStruct* %13, %struct.NodeStruct** %4, align 8
  %14 = call %struct.NodeStruct* @Node_new(i32 11, i32 2)
  store %struct.NodeStruct* %14, %struct.NodeStruct** %5, align 8
  %15 = call %struct.NodeStruct* @Node_new(i32 12, i32 3)
  store %struct.NodeStruct* %15, %struct.NodeStruct** %6, align 8
  %16 = call %struct.NodeStruct* @Node_new(i32 21, i32 4)
  store %struct.NodeStruct* %16, %struct.NodeStruct** %7, align 8
  %17 = call %struct.NodeStruct* @Node_new(i32 22, i32 5)
  store %struct.NodeStruct* %17, %struct.NodeStruct** %8, align 8
  %18 = call %struct.NodeStruct* @Node_new(i32 23, i32 6)
  store %struct.NodeStruct* %18, %struct.NodeStruct** %9, align 8
  %19 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %20 = icmp ne %struct.GraphStruct* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %0
  store i1 false, i1* %1, align 1
  br label %40

22:                                               ; preds = %0
  %23 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %25 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* %23, %struct.NodeStruct* %24)
  %26 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  %27 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %28 = call zeroext i1 @Graph_addOuterNode(%struct.GraphStruct* %26, %struct.NodeStruct* %27)
  %29 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %30 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %29, %struct.NodeStruct* %30)
  %31 = load %struct.NodeStruct*, %struct.NodeStruct** %3, align 8
  %32 = load %struct.NodeStruct*, %struct.NodeStruct** %6, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %31, %struct.NodeStruct* %32)
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %7, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %33, %struct.NodeStruct* %34)
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %36 = load %struct.NodeStruct*, %struct.NodeStruct** %8, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %35, %struct.NodeStruct* %36)
  %37 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  %38 = load %struct.NodeStruct*, %struct.NodeStruct** %9, align 8
  call void @Node_addInteriorNode(%struct.NodeStruct* %37, %struct.NodeStruct* %38)
  %39 = load %struct.GraphStruct*, %struct.GraphStruct** %2, align 8
  call void @graphPrettyPrint(%struct.GraphStruct* %39)
  store i1 true, i1* %1, align 1
  br label %40

40:                                               ; preds = %22, %21
  %41 = load i1, i1* %1, align 1
  ret i1 %41
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @printStack(%struct.NodePtrVecStruct* %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %2, align 8
  %4 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %5 = icmp ne %struct.NodePtrVecStruct* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %69

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %62, %7
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %65

14:                                               ; preds = %8
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %16 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %15, i32 0, i32 2
  %17 = load %struct.NodeStruct**, %struct.NodeStruct*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %17, i64 %19
  %21 = load %struct.NodeStruct*, %struct.NodeStruct** %20, align 8
  %22 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.106, i64 0, i64 0), i32 %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @fflush(%struct._IO_FILE* %25)
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %28 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %27, i32 0, i32 2
  %29 = load %struct.NodeStruct**, %struct.NodeStruct*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %29, i64 %31
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %32, align 8
  %34 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %14
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %39 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %38, i32 0, i32 2
  %40 = load %struct.NodeStruct**, %struct.NodeStruct*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %40, i64 %42
  %44 = load %struct.NodeStruct*, %struct.NodeStruct** %43, align 8
  %45 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15.117, i64 0, i64 0), i8* %46)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = call i32 @fflush(%struct._IO_FILE* %48)
  br label %50

50:                                               ; preds = %37, %14
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %53 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  %56 = icmp ne i32 %51, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16.118, i64 0, i64 0))
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 @fflush(%struct._IO_FILE* %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %3, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %3, align 4
  br label %8

65:                                               ; preds = %8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.105, i64 0, i64 0))
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = call i32 @fflush(%struct._IO_FILE* %67)
  br label %69

69:                                               ; preds = %65, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @testStack() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @searchDiagramPrettyPrint(%struct.EdgeReferencesStruct* %0) #0 {
  %2 = alloca %struct.EdgeReferencesStruct*, align 8
  store %struct.EdgeReferencesStruct* %0, %struct.EdgeReferencesStruct** %2, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.IntVectorStruct* @IntVector_new(i32 %0) #0 {
  %2 = alloca %struct.IntVectorStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call noalias i8* @malloc(i64 16) #7
  %7 = bitcast i8* %6 to %struct.IntVectorStruct*
  store %struct.IntVectorStruct* %7, %struct.IntVectorStruct** %4, align 8
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call noalias i8* @malloc(i64 %13) #7
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %21 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %26 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  store %struct.IntVectorStruct* %27, %struct.IntVectorStruct** %2, align 8
  br label %32

28:                                               ; preds = %10
  %29 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %30 = bitcast %struct.IntVectorStruct* %29 to i8*
  call void @free(i8* %30) #7
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %2, align 8
  br label %32

31:                                               ; preds = %1
  store %struct.IntVectorStruct* null, %struct.IntVectorStruct** %2, align 8
  br label %32

32:                                               ; preds = %31, %28, %18
  %33 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  ret %struct.IntVectorStruct* %33
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @IntVector_delete(%struct.IntVectorStruct* %0) #0 {
  %2 = alloca %struct.IntVectorStruct*, align 8
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %2, align 8
  %3 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %4 = icmp ne %struct.IntVectorStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %7 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %12 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #7
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %2, align 8
  %17 = bitcast %struct.IntVectorStruct* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* %0, i32 %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %13 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %11
  %22 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call i8* @realloc(i8* %25, i64 %29) #7
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %33 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  %34 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %35 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %42 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %48

43:                                               ; preds = %21
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, 2
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.125, i64 0, i64 0), i32 %46)
  store i1 false, i1* %3, align 1
  br label %61

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %11
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %52 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %50, i32* %56, align 4
  %57 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %58 = getelementptr inbounds %struct.IntVectorStruct, %struct.IntVectorStruct* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  store i1 true, i1* %3, align 1
  br label %61

61:                                               ; preds = %49, %43, %10
  %62 = load i1, i1* %3, align 1
  ret i1 %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @IntVector_createFromString(%struct.IntVectorStruct* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.IntVectorStruct*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.IntVectorStruct* %0, %struct.IntVectorStruct** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %9 = icmp ne %struct.IntVectorStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %10
  %15 = call i16** @__ctype_b_loc() #10
  %16 = load i16*, i16** %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %16, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 2048
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %14
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @findNextNumber(i8* %28)
  store i8* %29, i8** %5, align 8
  br label %30

30:                                               ; preds = %27, %14
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @atoi(i8* %35) #9
  store i32 %36, i32* %7, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @findNextNumber(i8* %37)
  store i8* %38, i8** %5, align 8
  %39 = load %struct.IntVectorStruct*, %struct.IntVectorStruct** %4, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call zeroext i1 @IntVector_insertEnd(%struct.IntVectorStruct* %39, i32 %40)
  br i1 %41, label %43, label %42

42:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %48

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %42, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @findNextNumber(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = call i16** @__ctype_b_loc() #10
  %5 = load i16*, i16** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, i16* %5, i64 %10
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 2048
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %3, align 8
  br label %19

19:                                               ; preds = %39, %16
  %20 = call i16** @__ctype_b_loc() #10
  %21 = load i16*, i16** %20, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %21, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 2048
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %19
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %19
  %38 = phi i1 [ false, %19 ], [ %36, %32 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %3, align 8
  br label %19

42:                                               ; preds = %37
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i8* null, i8** %2, align 8
  br label %110

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %70, %49
  %51 = call i16** @__ctype_b_loc() #10
  %52 = load i16*, i16** %51, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %52, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  %61 = and i32 %60, 2048
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %50
  %64 = load i8*, i8** %3, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br label %68

68:                                               ; preds = %63, %50
  %69 = phi i1 [ false, %50 ], [ %67, %63 ]
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %3, align 8
  br label %50

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73
  %75 = load i8*, i8** %3, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i8* null, i8** %2, align 8
  br label %110

81:                                               ; preds = %74
  %82 = load i8*, i8** %3, align 8
  store i8* %82, i8** %2, align 8
  br label %110

83:                                               ; preds = %1
  br label %84

84:                                               ; preds = %94, %83
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i8* null, i8** %2, align 8
  br label %110

91:                                               ; preds = %84
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  br label %94

94:                                               ; preds = %91
  %95 = call i16** @__ctype_b_loc() #10
  %96 = load i16*, i16** %95, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i16, i16* %96, i64 %101
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = and i32 %104, 2048
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %84, label %108

108:                                              ; preds = %94
  %109 = load i8*, i8** %3, align 8
  store i8* %109, i8** %2, align 8
  br label %110

110:                                              ; preds = %108, %90, %81, %80, %48
  %111 = load i8*, i8** %2, align 8
  ret i8* %111
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.CharVectorStruct* @CharVector_new(i32 %0) #0 {
  %2 = alloca %struct.CharVectorStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %6 = call noalias i8* @malloc(i64 16) #7
  %7 = bitcast i8* %6 to %struct.CharVectorStruct*
  store %struct.CharVectorStruct* %7, %struct.CharVectorStruct** %4, align 8
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 1
  %14 = call noalias i8* @malloc(i64 %13) #7
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %20 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %22 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %25 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  store %struct.CharVectorStruct* %26, %struct.CharVectorStruct** %2, align 8
  br label %31

27:                                               ; preds = %10
  %28 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %29 = bitcast %struct.CharVectorStruct* %28 to i8*
  call void @free(i8* %29) #7
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %2, align 8
  br label %31

30:                                               ; preds = %1
  store %struct.CharVectorStruct* null, %struct.CharVectorStruct** %2, align 8
  br label %31

31:                                               ; preds = %30, %27, %17
  %32 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  ret %struct.CharVectorStruct* %32
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @CharVector_delete(%struct.CharVectorStruct* %0) #0 {
  %2 = alloca %struct.CharVectorStruct*, align 8
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %2, align 8
  %3 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %4 = icmp ne %struct.CharVectorStruct* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %7 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %12 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  call void @free(i8* %13) #7
  br label %14

14:                                               ; preds = %10, %5
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %2, align 8
  %16 = bitcast %struct.CharVectorStruct* %15 to i8*
  call void @free(i8* %16) #7
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* %0, i8 signext %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %59

11:                                               ; preds = %2
  %12 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %13 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %11
  %22 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %23 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 2, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 1
  %29 = call i8* @realloc(i8* %24, i64 %28) #7
  %30 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %31 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %33 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, 2
  %39 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %40 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %46

41:                                               ; preds = %21
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.125, i64 0, i64 0), i32 %44)
  store i1 false, i1* %3, align 1
  br label %59

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %11
  %48 = load i8, i8* %5, align 1
  %49 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %50 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 %48, i8* %54, align 1
  %55 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %56 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  store i1 true, i1* %3, align 1
  br label %59

59:                                               ; preds = %47, %41, %10
  %60 = load i1, i1* %3, align 1
  ret i1 %60
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @CharVector_getLineFromFile(%struct.CharVectorStruct* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.CharVectorStruct*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.CharVectorStruct* %0, %struct.CharVectorStruct** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i8 1, i8* %6, align 1
  store i8 0, i8* %7, align 1
  %8 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %9 = icmp ne %struct.CharVectorStruct* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %47

14:                                               ; preds = %10
  %15 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %16 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  br label %17

17:                                               ; preds = %36, %14
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %19 = call i32 @fgetc(%struct._IO_FILE* %18)
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %7, align 1
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %22 = call i32 @feof(%struct._IO_FILE* %21) #7
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load i8, i8* %7, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %17
  store i8 0, i8* %6, align 1
  br label %35

29:                                               ; preds = %24
  %30 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* %30, i8 signext %31)
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %47

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %28
  br label %36

36:                                               ; preds = %35
  %37 = load i8, i8* %6, align 1
  %38 = trunc i8 %37 to i1
  br i1 %38, label %17, label %39

39:                                               ; preds = %36
  %40 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %41 = call zeroext i1 @CharVector_insertEnd(%struct.CharVectorStruct* %40, i8 signext 0)
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  store i32 -1, i32* %3, align 4
  br label %47

43:                                               ; preds = %39
  %44 = load %struct.CharVectorStruct*, %struct.CharVectorStruct** %4, align 8
  %45 = getelementptr inbounds %struct.CharVectorStruct, %struct.CharVectorStruct* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %42, %33, %13
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @fgetc(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @NodePtrVec_new(i32 %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct**, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 %8) #7
  %10 = bitcast i8* %9 to %struct.NodeStruct**
  store %struct.NodeStruct** %10, %struct.NodeStruct*** %5, align 8
  %11 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %12 = icmp ne %struct.NodeStruct** %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1.136, i64 0, i64 0))
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %2, align 8
  br label %34

15:                                               ; preds = %1
  %16 = call noalias i8* @malloc(i64 16) #7
  %17 = bitcast i8* %16 to %struct.NodePtrVecStruct*
  store %struct.NodePtrVecStruct* %17, %struct.NodePtrVecStruct** %4, align 8
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %19 = icmp ne %struct.NodePtrVecStruct* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %22 = bitcast %struct.NodeStruct** %21 to i8*
  call void @free(i8* %22) #7
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2.137, i64 0, i64 0))
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %2, align 8
  br label %34

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %27 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %29 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.NodeStruct**, %struct.NodeStruct*** %5, align 8
  %31 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %32 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %31, i32 0, i32 2
  store %struct.NodeStruct** %30, %struct.NodeStruct*** %32, align 8
  %33 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %33, %struct.NodePtrVecStruct** %2, align 8
  br label %34

34:                                               ; preds = %24, %20, %13
  %35 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  ret %struct.NodePtrVecStruct* %35
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_delete(%struct.NodePtrVecStruct* %0) #0 {
  %2 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %2, align 8
  %3 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %4 = icmp ne %struct.NodePtrVecStruct* %3, null
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %7 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %6, i32 0, i32 2
  %8 = load %struct.NodeStruct**, %struct.NodeStruct*** %7, align 8
  %9 = icmp ne %struct.NodeStruct** %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %12 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %11, i32 0, i32 2
  %13 = load %struct.NodeStruct**, %struct.NodeStruct*** %12, align 8
  %14 = bitcast %struct.NodeStruct** %13 to i8*
  call void @free(i8* %14) #7
  br label %15

15:                                               ; preds = %10, %5
  %16 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %2, align 8
  %17 = bitcast %struct.NodePtrVecStruct* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* %0, i1 zeroext %1) #0 {
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  %8 = zext i1 %1 to i8
  store i8 %8, i8* %5, align 1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %10 = icmp ne %struct.NodePtrVecStruct* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %61

12:                                               ; preds = %2
  %13 = load i8, i8* %5, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %17 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 %18)
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.NodePtrVecStruct* @NodePtrVec_new(i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi %struct.NodePtrVecStruct* [ %19, %15 ], [ %24, %20 ]
  store %struct.NodePtrVecStruct* %26, %struct.NodePtrVecStruct** %7, align 8
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %28 = icmp ne %struct.NodePtrVecStruct* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store %struct.NodePtrVecStruct* null, %struct.NodePtrVecStruct** %3, align 8
  br label %61

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %34 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %31
  %38 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %39 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %38, i32 0, i32 2
  %40 = load %struct.NodeStruct**, %struct.NodeStruct*** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %40, i64 %42
  %44 = load %struct.NodeStruct*, %struct.NodeStruct** %43, align 8
  %45 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %46 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %45, i32 0, i32 2
  %47 = load %struct.NodeStruct**, %struct.NodeStruct*** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %47, i64 %49
  store %struct.NodeStruct* %44, %struct.NodeStruct** %50, align 8
  br label %51

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %56 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  %59 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %7, align 8
  store %struct.NodePtrVecStruct* %60, %struct.NodePtrVecStruct** %3, align 8
  br label %61

61:                                               ; preds = %54, %29, %11
  %62 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  ret %struct.NodePtrVecStruct* %62
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %8 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %9 = icmp ne %struct.NodePtrVecStruct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %75

11:                                               ; preds = %2
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %13 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %16 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %11
  %22 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %23 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %22, i32 0, i32 2
  %24 = load %struct.NodeStruct**, %struct.NodeStruct*** %23, align 8
  %25 = bitcast %struct.NodeStruct** %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = call i8* @realloc(i8* %25, i64 %29) #7
  %31 = bitcast i8* %30 to %struct.NodeStruct**
  %32 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %33 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %32, i32 0, i32 2
  store %struct.NodeStruct** %31, %struct.NodeStruct*** %33, align 8
  %34 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %35 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %34, i32 0, i32 2
  %36 = load %struct.NodeStruct**, %struct.NodeStruct*** %35, align 8
  %37 = icmp ne %struct.NodeStruct** %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %21
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 2, %39
  %41 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %42 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %62

43:                                               ; preds = %21
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 2, %44
  %46 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %47 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3.142, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %51 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %43
  %55 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %56 = getelementptr inbounds %struct.NodeStruct, %struct.NodeStruct* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4.143, i64 0, i64 0), i8* %57)
  br label %61

59:                                               ; preds = %43
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.144, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  store i1 false, i1* %3, align 1
  br label %75

62:                                               ; preds = %38
  br label %63

63:                                               ; preds = %62, %11
  %64 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %65 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %66 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %65, i32 0, i32 2
  %67 = load %struct.NodeStruct**, %struct.NodeStruct*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %67, i64 %69
  store %struct.NodeStruct* %64, %struct.NodeStruct** %70, align 8
  %71 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %72 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  store i1 true, i1* %3, align 1
  br label %75

75:                                               ; preds = %63, %61, %10
  %76 = load i1, i1* %3, align 1
  ret i1 %76
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeStruct* @NodePtrVec_pop(%struct.NodePtrVecStruct* %0) #0 {
  %2 = alloca %struct.NodeStruct*, align 8
  %3 = alloca %struct.NodePtrVecStruct*, align 8
  %4 = alloca %struct.NodeStruct*, align 8
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %3, align 8
  store %struct.NodeStruct* null, %struct.NodeStruct** %4, align 8
  %5 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %6 = icmp ne %struct.NodePtrVecStruct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.NodeStruct* null, %struct.NodeStruct** %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %10 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %8
  %14 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %15 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %19 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %18, i32 0, i32 2
  %20 = load %struct.NodeStruct**, %struct.NodeStruct*** %19, align 8
  %21 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %3, align 8
  %22 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %20, i64 %24
  %26 = load %struct.NodeStruct*, %struct.NodeStruct** %25, align 8
  store %struct.NodeStruct* %26, %struct.NodeStruct** %4, align 8
  br label %27

27:                                               ; preds = %13, %8
  %28 = load %struct.NodeStruct*, %struct.NodeStruct** %4, align 8
  store %struct.NodeStruct* %28, %struct.NodeStruct** %2, align 8
  br label %29

29:                                               ; preds = %27, %7
  %30 = load %struct.NodeStruct*, %struct.NodeStruct** %2, align 8
  ret %struct.NodeStruct* %30
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_find(%struct.NodePtrVecStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %8 = icmp ne %struct.NodePtrVecStruct* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i1 false, i1* %3, align 1
  br label %33

10:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %14 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %19 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %18, i32 0, i32 2
  %20 = load %struct.NodeStruct**, %struct.NodeStruct*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %20, i64 %22
  %24 = load %struct.NodeStruct*, %struct.NodeStruct** %23, align 8
  %25 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %26 = icmp eq %struct.NodeStruct* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i1 true, i1* %3, align 1
  br label %33

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %11

32:                                               ; preds = %11
  store i1 false, i1* %3, align 1
  br label %33

33:                                               ; preds = %32, %27, %9
  %34 = load i1, i1* %3, align 1
  ret i1 %34
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodePtrVec_findReverse(%struct.NodePtrVecStruct* %0, %struct.NodeStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodeStruct*, align 8
  %6 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodeStruct* %1, %struct.NodeStruct** %5, align 8
  %7 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %8 = icmp ne %struct.NodePtrVecStruct* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %11 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %10, i32 0, i32 2
  %12 = load %struct.NodeStruct**, %struct.NodeStruct*** %11, align 8
  %13 = icmp ne %struct.NodeStruct** %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %16 = icmp ne %struct.NodeStruct* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %9, %2
  store i1 false, i1* %3, align 1
  br label %42

18:                                               ; preds = %14
  %19 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %20 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %38, %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %28 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %27, i32 0, i32 2
  %29 = load %struct.NodeStruct**, %struct.NodeStruct*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %29, i64 %31
  %33 = load %struct.NodeStruct*, %struct.NodeStruct** %32, align 8
  %34 = load %struct.NodeStruct*, %struct.NodeStruct** %5, align 8
  %35 = icmp eq %struct.NodeStruct* %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i1 true, i1* %3, align 1
  br label %42

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %6, align 4
  br label %23

41:                                               ; preds = %23
  store i1 false, i1* %3, align 1
  br label %42

42:                                               ; preds = %41, %36, %17
  %43 = load i1, i1* %3, align 1
  ret i1 %43
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodePtrVec_appendVectors(%struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct* %1, i1 zeroext %2) #0 {
  %4 = alloca %struct.NodePtrVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.NodePtrVecStruct* %0, %struct.NodePtrVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %10 = icmp ne %struct.NodePtrVecStruct* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %13 = icmp ne %struct.NodePtrVecStruct* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %3
  br label %40

15:                                               ; preds = %11
  %16 = load i8, i8* %6, align 1
  %17 = trunc i8 %16 to i1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %7, align 4
  br label %20

19:                                               ; preds = %15
  store i32 1, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %24 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %4, align 8
  %29 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %30 = getelementptr inbounds %struct.NodePtrVecStruct, %struct.NodePtrVecStruct* %29, i32 0, i32 2
  %31 = load %struct.NodeStruct**, %struct.NodeStruct*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.NodeStruct*, %struct.NodeStruct** %31, i64 %33
  %35 = load %struct.NodeStruct*, %struct.NodeStruct** %34, align 8
  %36 = call zeroext i1 @NodePtrVec_push(%struct.NodePtrVecStruct* %28, %struct.NodeStruct* %35)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %21

40:                                               ; preds = %21, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.NodeVecVecStruct* @NodeVecVec_new(i32 %0) #0 {
  %2 = alloca %struct.NodeVecVecStruct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct**, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 %8) #7
  %10 = bitcast i8* %9 to %struct.NodePtrVecStruct**
  store %struct.NodePtrVecStruct** %10, %struct.NodePtrVecStruct*** %5, align 8
  %11 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %12 = icmp ne %struct.NodePtrVecStruct** %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6.151, i64 0, i64 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* %15)
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %2, align 8
  br label %38

17:                                               ; preds = %1
  %18 = call noalias i8* @malloc(i64 16) #7
  %19 = bitcast i8* %18 to %struct.NodeVecVecStruct*
  store %struct.NodeVecVecStruct* %19, %struct.NodeVecVecStruct** %4, align 8
  %20 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %21 = icmp ne %struct.NodeVecVecStruct* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %17
  %23 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %24 = bitcast %struct.NodePtrVecStruct** %23 to i8*
  call void @free(i8* %24) #7
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7.152, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %27 = call i32 @fflush(%struct._IO_FILE* %26)
  store %struct.NodeVecVecStruct* null, %struct.NodeVecVecStruct** %2, align 8
  br label %38

28:                                               ; preds = %17
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %31 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %33 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %5, align 8
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %36 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %35, i32 0, i32 2
  store %struct.NodePtrVecStruct** %34, %struct.NodePtrVecStruct*** %36, align 8
  %37 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodeVecVecStruct* %37, %struct.NodeVecVecStruct** %2, align 8
  br label %38

38:                                               ; preds = %28, %22, %13
  %39 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  ret %struct.NodeVecVecStruct* %39
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NodeVecVec_delete(%struct.NodeVecVecStruct* %0) #0 {
  %2 = alloca %struct.NodeVecVecStruct*, align 8
  %3 = alloca i32, align 4
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %2, align 8
  %4 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %5 = icmp ne %struct.NodeVecVecStruct* %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %21, %6
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %7
  %14 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %15 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %14, i32 0, i32 2
  %16 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %16, i64 %18
  %20 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %19, align 8
  call void @NodePtrVec_delete(%struct.NodePtrVecStruct* %20)
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %7

24:                                               ; preds = %7
  %25 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %26 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %25, i32 0, i32 2
  %27 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %26, align 8
  %28 = icmp ne %struct.NodePtrVecStruct** %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %31 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %30, i32 0, i32 2
  %32 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %31, align 8
  %33 = bitcast %struct.NodePtrVecStruct** %32 to i8*
  call void @free(i8* %33) #7
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %2, align 8
  %36 = bitcast %struct.NodeVecVecStruct* %35 to i8*
  call void @free(i8* %36) #7
  br label %37

37:                                               ; preds = %34, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local zeroext i1 @NodeVecVec_insert(%struct.NodeVecVecStruct* %0, %struct.NodePtrVecStruct* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %struct.NodeVecVecStruct*, align 8
  %5 = alloca %struct.NodePtrVecStruct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.NodePtrVecStruct*, align 8
  store %struct.NodeVecVecStruct* %0, %struct.NodeVecVecStruct** %4, align 8
  store %struct.NodePtrVecStruct* %1, %struct.NodePtrVecStruct** %5, align 8
  %9 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %10 = call %struct.NodePtrVecStruct* @NodePtrVec_copy(%struct.NodePtrVecStruct* %9, i1 zeroext false)
  store %struct.NodePtrVecStruct* %10, %struct.NodePtrVecStruct** %8, align 8
  %11 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %12 = icmp ne %struct.NodeVecVecStruct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %5, align 8
  %15 = icmp ne %struct.NodePtrVecStruct* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %18 = icmp ne %struct.NodePtrVecStruct* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %2
  store i1 false, i1* %3, align 1
  br label %69

20:                                               ; preds = %16
  %21 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %22 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %25 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %57

30:                                               ; preds = %20
  %31 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %32 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %31, i32 0, i32 2
  %33 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %32, align 8
  %34 = bitcast %struct.NodePtrVecStruct** %33 to i8*
  %35 = load i32, i32* %7, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = call i8* @realloc(i8* %34, i64 %38) #7
  %40 = bitcast i8* %39 to %struct.NodePtrVecStruct**
  %41 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %42 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %41, i32 0, i32 2
  store %struct.NodePtrVecStruct** %40, %struct.NodePtrVecStruct*** %42, align 8
  %43 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %44 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %43, i32 0, i32 2
  %45 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %44, align 8
  %46 = icmp ne %struct.NodePtrVecStruct** %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 2, %48
  %50 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %51 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %56

52:                                               ; preds = %30
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8.155, i64 0, i64 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = call i32 @fflush(%struct._IO_FILE* %54)
  store i1 false, i1* %3, align 1
  br label %69

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %20
  %58 = load %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %8, align 8
  %59 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %60 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %59, i32 0, i32 2
  %61 = load %struct.NodePtrVecStruct**, %struct.NodePtrVecStruct*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.NodePtrVecStruct*, %struct.NodePtrVecStruct** %61, i64 %63
  store %struct.NodePtrVecStruct* %58, %struct.NodePtrVecStruct** %64, align 8
  %65 = load %struct.NodeVecVecStruct*, %struct.NodeVecVecStruct** %4, align 8
  %66 = getelementptr inbounds %struct.NodeVecVecStruct, %struct.NodeVecVecStruct* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  store i1 true, i1* %3, align 1
  br label %69

69:                                               ; preds = %57, %52, %19
  %70 = load i1, i1* %3, align 1
  ret i1 %70
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLOpen() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.tm*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %struct.tm* null, %struct.tm** %2, align 8
  %5 = call noalias i8* @calloc(i64 200, i64 1) #7
  store i8* %5, i8** %3, align 8
  %6 = call noalias i8* @calloc(i64 200, i64 1) #7
  store i8* %6, i8** %4, align 8
  %7 = call i64 @time(i64* %1) #7
  %8 = call %struct.tm* @localtime(i64* %1) #7
  store %struct.tm* %8, %struct.tm** %2, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %10 = icmp ne %struct._IO_FILE* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %0
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.tm*, %struct.tm** %2, align 8
  %19 = icmp eq %struct.tm* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %0
  br label %74

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.tm*, %struct.tm** %2, align 8
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1900
  %27 = load %struct.tm*, %struct.tm** %2, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = load %struct.tm*, %struct.tm** %2, align 8
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.tm*, %struct.tm** %2, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.tm*, %struct.tm** %2, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tm*, %struct.tm** %2, align 8
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0), i32 %26, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42) #7
  %44 = load i8*, i8** %4, align 8
  %45 = load %struct.tm*, %struct.tm** %2, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1900
  %49 = load %struct.tm*, %struct.tm** %2, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = load %struct.tm*, %struct.tm** %2, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tm*, %struct.tm** %2, align 8
  %57 = getelementptr inbounds %struct.tm, %struct.tm* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.tm*, %struct.tm** %2, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tm*, %struct.tm** %2, align 8
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1.159, i64 0, i64 0), i32 %48, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64) #7
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.160, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %3, align 8
  %69 = call %struct._IO_FILE* @fopen(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.161, i64 0, i64 0))
  store %struct._IO_FILE* %69, %struct._IO_FILE** @output, align 8
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %71 = icmp ne %struct._IO_FILE* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %21
  call void @YAMLWriteString(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4.162, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.163, i64 0, i64 0))
  call void @YAMLWriteString(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6.166, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7.167, i64 0, i64 0))
  %73 = load i8*, i8** %4, align 8
  call void @YAMLWriteString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8.168, i64 0, i64 0), i8* %73)
  call void @YAMLWriteString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9.169, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.170, i64 0, i64 0))
  call void @YAMLWriteString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11.171, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10.170, i64 0, i64 0))
  call void @YAMLWriteString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12.172, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.173, i64 0, i64 0))
  call void @YAMLWriteString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14.174, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.173, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %21, %20
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #1

; Function Attrs: nounwind
declare dso_local %struct.tm* @localtime(i64*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteString(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15.175, i64 0, i64 0), i8* %9, i8* %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLClose() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %2 = icmp ne %struct._IO_FILE* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %5 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteInt(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16.180, i64 0, i64 0), i8* %9, i32 %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteDouble(i8* %0, double %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  store double %1, double* %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load double, double* %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17.181, i64 0, i64 0), i8* %9, double %10)
  br label %12

12:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @YAMLWriteFloat(i8* %0, float %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float, align 4
  store i8* %0, i8** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @output, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load float, float* %4, align 4
  %11 = fpext float %10 to double
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18.182, i64 0, i64 0), i8* %9, double %11)
  br label %13

13:                                               ; preds = %7, %2
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
