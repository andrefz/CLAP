; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._nodeHCGType = type { i64*, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._nodeVCGType = type { %struct._constraintVCGType*, i64, i64, i64, %struct._constraintVCGType*, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }

@costMatrix = common dso_local global i64** null, align 8
@tracksNotPref = common dso_local global i64* null, align 8
@tracksTopNotPref = common dso_local global i64* null, align 8
@tracksBotNotPref = common dso_local global i64* null, align 8
@tracksNoHCV = common dso_local global i64* null, align 8
@tracksAssign = common dso_local global i64* null, align 8
@netsAssign = common dso_local global i64* null, align 8
@netsAssignCopy = common dso_local global i64* null, align 8
@cardTopNotPref = common dso_local global i64 0, align 8
@cardBotNotPref = common dso_local global i64 0, align 8
@cardNotPref = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"! netsCrossing\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"assign.c\00", align 1
@__PRETTY_FUNCTION__.RightNetsAssign = private unnamed_addr constant [27 x i8] c"void RightNetsAssign(void)\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"(select >= 1) && (select <= channelNets)\00", align 1
@__PRETTY_FUNCTION__.Assign = private unnamed_addr constant [59 x i8] c"void Assign(nodeVCGType *, unsigned long *, unsigned long)\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tracks != 0\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"trackAssign\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@__PRETTY_FUNCTION__.Select = private unnamed_addr constant [93 x i8] c"void Select(nodeVCGType *, nodeHCGType *, unsigned long *, unsigned long *, unsigned long *)\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"mult >= 0\00", align 1
@__PRETTY_FUNCTION__.BuildCostMatrix = private unnamed_addr constant [85 x i8] c"void BuildCostMatrix(nodeVCGType *, nodeHCGType *, unsigned long *, unsigned long *)\00", align 1
@__PRETTY_FUNCTION__.LeftNetsAssign = private unnamed_addr constant [26 x i8] c"void LeftNetsAssign(void)\00", align 1
@channelFile = common dso_local global i8* null, align 8
@channelColumns = common dso_local global i64 0, align 8
@channelNets = common dso_local global i64 0, align 8
@TOP = common dso_local global i64* null, align 8
@BOT = common dso_local global i64* null, align 8
@FIRST = common dso_local global i64* null, align 8
@LAST = common dso_local global i64* null, align 8
@DENSITY = common dso_local global i64* null, align 8
@CROSSING = common dso_local global i64* null, align 8
@channelTracks = common dso_local global i64 0, align 8
@channelDensity = common dso_local global i64 0, align 8
@channelDensityColumn = common dso_local global i64 0, align 8
@channelTracksCopy = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.20 = private unnamed_addr constant [8 x i8] c"Error:\0A\00", align 1
@.str.2.21 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be opened.\0A\00", align 1
@.str.3.22 = private unnamed_addr constant [7 x i8] c"%u%u%u\00", align 1
@.str.4.23 = private unnamed_addr constant [47 x i8] c"\09Channel file description invalid at line %d.\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\09Column number out of range.\0A\00", align 1
@.str.5.24 = private unnamed_addr constant [34 x i8] c"\09Incorrect number of specifiers.\0A\00", align 1
@.str.6.25 = private unnamed_addr constant [33 x i8] c"\09Channel file cannot be closed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"\09Channel description invalid.\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"\09Channel has null dimension.\0A\00", align 1
@HCG = common dso_local global %struct._nodeHCGType* null, align 8
@storageRootHCG = common dso_local global i64* null, align 8
@storageHCG = common dso_local global i64* null, align 8
@storageLimitHCG = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1.29 = private unnamed_addr constant [6 x i8] c"hcg.c\00", align 1
@__PRETTY_FUNCTION__.BuildHCG = private unnamed_addr constant [20 x i8] c"void BuildHCG(void)\00", align 1
@.str.2.30 = private unnamed_addr constant [20 x i8] c"storageLimitHCG > 0\00", align 1
@.str.3.31 = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.4.32 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5.33 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.36 = private unnamed_addr constant [56 x i8] c"Assignment could not route %d columns, trying maze1...\0A\00", align 1
@.str.1.37 = private unnamed_addr constant [51 x i8] c"Maze1 could not route %d columns, trying maze2...\0A\00", align 1
@.str.2.38 = private unnamed_addr constant [51 x i8] c"Maze2 could not route %d columns, trying maze3...\0A\00", align 1
@.str.3.39 = private unnamed_addr constant [53 x i8] c"Maze3 could not route %d columns, adding a track...\0A\00", align 1
@.str.4.40 = private unnamed_addr constant [39 x i8] c"channelTracks == channelTracksCopy + 1\00", align 1
@.str.5.41 = private unnamed_addr constant [7 x i8] c"main.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.6.42 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@horzPlane = internal global i8* null, align 8
@vertPlane = internal global i8* null, align 8
@viaPlane = internal global i8* null, align 8
@mazeRoute = internal global i8* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.45 = private unnamed_addr constant [42 x i8] c"unable to allocate plane allocation maps\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [25 x i8] c"(x1 == x2) || (y1 == y2)\00", align 1
@.str.2.49 = private unnamed_addr constant [7 x i8] c"maze.c\00", align 1
@__PRETTY_FUNCTION__.DrawSegment = private unnamed_addr constant [85 x i8] c"void DrawSegment(char *, unsigned long, unsigned long, unsigned long, unsigned long)\00", align 1
@.str.3.50 = private unnamed_addr constant [25 x i8] c"(x1 != x2) || (y1 != y2)\00", align 1
@__PRETTY_FUNCTION__.SegmentFree = private unnamed_addr constant [84 x i8] c"int SegmentFree(char *, unsigned long, unsigned long, unsigned long, unsigned long)\00", align 1
@.str.4.53 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.5.54 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.6.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7.56 = private unnamed_addr constant [7 x i8] c"%%%c%%\00", align 1
@.str.8.57 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.9.58 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"Track %3d: \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"(FIRST[TOP[i]] == i) && (LAST[TOP[i]] == i)\00", align 1
@__PRETTY_FUNCTION__.DrawNets = private unnamed_addr constant [19 x i8] c"int DrawNets(void)\00", align 1
@.str.19.61 = private unnamed_addr constant [40 x i8] c"netsAssign[TOP[i]] > netsAssign[BOT[i]]\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"s > p\00", align 1
@__PRETTY_FUNCTION__.Maze1 = private unnamed_addr constant [16 x i8] c"int Maze1(void)\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"(y1 == y2) && (netsAssign[net] == y1)\00", align 1
@__PRETTY_FUNCTION__.ExtendOK = private unnamed_addr constant [96 x i8] c"int ExtendOK(unsigned long, char *, unsigned long, unsigned long, unsigned long, unsigned long)\00", align 1
@__PRETTY_FUNCTION__.Maze2 = private unnamed_addr constant [16 x i8] c"int Maze2(void)\00", align 1
@__PRETTY_FUNCTION__.Maze3 = private unnamed_addr constant [16 x i8] c"int Maze3(void)\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"\0AUsage: yacr2 <filename>\0A\0A\00", align 1
@VCG = common dso_local global %struct._nodeVCGType* null, align 8
@storageRootVCG = common dso_local global %struct._constraintVCGType* null, align 8
@storageVCG = common dso_local global %struct._constraintVCGType* null, align 8
@storageLimitVCG = common dso_local global i64 0, align 8
@SCC = common dso_local global i64* null, align 8
@perSCC = common dso_local global i64* null, align 8
@removeVCG = common dso_local global %struct._constraintVCGType** null, align 8
@totalSCC = common dso_local global i64 0, align 8
@removeTotalVCG = common dso_local global i64 0, align 8
@.str.75 = private unnamed_addr constant [20 x i8] c"storageLimitVCG > 0\00", align 1
@.str.1.76 = private unnamed_addr constant [6 x i8] c"vcg.c\00", align 1
@__PRETTY_FUNCTION__.BuildVCG = private unnamed_addr constant [20 x i8] c"void BuildVCG(void)\00", align 1
@.str.2.77 = private unnamed_addr constant [6 x i8] c"[%d]\0A\00", align 1
@.str.3.78 = private unnamed_addr constant [8 x i8] c"above: \00", align 1
@.str.4.79 = private unnamed_addr constant [41 x i8] c"VCG[net].netsAboveHook[which].top == net\00", align 1
@__PRETTY_FUNCTION__.DumpVCG = private unnamed_addr constant [28 x i8] c"void DumpVCG(nodeVCGType *)\00", align 1
@.str.5.80 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.6.81 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7.82 = private unnamed_addr constant [8 x i8] c"below: \00", align 1
@.str.8.83 = private unnamed_addr constant [41 x i8] c"VCG[net].netsBelowHook[which].bot == net\00", align 1
@.str.9.84 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.10.85 = private unnamed_addr constant [37 x i8] c"VCG[net].netsAboveHook[s].top == net\00", align 1
@__PRETTY_FUNCTION__.DFSAboveVCG = private unnamed_addr constant [47 x i8] c"void DFSAboveVCG(nodeVCGType *, unsigned long)\00", align 1
@.str.11.86 = private unnamed_addr constant [37 x i8] c"VCG[net].netsBelowHook[s].bot == net\00", align 1
@__PRETTY_FUNCTION__.DFSBelowVCG = private unnamed_addr constant [47 x i8] c"void DFSBelowVCG(nodeVCGType *, unsigned long)\00", align 1
@.str.12.87 = private unnamed_addr constant [28 x i8] c"VCG[net].netsAboveLabel > 0\00", align 1
@__PRETTY_FUNCTION__.SCCofVCG = private unnamed_addr constant [63 x i8] c"void SCCofVCG(nodeVCGType *, unsigned long *, unsigned long *)\00", align 1
@.str.13.88 = private unnamed_addr constant [13 x i8] c"totalSCC > 0\00", align 1
@__PRETTY_FUNCTION__.SCC_DFSBelowVCG = private unnamed_addr constant [66 x i8] c"void SCC_DFSBelowVCG(nodeVCGType *, unsigned long, unsigned long)\00", align 1
@__PRETTY_FUNCTION__.SCC_DFSAboveVCG = private unnamed_addr constant [68 x i8] c"void SCC_DFSAboveVCG(nodeVCGType *, unsigned long, unsigned long *)\00", align 1
@.str.14.89 = private unnamed_addr constant [6 x i8] c"[%d]\09\00", align 1
@.str.15.90 = private unnamed_addr constant [5 x i8] c"<%d>\00", align 1
@.str.16.93 = private unnamed_addr constant [28 x i8] c"\0A*** Input is acyclic! ***\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [27 x i8] c"\0A*** Input is cyclic! ***\0A\00", align 1
@.str.18.95 = private unnamed_addr constant [27 x i8] c"*** VC's removed (%d) ***\0A\00", align 1
@.str.19.96 = private unnamed_addr constant [15 x i8] c"remove != NULL\00", align 1
@__PRETTY_FUNCTION__.RemoveConstraintVCG = private unnamed_addr constant [96 x i8] c"void RemoveConstraintVCG(nodeVCGType *, unsigned long *, unsigned long *, constraintVCGType **)\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.20.97 = private unnamed_addr constant [57 x i8] c"removeTotalVCG < ((channelNets + 1) * (channelNets + 1))\00", align 1
@__PRETTY_FUNCTION__.DFSBelowLongestPathVCG = private unnamed_addr constant [67 x i8] c"unsigned long DFSBelowLongestPathVCG(nodeVCGType *, unsigned long)\00", align 1
@__PRETTY_FUNCTION__.DFSAboveLongestPathVCG = private unnamed_addr constant [67 x i8] c"unsigned long DFSAboveLongestPathVCG(nodeVCGType *, unsigned long)\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocAssign() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @channelNets, align 8
  %3 = add i64 %2, 1
  %4 = mul i64 %3, 8
  %5 = call noalias i8* @malloc(i64 %4) #5
  %6 = bitcast i8* %5 to i64**
  store i64** %6, i64*** @costMatrix, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %20, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i64, i64* @channelTracks, align 8
  %13 = add i64 %12, 2
  %14 = mul i64 %13, 8
  %15 = call noalias i8* @malloc(i64 %14) #5
  %16 = bitcast i8* %15 to i64*
  %17 = load i64**, i64*** @costMatrix, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i64*, i64** %17, i64 %18
  store i64* %16, i64** %19, align 8
  br label %20

20:                                               ; preds = %11
  %21 = load i64, i64* %1, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %1, align 8
  br label %7

23:                                               ; preds = %7
  %24 = load i64, i64* @channelTracks, align 8
  %25 = add i64 %24, 2
  %26 = mul i64 %25, 8
  %27 = call noalias i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to i64*
  store i64* %28, i64** @tracksNotPref, align 8
  %29 = load i64, i64* @channelTracks, align 8
  %30 = add i64 %29, 2
  %31 = mul i64 %30, 8
  %32 = call noalias i8* @malloc(i64 %31) #5
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** @tracksTopNotPref, align 8
  %34 = load i64, i64* @channelTracks, align 8
  %35 = add i64 %34, 2
  %36 = mul i64 %35, 8
  %37 = call noalias i8* @malloc(i64 %36) #5
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** @tracksBotNotPref, align 8
  %39 = load i64, i64* @channelTracks, align 8
  %40 = add i64 %39, 2
  %41 = mul i64 %40, 8
  %42 = call noalias i8* @malloc(i64 %41) #5
  %43 = bitcast i8* %42 to i64*
  store i64* %43, i64** @tracksNoHCV, align 8
  %44 = load i64, i64* @channelTracks, align 8
  %45 = add i64 %44, 2
  %46 = mul i64 %45, 8
  %47 = call noalias i8* @malloc(i64 %46) #5
  %48 = bitcast i8* %47 to i64*
  store i64* %48, i64** @tracksAssign, align 8
  %49 = load i64, i64* @channelNets, align 8
  %50 = add i64 %49, 1
  %51 = mul i64 %50, 8
  %52 = call noalias i8* @malloc(i64 %51) #5
  %53 = bitcast i8* %52 to i64*
  store i64* %53, i64** @netsAssign, align 8
  %54 = load i64, i64* @channelNets, align 8
  %55 = add i64 %54, 1
  %56 = mul i64 %55, 8
  %57 = call noalias i8* @malloc(i64 %56) #5
  %58 = bitcast i8* %57 to i64*
  store i64* %58, i64** @netsAssignCopy, align 8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeAssign() #0 {
  %1 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @channelNets, align 8
  %5 = icmp ule i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64**, i64*** @costMatrix, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64*, i64** %7, i64 %8
  %10 = load i64*, i64** %9, align 8
  %11 = bitcast i64* %10 to i8*
  call void @free(i8* %11) #5
  br label %12

12:                                               ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = add i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %2

15:                                               ; preds = %2
  %16 = load i64**, i64*** @costMatrix, align 8
  %17 = bitcast i64** %16 to i8*
  call void @free(i8* %17) #5
  %18 = load i64*, i64** @tracksNotPref, align 8
  %19 = bitcast i64* %18 to i8*
  call void @free(i8* %19) #5
  %20 = load i64*, i64** @tracksTopNotPref, align 8
  %21 = bitcast i64* %20 to i8*
  call void @free(i8* %21) #5
  %22 = load i64*, i64** @tracksBotNotPref, align 8
  %23 = bitcast i64* %22 to i8*
  call void @free(i8* %23) #5
  %24 = load i64*, i64** @tracksNoHCV, align 8
  %25 = bitcast i64* %24 to i8*
  call void @free(i8* %25) #5
  %26 = load i64*, i64** @tracksAssign, align 8
  %27 = bitcast i64* %26 to i8*
  call void @free(i8* %27) #5
  %28 = load i64*, i64** @netsAssign, align 8
  %29 = bitcast i64* %28 to i8*
  call void @free(i8* %29) #5
  %30 = load i64*, i64** @netsAssignCopy, align 8
  %31 = bitcast i64* %30 to i8*
  call void @free(i8* %31) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @NetsAssign() #0 {
  %1 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @channelNets, align 8
  %5 = icmp ule i64 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i64*, i64** @netsAssign, align 8
  %8 = load i64, i64* %1, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %1, align 8
  br label %2

13:                                               ; preds = %2
  call void @MaxNetsAssign()
  call void @LeftNetsAssign()
  call void @RightNetsAssign()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @MaxNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  store i64 1, i64* %1, align 8
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load i64*, i64** @FIRST, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @channelDensityColumn, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %8
  %16 = load i64*, i64** @LAST, align 8
  %17 = load i64, i64* %1, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @channelDensityColumn, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load i64*, i64** @CROSSING, align 8
  %24 = load i64, i64* %1, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 1, i64* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %32

28:                                               ; preds = %15, %8
  %29 = load i64*, i64** @CROSSING, align 8
  %30 = load i64, i64* %1, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %1, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %1, align 8
  br label %4

36:                                               ; preds = %4
  br label %37

37:                                               ; preds = %40, %36
  %38 = load i64, i64* %3, align 8
  %39 = icmp ugt i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %42 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %43 = load i64*, i64** @netsAssign, align 8
  %44 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %41, %struct._nodeHCGType* %42, i64* %43, i64* %2, i64* %44)
  %45 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %46 = load i64*, i64** @netsAssign, align 8
  %47 = load i64, i64* %2, align 8
  call void @Assign(%struct._nodeVCGType* %45, i64* %46, i64 %47)
  %48 = load i64*, i64** @CROSSING, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 0, i64* %50, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %3, align 8
  br label %37

53:                                               ; preds = %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LeftNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %15, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64*, i64** @CROSSING, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %7

18:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  %19 = load i64, i64* @channelDensityColumn, align 8
  %20 = sub i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %119, %18
  %22 = load i64, i64* %2, align 8
  %23 = icmp uge i64 %22, 1
  br i1 %23, label %24, label %122

24:                                               ; preds = %21
  %25 = load i64*, i64** @TOP, align 8
  %26 = load i64, i64* %2, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  %29 = load i64*, i64** @BOT, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %24
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i64*, i64** @LAST, align 8
  %41 = load i64, i64* %3, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %2, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i64*, i64** @CROSSING, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 1, i64* %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %46, %39, %36
  %53 = load i64, i64* %4, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i64*, i64** @LAST, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %2, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i64*, i64** @CROSSING, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 1, i64* %65, align 8
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %62, %55, %52
  br label %86

69:                                               ; preds = %24
  %70 = load i64, i64* %3, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i64*, i64** @LAST, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load i64*, i64** @CROSSING, align 8
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  store i64 1, i64* %82, align 8
  %83 = load i64, i64* %5, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %79, %72, %69
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i64*, i64** @FIRST, align 8
  %88 = load i64, i64* %3, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %2, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %100, label %93

93:                                               ; preds = %86
  %94 = load i64*, i64** @FIRST, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %93, %86
  br label %101

101:                                              ; preds = %104, %100
  %102 = load i64, i64* %5, align 8
  %103 = icmp ugt i64 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %106 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %107 = load i64*, i64** @netsAssign, align 8
  %108 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %105, %struct._nodeHCGType* %106, i64* %107, i64* %6, i64* %108)
  %109 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %110 = load i64*, i64** @netsAssign, align 8
  %111 = load i64, i64* %6, align 8
  call void @Assign(%struct._nodeVCGType* %109, i64* %110, i64 %111)
  %112 = load i64*, i64** @CROSSING, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds i64, i64* %112, i64 %113
  store i64 0, i64* %114, align 8
  %115 = load i64, i64* %5, align 8
  %116 = add i64 %115, -1
  store i64 %116, i64* %5, align 8
  br label %101

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %2, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %2, align 8
  br label %21

122:                                              ; preds = %21
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %127

126:                                              ; preds = %122
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 310, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.LeftNetsAssign, i64 0, i64 0)) #6
  unreachable

127:                                              ; preds = %125
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RightNetsAssign() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 1, i64* %1, align 8
  br label %7

7:                                                ; preds = %15, %0
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @channelNets, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load i64*, i64** @CROSSING, align 8
  %13 = load i64, i64* %1, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %11
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %7

18:                                               ; preds = %7
  store i64 0, i64* %5, align 8
  %19 = load i64, i64* @channelDensityColumn, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %120, %18
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @channelColumns, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %123

25:                                               ; preds = %21
  %26 = load i64*, i64** @TOP, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  %30 = load i64*, i64** @BOT, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %25
  %38 = load i64, i64* %3, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load i64*, i64** @FIRST, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %2, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i64*, i64** @CROSSING, align 8
  %49 = load i64, i64* %3, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  store i64 1, i64* %50, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %47, %40, %37
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i64*, i64** @FIRST, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %2, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i64*, i64** @CROSSING, align 8
  %65 = load i64, i64* %4, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64 1, i64* %66, align 8
  %67 = load i64, i64* %5, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %63, %56, %53
  br label %87

70:                                               ; preds = %25
  %71 = load i64, i64* %3, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i64*, i64** @FIRST, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %2, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i64*, i64** @CROSSING, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 1, i64* %83, align 8
  %84 = load i64, i64* %5, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %5, align 8
  br label %86

86:                                               ; preds = %80, %73, %70
  br label %87

87:                                               ; preds = %86, %69
  %88 = load i64*, i64** @LAST, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %2, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i64*, i64** @LAST, align 8
  %96 = load i64, i64* %4, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %2, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %94, %87
  br label %102

102:                                              ; preds = %105, %101
  %103 = load i64, i64* %5, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %107 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %108 = load i64*, i64** @netsAssign, align 8
  %109 = load i64*, i64** @CROSSING, align 8
  call void @Select(%struct._nodeVCGType* %106, %struct._nodeHCGType* %107, i64* %108, i64* %6, i64* %109)
  %110 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %111 = load i64*, i64** @netsAssign, align 8
  %112 = load i64, i64* %6, align 8
  call void @Assign(%struct._nodeVCGType* %110, i64* %111, i64 %112)
  %113 = load i64*, i64** @CROSSING, align 8
  %114 = load i64, i64* %6, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  store i64 0, i64* %115, align 8
  %116 = load i64, i64* %5, align 8
  %117 = add i64 %116, -1
  store i64 %117, i64* %5, align 8
  br label %102

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %94
  br label %120

120:                                              ; preds = %119
  %121 = load i64, i64* %2, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %2, align 8
  br label %21

123:                                              ; preds = %21
  %124 = load i64, i64* %5, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  br label %128

127:                                              ; preds = %123
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__.RightNetsAssign, i64 0, i64 0)) #6
  unreachable

128:                                              ; preds = %126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Select(%struct._nodeVCGType* %0, %struct._nodeHCGType* %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca %struct._nodeVCGType*, align 8
  %7 = alloca %struct._nodeHCGType*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %6, align 8
  store %struct._nodeHCGType* %1, %struct._nodeHCGType** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64* %4, i64** %10, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %6, align 8
  %18 = load %struct._nodeHCGType*, %struct._nodeHCGType** %7, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64*, i64** %10, align 8
  call void @BuildCostMatrix(%struct._nodeVCGType* %17, %struct._nodeHCGType* %18, i64* %19, i64* %20)
  store i64 -1, i64* %16, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %11, align 8
  br label %21

21:                                               ; preds = %59, %5
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @channelNets, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %58

31:                                               ; preds = %25
  store i64 0, i64* %15, align 8
  %32 = load i64**, i64*** @costMatrix, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds i64*, i64** %32, i64 %33
  %35 = load i64*, i64** %34, align 8
  store i64* %35, i64** %14, align 8
  store i64 1, i64* %12, align 8
  br label %36

36:                                               ; preds = %47, %31
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @channelTracks, align 8
  %39 = icmp ule i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64*, i64** %14, align 8
  %42 = load i64, i64* %12, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %15, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %15, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i64, i64* %12, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %12, align 8
  br label %36

50:                                               ; preds = %36
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* %16, align 8
  %53 = icmp sgt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %15, align 8
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %11, align 8
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57, %25
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %11, align 8
  br label %21

62:                                               ; preds = %21
  %63 = load i64, i64* %13, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 547, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @__PRETTY_FUNCTION__.Select, i64 0, i64 0)) #6
  unreachable

67:                                               ; preds = %65
  %68 = load i64, i64* %13, align 8
  %69 = load i64*, i64** %9, align 8
  store i64 %68, i64* %69, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Assign(%struct._nodeVCGType* %0, i64* %1, i64 %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %17 = load i64, i64* %6, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* %16, i64 %17)
  %18 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* %18, i64 %19, i64* %20, i64* %21)
  %22 = load i64, i64* @channelTracks, align 8
  %23 = load i64, i64* @cardTopNotPref, align 8
  %24 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 %22, i64 %23, i64 %24, i64* %8)
  %25 = load i64**, i64*** @costMatrix, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i64*, i64** %25, i64 %26
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %15, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp uge i64 %29, 1
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @channelNets, align 8
  %34 = icmp ule i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31, %3
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  unreachable

37:                                               ; preds = %35
  store i64 0, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %38

38:                                               ; preds = %46, %37
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @channelTracks, align 8
  %41 = icmp ule i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64*, i64** @tracksAssign, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %9, align 8
  br label %38

49:                                               ; preds = %38
  store i64 1, i64* %9, align 8
  br label %50

50:                                               ; preds = %73, %49
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @channelTracks, align 8
  %53 = icmp ule i64 %51, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %50
  %55 = load i64*, i64** @tracksNoHCV, align 8
  %56 = load i64, i64* %9, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load i64*, i64** @tracksNotPref, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i64*, i64** @tracksAssign, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 1, i64* %69, align 8
  %70 = load i64, i64* %10, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %10, align 8
  br label %72

72:                                               ; preds = %66, %60, %54
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %50

76:                                               ; preds = %50
  %77 = load i64, i64* %10, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %113

79:                                               ; preds = %76
  store i64 1, i64* %9, align 8
  br label %80

80:                                               ; preds = %109, %79
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @channelTracks, align 8
  %83 = icmp ule i64 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i64*, i64** @tracksNoHCV, align 8
  %86 = load i64, i64* %9, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = load i64*, i64** @tracksTopNotPref, align 8
  %92 = load i64, i64* %9, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load i64*, i64** @tracksBotNotPref, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i64*, i64** @tracksAssign, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 1, i64* %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %102, %96, %90, %84
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %80

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %112, %76
  %114 = load i64, i64* %10, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %144

116:                                              ; preds = %113
  store i64 2, i64* %9, align 8
  br label %117

117:                                              ; preds = %140, %116
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @channelTracks, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i64*, i64** @tracksNoHCV, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds i64, i64* %122, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %139

127:                                              ; preds = %121
  %128 = load i64*, i64** @tracksNotPref, align 8
  %129 = load i64, i64* %9, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %127
  %134 = load i64*, i64** @tracksAssign, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  store i64 1, i64* %136, align 8
  %137 = load i64, i64* %10, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %10, align 8
  br label %139

139:                                              ; preds = %133, %127, %121
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %117

143:                                              ; preds = %117
  br label %144

144:                                              ; preds = %143, %113
  %145 = load i64, i64* %10, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %170

147:                                              ; preds = %144
  %148 = load i64*, i64** @tracksNoHCV, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i64*, i64** @tracksAssign, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  store i64 1, i64* %154, align 8
  %155 = load i64, i64* %10, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %10, align 8
  br label %157

157:                                              ; preds = %152, %147
  %158 = load i64*, i64** @tracksNoHCV, align 8
  %159 = load i64, i64* @channelTracks, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %157
  %164 = load i64*, i64** @tracksAssign, align 8
  %165 = load i64, i64* @channelTracks, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  store i64 1, i64* %166, align 8
  %167 = load i64, i64* %10, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %10, align 8
  br label %169

169:                                              ; preds = %163, %157
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i64, i64* %10, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %175

174:                                              ; preds = %170
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 435, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  unreachable

175:                                              ; preds = %173
  store i64 0, i64* %11, align 8
  store i64 1000000, i64* %14, align 8
  store i64 1, i64* %9, align 8
  br label %176

176:                                              ; preds = %237, %175
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* @channelTracks, align 8
  %179 = icmp ule i64 %177, %178
  br i1 %179, label %180, label %240

180:                                              ; preds = %176
  %181 = load i64*, i64** @tracksAssign, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %236

186:                                              ; preds = %180
  %187 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %9, align 8
  %190 = load i64*, i64** @netsAssign, align 8
  %191 = call i64 @VCV(%struct._nodeVCGType* %187, i64 %188, i64 %189, i64* %190)
  store i64 %191, i64* %12, align 8
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %14, align 8
  %194 = icmp ult i64 %192, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %186
  %196 = load i64, i64* %12, align 8
  store i64 %196, i64* %14, align 8
  %197 = load i64, i64* %9, align 8
  store i64 %197, i64* %11, align 8
  %198 = load i64, i64* %9, align 8
  %199 = load i64, i64* %8, align 8
  %200 = sub i64 %198, %199
  store i64 %200, i64* %13, align 8
  %201 = load i64, i64* %13, align 8
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %195
  %204 = load i64, i64* %13, align 8
  %205 = mul nsw i64 %204, -1
  store i64 %205, i64* %13, align 8
  br label %206

206:                                              ; preds = %203, %195
  br label %235

207:                                              ; preds = %186
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %14, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %234

211:                                              ; preds = %207
  %212 = load i64, i64* %11, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %216

215:                                              ; preds = %211
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 488, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  unreachable

216:                                              ; preds = %214
  %217 = load i64, i64* %9, align 8
  %218 = load i64, i64* %8, align 8
  %219 = sub i64 %217, %218
  store i64 %219, i64* %7, align 8
  %220 = load i64, i64* %7, align 8
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i64, i64* %7, align 8
  %224 = mul nsw i64 %223, -1
  store i64 %224, i64* %7, align 8
  br label %225

225:                                              ; preds = %222, %216
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* %13, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i64, i64* %7, align 8
  store i64 %230, i64* %13, align 8
  %231 = load i64, i64* %12, align 8
  store i64 %231, i64* %14, align 8
  %232 = load i64, i64* %9, align 8
  store i64 %232, i64* %11, align 8
  br label %233

233:                                              ; preds = %229, %225
  br label %234

234:                                              ; preds = %233, %207
  br label %235

235:                                              ; preds = %234, %206
  br label %236

236:                                              ; preds = %235, %180
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %9, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %9, align 8
  br label %176

240:                                              ; preds = %176
  %241 = load i64, i64* %11, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  br label %245

244:                                              ; preds = %240
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 501, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__PRETTY_FUNCTION__.Assign, i64 0, i64 0)) #6
  unreachable

245:                                              ; preds = %243
  %246 = load i64, i64* %11, align 8
  %247 = load i64*, i64** %5, align 8
  %248 = load i64, i64* %6, align 8
  %249 = getelementptr inbounds i64, i64* %247, i64 %248
  store i64 %246, i64* %249, align 8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @IdealTrack(i64 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %7, align 8
  %14 = sub i64 %12, %13
  %15 = mul i64 %11, %14
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %16, %18
  %20 = add i64 %15, %19
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add i64 %21, %22
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = udiv i64 %27, %28
  %30 = load i64*, i64** %8, align 8
  store i64 %29, i64* %30, align 8
  br label %33

31:                                               ; preds = %4
  %32 = load i64*, i64** %8, align 8
  store i64 1, i64* %32, align 8
  br label %33

33:                                               ; preds = %31, %26
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildCostMatrix(%struct._nodeVCGType* %0, %struct._nodeHCGType* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct._nodeVCGType*, align 8
  %6 = alloca %struct._nodeHCGType*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %5, align 8
  store %struct._nodeHCGType* %1, %struct._nodeHCGType** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 1, i64* %9, align 8
  br label %15

15:                                               ; preds = %36, %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @channelNets, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %15
  %20 = load i64**, i64*** @costMatrix, align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds i64*, i64** %20, i64 %21
  %23 = load i64*, i64** %22, align 8
  store i64* %23, i64** %14, align 8
  store i64 1, i64* %10, align 8
  br label %24

24:                                               ; preds = %32, %19
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @channelTracks, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64*, i64** %14, align 8
  %30 = load i64, i64* %10, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  br label %24

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %15

39:                                               ; preds = %15
  store i64 1, i64* %9, align 8
  br label %40

40:                                               ; preds = %162, %39
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @channelNets, align 8
  %43 = icmp ule i64 %41, %42
  br i1 %43, label %44, label %165

44:                                               ; preds = %40
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %161

50:                                               ; preds = %44
  %51 = load i64**, i64*** @costMatrix, align 8
  %52 = load i64, i64* %9, align 8
  %53 = getelementptr inbounds i64*, i64** %51, i64 %52
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %14, align 8
  %55 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %56 = load i64, i64* %9, align 8
  call void @LongestPathVCG(%struct._nodeVCGType* %55, i64 %56)
  %57 = load %struct._nodeHCGType*, %struct._nodeHCGType** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64*, i64** @tracksNoHCV, align 8
  call void @NoHCV(%struct._nodeHCGType* %57, i64 %58, i64* %59, i64* %60)
  %61 = load i64, i64* @channelTracks, align 8
  %62 = load i64, i64* @cardTopNotPref, align 8
  %63 = load i64, i64* @cardBotNotPref, align 8
  call void @IdealTrack(i64 %61, i64 %62, i64 %63, i64* %11)
  store i64 1, i64* %10, align 8
  br label %64

64:                                               ; preds = %157, %50
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* @channelTracks, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %160

68:                                               ; preds = %64
  %69 = load i64*, i64** @tracksNoHCV, align 8
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %152

74:                                               ; preds = %68
  %75 = load i64, i64* @cardNotPref, align 8
  %76 = load i64, i64* @channelTracks, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i64*, i64** @tracksNotPref, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i64*, i64** %14, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  store i64 10000, i64* %87, align 8
  br label %94

88:                                               ; preds = %78
  %89 = load i64, i64* @cardNotPref, align 8
  %90 = mul i64 100, %89
  %91 = load i64*, i64** %14, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %84
  br label %128

95:                                               ; preds = %74
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* @channelTracks, align 8
  %98 = load i64, i64* @cardBotNotPref, align 8
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %95
  %102 = load i64, i64* %10, align 8
  %103 = load i64, i64* @cardTopNotPref, align 8
  %104 = icmp ule i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %101
  %106 = load i64, i64* @cardNotPref, align 8
  %107 = load i64, i64* @cardTopNotPref, align 8
  %108 = load i64, i64* @cardBotNotPref, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* @channelTracks, align 8
  %111 = sub i64 %109, %110
  %112 = sub i64 %106, %111
  store i64 %112, i64* %13, align 8
  %113 = load i64, i64* %13, align 8
  %114 = icmp sge i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %117

116:                                              ; preds = %105
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 610, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.BuildCostMatrix, i64 0, i64 0)) #6
  unreachable

117:                                              ; preds = %115
  %118 = load i64, i64* %13, align 8
  %119 = mul nsw i64 100, %118
  %120 = load i64*, i64** %14, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  br label %127

123:                                              ; preds = %101, %95
  %124 = load i64*, i64** %14, align 8
  %125 = load i64, i64* %10, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  store i64 10000, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %117
  br label %128

128:                                              ; preds = %127, %94
  %129 = load i64*, i64** %14, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp slt i64 %132, 1000000
  br i1 %133, label %134, label %151

134:                                              ; preds = %128
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub i64 %135, %136
  store i64 %137, i64* %12, align 8
  %138 = load i64, i64* %12, align 8
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i64, i64* %12, align 8
  %142 = mul nsw i64 %141, -1
  store i64 %142, i64* %12, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = load i64, i64* %12, align 8
  %145 = mul nsw i64 1, %144
  %146 = load i64*, i64** %14, align 8
  %147 = load i64, i64* %10, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %145
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %143, %128
  br label %156

152:                                              ; preds = %68
  %153 = load i64*, i64** %14, align 8
  %154 = load i64, i64* %10, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 1000000, i64* %155, align 8
  br label %156

156:                                              ; preds = %152, %151
  br label %157

157:                                              ; preds = %156
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %64

160:                                              ; preds = %64
  br label %161

161:                                              ; preds = %160, %44
  br label %162

162:                                              ; preds = %161
  %163 = load i64, i64* %9, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %9, align 8
  br label %40

165:                                              ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildChannel() #0 {
  call void @DimensionChannel()
  call void @DescribeChannel()
  call void @DensityChannel()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DimensionChannel() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = load i8*, i8** @channelFile, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %1, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.21, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

19:                                               ; preds = %0
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %20

20:                                               ; preds = %63, %19
  %21 = load i64, i64* %2, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %2, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.22, i64 0, i64 0), i32* %9, i32* %10, i32* %11)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = zext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp ne i64 %32, -1
  br i1 %33, label %34, label %62

34:                                               ; preds = %20
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %35, 3
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %3, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %4, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %4, align 8
  br label %55

55:                                               ; preds = %53, %49
  br label %61

56:                                               ; preds = %34
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %58 = load i64, i64* %2, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4.23, i64 0, i64 0), i64 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.24, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %20
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, -1
  br i1 %65, label %20, label %66

66:                                               ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* %67)
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.25, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

73:                                               ; preds = %66
  %74 = load i64, i64* %3, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

80:                                               ; preds = %73
  %81 = load i64, i64* %3, align 8
  store i64 %81, i64* @channelColumns, align 8
  %82 = load i64, i64* %4, align 8
  store i64 %82, i64* @channelNets, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DescribeChannel() #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, i64* @channelColumns, align 8
  %11 = add i64 %10, 1
  %12 = mul i64 %11, 8
  %13 = call noalias i8* @malloc(i64 %12) #5
  %14 = bitcast i8* %13 to i64*
  store i64* %14, i64** @TOP, align 8
  %15 = load i64, i64* @channelColumns, align 8
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 8
  %18 = call noalias i8* @malloc(i64 %17) #5
  %19 = bitcast i8* %18 to i64*
  store i64* %19, i64** @BOT, align 8
  store i64 0, i64* %3, align 8
  br label %20

20:                                               ; preds = %31, %0
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @channelColumns, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i64*, i64** @TOP, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** @BOT, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  store i64 0, i64* %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load i8*, i8** @channelFile, align 8
  %36 = call %struct._IO_FILE* @fopen(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  store %struct._IO_FILE* %36, %struct._IO_FILE** %1, align 8
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %38 = icmp eq %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2.21, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

42:                                               ; preds = %34
  store i64 0, i64* %2, align 8
  br label %43

43:                                               ; preds = %86, %42
  %44 = load i64, i64* %2, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %2, align 8
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.22, i64 0, i64 0), i32* %7, i32* %8, i32* %9)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = zext i32 %49 to i64
  store i64 %50, i64* %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  store i64 %52, i64* %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %55, -1
  br i1 %56, label %57, label %85

57:                                               ; preds = %43
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %58, 3
  br i1 %59, label %60, label %79

60:                                               ; preds = %57
  %61 = load i64, i64* %3, align 8
  %62 = load i64, i64* @channelColumns, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %66 = load i64, i64* %2, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4.23, i64 0, i64 0), i64 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

69:                                               ; preds = %60
  %70 = load i64, i64* %4, align 8
  %71 = load i64*, i64** @BOT, align 8
  %72 = load i64, i64* %3, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64*, i64** @TOP, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  br label %78

78:                                               ; preds = %69
  br label %84

79:                                               ; preds = %57
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %81 = load i64, i64* %2, align 8
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4.23, i64 0, i64 0), i64 %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5.24, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, -1
  br i1 %88, label %43, label %89

89:                                               ; preds = %86
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %91 = call i32 @fclose(%struct._IO_FILE* %90)
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.20, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6.25, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

96:                                               ; preds = %89
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DensityChannel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = add i64 %6, 1
  %8 = mul i64 %7, 8
  %9 = call noalias i8* @malloc(i64 %8) #5
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** @FIRST, align 8
  %11 = load i64, i64* @channelNets, align 8
  %12 = add i64 %11, 1
  %13 = mul i64 %12, 8
  %14 = call noalias i8* @malloc(i64 %13) #5
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** @LAST, align 8
  %16 = load i64, i64* @channelColumns, align 8
  %17 = add i64 %16, 1
  %18 = mul i64 %17, 8
  %19 = call noalias i8* @malloc(i64 %18) #5
  %20 = bitcast i8* %19 to i64*
  store i64* %20, i64** @DENSITY, align 8
  %21 = load i64, i64* @channelNets, align 8
  %22 = add i64 %21, 1
  %23 = mul i64 %22, 8
  %24 = call noalias i8* @malloc(i64 %23) #5
  %25 = bitcast i8* %24 to i64*
  store i64* %25, i64** @CROSSING, align 8
  store i64 0, i64* %1, align 8
  br label %26

26:                                               ; preds = %40, %0
  %27 = load i64, i64* %1, align 8
  %28 = load i64, i64* @channelNets, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load i64*, i64** @FIRST, align 8
  %32 = load i64, i64* %1, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  %34 = load i64*, i64** @LAST, align 8
  %35 = load i64, i64* %1, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 0, i64* %36, align 8
  %37 = load i64*, i64** @CROSSING, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %30
  %41 = load i64, i64* %1, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %1, align 8
  br label %26

43:                                               ; preds = %26
  store i64 0, i64* %1, align 8
  br label %44

44:                                               ; preds = %52, %43
  %45 = load i64, i64* %1, align 8
  %46 = load i64, i64* @channelColumns, align 8
  %47 = icmp ule i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i64*, i64** @DENSITY, align 8
  %50 = load i64, i64* %1, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %1, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %1, align 8
  br label %44

55:                                               ; preds = %44
  store i64 1, i64* %2, align 8
  br label %56

56:                                               ; preds = %138, %55
  %57 = load i64, i64* %2, align 8
  %58 = load i64, i64* @channelNets, align 8
  %59 = icmp ule i64 %57, %58
  br i1 %59, label %60, label %141

60:                                               ; preds = %56
  store i64 1, i64* %3, align 8
  br label %61

61:                                               ; preds = %85, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @channelColumns, align 8
  %64 = icmp ule i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i64*, i64** @BOT, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %2, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load i64*, i64** @TOP, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %2, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72, %65
  %80 = load i64, i64* %3, align 8
  %81 = load i64*, i64** @FIRST, align 8
  %82 = load i64, i64* %2, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  store i64 %80, i64* %83, align 8
  br label %88

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %3, align 8
  br label %61

88:                                               ; preds = %79, %61
  %89 = load i64, i64* @channelColumns, align 8
  store i64 %89, i64* %3, align 8
  br label %90

90:                                               ; preds = %113, %88
  %91 = load i64, i64* %3, align 8
  %92 = icmp uge i64 %91, 1
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load i64*, i64** @BOT, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %2, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %107, label %100

100:                                              ; preds = %93
  %101 = load i64*, i64** @TOP, align 8
  %102 = load i64, i64* %3, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %2, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %112

107:                                              ; preds = %100, %93
  %108 = load i64, i64* %3, align 8
  %109 = load i64*, i64** @LAST, align 8
  %110 = load i64, i64* %2, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %108, i64* %111, align 8
  br label %116

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, -1
  store i64 %115, i64* %3, align 8
  br label %90

116:                                              ; preds = %107, %90
  %117 = load i64*, i64** @FIRST, align 8
  %118 = load i64, i64* %2, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %134, %116
  %122 = load i64, i64* %3, align 8
  %123 = load i64*, i64** @LAST, align 8
  %124 = load i64, i64* %2, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = icmp ule i64 %122, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i64*, i64** @DENSITY, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %128
  %135 = load i64, i64* %3, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %3, align 8
  br label %121

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %2, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %2, align 8
  br label %56

141:                                              ; preds = %56
  store i64 0, i64* %4, align 8
  %142 = load i64, i64* @channelColumns, align 8
  store i64 %142, i64* %3, align 8
  br label %143

143:                                              ; preds = %160, %141
  %144 = load i64, i64* %3, align 8
  %145 = icmp uge i64 %144, 1
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load i64*, i64** @DENSITY, align 8
  %148 = load i64, i64* %3, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %4, align 8
  %152 = icmp ugt i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load i64*, i64** @DENSITY, align 8
  %155 = load i64, i64* %3, align 8
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %4, align 8
  %158 = load i64, i64* %3, align 8
  store i64 %158, i64* %5, align 8
  br label %159

159:                                              ; preds = %153, %146
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, -1
  store i64 %162, i64* %3, align 8
  br label %143

163:                                              ; preds = %143
  %164 = load i64, i64* %4, align 8
  store i64 %164, i64* @channelTracks, align 8
  %165 = load i64, i64* %4, align 8
  store i64 %165, i64* @channelDensity, align 8
  %166 = load i64, i64* %5, align 8
  store i64 %166, i64* @channelDensityColumn, align 8
  ret void
}

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocHCG() #0 {
  %1 = load i64, i64* @channelNets, align 8
  %2 = add i64 %1, 1
  %3 = mul i64 %2, 24
  %4 = call noalias i8* @malloc(i64 %3) #5
  %5 = bitcast i8* %4 to %struct._nodeHCGType*
  store %struct._nodeHCGType* %5, %struct._nodeHCGType** @HCG, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = add i64 %6, 1
  %8 = load i64, i64* @channelNets, align 8
  %9 = add i64 %8, 1
  %10 = mul i64 %7, %9
  %11 = mul i64 %10, 8
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to i64*
  store i64* %13, i64** @storageRootHCG, align 8
  %14 = load i64*, i64** @storageRootHCG, align 8
  store i64* %14, i64** @storageHCG, align 8
  %15 = load i64, i64* @channelNets, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* @channelNets, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %16, %18
  store i64 %19, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeHCG() #0 {
  %1 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %2 = bitcast %struct._nodeHCGType* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load i64*, i64** @storageRootHCG, align 8
  %4 = bitcast i64* %3 to i8*
  call void @free(i8* %4) #5
  store i64 0, i64* @storageLimitHCG, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildHCG() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @AllocHCG()
  store i64 1, i64* %1, align 8
  br label %8

8:                                                ; preds = %115, %0
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @channelNets, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %118

12:                                               ; preds = %8
  %13 = load i64*, i64** @FIRST, align 8
  %14 = load i64, i64* %1, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64*, i64** @LAST, align 8
  %18 = load i64, i64* %1, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  store i64 0, i64* %3, align 8
  %21 = load i64*, i64** @storageHCG, align 8
  %22 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %23 = load i64, i64* %1, align 8
  %24 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %24, i32 0, i32 0
  store i64* %21, i64** %25, align 8
  store i64 1, i64* %2, align 8
  br label %26

26:                                               ; preds = %106, %12
  %27 = load i64, i64* %2, align 8
  %28 = load i64, i64* @channelNets, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %109

30:                                               ; preds = %26
  %31 = load i64*, i64** @FIRST, align 8
  %32 = load i64, i64* %2, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %4, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i64*, i64** @LAST, align 8
  %39 = load i64, i64* %2, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %58, label %44

44:                                               ; preds = %37, %30
  %45 = load i64*, i64** @FIRST, align 8
  %46 = load i64, i64* %2, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load i64*, i64** @LAST, align 8
  %53 = load i64, i64* %2, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51, %37
  br label %105

59:                                               ; preds = %51, %44
  store i64 1, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %3, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %66 = load i64, i64* %1, align 8
  %67 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %65, i64 %66
  %68 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %2, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i64 0, i64* %7, align 8
  br label %80

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %6, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %6, align 8
  br label %60

80:                                               ; preds = %75, %60
  %81 = load i64, i64* %7, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.29, i64 0, i64 0), i32 92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #6
  unreachable

85:                                               ; preds = %83
  %86 = load i64, i64* @storageLimitHCG, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %90

89:                                               ; preds = %85
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.30, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.29, i64 0, i64 0), i32 97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildHCG, i64 0, i64 0)) #6
  unreachable

90:                                               ; preds = %88
  %91 = load i64, i64* %2, align 8
  %92 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %93 = load i64, i64* %1, align 8
  %94 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %92, i64 %93
  %95 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %91, i64* %98, align 8
  %99 = load i64*, i64** @storageHCG, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** @storageHCG, align 8
  %101 = load i64, i64* @storageLimitHCG, align 8
  %102 = add i64 %101, -1
  store i64 %102, i64* @storageLimitHCG, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %90, %58
  br label %106

106:                                              ; preds = %105
  %107 = load i64, i64* %2, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %2, align 8
  br label %26

109:                                              ; preds = %26
  %110 = load i64, i64* %3, align 8
  %111 = load %struct._nodeHCGType*, %struct._nodeHCGType** @HCG, align 8
  %112 = load i64, i64* %1, align 8
  %113 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %111, i64 %112
  %114 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  br label %115

115:                                              ; preds = %109
  %116 = load i64, i64* %1, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %1, align 8
  br label %8

118:                                              ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DFSClearHCG(%struct._nodeHCGType* %0) #0 {
  %2 = alloca %struct._nodeHCGType*, align 8
  %3 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %4

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpHCG(%struct._nodeHCGType* %0) #0 {
  %2 = alloca %struct._nodeHCGType*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @channelNets, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3.31, i64 0, i64 0), i64 %10)
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %30, %9
  %13 = load i64, i64* %4, align 8
  %14 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %14, i64 %15
  %17 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct._nodeHCGType*, %struct._nodeHCGType** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %21, i64 %22
  %24 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.32, i64 0, i64 0), i64 %28)
  br label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %4, align 8
  br label %12

33:                                               ; preds = %12
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.33, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %3, align 8
  br label %5

38:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @NoHCV(%struct._nodeHCGType* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct._nodeHCGType*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct._nodeHCGType* %0, %struct._nodeHCGType** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 1, i64* %9, align 8
  br label %13

13:                                               ; preds = %68, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @channelTracks, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  store i64 1, i64* %12, align 8
  store i64 1, i64* %10, align 8
  br label %18

18:                                               ; preds = %60, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @channelNets, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %59

29:                                               ; preds = %22
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %51, %29
  %31 = load i64, i64* %11, align 8
  %32 = load %struct._nodeHCGType*, %struct._nodeHCGType** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %32, i64 %33
  %35 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %31, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load %struct._nodeHCGType*, %struct._nodeHCGType** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %39, i64 %40
  %42 = getelementptr inbounds %struct._nodeHCGType, %struct._nodeHCGType* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %38
  store i64 0, i64* %12, align 8
  br label %54

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %11, align 8
  br label %30

54:                                               ; preds = %49, %30
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %63

58:                                               ; preds = %54
  br label %59

59:                                               ; preds = %58, %22
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %10, align 8
  br label %18

63:                                               ; preds = %57, %18
  %64 = load i64, i64* %12, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %9, align 8
  br label %13

71:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %142, %2
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 20
  br i1 %14, label %15, label %145

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  call void @Option(i32 %16, i8** %17)
  call void @BuildChannel()
  call void @BuildVCG()
  call void @AcyclicVCG()
  call void @BuildHCG()
  br label %18

18:                                               ; preds = %136, %15
  call void @AllocAssign()
  call void @NetsAssign()
  call void @InitAllocMaps()
  %19 = load i64, i64* @channelTracks, align 8
  store i64 %19, i64* @channelTracksCopy, align 8
  store i64 1, i64* %8, align 8
  br label %20

20:                                               ; preds = %32, %18
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @channelNets, align 8
  %23 = icmp ule i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i64*, i64** @netsAssign, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** @netsAssignCopy, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 %28, i64* %31, align 8
  br label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %20

35:                                               ; preds = %20
  store i64 0, i64* %7, align 8
  br label %36

36:                                               ; preds = %122, %35
  store i64 1, i64* %6, align 8
  %37 = call i32 @DrawNets()
  store i32 %37, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.36, i64 0, i64 0), i32 %40)
  %42 = call i32 @Maze1()
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1.37, i64 0, i64 0), i32 %45)
  %47 = call i32 @Maze2()
  store i32 %47, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %44
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2.38, i64 0, i64 0), i32 %50)
  %52 = call i32 @Maze3()
  store i32 %52, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3.39, i64 0, i64 0), i32 %55)
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* @channelTracks, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* @channelTracks, align 8
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %7, align 8
  store i64 1, i64* %8, align 8
  br label %65

65:                                               ; preds = %77, %62
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* @channelNets, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i64*, i64** @netsAssignCopy, align 8
  %71 = load i64, i64* %8, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** @netsAssign, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %65

80:                                               ; preds = %65
  store i64 0, i64* %6, align 8
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81, %44
  br label %83

83:                                               ; preds = %82, %39
  br label %84

84:                                               ; preds = %83, %36
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %113, label %87

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87
  store i64 1, i64* %9, align 8
  br label %91

91:                                               ; preds = %109, %90
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @channelNets, align 8
  %94 = icmp ule i64 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i64*, i64** @netsAssign, align 8
  %97 = load i64, i64* %9, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load i64*, i64** @netsAssign, align 8
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %102, %95
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %9, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %9, align 8
  br label %91

112:                                              ; preds = %91
  br label %113

113:                                              ; preds = %112, %87, %84
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %6, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* @channelTracksCopy, align 8
  %120 = add i64 %119, 1
  %121 = icmp ule i64 %118, %120
  br label %122

122:                                              ; preds = %117, %114
  %123 = phi i1 [ false, %114 ], [ %121, %117 ]
  br i1 %123, label %36, label %124

124:                                              ; preds = %122
  %125 = load i64, i64* %6, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %124
  call void @FreeAllocMaps()
  call void @FreeAssign()
  %128 = load i64, i64* @channelTracks, align 8
  %129 = load i64, i64* @channelTracksCopy, align 8
  %130 = add i64 %129, 1
  %131 = icmp eq i64 %128, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %134

133:                                              ; preds = %127
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4.40, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5.41, i64 0, i64 0), i32 133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134, %124
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %6, align 8
  %138 = icmp ne i64 %137, 0
  %139 = xor i1 %138, true
  br i1 %139, label %18, label %140

140:                                              ; preds = %136
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.42, i64 0, i64 0))
  call void @PrintChannel()
  br label %142

142:                                              ; preds = %140
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %12

145:                                              ; preds = %12
  call void @exit(i32 0) #6
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @InitAllocMaps() #0 {
  %1 = load i64, i64* @channelColumns, align 8
  %2 = add i64 %1, 1
  %3 = load i64, i64* @channelTracks, align 8
  %4 = add i64 %3, 3
  %5 = mul i64 %2, %4
  %6 = call noalias i8* @malloc(i64 %5) #5
  store i8* %6, i8** @horzPlane, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = add i64 %7, 1
  %9 = load i64, i64* @channelTracks, align 8
  %10 = add i64 %9, 3
  %11 = mul i64 %8, %10
  %12 = call noalias i8* @malloc(i64 %11) #5
  store i8* %12, i8** @vertPlane, align 8
  %13 = load i64, i64* @channelColumns, align 8
  %14 = add i64 %13, 1
  %15 = load i64, i64* @channelTracks, align 8
  %16 = add i64 %15, 3
  %17 = mul i64 %14, %16
  %18 = call noalias i8* @malloc(i64 %17) #5
  store i8* %18, i8** @viaPlane, align 8
  %19 = load i64, i64* @channelColumns, align 8
  %20 = add i64 %19, 1
  %21 = call noalias i8* @malloc(i64 %20) #5
  store i8* %21, i8** @mazeRoute, align 8
  %22 = load i8*, i8** @horzPlane, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %0
  %25 = load i8*, i8** @vertPlane, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @viaPlane, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** @mazeRoute, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %27, %24, %0
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.45, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

36:                                               ; preds = %30
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeAllocMaps() #0 {
  %1 = load i8*, i8** @horzPlane, align 8
  call void @free(i8* %1) #5
  %2 = load i8*, i8** @vertPlane, align 8
  call void @free(i8* %2) #5
  %3 = load i8*, i8** @viaPlane, align 8
  call void @free(i8* %3) #5
  %4 = load i8*, i8** @mazeRoute, align 8
  call void @free(i8* %4) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DrawSegment(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %5
  br label %22

21:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.48, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.DrawSegment, i64 0, i64 0)) #6
  unreachable

22:                                               ; preds = %20
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %32

31:                                               ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3.50, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 97, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.DrawSegment, i64 0, i64 0)) #6
  unreachable

32:                                               ; preds = %30
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %113

36:                                               ; preds = %32
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i64 [ %42, %41 ], [ %44, %43 ]
  %47 = load i64, i64* @channelColumns, align 8
  %48 = mul i64 %46, %47
  %49 = load i64, i64* %7, align 8
  %50 = add i64 %48, %49
  %51 = getelementptr inbounds i8, i8* %37, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = or i32 %53, 8
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i64, i64* %8, align 8
  br label %63

61:                                               ; preds = %45
  %62 = load i64, i64* %10, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i64 [ %60, %59 ], [ %62, %61 ]
  %65 = add i64 %64, 1
  store i64 %65, i64* %12, align 8
  br label %66

66:                                               ; preds = %90, %63
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i64, i64* %10, align 8
  br label %75

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = icmp ult i64 %67, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i8*, i8** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* @channelColumns, align 8
  %82 = mul i64 %80, %81
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %79, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = or i32 %87, 12
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  br label %90

90:                                               ; preds = %78
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %66

93:                                               ; preds = %75
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i64, i64* %10, align 8
  br label %102

100:                                              ; preds = %93
  %101 = load i64, i64* %8, align 8
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i64 [ %99, %98 ], [ %101, %100 ]
  %104 = load i64, i64* @channelColumns, align 8
  %105 = mul i64 %103, %104
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %94, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = or i32 %110, 4
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 1
  br label %186

113:                                              ; preds = %32
  %114 = load i8*, i8** %6, align 8
  %115 = load i64, i64* %8, align 8
  %116 = load i64, i64* @channelColumns, align 8
  %117 = mul i64 %115, %116
  %118 = load i64, i64* %7, align 8
  %119 = load i64, i64* %9, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* %7, align 8
  br label %125

123:                                              ; preds = %113
  %124 = load i64, i64* %9, align 8
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i64 [ %122, %121 ], [ %124, %123 ]
  %127 = add i64 %117, %126
  %128 = getelementptr inbounds i8, i8* %114, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = or i32 %130, 2
  %132 = trunc i32 %131 to i8
  store i8 %132, i8* %128, align 1
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %9, align 8
  %135 = icmp ult i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = load i64, i64* %7, align 8
  br label %140

138:                                              ; preds = %125
  %139 = load i64, i64* %9, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = add i64 %141, 1
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %163, %140
  %144 = load i64, i64* %11, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* %9, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i64, i64* %9, align 8
  br label %152

150:                                              ; preds = %143
  %151 = load i64, i64* %7, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i64 [ %149, %148 ], [ %151, %150 ]
  %154 = icmp ult i64 %144, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %152
  %156 = load i8*, i8** %6, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @channelColumns, align 8
  %159 = mul i64 %157, %158
  %160 = load i64, i64* %11, align 8
  %161 = add i64 %159, %160
  %162 = getelementptr inbounds i8, i8* %156, i64 %161
  store i8 3, i8* %162, align 1
  br label %163

163:                                              ; preds = %155
  %164 = load i64, i64* %11, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* %11, align 8
  br label %143

166:                                              ; preds = %152
  %167 = load i8*, i8** %6, align 8
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* @channelColumns, align 8
  %170 = mul i64 %168, %169
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* %9, align 8
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = load i64, i64* %9, align 8
  br label %178

176:                                              ; preds = %166
  %177 = load i64, i64* %7, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  %180 = add i64 %170, %179
  %181 = getelementptr inbounds i8, i8* %167, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = or i32 %183, 1
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %181, align 1
  br label %186

186:                                              ; preds = %178, %102
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DrawVia(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** @viaPlane, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = mul i64 %6, %7
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %8, %9
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  store i8 1, i8* %11, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @HasVia(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** @viaPlane, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = mul i64 %6, %7
  %9 = load i64, i64* %3, align 8
  %10 = add i64 %8, %9
  %11 = getelementptr inbounds i8, i8* %5, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  ret i32 %13
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @SegmentFree(i8* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %5
  br label %24

23:                                               ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1.48, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 169, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @__PRETTY_FUNCTION__.SegmentFree, i64 0, i64 0)) #6
  unreachable

24:                                               ; preds = %22
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i64, i64* %9, align 8
  br label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %11, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = load i64, i64* @channelColumns, align 8
  %39 = mul i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = add i64 %39, %40
  store i64 %41, i64* %14, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %9, align 8
  br label %49

47:                                               ; preds = %36
  %48 = load i64, i64* %11, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i64 [ %46, %45 ], [ %48, %47 ]
  store i64 %50, i64* %13, align 8
  br label %51

51:                                               ; preds = %71, %49
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i64, i64* %11, align 8
  br label %60

58:                                               ; preds = %51
  %59 = load i64, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i64 [ %57, %56 ], [ %59, %58 ]
  %62 = icmp ule i64 %52, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %14, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %128

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* @channelColumns, align 8
  %75 = load i64, i64* %14, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %14, align 8
  br label %51

77:                                               ; preds = %60
  br label %127

78:                                               ; preds = %24
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @channelColumns, align 8
  %81 = mul i64 %79, %80
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %10, align 8
  %84 = icmp ult i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* %8, align 8
  br label %89

87:                                               ; preds = %78
  %88 = load i64, i64* %10, align 8
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i64 [ %86, %85 ], [ %88, %87 ]
  %91 = add i64 %81, %90
  store i64 %91, i64* %14, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  br label %99

97:                                               ; preds = %89
  %98 = load i64, i64* %10, align 8
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i64 [ %96, %95 ], [ %98, %97 ]
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %121, %99
  %102 = load i64, i64* %12, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i64, i64* %10, align 8
  br label %110

108:                                              ; preds = %101
  %109 = load i64, i64* %8, align 8
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i64 [ %107, %106 ], [ %109, %108 ]
  %112 = icmp ule i64 %102, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = load i8*, i8** %7, align 8
  %115 = load i64, i64* %14, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = icmp ne i8 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 0, i32* %6, align 4
  br label %128

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %14, align 8
  br label %101

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %77
  store i32 1, i32* %6, align 4
  br label %128

128:                                              ; preds = %127, %119, %69
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @PrintChannel() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i64, i64* %1, align 8
  %6 = load i64, i64* @channelColumns, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i64*, i64** @TOP, align 8
  %10 = load i64, i64* %1, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = udiv i64 %12, 100
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %13)
  br label %15

15:                                               ; preds = %8
  %16 = load i64, i64* %1, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %4

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %21

21:                                               ; preds = %39, %18
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @channelColumns, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i64*, i64** @TOP, align 8
  %27 = load i64, i64* %1, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** @TOP, align 8
  %31 = load i64, i64* %1, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = udiv i64 %33, 100
  %35 = mul i64 %34, 100
  %36 = sub i64 %29, %35
  %37 = udiv i64 %36, 10
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %25
  %40 = load i64, i64* %1, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %1, align 8
  br label %21

42:                                               ; preds = %21
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %45

45:                                               ; preds = %56, %42
  %46 = load i64, i64* %1, align 8
  %47 = load i64, i64* @channelColumns, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i64*, i64** @TOP, align 8
  %51 = load i64, i64* %1, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = urem i64 %53, 10
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i64, i64* %1, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %1, align 8
  br label %45

59:                                               ; preds = %45
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %62

62:                                               ; preds = %79, %59
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @channelColumns, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %82

66:                                               ; preds = %62
  %67 = load i8*, i8** @vertPlane, align 8
  %68 = load i64, i64* @channelColumns, align 8
  %69 = mul i64 0, %68
  %70 = load i64, i64* %1, align 8
  %71 = add i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 124, i32 32
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %66
  %80 = load i64, i64* %1, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %1, align 8
  br label %62

82:                                               ; preds = %62
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  store i64 1, i64* %2, align 8
  br label %84

84:                                               ; preds = %336, %82
  %85 = load i64, i64* %2, align 8
  %86 = load i64, i64* @channelTracks, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %339

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %90

90:                                               ; preds = %111, %88
  %91 = load i64, i64* %1, align 8
  %92 = load i64, i64* @channelColumns, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i8*, i8** @vertPlane, align 8
  %96 = load i64, i64* %2, align 8
  %97 = load i64, i64* @channelColumns, align 8
  %98 = mul i64 %96, %97
  %99 = load i64, i64* %1, align 8
  %100 = add i64 %98, %99
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = and i32 %103, 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %94
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.57, i64 0, i64 0))
  br label %110

108:                                              ; preds = %94
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9.58, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %1, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %1, align 8
  br label %90

114:                                              ; preds = %90
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %116 = load i64, i64* %2, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i64 %116)
  store i64 1, i64* %1, align 8
  br label %118

118:                                              ; preds = %304, %114
  %119 = load i64, i64* %1, align 8
  %120 = load i64, i64* @channelColumns, align 8
  %121 = icmp ule i64 %119, %120
  br i1 %121, label %122, label %307

122:                                              ; preds = %118
  %123 = load i8*, i8** @horzPlane, align 8
  %124 = load i64, i64* %2, align 8
  %125 = load i64, i64* @channelColumns, align 8
  %126 = mul i64 %124, %125
  %127 = load i64, i64* %1, align 8
  %128 = add i64 %126, %127
  %129 = getelementptr inbounds i8, i8* %123, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %122
  %135 = load i8*, i8** @vertPlane, align 8
  %136 = load i64, i64* %2, align 8
  %137 = load i64, i64* @channelColumns, align 8
  %138 = mul i64 %136, %137
  %139 = load i64, i64* %1, align 8
  %140 = add i64 %138, %139
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %180

148:                                              ; preds = %134, %122
  %149 = load i8*, i8** @horzPlane, align 8
  %150 = load i64, i64* %2, align 8
  %151 = load i64, i64* @channelColumns, align 8
  %152 = mul i64 %150, %151
  %153 = load i64, i64* %1, align 8
  %154 = add i64 %152, %153
  %155 = getelementptr inbounds i8, i8* %149, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = and i32 %157, 1
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %148
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %179

162:                                              ; preds = %148
  %163 = load i8*, i8** @vertPlane, align 8
  %164 = load i64, i64* %2, align 8
  %165 = load i64, i64* @channelColumns, align 8
  %166 = mul i64 %164, %165
  %167 = load i64, i64* %1, align 8
  %168 = add i64 %166, %167
  %169 = getelementptr inbounds i8, i8* %163, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = and i32 %171, 1
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %178

176:                                              ; preds = %162
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %174
  br label %179

179:                                              ; preds = %178, %160
  br label %180

180:                                              ; preds = %179, %146
  %181 = load i8*, i8** @viaPlane, align 8
  %182 = load i64, i64* %2, align 8
  %183 = load i64, i64* @channelColumns, align 8
  %184 = mul i64 %182, %183
  %185 = load i64, i64* %1, align 8
  %186 = add i64 %184, %185
  %187 = getelementptr inbounds i8, i8* %181, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = icmp ne i8 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %180
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %245

192:                                              ; preds = %180
  %193 = load i8*, i8** @horzPlane, align 8
  %194 = load i64, i64* %2, align 8
  %195 = load i64, i64* @channelColumns, align 8
  %196 = mul i64 %194, %195
  %197 = load i64, i64* %1, align 8
  %198 = add i64 %196, %197
  %199 = getelementptr inbounds i8, i8* %193, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %216

203:                                              ; preds = %192
  %204 = load i8*, i8** @vertPlane, align 8
  %205 = load i64, i64* %2, align 8
  %206 = load i64, i64* @channelColumns, align 8
  %207 = mul i64 %205, %206
  %208 = load i64, i64* %1, align 8
  %209 = add i64 %207, %208
  %210 = getelementptr inbounds i8, i8* %204, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %203
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %244

216:                                              ; preds = %203, %192
  %217 = load i8*, i8** @horzPlane, align 8
  %218 = load i64, i64* %2, align 8
  %219 = load i64, i64* @channelColumns, align 8
  %220 = mul i64 %218, %219
  %221 = load i64, i64* %1, align 8
  %222 = add i64 %220, %221
  %223 = getelementptr inbounds i8, i8* %217, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = icmp ne i8 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %216
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %243

228:                                              ; preds = %216
  %229 = load i8*, i8** @vertPlane, align 8
  %230 = load i64, i64* %2, align 8
  %231 = load i64, i64* @channelColumns, align 8
  %232 = mul i64 %230, %231
  %233 = load i64, i64* %1, align 8
  %234 = add i64 %232, %233
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %228
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  br label %242

240:                                              ; preds = %228
  %241 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %238
  br label %243

243:                                              ; preds = %242, %226
  br label %244

244:                                              ; preds = %243, %214
  br label %245

245:                                              ; preds = %244, %190
  %246 = load i8*, i8** @horzPlane, align 8
  %247 = load i64, i64* %2, align 8
  %248 = load i64, i64* @channelColumns, align 8
  %249 = mul i64 %247, %248
  %250 = load i64, i64* %1, align 8
  %251 = add i64 %249, %250
  %252 = getelementptr inbounds i8, i8* %246, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = and i32 %254, 2
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %245
  %258 = load i8*, i8** @vertPlane, align 8
  %259 = load i64, i64* %2, align 8
  %260 = load i64, i64* @channelColumns, align 8
  %261 = mul i64 %259, %260
  %262 = load i64, i64* %1, align 8
  %263 = add i64 %261, %262
  %264 = getelementptr inbounds i8, i8* %258, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = and i32 %266, 2
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %257
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %303

271:                                              ; preds = %257, %245
  %272 = load i8*, i8** @horzPlane, align 8
  %273 = load i64, i64* %2, align 8
  %274 = load i64, i64* @channelColumns, align 8
  %275 = mul i64 %273, %274
  %276 = load i64, i64* %1, align 8
  %277 = add i64 %275, %276
  %278 = getelementptr inbounds i8, i8* %272, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = and i32 %280, 2
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %271
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %302

285:                                              ; preds = %271
  %286 = load i8*, i8** @vertPlane, align 8
  %287 = load i64, i64* %2, align 8
  %288 = load i64, i64* @channelColumns, align 8
  %289 = mul i64 %287, %288
  %290 = load i64, i64* %1, align 8
  %291 = add i64 %289, %290
  %292 = getelementptr inbounds i8, i8* %286, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = and i32 %294, 2
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %285
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  br label %301

299:                                              ; preds = %285
  %300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %301

301:                                              ; preds = %299, %297
  br label %302

302:                                              ; preds = %301, %283
  br label %303

303:                                              ; preds = %302, %269
  br label %304

304:                                              ; preds = %303
  %305 = load i64, i64* %1, align 8
  %306 = add i64 %305, 1
  store i64 %306, i64* %1, align 8
  br label %118

307:                                              ; preds = %118
  %308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %310

310:                                              ; preds = %331, %307
  %311 = load i64, i64* %1, align 8
  %312 = load i64, i64* @channelColumns, align 8
  %313 = icmp ule i64 %311, %312
  br i1 %313, label %314, label %334

314:                                              ; preds = %310
  %315 = load i8*, i8** @vertPlane, align 8
  %316 = load i64, i64* %2, align 8
  %317 = load i64, i64* @channelColumns, align 8
  %318 = mul i64 %316, %317
  %319 = load i64, i64* %1, align 8
  %320 = add i64 %318, %319
  %321 = getelementptr inbounds i8, i8* %315, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = and i32 %323, 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8.57, i64 0, i64 0))
  br label %330

328:                                              ; preds = %314
  %329 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9.58, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %326
  br label %331

331:                                              ; preds = %330
  %332 = load i64, i64* %1, align 8
  %333 = add i64 %332, 1
  store i64 %333, i64* %1, align 8
  br label %310

334:                                              ; preds = %310
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  br label %336

336:                                              ; preds = %334
  %337 = load i64, i64* %2, align 8
  %338 = add i64 %337, 1
  store i64 %338, i64* %2, align 8
  br label %84

339:                                              ; preds = %84
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %341

341:                                              ; preds = %360, %339
  %342 = load i64, i64* %1, align 8
  %343 = load i64, i64* @channelColumns, align 8
  %344 = icmp ule i64 %342, %343
  br i1 %344, label %345, label %363

345:                                              ; preds = %341
  %346 = load i8*, i8** @vertPlane, align 8
  %347 = load i64, i64* @channelTracks, align 8
  %348 = add i64 %347, 1
  %349 = load i64, i64* @channelColumns, align 8
  %350 = mul i64 %348, %349
  %351 = load i64, i64* %1, align 8
  %352 = add i64 %350, %351
  %353 = getelementptr inbounds i8, i8* %346, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, 0
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 124, i32 32
  %359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.56, i64 0, i64 0), i32 %358)
  br label %360

360:                                              ; preds = %345
  %361 = load i64, i64* %1, align 8
  %362 = add i64 %361, 1
  store i64 %362, i64* %1, align 8
  br label %341

363:                                              ; preds = %341
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %366

366:                                              ; preds = %377, %363
  %367 = load i64, i64* %1, align 8
  %368 = load i64, i64* @channelColumns, align 8
  %369 = icmp ule i64 %367, %368
  br i1 %369, label %370, label %380

370:                                              ; preds = %366
  %371 = load i64*, i64** @BOT, align 8
  %372 = load i64, i64* %1, align 8
  %373 = getelementptr inbounds i64, i64* %371, i64 %372
  %374 = load i64, i64* %373, align 8
  %375 = udiv i64 %374, 100
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %375)
  br label %377

377:                                              ; preds = %370
  %378 = load i64, i64* %1, align 8
  %379 = add i64 %378, 1
  store i64 %379, i64* %1, align 8
  br label %366

380:                                              ; preds = %366
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %383

383:                                              ; preds = %401, %380
  %384 = load i64, i64* %1, align 8
  %385 = load i64, i64* @channelColumns, align 8
  %386 = icmp ule i64 %384, %385
  br i1 %386, label %387, label %404

387:                                              ; preds = %383
  %388 = load i64*, i64** @BOT, align 8
  %389 = load i64, i64* %1, align 8
  %390 = getelementptr inbounds i64, i64* %388, i64 %389
  %391 = load i64, i64* %390, align 8
  %392 = load i64*, i64** @BOT, align 8
  %393 = load i64, i64* %1, align 8
  %394 = getelementptr inbounds i64, i64* %392, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = udiv i64 %395, 100
  %397 = mul i64 %396, 100
  %398 = sub i64 %391, %397
  %399 = udiv i64 %398, 10
  %400 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %399)
  br label %401

401:                                              ; preds = %387
  %402 = load i64, i64* %1, align 8
  %403 = add i64 %402, 1
  store i64 %403, i64* %1, align 8
  br label %383

404:                                              ; preds = %383
  %405 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4.53, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %407

407:                                              ; preds = %418, %404
  %408 = load i64, i64* %1, align 8
  %409 = load i64, i64* @channelColumns, align 8
  %410 = icmp ule i64 %408, %409
  br i1 %410, label %411, label %421

411:                                              ; preds = %407
  %412 = load i64*, i64** @BOT, align 8
  %413 = load i64, i64* %1, align 8
  %414 = getelementptr inbounds i64, i64* %412, i64 %413
  %415 = load i64, i64* %414, align 8
  %416 = urem i64 %415, 10
  %417 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.54, i64 0, i64 0), i64 %416)
  br label %418

418:                                              ; preds = %411
  %419 = load i64, i64* %1, align 8
  %420 = add i64 %419, 1
  store i64 %420, i64* %1, align 8
  br label %407

421:                                              ; preds = %407
  %422 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.55, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @DrawNets() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i8*, i8** @horzPlane, align 8
  %4 = load i64, i64* @channelColumns, align 8
  %5 = add i64 %4, 1
  %6 = load i64, i64* @channelTracks, align 8
  %7 = add i64 %6, 2
  %8 = mul i64 %5, %7
  %9 = trunc i64 %8 to i32
  %10 = sext i32 %9 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 %10, i1 false)
  %11 = load i8*, i8** @vertPlane, align 8
  %12 = load i64, i64* @channelColumns, align 8
  %13 = add i64 %12, 1
  %14 = load i64, i64* @channelTracks, align 8
  %15 = add i64 %14, 2
  %16 = mul i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = sext i32 %17 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 %18, i1 false)
  %19 = load i8*, i8** @viaPlane, align 8
  %20 = load i64, i64* @channelColumns, align 8
  %21 = add i64 %20, 1
  %22 = load i64, i64* @channelTracks, align 8
  %23 = add i64 %22, 2
  %24 = mul i64 %21, %23
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %19, i8 0, i64 %26, i1 false)
  %27 = load i8*, i8** @mazeRoute, align 8
  %28 = load i64, i64* @channelColumns, align 8
  %29 = add i64 %28, 1
  %30 = trunc i64 %29 to i32
  %31 = sext i32 %30 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %27, i8 0, i64 %31, i1 false)
  store i64 1, i64* %1, align 8
  br label %32

32:                                               ; preds = %65, %0
  %33 = load i64, i64* %1, align 8
  %34 = load i64, i64* @channelNets, align 8
  %35 = icmp ule i64 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %32
  %37 = load i64*, i64** @FIRST, align 8
  %38 = load i64, i64* %1, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64*, i64** @LAST, align 8
  %42 = load i64, i64* %1, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %40, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load i8*, i8** @horzPlane, align 8
  %48 = load i64*, i64** @FIRST, align 8
  %49 = load i64, i64* %1, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @netsAssign, align 8
  %53 = load i64, i64* %1, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load i64*, i64** @LAST, align 8
  %57 = load i64, i64* %1, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** @netsAssign, align 8
  %61 = load i64, i64* %1, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  call void @DrawSegment(i8* %47, i64 %51, i64 %55, i64 %59, i64 %63)
  br label %64

64:                                               ; preds = %46, %36
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %1, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %1, align 8
  br label %32

68:                                               ; preds = %32
  store i64 1, i64* %1, align 8
  br label %69

69:                                               ; preds = %313, %68
  %70 = load i64, i64* %1, align 8
  %71 = load i64, i64* @channelColumns, align 8
  %72 = icmp ule i64 %70, %71
  br i1 %72, label %73, label %316

73:                                               ; preds = %69
  %74 = load i64*, i64** @BOT, align 8
  %75 = load i64, i64* %1, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i64*, i64** @TOP, align 8
  %81 = load i64, i64* %1, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %312

86:                                               ; preds = %79, %73
  %87 = load i64*, i64** @BOT, align 8
  %88 = load i64, i64* %1, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load i64*, i64** @TOP, align 8
  %94 = load i64, i64* %1, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load i8*, i8** @vertPlane, align 8
  %100 = load i64, i64* %1, align 8
  %101 = load i64, i64* %1, align 8
  %102 = load i64*, i64** @netsAssign, align 8
  %103 = load i64*, i64** @TOP, align 8
  %104 = load i64, i64* %1, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  call void @DrawSegment(i8* %99, i64 %100, i64 0, i64 %101, i64 %108)
  %109 = load i64, i64* %1, align 8
  %110 = load i64*, i64** @netsAssign, align 8
  %111 = load i64*, i64** @TOP, align 8
  %112 = load i64, i64* %1, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %110, i64 %114
  %116 = load i64, i64* %115, align 8
  call void @DrawVia(i64 %109, i64 %116)
  br label %311

117:                                              ; preds = %92, %86
  %118 = load i64*, i64** @TOP, align 8
  %119 = load i64, i64* %1, align 8
  %120 = getelementptr inbounds i64, i64* %118, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %117
  %124 = load i64*, i64** @BOT, align 8
  %125 = load i64, i64* %1, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %123
  %130 = load i8*, i8** @vertPlane, align 8
  %131 = load i64, i64* %1, align 8
  %132 = load i64*, i64** @netsAssign, align 8
  %133 = load i64*, i64** @BOT, align 8
  %134 = load i64, i64* %1, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %1, align 8
  %140 = load i64, i64* @channelTracks, align 8
  %141 = add i64 %140, 1
  call void @DrawSegment(i8* %130, i64 %131, i64 %138, i64 %139, i64 %141)
  %142 = load i64, i64* %1, align 8
  %143 = load i64*, i64** @netsAssign, align 8
  %144 = load i64*, i64** @BOT, align 8
  %145 = load i64, i64* %1, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i64, i64* %143, i64 %147
  %149 = load i64, i64* %148, align 8
  call void @DrawVia(i64 %142, i64 %149)
  br label %310

150:                                              ; preds = %123, %117
  %151 = load i64*, i64** @TOP, align 8
  %152 = load i64, i64* %1, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = load i64*, i64** @BOT, align 8
  %156 = load i64, i64* %1, align 8
  %157 = getelementptr inbounds i64, i64* %155, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %154, %158
  br i1 %159, label %160, label %204

160:                                              ; preds = %150
  %161 = load i64*, i64** @FIRST, align 8
  %162 = load i64*, i64** @TOP, align 8
  %163 = load i64, i64* %1, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i64, i64* %161, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** @LAST, align 8
  %169 = load i64*, i64** @TOP, align 8
  %170 = load i64, i64* %1, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i64, i64* %168, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %167, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %160
  %177 = load i64*, i64** @FIRST, align 8
  %178 = load i64*, i64** @TOP, align 8
  %179 = load i64, i64* %1, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds i64, i64* %177, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %1, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %176
  %187 = load i64*, i64** @LAST, align 8
  %188 = load i64*, i64** @TOP, align 8
  %189 = load i64, i64* %1, align 8
  %190 = getelementptr inbounds i64, i64* %188, i64 %189
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds i64, i64* %187, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %1, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %198

197:                                              ; preds = %186, %176
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 359, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.DrawNets, i64 0, i64 0)) #6
  unreachable

198:                                              ; preds = %196
  %199 = load i8*, i8** @vertPlane, align 8
  %200 = load i64, i64* %1, align 8
  %201 = load i64, i64* %1, align 8
  %202 = load i64, i64* @channelTracks, align 8
  %203 = add i64 %202, 1
  call void @DrawSegment(i8* %199, i64 %200, i64 0, i64 %201, i64 %203)
  br label %309

204:                                              ; preds = %160, %150
  %205 = load i64*, i64** @TOP, align 8
  %206 = load i64, i64* %1, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** @BOT, align 8
  %210 = load i64, i64* %1, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = icmp eq i64 %208, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %204
  %215 = load i8*, i8** @vertPlane, align 8
  %216 = load i64, i64* %1, align 8
  %217 = load i64, i64* %1, align 8
  %218 = load i64, i64* @channelTracks, align 8
  %219 = add i64 %218, 1
  call void @DrawSegment(i8* %215, i64 %216, i64 0, i64 %217, i64 %219)
  %220 = load i64, i64* %1, align 8
  %221 = load i64*, i64** @netsAssign, align 8
  %222 = load i64*, i64** @BOT, align 8
  %223 = load i64, i64* %1, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i64, i64* %221, i64 %225
  %227 = load i64, i64* %226, align 8
  call void @DrawVia(i64 %220, i64 %227)
  br label %308

228:                                              ; preds = %204
  %229 = load i64*, i64** @netsAssign, align 8
  %230 = load i64*, i64** @TOP, align 8
  %231 = load i64, i64* %1, align 8
  %232 = getelementptr inbounds i64, i64* %230, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds i64, i64* %229, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = load i64*, i64** @netsAssign, align 8
  %237 = load i64*, i64** @BOT, align 8
  %238 = load i64, i64* %1, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  %240 = load i64, i64* %239, align 8
  %241 = getelementptr inbounds i64, i64* %236, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = icmp ult i64 %235, %242
  br i1 %243, label %244, label %283

244:                                              ; preds = %228
  %245 = load i8*, i8** @vertPlane, align 8
  %246 = load i64, i64* %1, align 8
  %247 = load i64, i64* %1, align 8
  %248 = load i64*, i64** @netsAssign, align 8
  %249 = load i64*, i64** @TOP, align 8
  %250 = load i64, i64* %1, align 8
  %251 = getelementptr inbounds i64, i64* %249, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds i64, i64* %248, i64 %252
  %254 = load i64, i64* %253, align 8
  call void @DrawSegment(i8* %245, i64 %246, i64 0, i64 %247, i64 %254)
  %255 = load i64, i64* %1, align 8
  %256 = load i64*, i64** @netsAssign, align 8
  %257 = load i64*, i64** @TOP, align 8
  %258 = load i64, i64* %1, align 8
  %259 = getelementptr inbounds i64, i64* %257, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i64, i64* %256, i64 %260
  %262 = load i64, i64* %261, align 8
  call void @DrawVia(i64 %255, i64 %262)
  %263 = load i8*, i8** @vertPlane, align 8
  %264 = load i64, i64* %1, align 8
  %265 = load i64*, i64** @netsAssign, align 8
  %266 = load i64*, i64** @BOT, align 8
  %267 = load i64, i64* %1, align 8
  %268 = getelementptr inbounds i64, i64* %266, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i64, i64* %265, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %1, align 8
  %273 = load i64, i64* @channelTracks, align 8
  %274 = add i64 %273, 1
  call void @DrawSegment(i8* %263, i64 %264, i64 %271, i64 %272, i64 %274)
  %275 = load i64, i64* %1, align 8
  %276 = load i64*, i64** @netsAssign, align 8
  %277 = load i64*, i64** @BOT, align 8
  %278 = load i64, i64* %1, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds i64, i64* %276, i64 %280
  %282 = load i64, i64* %281, align 8
  call void @DrawVia(i64 %275, i64 %282)
  br label %307

283:                                              ; preds = %228
  %284 = load i64*, i64** @netsAssign, align 8
  %285 = load i64*, i64** @TOP, align 8
  %286 = load i64, i64* %1, align 8
  %287 = getelementptr inbounds i64, i64* %285, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = getelementptr inbounds i64, i64* %284, i64 %288
  %290 = load i64, i64* %289, align 8
  %291 = load i64*, i64** @netsAssign, align 8
  %292 = load i64*, i64** @BOT, align 8
  %293 = load i64, i64* %1, align 8
  %294 = getelementptr inbounds i64, i64* %292, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds i64, i64* %291, i64 %295
  %297 = load i64, i64* %296, align 8
  %298 = icmp ugt i64 %290, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %283
  br label %301

300:                                              ; preds = %283
  call void @__assert_fail(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19.61, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 385, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.DrawNets, i64 0, i64 0)) #6
  unreachable

301:                                              ; preds = %299
  %302 = load i8*, i8** @mazeRoute, align 8
  %303 = load i64, i64* %1, align 8
  %304 = getelementptr inbounds i8, i8* %302, i64 %303
  store i8 1, i8* %304, align 1
  %305 = load i32, i32* %2, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %2, align 4
  br label %307

307:                                              ; preds = %301, %244
  br label %308

308:                                              ; preds = %307, %214
  br label %309

309:                                              ; preds = %308, %198
  br label %310

310:                                              ; preds = %309, %129
  br label %311

311:                                              ; preds = %310, %98
  br label %312

312:                                              ; preds = %311, %85
  br label %313

313:                                              ; preds = %312
  %314 = load i64, i64* %1, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %1, align 8
  br label %69

316:                                              ; preds = %69
  %317 = load i32, i32* %2, align 4
  ret i32 %317
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Maze1() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 1, i64* %4, align 8
  br label %5

5:                                                ; preds = %151, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %154

9:                                                ; preds = %5
  %10 = load i8*, i8** @mazeRoute, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %150

15:                                               ; preds = %9
  %16 = load i64*, i64** @netsAssign, align 8
  %17 = load i64*, i64** @TOP, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  %23 = load i64*, i64** @netsAssign, align 8
  %24 = load i64*, i64** @BOT, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %35

34:                                               ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 538, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.Maze1, i64 0, i64 0)) #6
  unreachable

35:                                               ; preds = %33
  %36 = load i64, i64* %4, align 8
  %37 = icmp ugt i64 %36, 1
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i64, i64* %2, align 8
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %41, label %61

41:                                               ; preds = %38
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @channelTracks, align 8
  %44 = add i64 %43, 1
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @Maze1Mech(i64 %42, i64 %44, i64 %45, i64 0, i64 %46, i32 -1, i32 -1)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i8*, i8** @mazeRoute, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i64*, i64** @TOP, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  call void @CleanNet(i64 %56)
  %57 = load i64*, i64** @BOT, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  call void @CleanNet(i64 %60)
  br label %149

61:                                               ; preds = %41, %38, %35
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @channelColumns, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %61
  %66 = load i64, i64* %2, align 8
  %67 = icmp ugt i64 %66, 1
  br i1 %67, label %68, label %88

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @channelTracks, align 8
  %71 = add i64 %70, 1
  %72 = load i64, i64* %2, align 8
  %73 = load i64, i64* %3, align 8
  %74 = call i32 @Maze1Mech(i64 %69, i64 %71, i64 %72, i64 0, i64 %73, i32 1, i32 -1)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load i8*, i8** @mazeRoute, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %79, align 1
  %80 = load i64*, i64** @TOP, align 8
  %81 = load i64, i64* %4, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  call void @CleanNet(i64 %83)
  %84 = load i64*, i64** @BOT, align 8
  %85 = load i64, i64* %4, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  call void @CleanNet(i64 %87)
  br label %148

88:                                               ; preds = %68, %65, %61
  %89 = load i64, i64* %4, align 8
  %90 = icmp ugt i64 %89, 1
  br i1 %90, label %91, label %115

91:                                               ; preds = %88
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* @channelTracks, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %91
  %96 = load i64, i64* %4, align 8
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* @channelTracks, align 8
  %99 = add i64 %98, 1
  %100 = load i64, i64* %2, align 8
  %101 = call i32 @Maze1Mech(i64 %96, i64 0, i64 %97, i64 %99, i64 %100, i32 -1, i32 1)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %95
  %104 = load i8*, i8** @mazeRoute, align 8
  %105 = load i64, i64* %4, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i64*, i64** @TOP, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  call void @CleanNet(i64 %110)
  %111 = load i64*, i64** @BOT, align 8
  %112 = load i64, i64* %4, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  call void @CleanNet(i64 %114)
  br label %147

115:                                              ; preds = %95, %91, %88
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @channelColumns, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %115
  %120 = load i64, i64* %3, align 8
  %121 = load i64, i64* @channelTracks, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %119
  %124 = load i64, i64* %4, align 8
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* @channelTracks, align 8
  %127 = add i64 %126, 1
  %128 = load i64, i64* %2, align 8
  %129 = call i32 @Maze1Mech(i64 %124, i64 0, i64 %125, i64 %127, i64 %128, i32 1, i32 1)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = load i8*, i8** @mazeRoute, align 8
  %133 = load i64, i64* %4, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  store i8 0, i8* %134, align 1
  %135 = load i64*, i64** @TOP, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  call void @CleanNet(i64 %138)
  %139 = load i64*, i64** @BOT, align 8
  %140 = load i64, i64* %4, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  call void @CleanNet(i64 %142)
  br label %146

143:                                              ; preds = %123, %119, %115
  %144 = load i32, i32* %1, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %1, align 4
  br label %146

146:                                              ; preds = %143, %131
  br label %147

147:                                              ; preds = %146, %103
  br label %148

148:                                              ; preds = %147, %76
  br label %149

149:                                              ; preds = %148, %49
  br label %150

150:                                              ; preds = %149, %9
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %4, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %4, align 8
  br label %5

154:                                              ; preds = %5
  %155 = load i32, i32* %1, align 4
  ret i32 %155
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Maze1Mech(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %16 = load i8*, i8** @vertPlane, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @SegmentFree(i8* %16, i64 %17, i64 %18, i64 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %132

23:                                               ; preds = %7
  %24 = load i8*, i8** @vertPlane, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %28, %30
  %32 = call i32 @SegmentFree(i8* %24, i64 %25, i64 %26, i64 %27, i64 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %132

34:                                               ; preds = %23
  %35 = load i8*, i8** @vertPlane, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* %15, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 %37, %39
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %41, %43
  %45 = load i64, i64* %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = call i32 @SegmentFree(i8* %35, i64 %36, i64 %40, i64 %44, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %132

51:                                               ; preds = %34
  %52 = load i8*, i8** @vertPlane, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %53, %55
  %57 = load i64, i64* %11, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = add i64 %57, %59
  %61 = load i64, i64* %9, align 8
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %61, %63
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @SegmentFree(i8* %52, i64 %56, i64 %60, i64 %64, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %132

68:                                               ; preds = %51
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = call i32 @HasVCV(i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %132, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** @vertPlane, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %11, align 8
  call void @DrawSegment(i8* %76, i64 %77, i64 %78, i64 %79, i64 %80)
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %11, align 8
  call void @DrawVia(i64 %81, i64 %82)
  %83 = load i8*, i8** @vertPlane, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %11, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  call void @DrawSegment(i8* %83, i64 %84, i64 %85, i64 %86, i64 %90)
  %91 = load i8*, i8** @vertPlane, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %93, %95
  %97 = load i64, i64* %9, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %97, %99
  %101 = load i64, i64* %11, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %101, %103
  call void @DrawSegment(i8* %91, i64 %92, i64 %96, i64 %100, i64 %104)
  %105 = load i8*, i8** @vertPlane, align 8
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = add i64 %106, %108
  %110 = load i64, i64* %11, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %110, %112
  %114 = load i64, i64* %9, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %114, %116
  %118 = load i64, i64* %13, align 8
  call void @DrawSegment(i8* %105, i64 %109, i64 %113, i64 %117, i64 %118)
  %119 = load i64, i64* %9, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = add i64 %119, %121
  %123 = load i64, i64* %13, align 8
  call void @DrawVia(i64 %122, i64 %123)
  %124 = load i8*, i8** @horzPlane, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = add i64 %125, %127
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* %9, align 8
  %131 = load i64, i64* %13, align 8
  call void @DrawSegment(i8* %124, i64 %128, i64 %129, i64 %130, i64 %131)
  store i32 1, i32* %8, align 4
  br label %133

132:                                              ; preds = %68, %51, %34, %23, %7
  store i32 0, i32* %8, align 4
  br label %133

133:                                              ; preds = %132, %75
  %134 = load i32, i32* %8, align 4
  ret i32 %134
}

; Function Attrs: noinline nounwind uwtable
define internal void @CleanNet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64*, i64** @FIRST, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64*, i64** @LAST, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ule i64 %14, %18
  br i1 %19, label %20, label %46

20:                                               ; preds = %13
  %21 = load i64*, i64** @TOP, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i64*, i64** @BOT, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %27, %20
  %35 = load i8*, i8** @mazeRoute, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %185

42:                                               ; preds = %34, %27
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %13

46:                                               ; preds = %13
  %47 = load i64*, i64** @netsAssign, align 8
  %48 = load i64, i64* %2, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i64*, i64** @FIRST, align 8
  %52 = load i64, i64* %2, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %67, %46
  %56 = load i8*, i8** @horzPlane, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @channelColumns, align 8
  %59 = mul i64 %57, %58
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %59, %60
  %62 = getelementptr inbounds i8, i8* %56, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %55
  %68 = load i64, i64* %6, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %6, align 8
  br label %55

70:                                               ; preds = %55
  %71 = load i64*, i64** @LAST, align 8
  %72 = load i64, i64* %2, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %87, %70
  %76 = load i8*, i8** @horzPlane, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @channelColumns, align 8
  %79 = mul i64 %77, %78
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %79, %80
  %82 = getelementptr inbounds i8, i8* %76, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %75
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %75

90:                                               ; preds = %75
  store i64 9999999, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %91 = load i64, i64* %6, align 8
  store i64 %91, i64* %3, align 8
  br label %92

92:                                               ; preds = %115, %90
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ule i64 %93, %94
  br i1 %95, label %96, label %118

96:                                               ; preds = %92
  %97 = load i64, i64* %3, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @HasVia(i64 %97, i64 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* %4, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i64, i64* %3, align 8
  store i64 %106, i64* %4, align 8
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i64, i64* %3, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp ugt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i64, i64* %3, align 8
  store i64 %112, i64* %5, align 8
  br label %113

113:                                              ; preds = %111, %107
  br label %114

114:                                              ; preds = %113, %96
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %3, align 8
  br label %92

118:                                              ; preds = %92
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %4, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load i64, i64* %6, align 8
  store i64 %123, i64* %3, align 8
  br label %124

124:                                              ; preds = %136, %122
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %4, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = load i8*, i8** @horzPlane, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @channelColumns, align 8
  %132 = mul i64 %130, %131
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %132, %133
  %135 = getelementptr inbounds i8, i8* %129, i64 %134
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %128
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %124

139:                                              ; preds = %124
  %140 = load i8*, i8** @horzPlane, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i64, i64* @channelColumns, align 8
  %143 = mul i64 %141, %142
  %144 = load i64, i64* %4, align 8
  %145 = add i64 %143, %144
  %146 = getelementptr inbounds i8, i8* %140, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = and i32 %148, -2
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  br label %151

151:                                              ; preds = %139, %118
  %152 = load i64, i64* %5, align 8
  %153 = load i64, i64* %7, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %185

155:                                              ; preds = %151
  %156 = load i8*, i8** @horzPlane, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @channelColumns, align 8
  %159 = mul i64 %157, %158
  %160 = load i64, i64* %5, align 8
  %161 = add i64 %159, %160
  %162 = getelementptr inbounds i8, i8* %156, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = and i32 %164, -3
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %162, align 1
  %167 = load i64, i64* %5, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %3, align 8
  br label %169

169:                                              ; preds = %181, %155
  %170 = load i64, i64* %3, align 8
  %171 = load i64, i64* %7, align 8
  %172 = icmp ule i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %169
  %174 = load i8*, i8** @horzPlane, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @channelColumns, align 8
  %177 = mul i64 %175, %176
  %178 = load i64, i64* %3, align 8
  %179 = add i64 %177, %178
  %180 = getelementptr inbounds i8, i8* %174, i64 %179
  store i8 0, i8* %180, align 1
  br label %181

181:                                              ; preds = %173
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %3, align 8
  br label %169

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %151, %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @HasVCV(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64*, i64** @TOP, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds i64, i64* %3, i64 %4
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = load i64*, i64** @BOT, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load i64*, i64** @TOP, align 8
  %16 = load i64, i64* %2, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** @BOT, align 8
  %20 = load i64, i64* %2, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %18, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %14
  %25 = load i64*, i64** @netsAssign, align 8
  %26 = load i64*, i64** @TOP, align 8
  %27 = load i64, i64* %2, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i64, i64* %25, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** @netsAssign, align 8
  %33 = load i64*, i64** @BOT, align 8
  %34 = load i64, i64* %2, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i64, i64* %32, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ugt i64 %31, %38
  br label %40

40:                                               ; preds = %24, %14, %8, %1
  %41 = phi i1 [ false, %14 ], [ false, %8 ], [ false, %1 ], [ %39, %24 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @ExtendOK(i64 %0, i8* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %12, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  br label %25

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i64, i64* %11, align 8
  br label %34

32:                                               ; preds = %25
  %33 = load i64, i64* %13, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  store i64 %35, i64* %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i64, i64* %12, align 8
  br label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i64 [ %40, %39 ], [ %42, %41 ]
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %13, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, i64* %13, align 8
  br label %52

50:                                               ; preds = %43
  %51 = load i64, i64* %11, align 8
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i64 [ %49, %48 ], [ %51, %50 ]
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i64*, i64** @netsAssign, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %15, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %66

65:                                               ; preds = %57, %52
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 660, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__.ExtendOK, i64 0, i64 0)) #6
  unreachable

66:                                               ; preds = %64
  %67 = load i64, i64* %14, align 8
  %68 = load i64*, i64** @FIRST, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp uge i64 %67, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load i64, i64* %16, align 8
  %75 = load i64*, i64** @LAST, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ule i64 %74, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %161

81:                                               ; preds = %73, %66
  %82 = load i64, i64* %14, align 8
  %83 = load i64*, i64** @FIRST, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = icmp ult i64 %82, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %81
  %89 = load i64, i64* %16, align 8
  %90 = load i64*, i64** @LAST, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %89, %93
  br i1 %94, label %95, label %122

95:                                               ; preds = %88
  %96 = load i8*, i8** %9, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = load i64*, i64** @FIRST, align 8
  %100 = load i64, i64* %8, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %102, 1
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @SegmentFree(i8* %96, i64 %97, i64 %98, i64 %103, i64 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %95
  %108 = load i8*, i8** %9, align 8
  %109 = load i64*, i64** @LAST, align 8
  %110 = load i64, i64* %8, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 1
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %16, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @SegmentFree(i8* %108, i64 %113, i64 %114, i64 %115, i64 %116)
  %118 = icmp ne i32 %117, 0
  br label %119

119:                                              ; preds = %107, %95
  %120 = phi i1 [ false, %95 ], [ %118, %107 ]
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %7, align 4
  br label %161

122:                                              ; preds = %88, %81
  %123 = load i64, i64* %14, align 8
  %124 = load i64*, i64** @FIRST, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %123, %127
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i8*, i8** %9, align 8
  %131 = load i64, i64* %14, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64*, i64** @FIRST, align 8
  %134 = load i64, i64* %8, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = sub i64 %136, 1
  %138 = load i64, i64* %15, align 8
  %139 = call i32 @SegmentFree(i8* %130, i64 %131, i64 %132, i64 %137, i64 %138)
  store i32 %139, i32* %7, align 4
  br label %161

140:                                              ; preds = %122
  %141 = load i64, i64* %16, align 8
  %142 = load i64*, i64** @LAST, align 8
  %143 = load i64, i64* %8, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ugt i64 %141, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %140
  %148 = load i8*, i8** %9, align 8
  %149 = load i64*, i64** @LAST, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* %15, align 8
  %157 = call i32 @SegmentFree(i8* %148, i64 %153, i64 %154, i64 %155, i64 %156)
  store i32 %157, i32* %7, align 4
  br label %161

158:                                              ; preds = %140
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  call void @abort() #6
  unreachable

161:                                              ; preds = %147, %129, %119, %80
  %162 = load i32, i32* %7, align 4
  ret i32 %162
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Maze2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 1, i64* %4, align 8
  br label %5

5:                                                ; preds = %187, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %190

9:                                                ; preds = %5
  %10 = load i8*, i8** @mazeRoute, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %186

15:                                               ; preds = %9
  %16 = load i64*, i64** @netsAssign, align 8
  %17 = load i64*, i64** @TOP, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  %23 = load i64*, i64** @netsAssign, align 8
  %24 = load i64*, i64** @BOT, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %35

34:                                               ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 773, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.Maze2, i64 0, i64 0)) #6
  unreachable

35:                                               ; preds = %33
  %36 = load i64, i64* %4, align 8
  %37 = icmp ugt i64 %36, 1
  br i1 %37, label %38, label %69

38:                                               ; preds = %35
  %39 = load i64, i64* %2, align 8
  %40 = icmp ugt i64 %39, 1
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = load i64*, i64** @TOP, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @channelTracks, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %2, align 8
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %51, 1
  %53 = load i64, i64* %2, align 8
  %54 = sub i64 %53, 1
  %55 = call i32 @Maze2Mech(i64 %45, i64 %46, i64 %48, i64 %49, i64 0, i64 %50, i64 %52, i64 1, i32 -1, i64 1, i64 %54, i32 1)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %41
  %58 = load i8*, i8** @mazeRoute, align 8
  %59 = load i64, i64* %4, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load i64*, i64** @TOP, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  call void @CleanNet(i64 %64)
  %65 = load i64*, i64** @BOT, align 8
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  call void @CleanNet(i64 %68)
  br label %185

69:                                               ; preds = %41, %38, %35
  %70 = load i64, i64* %4, align 8
  %71 = load i64, i64* @channelColumns, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %69
  %74 = load i64, i64* %2, align 8
  %75 = icmp ugt i64 %74, 1
  br i1 %75, label %76, label %105

76:                                               ; preds = %73
  %77 = load i64*, i64** @TOP, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @channelTracks, align 8
  %83 = add i64 %82, 1
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  %88 = load i64, i64* @channelColumns, align 8
  %89 = load i64, i64* %2, align 8
  %90 = sub i64 %89, 1
  %91 = call i32 @Maze2Mech(i64 %80, i64 %81, i64 %83, i64 %84, i64 0, i64 %85, i64 %87, i64 %88, i32 1, i64 1, i64 %90, i32 1)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %76
  %94 = load i8*, i8** @mazeRoute, align 8
  %95 = load i64, i64* %4, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 0, i8* %96, align 1
  %97 = load i64*, i64** @TOP, align 8
  %98 = load i64, i64* %4, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  call void @CleanNet(i64 %100)
  %101 = load i64*, i64** @BOT, align 8
  %102 = load i64, i64* %4, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  call void @CleanNet(i64 %104)
  br label %184

105:                                              ; preds = %76, %73, %69
  %106 = load i64, i64* %4, align 8
  %107 = icmp ugt i64 %106, 1
  br i1 %107, label %108, label %141

108:                                              ; preds = %105
  %109 = load i64, i64* %3, align 8
  %110 = load i64, i64* @channelTracks, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %108
  %113 = load i64*, i64** @BOT, align 8
  %114 = load i64, i64* %4, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @channelTracks, align 8
  %120 = add i64 %119, 1
  %121 = load i64, i64* %2, align 8
  %122 = load i64, i64* %4, align 8
  %123 = sub i64 %122, 1
  %124 = load i64, i64* %3, align 8
  %125 = add i64 %124, 1
  %126 = load i64, i64* @channelTracks, align 8
  %127 = call i32 @Maze2Mech(i64 %116, i64 %117, i64 0, i64 %118, i64 %120, i64 %121, i64 %123, i64 1, i32 -1, i64 %125, i64 %126, i32 1)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %112
  %130 = load i8*, i8** @mazeRoute, align 8
  %131 = load i64, i64* %4, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 0, i8* %132, align 1
  %133 = load i64*, i64** @TOP, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = load i64, i64* %135, align 8
  call void @CleanNet(i64 %136)
  %137 = load i64*, i64** @BOT, align 8
  %138 = load i64, i64* %4, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  call void @CleanNet(i64 %140)
  br label %183

141:                                              ; preds = %112, %108, %105
  %142 = load i64, i64* %4, align 8
  %143 = load i64, i64* @channelColumns, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %179

145:                                              ; preds = %141
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* @channelTracks, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %179

149:                                              ; preds = %145
  %150 = load i64*, i64** @BOT, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* %3, align 8
  %156 = load i64, i64* @channelTracks, align 8
  %157 = add i64 %156, 1
  %158 = load i64, i64* %2, align 8
  %159 = load i64, i64* %4, align 8
  %160 = add i64 %159, 1
  %161 = load i64, i64* @channelColumns, align 8
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 1
  %164 = load i64, i64* @channelTracks, align 8
  %165 = call i32 @Maze2Mech(i64 %153, i64 %154, i64 0, i64 %155, i64 %157, i64 %158, i64 %160, i64 %161, i32 1, i64 %163, i64 %164, i32 1)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %149
  %168 = load i8*, i8** @mazeRoute, align 8
  %169 = load i64, i64* %4, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8 0, i8* %170, align 1
  %171 = load i64*, i64** @TOP, align 8
  %172 = load i64, i64* %4, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  call void @CleanNet(i64 %174)
  %175 = load i64*, i64** @BOT, align 8
  %176 = load i64, i64* %4, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  call void @CleanNet(i64 %178)
  br label %182

179:                                              ; preds = %149, %145, %141
  %180 = load i32, i32* %1, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %1, align 4
  br label %182

182:                                              ; preds = %179, %167
  br label %183

183:                                              ; preds = %182, %129
  br label %184

184:                                              ; preds = %183, %93
  br label %185

185:                                              ; preds = %184, %57
  br label %186

186:                                              ; preds = %185, %9
  br label %187

187:                                              ; preds = %186
  %188 = load i64, i64* %4, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %4, align 8
  br label %5

190:                                              ; preds = %5
  %191 = load i32, i32* %1, align 4
  ret i32 %191
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Maze2Mech(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i32 %8, i64 %9, i64 %10, i32 %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store i64 %0, i64* %14, align 8
  store i64 %1, i64* %15, align 8
  store i64 %2, i64* %16, align 8
  store i64 %3, i64* %17, align 8
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i32 %8, i32* %22, align 4
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i32 %11, i32* %25, align 4
  %29 = load i32, i32* %22, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %21, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %21, align 8
  %33 = load i32, i32* %25, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %24, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %24, align 8
  %37 = load i64, i64* %23, align 8
  store i64 %37, i64* %26, align 8
  br label %38

38:                                               ; preds = %140, %12
  %39 = load i64, i64* %26, align 8
  %40 = load i64, i64* %24, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %145

42:                                               ; preds = %38
  store i32 1, i32* %28, align 4
  %43 = load i64, i64* %20, align 8
  store i64 %43, i64* %27, align 8
  br label %44

44:                                               ; preds = %134, %42
  %45 = load i32, i32* %28, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %27, align 8
  %49 = load i64, i64* %21, align 8
  %50 = icmp ne i64 %48, %49
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %139

53:                                               ; preds = %51
  %54 = load i8*, i8** @horzPlane, align 8
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* %26, align 8
  %57 = load i64, i64* %27, align 8
  %58 = load i64, i64* %26, align 8
  %59 = call i32 @SegmentFree(i8* %54, i64 %55, i64 %56, i64 %57, i64 %58)
  store i32 %59, i32* %28, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %133

61:                                               ; preds = %53
  %62 = load i8*, i8** @vertPlane, align 8
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %17, align 8
  %67 = call i32 @SegmentFree(i8* %62, i64 %63, i64 %64, i64 %65, i64 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %133

69:                                               ; preds = %61
  %70 = load i8*, i8** @vertPlane, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load i64, i64* %26, align 8
  %75 = call i32 @SegmentFree(i8* %70, i64 %71, i64 %72, i64 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %133

77:                                               ; preds = %69
  %78 = load i8*, i8** @vertPlane, align 8
  %79 = load i64, i64* %27, align 8
  %80 = load i64, i64* %26, align 8
  %81 = load i64, i64* %27, align 8
  %82 = load i64, i64* %19, align 8
  %83 = sub i64 %82, 1
  %84 = call i32 @SegmentFree(i8* %78, i64 %79, i64 %80, i64 %81, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %133

86:                                               ; preds = %77
  %87 = load i64, i64* %27, align 8
  %88 = call i32 @HasVCV(i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %133, label %90

90:                                               ; preds = %86
  %91 = load i64, i64* %14, align 8
  %92 = load i8*, i8** @horzPlane, align 8
  %93 = load i64, i64* %27, align 8
  %94 = load i64, i64* %19, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i64, i64* %19, align 8
  %97 = call i32 @ExtendOK(i64 %91, i8* %92, i64 %93, i64 %94, i64 %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %90
  %100 = load i8*, i8** @vertPlane, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %17, align 8
  call void @DrawSegment(i8* %100, i64 %101, i64 %102, i64 %103, i64 %104)
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* %17, align 8
  call void @DrawVia(i64 %105, i64 %106)
  %107 = load i8*, i8** @vertPlane, align 8
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* %15, align 8
  %111 = load i64, i64* %26, align 8
  call void @DrawSegment(i8* %107, i64 %108, i64 %109, i64 %110, i64 %111)
  %112 = load i64, i64* %15, align 8
  %113 = load i64, i64* %26, align 8
  call void @DrawVia(i64 %112, i64 %113)
  %114 = load i8*, i8** @horzPlane, align 8
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* %26, align 8
  %117 = load i64, i64* %27, align 8
  %118 = load i64, i64* %26, align 8
  call void @DrawSegment(i8* %114, i64 %115, i64 %116, i64 %117, i64 %118)
  %119 = load i64, i64* %27, align 8
  %120 = load i64, i64* %26, align 8
  call void @DrawVia(i64 %119, i64 %120)
  %121 = load i8*, i8** @vertPlane, align 8
  %122 = load i64, i64* %27, align 8
  %123 = load i64, i64* %26, align 8
  %124 = load i64, i64* %27, align 8
  %125 = load i64, i64* %19, align 8
  call void @DrawSegment(i8* %121, i64 %122, i64 %123, i64 %124, i64 %125)
  %126 = load i64, i64* %27, align 8
  %127 = load i64, i64* %19, align 8
  call void @DrawVia(i64 %126, i64 %127)
  %128 = load i8*, i8** @horzPlane, align 8
  %129 = load i64, i64* %27, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %15, align 8
  %132 = load i64, i64* %19, align 8
  call void @DrawSegment(i8* %128, i64 %129, i64 %130, i64 %131, i64 %132)
  store i32 1, i32* %13, align 4
  br label %146

133:                                              ; preds = %90, %86, %77, %69, %61, %53
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %22, align 4
  %136 = sext i32 %135 to i64
  %137 = load i64, i64* %27, align 8
  %138 = add i64 %137, %136
  store i64 %138, i64* %27, align 8
  br label %44

139:                                              ; preds = %51
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %25, align 4
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %26, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %26, align 8
  br label %38

145:                                              ; preds = %38
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %145, %99
  %147 = load i32, i32* %13, align 4
  ret i32 %147
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FindFreeHorzSeg(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %9, align 8
  br label %11

11:                                               ; preds = %26, %4
  %12 = load i64, i64* %9, align 8
  %13 = icmp uge i64 %12, 1
  br i1 %13, label %14, label %29

14:                                               ; preds = %11
  %15 = load i8*, i8** @horzPlane, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @channelColumns, align 8
  %18 = mul i64 %16, %17
  %19 = load i64, i64* %9, align 8
  %20 = add i64 %18, %19
  %21 = getelementptr inbounds i8, i8* %15, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %29

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %9, align 8
  %28 = add i64 %27, -1
  store i64 %28, i64* %9, align 8
  br label %11

29:                                               ; preds = %24, %11
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  %32 = load i64*, i64** %7, align 8
  store i64 %31, i64* %32, align 8
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %50, %29
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @channelColumns, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i8*, i8** @horzPlane, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @channelColumns, align 8
  %42 = mul i64 %40, %41
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %42, %43
  %45 = getelementptr inbounds i8, i8* %39, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %9, align 8
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i64, i64* %9, align 8
  %55 = sub i64 %54, 1
  %56 = load i64*, i64** %8, align 8
  store i64 %55, i64* %56, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Maze3() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  store i64 1, i64* %4, align 8
  br label %5

5:                                                ; preds = %68, %0
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @channelColumns, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %71

9:                                                ; preds = %5
  %10 = load i8*, i8** @mazeRoute, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %9
  %16 = load i64*, i64** @netsAssign, align 8
  %17 = load i64*, i64** @TOP, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %3, align 8
  %23 = load i64*, i64** @netsAssign, align 8
  %24 = load i64*, i64** @BOT, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %23, i64 %27
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = load i64, i64* %2, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %15
  br label %35

34:                                               ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.49, i64 0, i64 0), i32 1005, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__PRETTY_FUNCTION__.Maze3, i64 0, i64 0)) #6
  unreachable

35:                                               ; preds = %33
  %36 = load i64*, i64** @TOP, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** @BOT, align 8
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @channelTracks, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %2, align 8
  %49 = call i32 @Maze3Mech(i64 %39, i64 %43, i64 %44, i64 0, i64 %45, i64 %47, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %35
  %52 = load i8*, i8** @mazeRoute, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i64*, i64** @TOP, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  call void @CleanNet(i64 %58)
  %59 = load i64*, i64** @BOT, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  call void @CleanNet(i64 %62)
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %1, align 4
  br label %66

66:                                               ; preds = %63, %51
  br label %67

67:                                               ; preds = %66, %9
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %5

71:                                               ; preds = %5
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @Maze3Mech(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %16, align 8
  br label %26

26:                                               ; preds = %222, %7
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %13, align 8
  %29 = sub i64 %28, 1
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %225

31:                                               ; preds = %26
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %16, align 8
  call void @FindFreeHorzSeg(i64 %32, i64 %33, i64* %20, i64* %21)
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* %20, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %222

38:                                               ; preds = %31
  %39 = load i64, i64* %16, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %18, align 8
  br label %41

41:                                               ; preds = %218, %38
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %221

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* %18, align 8
  call void @FindFreeHorzSeg(i64 %46, i64 %47, i64* %22, i64* %23)
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* %22, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %218

52:                                               ; preds = %45
  %53 = load i64, i64* %20, align 8
  store i64 %53, i64* %17, align 8
  br label %54

54:                                               ; preds = %214, %52
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %21, align 8
  %57 = icmp ule i64 %55, %56
  br i1 %57, label %58, label %217

58:                                               ; preds = %54
  %59 = load i64, i64* %22, align 8
  store i64 %59, i64* %19, align 8
  br label %60

60:                                               ; preds = %210, %58
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %23, align 8
  %63 = icmp ule i64 %61, %62
  br i1 %63, label %64, label %213

64:                                               ; preds = %60
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %11, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %209

68:                                               ; preds = %64
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %11, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %209

72:                                               ; preds = %68
  %73 = load i64, i64* %16, align 8
  %74 = load i64, i64* %18, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %209

76:                                               ; preds = %72
  %77 = load i64, i64* %17, align 8
  %78 = load i64, i64* %19, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %209

80:                                               ; preds = %76
  %81 = load i8*, i8** @vertPlane, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %16, align 8
  %86 = call i32 @SegmentFree(i8* %81, i64 %82, i64 %83, i64 %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %209

88:                                               ; preds = %80
  %89 = load i8*, i8** @horzPlane, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i64, i64* %17, align 8
  %93 = load i64, i64* %16, align 8
  %94 = call i32 @SegmentFree(i8* %89, i64 %90, i64 %91, i64 %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %209

96:                                               ; preds = %88
  %97 = load i8*, i8** @vertPlane, align 8
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* %16, align 8
  %100 = load i64, i64* %17, align 8
  %101 = load i64, i64* %13, align 8
  %102 = add i64 %101, 1
  %103 = call i32 @SegmentFree(i8* %97, i64 %98, i64 %99, i64 %100, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %209

105:                                              ; preds = %96
  %106 = load i64, i64* %17, align 8
  %107 = call i32 @HasVCV(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %209, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %9, align 8
  %111 = load i8*, i8** @horzPlane, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* %13, align 8
  %116 = call i32 @ExtendOK(i64 %110, i8* %111, i64 %112, i64 %113, i64 %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %209

118:                                              ; preds = %109
  %119 = load i8*, i8** @vertPlane, align 8
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %14, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i32 @SegmentFree(i8* %119, i64 %120, i64 %121, i64 %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %209

126:                                              ; preds = %118
  %127 = load i8*, i8** @horzPlane, align 8
  %128 = load i64, i64* %11, align 8
  %129 = load i64, i64* %18, align 8
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %18, align 8
  %132 = call i32 @SegmentFree(i8* %127, i64 %128, i64 %129, i64 %130, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %209

134:                                              ; preds = %126
  %135 = load i8*, i8** @vertPlane, align 8
  %136 = load i64, i64* %19, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* %15, align 8
  %140 = sub i64 %139, 1
  %141 = call i32 @SegmentFree(i8* %135, i64 %136, i64 %137, i64 %138, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %209

143:                                              ; preds = %134
  %144 = load i64, i64* %19, align 8
  %145 = call i32 @HasVCV(i64 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %209, label %147

147:                                              ; preds = %143
  %148 = load i64, i64* %10, align 8
  %149 = load i8*, i8** @horzPlane, align 8
  %150 = load i64, i64* %19, align 8
  %151 = load i64, i64* %15, align 8
  %152 = load i64, i64* %11, align 8
  %153 = load i64, i64* %15, align 8
  %154 = call i32 @ExtendOK(i64 %148, i8* %149, i64 %150, i64 %151, i64 %152, i64 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %209

156:                                              ; preds = %147
  %157 = load i8*, i8** @vertPlane, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %16, align 8
  call void @DrawSegment(i8* %157, i64 %158, i64 %159, i64 %160, i64 %161)
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %16, align 8
  call void @DrawVia(i64 %162, i64 %163)
  %164 = load i8*, i8** @horzPlane, align 8
  %165 = load i64, i64* %11, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %17, align 8
  %168 = load i64, i64* %16, align 8
  call void @DrawSegment(i8* %164, i64 %165, i64 %166, i64 %167, i64 %168)
  %169 = load i64, i64* %17, align 8
  %170 = load i64, i64* %16, align 8
  call void @DrawVia(i64 %169, i64 %170)
  %171 = load i8*, i8** @vertPlane, align 8
  %172 = load i64, i64* %17, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load i64, i64* %17, align 8
  %175 = load i64, i64* %13, align 8
  call void @DrawSegment(i8* %171, i64 %172, i64 %173, i64 %174, i64 %175)
  %176 = load i64, i64* %17, align 8
  %177 = load i64, i64* %13, align 8
  call void @DrawVia(i64 %176, i64 %177)
  %178 = load i8*, i8** @horzPlane, align 8
  %179 = load i64, i64* %17, align 8
  %180 = load i64, i64* %13, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* %13, align 8
  call void @DrawSegment(i8* %178, i64 %179, i64 %180, i64 %181, i64 %182)
  %183 = load i8*, i8** @vertPlane, align 8
  %184 = load i64, i64* %11, align 8
  %185 = load i64, i64* %14, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %18, align 8
  call void @DrawSegment(i8* %183, i64 %184, i64 %185, i64 %186, i64 %187)
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* %18, align 8
  call void @DrawVia(i64 %188, i64 %189)
  %190 = load i8*, i8** @horzPlane, align 8
  %191 = load i64, i64* %11, align 8
  %192 = load i64, i64* %18, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i64, i64* %18, align 8
  call void @DrawSegment(i8* %190, i64 %191, i64 %192, i64 %193, i64 %194)
  %195 = load i64, i64* %19, align 8
  %196 = load i64, i64* %18, align 8
  call void @DrawVia(i64 %195, i64 %196)
  %197 = load i8*, i8** @vertPlane, align 8
  %198 = load i64, i64* %19, align 8
  %199 = load i64, i64* %18, align 8
  %200 = load i64, i64* %19, align 8
  %201 = load i64, i64* %15, align 8
  call void @DrawSegment(i8* %197, i64 %198, i64 %199, i64 %200, i64 %201)
  %202 = load i64, i64* %19, align 8
  %203 = load i64, i64* %15, align 8
  call void @DrawVia(i64 %202, i64 %203)
  %204 = load i8*, i8** @horzPlane, align 8
  %205 = load i64, i64* %19, align 8
  %206 = load i64, i64* %15, align 8
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* %15, align 8
  call void @DrawSegment(i8* %204, i64 %205, i64 %206, i64 %207, i64 %208)
  store i32 1, i32* %8, align 4
  br label %226

209:                                              ; preds = %147, %143, %134, %126, %118, %109, %105, %96, %88, %80, %76, %72, %68, %64
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %19, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %19, align 8
  br label %60

213:                                              ; preds = %60
  br label %214

214:                                              ; preds = %213
  %215 = load i64, i64* %17, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %17, align 8
  br label %54

217:                                              ; preds = %54
  br label %218

218:                                              ; preds = %217, %51
  %219 = load i64, i64* %18, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %18, align 8
  br label %41

221:                                              ; preds = %41
  br label %222

222:                                              ; preds = %221, %37
  %223 = load i64, i64* %16, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %16, align 8
  br label %26

225:                                              ; preds = %26
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %225, %156
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Option(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 2
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.70, i64 0, i64 0))
  call void @exit(i32 1) #6
  unreachable

9:                                                ; preds = %2
  %10 = load i8**, i8*** %4, align 8
  %11 = getelementptr inbounds i8*, i8** %10, i64 1
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** @channelFile, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AllocVCG() #0 {
  %1 = load i64, i64* @channelNets, align 8
  %2 = add i64 %1, 1
  %3 = mul i64 %2, 64
  %4 = call noalias i8* @malloc(i64 %3) #5
  %5 = bitcast i8* %4 to %struct._nodeVCGType*
  store %struct._nodeVCGType* %5, %struct._nodeVCGType** @VCG, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = add i64 %6, 1
  %8 = load i64, i64* @channelNets, align 8
  %9 = add i64 %8, 1
  %10 = mul i64 %7, %9
  %11 = mul i64 %10, 32
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to %struct._constraintVCGType*
  store %struct._constraintVCGType* %13, %struct._constraintVCGType** @storageRootVCG, align 8
  %14 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageRootVCG, align 8
  store %struct._constraintVCGType* %14, %struct._constraintVCGType** @storageVCG, align 8
  %15 = load i64, i64* @channelNets, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* @channelNets, align 8
  %18 = add i64 %17, 1
  %19 = mul i64 %16, %18
  store i64 %19, i64* @storageLimitVCG, align 8
  %20 = load i64, i64* @channelNets, align 8
  %21 = add i64 %20, 1
  %22 = mul i64 %21, 8
  %23 = call noalias i8* @malloc(i64 %22) #5
  %24 = bitcast i8* %23 to i64*
  store i64* %24, i64** @SCC, align 8
  %25 = load i64, i64* @channelNets, align 8
  %26 = add i64 %25, 1
  %27 = mul i64 %26, 8
  %28 = call noalias i8* @malloc(i64 %27) #5
  %29 = bitcast i8* %28 to i64*
  store i64* %29, i64** @perSCC, align 8
  %30 = load i64, i64* @channelNets, align 8
  %31 = add i64 %30, 1
  %32 = load i64, i64* @channelNets, align 8
  %33 = add i64 %32, 1
  %34 = mul i64 %31, %33
  %35 = mul i64 %34, 8
  %36 = call noalias i8* @malloc(i64 %35) #5
  %37 = bitcast i8* %36 to %struct._constraintVCGType**
  store %struct._constraintVCGType** %37, %struct._constraintVCGType*** @removeVCG, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @FreeVCG() #0 {
  %1 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %2 = bitcast %struct._nodeVCGType* %1 to i8*
  call void @free(i8* %2) #5
  %3 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageRootVCG, align 8
  %4 = bitcast %struct._constraintVCGType* %3 to i8*
  call void @free(i8* %4) #5
  store i64 0, i64* @storageLimitVCG, align 8
  %5 = load i64*, i64** @SCC, align 8
  %6 = bitcast i64* %5 to i8*
  call void @free(i8* %6) #5
  %7 = load i64*, i64** @perSCC, align 8
  %8 = bitcast i64* %7 to i8*
  call void @free(i8* %8) #5
  %9 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %10 = bitcast %struct._constraintVCGType** %9 to i8*
  call void @free(i8* %10) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @BuildVCG() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @AllocVCG()
  store i64 1, i64* %2, align 8
  br label %6

6:                                                ; preds = %253, %0
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @channelNets, align 8
  %9 = icmp ule i64 %7, %8
  br i1 %9, label %10, label %256

10:                                               ; preds = %6
  store i64 0, i64* %3, align 8
  %11 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %12 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %13 = load i64, i64* %2, align 8
  %14 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %12, i64 %13
  %15 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %14, i32 0, i32 0
  store %struct._constraintVCGType* %11, %struct._constraintVCGType** %15, align 8
  store i64 1, i64* %1, align 8
  br label %16

16:                                               ; preds = %123, %10
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @channelColumns, align 8
  %19 = icmp ule i64 %17, %18
  br i1 %19, label %20, label %126

20:                                               ; preds = %16
  %21 = load i64*, i64** @TOP, align 8
  %22 = load i64, i64* %1, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %122

27:                                               ; preds = %20
  %28 = load i64*, i64** @BOT, align 8
  %29 = load i64, i64* %1, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %2, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %122

34:                                               ; preds = %27
  %35 = load i64*, i64** @BOT, align 8
  %36 = load i64, i64* %1, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %122

40:                                               ; preds = %34
  store i64 1, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* %3, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %47 = load i64, i64* %2, align 8
  %48 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %46, i64 %47
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %48, i32 0, i32 0
  %50 = load %struct._constraintVCGType*, %struct._constraintVCGType** %49, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %50, i64 %51
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** @BOT, align 8
  %56 = load i64, i64* %1, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %65

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %4, align 8
  br label %41

65:                                               ; preds = %60, %41
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %121

68:                                               ; preds = %65
  %69 = load i64, i64* @storageLimitVCG, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %73

72:                                               ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildVCG, i64 0, i64 0)) #6
  unreachable

73:                                               ; preds = %71
  %74 = load i64*, i64** @TOP, align 8
  %75 = load i64, i64* %1, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %79 = load i64, i64* %2, align 8
  %80 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %78, i64 %79
  %81 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %80, i32 0, i32 0
  %82 = load %struct._constraintVCGType*, %struct._constraintVCGType** %81, align 8
  %83 = load i64, i64* %3, align 8
  %84 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %82, i64 %83
  %85 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %84, i32 0, i32 0
  store i64 %77, i64* %85, align 8
  %86 = load i64*, i64** @BOT, align 8
  %87 = load i64, i64* %1, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %91 = load i64, i64* %2, align 8
  %92 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %90, i64 %91
  %93 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %92, i32 0, i32 0
  %94 = load %struct._constraintVCGType*, %struct._constraintVCGType** %93, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %94, i64 %95
  %97 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %96, i32 0, i32 1
  store i64 %89, i64* %97, align 8
  %98 = load i64, i64* %1, align 8
  %99 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %100 = load i64, i64* %2, align 8
  %101 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %99, i64 %100
  %102 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %101, i32 0, i32 0
  %103 = load %struct._constraintVCGType*, %struct._constraintVCGType** %102, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %103, i64 %104
  %106 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %105, i32 0, i32 2
  store i64 %98, i64* %106, align 8
  %107 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %108 = load i64, i64* %2, align 8
  %109 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %107, i64 %108
  %110 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %109, i32 0, i32 0
  %111 = load %struct._constraintVCGType*, %struct._constraintVCGType** %110, align 8
  %112 = load i64, i64* %3, align 8
  %113 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %111, i64 %112
  %114 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %116 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %115, i32 1
  store %struct._constraintVCGType* %116, %struct._constraintVCGType** @storageVCG, align 8
  %117 = load i64, i64* @storageLimitVCG, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* @storageLimitVCG, align 8
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %3, align 8
  br label %121

121:                                              ; preds = %73, %65
  br label %122

122:                                              ; preds = %121, %34, %27, %20
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %1, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %1, align 8
  br label %16

126:                                              ; preds = %16
  %127 = load i64, i64* %3, align 8
  %128 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %129 = load i64, i64* %2, align 8
  %130 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %128, i64 %129
  %131 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %130, i32 0, i32 1
  store i64 %127, i64* %131, align 8
  store i64 0, i64* %3, align 8
  %132 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %133 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %134 = load i64, i64* %2, align 8
  %135 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %133, i64 %134
  %136 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %135, i32 0, i32 4
  store %struct._constraintVCGType* %132, %struct._constraintVCGType** %136, align 8
  store i64 1, i64* %1, align 8
  br label %137

137:                                              ; preds = %244, %126
  %138 = load i64, i64* %1, align 8
  %139 = load i64, i64* @channelColumns, align 8
  %140 = icmp ule i64 %138, %139
  br i1 %140, label %141, label %247

141:                                              ; preds = %137
  %142 = load i64*, i64** @BOT, align 8
  %143 = load i64, i64* %1, align 8
  %144 = getelementptr inbounds i64, i64* %142, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %2, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %243

148:                                              ; preds = %141
  %149 = load i64*, i64** @TOP, align 8
  %150 = load i64, i64* %1, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %2, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %243

155:                                              ; preds = %148
  %156 = load i64*, i64** @TOP, align 8
  %157 = load i64, i64* %1, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %243

161:                                              ; preds = %155
  store i64 1, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %162

162:                                              ; preds = %183, %161
  %163 = load i64, i64* %4, align 8
  %164 = load i64, i64* %3, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %166, label %186

166:                                              ; preds = %162
  %167 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %168 = load i64, i64* %2, align 8
  %169 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %167, i64 %168
  %170 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %169, i32 0, i32 4
  %171 = load %struct._constraintVCGType*, %struct._constraintVCGType** %170, align 8
  %172 = load i64, i64* %4, align 8
  %173 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %171, i64 %172
  %174 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** @TOP, align 8
  %177 = load i64, i64* %1, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %166
  store i64 0, i64* %5, align 8
  br label %186

182:                                              ; preds = %166
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %4, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %4, align 8
  br label %162

186:                                              ; preds = %181, %162
  %187 = load i64, i64* %5, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %242

189:                                              ; preds = %186
  %190 = load i64, i64* @storageLimitVCG, align 8
  %191 = icmp ugt i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %194

193:                                              ; preds = %189
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 131, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.BuildVCG, i64 0, i64 0)) #6
  unreachable

194:                                              ; preds = %192
  %195 = load i64*, i64** @TOP, align 8
  %196 = load i64, i64* %1, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  %198 = load i64, i64* %197, align 8
  %199 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %200 = load i64, i64* %2, align 8
  %201 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %199, i64 %200
  %202 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %201, i32 0, i32 4
  %203 = load %struct._constraintVCGType*, %struct._constraintVCGType** %202, align 8
  %204 = load i64, i64* %3, align 8
  %205 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %203, i64 %204
  %206 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %205, i32 0, i32 0
  store i64 %198, i64* %206, align 8
  %207 = load i64*, i64** @BOT, align 8
  %208 = load i64, i64* %1, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %212 = load i64, i64* %2, align 8
  %213 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %211, i64 %212
  %214 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %213, i32 0, i32 4
  %215 = load %struct._constraintVCGType*, %struct._constraintVCGType** %214, align 8
  %216 = load i64, i64* %3, align 8
  %217 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %215, i64 %216
  %218 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %217, i32 0, i32 1
  store i64 %210, i64* %218, align 8
  %219 = load i64, i64* %1, align 8
  %220 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %221 = load i64, i64* %2, align 8
  %222 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %220, i64 %221
  %223 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %222, i32 0, i32 4
  %224 = load %struct._constraintVCGType*, %struct._constraintVCGType** %223, align 8
  %225 = load i64, i64* %3, align 8
  %226 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %224, i64 %225
  %227 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %226, i32 0, i32 2
  store i64 %219, i64* %227, align 8
  %228 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %229 = load i64, i64* %2, align 8
  %230 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %228, i64 %229
  %231 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %230, i32 0, i32 4
  %232 = load %struct._constraintVCGType*, %struct._constraintVCGType** %231, align 8
  %233 = load i64, i64* %3, align 8
  %234 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %232, i64 %233
  %235 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %234, i32 0, i32 3
  store i64 0, i64* %235, align 8
  %236 = load %struct._constraintVCGType*, %struct._constraintVCGType** @storageVCG, align 8
  %237 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %236, i32 1
  store %struct._constraintVCGType* %237, %struct._constraintVCGType** @storageVCG, align 8
  %238 = load i64, i64* @storageLimitVCG, align 8
  %239 = add i64 %238, -1
  store i64 %239, i64* @storageLimitVCG, align 8
  %240 = load i64, i64* %3, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %3, align 8
  br label %242

242:                                              ; preds = %194, %186
  br label %243

243:                                              ; preds = %242, %155, %148, %141
  br label %244

244:                                              ; preds = %243
  %245 = load i64, i64* %1, align 8
  %246 = add i64 %245, 1
  store i64 %246, i64* %1, align 8
  br label %137

247:                                              ; preds = %137
  %248 = load i64, i64* %3, align 8
  %249 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %250 = load i64, i64* %2, align 8
  %251 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %249, i64 %250
  %252 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %251, i32 0, i32 5
  store i64 %248, i64* %252, align 8
  br label %253

253:                                              ; preds = %247
  %254 = load i64, i64* %2, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %2, align 8
  br label %6

256:                                              ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DFSClearVCG(%struct._nodeVCGType* %0) #0 {
  %2 = alloca %struct._nodeVCGType*, align 8
  %3 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %4

4:                                                ; preds = %25, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @channelNets, align 8
  %7 = icmp ule i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %14
  %16 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i64 %18
  %20 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %21, i64 %22
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %3, align 8
  br label %4

28:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpVCG(%struct._nodeVCGType* %0) #0 {
  %2 = alloca %struct._nodeVCGType*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %2, align 8
  store i64 1, i64* %3, align 8
  br label %5

5:                                                ; preds = %114, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @channelNets, align 8
  %8 = icmp ule i64 %6, %7
  br i1 %8, label %9, label %117

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2.77, i64 0, i64 0), i64 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.78, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %13

13:                                               ; preds = %58, %9
  %14 = load i64, i64* %4, align 8
  %15 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i64 %16
  %18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %13
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i32 0, i32 0
  %26 = load %struct._constraintVCGType*, %struct._constraintVCGType** %25, align 8
  %27 = load i64, i64* %4, align 8
  %28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i64 %27
  %29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %21
  %33 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %34 = load i64, i64* %3, align 8
  %35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i64 %34
  %36 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i32 0, i32 0
  %37 = load %struct._constraintVCGType*, %struct._constraintVCGType** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i64 %38
  %40 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4.79, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.DumpVCG, i64 0, i64 0)) #6
  unreachable

46:                                               ; preds = %44
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 0
  %51 = load %struct._constraintVCGType*, %struct._constraintVCGType** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i64 %52
  %54 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.80, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %46, %21
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %13

61:                                               ; preds = %13
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.81, i64 0, i64 0))
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7.82, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %64

64:                                               ; preds = %109, %61
  %65 = load i64, i64* %4, align 8
  %66 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %66, i64 %67
  %69 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ult i64 %65, %70
  br i1 %71, label %72, label %112

72:                                               ; preds = %64
  %73 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %73, i64 %74
  %76 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %75, i32 0, i32 4
  %77 = load %struct._constraintVCGType*, %struct._constraintVCGType** %76, align 8
  %78 = load i64, i64* %4, align 8
  %79 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %77, i64 %78
  %80 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %108, label %83

83:                                               ; preds = %72
  %84 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %84, i64 %85
  %87 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %86, i32 0, i32 4
  %88 = load %struct._constraintVCGType*, %struct._constraintVCGType** %87, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %88, i64 %89
  %91 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %3, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  br label %97

96:                                               ; preds = %83
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8.83, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__.DumpVCG, i64 0, i64 0)) #6
  unreachable

97:                                               ; preds = %95
  %98 = load %struct._nodeVCGType*, %struct._nodeVCGType** %2, align 8
  %99 = load i64, i64* %3, align 8
  %100 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %98, i64 %99
  %101 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %100, i32 0, i32 4
  %102 = load %struct._constraintVCGType*, %struct._constraintVCGType** %101, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %102, i64 %103
  %105 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.80, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %97, %72
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %4, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %4, align 8
  br label %64

112:                                              ; preds = %64
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.84, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %3, align 8
  br label %5

117:                                              ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DFSAboveVCG(%struct._nodeVCGType* %0, i64 %1) #0 {
  %3 = alloca %struct._nodeVCGType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %7, i64 %8
  %10 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i32 0, i32 3
  store i64 1, i64* %10, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %14
  %16 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %11
  %20 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %20, i64 %21
  %23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i32 0, i32 0
  %24 = load %struct._constraintVCGType*, %struct._constraintVCGType** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %24, i64 %25
  %27 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %19
  %31 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %31, i64 %32
  %34 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i32 0, i32 0
  %35 = load %struct._constraintVCGType*, %struct._constraintVCGType** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %35, i64 %36
  %38 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.DFSAboveVCG, i64 0, i64 0)) #6
  unreachable

44:                                               ; preds = %42
  %45 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %45, i64 %46
  %48 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i32 0, i32 0
  %49 = load %struct._constraintVCGType*, %struct._constraintVCGType** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %49, i64 %50
  %52 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  %54 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %54, i64 %55
  %57 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %62 = load i64, i64* %6, align 8
  call void @DFSAboveVCG(%struct._nodeVCGType* %61, i64 %62)
  br label %63

63:                                               ; preds = %60, %44
  br label %64

64:                                               ; preds = %63, %19
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %11

68:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DFSBelowVCG(%struct._nodeVCGType* %0, i64 %1) #0 {
  %3 = alloca %struct._nodeVCGType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %7, i64 %8
  %10 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i32 0, i32 7
  store i64 1, i64* %10, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %65, %2
  %12 = load i64, i64* %5, align 8
  %13 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %13, i64 %14
  %16 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %12, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %11
  %20 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %20, i64 %21
  %23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i32 0, i32 4
  %24 = load %struct._constraintVCGType*, %struct._constraintVCGType** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %24, i64 %25
  %27 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %19
  %31 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %31, i64 %32
  %34 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i32 0, i32 4
  %35 = load %struct._constraintVCGType*, %struct._constraintVCGType** %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %35, i64 %36
  %38 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %44

43:                                               ; preds = %30
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11.86, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 216, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.DFSBelowVCG, i64 0, i64 0)) #6
  unreachable

44:                                               ; preds = %42
  %45 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %45, i64 %46
  %48 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i32 0, i32 4
  %49 = load %struct._constraintVCGType*, %struct._constraintVCGType** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %49, i64 %50
  %52 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  %54 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %54, i64 %55
  %57 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i32 0, i32 7
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %44
  %61 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %62 = load i64, i64* %6, align 8
  call void @DFSBelowVCG(%struct._nodeVCGType* %61, i64 %62)
  br label %63

63:                                               ; preds = %60, %44
  br label %64

64:                                               ; preds = %63, %19
  br label %65

65:                                               ; preds = %64
  %66 = load i64, i64* %5, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %5, align 8
  br label %11

68:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SCCofVCG(%struct._nodeVCGType* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %7, align 8
  br label %15

15:                                               ; preds = %30, %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @channelNets, align 8
  %18 = icmp ule i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %20, i64 %21
  %23 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %28 = load i64, i64* %7, align 8
  call void @SCC_DFSAboveVCG(%struct._nodeVCGType* %27, i64 %28, i64* %10)
  br label %29

29:                                               ; preds = %26, %19
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %15

33:                                               ; preds = %15
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %85, %33
  store i64 1, i64* %14, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 1, i64* %7, align 8
  br label %35

35:                                               ; preds = %72, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @channelNets, align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %75

39:                                               ; preds = %35
  %40 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %40, i64 %41
  %43 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %39
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %55

54:                                               ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12.87, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 264, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.SCCofVCG, i64 0, i64 0)) #6
  unreachable

55:                                               ; preds = %53
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i64 %57
  %59 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp ugt i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load i64, i64* %7, align 8
  store i64 %64, i64* %12, align 8
  %65 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %65, i64 %66
  %68 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %70

70:                                               ; preds = %63, %55
  br label %71

71:                                               ; preds = %70, %39
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %7, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %7, align 8
  br label %35

75:                                               ; preds = %35
  %76 = load i64, i64* %14, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %75
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  %81 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i64, i64* %11, align 8
  call void @SCC_DFSBelowVCG(%struct._nodeVCGType* %81, i64 %82, i64 %83)
  br label %84

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %14, align 8
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br i1 %88, label %34, label %89

89:                                               ; preds = %85
  store i64 0, i64* @totalSCC, align 8
  store i64 1, i64* %7, align 8
  br label %90

90:                                               ; preds = %115, %89
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @channelNets, align 8
  %93 = icmp ule i64 %91, %92
  br i1 %93, label %94, label %118

94:                                               ; preds = %90
  %95 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %95, i64 %96
  %98 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  store i64 %99, i64* %102, align 8
  %103 = load i64*, i64** %5, align 8
  %104 = load i64, i64* %7, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @totalSCC, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %94
  %110 = load i64*, i64** %5, align 8
  %111 = load i64, i64* %7, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* @totalSCC, align 8
  br label %114

114:                                              ; preds = %109, %94
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %7, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %7, align 8
  br label %90

118:                                              ; preds = %90
  %119 = load i64, i64* @totalSCC, align 8
  %120 = icmp ugt i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %118
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13.88, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__PRETTY_FUNCTION__.SCCofVCG, i64 0, i64 0)) #6
  unreachable

123:                                              ; preds = %121
  store i64 1, i64* %8, align 8
  br label %124

124:                                              ; preds = %152, %123
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @totalSCC, align 8
  %127 = icmp ule i64 %125, %126
  br i1 %127, label %128, label %155

128:                                              ; preds = %124
  store i64 0, i64* %9, align 8
  store i64 1, i64* %7, align 8
  br label %129

129:                                              ; preds = %144, %128
  %130 = load i64, i64* %7, align 8
  %131 = load i64, i64* @channelNets, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %7, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %8, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i64, i64* %9, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %9, align 8
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %129

147:                                              ; preds = %129
  %148 = load i64, i64* %9, align 8
  %149 = load i64*, i64** %6, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i64, i64* %149, i64 %150
  store i64 %148, i64* %151, align 8
  br label %152

152:                                              ; preds = %147
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %8, align 8
  br label %124

155:                                              ; preds = %124
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SCC_DFSAboveVCG(%struct._nodeVCGType* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i32 0, i32 3
  store i64 1, i64* %12, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %68, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i64 %16
  %18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %13
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i32 0, i32 0
  %26 = load %struct._constraintVCGType*, %struct._constraintVCGType** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i64 %27
  %29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %21
  %33 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i64 %34
  %36 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i32 0, i32 0
  %37 = load %struct._constraintVCGType*, %struct._constraintVCGType** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i64 %38
  %40 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__PRETTY_FUNCTION__.SCC_DFSAboveVCG, i64 0, i64 0)) #6
  unreachable

46:                                               ; preds = %44
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 0
  %51 = load %struct._constraintVCGType*, %struct._constraintVCGType** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i64 %52
  %54 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i64 %57
  %59 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %46
  %63 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64*, i64** %6, align 8
  call void @SCC_DFSAboveVCG(%struct._nodeVCGType* %63, i64 %64, i64* %65)
  br label %66

66:                                               ; preds = %62, %46
  br label %67

67:                                               ; preds = %66, %21
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %13

71:                                               ; preds = %13
  %72 = load i64*, i64** %6, align 8
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load i64*, i64** %6, align 8
  %76 = load i64, i64* %75, align 8
  %77 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %77, i64 %78
  %80 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %79, i32 0, i32 2
  store i64 %76, i64* %80, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @SCC_DFSBelowVCG(%struct._nodeVCGType* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i32 0, i32 7
  store i64 1, i64* %12, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %68, %3
  %14 = load i64, i64* %7, align 8
  %15 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i64 %16
  %18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %13
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i32 0, i32 4
  %26 = load %struct._constraintVCGType*, %struct._constraintVCGType** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i64 %27
  %29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %21
  %33 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i64 %34
  %36 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i32 0, i32 4
  %37 = load %struct._constraintVCGType*, %struct._constraintVCGType** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i64 %38
  %40 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11.86, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 338, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__PRETTY_FUNCTION__.SCC_DFSBelowVCG, i64 0, i64 0)) #6
  unreachable

46:                                               ; preds = %44
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 4
  %51 = load %struct._constraintVCGType*, %struct._constraintVCGType** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i64 %52
  %54 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i64 %57
  %59 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %46
  %63 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %6, align 8
  call void @SCC_DFSBelowVCG(%struct._nodeVCGType* %63, i64 %64, i64 %65)
  br label %66

66:                                               ; preds = %62, %46
  br label %67

67:                                               ; preds = %66, %21
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %13

71:                                               ; preds = %13
  %72 = load i64, i64* %6, align 8
  %73 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %73, i64 %74
  %76 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %75, i32 0, i32 6
  store i64 %72, i64* %76, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @DumpSCC(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 1, i64* %6, align 8
  br label %7

7:                                                ; preds = %39, %2
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @totalSCC, align 8
  %10 = icmp ule i64 %8, %9
  br i1 %10, label %11, label %42

11:                                               ; preds = %7
  %12 = load i64, i64* %6, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14.89, i64 0, i64 0), i64 %12)
  store i64 1, i64* %5, align 8
  br label %14

14:                                               ; preds = %29, %11
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @channelNets, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load i64*, i64** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i64, i64* %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5.80, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %14

32:                                               ; preds = %14
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15.90, i64 0, i64 0), i64 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.81, i64 0, i64 0))
  br label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %7

42:                                               ; preds = %7
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6.81, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @AcyclicVCG() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 1, i64* %3, align 8
  br label %11

11:                                               ; preds = %58, %0
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @channelNets, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %33, %15
  %17 = load i64, i64* %7, align 8
  %18 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %18, i64 %19
  %21 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %17, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %25, i64 %26
  %28 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %27, i32 0, i32 0
  %29 = load %struct._constraintVCGType*, %struct._constraintVCGType** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %29, i64 %30
  %32 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %16

36:                                               ; preds = %16
  store i64 0, i64* %7, align 8
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i64, i64* %7, align 8
  %39 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %39, i64 %40
  %42 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %38, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %37
  %46 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %47 = load i64, i64* %3, align 8
  %48 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %46, i64 %47
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %48, i32 0, i32 4
  %50 = load %struct._constraintVCGType*, %struct._constraintVCGType** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %50, i64 %51
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %45
  %55 = load i64, i64* %7, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %7, align 8
  br label %37

57:                                               ; preds = %37
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %3, align 8
  br label %11

61:                                               ; preds = %11
  store i64 1, i64* %10, align 8
  store i64 0, i64* @removeTotalVCG, align 8
  br label %62

62:                                               ; preds = %91, %61
  store i64 1, i64* %1, align 8
  %63 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %63)
  %64 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %65 = load i64*, i64** @SCC, align 8
  %66 = load i64*, i64** @perSCC, align 8
  call void @SCCofVCG(%struct._nodeVCGType* %64, i64* %65, i64* %66)
  store i64 1, i64* %2, align 8
  br label %67

67:                                               ; preds = %79, %62
  %68 = load i64, i64* %2, align 8
  %69 = load i64, i64* @totalSCC, align 8
  %70 = icmp ule i64 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i64*, i64** @perSCC, align 8
  %73 = load i64, i64* %2, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = icmp ugt i64 %75, 1
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i64 0, i64* %10, align 8
  store i64 0, i64* %1, align 8
  br label %82

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %2, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %2, align 8
  br label %67

82:                                               ; preds = %77, %67
  %83 = load i64, i64* %1, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %82
  %86 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %87 = load i64*, i64** @SCC, align 8
  %88 = load i64*, i64** @perSCC, align 8
  %89 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  call void @RemoveConstraintVCG(%struct._nodeVCGType* %86, i64* %87, i64* %88, %struct._constraintVCGType** %89)
  br label %90

90:                                               ; preds = %85, %82
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %1, align 8
  %93 = icmp ne i64 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %62, label %95

95:                                               ; preds = %91
  %96 = load i64, i64* @removeTotalVCG, align 8
  store i64 %96, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %97

97:                                               ; preds = %277, %95
  %98 = load i64, i64* %6, align 8
  %99 = load i64, i64* @removeTotalVCG, align 8
  %100 = icmp ult i64 %98, %99
  br i1 %100, label %101, label %280

101:                                              ; preds = %97
  %102 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %103 = load i64, i64* %6, align 8
  %104 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %102, i64 %103
  %105 = load %struct._constraintVCGType*, %struct._constraintVCGType** %104, align 8
  %106 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %4, align 8
  %108 = load %struct._constraintVCGType**, %struct._constraintVCGType*** @removeVCG, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %108, i64 %109
  %111 = load %struct._constraintVCGType*, %struct._constraintVCGType** %110, align 8
  %112 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %5, align 8
  store i64 0, i64* %7, align 8
  br label %114

114:                                              ; preds = %144, %101
  %115 = load i64, i64* %7, align 8
  %116 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %117 = load i64, i64* %4, align 8
  %118 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %116, i64 %117
  %119 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ult i64 %115, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %114
  %123 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %124 = load i64, i64* %4, align 8
  %125 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %123, i64 %124
  %126 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %125, i32 0, i32 0
  %127 = load %struct._constraintVCGType*, %struct._constraintVCGType** %126, align 8
  %128 = load i64, i64* %7, align 8
  %129 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %127, i64 %128
  %130 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %5, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %122
  %135 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %136 = load i64, i64* %4, align 8
  %137 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %135, i64 %136
  %138 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %137, i32 0, i32 0
  %139 = load %struct._constraintVCGType*, %struct._constraintVCGType** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %139, i64 %140
  %142 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  br label %147

143:                                              ; preds = %122
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %7, align 8
  br label %114

147:                                              ; preds = %134, %114
  store i64 0, i64* %7, align 8
  br label %148

148:                                              ; preds = %178, %147
  %149 = load i64, i64* %7, align 8
  %150 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %151 = load i64, i64* %5, align 8
  %152 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %150, i64 %151
  %153 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %149, %154
  br i1 %155, label %156, label %181

156:                                              ; preds = %148
  %157 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %158 = load i64, i64* %5, align 8
  %159 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %157, i64 %158
  %160 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %159, i32 0, i32 4
  %161 = load %struct._constraintVCGType*, %struct._constraintVCGType** %160, align 8
  %162 = load i64, i64* %7, align 8
  %163 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %161, i64 %162
  %164 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %4, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %177

168:                                              ; preds = %156
  %169 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %170 = load i64, i64* %5, align 8
  %171 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %169, i64 %170
  %172 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %171, i32 0, i32 4
  %173 = load %struct._constraintVCGType*, %struct._constraintVCGType** %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %173, i64 %174
  %176 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %175, i32 0, i32 3
  store i64 0, i64* %176, align 8
  br label %181

177:                                              ; preds = %156
  br label %178

178:                                              ; preds = %177
  %179 = load i64, i64* %7, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %7, align 8
  br label %148

181:                                              ; preds = %168, %148
  store i64 0, i64* %9, align 8
  %182 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %182)
  %183 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %184 = load i64*, i64** @SCC, align 8
  %185 = load i64*, i64** @perSCC, align 8
  call void @SCCofVCG(%struct._nodeVCGType* %183, i64* %184, i64* %185)
  store i64 1, i64* %2, align 8
  br label %186

186:                                              ; preds = %198, %181
  %187 = load i64, i64* %2, align 8
  %188 = load i64, i64* @totalSCC, align 8
  %189 = icmp ule i64 %187, %188
  br i1 %189, label %190, label %201

190:                                              ; preds = %186
  %191 = load i64*, i64** @perSCC, align 8
  %192 = load i64, i64* %2, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = icmp ugt i64 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  store i64 1, i64* %9, align 8
  br label %201

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %2, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %2, align 8
  br label %186

201:                                              ; preds = %196, %186
  %202 = load i64, i64* %9, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %273

204:                                              ; preds = %201
  store i64 0, i64* %7, align 8
  br label %205

205:                                              ; preds = %235, %204
  %206 = load i64, i64* %7, align 8
  %207 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %208 = load i64, i64* %4, align 8
  %209 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %207, i64 %208
  %210 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = icmp ult i64 %206, %211
  br i1 %212, label %213, label %238

213:                                              ; preds = %205
  %214 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %215 = load i64, i64* %4, align 8
  %216 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %214, i64 %215
  %217 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %216, i32 0, i32 0
  %218 = load %struct._constraintVCGType*, %struct._constraintVCGType** %217, align 8
  %219 = load i64, i64* %7, align 8
  %220 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %218, i64 %219
  %221 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* %5, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %234

225:                                              ; preds = %213
  %226 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %227 = load i64, i64* %4, align 8
  %228 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %226, i64 %227
  %229 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %228, i32 0, i32 0
  %230 = load %struct._constraintVCGType*, %struct._constraintVCGType** %229, align 8
  %231 = load i64, i64* %7, align 8
  %232 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %230, i64 %231
  %233 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %232, i32 0, i32 3
  store i64 1, i64* %233, align 8
  br label %238

234:                                              ; preds = %213
  br label %235

235:                                              ; preds = %234
  %236 = load i64, i64* %7, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %7, align 8
  br label %205

238:                                              ; preds = %225, %205
  store i64 0, i64* %7, align 8
  br label %239

239:                                              ; preds = %269, %238
  %240 = load i64, i64* %7, align 8
  %241 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %242 = load i64, i64* %5, align 8
  %243 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %241, i64 %242
  %244 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = icmp ult i64 %240, %245
  br i1 %246, label %247, label %272

247:                                              ; preds = %239
  %248 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %249 = load i64, i64* %5, align 8
  %250 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %248, i64 %249
  %251 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %250, i32 0, i32 4
  %252 = load %struct._constraintVCGType*, %struct._constraintVCGType** %251, align 8
  %253 = load i64, i64* %7, align 8
  %254 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %252, i64 %253
  %255 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %4, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %268

259:                                              ; preds = %247
  %260 = load %struct._nodeVCGType*, %struct._nodeVCGType** @VCG, align 8
  %261 = load i64, i64* %5, align 8
  %262 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %260, i64 %261
  %263 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %262, i32 0, i32 4
  %264 = load %struct._constraintVCGType*, %struct._constraintVCGType** %263, align 8
  %265 = load i64, i64* %7, align 8
  %266 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %264, i64 %265
  %267 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %266, i32 0, i32 3
  store i64 1, i64* %267, align 8
  br label %272

268:                                              ; preds = %247
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %7, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %7, align 8
  br label %239

272:                                              ; preds = %259, %239
  br label %276

273:                                              ; preds = %201
  %274 = load i64, i64* %8, align 8
  %275 = add i64 %274, -1
  store i64 %275, i64* %8, align 8
  br label %276

276:                                              ; preds = %273, %272
  br label %277

277:                                              ; preds = %276
  %278 = load i64, i64* %6, align 8
  %279 = add i64 %278, 1
  store i64 %279, i64* %6, align 8
  br label %97

280:                                              ; preds = %97
  %281 = load i64, i64* %10, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16.93, i64 0, i64 0))
  br label %289

285:                                              ; preds = %280
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17.94, i64 0, i64 0))
  %287 = load i64, i64* %8, align 8
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18.95, i64 0, i64 0), i64 %287)
  br label %289

289:                                              ; preds = %285, %283
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @RemoveConstraintVCG(%struct._nodeVCGType* %0, i64* %1, i64* %2, %struct._constraintVCGType** %3) #0 {
  %5 = alloca %struct._nodeVCGType*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._constraintVCGType**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct._constraintVCGType*, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store %struct._constraintVCGType** %3, %struct._constraintVCGType*** %8, align 8
  store i64 1, i64* %9, align 8
  br label %18

18:                                               ; preds = %334, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @totalSCC, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %337

22:                                               ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %26, 1
  br i1 %27, label %28, label %333

28:                                               ; preds = %22
  store %struct._constraintVCGType* null, %struct._constraintVCGType** %17, align 8
  store i64 7, i64* %12, align 8
  store i64 1, i64* %10, align 8
  br label %29

29:                                               ; preds = %264, %28
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @channelNets, align 8
  %32 = icmp ule i64 %30, %31
  br i1 %32, label %33, label %267

33:                                               ; preds = %29
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %263

40:                                               ; preds = %33
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %259, %40
  %42 = load i64, i64* %11, align 8
  %43 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %43, i64 %44
  %46 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %42, %47
  br i1 %48, label %49, label %262

49:                                               ; preds = %41
  %50 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %50, i64 %51
  %53 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %52, i32 0, i32 0
  %54 = load %struct._constraintVCGType*, %struct._constraintVCGType** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %54, i64 %55
  %57 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %15, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %258

65:                                               ; preds = %49
  %66 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %66, i64 %67
  %69 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %68, i32 0, i32 0
  %70 = load %struct._constraintVCGType*, %struct._constraintVCGType** %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %70, i64 %71
  %73 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %258, label %76

76:                                               ; preds = %65
  %77 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %77, i64 %78
  %80 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %79, i32 0, i32 0
  %81 = load %struct._constraintVCGType*, %struct._constraintVCGType** %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %81, i64 %82
  %84 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %16, align 8
  store i64 0, i64* %13, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %88, label %127

88:                                               ; preds = %76
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 3
  store i64 %90, i64* %13, align 8
  %91 = load i64*, i64** @TOP, align 8
  %92 = load i64, i64* %16, align 8
  %93 = add i64 %92, 1
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %88
  %98 = load i64*, i64** @BOT, align 8
  %99 = load i64, i64* %16, align 8
  %100 = add i64 %99, 1
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load i64, i64* %13, align 8
  %106 = add i64 %105, 3
  store i64 %106, i64* %13, align 8
  br label %126

107:                                              ; preds = %97, %88
  %108 = load i64*, i64** @TOP, align 8
  %109 = load i64, i64* %16, align 8
  %110 = add i64 %109, 1
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = load i64*, i64** @BOT, align 8
  %116 = load i64, i64* %16, align 8
  %117 = add i64 %116, 1
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %114
  br label %125

122:                                              ; preds = %114, %107
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, 2
  store i64 %124, i64* %13, align 8
  br label %125

125:                                              ; preds = %122, %121
  br label %126

126:                                              ; preds = %125, %104
  br label %244

127:                                              ; preds = %76
  %128 = load i64, i64* %16, align 8
  %129 = load i64, i64* @channelColumns, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %170

131:                                              ; preds = %127
  %132 = load i64, i64* %13, align 8
  %133 = add i64 %132, 3
  store i64 %133, i64* %13, align 8
  %134 = load i64*, i64** @TOP, align 8
  %135 = load i64, i64* %16, align 8
  %136 = sub i64 %135, 1
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %131
  %141 = load i64*, i64** @BOT, align 8
  %142 = load i64, i64* %16, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140
  %148 = load i64, i64* %13, align 8
  %149 = add i64 %148, 3
  store i64 %149, i64* %13, align 8
  br label %169

150:                                              ; preds = %140, %131
  %151 = load i64*, i64** @TOP, align 8
  %152 = load i64, i64* %16, align 8
  %153 = sub i64 %152, 1
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %150
  %158 = load i64*, i64** @BOT, align 8
  %159 = load i64, i64* %16, align 8
  %160 = sub i64 %159, 1
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %168

165:                                              ; preds = %157, %150
  %166 = load i64, i64* %13, align 8
  %167 = add i64 %166, 2
  store i64 %167, i64* %13, align 8
  br label %168

168:                                              ; preds = %165, %164
  br label %169

169:                                              ; preds = %168, %147
  br label %243

170:                                              ; preds = %127
  %171 = load i64*, i64** @TOP, align 8
  %172 = load i64, i64* %16, align 8
  %173 = sub i64 %172, 1
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %187

177:                                              ; preds = %170
  %178 = load i64*, i64** @BOT, align 8
  %179 = load i64, i64* %16, align 8
  %180 = sub i64 %179, 1
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i64, i64* %13, align 8
  %186 = add i64 %185, 3
  store i64 %186, i64* %13, align 8
  br label %206

187:                                              ; preds = %177, %170
  %188 = load i64*, i64** @TOP, align 8
  %189 = load i64, i64* %16, align 8
  %190 = sub i64 %189, 1
  %191 = getelementptr inbounds i64, i64* %188, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %187
  %195 = load i64*, i64** @BOT, align 8
  %196 = load i64, i64* %16, align 8
  %197 = sub i64 %196, 1
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %194
  br label %205

202:                                              ; preds = %194, %187
  %203 = load i64, i64* %13, align 8
  %204 = add i64 %203, 2
  store i64 %204, i64* %13, align 8
  br label %205

205:                                              ; preds = %202, %201
  br label %206

206:                                              ; preds = %205, %184
  %207 = load i64*, i64** @TOP, align 8
  %208 = load i64, i64* %16, align 8
  %209 = add i64 %208, 1
  %210 = getelementptr inbounds i64, i64* %207, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %206
  %214 = load i64*, i64** @BOT, align 8
  %215 = load i64, i64* %16, align 8
  %216 = add i64 %215, 1
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i64, i64* %13, align 8
  %222 = add i64 %221, 3
  store i64 %222, i64* %13, align 8
  br label %242

223:                                              ; preds = %213, %206
  %224 = load i64*, i64** @TOP, align 8
  %225 = load i64, i64* %16, align 8
  %226 = add i64 %225, 1
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %223
  %231 = load i64*, i64** @BOT, align 8
  %232 = load i64, i64* %16, align 8
  %233 = add i64 %232, 1
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %230
  br label %241

238:                                              ; preds = %230, %223
  %239 = load i64, i64* %13, align 8
  %240 = add i64 %239, 2
  store i64 %240, i64* %13, align 8
  br label %241

241:                                              ; preds = %238, %237
  br label %242

242:                                              ; preds = %241, %220
  br label %243

243:                                              ; preds = %242, %169
  br label %244

244:                                              ; preds = %243, %126
  %245 = load i64, i64* %13, align 8
  %246 = load i64, i64* %12, align 8
  %247 = icmp ult i64 %245, %246
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i64, i64* %13, align 8
  store i64 %249, i64* %12, align 8
  %250 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %251 = load i64, i64* %10, align 8
  %252 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %250, i64 %251
  %253 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %252, i32 0, i32 0
  %254 = load %struct._constraintVCGType*, %struct._constraintVCGType** %253, align 8
  %255 = load i64, i64* %11, align 8
  %256 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %254, i64 %255
  store %struct._constraintVCGType* %256, %struct._constraintVCGType** %17, align 8
  br label %257

257:                                              ; preds = %248, %244
  br label %258

258:                                              ; preds = %257, %65, %49
  br label %259

259:                                              ; preds = %258
  %260 = load i64, i64* %11, align 8
  %261 = add i64 %260, 1
  store i64 %261, i64* %11, align 8
  br label %41

262:                                              ; preds = %41
  br label %263

263:                                              ; preds = %262, %33
  br label %264

264:                                              ; preds = %263
  %265 = load i64, i64* %10, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %10, align 8
  br label %29

267:                                              ; preds = %29
  %268 = load %struct._constraintVCGType*, %struct._constraintVCGType** %17, align 8
  %269 = icmp ne %struct._constraintVCGType* %268, null
  br i1 %269, label %270, label %271

270:                                              ; preds = %267
  br label %272

271:                                              ; preds = %267
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19.96, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 614, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__.RemoveConstraintVCG, i64 0, i64 0)) #6
  unreachable

272:                                              ; preds = %270
  %273 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %274 = call i32 @fflush(%struct._IO_FILE* %273)
  %275 = load i64, i64* @removeTotalVCG, align 8
  %276 = load i64, i64* @channelNets, align 8
  %277 = add i64 %276, 1
  %278 = load i64, i64* @channelNets, align 8
  %279 = add i64 %278, 1
  %280 = mul i64 %277, %279
  %281 = icmp ult i64 %275, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %272
  br label %284

283:                                              ; preds = %272
  call void @__assert_fail(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.20.97, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 616, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @__PRETTY_FUNCTION__.RemoveConstraintVCG, i64 0, i64 0)) #6
  unreachable

284:                                              ; preds = %282
  %285 = load %struct._constraintVCGType*, %struct._constraintVCGType** %17, align 8
  %286 = load %struct._constraintVCGType**, %struct._constraintVCGType*** %8, align 8
  %287 = load i64, i64* @removeTotalVCG, align 8
  %288 = getelementptr inbounds %struct._constraintVCGType*, %struct._constraintVCGType** %286, i64 %287
  store %struct._constraintVCGType* %285, %struct._constraintVCGType** %288, align 8
  %289 = load i64, i64* @removeTotalVCG, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* @removeTotalVCG, align 8
  %291 = load %struct._constraintVCGType*, %struct._constraintVCGType** %17, align 8
  %292 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %14, align 8
  %294 = load %struct._constraintVCGType*, %struct._constraintVCGType** %17, align 8
  %295 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %294, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %15, align 8
  %297 = load %struct._constraintVCGType*, %struct._constraintVCGType** %17, align 8
  %298 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %297, i32 0, i32 3
  store i64 1, i64* %298, align 8
  store i64 0, i64* %11, align 8
  br label %299

299:                                              ; preds = %329, %284
  %300 = load i64, i64* %11, align 8
  %301 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %302 = load i64, i64* %15, align 8
  %303 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %301, i64 %302
  %304 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %303, i32 0, i32 5
  %305 = load i64, i64* %304, align 8
  %306 = icmp ult i64 %300, %305
  br i1 %306, label %307, label %332

307:                                              ; preds = %299
  %308 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %309 = load i64, i64* %15, align 8
  %310 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %308, i64 %309
  %311 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %310, i32 0, i32 4
  %312 = load %struct._constraintVCGType*, %struct._constraintVCGType** %311, align 8
  %313 = load i64, i64* %11, align 8
  %314 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %312, i64 %313
  %315 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* %14, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %328

319:                                              ; preds = %307
  %320 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %321 = load i64, i64* %15, align 8
  %322 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %320, i64 %321
  %323 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %322, i32 0, i32 4
  %324 = load %struct._constraintVCGType*, %struct._constraintVCGType** %323, align 8
  %325 = load i64, i64* %11, align 8
  %326 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %324, i64 %325
  %327 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %326, i32 0, i32 3
  store i64 1, i64* %327, align 8
  br label %332

328:                                              ; preds = %307
  br label %329

329:                                              ; preds = %328
  %330 = load i64, i64* %11, align 8
  %331 = add i64 %330, 1
  store i64 %331, i64* %11, align 8
  br label %299

332:                                              ; preds = %319, %299
  br label %333

333:                                              ; preds = %332, %22
  br label %334

334:                                              ; preds = %333
  %335 = load i64, i64* %9, align 8
  %336 = add i64 %335, 1
  store i64 %336, i64* %9, align 8
  br label %18

337:                                              ; preds = %18
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @ExistPathAboveVCG(%struct._nodeVCGType* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct._nodeVCGType*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %7)
  %8 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %9 = load i64, i64* %5, align 8
  call void @DFSAboveVCG(%struct._nodeVCGType* %8, i64 %9)
  %10 = load %struct._nodeVCGType*, %struct._nodeVCGType** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %10, i64 %11
  %13 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  ret i64 %14
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @LongestPathVCG(%struct._nodeVCGType* %0, i64 %1) #0 {
  %3 = alloca %struct._nodeVCGType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %9)
  %10 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %10, i64 %11)
  %13 = sub i64 %12, 1
  store i64 %13, i64* @cardBotNotPref, align 8
  %14 = load i64, i64* @cardBotNotPref, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* @channelTracks, align 8
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %33, %2
  %17 = load i64, i64* %5, align 8
  %18 = icmp uge i64 %17, 1
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i64*, i64** @tracksBotNotPref, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 1, i64* %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, -1
  store i64 %27, i64* %6, align 8
  br label %32

28:                                               ; preds = %19
  %29 = load i64*, i64** @tracksBotNotPref, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %5, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %5, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  call void @DFSClearVCG(%struct._nodeVCGType* %37)
  %38 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %38, i64 %39)
  %41 = sub i64 %40, 1
  store i64 %41, i64* @cardTopNotPref, align 8
  %42 = load i64, i64* @cardTopNotPref, align 8
  store i64 %42, i64* %7, align 8
  store i64 1, i64* %5, align 8
  br label %43

43:                                               ; preds = %61, %36
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @channelTracks, align 8
  %46 = icmp ule i64 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i64*, i64** @tracksTopNotPref, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 1, i64* %53, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %7, align 8
  br label %60

56:                                               ; preds = %47
  %57 = load i64*, i64** @tracksTopNotPref, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 0, i64* %59, align 8
  br label %60

60:                                               ; preds = %56, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %5, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %5, align 8
  br label %43

64:                                               ; preds = %43
  store i64 0, i64* %8, align 8
  store i64 1, i64* %5, align 8
  br label %65

65:                                               ; preds = %92, %64
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @channelTracks, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = load i64*, i64** @tracksTopNotPref, align 8
  %71 = load i64, i64* %5, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i64*, i64** @tracksBotNotPref, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75, %69
  %82 = load i64*, i64** @tracksNotPref, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 1, i64* %84, align 8
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %8, align 8
  br label %91

87:                                               ; preds = %75
  %88 = load i64*, i64** @tracksNotPref, align 8
  %89 = load i64, i64* %5, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %87, %81
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %5, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %5, align 8
  br label %65

95:                                               ; preds = %65
  %96 = load i64, i64* %8, align 8
  store i64 %96, i64* @cardNotPref, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %0, i64 %1) #0 {
  %3 = alloca %struct._nodeVCGType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i32 0, i32 3
  store i64 1, i64* %12, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %74, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i64 %16
  %18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %13
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i32 0, i32 0
  %26 = load %struct._constraintVCGType*, %struct._constraintVCGType** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i64 %27
  %29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %21
  %33 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i64 %34
  %36 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i32 0, i32 0
  %37 = load %struct._constraintVCGType*, %struct._constraintVCGType** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i64 %38
  %40 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 727, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.DFSAboveLongestPathVCG, i64 0, i64 0)) #6
  unreachable

46:                                               ; preds = %44
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 0
  %51 = load %struct._constraintVCGType*, %struct._constraintVCGType** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i64 %52
  %54 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i64 %57
  %59 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %46
  %63 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @DFSAboveLongestPathVCG(%struct._nodeVCGType* %63, i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %21
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %13

77:                                               ; preds = %13
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  ret i64 %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %0, i64 %1) #0 {
  %3 = alloca %struct._nodeVCGType*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %9, i64 %10
  %12 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %11, i32 0, i32 7
  store i64 1, i64* %12, align 8
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %74, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %15, i64 %16
  %18 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %77

21:                                               ; preds = %13
  %22 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %22, i64 %23
  %25 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %24, i32 0, i32 4
  %26 = load %struct._constraintVCGType*, %struct._constraintVCGType** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %26, i64 %27
  %29 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %21
  %33 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %33, i64 %34
  %36 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %35, i32 0, i32 4
  %37 = load %struct._constraintVCGType*, %struct._constraintVCGType** %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %37, i64 %38
  %40 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %46

45:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11.86, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.76, i64 0, i64 0), i32 753, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @__PRETTY_FUNCTION__.DFSBelowLongestPathVCG, i64 0, i64 0)) #6
  unreachable

46:                                               ; preds = %44
  %47 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %47, i64 %48
  %50 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %49, i32 0, i32 4
  %51 = load %struct._constraintVCGType*, %struct._constraintVCGType** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %51, i64 %52
  %54 = getelementptr inbounds %struct._constraintVCGType, %struct._constraintVCGType* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %56, i64 %57
  %59 = getelementptr inbounds %struct._nodeVCGType, %struct._nodeVCGType* %58, i32 0, i32 7
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %46
  %63 = load %struct._nodeVCGType*, %struct._nodeVCGType** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i64 @DFSBelowLongestPathVCG(%struct._nodeVCGType* %63, i64 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ugt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  store i64 %70, i64* %8, align 8
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %46
  br label %73

73:                                               ; preds = %72, %21
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %5, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %5, align 8
  br label %13

77:                                               ; preds = %13
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  ret i64 %79
}

; Function Attrs: noinline nounwind uwtable
define dso_local i64 @VCV(%struct._nodeVCGType* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct._nodeVCGType*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct._nodeVCGType* %0, %struct._nodeVCGType** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %9, align 8
  br label %11

11:                                               ; preds = %74, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @channelNets, align 8
  %14 = icmp ule i64 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %11
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %73

21:                                               ; preds = %15
  %22 = load i64*, i64** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %29, i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i64, i64* %10, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %34, %28
  br label %72

38:                                               ; preds = %21
  %39 = load i64*, i64** %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %46, i64 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %51, %45
  br label %71

55:                                               ; preds = %38
  %56 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %56, i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct._nodeVCGType*, %struct._nodeVCGType** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @ExistPathAboveVCG(%struct._nodeVCGType* %62, i64 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %55
  %68 = load i64, i64* %10, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %67, %61
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %15
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %11

77:                                               ; preds = %11
  %78 = load i64, i64* %10, align 8
  ret i64 %78
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
