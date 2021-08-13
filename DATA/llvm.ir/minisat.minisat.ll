; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Solver = type { %class.vec, %class.vec.0, double, double, double, i32, double, double, double, i8, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, %class.vec.1, %class.vec.1, double, %class.vec.2, double, %class.vec.3, %class.vec.4, %class.vec.4, %class.vec.4, %class.vec.0, %class.vec.5, %class.vec.1, %class.vec.5, i32, i32, i64, %class.vec.0, %class.Heap, double, double, i8, %class.vec.4, %class.vec.0, %class.vec.0, %class.vec.0 }
%class.vec = type { %class.lbool*, i32, i32 }
%class.lbool = type { i8 }
%class.vec.2 = type { double*, i32, i32 }
%class.vec.3 = type { %class.vec.1*, i32, i32 }
%class.vec.1 = type { %class.Clause**, i32, i32 }
%class.Clause = type { i32, %union.anon, [0 x %class.Lit] }
%union.anon = type { float }
%class.Lit = type { i32 }
%class.vec.5 = type { i32*, i32, i32 }
%class.Heap = type { %"struct.Solver::VarOrderLt", %class.vec.5, %class.vec.5 }
%"struct.Solver::VarOrderLt" = type { %class.vec.2* }
%class.vec.4 = type { i8*, i32, i32 }
%class.vec.0 = type { %class.Lit*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6, %union.anon.6 }
%struct.timeval = type { i64, i64 }
%union.anon.6 = type { i64 }
%class.StreamBuffer = type { %struct._IO_FILE*, [1048576 x i8], i32, i32 }
%"struct.Solver::VarFilter" = type { %class.Solver* }

$_Z7toLbooli = comdat any

$_ZN5lboolC2Ei = comdat any

$_ZN3LitC2Eib = comdat any

$_ZN6Solver5solveEv = comdat any

$_ZNK6Solver5nVarsEv = comdat any

$_ZN3vecI5lboolEixEi = comdat any

$_ZNK5lboolneES_ = comdat any

$_ZNK5lbooleqES_ = comdat any

$_ZNK3vecIcE4sizeEv = comdat any

$_ZN3vecI3LitEC2Ev = comdat any

$_ZN3vecI3LitED2Ev = comdat any

$_ZN3vecI3LitE5clearEb = comdat any

$__clang_call_terminate = comdat any

$_ZN12StreamBufferC2EP8_IO_FILE = comdat any

$_ZN12StreamBufferdeEv = comdat any

$_Zco3Lit = comdat any

$_ZN3vecI3LitE4pushERKS0_ = comdat any

$_ZN3vecI3LitE4imaxEii = comdat any

$_ZN3LitC2Ev = comdat any

$_ZN12StreamBufferppEv = comdat any

$_ZN12StreamBuffer15assureLookaheadEv = comdat any

$_ZN3vecI5lboolEC2Ev = comdat any

$_ZN3vecIP6ClauseEC2Ev = comdat any

$_ZN3vecIdEC2Ev = comdat any

$_ZN3vecIS_IP6ClauseEEC2Ev = comdat any

$_ZN3vecIcEC2Ev = comdat any

$_ZN3vecIiEC2Ev = comdat any

$_ZN6Solver10VarOrderLtC2ERK3vecIdE = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEEC2ERKS1_ = comdat any

$_ZN3vecIcED2Ev = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEED2Ev = comdat any

$_ZN3vecIiED2Ev = comdat any

$_ZN3vecIP6ClauseED2Ev = comdat any

$_ZN3vecIS_IP6ClauseEED2Ev = comdat any

$_ZN3vecIdED2Ev = comdat any

$_ZN3vecI5lboolED2Ev = comdat any

$_ZN3vecI5lboolE5clearEb = comdat any

$_ZN3vecIdE5clearEb = comdat any

$_ZN3vecIS_IP6ClauseEE5clearEb = comdat any

$_ZN3vecIP6ClauseE5clearEb = comdat any

$_ZN3vecIiE5clearEb = comdat any

$_ZN3vecIcE5clearEb = comdat any

$_ZNK3vecIP6ClauseE4sizeEv = comdat any

$_ZN3vecIP6ClauseEixEi = comdat any

$_ZN3vecIS_IP6ClauseEE4pushEv = comdat any

$_ZN3vecIP6ClauseE4pushERKS1_ = comdat any

$_Z5toInt5lbool = comdat any

$_ZN3vecIcE4pushERKc = comdat any

$_ZN3vecIiE4pushERKi = comdat any

$_ZN3vecIdE4pushERKd = comdat any

$_ZN6Solver14insertVarOrderEi = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi = comdat any

$_ZN3vecIcEixEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE6insertEi = comdat any

$_ZN3vecIiE6growToEiRKi = comdat any

$_ZNK3vecIiE4sizeEv = comdat any

$_ZN3vecIiEixEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE6parentEi = comdat any

$_ZNK6Solver10VarOrderLtclEii = comdat any

$_ZNK3vecIdEixEi = comdat any

$_ZN3vecIiE4growEi = comdat any

$_ZNK3vecIiEixEi = comdat any

$_ZN3vecIdE4imaxEii = comdat any

$_ZN3vecIiE4imaxEii = comdat any

$_ZN3vecIcE4imaxEii = comdat any

$_ZNK5lbool5toIntEv = comdat any

$_ZN3vecIP6ClauseE4imaxEii = comdat any

$_ZN3vecIS_IP6ClauseEE4imaxEii = comdat any

$_ZNK6Solver13decisionLevelEv = comdat any

$_Z4sortI3LitEvR3vecIT_E = comdat any

$_ZNK3vecI3LitE4sizeEv = comdat any

$_ZN3vecI3LitEixEi = comdat any

$_ZNK6Solver5valueE3Lit = comdat any

$_ZNK3LiteqES_ = comdat any

$_ZNK3LitneES_ = comdat any

$_ZN3vecI3LitE6shrinkEi = comdat any

$_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b = comdat any

$_ZNK6Clause4sizeEv = comdat any

$_ZN6ClauseixEi = comdat any

$_Z5toInt3Lit = comdat any

$_ZN3vecIS_IP6ClauseEEixEi = comdat any

$_ZNK6Clause6learntEv = comdat any

$_ZN6ClauseC2I3vecI3LitEEERKT_b = comdat any

$_ZNK3vecI3LitEixEi = comdat any

$_ZN6Clause15calcAbstractionEv = comdat any

$_Z3var3Lit = comdat any

$_ZN3vecIP6ClauseEcvPS1_Ev = comdat any

$_ZN3vecIP6ClauseE6shrinkEi = comdat any

$_Z4sign3Lit = comdat any

$_ZN5lboolC2Eb = comdat any

$_ZNK3vecIcEixEi = comdat any

$_ZNK5lbooleoEb = comdat any

$_Z4sortI3Lit16LessThan_defaultIS0_EEvR3vecIT_ET0_ = comdat any

$_ZN3vecI3LitEcvPS0_Ev = comdat any

$_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_ = comdat any

$_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_ = comdat any

$_ZN16LessThan_defaultI3LitEclES0_S0_ = comdat any

$_ZNK3LitltES_ = comdat any

$_ZN3vecIP6ClauseE3popEv = comdat any

$_ZNK6ClauseixEi = comdat any

$_ZN3vecIiE6shrinkEi = comdat any

$_ZN6Solver5drandERd = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEE5emptyEv = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEE4sizeEv = comdat any

$_ZN6Solver5irandERdi = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEEixEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv = comdat any

$_ZN3vecIiE4lastEv = comdat any

$_ZN3vecIiE3popEv = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE4leftEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE5rightEi = comdat any

$_ZN3vecI3LitE4pushEv = comdat any

$_ZN6Solver15claBumpActivityER6Clause = comdat any

$_ZN6Solver15varBumpActivityEi = comdat any

$_ZNK6Solver13abstractLevelEi = comdat any

$_ZNK3vecI3LitE6copyToERS1_ = comdat any

$_ZN3vecI3LitE4lastEv = comdat any

$_ZN3vecI3LitE3popEv = comdat any

$_ZN3vecI3LitE6growToEi = comdat any

$_ZN3vecI3LitE4growEi = comdat any

$_ZN3vecIdEixEi = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi = comdat any

$_ZN6Clause8activityEv = comdat any

$_Z4sortIP6Clause11reduceDB_ltEvR3vecIT_ET0_ = comdat any

$_ZNK6Solver6lockedERK6Clause = comdat any

$_ZNK3vecIP6ClauseEixEi = comdat any

$_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_ = comdat any

$_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_ = comdat any

$_ZN11reduceDB_ltclEP6ClauseS1_ = comdat any

$_ZNK6Solver8nAssignsEv = comdat any

$_ZN6Solver9VarFilterC2ERKS_ = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_ = comdat any

$_ZNK6Solver9VarFilterclEi = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEv = comdat any

$_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEi = comdat any

$_ZN6Solver16varDecayActivityEv = comdat any

$_ZN6Solver16claDecayActivityEv = comdat any

$_ZN6Solver16newDecisionLevelEv = comdat any

$_ZNK6Solver8nClausesEv = comdat any

$_ZN3vecI5lboolE6growToEi = comdat any

$_ZNK6Solver5valueEi = comdat any

$_ZNK6Clause4markEv = comdat any

$_ZNK6Solver10modelValueE3Lit = comdat any

$_ZN6Solver11printClauseI6ClauseEEvRKT_ = comdat any

$_ZN6Solver8printLitE3Lit = comdat any

$_ZNK3vecI5lboolEixEi = comdat any

$_ZN3vecI5lboolE4growEi = comdat any

$_ZN5lboolC2Ev = comdat any

@solver = dso_local global %class.Solver* null, align 8
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_Main.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_Solver.cpp, i8* null }]
@_ZL7l_Undef = internal global %class.lbool zeroinitializer, align 1
@_ZL7l_False = internal global %class.lbool zeroinitializer, align 1
@_ZL6l_True = internal global %class.lbool zeroinitializer, align 1
@_ZL9lit_Error = internal global %class.Lit zeroinitializer, align 4
@_ZL9lit_Undef = internal global %class.Lit zeroinitializer, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [30 x i8] c"restarts              : %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"conflicts             : %-12lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"decisions             : %-12lld   (%4.2f %% random)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"propagations          : %-12lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"conflict literals     : %-12lld   (%4.2f %% deleted)\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"/proc/%d/statm\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [113 x i8] c"USAGE: %s [options] <input-file> <result-output-file>\0A\0A  where input may be either in plain or gzipped DIMACS.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"OPTIONS:\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"  -polarity-mode = {true,false,rnd}\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"  -decay         = <num> [ 0 - 1 ]\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"  -rnd-freq      = <num> [ 0 - 1 ]\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"  -verbosity     = {0,1,2}\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"-polarity-mode=\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"rnd\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"ERROR! unknown polarity-mode %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"-rnd-freq=\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"ERROR! illegal rnd-freq constant %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-decay=\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"ERROR! illegal decay constant %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"-verbosity=\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"ERROR! illegal verbosity level %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"ERROR! unknown flag %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"This is MiniSat 2.0 beta\0A\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"Reading from standard input... Use '-h' or '--help' for help.\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"ERROR! Could not open file: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [81 x i8] c"============================[ Problem Statistics ]=============================\0A\00", align 1
@.str.39 = private unnamed_addr constant [81 x i8] c"|                                                                             |\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Solved by unit propagation\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"UNSAT\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"UNSATISFIABLE\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"SATISFIABLE\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"SAT\0A\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%s%s%d\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" 0\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"p cnf\00", align 1
@.str.53 = private unnamed_addr constant [74 x i8] c"|  Number of variables:  %-12d                                         |\0A\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"|  Number of clauses:    %-12d                                         |\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"PARSE ERROR! Unexpected char: %c\0A\00", align 1
@_ZL7l_Undef.10 = internal global %class.lbool zeroinitializer, align 1
@_ZL7l_False.11 = internal global %class.lbool zeroinitializer, align 1
@_ZL6l_True.12 = internal global %class.lbool zeroinitializer, align 1
@_ZL9lit_Error.13 = internal global %class.Lit zeroinitializer, align 4
@_ZL9lit_Undef.14 = internal global %class.Lit zeroinitializer, align 4
@.str.27.17 = private unnamed_addr constant [11 x i8] c"!inHeap(n)\00", align 1
@.str.28.18 = private unnamed_addr constant [9 x i8] c"./Heap.h\00", align 1
@__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE6insertEi = private unnamed_addr constant [71 x i8] c"void Heap<Solver::VarOrderLt>::insert(int) [Comp = Solver::VarOrderLt]\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"decisionLevel() == 0\00", align 1
@.str.5.57 = private unnamed_addr constant [11 x i8] c"Solver.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver9addClauseER3vecI3LitE = private unnamed_addr constant [35 x i8] c"bool Solver::addClause(vec<Lit> &)\00", align 1
@.str.6.58 = private unnamed_addr constant [24 x i8] c"value(ps[0]) == l_Undef\00", align 1
@.str.7.59 = private unnamed_addr constant [13 x i8] c"c.size() > 1\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver12attachClauseER6Clause = private unnamed_addr constant [36 x i8] c"void Solver::attachClause(Clause &)\00", align 1
@.str.15.60 = private unnamed_addr constant [18 x i8] c"c[1] == false_lit\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver9propagateEv = private unnamed_addr constant [28 x i8] c"Clause *Solver::propagate()\00", align 1
@.str.30.61 = private unnamed_addr constant [13 x i8] c"nelems <= sz\00", align 1
@.str.31.62 = private unnamed_addr constant [8 x i8] c"./Vec.h\00", align 1
@__PRETTY_FUNCTION__._ZN3vecIP6ClauseE6shrinkEi = private unnamed_addr constant [47 x i8] c"void vec<Clause *>::shrink(int) [T = Clause *]\00", align 1
@.str.14.63 = private unnamed_addr constant [20 x i8] c"value(p) == l_Undef\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver16uncheckedEnqueueE3LitP6Clause = private unnamed_addr constant [45 x i8] c"void Solver::uncheckedEnqueue(Lit, Clause *)\00", align 1
@__PRETTY_FUNCTION__._ZN3vecI3LitE6shrinkEi = private unnamed_addr constant [37 x i8] c"void vec<Lit>::shrink(int) [T = Lit]\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver12detachClauseER6Clause = private unnamed_addr constant [36 x i8] c"void Solver::detachClause(Clause &)\00", align 1
@.str.8.64 = private unnamed_addr constant [32 x i8] c"find(watches[toInt(~c[0])], &c)\00", align 1
@.str.9.65 = private unnamed_addr constant [32 x i8] c"find(watches[toInt(~c[1])], &c)\00", align 1
@.str.32.66 = private unnamed_addr constant [14 x i8] c"j < ts.size()\00", align 1
@.str.33.67 = private unnamed_addr constant [8 x i8] c"./Alg.h\00", align 1
@__PRETTY_FUNCTION__._ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_ = private unnamed_addr constant [62 x i8] c"void remove(V &, const T &) [V = vec<Clause *>, T = Clause *]\00", align 1
@__PRETTY_FUNCTION__._ZN3vecIiE6shrinkEi = private unnamed_addr constant [37 x i8] c"void vec<int>::shrink(int) [T = int]\00", align 1
@.str.10.68 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver13pickBranchLitEid = private unnamed_addr constant [39 x i8] c"Lit Solver::pickBranchLit(int, double)\00", align 1
@.str.34.69 = private unnamed_addr constant [20 x i8] c"index < heap.size()\00", align 1
@__PRETTY_FUNCTION__._ZNK4HeapIN6Solver10VarOrderLtEEixEi = private unnamed_addr constant [80 x i8] c"int Heap<Solver::VarOrderLt>::operator[](int) const [Comp = Solver::VarOrderLt]\00", align 1
@.str.11.70 = private unnamed_addr constant [14 x i8] c"confl != NULL\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver7analyzeEP6ClauseR3vecI3LitERi = private unnamed_addr constant [50 x i8] c"void Solver::analyze(Clause *, vec<Lit> &, int &)\00", align 1
@.str.12.71 = private unnamed_addr constant [42 x i8] c"reason[var(analyze_stack.last())] != NULL\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver12litRedundantE3Litj = private unnamed_addr constant [41 x i8] c"bool Solver::litRedundant(Lit, uint32_t)\00", align 1
@.str.29.72 = private unnamed_addr constant [10 x i8] c"inHeap(n)\00", align 1
@__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi = private unnamed_addr constant [73 x i8] c"void Heap<Solver::VarOrderLt>::decrease(int) [Comp = Solver::VarOrderLt]\00", align 1
@.str.13.73 = private unnamed_addr constant [13 x i8] c"level[x] > 0\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver12analyzeFinalE3LitR3vecIS0_E = private unnamed_addr constant [43 x i8] c"void Solver::analyzeFinal(Lit, vec<Lit> &)\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver8simplifyEv = private unnamed_addr constant [24 x i8] c"bool Solver::simplify()\00", align 1
@.str.35.76 = private unnamed_addr constant [15 x i8] c"heapProperty()\00", align 1
@__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_ = private unnamed_addr constant [100 x i8] c"void Heap<Solver::VarOrderLt>::filter(const F &) [Comp = Solver::VarOrderLt, F = Solver::VarFilter]\00", align 1
@.str.16.77 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver6searchEii = private unnamed_addr constant [31 x i8] c"lbool Solver::search(int, int)\00", align 1
@.str.17.78 = private unnamed_addr constant [35 x i8] c"value(learnt_clause[0]) == l_Undef\00", align 1
@.str.18.79 = private unnamed_addr constant [23 x i8] c"value(next) == l_Undef\00", align 1
@.str.19.82 = private unnamed_addr constant [18 x i8] c"status == l_False\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver5solveERK3vecI3LitE = private unnamed_addr constant [37 x i8] c"bool Solver::solve(const vec<Lit> &)\00", align 1
@.str.20.83 = private unnamed_addr constant [24 x i8] c"clauses[i]->mark() == 0\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver11verifyModelEv = private unnamed_addr constant [27 x i8] c"void Solver::verifyModel()\00", align 1
@.str.21.84 = private unnamed_addr constant [21 x i8] c"unsatisfied clause: \00", align 1
@.str.22.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23.86 = private unnamed_addr constant [8 x i8] c"!failed\00", align 1
@.str.24.87 = private unnamed_addr constant [31 x i8] c"Verified %d original clauses.\0A\00", align 1
@.str.36.88 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.38.89 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.39.90 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37.91 = private unnamed_addr constant [8 x i8] c"%s%d:%c\00", align 1
@.str.25.92 = private unnamed_addr constant [36 x i8] c"literal count: %d, real value = %d\0A\00", align 1
@.str.26.93 = private unnamed_addr constant [29 x i8] c"(int)clauses_literals == cnt\00", align 1
@__PRETTY_FUNCTION__._ZN6Solver17checkLiteralCountEv = private unnamed_addr constant [33 x i8] c"void Solver::checkLiteralCount()\00", align 1

@_ZN6SolverC1Ev = dso_local unnamed_addr alias void (%class.Solver*), void (%class.Solver*)* @_ZN6SolverC2Ev
@_ZN6SolverD1Ev = dso_local unnamed_addr alias void (%class.Solver*), void (%class.Solver*)* @_ZN6SolverD2Ev

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Main.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init()
  call void @__cxx_global_var_init.1()
  call void @__cxx_global_var_init.2()
  call void @__cxx_global_var_init.3()
  call void @__cxx_global_var_init.4()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
  call void @_ZN3LitC2Eib(%class.Lit* @_ZL9lit_Undef, i32 -1, i1 zeroext false)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1() #0 section ".text.startup" {
  call void @_ZN3LitC2Eib(%class.Lit* @_ZL9lit_Error, i32 -1, i1 zeroext true)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 1)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 -1)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 0)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i8 @_Z7toLbooli(i32 %0) #0 comdat {
  %2 = alloca %class.lbool, align 1
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  call void @_ZN5lboolC2Ei(%class.lbool* %2, i32 %4)
  %5 = getelementptr inbounds %class.lbool, %class.lbool* %2, i32 0, i32 0
  %6 = load i8, i8* %5, align 1
  ret i8 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN5lboolC2Ei(%class.lbool* %0, i32 %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.lbool*, align 8
  %4 = alloca i32, align 4
  store %class.lbool* %0, %class.lbool** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.lbool*, %class.lbool** %3, align 8
  %6 = getelementptr inbounds %class.lbool, %class.lbool* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %6, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3LitC2Eib(%class.Lit* %0, i32 %1, i1 zeroext %2) unnamed_addr #1 comdat align 2 {
  %4 = alloca %class.Lit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %class.Lit* %0, %class.Lit** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = zext i1 %2 to i8
  store i8 %7, i8* %6, align 1
  %8 = load %class.Lit*, %class.Lit** %4, align 8
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i8, i8* %6, align 1
  %14 = trunc i8 %13 to i1
  %15 = zext i1 %14 to i32
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %9, align 4
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_Z10printStatsR6Solver(%class.Solver* dereferenceable(536) %0) #0 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %5 = call double @_ZL7cpuTimev()
  store double %5, double* %3, align 8
  %6 = call i64 @_ZL7memUsedv()
  store i64 %6, i64* %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* %7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %class.Solver*, %class.Solver** %2, align 8
  %11 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 12
  %12 = load i64, i64* %11, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 @fflush(%struct._IO_FILE* %14)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load %class.Solver*, %class.Solver** %2, align 8
  %20 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 16
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %21)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 @fflush(%struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %26 = call i32 @fflush(%struct._IO_FILE* %25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load %class.Solver*, %class.Solver** %2, align 8
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %28, i32 0, i32 13
  %30 = load i64, i64* %29, align 8
  %31 = load %class.Solver*, %class.Solver** %2, align 8
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 14
  %33 = load i64, i64* %32, align 8
  %34 = uitofp i64 %33 to float
  %35 = fmul float %34, 1.000000e+02
  %36 = load %class.Solver*, %class.Solver** %2, align 8
  %37 = getelementptr inbounds %class.Solver, %class.Solver* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = uitofp i64 %38 to float
  %40 = fdiv float %35, %39
  %41 = fpext float %40 to double
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i64 %30, double %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 @fflush(%struct._IO_FILE* %43)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %46 = call i32 @fflush(%struct._IO_FILE* %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load %class.Solver*, %class.Solver** %2, align 8
  %49 = getelementptr inbounds %class.Solver, %class.Solver* %48, i32 0, i32 15
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i64 %50)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 @fflush(%struct._IO_FILE* %52)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = call i32 @fflush(%struct._IO_FILE* %54)
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load %class.Solver*, %class.Solver** %2, align 8
  %58 = getelementptr inbounds %class.Solver, %class.Solver* %57, i32 0, i32 20
  %59 = load i64, i64* %58, align 8
  %60 = load %class.Solver*, %class.Solver** %2, align 8
  %61 = getelementptr inbounds %class.Solver, %class.Solver* %60, i32 0, i32 19
  %62 = load i64, i64* %61, align 8
  %63 = load %class.Solver*, %class.Solver** %2, align 8
  %64 = getelementptr inbounds %class.Solver, %class.Solver* %63, i32 0, i32 20
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  %67 = mul i64 %66, 100
  %68 = uitofp i64 %67 to double
  %69 = load %class.Solver*, %class.Solver** %2, align 8
  %70 = getelementptr inbounds %class.Solver, %class.Solver* %69, i32 0, i32 19
  %71 = load i64, i64* %70, align 8
  %72 = uitofp i64 %71 to double
  %73 = fdiv double %68, %72
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0), i64 %59, double %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %76 = call i32 @fflush(%struct._IO_FILE* %75)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @_ZL7cpuTimev() #1 {
  %1 = alloca %struct.rusage, align 8
  %2 = call i32 @getrusage(i32 0, %struct.rusage* %1) #12
  %3 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = sitofp i64 %5 to double
  %7 = getelementptr inbounds %struct.rusage, %struct.rusage* %1, i32 0, i32 0
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = sitofp i64 %9 to double
  %11 = fdiv double %10, 1.000000e+06
  %12 = fadd double %6, %11
  ret double %12
}

; Function Attrs: noinline uwtable
define internal i64 @_ZL7memUsedv() #0 {
  %1 = call i32 @_ZL11memReadStati(i32 0)
  %2 = sext i32 %1 to i64
  %3 = call i32 @getpagesize() #13
  %4 = sext i32 %3 to i64
  %5 = mul i64 %2, %4
  ret i64 %5
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline uwtable
define internal i32 @_ZL11memReadStati(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @getpid() #12
  store i32 %8, i32* %5, align 4
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %10 = load i32, i32* %5, align 4
  %11 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i64 0, i64 0), i32 %10) #12
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %6, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %15 = icmp eq %struct._IO_FILE* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %24, %17
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0), i32* %7)
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %3, align 4
  br label %18

27:                                               ; preds = %18
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %29 = call i32 @fclose(%struct._IO_FILE* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %27, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

; Function Attrs: nounwind readnone
declare dso_local i32 @getpagesize() #3

; Function Attrs: nounwind
declare dso_local i32 @getpid() #4

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fscanf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @getrusage(i32, %struct.rusage*) #4

; Function Attrs: noinline uwtable
define dso_local void @_Z10printUsagePPc(i8** %0) #0 {
  %2 = alloca i8**, align 8
  store i8** %0, i8*** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %2, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.9, i64 0, i64 0), i8* %8)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 @fflush(%struct._IO_FILE* %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %13 = call i32 @fflush(%struct._IO_FILE* %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 @fflush(%struct._IO_FILE* %16)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %19 = call i32 @fflush(%struct._IO_FILE* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 @fflush(%struct._IO_FILE* %22)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %25 = call i32 @fflush(%struct._IO_FILE* %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 @fflush(%struct._IO_FILE* %28)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 @fflush(%struct._IO_FILE* %30)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 @fflush(%struct._IO_FILE* %34)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = call i32 @fflush(%struct._IO_FILE* %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 @fflush(%struct._IO_FILE* %40)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 @fflush(%struct._IO_FILE* %46)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @_Z9hasPrefixPKcS0_(i8* %0, i8* %1) #1 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7) #14
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = call i32 @strncmp(i8* %10, i8* %11, i64 %13) #14
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = call noalias i8* @strdup(i8* %20) #12
  store i8* %21, i8** %3, align 8
  br label %23

22:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %23

23:                                               ; preds = %22, %16
  %24 = load i8*, i8** %3, align 8
  ret i8* %24
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind readonly
declare dso_local i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind
declare dso_local noalias i8* @strdup(i8*) #4

; Function Attrs: noinline norecurse uwtable
define dso_local i32 @main(i32 %0, i8** %1) #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %class.Solver, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*
  %11 = alloca i32
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i16, align 2
  %17 = alloca i16, align 2
  %18 = alloca double, align 8
  %19 = alloca %struct._IO_FILE*, align 8
  %20 = alloca %struct._IO_FILE*, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca %class.lbool, align 1
  %24 = alloca %class.lbool, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @_ZN6SolverC1Ev(%class.Solver* %6)
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 11
  store i32 1, i32* %25, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %244, %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %247

30:                                               ; preds = %26
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = invoke i8* @_Z9hasPrefixPKcS0_(i8* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
          to label %37 unwind label %45

37:                                               ; preds = %30
  store i8* %36, i8** %9, align 8
  %38 = icmp ne i8* %36, null
  br i1 %38, label %39, label %75

39:                                               ; preds = %37
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strcmp(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 10
  store i32 0, i32* %44, align 4
  br label %74

45:                                               ; preds = %447, %443, %439, %428, %423, %414, %408, %404, %399, %395, %383, %380, %377, %374, %372, %370, %367, %363, %360, %354, %351, %348, %344, %337, %331, %329, %326, %323, %320, %317, %314, %311, %307, %304, %292, %282, %273, %270, %267, %257, %254, %251, %247, %223, %215, %212, %201, %170, %166, %163, %142, %134, %130, %127, %108, %101, %97, %94, %75, %68, %64, %61, %30
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  store i8* %47, i8** %10, align 8
  %48 = extractvalue { i8*, i32 } %46, 1
  store i32 %48, i32* %11, align 4
  call void @_ZN6SolverD1Ev(%class.Solver* %6) #12
  br label %453

49:                                               ; preds = %39
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 10
  store i32 1, i32* %54, align 4
  br label %73

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 10
  store i32 3, i32* %60, align 4
  br label %72

61:                                               ; preds = %55
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = invoke i32 @fflush(%struct._IO_FILE* %62)
          to label %64 unwind label %45

64:                                               ; preds = %61
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i8* %66)
          to label %68 unwind label %45

68:                                               ; preds = %64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = invoke i32 @fflush(%struct._IO_FILE* %69)
          to label %71 unwind label %45

71:                                               ; preds = %68
  call void @exit(i32 0) #15
  unreachable

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %53
  br label %74

74:                                               ; preds = %73, %43
  br label %243

75:                                               ; preds = %37
  %76 = load i8**, i8*** %5, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = invoke i8* @_Z9hasPrefixPKcS0_(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
          to label %82 unwind label %45

82:                                               ; preds = %75
  store i8* %81, i8** %9, align 8
  %83 = icmp ne i8* %81, null
  br i1 %83, label %84, label %108

84:                                               ; preds = %82
  %85 = load i8*, i8** %9, align 8
  %86 = call i32 (i8*, i8*, ...) @sscanf(i8* %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double* %12) #12
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load double, double* %12, align 8
  %90 = fcmp olt double %89, 0.000000e+00
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load double, double* %12, align 8
  %93 = fcmp ogt double %92, 1.000000e+00
  br i1 %93, label %94, label %105

94:                                               ; preds = %91, %88, %84
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %96 = invoke i32 @fflush(%struct._IO_FILE* %95)
          to label %97 unwind label %45

97:                                               ; preds = %94
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* %99)
          to label %101 unwind label %45

101:                                              ; preds = %97
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = invoke i32 @fflush(%struct._IO_FILE* %102)
          to label %104 unwind label %45

104:                                              ; preds = %101
  call void @exit(i32 0) #15
  unreachable

105:                                              ; preds = %91
  %106 = load double, double* %12, align 8
  %107 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 4
  store double %106, double* %107, align 8
  br label %242

108:                                              ; preds = %82
  %109 = load i8**, i8*** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  %113 = load i8*, i8** %112, align 8
  %114 = invoke i8* @_Z9hasPrefixPKcS0_(i8* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
          to label %115 unwind label %45

115:                                              ; preds = %108
  store i8* %114, i8** %9, align 8
  %116 = icmp ne i8* %114, null
  br i1 %116, label %117, label %142

117:                                              ; preds = %115
  %118 = load i8*, i8** %9, align 8
  %119 = call i32 (i8*, i8*, ...) @sscanf(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), double* %13) #12
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %117
  %122 = load double, double* %13, align 8
  %123 = fcmp ole double %122, 0.000000e+00
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load double, double* %13, align 8
  %126 = fcmp ogt double %125, 1.000000e+00
  br i1 %126, label %127, label %138

127:                                              ; preds = %124, %121, %117
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %129 = invoke i32 @fflush(%struct._IO_FILE* %128)
          to label %130 unwind label %45

130:                                              ; preds = %127
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i8* %132)
          to label %134 unwind label %45

134:                                              ; preds = %130
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = invoke i32 @fflush(%struct._IO_FILE* %135)
          to label %137 unwind label %45

137:                                              ; preds = %134
  call void @exit(i32 0) #15
  unreachable

138:                                              ; preds = %124
  %139 = load double, double* %13, align 8
  %140 = fdiv double 1.000000e+00, %139
  %141 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 2
  store double %140, double* %141, align 8
  br label %241

142:                                              ; preds = %115
  %143 = load i8**, i8*** %5, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = invoke i8* @_Z9hasPrefixPKcS0_(i8* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
          to label %149 unwind label %45

149:                                              ; preds = %142
  store i8* %148, i8** %9, align 8
  %150 = icmp ne i8* %148, null
  br i1 %150, label %151, label %177

151:                                              ; preds = %149
  %152 = load i8*, i8** %9, align 8
  %153 = call i64 @strtol(i8* %152, i8** %14, i32 10) #12
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %15, align 4
  %155 = load i8*, i8** %14, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = icmp eq i8* %155, %156
  br i1 %157, label %163, label %158

158:                                              ; preds = %151
  %159 = load i8*, i8** %14, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %174

163:                                              ; preds = %158, %151
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %165 = invoke i32 @fflush(%struct._IO_FILE* %164)
          to label %166 unwind label %45

166:                                              ; preds = %163
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %168)
          to label %170 unwind label %45

170:                                              ; preds = %166
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = invoke i32 @fflush(%struct._IO_FILE* %171)
          to label %173 unwind label %45

173:                                              ; preds = %170
  call void @exit(i32 0) #15
  unreachable

174:                                              ; preds = %158
  %175 = load i32, i32* %15, align 4
  %176 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 11
  store i32 %175, i32* %176, align 8
  br label %240

177:                                              ; preds = %149
  %178 = load i8**, i8*** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0)) #14
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %177
  %186 = load i8**, i8*** %5, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @strcmp(i8* %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i64 0, i64 0)) #14
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load i8**, i8*** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @strcmp(i8* %198, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #14
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %193, %185, %177
  %202 = load i8**, i8*** %5, align 8
  invoke void @_Z10printUsagePPc(i8** %202)
          to label %203 unwind label %45

203:                                              ; preds = %201
  call void @exit(i32 0) #15
  unreachable

204:                                              ; preds = %193
  %205 = load i8**, i8*** %5, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strncmp(i8* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), i64 1) #14
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %204
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %214 = invoke i32 @fflush(%struct._IO_FILE* %213)
          to label %215 unwind label %45

215:                                              ; preds = %212
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %217 = load i8**, i8*** %5, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8*, i8** %217, i64 %219
  %221 = load i8*, i8** %220, align 8
  %222 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8* %221)
          to label %223 unwind label %45

223:                                              ; preds = %215
  %224 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %225 = invoke i32 @fflush(%struct._IO_FILE* %224)
          to label %226 unwind label %45

226:                                              ; preds = %223
  call void @exit(i32 0) #15
  unreachable

227:                                              ; preds = %204
  %228 = load i8**, i8*** %5, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load i8**, i8*** %5, align 8
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %8, align 4
  %236 = sext i32 %234 to i64
  %237 = getelementptr inbounds i8*, i8** %233, i64 %236
  store i8* %232, i8** %237, align 8
  br label %238

238:                                              ; preds = %227
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %174
  br label %241

241:                                              ; preds = %240, %138
  br label %242

242:                                              ; preds = %241, %105
  br label %243

243:                                              ; preds = %242, %74
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %7, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %7, align 4
  br label %26

247:                                              ; preds = %26
  %248 = load i32, i32* %8, align 4
  store i32 %248, i32* %4, align 4
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %250 = invoke i32 @fflush(%struct._IO_FILE* %249)
          to label %251 unwind label %45

251:                                              ; preds = %247
  %252 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %253 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0))
          to label %254 unwind label %45

254:                                              ; preds = %251
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %256 = invoke i32 @fflush(%struct._IO_FILE* %255)
          to label %257 unwind label %45

257:                                              ; preds = %254
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* %16) #12, !srcloc !2
  %258 = load i16, i16* %16, align 2
  %259 = zext i16 %258 to i32
  %260 = and i32 %259, -769
  %261 = or i32 %260, 512
  %262 = trunc i32 %261 to i16
  store i16 %262, i16* %17, align 2
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* %17) #12, !srcloc !3
  %263 = invoke double @_ZL7cpuTimev()
          to label %264 unwind label %45

264:                                              ; preds = %257
  store double %263, double* %18, align 8
  store %class.Solver* %6, %class.Solver** @solver, align 8
  %265 = load i32, i32* %4, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %277

267:                                              ; preds = %264
  %268 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %269 = invoke i32 @fflush(%struct._IO_FILE* %268)
          to label %270 unwind label %45

270:                                              ; preds = %267
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %272 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %271, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.34, i64 0, i64 0))
          to label %273 unwind label %45

273:                                              ; preds = %270
  %274 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %275 = invoke i32 @fflush(%struct._IO_FILE* %274)
          to label %276 unwind label %45

276:                                              ; preds = %273
  br label %277

277:                                              ; preds = %276, %264
  %278 = load i32, i32* %4, align 4
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %288

282:                                              ; preds = %277
  %283 = load i8**, i8*** %5, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 1
  %285 = load i8*, i8** %284, align 8
  %286 = invoke %struct._IO_FILE* @fopen(i8* %285, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0))
          to label %287 unwind label %45

287:                                              ; preds = %282
  br label %288

288:                                              ; preds = %287, %280
  %289 = phi %struct._IO_FILE* [ %281, %280 ], [ %286, %287 ]
  store %struct._IO_FILE* %289, %struct._IO_FILE** %19, align 8
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %291 = icmp eq %struct._IO_FILE* %290, null
  br i1 %291, label %292, label %311

292:                                              ; preds = %288
  %293 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %294 = invoke i32 @fflush(%struct._IO_FILE* %293)
          to label %295 unwind label %45

295:                                              ; preds = %292
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %297 = load i32, i32* %4, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %304

300:                                              ; preds = %295
  %301 = load i8**, i8*** %5, align 8
  %302 = getelementptr inbounds i8*, i8** %301, i64 1
  %303 = load i8*, i8** %302, align 8
  br label %304

304:                                              ; preds = %300, %299
  %305 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i64 0, i64 0), %299 ], [ %303, %300 ]
  %306 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i8* %305)
          to label %307 unwind label %45

307:                                              ; preds = %304
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %309 = invoke i32 @fflush(%struct._IO_FILE* %308)
          to label %310 unwind label %45

310:                                              ; preds = %307
  call void @exit(i32 1) #15
  unreachable

311:                                              ; preds = %288
  %312 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %313 = invoke i32 @fflush(%struct._IO_FILE* %312)
          to label %314 unwind label %45

314:                                              ; preds = %311
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %316 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.38, i64 0, i64 0))
          to label %317 unwind label %45

317:                                              ; preds = %314
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %319 = invoke i32 @fflush(%struct._IO_FILE* %318)
          to label %320 unwind label %45

320:                                              ; preds = %317
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %322 = invoke i32 @fflush(%struct._IO_FILE* %321)
          to label %323 unwind label %45

323:                                              ; preds = %320
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %325 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %324, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.39, i64 0, i64 0))
          to label %326 unwind label %45

326:                                              ; preds = %323
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %328 = invoke i32 @fflush(%struct._IO_FILE* %327)
          to label %329 unwind label %45

329:                                              ; preds = %326
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  invoke void @_ZL12parse_DIMACSP8_IO_FILER6Solver(%struct._IO_FILE* %330, %class.Solver* dereferenceable(536) %6)
          to label %331 unwind label %45

331:                                              ; preds = %329
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** %19, align 8
  %333 = invoke i32 @fclose(%struct._IO_FILE* %332)
          to label %334 unwind label %45

334:                                              ; preds = %331
  %335 = load i32, i32* %4, align 4
  %336 = icmp sge i32 %335, 3
  br i1 %336, label %337, label %343

337:                                              ; preds = %334
  %338 = load i8**, i8*** %5, align 8
  %339 = getelementptr inbounds i8*, i8** %338, i64 2
  %340 = load i8*, i8** %339, align 8
  %341 = invoke %struct._IO_FILE* @fopen(i8* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
          to label %342 unwind label %45

342:                                              ; preds = %337
  br label %344

343:                                              ; preds = %334
  br label %344

344:                                              ; preds = %343, %342
  %345 = phi %struct._IO_FILE* [ %341, %342 ], [ null, %343 ]
  store %struct._IO_FILE* %345, %struct._IO_FILE** %20, align 8
  %346 = invoke zeroext i1 @_ZN6Solver8simplifyEv(%class.Solver* %6)
          to label %347 unwind label %45

347:                                              ; preds = %344
  br i1 %346, label %370, label %348

348:                                              ; preds = %347
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %350 = invoke i32 @fflush(%struct._IO_FILE* %349)
          to label %351 unwind label %45

351:                                              ; preds = %348
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %353 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i64 0, i64 0))
          to label %354 unwind label %45

354:                                              ; preds = %351
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %356 = invoke i32 @fflush(%struct._IO_FILE* %355)
          to label %357 unwind label %45

357:                                              ; preds = %354
  %358 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %359 = icmp ne %struct._IO_FILE* %358, null
  br i1 %359, label %360, label %367

360:                                              ; preds = %357
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %362 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %361, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
          to label %363 unwind label %45

363:                                              ; preds = %360
  %364 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %365 = invoke i32 @fclose(%struct._IO_FILE* %364)
          to label %366 unwind label %45

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %366, %357
  %368 = invoke i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0))
          to label %369 unwind label %45

369:                                              ; preds = %367
  call void @exit(i32 20) #15
  unreachable

370:                                              ; preds = %347
  %371 = invoke zeroext i1 @_ZN6Solver5solveEv(%class.Solver* %6)
          to label %372 unwind label %45

372:                                              ; preds = %370
  %373 = zext i1 %371 to i8
  store i8 %373, i8* %21, align 1
  invoke void @_Z10printStatsR6Solver(%class.Solver* dereferenceable(536) %6)
          to label %374 unwind label %45

374:                                              ; preds = %372
  %375 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %376 = invoke i32 @fflush(%struct._IO_FILE* %375)
          to label %377 unwind label %45

377:                                              ; preds = %374
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %379 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %378, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
          to label %380 unwind label %45

380:                                              ; preds = %377
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %382 = invoke i32 @fflush(%struct._IO_FILE* %381)
          to label %383 unwind label %45

383:                                              ; preds = %380
  %384 = load i8, i8* %21, align 1
  %385 = trunc i8 %384 to i1
  %386 = zext i1 %385 to i64
  %387 = select i1 %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i64 0, i64 0)
  %388 = invoke i32 (i8*, ...) @printf(i8* %387)
          to label %389 unwind label %45

389:                                              ; preds = %383
  %390 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %391 = icmp ne %struct._IO_FILE* %390, null
  br i1 %391, label %392, label %451

392:                                              ; preds = %389
  %393 = load i8, i8* %21, align 1
  %394 = trunc i8 %393 to i1
  br i1 %394, label %395, label %443

395:                                              ; preds = %392
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %397 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %396, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0))
          to label %398 unwind label %45

398:                                              ; preds = %395
  store i32 0, i32* %22, align 4
  br label %399

399:                                              ; preds = %436, %398
  %400 = load i32, i32* %22, align 4
  %401 = invoke i32 @_ZNK6Solver5nVarsEv(%class.Solver* %6)
          to label %402 unwind label %45

402:                                              ; preds = %399
  %403 = icmp slt i32 %400, %401
  br i1 %403, label %404, label %439

404:                                              ; preds = %402
  %405 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 0
  %406 = load i32, i32* %22, align 4
  %407 = invoke dereferenceable(1) %class.lbool* @_ZN3vecI5lboolEixEi(%class.vec* %405, i32 %406)
          to label %408 unwind label %45

408:                                              ; preds = %404
  %409 = bitcast %class.lbool* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %409, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef, i32 0, i32 0), i64 1, i1 false)
  %410 = getelementptr inbounds %class.lbool, %class.lbool* %23, i32 0, i32 0
  %411 = load i8, i8* %410, align 1
  %412 = invoke zeroext i1 @_ZNK5lboolneES_(%class.lbool* %407, i8 %411)
          to label %413 unwind label %45

413:                                              ; preds = %408
  br i1 %412, label %414, label %435

414:                                              ; preds = %413
  %415 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %416 = load i32, i32* %22, align 4
  %417 = icmp eq i32 %416, 0
  %418 = zext i1 %417 to i64
  %419 = select i1 %417, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i64 0, i64 0)
  %420 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 0
  %421 = load i32, i32* %22, align 4
  %422 = invoke dereferenceable(1) %class.lbool* @_ZN3vecI5lboolEixEi(%class.vec* %420, i32 %421)
          to label %423 unwind label %45

423:                                              ; preds = %414
  %424 = bitcast %class.lbool* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %424, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True, i32 0, i32 0), i64 1, i1 false)
  %425 = getelementptr inbounds %class.lbool, %class.lbool* %24, i32 0, i32 0
  %426 = load i8, i8* %425, align 1
  %427 = invoke zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %422, i8 %426)
          to label %428 unwind label %45

428:                                              ; preds = %423
  %429 = zext i1 %427 to i64
  %430 = select i1 %427, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0)
  %431 = load i32, i32* %22, align 4
  %432 = add nsw i32 %431, 1
  %433 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i64 0, i64 0), i8* %419, i8* %430, i32 %432)
          to label %434 unwind label %45

434:                                              ; preds = %428
  br label %435

435:                                              ; preds = %434, %413
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %22, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %22, align 4
  br label %399

439:                                              ; preds = %402
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %441 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %440, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0))
          to label %442 unwind label %45

442:                                              ; preds = %439
  br label %447

443:                                              ; preds = %392
  %444 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %445 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %444, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i64 0, i64 0))
          to label %446 unwind label %45

446:                                              ; preds = %443
  br label %447

447:                                              ; preds = %446, %442
  %448 = load %struct._IO_FILE*, %struct._IO_FILE** %20, align 8
  %449 = invoke i32 @fclose(%struct._IO_FILE* %448)
          to label %450 unwind label %45

450:                                              ; preds = %447
  br label %451

451:                                              ; preds = %450, %389
  call void @_ZN6SolverD1Ev(%class.Solver* %6) #12
  %452 = load i32, i32* %3, align 4
  ret i32 %452

453:                                              ; preds = %45
  %454 = load i8*, i8** %10, align 8
  %455 = load i32, i32* %11, align 4
  %456 = insertvalue { i8*, i32 } undef, i8* %454, 0
  %457 = insertvalue { i8*, i32 } %456, i32 %455, 1
  resume { i8*, i32 } %457
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #7

; Function Attrs: nounwind
declare dso_local i32 @sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: noinline uwtable
define internal void @_ZL12parse_DIMACSP8_IO_FILER6Solver(%struct._IO_FILE* %0, %class.Solver* dereferenceable(536) %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.StreamBuffer*, align 8
  %6 = alloca i8*
  %7 = alloca i32
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %class.Solver* %1, %class.Solver** %4, align 8
  %8 = call i8* @_Znwm(i64 1048592) #16
  %9 = bitcast i8* %8 to %class.StreamBuffer*
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  invoke void @_ZN12StreamBufferC2EP8_IO_FILE(%class.StreamBuffer* %9, %struct._IO_FILE* %10)
          to label %11 unwind label %19

11:                                               ; preds = %2
  store %class.StreamBuffer* %9, %class.StreamBuffer** %5, align 8
  %12 = load %class.StreamBuffer*, %class.StreamBuffer** %5, align 8
  %13 = load %class.Solver*, %class.Solver** %4, align 8
  call void @_ZL17parse_DIMACS_mainI12StreamBufferEvRT_R6Solver(%class.StreamBuffer* dereferenceable(1048592) %12, %class.Solver* dereferenceable(536) %13)
  %14 = load %class.StreamBuffer*, %class.StreamBuffer** %5, align 8
  %15 = icmp eq %class.StreamBuffer* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = bitcast %class.StreamBuffer* %14 to i8*
  call void @_ZdlPv(i8* %17) #17
  br label %18

18:                                               ; preds = %16, %11
  ret void

19:                                               ; preds = %2
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  store i8* %21, i8** %6, align 8
  %22 = extractvalue { i8*, i32 } %20, 1
  store i32 %22, i32* %7, align 4
  call void @_ZdlPv(i8* %8) #17
  br label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %27 = insertvalue { i8*, i32 } %26, i32 %25, 1
  resume { i8*, i32 } %27
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Solver5solveEv(%class.Solver* %0) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca %class.vec.0, align 8
  %4 = alloca i8*
  %5 = alloca i32
  store %class.Solver* %0, %class.Solver** %2, align 8
  %6 = load %class.Solver*, %class.Solver** %2, align 8
  call void @_ZN3vecI3LitEC2Ev(%class.vec.0* %3)
  %7 = invoke zeroext i1 @_ZN6Solver5solveERK3vecI3LitE(%class.Solver* %6, %class.vec.0* dereferenceable(16) %3)
          to label %8 unwind label %9

8:                                                ; preds = %1
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %3) #12
  ret i1 %7

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  store i8* %11, i8** %4, align 8
  %12 = extractvalue { i8*, i32 } %10, 1
  store i32 %12, i32* %5, align 4
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %3) #12
  br label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZNK6Solver5nVarsEv(%class.Solver* %0) #0 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 28
  %5 = call i32 @_ZNK3vecIcE4sizeEv(%class.vec.4* %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %class.lbool* @_ZN3vecI5lboolEixEi(%class.vec* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec*, align 8
  %4 = alloca i32, align 4
  store %class.vec* %0, %class.vec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec*, %class.vec** %3, align 8
  %6 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 0
  %7 = load %class.lbool*, %class.lbool** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.lbool, %class.lbool* %7, i64 %9
  ret %class.lbool* %10
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK5lboolneES_(%class.lbool* %0, i8 %1) #1 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.lbool*, align 8
  %5 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  store %class.lbool* %0, %class.lbool** %4, align 8
  %6 = load %class.lbool*, %class.lbool** %4, align 8
  %7 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %9, %12
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %0, i8 %1) #1 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.lbool*, align 8
  %5 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 %1, i8* %5, align 1
  store %class.lbool* %0, %class.lbool** %4, align 8
  %6 = load %class.lbool*, %class.lbool** %4, align 8
  %7 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %9, %12
  ret i1 %13
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK3vecIcE4sizeEv(%class.vec.4* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.4*, align 8
  store %class.vec.4* %0, %class.vec.4** %2, align 8
  %3 = load %class.vec.4*, %class.vec.4** %2, align 8
  %4 = getelementptr inbounds %class.vec.4, %class.vec.4* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitEC2Ev(%class.vec.0* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  store %class.Lit* null, %class.Lit** %4, align 8
  %5 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitED2Ev(%class.vec.0* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  invoke void @_ZN3vecI3LitE5clearEb(%class.vec.0* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE5clearEb(%class.vec.0* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.0*, %class.vec.0** %3, align 8
  %8 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 0
  %9 = load %class.Lit*, %class.Lit** %8, align 8
  %10 = icmp ne %class.Lit* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 0
  %19 = load %class.Lit*, %class.Lit** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.Lit, %class.Lit* %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 0
  %32 = load %class.Lit*, %class.Lit** %31, align 8
  %33 = bitcast %class.Lit* %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 0
  store %class.Lit* null, %class.Lit** %34, align 8
  %35 = getelementptr inbounds %class.vec.0, %class.vec.0* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #9 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #12
  call void @_ZSt9terminatev() #15
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: nobuiltin
declare dso_local noalias i8* @_Znwm(i64) #10

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN12StreamBufferC2EP8_IO_FILE(%class.StreamBuffer* %0, %struct._IO_FILE* %1) unnamed_addr #0 comdat align 2 {
  %3 = alloca %class.StreamBuffer*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %6 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %5, i32 0, i32 0
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %7, %struct._IO_FILE** %6, align 8
  %8 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %5, i32 0, i32 2
  store i32 0, i32* %8, align 8
  %9 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %5, i32 0, i32 3
  store i32 0, i32* %9, align 4
  call void @_ZN12StreamBuffer15assureLookaheadEv(%class.StreamBuffer* %5)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZL17parse_DIMACS_mainI12StreamBufferEvRT_R6Solver(%class.StreamBuffer* dereferenceable(1048592) %0, %class.Solver* dereferenceable(536) %1) #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.StreamBuffer*, align 8
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.vec.0, align 8
  %6 = alloca i8*
  %7 = alloca i32
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %class.StreamBuffer* %0, %class.StreamBuffer** %3, align 8
  store %class.Solver* %1, %class.Solver** %4, align 8
  call void @_ZN3vecI3LitEC2Ev(%class.vec.0* %5)
  br label %10

10:                                               ; preds = %94, %2
  %11 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  invoke void @_ZL14skipWhitespaceI12StreamBufferEvRT_(%class.StreamBuffer* dereferenceable(1048592) %11)
          to label %12 unwind label %18

12:                                               ; preds = %10
  %13 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %14 = invoke i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %13)
          to label %15 unwind label %18

15:                                               ; preds = %12
  %16 = icmp eq i32 %14, -1
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  br label %95

18:                                               ; preds = %88, %85, %82, %77, %72, %67, %65, %61, %58, %54, %50, %47, %44, %40, %37, %34, %31, %27, %22, %12, %10
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  store i8* %20, i8** %6, align 8
  %21 = extractvalue { i8*, i32 } %19, 1
  store i32 %21, i32* %7, align 4
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %5) #12
  br label %96

22:                                               ; preds = %15
  %23 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %24 = invoke i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %23)
          to label %25 unwind label %18

25:                                               ; preds = %22
  %26 = icmp eq i32 %24, 112
  br i1 %26, label %27, label %72

27:                                               ; preds = %25
  %28 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %29 = invoke zeroext i1 @_ZL5matchI12StreamBufferEbRT_Pc(%class.StreamBuffer* dereferenceable(1048592) %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0))
          to label %30 unwind label %18

30:                                               ; preds = %27
  br i1 %29, label %31, label %58

31:                                               ; preds = %30
  %32 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %33 = invoke i32 @_ZL8parseIntI12StreamBufferEiRT_(%class.StreamBuffer* dereferenceable(1048592) %32)
          to label %34 unwind label %18

34:                                               ; preds = %31
  store i32 %33, i32* %8, align 4
  %35 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %36 = invoke i32 @_ZL8parseIntI12StreamBufferEiRT_(%class.StreamBuffer* dereferenceable(1048592) %35)
          to label %37 unwind label %18

37:                                               ; preds = %34
  store i32 %36, i32* %9, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %39 = invoke i32 @fflush(%struct._IO_FILE* %38)
          to label %40 unwind label %18

40:                                               ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i32, i32* %8, align 4
  %43 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.53, i64 0, i64 0), i32 %42)
          to label %44 unwind label %18

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = invoke i32 @fflush(%struct._IO_FILE* %45)
          to label %47 unwind label %18

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %49 = invoke i32 @fflush(%struct._IO_FILE* %48)
          to label %50 unwind label %18

50:                                               ; preds = %47
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = load i32, i32* %9, align 4
  %53 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.54, i64 0, i64 0), i32 %52)
          to label %54 unwind label %18

54:                                               ; preds = %50
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = invoke i32 @fflush(%struct._IO_FILE* %55)
          to label %57 unwind label %18

57:                                               ; preds = %54
  br label %71

58:                                               ; preds = %30
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = invoke i32 @fflush(%struct._IO_FILE* %59)
          to label %61 unwind label %18

61:                                               ; preds = %58
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %64 = invoke i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %63)
          to label %65 unwind label %18

65:                                               ; preds = %61
  %66 = invoke i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0), i32 %64)
          to label %67 unwind label %18

67:                                               ; preds = %65
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = invoke i32 @fflush(%struct._IO_FILE* %68)
          to label %70 unwind label %18

70:                                               ; preds = %67
  call void @exit(i32 3) #15
  unreachable

71:                                               ; preds = %57
  br label %93

72:                                               ; preds = %25
  %73 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %74 = invoke i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %73)
          to label %75 unwind label %18

75:                                               ; preds = %72
  %76 = icmp eq i32 %74, 99
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %79 = invoke i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %78)
          to label %80 unwind label %18

80:                                               ; preds = %77
  %81 = icmp eq i32 %79, 112
  br i1 %81, label %82, label %85

82:                                               ; preds = %80, %75
  %83 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  invoke void @_ZL8skipLineI12StreamBufferEvRT_(%class.StreamBuffer* dereferenceable(1048592) %83)
          to label %84 unwind label %18

84:                                               ; preds = %82
  br label %92

85:                                               ; preds = %80
  %86 = load %class.StreamBuffer*, %class.StreamBuffer** %3, align 8
  %87 = load %class.Solver*, %class.Solver** %4, align 8
  invoke void @_ZL10readClauseI12StreamBufferEvRT_R6SolverR3vecI3LitE(%class.StreamBuffer* dereferenceable(1048592) %86, %class.Solver* dereferenceable(536) %87, %class.vec.0* dereferenceable(16) %5)
          to label %88 unwind label %18

88:                                               ; preds = %85
  %89 = load %class.Solver*, %class.Solver** %4, align 8
  %90 = invoke zeroext i1 @_ZN6Solver9addClauseER3vecI3LitE(%class.Solver* %89, %class.vec.0* dereferenceable(16) %5)
          to label %91 unwind label %18

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %84
  br label %93

93:                                               ; preds = %92, %71
  br label %94

94:                                               ; preds = %93
  br label %10

95:                                               ; preds = %17
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %5) #12
  ret void

96:                                               ; preds = %18
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = insertvalue { i8*, i32 } undef, i8* %97, 0
  %100 = insertvalue { i8*, i32 } %99, i32 %98, 1
  resume { i8*, i32 } %100
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #11

; Function Attrs: noinline uwtable
define internal void @_ZL14skipWhitespaceI12StreamBufferEvRT_(%class.StreamBuffer* dereferenceable(1048592) %0) #0 {
  %2 = alloca %class.StreamBuffer*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  br label %3

3:                                                ; preds = %17, %1
  %4 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %5 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %4)
  %6 = icmp sge i32 %5, 9
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %9 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %8)
  %10 = icmp sle i32 %9, 13
  br i1 %10, label %15, label %11

11:                                               ; preds = %7, %3
  %12 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %13 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %12)
  %14 = icmp eq i32 %13, 32
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i1 [ true, %7 ], [ %14, %11 ]
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %18)
  br label %3

19:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %0) #1 comdat align 2 {
  %2 = alloca %class.StreamBuffer*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  %3 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %4 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 1
  %12 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [1048576 x i8], [1048576 x i8]* %11, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  br label %18

18:                                               ; preds = %10, %9
  %19 = phi i32 [ -1, %9 ], [ %17, %10 ]
  ret i32 %19
}

; Function Attrs: noinline uwtable
define internal zeroext i1 @_ZL5matchI12StreamBufferEbRT_Pc(%class.StreamBuffer* dereferenceable(1048592) %0, i8* %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca %class.StreamBuffer*, align 8
  %5 = alloca i8*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load %class.StreamBuffer*, %class.StreamBuffer** %4, align 8
  %16 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %15)
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i1 false, i1* %3, align 1
  br label %25

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load %class.StreamBuffer*, %class.StreamBuffer** %4, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %23)
  br label %6

24:                                               ; preds = %6
  store i1 true, i1* %3, align 1
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i1, i1* %3, align 1
  ret i1 %26
}

; Function Attrs: noinline uwtable
define internal i32 @_ZL8parseIntI12StreamBufferEiRT_(%class.StreamBuffer* dereferenceable(1048592) %0) #0 {
  %2 = alloca %class.StreamBuffer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  store i32 0, i32* %3, align 4
  store i8 0, i8* %4, align 1
  %5 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZL14skipWhitespaceI12StreamBufferEvRT_(%class.StreamBuffer* dereferenceable(1048592) %5)
  %6 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %7 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %6)
  %8 = icmp eq i32 %7, 45
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  store i8 1, i8* %4, align 1
  %10 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %10)
  br label %18

11:                                               ; preds = %1
  %12 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %13 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %12)
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %16)
  br label %17

17:                                               ; preds = %15, %11
  br label %18

18:                                               ; preds = %17, %9
  %19 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %20 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %19)
  %21 = icmp slt i32 %20, 48
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %24 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %23)
  %25 = icmp sgt i32 %24, 57
  br i1 %25, label %26, label %35

26:                                               ; preds = %22, %18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %28 = call i32 @fflush(%struct._IO_FILE* %27)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %31 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %30)
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.55, i64 0, i64 0), i32 %31)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 @fflush(%struct._IO_FILE* %33)
  call void @exit(i32 3) #15
  unreachable

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %46, %35
  %37 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %38 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %37)
  %39 = icmp sge i32 %38, 48
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %42 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %41)
  %43 = icmp sle i32 %42, 57
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 %47, 10
  %49 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %50 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %49)
  %51 = sub nsw i32 %50, 48
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %3, align 4
  %53 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %53)
  br label %36

54:                                               ; preds = %44
  %55 = load i8, i8* %4, align 1
  %56 = trunc i8 %55 to i1
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %3, align 4
  %59 = sub nsw i32 0, %58
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %59, %57 ], [ %61, %60 ]
  ret i32 %63
}

; Function Attrs: noinline uwtable
define internal void @_ZL8skipLineI12StreamBufferEvRT_(%class.StreamBuffer* dereferenceable(1048592) %0) #0 {
  %2 = alloca %class.StreamBuffer*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  br label %3

3:                                                ; preds = %18, %1
  %4 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %5 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %4)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %9 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %3
  br label %20

12:                                               ; preds = %7
  %13 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %14 = call i32 @_ZN12StreamBufferdeEv(%class.StreamBuffer* %13)
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %17)
  br label %20

18:                                               ; preds = %12
  %19 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  call void @_ZN12StreamBufferppEv(%class.StreamBuffer* %19)
  br label %3

20:                                               ; preds = %16, %11
  ret void
}

; Function Attrs: noinline uwtable
define internal void @_ZL10readClauseI12StreamBufferEvRT_R6SolverR3vecI3LitE(%class.StreamBuffer* dereferenceable(1048592) %0, %class.Solver* dereferenceable(536) %1, %class.vec.0* dereferenceable(16) %2) #0 {
  %4 = alloca %class.StreamBuffer*, align 8
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.vec.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.Lit, align 4
  %10 = alloca %class.Lit, align 4
  store %class.StreamBuffer* %0, %class.StreamBuffer** %4, align 8
  store %class.Solver* %1, %class.Solver** %5, align 8
  store %class.vec.0* %2, %class.vec.0** %6, align 8
  %11 = load %class.vec.0*, %class.vec.0** %6, align 8
  call void @_ZN3vecI3LitE5clearEb(%class.vec.0* %11, i1 zeroext false)
  br label %12

12:                                               ; preds = %42, %3
  %13 = load %class.StreamBuffer*, %class.StreamBuffer** %4, align 8
  %14 = call i32 @_ZL8parseIntI12StreamBufferEiRT_(%class.StreamBuffer* dereferenceable(1048592) %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %43

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @abs(i32 %19) #13
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %27, %18
  %23 = load i32, i32* %8, align 4
  %24 = load %class.Solver*, %class.Solver** %5, align 8
  %25 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %24)
  %26 = icmp sge i32 %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %class.Solver*, %class.Solver** %5, align 8
  %29 = call i32 @_ZN6Solver6newVarEbb(%class.Solver* %28, i1 zeroext true, i1 zeroext true)
  br label %22

30:                                               ; preds = %22
  %31 = load %class.vec.0*, %class.vec.0** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* %8, align 4
  call void @_ZN3LitC2Eib(%class.Lit* %9, i32 %35, i1 zeroext false)
  br label %42

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  call void @_ZN3LitC2Eib(%class.Lit* %10, i32 %37, i1 zeroext false)
  %38 = getelementptr inbounds %class.Lit, %class.Lit* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_Zco3Lit(i32 %39)
  %41 = getelementptr inbounds %class.Lit, %class.Lit* %9, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %34
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %31, %class.Lit* dereferenceable(4) %9)
  br label %12

43:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #3

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_Zco3Lit(i32 %0) #0 comdat {
  %2 = alloca %class.Lit, align 4
  %3 = alloca %class.Lit, align 4
  %4 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  call void @_ZN3LitC2Ev(%class.Lit* %2)
  %5 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = xor i32 %6, 1
  %8 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  ret i32 %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %0, %class.Lit* dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca %class.Lit*, align 8
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store %class.Lit* %1, %class.Lit** %4, align 8
  %5 = load %class.vec.0*, %class.vec.0** %3, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 1
  %16 = ashr i32 %15, 1
  %17 = call i32 @_ZN3vecI3LitE4imaxEii(i32 2, i32 %16)
  %18 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  %20 = load %class.Lit*, %class.Lit** %19, align 8
  %21 = bitcast %class.Lit* %20 to i8*
  %22 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = call i8* @realloc(i8* %21, i64 %25) #12
  %27 = bitcast i8* %26 to %class.Lit*
  %28 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  store %class.Lit* %27, %class.Lit** %28, align 8
  br label %29

29:                                               ; preds = %11, %2
  %30 = load %class.Lit*, %class.Lit** %4, align 8
  %31 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  %32 = load %class.Lit*, %class.Lit** %31, align 8
  %33 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %class.Lit, %class.Lit* %32, i64 %36
  %38 = bitcast %class.Lit* %37 to i8*
  %39 = bitcast %class.Lit* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecI3LitE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #4

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3LitC2Ev(%class.Lit* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Lit*, align 8
  store %class.Lit* %0, %class.Lit** %2, align 8
  %3 = load %class.Lit*, %class.Lit** %2, align 8
  %4 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 -2, i32* %4, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN12StreamBufferppEv(%class.StreamBuffer* %0) #0 comdat align 2 {
  %2 = alloca %class.StreamBuffer*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  %3 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %4 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* %4, align 8
  call void @_ZN12StreamBuffer15assureLookaheadEv(%class.StreamBuffer* %3)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN12StreamBuffer15assureLookaheadEv(%class.StreamBuffer* %0) #0 comdat align 2 {
  %2 = alloca %class.StreamBuffer*, align 8
  store %class.StreamBuffer* %0, %class.StreamBuffer** %2, align 8
  %3 = load %class.StreamBuffer*, %class.StreamBuffer** %2, align 8
  %4 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp sge i32 %5, %7
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  %13 = call i32 @fileno(%struct._IO_FILE* %12) #12
  %14 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 1
  %15 = getelementptr inbounds [1048576 x i8], [1048576 x i8]* %14, i64 0, i64 0
  %16 = call i64 @read(i32 %13, i8* %15, i64 1048576)
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %class.StreamBuffer, %class.StreamBuffer* %3, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @fileno(%struct._IO_FILE*) #4

declare dso_local i64 @read(i32, i8*, i64) #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_Solver.cpp() #0 section ".text.startup" {
  call void @__cxx_global_var_init.5()
  call void @__cxx_global_var_init.1.6()
  call void @__cxx_global_var_init.2.7()
  call void @__cxx_global_var_init.3.8()
  call void @__cxx_global_var_init.4.9()
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.5() #0 section ".text.startup" {
  call void @_ZN3LitC2Eib(%class.Lit* @_ZL9lit_Undef.14, i32 -1, i1 zeroext false)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.1.6() #0 section ".text.startup" {
  call void @_ZN3LitC2Eib(%class.Lit* @_ZL9lit_Error.13, i32 -1, i1 zeroext true)
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.2.7() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 1)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.3.8() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 -1)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init.4.9() #0 section ".text.startup" {
  %1 = call i8 @_Z7toLbooli(i32 0)
  store i8 %1, i8* getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), align 1
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6SolverC2Ev(%class.Solver* %0) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i8*
  %4 = alloca i32
  %5 = alloca %"struct.Solver::VarOrderLt", align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %6 = load %class.Solver*, %class.Solver** %2, align 8
  %7 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 0
  call void @_ZN3vecI5lboolEC2Ev(%class.vec* %7)
  %8 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 1
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %8)
          to label %9 unwind label %74

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 2
  store double 0x3FF0D79435E50D79, double* %10, align 8
  %11 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 3
  store double 0x3FF00419A0290042, double* %11, align 8
  %12 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 4
  store double 2.000000e-02, double* %12, align 8
  %13 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 5
  store i32 100, i32* %13, align 8
  %14 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 6
  store double 1.500000e+00, double* %14, align 8
  %15 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 7
  store double 0x3FD5555555555555, double* %15, align 8
  %16 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 8
  store double 1.100000e+00, double* %16, align 8
  %17 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 9
  store i8 1, i8* %17, align 8
  %18 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 10
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 11
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 12
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 13
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 14
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 15
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 16
  store i64 0, i64* %24, align 8
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 17
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 18
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 19
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 20
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 21
  store i8 1, i8* %29, align 8
  %30 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 22
  invoke void @_ZN3vecIP6ClauseEC2Ev(%class.vec.1* %30)
          to label %31 unwind label %78

31:                                               ; preds = %9
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 23
  invoke void @_ZN3vecIP6ClauseEC2Ev(%class.vec.1* %32)
          to label %33 unwind label %82

33:                                               ; preds = %31
  %34 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 24
  store double 1.000000e+00, double* %34, align 8
  %35 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 25
  invoke void @_ZN3vecIdEC2Ev(%class.vec.2* %35)
          to label %36 unwind label %86

36:                                               ; preds = %33
  %37 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 26
  store double 1.000000e+00, double* %37, align 8
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 27
  invoke void @_ZN3vecIS_IP6ClauseEEC2Ev(%class.vec.3* %38)
          to label %39 unwind label %90

39:                                               ; preds = %36
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 28
  invoke void @_ZN3vecIcEC2Ev(%class.vec.4* %40)
          to label %41 unwind label %94

41:                                               ; preds = %39
  %42 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 29
  invoke void @_ZN3vecIcEC2Ev(%class.vec.4* %42)
          to label %43 unwind label %98

43:                                               ; preds = %41
  %44 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 30
  invoke void @_ZN3vecIcEC2Ev(%class.vec.4* %44)
          to label %45 unwind label %102

45:                                               ; preds = %43
  %46 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 31
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %46)
          to label %47 unwind label %106

47:                                               ; preds = %45
  %48 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 32
  invoke void @_ZN3vecIiEC2Ev(%class.vec.5* %48)
          to label %49 unwind label %110

49:                                               ; preds = %47
  %50 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 33
  invoke void @_ZN3vecIP6ClauseEC2Ev(%class.vec.1* %50)
          to label %51 unwind label %114

51:                                               ; preds = %49
  %52 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 34
  invoke void @_ZN3vecIiEC2Ev(%class.vec.5* %52)
          to label %53 unwind label %118

53:                                               ; preds = %51
  %54 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 35
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 36
  store i32 -1, i32* %55, align 4
  %56 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 37
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 38
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %57)
          to label %58 unwind label %122

58:                                               ; preds = %53
  %59 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 39
  %60 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 25
  invoke void @_ZN6Solver10VarOrderLtC2ERK3vecIdE(%"struct.Solver::VarOrderLt"* %5, %class.vec.2* dereferenceable(16) %60)
          to label %61 unwind label %126

61:                                               ; preds = %58
  invoke void @_ZN4HeapIN6Solver10VarOrderLtEEC2ERKS1_(%class.Heap* %59, %"struct.Solver::VarOrderLt"* dereferenceable(8) %5)
          to label %62 unwind label %126

62:                                               ; preds = %61
  %63 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 40
  store double 0x4195D9C3F4000000, double* %63, align 8
  %64 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 41
  store double 0.000000e+00, double* %64, align 8
  %65 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 42
  store i8 1, i8* %65, align 8
  %66 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 43
  invoke void @_ZN3vecIcEC2Ev(%class.vec.4* %66)
          to label %67 unwind label %130

67:                                               ; preds = %62
  %68 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 44
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %68)
          to label %69 unwind label %134

69:                                               ; preds = %67
  %70 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 45
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %70)
          to label %71 unwind label %138

71:                                               ; preds = %69
  %72 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 46
  invoke void @_ZN3vecI3LitEC2Ev(%class.vec.0* %72)
          to label %73 unwind label %142

73:                                               ; preds = %71
  ret void

74:                                               ; preds = %1
  %75 = landingpad { i8*, i32 }
          cleanup
  %76 = extractvalue { i8*, i32 } %75, 0
  store i8* %76, i8** %3, align 8
  %77 = extractvalue { i8*, i32 } %75, 1
  store i32 %77, i32* %4, align 4
  br label %162

78:                                               ; preds = %9
  %79 = landingpad { i8*, i32 }
          cleanup
  %80 = extractvalue { i8*, i32 } %79, 0
  store i8* %80, i8** %3, align 8
  %81 = extractvalue { i8*, i32 } %79, 1
  store i32 %81, i32* %4, align 4
  br label %161

82:                                               ; preds = %31
  %83 = landingpad { i8*, i32 }
          cleanup
  %84 = extractvalue { i8*, i32 } %83, 0
  store i8* %84, i8** %3, align 8
  %85 = extractvalue { i8*, i32 } %83, 1
  store i32 %85, i32* %4, align 4
  br label %160

86:                                               ; preds = %33
  %87 = landingpad { i8*, i32 }
          cleanup
  %88 = extractvalue { i8*, i32 } %87, 0
  store i8* %88, i8** %3, align 8
  %89 = extractvalue { i8*, i32 } %87, 1
  store i32 %89, i32* %4, align 4
  br label %159

90:                                               ; preds = %36
  %91 = landingpad { i8*, i32 }
          cleanup
  %92 = extractvalue { i8*, i32 } %91, 0
  store i8* %92, i8** %3, align 8
  %93 = extractvalue { i8*, i32 } %91, 1
  store i32 %93, i32* %4, align 4
  br label %158

94:                                               ; preds = %39
  %95 = landingpad { i8*, i32 }
          cleanup
  %96 = extractvalue { i8*, i32 } %95, 0
  store i8* %96, i8** %3, align 8
  %97 = extractvalue { i8*, i32 } %95, 1
  store i32 %97, i32* %4, align 4
  br label %157

98:                                               ; preds = %41
  %99 = landingpad { i8*, i32 }
          cleanup
  %100 = extractvalue { i8*, i32 } %99, 0
  store i8* %100, i8** %3, align 8
  %101 = extractvalue { i8*, i32 } %99, 1
  store i32 %101, i32* %4, align 4
  br label %156

102:                                              ; preds = %43
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = extractvalue { i8*, i32 } %103, 0
  store i8* %104, i8** %3, align 8
  %105 = extractvalue { i8*, i32 } %103, 1
  store i32 %105, i32* %4, align 4
  br label %155

106:                                              ; preds = %45
  %107 = landingpad { i8*, i32 }
          cleanup
  %108 = extractvalue { i8*, i32 } %107, 0
  store i8* %108, i8** %3, align 8
  %109 = extractvalue { i8*, i32 } %107, 1
  store i32 %109, i32* %4, align 4
  br label %154

110:                                              ; preds = %47
  %111 = landingpad { i8*, i32 }
          cleanup
  %112 = extractvalue { i8*, i32 } %111, 0
  store i8* %112, i8** %3, align 8
  %113 = extractvalue { i8*, i32 } %111, 1
  store i32 %113, i32* %4, align 4
  br label %153

114:                                              ; preds = %49
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  store i8* %116, i8** %3, align 8
  %117 = extractvalue { i8*, i32 } %115, 1
  store i32 %117, i32* %4, align 4
  br label %152

118:                                              ; preds = %51
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = extractvalue { i8*, i32 } %119, 0
  store i8* %120, i8** %3, align 8
  %121 = extractvalue { i8*, i32 } %119, 1
  store i32 %121, i32* %4, align 4
  br label %151

122:                                              ; preds = %53
  %123 = landingpad { i8*, i32 }
          cleanup
  %124 = extractvalue { i8*, i32 } %123, 0
  store i8* %124, i8** %3, align 8
  %125 = extractvalue { i8*, i32 } %123, 1
  store i32 %125, i32* %4, align 4
  br label %150

126:                                              ; preds = %61, %58
  %127 = landingpad { i8*, i32 }
          cleanup
  %128 = extractvalue { i8*, i32 } %127, 0
  store i8* %128, i8** %3, align 8
  %129 = extractvalue { i8*, i32 } %127, 1
  store i32 %129, i32* %4, align 4
  br label %149

130:                                              ; preds = %62
  %131 = landingpad { i8*, i32 }
          cleanup
  %132 = extractvalue { i8*, i32 } %131, 0
  store i8* %132, i8** %3, align 8
  %133 = extractvalue { i8*, i32 } %131, 1
  store i32 %133, i32* %4, align 4
  br label %148

134:                                              ; preds = %67
  %135 = landingpad { i8*, i32 }
          cleanup
  %136 = extractvalue { i8*, i32 } %135, 0
  store i8* %136, i8** %3, align 8
  %137 = extractvalue { i8*, i32 } %135, 1
  store i32 %137, i32* %4, align 4
  br label %147

138:                                              ; preds = %69
  %139 = landingpad { i8*, i32 }
          cleanup
  %140 = extractvalue { i8*, i32 } %139, 0
  store i8* %140, i8** %3, align 8
  %141 = extractvalue { i8*, i32 } %139, 1
  store i32 %141, i32* %4, align 4
  br label %146

142:                                              ; preds = %71
  %143 = landingpad { i8*, i32 }
          cleanup
  %144 = extractvalue { i8*, i32 } %143, 0
  store i8* %144, i8** %3, align 8
  %145 = extractvalue { i8*, i32 } %143, 1
  store i32 %145, i32* %4, align 4
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %70) #12
  br label %146

146:                                              ; preds = %142, %138
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %68) #12
  br label %147

147:                                              ; preds = %146, %134
  call void @_ZN3vecIcED2Ev(%class.vec.4* %66) #12
  br label %148

148:                                              ; preds = %147, %130
  call void @_ZN4HeapIN6Solver10VarOrderLtEED2Ev(%class.Heap* %59) #12
  br label %149

149:                                              ; preds = %148, %126
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %57) #12
  br label %150

150:                                              ; preds = %149, %122
  call void @_ZN3vecIiED2Ev(%class.vec.5* %52) #12
  br label %151

151:                                              ; preds = %150, %118
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %50) #12
  br label %152

152:                                              ; preds = %151, %114
  call void @_ZN3vecIiED2Ev(%class.vec.5* %48) #12
  br label %153

153:                                              ; preds = %152, %110
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %46) #12
  br label %154

154:                                              ; preds = %153, %106
  call void @_ZN3vecIcED2Ev(%class.vec.4* %44) #12
  br label %155

155:                                              ; preds = %154, %102
  call void @_ZN3vecIcED2Ev(%class.vec.4* %42) #12
  br label %156

156:                                              ; preds = %155, %98
  call void @_ZN3vecIcED2Ev(%class.vec.4* %40) #12
  br label %157

157:                                              ; preds = %156, %94
  call void @_ZN3vecIS_IP6ClauseEED2Ev(%class.vec.3* %38) #12
  br label %158

158:                                              ; preds = %157, %90
  call void @_ZN3vecIdED2Ev(%class.vec.2* %35) #12
  br label %159

159:                                              ; preds = %158, %86
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %32) #12
  br label %160

160:                                              ; preds = %159, %82
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %30) #12
  br label %161

161:                                              ; preds = %160, %78
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %8) #12
  br label %162

162:                                              ; preds = %161, %74
  call void @_ZN3vecI5lboolED2Ev(%class.vec* %7) #12
  br label %163

163:                                              ; preds = %162
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = insertvalue { i8*, i32 } undef, i8* %164, 0
  %167 = insertvalue { i8*, i32 } %166, i32 %165, 1
  resume { i8*, i32 } %167
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI5lboolEC2Ev(%class.vec* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec*, align 8
  store %class.vec* %0, %class.vec** %2, align 8
  %3 = load %class.vec*, %class.vec** %2, align 8
  %4 = getelementptr inbounds %class.vec, %class.vec* %3, i32 0, i32 0
  store %class.lbool* null, %class.lbool** %4, align 8
  %5 = getelementptr inbounds %class.vec, %class.vec* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec, %class.vec* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseEC2Ev(%class.vec.1* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.1*, align 8
  store %class.vec.1* %0, %class.vec.1** %2, align 8
  %3 = load %class.vec.1*, %class.vec.1** %2, align 8
  %4 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 0
  store %class.Clause** null, %class.Clause*** %4, align 8
  %5 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIdEC2Ev(%class.vec.2* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.2*, align 8
  store %class.vec.2* %0, %class.vec.2** %2, align 8
  %3 = load %class.vec.2*, %class.vec.2** %2, align 8
  %4 = getelementptr inbounds %class.vec.2, %class.vec.2* %3, i32 0, i32 0
  store double* null, double** %4, align 8
  %5 = getelementptr inbounds %class.vec.2, %class.vec.2* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.2, %class.vec.2* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIS_IP6ClauseEEC2Ev(%class.vec.3* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.3*, align 8
  store %class.vec.3* %0, %class.vec.3** %2, align 8
  %3 = load %class.vec.3*, %class.vec.3** %2, align 8
  %4 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 0
  store %class.vec.1* null, %class.vec.1** %4, align 8
  %5 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIcEC2Ev(%class.vec.4* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.4*, align 8
  store %class.vec.4* %0, %class.vec.4** %2, align 8
  %3 = load %class.vec.4*, %class.vec.4** %2, align 8
  %4 = getelementptr inbounds %class.vec.4, %class.vec.4* %3, i32 0, i32 0
  store i8* null, i8** %4, align 8
  %5 = getelementptr inbounds %class.vec.4, %class.vec.4* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.4, %class.vec.4* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiEC2Ev(%class.vec.5* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.vec.5*, align 8
  store %class.vec.5* %0, %class.vec.5** %2, align 8
  %3 = load %class.vec.5*, %class.vec.5** %2, align 8
  %4 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 0
  store i32* null, i32** %4, align 8
  %5 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6Solver10VarOrderLtC2ERK3vecIdE(%"struct.Solver::VarOrderLt"* %0, %class.vec.2* dereferenceable(16) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.Solver::VarOrderLt"*, align 8
  %4 = alloca %class.vec.2*, align 8
  store %"struct.Solver::VarOrderLt"* %0, %"struct.Solver::VarOrderLt"** %3, align 8
  store %class.vec.2* %1, %class.vec.2** %4, align 8
  %5 = load %"struct.Solver::VarOrderLt"*, %"struct.Solver::VarOrderLt"** %3, align 8
  %6 = getelementptr inbounds %"struct.Solver::VarOrderLt", %"struct.Solver::VarOrderLt"* %5, i32 0, i32 0
  %7 = load %class.vec.2*, %class.vec.2** %4, align 8
  store %class.vec.2* %7, %class.vec.2** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEEC2ERKS1_(%class.Heap* %0, %"struct.Solver::VarOrderLt"* dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca %"struct.Solver::VarOrderLt"*, align 8
  %5 = alloca i8*
  %6 = alloca i32
  store %class.Heap* %0, %class.Heap** %3, align 8
  store %"struct.Solver::VarOrderLt"* %1, %"struct.Solver::VarOrderLt"** %4, align 8
  %7 = load %class.Heap*, %class.Heap** %3, align 8
  %8 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 0
  %9 = load %"struct.Solver::VarOrderLt"*, %"struct.Solver::VarOrderLt"** %4, align 8
  %10 = bitcast %"struct.Solver::VarOrderLt"* %8 to i8*
  %11 = bitcast %"struct.Solver::VarOrderLt"* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false)
  %12 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  call void @_ZN3vecIiEC2Ev(%class.vec.5* %12)
  %13 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 2
  invoke void @_ZN3vecIiEC2Ev(%class.vec.5* %13)
          to label %14 unwind label %15

14:                                               ; preds = %2
  ret void

15:                                               ; preds = %2
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  store i8* %17, i8** %5, align 8
  %18 = extractvalue { i8*, i32 } %16, 1
  store i32 %18, i32* %6, align 4
  call void @_ZN3vecIiED2Ev(%class.vec.5* %12) #12
  br label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIcED2Ev(%class.vec.4* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.4*, align 8
  store %class.vec.4* %0, %class.vec.4** %2, align 8
  %3 = load %class.vec.4*, %class.vec.4** %2, align 8
  invoke void @_ZN3vecIcE5clearEb(%class.vec.4* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEED2Ev(%class.Heap* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.Heap*, align 8
  store %class.Heap* %0, %class.Heap** %2, align 8
  %3 = load %class.Heap*, %class.Heap** %2, align 8
  %4 = getelementptr inbounds %class.Heap, %class.Heap* %3, i32 0, i32 2
  call void @_ZN3vecIiED2Ev(%class.vec.5* %4) #12
  %5 = getelementptr inbounds %class.Heap, %class.Heap* %3, i32 0, i32 1
  call void @_ZN3vecIiED2Ev(%class.vec.5* %5) #12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiED2Ev(%class.vec.5* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.5*, align 8
  store %class.vec.5* %0, %class.vec.5** %2, align 8
  %3 = load %class.vec.5*, %class.vec.5** %2, align 8
  invoke void @_ZN3vecIiE5clearEb(%class.vec.5* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.1*, align 8
  store %class.vec.1* %0, %class.vec.1** %2, align 8
  %3 = load %class.vec.1*, %class.vec.1** %2, align 8
  invoke void @_ZN3vecIP6ClauseE5clearEb(%class.vec.1* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIS_IP6ClauseEED2Ev(%class.vec.3* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.3*, align 8
  store %class.vec.3* %0, %class.vec.3** %2, align 8
  %3 = load %class.vec.3*, %class.vec.3** %2, align 8
  invoke void @_ZN3vecIS_IP6ClauseEE5clearEb(%class.vec.3* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIdED2Ev(%class.vec.2* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec.2*, align 8
  store %class.vec.2* %0, %class.vec.2** %2, align 8
  %3 = load %class.vec.2*, %class.vec.2** %2, align 8
  invoke void @_ZN3vecIdE5clearEb(%class.vec.2* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI5lboolED2Ev(%class.vec* %0) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.vec*, align 8
  store %class.vec* %0, %class.vec** %2, align 8
  %3 = load %class.vec*, %class.vec** %2, align 8
  invoke void @_ZN3vecI5lboolE5clearEb(%class.vec* %3, i1 zeroext true)
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  call void @__clang_call_terminate(i8* %7) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI5lboolE5clearEb(%class.vec* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec* %0, %class.vec** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec*, %class.vec** %3, align 8
  %8 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 0
  %9 = load %class.lbool*, %class.lbool** %8, align 8
  %10 = icmp ne %class.lbool* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 0
  %19 = load %class.lbool*, %class.lbool** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.lbool, %class.lbool* %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 0
  %32 = load %class.lbool*, %class.lbool** %31, align 8
  %33 = bitcast %class.lbool* %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 0
  store %class.lbool* null, %class.lbool** %34, align 8
  %35 = getelementptr inbounds %class.vec, %class.vec* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIdE5clearEb(%class.vec.2* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.2*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.2* %0, %class.vec.2** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.2*, %class.vec.2** %3, align 8
  %8 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 0
  %9 = load double*, double** %8, align 8
  %10 = icmp ne double* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 0
  %19 = load double*, double** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds double, double* %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 0
  %32 = load double*, double** %31, align 8
  %33 = bitcast double* %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 0
  store double* null, double** %34, align 8
  %35 = getelementptr inbounds %class.vec.2, %class.vec.2* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIS_IP6ClauseEE5clearEb(%class.vec.3* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.3*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.3* %0, %class.vec.3** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.3*, %class.vec.3** %3, align 8
  %8 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 0
  %9 = load %class.vec.1*, %class.vec.1** %8, align 8
  %10 = icmp ne %class.vec.1* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 0
  %19 = load %class.vec.1*, %class.vec.1** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.vec.1, %class.vec.1* %19, i64 %21
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %22) #12
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 0
  %32 = load %class.vec.1*, %class.vec.1** %31, align 8
  %33 = bitcast %class.vec.1* %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 0
  store %class.vec.1* null, %class.vec.1** %34, align 8
  %35 = getelementptr inbounds %class.vec.3, %class.vec.3* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseE5clearEb(%class.vec.1* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.1*, %class.vec.1** %3, align 8
  %8 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 0
  %9 = load %class.Clause**, %class.Clause*** %8, align 8
  %10 = icmp ne %class.Clause** %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 0
  %19 = load %class.Clause**, %class.Clause*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %class.Clause*, %class.Clause** %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 0
  %32 = load %class.Clause**, %class.Clause*** %31, align 8
  %33 = bitcast %class.Clause** %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 0
  store %class.Clause** null, %class.Clause*** %34, align 8
  %35 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiE5clearEb(%class.vec.5* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.5*, %class.vec.5** %3, align 8
  %8 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  call void @free(i8* %33) #12
  %34 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 0
  store i32* null, i32** %34, align 8
  %35 = getelementptr inbounds %class.vec.5, %class.vec.5* %7, i32 0, i32 2
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %26
  br label %37

37:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIcE5clearEb(%class.vec.4* %0, i1 zeroext %1) #1 comdat align 2 {
  %3 = alloca %class.vec.4*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %class.vec.4* %0, %class.vec.4** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.4*, %class.vec.4** %3, align 8
  %8 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i32, i32* %5, align 4
  %14 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %12

26:                                               ; preds = %12
  %27 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = load i8, i8* %4, align 1
  %29 = trunc i8 %28 to i1
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  call void @free(i8* %32) #12
  %33 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = getelementptr inbounds %class.vec.4, %class.vec.4* %7, i32 0, i32 2
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %26
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @_ZN6SolverD2Ev(%class.Solver* %0) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*
  %5 = alloca i32
  %6 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %2, align 8
  %7 = load %class.Solver*, %class.Solver** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %11 = invoke i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %10)
          to label %12 unwind label %24

12:                                               ; preds = %8
  %13 = icmp slt i32 %9, %11
  br i1 %13, label %14, label %47

14:                                               ; preds = %12
  %15 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %16 = load i32, i32* %3, align 4
  %17 = invoke dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %15, i32 %16)
          to label %18 unwind label %24

18:                                               ; preds = %14
  %19 = load %class.Clause*, %class.Clause** %17, align 8
  %20 = bitcast %class.Clause* %19 to i8*
  call void @free(i8* %20) #12
  br label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %8

24:                                               ; preds = %54, %48, %14, %8
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  store i8* %26, i8** %4, align 8
  %27 = extractvalue { i8*, i32 } %25, 1
  store i32 %27, i32* %5, align 4
  %28 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 46
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %28) #12
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 45
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %29) #12
  %30 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 44
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %30) #12
  %31 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 43
  call void @_ZN3vecIcED2Ev(%class.vec.4* %31) #12
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 39
  call void @_ZN4HeapIN6Solver10VarOrderLtEED2Ev(%class.Heap* %32) #12
  %33 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 38
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %33) #12
  %34 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 34
  call void @_ZN3vecIiED2Ev(%class.vec.5* %34) #12
  %35 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 33
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %35) #12
  %36 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 32
  call void @_ZN3vecIiED2Ev(%class.vec.5* %36) #12
  %37 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 31
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %37) #12
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 30
  call void @_ZN3vecIcED2Ev(%class.vec.4* %38) #12
  %39 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 29
  call void @_ZN3vecIcED2Ev(%class.vec.4* %39) #12
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 28
  call void @_ZN3vecIcED2Ev(%class.vec.4* %40) #12
  %41 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 27
  call void @_ZN3vecIS_IP6ClauseEED2Ev(%class.vec.3* %41) #12
  %42 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 25
  call void @_ZN3vecIdED2Ev(%class.vec.2* %42) #12
  %43 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %43) #12
  %44 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 22
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %44) #12
  %45 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 1
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %45) #12
  %46 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 0
  call void @_ZN3vecI5lboolED2Ev(%class.vec* %46) #12
  br label %84

47:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %61, %47
  %49 = load i32, i32* %6, align 4
  %50 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 22
  %51 = invoke i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %50)
          to label %52 unwind label %24

52:                                               ; preds = %48
  %53 = icmp slt i32 %49, %51
  br i1 %53, label %54, label %64

54:                                               ; preds = %52
  %55 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 22
  %56 = load i32, i32* %6, align 4
  %57 = invoke dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %55, i32 %56)
          to label %58 unwind label %24

58:                                               ; preds = %54
  %59 = load %class.Clause*, %class.Clause** %57, align 8
  %60 = bitcast %class.Clause* %59 to i8*
  call void @free(i8* %60) #12
  br label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %48

64:                                               ; preds = %52
  %65 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 46
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %65) #12
  %66 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 45
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %66) #12
  %67 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 44
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %67) #12
  %68 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 43
  call void @_ZN3vecIcED2Ev(%class.vec.4* %68) #12
  %69 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 39
  call void @_ZN4HeapIN6Solver10VarOrderLtEED2Ev(%class.Heap* %69) #12
  %70 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 38
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %70) #12
  %71 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 34
  call void @_ZN3vecIiED2Ev(%class.vec.5* %71) #12
  %72 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 33
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %72) #12
  %73 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 32
  call void @_ZN3vecIiED2Ev(%class.vec.5* %73) #12
  %74 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 31
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %74) #12
  %75 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 30
  call void @_ZN3vecIcED2Ev(%class.vec.4* %75) #12
  %76 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 29
  call void @_ZN3vecIcED2Ev(%class.vec.4* %76) #12
  %77 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 28
  call void @_ZN3vecIcED2Ev(%class.vec.4* %77) #12
  %78 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 27
  call void @_ZN3vecIS_IP6ClauseEED2Ev(%class.vec.3* %78) #12
  %79 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 25
  call void @_ZN3vecIdED2Ev(%class.vec.2* %79) #12
  %80 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %80) #12
  %81 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 22
  call void @_ZN3vecIP6ClauseED2Ev(%class.vec.1* %81) #12
  %82 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 1
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %82) #12
  %83 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 0
  call void @_ZN3vecI5lboolED2Ev(%class.vec* %83) #12
  ret void

84:                                               ; preds = %24
  %85 = load i8*, i8** %4, align 8
  call void @__clang_call_terminate(i8* %85) #15
  unreachable
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.1*, align 8
  store %class.vec.1* %0, %class.vec.1** %2, align 8
  %3 = load %class.vec.1*, %class.vec.1** %2, align 8
  %4 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.1*, %class.vec.1** %3, align 8
  %6 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 0
  %7 = load %class.Clause**, %class.Clause*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Clause*, %class.Clause** %7, i64 %9
  ret %class.Clause** %10
}

; Function Attrs: noinline uwtable
define dso_local i32 @_ZN6Solver6newVarEbb(%class.Solver* %0, i1 zeroext %1, i1 zeroext %2) #0 align 2 {
  %4 = alloca %class.Solver*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %class.Clause*, align 8
  %9 = alloca i8, align 1
  %10 = alloca %class.lbool, align 1
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %class.Solver* %0, %class.Solver** %4, align 8
  %16 = zext i1 %1 to i8
  store i8 %16, i8* %5, align 1
  %17 = zext i1 %2 to i8
  store i8 %17, i8* %6, align 1
  %18 = load %class.Solver*, %class.Solver** %4, align 8
  %19 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %18)
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 27
  call void @_ZN3vecIS_IP6ClauseEE4pushEv(%class.vec.3* %20)
  %21 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 27
  call void @_ZN3vecIS_IP6ClauseEE4pushEv(%class.vec.3* %21)
  %22 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 33
  store %class.Clause* null, %class.Clause** %8, align 8
  call void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %22, %class.Clause** dereferenceable(8) %8)
  %23 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 28
  %24 = bitcast %class.lbool* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %25 = getelementptr inbounds %class.lbool, %class.lbool* %10, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @_Z5toInt5lbool(i8 %26)
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %9, align 1
  call void @_ZN3vecIcE4pushERKc(%class.vec.4* %23, i8* dereferenceable(1) %9)
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 34
  store i32 -1, i32* %11, align 4
  call void @_ZN3vecIiE4pushERKi(%class.vec.5* %29, i32* dereferenceable(4) %11)
  %30 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 25
  store double 0.000000e+00, double* %12, align 8
  call void @_ZN3vecIdE4pushERKd(%class.vec.2* %30, double* dereferenceable(8) %12)
  %31 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 43
  store i8 0, i8* %13, align 1
  call void @_ZN3vecIcE4pushERKc(%class.vec.4* %31, i8* dereferenceable(1) %13)
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 29
  %33 = load i8, i8* %5, align 1
  %34 = trunc i8 %33 to i1
  %35 = zext i1 %34 to i8
  store i8 %35, i8* %14, align 1
  call void @_ZN3vecIcE4pushERKc(%class.vec.4* %32, i8* dereferenceable(1) %14)
  %36 = getelementptr inbounds %class.Solver, %class.Solver* %18, i32 0, i32 30
  %37 = load i8, i8* %6, align 1
  %38 = trunc i8 %37 to i1
  %39 = zext i1 %38 to i8
  store i8 %39, i8* %15, align 1
  call void @_ZN3vecIcE4pushERKc(%class.vec.4* %36, i8* dereferenceable(1) %15)
  %40 = load i32, i32* %7, align 4
  call void @_ZN6Solver14insertVarOrderEi(%class.Solver* %18, i32 %40)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIS_IP6ClauseEE4pushEv(%class.vec.3* %0) #0 comdat align 2 {
  %2 = alloca %class.vec.3*, align 8
  store %class.vec.3* %0, %class.vec.3** %2, align 8
  %3 = load %class.vec.3*, %class.vec.3** %2, align 8
  %4 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = ashr i32 %13, 1
  %15 = call i32 @_ZN3vecIS_IP6ClauseEE4imaxEii(i32 2, i32 %14)
  %16 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 0
  %18 = load %class.vec.1*, %class.vec.1** %17, align 8
  %19 = bitcast %class.vec.1* %18 to i8*
  %20 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 16
  %24 = call i8* @realloc(i8* %19, i64 %23) #12
  %25 = bitcast i8* %24 to %class.vec.1*
  %26 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 0
  store %class.vec.1* %25, %class.vec.1** %26, align 8
  br label %27

27:                                               ; preds = %9, %1
  %28 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 0
  %29 = load %class.vec.1*, %class.vec.1** %28, align 8
  %30 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %class.vec.1, %class.vec.1* %29, i64 %32
  %34 = bitcast %class.vec.1* %33 to i8*
  %35 = bitcast i8* %34 to %class.vec.1*
  call void @_ZN3vecIP6ClauseEC2Ev(%class.vec.1* %35)
  %36 = getelementptr inbounds %class.vec.3, %class.vec.3* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %0, %class.Clause** dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca %class.Clause**, align 8
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store %class.Clause** %1, %class.Clause*** %4, align 8
  %5 = load %class.vec.1*, %class.vec.1** %3, align 8
  %6 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 1
  %16 = ashr i32 %15, 1
  %17 = call i32 @_ZN3vecIP6ClauseE4imaxEii(i32 2, i32 %16)
  %18 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 0
  %20 = load %class.Clause**, %class.Clause*** %19, align 8
  %21 = bitcast %class.Clause** %20 to i8*
  %22 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @realloc(i8* %21, i64 %25) #12
  %27 = bitcast i8* %26 to %class.Clause**
  %28 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 0
  store %class.Clause** %27, %class.Clause*** %28, align 8
  br label %29

29:                                               ; preds = %11, %2
  %30 = load %class.Clause**, %class.Clause*** %4, align 8
  %31 = load %class.Clause*, %class.Clause** %30, align 8
  %32 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 0
  %33 = load %class.Clause**, %class.Clause*** %32, align 8
  %34 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds %class.Clause*, %class.Clause** %33, i64 %37
  store %class.Clause* %31, %class.Clause** %38, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_Z5toInt5lbool(i8 %0) #0 comdat {
  %2 = alloca %class.lbool, align 1
  %3 = getelementptr inbounds %class.lbool, %class.lbool* %2, i32 0, i32 0
  store i8 %0, i8* %3, align 1
  %4 = call i32 @_ZNK5lbool5toIntEv(%class.lbool* %2)
  ret i32 %4
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIcE4pushERKc(%class.vec.4* %0, i8* dereferenceable(1) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.4*, align 8
  %4 = alloca i8*, align 8
  store %class.vec.4* %0, %class.vec.4** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %class.vec.4*, %class.vec.4** %3, align 8
  %6 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 1
  %16 = ashr i32 %15, 1
  %17 = call i32 @_ZN3vecIcE4imaxEii(i32 2, i32 %16)
  %18 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 1
  %25 = call i8* @realloc(i8* %20, i64 %24) #12
  %26 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 0
  store i8* %25, i8** %26, align 8
  br label %27

27:                                               ; preds = %11, %2
  %28 = load i8*, i8** %4, align 8
  %29 = load i8, i8* %28, align 1
  %30 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %31, i64 %35
  store i8 %29, i8* %36, align 1
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIiE4pushERKi(%class.vec.5* %0, i32* dereferenceable(4) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i32*, align 8
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %class.vec.5*, %class.vec.5** %3, align 8
  %6 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 1
  %16 = ashr i32 %15, 1
  %17 = call i32 @_ZN3vecIiE4imaxEii(i32 2, i32 %16)
  %18 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to i8*
  %22 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = call i8* @realloc(i8* %21, i64 %25) #12
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  store i32* %27, i32** %28, align 8
  br label %29

29:                                               ; preds = %11, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32 %31, i32* %38, align 4
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIdE4pushERKd(%class.vec.2* %0, double* dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.2*, align 8
  %4 = alloca double*, align 8
  store %class.vec.2* %0, %class.vec.2** %3, align 8
  store double* %1, double** %4, align 8
  %5 = load %class.vec.2*, %class.vec.2** %3, align 8
  %6 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %7, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 3
  %15 = add nsw i32 %14, 1
  %16 = ashr i32 %15, 1
  %17 = call i32 @_ZN3vecIdE4imaxEii(i32 2, i32 %16)
  %18 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 0
  %20 = load double*, double** %19, align 8
  %21 = bitcast double* %20 to i8*
  %22 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @realloc(i8* %21, i64 %25) #12
  %27 = bitcast i8* %26 to double*
  %28 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 0
  store double* %27, double** %28, align 8
  br label %29

29:                                               ; preds = %11, %2
  %30 = load double*, double** %4, align 8
  %31 = load double, double* %30, align 8
  %32 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 0
  %33 = load double*, double** %32, align 8
  %34 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds double, double* %33, i64 %37
  store double %31, double* %38, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver14insertVarOrderEi(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Solver*, %class.Solver** %3, align 8
  %6 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 39
  %7 = load i32, i32* %4, align 4
  %8 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi(%class.Heap* %6, i32 %7)
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 30
  %11 = load i32, i32* %4, align 4
  %12 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %10, i32 %11)
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 39
  %17 = load i32, i32* %4, align 4
  call void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(%class.Heap* %16, i32 %17)
  br label %18

18:                                               ; preds = %15, %9, %2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Heap*, %class.Heap** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 2
  %8 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 2
  %12 = load i32, i32* %4, align 4
  %13 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %11, i32 %12)
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 0
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ false, %2 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.4*, align 8
  %4 = alloca i32, align 4
  store %class.vec.4* %0, %class.vec.4** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.4*, %class.vec.4** %3, align 8
  %6 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  ret i8* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.Heap*, %class.Heap** %3, align 8
  %7 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 2
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %8, 1
  store i32 -1, i32* %5, align 4
  call void @_ZN3vecIiE6growToEiRKi(%class.vec.5* %7, i32 %9, i32* dereferenceable(4) %5)
  %10 = load i32, i32* %4, align 4
  %11 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi(%class.Heap* %6, i32 %10)
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28.18, i64 0, i64 0), i32 91, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE6insertEi, i64 0, i64 0)) #15
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %18 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %17)
  %19 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 2
  %20 = load i32, i32* %4, align 4
  %21 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %19, i32 %20)
  store i32 %18, i32* %21, align 4
  %22 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  call void @_ZN3vecIiE4pushERKi(%class.vec.5* %22, i32* dereferenceable(4) %4)
  %23 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 2
  %24 = load i32, i32* %4, align 4
  %25 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %23, i32 %24)
  %26 = load i32, i32* %25, align 4
  call void @_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi(%class.Heap* %6, i32 %26)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecIiE6growToEiRKi(%class.vec.5* %0, i32 %1, i32* dereferenceable(4) %2) #0 comdat align 2 {
  %4 = alloca %class.vec.5*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %class.vec.5*, %class.vec.5** %4, align 8
  %9 = getelementptr inbounds %class.vec.5, %class.vec.5* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %38

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  call void @_ZN3vecIiE4growEi(%class.vec.5* %8, i32 %15)
  %16 = getelementptr inbounds %class.vec.5, %class.vec.5* %8, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %14
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = getelementptr inbounds %class.vec.5, %class.vec.5* %8, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to i32*
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %5, align 4
  %37 = getelementptr inbounds %class.vec.5, %class.vec.5* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %13
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.5*, align 8
  store %class.vec.5* %0, %class.vec.5** %2, align 8
  %3 = load %class.vec.5*, %class.vec.5** %2, align 8
  %4 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.5*, %class.vec.5** %3, align 8
  %6 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  ret i32* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.Heap*, %class.Heap** %3, align 8
  %7 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %8 = load i32, i32* %4, align 4
  %9 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %7, i32 %8)
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 0
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE6parentEi(i32 %18)
  %20 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %17, i32 %19)
  %21 = load i32, i32* %20, align 4
  %22 = call zeroext i1 @_ZNK6Solver10VarOrderLtclEii(%"struct.Solver::VarOrderLt"* %15, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %14, %11
  %24 = phi i1 [ false, %11 ], [ %22, %14 ]
  br i1 %24, label %25, label %43

25:                                               ; preds = %23
  %26 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE6parentEi(i32 %27)
  %29 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %26, i32 %28)
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %31, i32 %32)
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 2
  %36 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %37 = load i32, i32* %4, align 4
  %38 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %36, i32 %37)
  %39 = load i32, i32* %38, align 4
  %40 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %35, i32 %39)
  store i32 %34, i32* %40, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE6parentEi(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %11

43:                                               ; preds = %23
  %44 = load i32, i32* %5, align 4
  %45 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 1
  %46 = load i32, i32* %4, align 4
  %47 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %45, i32 %46)
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %class.Heap, %class.Heap* %6, i32 0, i32 2
  %50 = load i32, i32* %5, align 4
  %51 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %49, i32 %50)
  store i32 %48, i32* %51, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN4HeapIN6Solver10VarOrderLtEE6parentEi(i32 %0) #1 comdat align 2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub nsw i32 %3, 1
  %5 = ashr i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK6Solver10VarOrderLtclEii(%"struct.Solver::VarOrderLt"* %0, i32 %1, i32 %2) #0 comdat align 2 {
  %4 = alloca %"struct.Solver::VarOrderLt"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %"struct.Solver::VarOrderLt"* %0, %"struct.Solver::VarOrderLt"** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %"struct.Solver::VarOrderLt"*, %"struct.Solver::VarOrderLt"** %4, align 8
  %8 = getelementptr inbounds %"struct.Solver::VarOrderLt", %"struct.Solver::VarOrderLt"* %7, i32 0, i32 0
  %9 = load %class.vec.2*, %class.vec.2** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call dereferenceable(8) double* @_ZNK3vecIdEixEi(%class.vec.2* %9, i32 %10)
  %12 = load double, double* %11, align 8
  %13 = getelementptr inbounds %"struct.Solver::VarOrderLt", %"struct.Solver::VarOrderLt"* %7, i32 0, i32 0
  %14 = load %class.vec.2*, %class.vec.2** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call dereferenceable(8) double* @_ZNK3vecIdEixEi(%class.vec.2* %14, i32 %15)
  %17 = load double, double* %16, align 8
  %18 = fcmp ogt double %12, %17
  ret i1 %18
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) double* @_ZNK3vecIdEixEi(%class.vec.2* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.2*, align 8
  %4 = alloca i32, align 4
  store %class.vec.2* %0, %class.vec.2** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.2*, %class.vec.2** %3, align 8
  %6 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  ret double* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiE4growEi(%class.vec.5* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.5*, %class.vec.5** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 2, %20 ]
  %23 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  br label %38

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %32, %24
  %26 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 1
  %31 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %25, label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %21
  %39 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = bitcast i32* %40 to i8*
  %42 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = call i8* @realloc(i8* %41, i64 %45) #12
  %47 = bitcast i8* %46 to i32*
  %48 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  store i32* %47, i32** %48, align 8
  br label %49

49:                                               ; preds = %38, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.5*, %class.vec.5** %3, align 8
  %6 = getelementptr inbounds %class.vec.5, %class.vec.5* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  ret i32* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecIdE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecIiE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecIcE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK5lbool5toIntEv(%class.lbool* %0) #1 comdat align 2 {
  %2 = alloca %class.lbool*, align 8
  store %class.lbool* %0, %class.lbool** %2, align 8
  %3 = load %class.lbool*, %class.lbool** %2, align 8
  %4 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecIP6ClauseE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN3vecIS_IP6ClauseEE4imaxEii(i32 %0, i32 %1) #1 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %6, %7
  %9 = ashr i32 %8, 31
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = xor i32 %14, -1
  %16 = and i32 %13, %15
  %17 = add nsw i32 %12, %16
  ret i32 %17
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_ZN6Solver9addClauseER3vecI3LitE(%class.Solver* %0, %class.vec.0* dereferenceable(16) %1) #0 align 2 {
  %3 = alloca i1, align 1
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.vec.0*, align 8
  %6 = alloca %class.Lit, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.lbool, align 1
  %10 = alloca %class.Lit, align 4
  %11 = alloca %class.lbool, align 1
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Lit, align 4
  %14 = alloca %class.lbool, align 1
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.lbool, align 1
  %17 = alloca %class.Lit, align 4
  %18 = alloca %class.lbool, align 1
  %19 = alloca %class.Lit, align 4
  %20 = alloca %class.lbool, align 1
  %21 = alloca %class.Lit, align 4
  %22 = alloca %class.Clause*, align 8
  store %class.Solver* %0, %class.Solver** %4, align 8
  store %class.vec.0* %1, %class.vec.0** %5, align 8
  %23 = load %class.Solver*, %class.Solver** %4, align 8
  %24 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %29

27:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__._ZN6Solver9addClauseER3vecI3LitE, i64 0, i64 0)) #15
  unreachable

28:                                               ; No predecessors!
  br label %29

29:                                               ; preds = %28, %26
  %30 = getelementptr inbounds %class.Solver, %class.Solver* %23, i32 0, i32 21
  %31 = load i8, i8* %30, align 8
  %32 = trunc i8 %31 to i1
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  store i1 false, i1* %3, align 1
  br label %163

34:                                               ; preds = %29
  %35 = load %class.vec.0*, %class.vec.0** %5, align 8
  call void @_Z4sortI3LitEvR3vecIT_E(%class.vec.0* dereferenceable(16) %35)
  call void @_ZN3LitC2Ev(%class.Lit* %6)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %36 = bitcast %class.Lit* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  br label %37

37:                                               ; preds = %111, %34
  %38 = load i32, i32* %7, align 4
  %39 = load %class.vec.0*, %class.vec.0** %5, align 8
  %40 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %114

42:                                               ; preds = %37
  %43 = load %class.vec.0*, %class.vec.0** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %43, i32 %44)
  %46 = bitcast %class.Lit* %10 to i8*
  %47 = bitcast %class.Lit* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %class.Lit, %class.Lit* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %23, i32 %49)
  %51 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  store i8 %50, i8* %51, align 1
  %52 = bitcast %class.lbool* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %52, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %53 = getelementptr inbounds %class.lbool, %class.lbool* %11, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %9, i8 %54)
  br i1 %55, label %69, label %56

56:                                               ; preds = %42
  %57 = load %class.vec.0*, %class.vec.0** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %57, i32 %58)
  %60 = bitcast %class.Lit* %13 to i8*
  %61 = bitcast %class.Lit* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = getelementptr inbounds %class.Lit, %class.Lit* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @_Zco3Lit(i32 %63)
  %65 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call zeroext i1 @_ZNK3LiteqES_(%class.Lit* %59, i32 %67)
  br label %69

69:                                               ; preds = %56, %42
  %70 = phi i1 [ true, %42 ], [ %68, %56 ]
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  store i1 true, i1* %3, align 1
  br label %163

72:                                               ; preds = %69
  %73 = load %class.vec.0*, %class.vec.0** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %73, i32 %74)
  %76 = bitcast %class.Lit* %15 to i8*
  %77 = bitcast %class.Lit* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = getelementptr inbounds %class.Lit, %class.Lit* %15, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %23, i32 %79)
  %81 = getelementptr inbounds %class.lbool, %class.lbool* %14, i32 0, i32 0
  store i8 %80, i8* %81, align 1
  %82 = bitcast %class.lbool* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %82, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %83 = getelementptr inbounds %class.lbool, %class.lbool* %16, i32 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = call zeroext i1 @_ZNK5lboolneES_(%class.lbool* %14, i8 %84)
  br i1 %85, label %86, label %95

86:                                               ; preds = %72
  %87 = load %class.vec.0*, %class.vec.0** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %87, i32 %88)
  %90 = bitcast %class.Lit* %17 to i8*
  %91 = bitcast %class.Lit* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = getelementptr inbounds %class.Lit, %class.Lit* %17, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call zeroext i1 @_ZNK3LitneES_(%class.Lit* %89, i32 %93)
  br label %95

95:                                               ; preds = %86, %72
  %96 = phi i1 [ false, %72 ], [ %94, %86 ]
  br i1 %96, label %97, label %109

97:                                               ; preds = %95
  %98 = load %class.vec.0*, %class.vec.0** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %98, i32 %99)
  %101 = bitcast %class.Lit* %6 to i8*
  %102 = bitcast %class.Lit* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  %103 = load %class.vec.0*, %class.vec.0** %5, align 8
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %103, i32 %104)
  %107 = bitcast %class.Lit* %106 to i8*
  %108 = bitcast %class.Lit* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 4, i1 false)
  br label %109

109:                                              ; preds = %97, %95
  br label %110

110:                                              ; preds = %109
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %37

114:                                              ; preds = %37
  %115 = load %class.vec.0*, %class.vec.0** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  call void @_ZN3vecI3LitE6shrinkEi(%class.vec.0* %115, i32 %118)
  br label %119

119:                                              ; preds = %114
  %120 = load %class.vec.0*, %class.vec.0** %5, align 8
  %121 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %119
  %124 = getelementptr inbounds %class.Solver, %class.Solver* %23, i32 0, i32 21
  store i8 0, i8* %124, align 8
  store i1 false, i1* %3, align 1
  br label %163

125:                                              ; preds = %119
  %126 = load %class.vec.0*, %class.vec.0** %5, align 8
  %127 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %126)
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %156

129:                                              ; preds = %125
  %130 = load %class.vec.0*, %class.vec.0** %5, align 8
  %131 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %130, i32 0)
  %132 = bitcast %class.Lit* %19 to i8*
  %133 = bitcast %class.Lit* %131 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 4, i1 false)
  %134 = getelementptr inbounds %class.Lit, %class.Lit* %19, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %23, i32 %135)
  %137 = getelementptr inbounds %class.lbool, %class.lbool* %18, i32 0, i32 0
  store i8 %136, i8* %137, align 1
  %138 = bitcast %class.lbool* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %138, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %139 = getelementptr inbounds %class.lbool, %class.lbool* %20, i32 0, i32 0
  %140 = load i8, i8* %139, align 1
  %141 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %18, i8 %140)
  br i1 %141, label %142, label %143

142:                                              ; preds = %129
  br label %145

143:                                              ; preds = %129
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6.58, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 113, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__._ZN6Solver9addClauseER3vecI3LitE, i64 0, i64 0)) #15
  unreachable

144:                                              ; No predecessors!
  br label %145

145:                                              ; preds = %144, %142
  %146 = load %class.vec.0*, %class.vec.0** %5, align 8
  %147 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %146, i32 0)
  %148 = bitcast %class.Lit* %21 to i8*
  %149 = bitcast %class.Lit* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %148, i8* align 4 %149, i64 4, i1 false)
  %150 = getelementptr inbounds %class.Lit, %class.Lit* %21, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %23, i32 %151, %class.Clause* null)
  %152 = call %class.Clause* @_ZN6Solver9propagateEv(%class.Solver* %23)
  %153 = icmp eq %class.Clause* %152, null
  %154 = getelementptr inbounds %class.Solver, %class.Solver* %23, i32 0, i32 21
  %155 = zext i1 %153 to i8
  store i8 %155, i8* %154, align 8
  store i1 %153, i1* %3, align 1
  br label %163

156:                                              ; preds = %125
  %157 = load %class.vec.0*, %class.vec.0** %5, align 8
  %158 = call %class.Clause* @_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b(%class.vec.0* dereferenceable(16) %157, i1 zeroext false)
  store %class.Clause* %158, %class.Clause** %22, align 8
  %159 = getelementptr inbounds %class.Solver, %class.Solver* %23, i32 0, i32 22
  call void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %159, %class.Clause** dereferenceable(8) %22)
  %160 = load %class.Clause*, %class.Clause** %22, align 8
  call void @_ZN6Solver12attachClauseER6Clause(%class.Solver* %23, %class.Clause* dereferenceable(8) %160)
  br label %161

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161
  store i1 true, i1* %3, align 1
  br label %163

163:                                              ; preds = %162, %145, %123, %71, %33
  %164 = load i1, i1* %3, align 1
  ret i1 %164
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %0) #0 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 32
  %5 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %4)
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z4sortI3LitEvR3vecIT_E(%class.vec.0* dereferenceable(16) %0) #0 comdat {
  %2 = alloca %class.vec.0*, align 8
  %3 = alloca %class.lbool, align 1
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %4 = load %class.vec.0*, %class.vec.0** %2, align 8
  call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvR3vecIT_ET0_(%class.vec.0* dereferenceable(16) %4)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.0*, %class.vec.0** %3, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  %7 = load %class.Lit*, %class.Lit** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Lit, %class.Lit* %7, i64 %9
  ret %class.Lit* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.lbool, align 1
  %7 = alloca %class.Lit, align 4
  %8 = alloca %class.Lit, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  store i32 %1, i32* %9, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  %10 = load %class.Solver*, %class.Solver** %5, align 8
  %11 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 28
  %12 = bitcast %class.Lit* %7 to i8*
  %13 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 4, i1 false)
  %14 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_Z3var3Lit(i32 %15)
  %17 = call dereferenceable(1) i8* @_ZNK3vecIcEixEi(%class.vec.4* %11, i32 %16)
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i8 @_Z7toLbooli(i32 %19)
  %21 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  store i8 %20, i8* %21, align 1
  %22 = bitcast %class.Lit* %8 to i8*
  %23 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call zeroext i1 @_Z4sign3Lit(i32 %25)
  %27 = call i8 @_ZNK5lbooleoEb(%class.lbool* %6, i1 zeroext %26)
  %28 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  ret i8 %30
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3LiteqES_(%class.Lit* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.Lit*, align 8
  %5 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %class.Lit* %0, %class.Lit** %4, align 8
  %6 = load %class.Lit*, %class.Lit** %4, align 8
  %7 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %8, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3LitneES_(%class.Lit* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.Lit*, align 8
  %5 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %class.Lit* %0, %class.Lit** %4, align 8
  %6 = load %class.Lit*, %class.Lit** %4, align 8
  %7 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %8, %10
  ret i1 %11
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE6shrinkEi(%class.vec.0* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.vec.0*, %class.vec.0** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30.61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31.62, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__._ZN3vecI3LitE6shrinkEi, i64 0, i64 0)) #15
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 0
  %24 = load %class.Lit*, %class.Lit** %23, align 8
  %25 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %class.Lit, %class.Lit* %24, i64 %27
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %0, i32 %1, %class.Clause* %2) #0 align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.Clause*, align 8
  %7 = alloca %class.lbool, align 1
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.lbool, align 1
  %10 = alloca %class.lbool, align 1
  %11 = alloca %class.Lit, align 4
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Lit, align 4
  %14 = alloca %class.Lit, align 4
  %15 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  store i32 %1, i32* %15, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  store %class.Clause* %2, %class.Clause** %6, align 8
  %16 = load %class.Solver*, %class.Solver** %5, align 8
  %17 = bitcast %class.Lit* %8 to i8*
  %18 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %16, i32 %20)
  %22 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  store i8 %21, i8* %22, align 1
  %23 = bitcast %class.lbool* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %24 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %7, i8 %25)
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %30

28:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14.63, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 383, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__PRETTY_FUNCTION__._ZN6Solver16uncheckedEnqueueE3LitP6Clause, i64 0, i64 0)) #15
  unreachable

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %27
  %31 = bitcast %class.Lit* %11 to i8*
  %32 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call zeroext i1 @_Z4sign3Lit(i32 %34)
  %36 = xor i1 %35, true
  call void @_ZN5lboolC2Eb(%class.lbool* %10, i1 zeroext %36)
  %37 = getelementptr inbounds %class.lbool, %class.lbool* %10, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @_Z5toInt5lbool(i8 %38)
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 28
  %42 = bitcast %class.Lit* %12 to i8*
  %43 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @_Z3var3Lit(i32 %45)
  %47 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %41, i32 %46)
  store i8 %40, i8* %47, align 1
  %48 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %16)
  %49 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 34
  %50 = bitcast %class.Lit* %13 to i8*
  %51 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = getelementptr inbounds %class.Lit, %class.Lit* %13, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @_Z3var3Lit(i32 %53)
  %55 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %49, i32 %54)
  store i32 %48, i32* %55, align 4
  %56 = load %class.Clause*, %class.Clause** %6, align 8
  %57 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 33
  %58 = bitcast %class.Lit* %14 to i8*
  %59 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @_Z3var3Lit(i32 %61)
  %63 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %57, i32 %62)
  store %class.Clause* %56, %class.Clause** %63, align 8
  %64 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 31
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %64, %class.Lit* dereferenceable(4) %4)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local %class.Clause* @_ZN6Solver9propagateEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca %class.Clause*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.vec.1*, align 8
  %7 = alloca %class.Lit, align 4
  %8 = alloca %class.Clause**, align 8
  %9 = alloca %class.Clause**, align 8
  %10 = alloca %class.Clause**, align 8
  %11 = alloca %class.Clause*, align 8
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Lit, align 4
  %14 = alloca %class.Lit, align 4
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.Lit, align 4
  %17 = alloca %class.lbool, align 1
  %18 = alloca %class.Lit, align 4
  %19 = alloca %class.lbool, align 1
  %20 = alloca i32, align 4
  %21 = alloca %class.lbool, align 1
  %22 = alloca %class.Lit, align 4
  %23 = alloca %class.lbool, align 1
  %24 = alloca %class.Lit, align 4
  %25 = alloca %class.Lit, align 4
  %26 = alloca %class.Clause*, align 8
  %27 = alloca %class.lbool, align 1
  %28 = alloca %class.Lit, align 4
  %29 = alloca %class.lbool, align 1
  %30 = alloca %class.Lit, align 4
  store %class.Solver* %0, %class.Solver** %2, align 8
  %31 = load %class.Solver*, %class.Solver** %2, align 8
  store %class.Clause* null, %class.Clause** %3, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %214, %1
  %33 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 35
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 31
  %36 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %223

38:                                               ; preds = %32
  %39 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 31
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 35
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %39, i32 %41)
  %44 = bitcast %class.Lit* %5 to i8*
  %45 = bitcast %class.Lit* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 4 %45, i64 4, i1 false)
  %46 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 27
  %47 = bitcast %class.Lit* %7 to i8*
  %48 = bitcast %class.Lit* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_Z5toInt3Lit(i32 %50)
  %52 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %46, i32 %51)
  store %class.vec.1* %52, %class.vec.1** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  %55 = load %class.vec.1*, %class.vec.1** %6, align 8
  %56 = call %class.Clause** @_ZN3vecIP6ClauseEcvPS1_Ev(%class.vec.1* %55)
  store %class.Clause** %56, %class.Clause*** %9, align 8
  store %class.Clause** %56, %class.Clause*** %8, align 8
  %57 = load %class.Clause**, %class.Clause*** %8, align 8
  %58 = load %class.vec.1*, %class.vec.1** %6, align 8
  %59 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %class.Clause*, %class.Clause** %57, i64 %60
  store %class.Clause** %61, %class.Clause*** %10, align 8
  br label %62

62:                                               ; preds = %213, %38
  %63 = load %class.Clause**, %class.Clause*** %8, align 8
  %64 = load %class.Clause**, %class.Clause*** %10, align 8
  %65 = icmp ne %class.Clause** %63, %64
  br i1 %65, label %66, label %214

66:                                               ; preds = %62
  %67 = load %class.Clause**, %class.Clause*** %8, align 8
  %68 = getelementptr inbounds %class.Clause*, %class.Clause** %67, i32 1
  store %class.Clause** %68, %class.Clause*** %8, align 8
  %69 = load %class.Clause*, %class.Clause** %67, align 8
  store %class.Clause* %69, %class.Clause** %11, align 8
  %70 = bitcast %class.Lit* %13 to i8*
  %71 = bitcast %class.Lit* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = getelementptr inbounds %class.Lit, %class.Lit* %13, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_Zco3Lit(i32 %73)
  %75 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = load %class.Clause*, %class.Clause** %11, align 8
  %77 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %76, i32 0)
  %78 = bitcast %class.Lit* %14 to i8*
  %79 = bitcast %class.Lit* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call zeroext i1 @_ZNK3LiteqES_(%class.Lit* %77, i32 %81)
  br i1 %82, label %83, label %94

83:                                               ; preds = %66
  %84 = load %class.Clause*, %class.Clause** %11, align 8
  %85 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %84, i32 1)
  %86 = load %class.Clause*, %class.Clause** %11, align 8
  %87 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %86, i32 0)
  %88 = bitcast %class.Lit* %87 to i8*
  %89 = bitcast %class.Lit* %85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %88, i8* align 4 %89, i64 4, i1 false)
  %90 = load %class.Clause*, %class.Clause** %11, align 8
  %91 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %90, i32 1)
  %92 = bitcast %class.Lit* %91 to i8*
  %93 = bitcast %class.Lit* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %92, i8* align 4 %93, i64 4, i1 false)
  br label %94

94:                                               ; preds = %83, %66
  %95 = load %class.Clause*, %class.Clause** %11, align 8
  %96 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %95, i32 1)
  %97 = bitcast %class.Lit* %15 to i8*
  %98 = bitcast %class.Lit* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 4, i1 false)
  %99 = getelementptr inbounds %class.Lit, %class.Lit* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call zeroext i1 @_ZNK3LiteqES_(%class.Lit* %96, i32 %100)
  br i1 %101, label %102, label %103

102:                                              ; preds = %94
  br label %105

103:                                              ; preds = %94
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15.60, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 421, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__PRETTY_FUNCTION__._ZN6Solver9propagateEv, i64 0, i64 0)) #15
  unreachable

104:                                              ; No predecessors!
  br label %105

105:                                              ; preds = %104, %102
  %106 = load %class.Clause*, %class.Clause** %11, align 8
  %107 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %106, i32 0)
  %108 = bitcast %class.Lit* %16 to i8*
  %109 = bitcast %class.Lit* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 %109, i64 4, i1 false)
  %110 = bitcast %class.Lit* %18 to i8*
  %111 = bitcast %class.Lit* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = getelementptr inbounds %class.Lit, %class.Lit* %18, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %31, i32 %113)
  %115 = getelementptr inbounds %class.lbool, %class.lbool* %17, i32 0, i32 0
  store i8 %114, i8* %115, align 1
  %116 = bitcast %class.lbool* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %116, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %117 = getelementptr inbounds %class.lbool, %class.lbool* %19, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %17, i8 %118)
  br i1 %119, label %120, label %124

120:                                              ; preds = %105
  %121 = load %class.Clause*, %class.Clause** %11, align 8
  %122 = load %class.Clause**, %class.Clause*** %9, align 8
  %123 = getelementptr inbounds %class.Clause*, %class.Clause** %122, i32 1
  store %class.Clause** %123, %class.Clause*** %9, align 8
  store %class.Clause* %121, %class.Clause** %122, align 8
  br label %212

124:                                              ; preds = %105
  store i32 2, i32* %20, align 4
  br label %125

125:                                              ; preds = %172, %124
  %126 = load i32, i32* %20, align 4
  %127 = load %class.Clause*, %class.Clause** %11, align 8
  %128 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %127)
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %175

130:                                              ; preds = %125
  %131 = load %class.Clause*, %class.Clause** %11, align 8
  %132 = load i32, i32* %20, align 4
  %133 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %131, i32 %132)
  %134 = bitcast %class.Lit* %22 to i8*
  %135 = bitcast %class.Lit* %133 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %134, i8* align 4 %135, i64 4, i1 false)
  %136 = getelementptr inbounds %class.Lit, %class.Lit* %22, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %31, i32 %137)
  %139 = getelementptr inbounds %class.lbool, %class.lbool* %21, i32 0, i32 0
  store i8 %138, i8* %139, align 1
  %140 = bitcast %class.lbool* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %140, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %141 = getelementptr inbounds %class.lbool, %class.lbool* %23, i32 0, i32 0
  %142 = load i8, i8* %141, align 1
  %143 = call zeroext i1 @_ZNK5lboolneES_(%class.lbool* %21, i8 %142)
  br i1 %143, label %144, label %171

144:                                              ; preds = %130
  %145 = load %class.Clause*, %class.Clause** %11, align 8
  %146 = load i32, i32* %20, align 4
  %147 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %145, i32 %146)
  %148 = load %class.Clause*, %class.Clause** %11, align 8
  %149 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %148, i32 1)
  %150 = bitcast %class.Lit* %149 to i8*
  %151 = bitcast %class.Lit* %147 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %150, i8* align 4 %151, i64 4, i1 false)
  %152 = load %class.Clause*, %class.Clause** %11, align 8
  %153 = load i32, i32* %20, align 4
  %154 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %152, i32 %153)
  %155 = bitcast %class.Lit* %154 to i8*
  %156 = bitcast %class.Lit* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %155, i8* align 4 %156, i64 4, i1 false)
  %157 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 27
  %158 = load %class.Clause*, %class.Clause** %11, align 8
  %159 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %158, i32 1)
  %160 = bitcast %class.Lit* %25 to i8*
  %161 = bitcast %class.Lit* %159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %160, i8* align 4 %161, i64 4, i1 false)
  %162 = getelementptr inbounds %class.Lit, %class.Lit* %25, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @_Zco3Lit(i32 %163)
  %165 = getelementptr inbounds %class.Lit, %class.Lit* %24, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %class.Lit, %class.Lit* %24, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @_Z5toInt3Lit(i32 %167)
  %169 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %157, i32 %168)
  %170 = load %class.Clause*, %class.Clause** %11, align 8
  store %class.Clause* %170, %class.Clause** %26, align 8
  call void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %169, %class.Clause** dereferenceable(8) %26)
  br label %213

171:                                              ; preds = %130
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %20, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %20, align 4
  br label %125

175:                                              ; preds = %125
  %176 = load %class.Clause*, %class.Clause** %11, align 8
  %177 = load %class.Clause**, %class.Clause*** %9, align 8
  %178 = getelementptr inbounds %class.Clause*, %class.Clause** %177, i32 1
  store %class.Clause** %178, %class.Clause*** %9, align 8
  store %class.Clause* %176, %class.Clause** %177, align 8
  %179 = bitcast %class.Lit* %28 to i8*
  %180 = bitcast %class.Lit* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %179, i8* align 4 %180, i64 4, i1 false)
  %181 = getelementptr inbounds %class.Lit, %class.Lit* %28, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %31, i32 %182)
  %184 = getelementptr inbounds %class.lbool, %class.lbool* %27, i32 0, i32 0
  store i8 %183, i8* %184, align 1
  %185 = bitcast %class.lbool* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %185, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %186 = getelementptr inbounds %class.lbool, %class.lbool* %29, i32 0, i32 0
  %187 = load i8, i8* %186, align 1
  %188 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %27, i8 %187)
  br i1 %188, label %189, label %205

189:                                              ; preds = %175
  %190 = load %class.Clause*, %class.Clause** %11, align 8
  store %class.Clause* %190, %class.Clause** %3, align 8
  %191 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 31
  %192 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %191)
  %193 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 35
  store i32 %192, i32* %193, align 8
  br label %194

194:                                              ; preds = %198, %189
  %195 = load %class.Clause**, %class.Clause*** %8, align 8
  %196 = load %class.Clause**, %class.Clause*** %10, align 8
  %197 = icmp ult %class.Clause** %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %194
  %199 = load %class.Clause**, %class.Clause*** %8, align 8
  %200 = getelementptr inbounds %class.Clause*, %class.Clause** %199, i32 1
  store %class.Clause** %200, %class.Clause*** %8, align 8
  %201 = load %class.Clause*, %class.Clause** %199, align 8
  %202 = load %class.Clause**, %class.Clause*** %9, align 8
  %203 = getelementptr inbounds %class.Clause*, %class.Clause** %202, i32 1
  store %class.Clause** %203, %class.Clause*** %9, align 8
  store %class.Clause* %201, %class.Clause** %202, align 8
  br label %194

204:                                              ; preds = %194
  br label %211

205:                                              ; preds = %175
  %206 = bitcast %class.Lit* %30 to i8*
  %207 = bitcast %class.Lit* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 4, i1 false)
  %208 = load %class.Clause*, %class.Clause** %11, align 8
  %209 = getelementptr inbounds %class.Lit, %class.Lit* %30, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %31, i32 %210, %class.Clause* %208)
  br label %211

211:                                              ; preds = %205, %204
  br label %212

212:                                              ; preds = %211, %120
  br label %213

213:                                              ; preds = %212, %144
  br label %62

214:                                              ; preds = %62
  %215 = load %class.vec.1*, %class.vec.1** %6, align 8
  %216 = load %class.Clause**, %class.Clause*** %8, align 8
  %217 = load %class.Clause**, %class.Clause*** %9, align 8
  %218 = ptrtoint %class.Clause** %216 to i64
  %219 = ptrtoint %class.Clause** %217 to i64
  %220 = sub i64 %218, %219
  %221 = sdiv exact i64 %220, 8
  %222 = trunc i64 %221 to i32
  call void @_ZN3vecIP6ClauseE6shrinkEi(%class.vec.1* %215, i32 %222)
  br label %32

223:                                              ; preds = %32
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 15
  %227 = load i64, i64* %226, align 8
  %228 = add i64 %227, %225
  store i64 %228, i64* %226, align 8
  %229 = load i32, i32* %4, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %class.Solver, %class.Solver* %31, i32 0, i32 37
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %232, %230
  store i64 %233, i64* %231, align 8
  %234 = load %class.Clause*, %class.Clause** %3, align 8
  ret %class.Clause* %234
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local %class.Clause* @_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b(%class.vec.0* dereferenceable(16) %0, i1 zeroext %1) #0 comdat {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  %7 = load %class.vec.0*, %class.vec.0** %3, align 8
  %8 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %7)
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = add i64 8, %10
  %12 = call noalias i8* @malloc(i64 %11) #12
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %class.Clause*
  %15 = load %class.vec.0*, %class.vec.0** %3, align 8
  %16 = load i8, i8* %4, align 1
  %17 = trunc i8 %16 to i1
  call void @_ZN6ClauseC2I3vecI3LitEEERKT_b(%class.Clause* %14, %class.vec.0* dereferenceable(16) %15, i1 zeroext %17)
  ret %class.Clause* %14
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver12attachClauseER6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.Lit, align 4
  %7 = alloca %class.Clause*, align 8
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.Lit, align 4
  %10 = alloca %class.Clause*, align 8
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %11 = load %class.Solver*, %class.Solver** %3, align 8
  %12 = load %class.Clause*, %class.Clause** %4, align 8
  %13 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %18

16:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.59, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12attachClauseER6Clause, i64 0, i64 0)) #15
  unreachable

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %15
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %11, i32 0, i32 27
  %20 = load %class.Clause*, %class.Clause** %4, align 8
  %21 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %20, i32 0)
  %22 = bitcast %class.Lit* %6 to i8*
  %23 = bitcast %class.Lit* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @_Zco3Lit(i32 %25)
  %27 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_Z5toInt3Lit(i32 %29)
  %31 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %19, i32 %30)
  %32 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %32, %class.Clause** %7, align 8
  call void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %31, %class.Clause** dereferenceable(8) %7)
  %33 = getelementptr inbounds %class.Solver, %class.Solver* %11, i32 0, i32 27
  %34 = load %class.Clause*, %class.Clause** %4, align 8
  %35 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %34, i32 1)
  %36 = bitcast %class.Lit* %9 to i8*
  %37 = bitcast %class.Lit* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = getelementptr inbounds %class.Lit, %class.Lit* %9, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @_Zco3Lit(i32 %39)
  %41 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_Z5toInt3Lit(i32 %43)
  %45 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %33, i32 %44)
  %46 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %46, %class.Clause** %10, align 8
  call void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %45, %class.Clause** dereferenceable(8) %10)
  %47 = load %class.Clause*, %class.Clause** %4, align 8
  %48 = call zeroext i1 @_ZNK6Clause6learntEv(%class.Clause* %47)
  br i1 %48, label %49, label %56

49:                                               ; preds = %18
  %50 = load %class.Clause*, %class.Clause** %4, align 8
  %51 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %class.Solver, %class.Solver* %11, i32 0, i32 18
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  br label %63

56:                                               ; preds = %18
  %57 = load %class.Clause*, %class.Clause** %4, align 8
  %58 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %57)
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %class.Solver, %class.Solver* %11, i32 0, i32 17
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, %59
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %56, %49
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK6Clause4sizeEv(%class.Clause* %0) #1 comdat align 2 {
  %2 = alloca %class.Clause*, align 8
  store %class.Clause* %0, %class.Clause** %2, align 8
  %3 = load %class.Clause*, %class.Clause** %2, align 8
  %4 = getelementptr inbounds %class.Clause, %class.Clause* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 3
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Clause*, align 8
  %4 = alloca i32, align 4
  store %class.Clause* %0, %class.Clause** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Clause*, %class.Clause** %3, align 8
  %6 = getelementptr inbounds %class.Clause, %class.Clause* %5, i32 0, i32 2
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [0 x %class.Lit], [0 x %class.Lit]* %6, i64 0, i64 %8
  ret %class.Lit* %9
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_Z5toInt3Lit(i32 %0) #1 comdat {
  %2 = alloca %class.Lit, align 4
  %3 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.3*, align 8
  %4 = alloca i32, align 4
  store %class.vec.3* %0, %class.vec.3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.3*, %class.vec.3** %3, align 8
  %6 = getelementptr inbounds %class.vec.3, %class.vec.3* %5, i32 0, i32 0
  %7 = load %class.vec.1*, %class.vec.1** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.vec.1, %class.vec.1* %7, i64 %9
  ret %class.vec.1* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK6Clause6learntEv(%class.Clause* %0) #1 comdat align 2 {
  %2 = alloca %class.Clause*, align 8
  store %class.Clause* %0, %class.Clause** %2, align 8
  %3 = load %class.Clause*, %class.Clause** %2, align 8
  %4 = getelementptr inbounds %class.Clause, %class.Clause* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6ClauseC2I3vecI3LitEEERKT_b(%class.Clause* %0, %class.vec.0* dereferenceable(16) %1, i1 zeroext %2) unnamed_addr #0 comdat align 2 {
  %4 = alloca %class.Clause*, align 8
  %5 = alloca %class.vec.0*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %class.Clause* %0, %class.Clause** %4, align 8
  store %class.vec.0* %1, %class.vec.0** %5, align 8
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  %9 = load %class.Clause*, %class.Clause** %4, align 8
  %10 = getelementptr inbounds %class.Clause, %class.Clause* %9, i32 0, i32 1
  %11 = load %class.vec.0*, %class.vec.0** %5, align 8
  %12 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %11)
  %13 = shl i32 %12, 3
  %14 = load i8, i8* %6, align 1
  %15 = trunc i8 %14 to i1
  %16 = zext i1 %15 to i32
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds %class.Clause, %class.Clause* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %34, %3
  %20 = load i32, i32* %7, align 4
  %21 = load %class.vec.0*, %class.vec.0** %5, align 8
  %22 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %class.vec.0*, %class.vec.0** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call dereferenceable(4) %class.Lit* @_ZNK3vecI3LitEixEi(%class.vec.0* %25, i32 %26)
  %28 = getelementptr inbounds %class.Clause, %class.Clause* %9, i32 0, i32 2
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %class.Lit], [0 x %class.Lit]* %28, i64 0, i64 %30
  %32 = bitcast %class.Lit* %31 to i8*
  %33 = bitcast %class.Lit* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load i8, i8* %6, align 1
  %39 = trunc i8 %38 to i1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = getelementptr inbounds %class.Clause, %class.Clause* %9, i32 0, i32 1
  %42 = bitcast %union.anon* %41 to float*
  store float 0.000000e+00, float* %42, align 4
  br label %44

43:                                               ; preds = %37
  call void @_ZN6Clause15calcAbstractionEv(%class.Clause* %9)
  br label %44

44:                                               ; preds = %43, %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) %class.Lit* @_ZNK3vecI3LitEixEi(%class.vec.0* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.0*, %class.vec.0** %3, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  %7 = load %class.Lit*, %class.Lit** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Lit, %class.Lit* %7, i64 %9
  ret %class.Lit* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6Clause15calcAbstractionEv(%class.Clause* %0) #1 comdat align 2 {
  %2 = alloca %class.Clause*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %class.Lit, align 4
  store %class.Clause* %0, %class.Clause** %2, align 8
  %6 = load %class.Clause*, %class.Clause** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %25, %1
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %6)
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.Clause, %class.Clause* %6, i32 0, i32 2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [0 x %class.Lit], [0 x %class.Lit]* %12, i64 0, i64 %14
  %16 = bitcast %class.Lit* %5 to i8*
  %17 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_Z3var3Lit(i32 %19)
  %21 = and i32 %20, 31
  %22 = shl i32 1, %21
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %7

28:                                               ; preds = %7
  %29 = load i32, i32* %3, align 4
  %30 = getelementptr inbounds %class.Clause, %class.Clause* %6, i32 0, i32 1
  %31 = bitcast %union.anon* %30 to i32*
  store i32 %29, i32* %31, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_Z3var3Lit(i32 %0) #1 comdat {
  %2 = alloca %class.Lit, align 4
  %3 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 1
  ret i32 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %class.Clause** @_ZN3vecIP6ClauseEcvPS1_Ev(%class.vec.1* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.1*, align 8
  store %class.vec.1* %0, %class.vec.1** %2, align 8
  %3 = load %class.vec.1*, %class.vec.1** %2, align 8
  %4 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 0
  %5 = load %class.Clause**, %class.Clause*** %4, align 8
  ret %class.Clause** %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseE6shrinkEi(%class.vec.1* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.vec.1*, %class.vec.1** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %class.vec.1, %class.vec.1* %6, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30.61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31.62, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__._ZN3vecIP6ClauseE6shrinkEi, i64 0, i64 0)) #15
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.vec.1, %class.vec.1* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %class.vec.1, %class.vec.1* %6, i32 0, i32 0
  %24 = load %class.Clause**, %class.Clause*** %23, align 8
  %25 = getelementptr inbounds %class.vec.1, %class.vec.1* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %class.Clause*, %class.Clause** %24, i64 %27
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_Z4sign3Lit(i32 %0) #1 comdat {
  %2 = alloca %class.Lit, align 4
  %3 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %class.Lit, %class.Lit* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  ret i1 %7
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN5lboolC2Eb(%class.lbool* %0, i1 zeroext %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %class.lbool*, align 8
  %4 = alloca i8, align 1
  store %class.lbool* %0, %class.lbool** %3, align 8
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  %6 = load %class.lbool*, %class.lbool** %3, align 8
  %7 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  %8 = load i8, i8* %4, align 1
  %9 = trunc i8 %8 to i1
  %10 = zext i1 %9 to i32
  %11 = mul nsw i32 %10, 2
  %12 = sub nsw i32 %11, 1
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %7, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) i8* @_ZNK3vecIcEixEi(%class.vec.4* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.4*, align 8
  %4 = alloca i32, align 4
  store %class.vec.4* %0, %class.vec.4** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.4*, %class.vec.4** %3, align 8
  %6 = getelementptr inbounds %class.vec.4, %class.vec.4* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  ret i8* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i8 @_ZNK5lbooleoEb(%class.lbool* %0, i1 zeroext %1) #0 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.lbool*, align 8
  %5 = alloca i8, align 1
  store %class.lbool* %0, %class.lbool** %4, align 8
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %5, align 1
  %7 = load %class.lbool*, %class.lbool** %4, align 8
  %8 = load i8, i8* %5, align 1
  %9 = trunc i8 %8 to i1
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 0, %13
  call void @_ZN5lboolC2Ei(%class.lbool* %3, i32 %14)
  br label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  call void @_ZN5lboolC2Ei(%class.lbool* %3, i32 %18)
  br label %19

19:                                               ; preds = %15, %10
  %20 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  ret i8 %21
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z4sortI3Lit16LessThan_defaultIS0_EEvR3vecIT_ET0_(%class.vec.0* dereferenceable(16) %0) #0 comdat {
  %2 = alloca %class.lbool, align 1
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca %class.lbool, align 1
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  %5 = load %class.vec.0*, %class.vec.0** %3, align 8
  %6 = call %class.Lit* @_ZN3vecI3LitEcvPS0_Ev(%class.vec.0* %5)
  %7 = load %class.vec.0*, %class.vec.0** %3, align 8
  %8 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %7)
  call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %6, i32 %8)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local %class.Lit* @_ZN3vecI3LitEcvPS0_Ev(%class.vec.0* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  %5 = load %class.Lit*, %class.Lit** %4, align 8
  ret %class.Lit* %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %0, i32 %1) #0 comdat {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Lit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.lbool, align 1
  %7 = alloca %class.Lit, align 4
  %8 = alloca %class.Lit, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.Lit, align 4
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Lit, align 4
  %14 = alloca %class.Lit, align 4
  %15 = alloca %class.lbool, align 1
  %16 = alloca %class.lbool, align 1
  store %class.Lit* %0, %class.Lit** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sle i32 %17, 15
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %class.Lit*, %class.Lit** %4, align 8
  %21 = load i32, i32* %5, align 4
  call void @_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %20, i32 %21)
  br label %105

22:                                               ; preds = %2
  %23 = load %class.Lit*, %class.Lit** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %class.Lit, %class.Lit* %23, i64 %26
  %28 = bitcast %class.Lit* %7 to i8*
  %29 = bitcast %class.Lit* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  call void @_ZN3LitC2Ev(%class.Lit* %8)
  store i32 -1, i32* %9, align 4
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %72, %22
  br label %32

32:                                               ; preds = %35, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load %class.Lit*, %class.Lit** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %class.Lit, %class.Lit* %36, i64 %38
  %40 = bitcast %class.Lit* %11 to i8*
  %41 = bitcast %class.Lit* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = bitcast %class.Lit* %12 to i8*
  %43 = bitcast %class.Lit* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call zeroext i1 @_ZN16LessThan_defaultI3LitEclES0_S0_(%class.lbool* %3, i32 %45, i32 %47)
  br i1 %48, label %32, label %49

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %53, %49
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50
  %54 = bitcast %class.Lit* %13 to i8*
  %55 = bitcast %class.Lit* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %class.Lit*, %class.Lit** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %class.Lit, %class.Lit* %56, i64 %58
  %60 = bitcast %class.Lit* %14 to i8*
  %61 = bitcast %class.Lit* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = getelementptr inbounds %class.Lit, %class.Lit* %13, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call zeroext i1 @_ZN16LessThan_defaultI3LitEclES0_S0_(%class.lbool* %3, i32 %63, i32 %65)
  br i1 %66, label %50, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %95

72:                                               ; preds = %67
  %73 = load %class.Lit*, %class.Lit** %4, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %class.Lit, %class.Lit* %73, i64 %75
  %77 = bitcast %class.Lit* %8 to i8*
  %78 = bitcast %class.Lit* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %class.Lit*, %class.Lit** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %class.Lit, %class.Lit* %79, i64 %81
  %83 = load %class.Lit*, %class.Lit** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %class.Lit, %class.Lit* %83, i64 %85
  %87 = bitcast %class.Lit* %86 to i8*
  %88 = bitcast %class.Lit* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  %89 = load %class.Lit*, %class.Lit** %4, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %class.Lit, %class.Lit* %89, i64 %91
  %93 = bitcast %class.Lit* %92 to i8*
  %94 = bitcast %class.Lit* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 4, i1 false)
  br label %31

95:                                               ; preds = %71
  %96 = load %class.Lit*, %class.Lit** %4, align 8
  %97 = load i32, i32* %9, align 4
  call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %96, i32 %97)
  %98 = load %class.Lit*, %class.Lit** %4, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %class.Lit, %class.Lit* %98, i64 %100
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %102, %103
  call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %101, i32 %104)
  br label %105

105:                                              ; preds = %95, %19
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(%class.Lit* %0, i32 %1) #0 comdat {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Lit*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.Lit, align 4
  %10 = alloca %class.Lit, align 4
  %11 = alloca %class.Lit, align 4
  store %class.Lit* %0, %class.Lit** %4, align 8
  store i32 %1, i32* %5, align 4
  call void @_ZN3LitC2Ev(%class.Lit* %9)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %72, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %46, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load %class.Lit*, %class.Lit** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %class.Lit, %class.Lit* %26, i64 %28
  %30 = bitcast %class.Lit* %10 to i8*
  %31 = bitcast %class.Lit* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 4, i1 false)
  %32 = load %class.Lit*, %class.Lit** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %class.Lit, %class.Lit* %32, i64 %34
  %36 = bitcast %class.Lit* %11 to i8*
  %37 = bitcast %class.Lit* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = getelementptr inbounds %class.Lit, %class.Lit* %10, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call zeroext i1 @_ZN16LessThan_defaultI3LitEclES0_S0_(%class.lbool* %3, i32 %39, i32 %41)
  br i1 %42, label %43, label %45

43:                                               ; preds = %25
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %43, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %class.Lit*, %class.Lit** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %class.Lit, %class.Lit* %50, i64 %52
  %54 = bitcast %class.Lit* %9 to i8*
  %55 = bitcast %class.Lit* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 4, i1 false)
  %56 = load %class.Lit*, %class.Lit** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %class.Lit, %class.Lit* %56, i64 %58
  %60 = load %class.Lit*, %class.Lit** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %class.Lit, %class.Lit* %60, i64 %62
  %64 = bitcast %class.Lit* %63 to i8*
  %65 = bitcast %class.Lit* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  %66 = load %class.Lit*, %class.Lit** %4, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %class.Lit, %class.Lit* %66, i64 %68
  %70 = bitcast %class.Lit* %69 to i8*
  %71 = bitcast %class.Lit* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  br label %72

72:                                               ; preds = %49
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %12

75:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZN16LessThan_defaultI3LitEclES0_S0_(%class.lbool* %0, i32 %1, i32 %2) #0 comdat align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.lbool*, align 8
  %7 = alloca %class.Lit, align 4
  %8 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %class.lbool* %0, %class.lbool** %6, align 8
  %10 = load %class.lbool*, %class.lbool** %6, align 8
  %11 = bitcast %class.Lit* %7 to i8*
  %12 = bitcast %class.Lit* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call zeroext i1 @_ZNK3LitltES_(%class.Lit* %4, i32 %14)
  ret i1 %15
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK3LitltES_(%class.Lit* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.Lit*, align 8
  %5 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %class.Lit* %0, %class.Lit** %4, align 8
  %6 = load %class.Lit*, %class.Lit** %4, align 8
  %7 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %8, %10
  ret i1 %11
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver12detachClauseER6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.Lit, align 4
  %7 = alloca %class.Clause*, align 8
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.Lit, align 4
  %10 = alloca %class.Clause*, align 8
  %11 = alloca %class.Lit, align 4
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Clause*, align 8
  %14 = alloca %class.Lit, align 4
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.Clause*, align 8
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %17 = load %class.Solver*, %class.Solver** %3, align 8
  %18 = load %class.Clause*, %class.Clause** %4, align 8
  %19 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %18)
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %24

22:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7.59, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12detachClauseER6Clause, i64 0, i64 0)) #15
  unreachable

23:                                               ; No predecessors!
  br label %24

24:                                               ; preds = %23, %21
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 27
  %26 = load %class.Clause*, %class.Clause** %4, align 8
  %27 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %26, i32 0)
  %28 = bitcast %class.Lit* %6 to i8*
  %29 = bitcast %class.Lit* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @_Zco3Lit(i32 %31)
  %33 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @_Z5toInt3Lit(i32 %35)
  %37 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %25, i32 %36)
  %38 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %38, %class.Clause** %7, align 8
  %39 = call zeroext i1 @_ZL4findI3vecIP6ClauseES2_EbRT_RKT0_(%class.vec.1* dereferenceable(16) %37, %class.Clause** dereferenceable(8) %7)
  br i1 %39, label %40, label %41

40:                                               ; preds = %24
  br label %43

41:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8.64, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12detachClauseER6Clause, i64 0, i64 0)) #15
  unreachable

42:                                               ; No predecessors!
  br label %43

43:                                               ; preds = %42, %40
  %44 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 27
  %45 = load %class.Clause*, %class.Clause** %4, align 8
  %46 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %45, i32 1)
  %47 = bitcast %class.Lit* %9 to i8*
  %48 = bitcast %class.Lit* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 4, i1 false)
  %49 = getelementptr inbounds %class.Lit, %class.Lit* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_Zco3Lit(i32 %50)
  %52 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @_Z5toInt3Lit(i32 %54)
  %56 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %44, i32 %55)
  %57 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %57, %class.Clause** %10, align 8
  %58 = call zeroext i1 @_ZL4findI3vecIP6ClauseES2_EbRT_RKT0_(%class.vec.1* dereferenceable(16) %56, %class.Clause** dereferenceable(8) %10)
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %62

60:                                               ; preds = %43
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9.65, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 137, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12detachClauseER6Clause, i64 0, i64 0)) #15
  unreachable

61:                                               ; No predecessors!
  br label %62

62:                                               ; preds = %61, %59
  %63 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 27
  %64 = load %class.Clause*, %class.Clause** %4, align 8
  %65 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %64, i32 0)
  %66 = bitcast %class.Lit* %12 to i8*
  %67 = bitcast %class.Lit* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %66, i8* align 4 %67, i64 4, i1 false)
  %68 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @_Zco3Lit(i32 %69)
  %71 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_Z5toInt3Lit(i32 %73)
  %75 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %63, i32 %74)
  %76 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %76, %class.Clause** %13, align 8
  call void @_ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_(%class.vec.1* dereferenceable(16) %75, %class.Clause** dereferenceable(8) %13)
  %77 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 27
  %78 = load %class.Clause*, %class.Clause** %4, align 8
  %79 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %78, i32 1)
  %80 = bitcast %class.Lit* %15 to i8*
  %81 = bitcast %class.Lit* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = getelementptr inbounds %class.Lit, %class.Lit* %15, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_Zco3Lit(i32 %83)
  %85 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @_Z5toInt3Lit(i32 %87)
  %89 = call dereferenceable(16) %class.vec.1* @_ZN3vecIS_IP6ClauseEEixEi(%class.vec.3* %77, i32 %88)
  %90 = load %class.Clause*, %class.Clause** %4, align 8
  store %class.Clause* %90, %class.Clause** %16, align 8
  call void @_ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_(%class.vec.1* dereferenceable(16) %89, %class.Clause** dereferenceable(8) %16)
  %91 = load %class.Clause*, %class.Clause** %4, align 8
  %92 = call zeroext i1 @_ZNK6Clause6learntEv(%class.Clause* %91)
  br i1 %92, label %93, label %100

93:                                               ; preds = %62
  %94 = load %class.Clause*, %class.Clause** %4, align 8
  %95 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %94)
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 18
  %98 = load i64, i64* %97, align 8
  %99 = sub i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %107

100:                                              ; preds = %62
  %101 = load %class.Clause*, %class.Clause** %4, align 8
  %102 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %101)
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %class.Solver, %class.Solver* %17, i32 0, i32 17
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, %103
  store i64 %106, i64* %104, align 8
  br label %107

107:                                              ; preds = %100, %93
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i1 @_ZL4findI3vecIP6ClauseES2_EbRT_RKT0_(%class.vec.1* dereferenceable(16) %0, %class.Clause** dereferenceable(8) %1) #1 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca %class.Clause**, align 8
  %5 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store %class.Clause** %1, %class.Clause*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %class.vec.1*, %class.vec.1** %3, align 8
  %9 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %class.vec.1*, %class.vec.1** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %12, i32 %13)
  %15 = load %class.Clause*, %class.Clause** %14, align 8
  %16 = load %class.Clause**, %class.Clause*** %4, align 8
  %17 = load %class.Clause*, %class.Clause** %16, align 8
  %18 = icmp ne %class.Clause* %15, %17
  br label %19

19:                                               ; preds = %11, %6
  %20 = phi i1 [ false, %6 ], [ %18, %11 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %class.vec.1*, %class.vec.1** %3, align 8
  %28 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %27)
  %29 = icmp slt i32 %26, %28
  ret i1 %29
}

; Function Attrs: noinline uwtable
define internal void @_ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_(%class.vec.1* dereferenceable(16) %0, %class.Clause** dereferenceable(8) %1) #0 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca %class.Clause**, align 8
  %5 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store %class.Clause** %1, %class.Clause*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %class.vec.1*, %class.vec.1** %3, align 8
  %9 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load %class.vec.1*, %class.vec.1** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %12, i32 %13)
  %15 = load %class.Clause*, %class.Clause** %14, align 8
  %16 = load %class.Clause**, %class.Clause*** %4, align 8
  %17 = load %class.Clause*, %class.Clause** %16, align 8
  %18 = icmp ne %class.Clause* %15, %17
  br label %19

19:                                               ; preds = %11, %6
  %20 = phi i1 [ false, %6 ], [ %18, %11 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  %27 = load %class.vec.1*, %class.vec.1** %3, align 8
  %28 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %27)
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %33

31:                                               ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32.66, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33.67, i64 0, i64 0), i32 33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__._ZL6removeI3vecIP6ClauseES2_EvRT_RKT0_, i64 0, i64 0)) #15
  unreachable

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %30
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %5, align 4
  %36 = load %class.vec.1*, %class.vec.1** %3, align 8
  %37 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %36)
  %38 = sub nsw i32 %37, 1
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34
  %41 = load %class.vec.1*, %class.vec.1** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  %44 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %41, i32 %43)
  %45 = load %class.Clause*, %class.Clause** %44, align 8
  %46 = load %class.vec.1*, %class.vec.1** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %46, i32 %47)
  store %class.Clause* %45, %class.Clause** %48, align 8
  br label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %class.vec.1*, %class.vec.1** %3, align 8
  call void @_ZN3vecIP6ClauseE3popEv(%class.vec.1* %53)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIP6ClauseE3popEv(%class.vec.1* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.1*, align 8
  store %class.vec.1* %0, %class.vec.1** %2, align 8
  %3 = load %class.vec.1*, %class.vec.1** %2, align 8
  %4 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 0
  %8 = load %class.Clause**, %class.Clause*** %7, align 8
  %9 = getelementptr inbounds %class.vec.1, %class.vec.1* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.Clause*, %class.Clause** %8, i64 %11
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver12removeClauseER6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %5 = load %class.Solver*, %class.Solver** %3, align 8
  %6 = load %class.Clause*, %class.Clause** %4, align 8
  call void @_ZN6Solver12detachClauseER6Clause(%class.Solver* %5, %class.Clause* dereferenceable(8) %6)
  %7 = load %class.Clause*, %class.Clause** %4, align 8
  %8 = bitcast %class.Clause* %7 to i8*
  call void @free(i8* %8) #12
  ret void
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_ZNK6Solver9satisfiedERK6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 align 2 {
  %3 = alloca i1, align 1
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.Clause*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %class.lbool, align 1
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %4, align 8
  store %class.Clause* %1, %class.Clause** %5, align 8
  %10 = load %class.Solver*, %class.Solver** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %31, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %class.Clause*, %class.Clause** %5, align 8
  %14 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load %class.Clause*, %class.Clause** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @_ZNK6ClauseixEi(%class.Clause* %17, i32 %18)
  %20 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %10, i32 %22)
  %24 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  store i8 %23, i8* %24, align 1
  %25 = bitcast %class.lbool* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %26 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  %27 = load i8, i8* %26, align 1
  %28 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %7, i8 %27)
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i1 true, i1* %3, align 1
  br label %35

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %11

34:                                               ; preds = %11
  store i1 false, i1* %3, align 1
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i1, i1* %3, align 1
  ret i1 %36
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK6ClauseixEi(%class.Clause* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.Clause*, align 8
  %5 = alloca i32, align 4
  store %class.Clause* %0, %class.Clause** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %class.Clause*, %class.Clause** %4, align 8
  %7 = getelementptr inbounds %class.Clause, %class.Clause* %6, i32 0, i32 2
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x %class.Lit], [0 x %class.Lit]* %7, i64 0, i64 %9
  %11 = bitcast %class.Lit* %3 to i8*
  %12 = bitcast %class.Lit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver11cancelUntilEi(%class.Solver* %0, i32 %1) #0 align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.Lit, align 4
  %8 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %class.Solver*, %class.Solver** %3, align 8
  %10 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %64

13:                                               ; preds = %2
  %14 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 31
  %15 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %14)
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %42, %13
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 32
  %20 = load i32, i32* %4, align 4
  %21 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %19, i32 %20)
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %18, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 31
  %26 = load i32, i32* %5, align 4
  %27 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %25, i32 %26)
  %28 = bitcast %class.Lit* %7 to i8*
  %29 = bitcast %class.Lit* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @_Z3var3Lit(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = bitcast %class.lbool* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %34 = getelementptr inbounds %class.lbool, %class.lbool* %8, i32 0, i32 0
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @_Z5toInt5lbool(i8 %35)
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 28
  %39 = load i32, i32* %6, align 4
  %40 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %38, i32 %39)
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %6, align 4
  call void @_ZN6Solver14insertVarOrderEi(%class.Solver* %9, i32 %41)
  br label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  br label %17

45:                                               ; preds = %17
  %46 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 32
  %47 = load i32, i32* %4, align 4
  %48 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %46, i32 %47)
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 35
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 31
  %52 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 31
  %53 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %52)
  %54 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 32
  %55 = load i32, i32* %4, align 4
  %56 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %54, i32 %55)
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %53, %57
  call void @_ZN3vecI3LitE6shrinkEi(%class.vec.0* %51, i32 %58)
  %59 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 32
  %60 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 32
  %61 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %60)
  %62 = load i32, i32* %4, align 4
  %63 = sub nsw i32 %61, %62
  call void @_ZN3vecIiE6shrinkEi(%class.vec.5* %59, i32 %63)
  br label %64

64:                                               ; preds = %45, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiE6shrinkEi(%class.vec.5* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.5*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.vec.5* %0, %class.vec.5** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.vec.5*, %class.vec.5** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %class.vec.5, %class.vec.5* %6, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp sle i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30.61, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31.62, i64 0, i64 0), i32 72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__._ZN3vecIiE6shrinkEi, i64 0, i64 0)) #15
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %11
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %15
  %20 = getelementptr inbounds %class.vec.5, %class.vec.5* %6, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = getelementptr inbounds %class.vec.5, %class.vec.5* %6, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %class.vec.5, %class.vec.5* %6, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %15
  ret void
}

; Function Attrs: noinline uwtable
define dso_local i32 @_ZN6Solver13pickBranchLitEid(%class.Solver* %0, i32 %1, double %2) #0 align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Solver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca %class.lbool, align 1
  %10 = alloca %class.lbool, align 1
  %11 = alloca %class.lbool, align 1
  %12 = alloca %class.lbool, align 1
  %13 = alloca i8, align 1
  store %class.Solver* %0, %class.Solver** %5, align 8
  store i32 %1, i32* %6, align 4
  store double %2, double* %7, align 8
  %14 = load %class.Solver*, %class.Solver** %5, align 8
  store i32 -1, i32* %8, align 4
  %15 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 40
  %16 = call double @_ZN6Solver5drandERd(double* dereferenceable(8) %15)
  %17 = load double, double* %7, align 8
  %18 = fcmp olt double %16, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %3
  %20 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 39
  %21 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE5emptyEv(%class.Heap* %20)
  br i1 %21, label %53, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 39
  %24 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 40
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 39
  %26 = call i32 @_ZNK4HeapIN6Solver10VarOrderLtEE4sizeEv(%class.Heap* %25)
  %27 = call i32 @_ZN6Solver5irandERdi(double* dereferenceable(8) %24, i32 %26)
  %28 = call i32 @_ZNK4HeapIN6Solver10VarOrderLtEEixEi(%class.Heap* %23, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 28
  %30 = load i32, i32* %8, align 4
  %31 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %29, i32 %30)
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = call i8 @_Z7toLbooli(i32 %33)
  %35 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  store i8 %34, i8* %35, align 1
  %36 = bitcast %class.lbool* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %37 = getelementptr inbounds %class.lbool, %class.lbool* %10, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %9, i8 %38)
  br i1 %39, label %40, label %46

40:                                               ; preds = %22
  %41 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 30
  %42 = load i32, i32* %8, align 4
  %43 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %41, i32 %42)
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br label %46

46:                                               ; preds = %40, %22
  %47 = phi i1 [ false, %22 ], [ %45, %40 ]
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 14
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %49, align 8
  br label %52

52:                                               ; preds = %48, %46
  br label %53

53:                                               ; preds = %52, %19, %3
  br label %54

54:                                               ; preds = %85, %53
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 28
  %59 = load i32, i32* %8, align 4
  %60 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %58, i32 %59)
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = call i8 @_Z7toLbooli(i32 %62)
  %64 = getelementptr inbounds %class.lbool, %class.lbool* %11, i32 0, i32 0
  store i8 %63, i8* %64, align 1
  %65 = bitcast %class.lbool* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %66 = getelementptr inbounds %class.lbool, %class.lbool* %12, i32 0, i32 0
  %67 = load i8, i8* %66, align 1
  %68 = call zeroext i1 @_ZNK5lboolneES_(%class.lbool* %11, i8 %67)
  br i1 %68, label %76, label %69

69:                                               ; preds = %57
  %70 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 30
  %71 = load i32, i32* %8, align 4
  %72 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %70, i32 %71)
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %69, %57, %54
  %77 = phi i1 [ true, %57 ], [ true, %54 ], [ %75, %69 ]
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 39
  %80 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE5emptyEv(%class.Heap* %79)
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 -1, i32* %8, align 4
  br label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 39
  %84 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv(%class.Heap* %83)
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %82
  br label %54

86:                                               ; preds = %81, %76
  store i8 0, i8* %13, align 1
  %87 = load i32, i32* %6, align 4
  switch i32 %87, label %102 [
    i32 0, label %88
    i32 1, label %89
    i32 2, label %90
    i32 3, label %97
  ]

88:                                               ; preds = %86
  store i8 0, i8* %13, align 1
  br label %103

89:                                               ; preds = %86
  store i8 1, i8* %13, align 1
  br label %103

90:                                               ; preds = %86
  %91 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 29
  %92 = load i32, i32* %8, align 4
  %93 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %91, i32 %92)
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  %96 = zext i1 %95 to i8
  store i8 %96, i8* %13, align 1
  br label %103

97:                                               ; preds = %86
  %98 = getelementptr inbounds %class.Solver, %class.Solver* %14, i32 0, i32 40
  %99 = call i32 @_ZN6Solver5irandERdi(double* dereferenceable(8) %98, i32 2)
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %13, align 1
  br label %103

102:                                              ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10.68, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__._ZN6Solver13pickBranchLitEid, i64 0, i64 0)) #15
  unreachable

103:                                              ; preds = %97, %90, %89, %88
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  br label %112

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = load i8, i8* %13, align 1
  %111 = trunc i8 %110 to i1
  call void @_ZN3LitC2Eib(%class.Lit* %4, i32 %109, i1 zeroext %111)
  br label %112

112:                                              ; preds = %108, %106
  %113 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  ret i32 %114
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local double @_ZN6Solver5drandERd(double* dereferenceable(8) %0) #1 comdat align 2 {
  %2 = alloca double*, align 8
  %3 = alloca i32, align 4
  store double* %0, double** %2, align 8
  %4 = load double*, double** %2, align 8
  %5 = load double, double* %4, align 8
  %6 = fmul double %5, 0x413534E400000000
  store double %6, double* %4, align 8
  %7 = load double*, double** %2, align 8
  %8 = load double, double* %7, align 8
  %9 = fdiv double %8, 0x41DFFFFFFFC00000
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 0x41DFFFFFFFC00000
  %14 = load double*, double** %2, align 8
  %15 = load double, double* %14, align 8
  %16 = fsub double %15, %13
  store double %16, double* %14, align 8
  %17 = load double*, double** %2, align 8
  %18 = load double, double* %17, align 8
  %19 = fdiv double %18, 0x41DFFFFFFFC00000
  ret double %19
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE5emptyEv(%class.Heap* %0) #1 comdat align 2 {
  %2 = alloca %class.Heap*, align 8
  store %class.Heap* %0, %class.Heap** %2, align 8
  %3 = load %class.Heap*, %class.Heap** %2, align 8
  %4 = getelementptr inbounds %class.Heap, %class.Heap* %3, i32 0, i32 1
  %5 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %4)
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK4HeapIN6Solver10VarOrderLtEE4sizeEv(%class.Heap* %0) #1 comdat align 2 {
  %2 = alloca %class.Heap*, align 8
  store %class.Heap* %0, %class.Heap** %2, align 8
  %3 = load %class.Heap*, %class.Heap** %2, align 8
  %4 = getelementptr inbounds %class.Heap, %class.Heap* %3, i32 0, i32 1
  %5 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Solver5irandERdi(double* dereferenceable(8) %0, i32 %1) #1 comdat align 2 {
  %3 = alloca double*, align 8
  %4 = alloca i32, align 4
  store double* %0, double** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load double*, double** %3, align 8
  %6 = call double @_ZN6Solver5drandERd(double* dereferenceable(8) %5)
  %7 = load i32, i32* %4, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %6, %8
  %10 = fptosi double %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK4HeapIN6Solver10VarOrderLtEEixEi(%class.Heap* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Heap*, %class.Heap** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 1
  %8 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %13

11:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34.69, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28.18, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @__PRETTY_FUNCTION__._ZNK4HeapIN6Solver10VarOrderLtEEixEi, i64 0, i64 0)) #15
  unreachable

12:                                               ; No predecessors!
  br label %13

13:                                               ; preds = %12, %10
  %14 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %14, i32 %15)
  %17 = load i32, i32* %16, align 4
  ret i32 %17
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv(%class.Heap* %0) #0 comdat align 2 {
  %2 = alloca %class.Heap*, align 8
  %3 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %2, align 8
  %4 = load %class.Heap*, %class.Heap** %2, align 8
  %5 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  %6 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %5, i32 0)
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  %9 = call dereferenceable(4) i32* @_ZN3vecIiE4lastEv(%class.vec.5* %8)
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  %12 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %11, i32 0)
  store i32 %10, i32* %12, align 4
  %13 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 2
  %14 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  %15 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %14, i32 0)
  %16 = load i32, i32* %15, align 4
  %17 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %13, i32 %16)
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 2
  %19 = load i32, i32* %3, align 4
  %20 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %18, i32 %19)
  store i32 -1, i32* %20, align 4
  %21 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  call void @_ZN3vecIiE3popEv(%class.vec.5* %21)
  %22 = getelementptr inbounds %class.Heap, %class.Heap* %4, i32 0, i32 1
  %23 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %22)
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  call void @_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi(%class.Heap* %4, i32 0)
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) i32* @_ZN3vecIiE4lastEv(%class.vec.5* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.5*, align 8
  store %class.vec.5* %0, %class.vec.5** %2, align 8
  %3 = load %class.vec.5*, %class.vec.5** %2, align 8
  %4 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %5, i64 %9
  ret i32* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecIiE3popEv(%class.vec.5* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.5*, align 8
  store %class.vec.5* %0, %class.vec.5** %2, align 8
  %3 = load %class.vec.5*, %class.vec.5** %2, align 8
  %4 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds %class.vec.5, %class.vec.5* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %8, i64 %11
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %class.Heap*, %class.Heap** %3, align 8
  %8 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %8, i32 %9)
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE4leftEi(i32 %13)
  %15 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %16 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %69

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE5rightEi(i32 %19)
  %21 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %22 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 0
  %26 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE5rightEi(i32 %27)
  %29 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %26, i32 %28)
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE4leftEi(i32 %32)
  %34 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %31, i32 %33)
  %35 = load i32, i32* %34, align 4
  %36 = call zeroext i1 @_ZNK6Solver10VarOrderLtclEii(%"struct.Solver::VarOrderLt"* %25, i32 %30, i32 %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE5rightEi(i32 %38)
  br label %43

40:                                               ; preds = %24, %18
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE4leftEi(i32 %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %39, %37 ], [ %42, %40 ]
  store i32 %44, i32* %6, align 4
  %45 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 0
  %46 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %46, i32 %47)
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call zeroext i1 @_ZNK6Solver10VarOrderLtclEii(%"struct.Solver::VarOrderLt"* %45, i32 %49, i32 %50)
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %69

53:                                               ; preds = %43
  %54 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %55 = load i32, i32* %6, align 4
  %56 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %54, i32 %55)
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %59 = load i32, i32* %4, align 4
  %60 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %58, i32 %59)
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %4, align 4
  %62 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 2
  %63 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %64 = load i32, i32* %4, align 4
  %65 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %63, i32 %64)
  %66 = load i32, i32* %65, align 4
  %67 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %62, i32 %66)
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %4, align 4
  br label %12

69:                                               ; preds = %52, %12
  %70 = load i32, i32* %5, align 4
  %71 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 1
  %72 = load i32, i32* %4, align 4
  %73 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %71, i32 %72)
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %4, align 4
  %75 = getelementptr inbounds %class.Heap, %class.Heap* %7, i32 0, i32 2
  %76 = load i32, i32* %5, align 4
  %77 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %75, i32 %76)
  store i32 %74, i32* %77, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN4HeapIN6Solver10VarOrderLtEE4leftEi(i32 %0) #1 comdat align 2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = mul nsw i32 %3, 2
  %5 = add nsw i32 %4, 1
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZN4HeapIN6Solver10VarOrderLtEE5rightEi(i32 %0) #1 comdat align 2 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = add nsw i32 %3, 1
  %5 = mul nsw i32 %4, 2
  ret i32 %5
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi(%class.Solver* %0, %class.Clause* %1, %class.vec.0* dereferenceable(16) %2, i32* dereferenceable(4) %3) #0 align 2 {
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.Clause*, align 8
  %7 = alloca %class.vec.0*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %class.Lit, align 4
  %11 = alloca i32, align 4
  %12 = alloca %class.Clause*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %class.Lit, align 4
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.Lit, align 4
  %17 = alloca %class.Lit, align 4
  %18 = alloca %class.Lit, align 4
  %19 = alloca %class.Lit, align 4
  %20 = alloca %class.Lit, align 4
  %21 = alloca %class.Lit, align 4
  %22 = alloca %class.Lit, align 4
  %23 = alloca %class.Lit, align 4
  %24 = alloca %class.Lit, align 4
  %25 = alloca %class.Lit, align 4
  %26 = alloca %class.Lit, align 4
  %27 = alloca %class.Lit, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %class.Lit, align 4
  %32 = alloca %class.Lit, align 4
  %33 = alloca %class.Lit, align 4
  %34 = alloca %class.Clause*, align 8
  %35 = alloca %class.Lit, align 4
  %36 = alloca i32, align 4
  %37 = alloca %class.Lit, align 4
  %38 = alloca %class.Lit, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %class.Lit, align 4
  %42 = alloca %class.Lit, align 4
  %43 = alloca %class.Lit, align 4
  %44 = alloca %class.Lit, align 4
  %45 = alloca i32, align 4
  %46 = alloca %class.Lit, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  store %class.Clause* %1, %class.Clause** %6, align 8
  store %class.vec.0* %2, %class.vec.0** %7, align 8
  store i32* %3, i32** %8, align 8
  %47 = load %class.Solver*, %class.Solver** %5, align 8
  store i32 0, i32* %9, align 4
  %48 = bitcast %class.Lit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  %49 = load %class.vec.0*, %class.vec.0** %7, align 8
  call void @_ZN3vecI3LitE4pushEv(%class.vec.0* %49)
  %50 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 31
  %51 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  %53 = load i32*, i32** %8, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %199, %4
  %55 = load %class.Clause*, %class.Clause** %6, align 8
  %56 = icmp ne %class.Clause* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %60

58:                                               ; preds = %54
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11.70, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__._ZN6Solver7analyzeEP6ClauseR3vecI3LitERi, i64 0, i64 0)) #15
  unreachable

59:                                               ; No predecessors!
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %class.Clause*, %class.Clause** %6, align 8
  store %class.Clause* %61, %class.Clause** %12, align 8
  %62 = load %class.Clause*, %class.Clause** %12, align 8
  %63 = call zeroext i1 @_ZNK6Clause6learntEv(%class.Clause* %62)
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load %class.Clause*, %class.Clause** %12, align 8
  call void @_ZN6Solver15claBumpActivityER6Clause(%class.Solver* %47, %class.Clause* dereferenceable(8) %65)
  br label %66

66:                                               ; preds = %64, %60
  %67 = bitcast %class.Lit* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  %68 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call zeroext i1 @_ZNK3LiteqES_(%class.Lit* %10, i32 %69)
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 0, i32 1
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %155, %66
  %74 = load i32, i32* %13, align 4
  %75 = load %class.Clause*, %class.Clause** %12, align 8
  %76 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %75)
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %158

78:                                               ; preds = %73
  %79 = load %class.Clause*, %class.Clause** %12, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %79, i32 %80)
  %82 = bitcast %class.Lit* %15 to i8*
  %83 = bitcast %class.Lit* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %85 = bitcast %class.Lit* %16 to i8*
  %86 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 4, i1 false)
  %87 = getelementptr inbounds %class.Lit, %class.Lit* %16, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @_Z3var3Lit(i32 %88)
  %90 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %84, i32 %89)
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %154, label %93

93:                                               ; preds = %78
  %94 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %95 = bitcast %class.Lit* %17 to i8*
  %96 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = getelementptr inbounds %class.Lit, %class.Lit* %17, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @_Z3var3Lit(i32 %98)
  %100 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %94, i32 %99)
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %154

103:                                              ; preds = %93
  %104 = bitcast %class.Lit* %18 to i8*
  %105 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 %105, i64 4, i1 false)
  %106 = getelementptr inbounds %class.Lit, %class.Lit* %18, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @_Z3var3Lit(i32 %107)
  call void @_ZN6Solver15varBumpActivityEi(%class.Solver* %47, i32 %108)
  %109 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %110 = bitcast %class.Lit* %19 to i8*
  %111 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = getelementptr inbounds %class.Lit, %class.Lit* %19, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_Z3var3Lit(i32 %113)
  %115 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %109, i32 %114)
  store i8 1, i8* %115, align 1
  %116 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %117 = bitcast %class.Lit* %20 to i8*
  %118 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 4, i1 false)
  %119 = getelementptr inbounds %class.Lit, %class.Lit* %20, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @_Z3var3Lit(i32 %120)
  %122 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %116, i32 %121)
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %47)
  %125 = icmp sge i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %103
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %153

129:                                              ; preds = %103
  %130 = load %class.vec.0*, %class.vec.0** %7, align 8
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %130, %class.Lit* dereferenceable(4) %15)
  %131 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %132 = bitcast %class.Lit* %21 to i8*
  %133 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %132, i8* align 4 %133, i64 4, i1 false)
  %134 = getelementptr inbounds %class.Lit, %class.Lit* %21, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @_Z3var3Lit(i32 %135)
  %137 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %131, i32 %136)
  %138 = load i32, i32* %137, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %138, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %129
  %143 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %144 = bitcast %class.Lit* %22 to i8*
  %145 = bitcast %class.Lit* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 4, i1 false)
  %146 = getelementptr inbounds %class.Lit, %class.Lit* %22, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @_Z3var3Lit(i32 %147)
  %149 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %143, i32 %148)
  %150 = load i32, i32* %149, align 4
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %142, %129
  br label %153

153:                                              ; preds = %152, %126
  br label %154

154:                                              ; preds = %153, %93, %78
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %73

158:                                              ; preds = %73
  br label %159

159:                                              ; preds = %174, %158
  %160 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %161 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 31
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* %11, align 4
  %164 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %161, i32 %162)
  %165 = bitcast %class.Lit* %23 to i8*
  %166 = bitcast %class.Lit* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %165, i8* align 4 %166, i64 4, i1 false)
  %167 = getelementptr inbounds %class.Lit, %class.Lit* %23, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @_Z3var3Lit(i32 %168)
  %170 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %160, i32 %169)
  %171 = load i8, i8* %170, align 1
  %172 = icmp ne i8 %171, 0
  %173 = xor i1 %172, true
  br i1 %173, label %174, label %175

174:                                              ; preds = %159
  br label %159

175:                                              ; preds = %159
  %176 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 31
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 1
  %179 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %176, i32 %178)
  %180 = bitcast %class.Lit* %10 to i8*
  %181 = bitcast %class.Lit* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 4, i1 false)
  %182 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 33
  %183 = bitcast %class.Lit* %24 to i8*
  %184 = bitcast %class.Lit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 4, i1 false)
  %185 = getelementptr inbounds %class.Lit, %class.Lit* %24, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @_Z3var3Lit(i32 %186)
  %188 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %182, i32 %187)
  %189 = load %class.Clause*, %class.Clause** %188, align 8
  store %class.Clause* %189, %class.Clause** %6, align 8
  %190 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %191 = bitcast %class.Lit* %25 to i8*
  %192 = bitcast %class.Lit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %191, i8* align 4 %192, i64 4, i1 false)
  %193 = getelementptr inbounds %class.Lit, %class.Lit* %25, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @_Z3var3Lit(i32 %194)
  %196 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %190, i32 %195)
  store i8 0, i8* %196, align 1
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %175
  %200 = load i32, i32* %9, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %54, label %202

202:                                              ; preds = %199
  %203 = bitcast %class.Lit* %27 to i8*
  %204 = bitcast %class.Lit* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %203, i8* align 4 %204, i64 4, i1 false)
  %205 = getelementptr inbounds %class.Lit, %class.Lit* %27, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @_Zco3Lit(i32 %206)
  %208 = getelementptr inbounds %class.Lit, %class.Lit* %26, i32 0, i32 0
  store i32 %207, i32* %208, align 4
  %209 = load %class.vec.0*, %class.vec.0** %7, align 8
  %210 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %209, i32 0)
  %211 = bitcast %class.Lit* %210 to i8*
  %212 = bitcast %class.Lit* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %211, i8* align 4 %212, i64 4, i1 false)
  %213 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 9
  %214 = load i8, i8* %213, align 8
  %215 = trunc i8 %214 to i1
  br i1 %215, label %216, label %283

216:                                              ; preds = %202
  store i32 0, i32* %30, align 4
  store i32 1, i32* %28, align 4
  br label %217

217:                                              ; preds = %234, %216
  %218 = load i32, i32* %28, align 4
  %219 = load %class.vec.0*, %class.vec.0** %7, align 8
  %220 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %219)
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %237

222:                                              ; preds = %217
  %223 = load %class.vec.0*, %class.vec.0** %7, align 8
  %224 = load i32, i32* %28, align 4
  %225 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %223, i32 %224)
  %226 = bitcast %class.Lit* %31 to i8*
  %227 = bitcast %class.Lit* %225 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %226, i8* align 4 %227, i64 4, i1 false)
  %228 = getelementptr inbounds %class.Lit, %class.Lit* %31, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @_Z3var3Lit(i32 %229)
  %231 = call i32 @_ZNK6Solver13abstractLevelEi(%class.Solver* %47, i32 %230)
  %232 = load i32, i32* %30, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %30, align 4
  br label %234

234:                                              ; preds = %222
  %235 = load i32, i32* %28, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %28, align 4
  br label %217

237:                                              ; preds = %217
  %238 = load %class.vec.0*, %class.vec.0** %7, align 8
  %239 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 45
  call void @_ZNK3vecI3LitE6copyToERS1_(%class.vec.0* %238, %class.vec.0* dereferenceable(16) %239)
  store i32 1, i32* %29, align 4
  store i32 1, i32* %28, align 4
  br label %240

240:                                              ; preds = %279, %237
  %241 = load i32, i32* %28, align 4
  %242 = load %class.vec.0*, %class.vec.0** %7, align 8
  %243 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %242)
  %244 = icmp slt i32 %241, %243
  br i1 %244, label %245, label %282

245:                                              ; preds = %240
  %246 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 33
  %247 = load %class.vec.0*, %class.vec.0** %7, align 8
  %248 = load i32, i32* %28, align 4
  %249 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %247, i32 %248)
  %250 = bitcast %class.Lit* %32 to i8*
  %251 = bitcast %class.Lit* %249 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 4, i1 false)
  %252 = getelementptr inbounds %class.Lit, %class.Lit* %32, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @_Z3var3Lit(i32 %253)
  %255 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %246, i32 %254)
  %256 = load %class.Clause*, %class.Clause** %255, align 8
  %257 = icmp eq %class.Clause* %256, null
  br i1 %257, label %268, label %258

258:                                              ; preds = %245
  %259 = load %class.vec.0*, %class.vec.0** %7, align 8
  %260 = load i32, i32* %28, align 4
  %261 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %259, i32 %260)
  %262 = bitcast %class.Lit* %33 to i8*
  %263 = bitcast %class.Lit* %261 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %262, i8* align 4 %263, i64 4, i1 false)
  %264 = load i32, i32* %30, align 4
  %265 = getelementptr inbounds %class.Lit, %class.Lit* %33, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call zeroext i1 @_ZN6Solver12litRedundantE3Litj(%class.Solver* %47, i32 %266, i32 %264)
  br i1 %267, label %278, label %268

268:                                              ; preds = %258, %245
  %269 = load %class.vec.0*, %class.vec.0** %7, align 8
  %270 = load i32, i32* %28, align 4
  %271 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %269, i32 %270)
  %272 = load %class.vec.0*, %class.vec.0** %7, align 8
  %273 = load i32, i32* %29, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %29, align 4
  %275 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %272, i32 %273)
  %276 = bitcast %class.Lit* %275 to i8*
  %277 = bitcast %class.Lit* %271 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %276, i8* align 4 %277, i64 4, i1 false)
  br label %278

278:                                              ; preds = %268, %258
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %28, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %28, align 4
  br label %240

282:                                              ; preds = %240
  br label %353

283:                                              ; preds = %202
  %284 = load %class.vec.0*, %class.vec.0** %7, align 8
  %285 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 45
  call void @_ZNK3vecI3LitE6copyToERS1_(%class.vec.0* %284, %class.vec.0* dereferenceable(16) %285)
  store i32 1, i32* %29, align 4
  store i32 1, i32* %28, align 4
  br label %286

286:                                              ; preds = %349, %283
  %287 = load i32, i32* %28, align 4
  %288 = load %class.vec.0*, %class.vec.0** %7, align 8
  %289 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %288)
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %291, label %352

291:                                              ; preds = %286
  %292 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 33
  %293 = load %class.vec.0*, %class.vec.0** %7, align 8
  %294 = load i32, i32* %28, align 4
  %295 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %293, i32 %294)
  %296 = bitcast %class.Lit* %35 to i8*
  %297 = bitcast %class.Lit* %295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %296, i8* align 4 %297, i64 4, i1 false)
  %298 = getelementptr inbounds %class.Lit, %class.Lit* %35, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @_Z3var3Lit(i32 %299)
  %301 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %292, i32 %300)
  %302 = load %class.Clause*, %class.Clause** %301, align 8
  store %class.Clause* %302, %class.Clause** %34, align 8
  store i32 1, i32* %36, align 4
  br label %303

303:                                              ; preds = %345, %291
  %304 = load i32, i32* %36, align 4
  %305 = load %class.Clause*, %class.Clause** %34, align 8
  %306 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %305)
  %307 = icmp slt i32 %304, %306
  br i1 %307, label %308, label %348

308:                                              ; preds = %303
  %309 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %310 = load %class.Clause*, %class.Clause** %34, align 8
  %311 = load i32, i32* %36, align 4
  %312 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %310, i32 %311)
  %313 = bitcast %class.Lit* %37 to i8*
  %314 = bitcast %class.Lit* %312 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %313, i8* align 4 %314, i64 4, i1 false)
  %315 = getelementptr inbounds %class.Lit, %class.Lit* %37, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @_Z3var3Lit(i32 %316)
  %318 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %309, i32 %317)
  %319 = load i8, i8* %318, align 1
  %320 = icmp ne i8 %319, 0
  br i1 %320, label %344, label %321

321:                                              ; preds = %308
  %322 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %323 = load %class.Clause*, %class.Clause** %34, align 8
  %324 = load i32, i32* %36, align 4
  %325 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %323, i32 %324)
  %326 = bitcast %class.Lit* %38 to i8*
  %327 = bitcast %class.Lit* %325 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %326, i8* align 4 %327, i64 4, i1 false)
  %328 = getelementptr inbounds %class.Lit, %class.Lit* %38, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @_Z3var3Lit(i32 %329)
  %331 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %322, i32 %330)
  %332 = load i32, i32* %331, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %344

334:                                              ; preds = %321
  %335 = load %class.vec.0*, %class.vec.0** %7, align 8
  %336 = load i32, i32* %28, align 4
  %337 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %335, i32 %336)
  %338 = load %class.vec.0*, %class.vec.0** %7, align 8
  %339 = load i32, i32* %29, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %29, align 4
  %341 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %338, i32 %339)
  %342 = bitcast %class.Lit* %341 to i8*
  %343 = bitcast %class.Lit* %337 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %342, i8* align 4 %343, i64 4, i1 false)
  br label %348

344:                                              ; preds = %321, %308
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %36, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %36, align 4
  br label %303

348:                                              ; preds = %334, %303
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %28, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %28, align 4
  br label %286

352:                                              ; preds = %286
  br label %353

353:                                              ; preds = %352, %282
  %354 = load %class.vec.0*, %class.vec.0** %7, align 8
  %355 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %354)
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 19
  %358 = load i64, i64* %357, align 8
  %359 = add i64 %358, %356
  store i64 %359, i64* %357, align 8
  %360 = load %class.vec.0*, %class.vec.0** %7, align 8
  %361 = load i32, i32* %28, align 4
  %362 = load i32, i32* %29, align 4
  %363 = sub nsw i32 %361, %362
  call void @_ZN3vecI3LitE6shrinkEi(%class.vec.0* %360, i32 %363)
  %364 = load %class.vec.0*, %class.vec.0** %7, align 8
  %365 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %364)
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 20
  %368 = load i64, i64* %367, align 8
  %369 = add i64 %368, %366
  store i64 %369, i64* %367, align 8
  %370 = load %class.vec.0*, %class.vec.0** %7, align 8
  %371 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %370)
  %372 = icmp eq i32 %371, 1
  br i1 %372, label %373, label %375

373:                                              ; preds = %353
  %374 = load i32*, i32** %8, align 8
  store i32 0, i32* %374, align 4
  br label %437

375:                                              ; preds = %353
  store i32 1, i32* %39, align 4
  store i32 2, i32* %40, align 4
  br label %376

376:                                              ; preds = %408, %375
  %377 = load i32, i32* %40, align 4
  %378 = load %class.vec.0*, %class.vec.0** %7, align 8
  %379 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %378)
  %380 = icmp slt i32 %377, %379
  br i1 %380, label %381, label %411

381:                                              ; preds = %376
  %382 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %383 = load %class.vec.0*, %class.vec.0** %7, align 8
  %384 = load i32, i32* %40, align 4
  %385 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %383, i32 %384)
  %386 = bitcast %class.Lit* %41 to i8*
  %387 = bitcast %class.Lit* %385 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %386, i8* align 4 %387, i64 4, i1 false)
  %388 = getelementptr inbounds %class.Lit, %class.Lit* %41, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @_Z3var3Lit(i32 %389)
  %391 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %382, i32 %390)
  %392 = load i32, i32* %391, align 4
  %393 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %394 = load %class.vec.0*, %class.vec.0** %7, align 8
  %395 = load i32, i32* %39, align 4
  %396 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %394, i32 %395)
  %397 = bitcast %class.Lit* %42 to i8*
  %398 = bitcast %class.Lit* %396 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %397, i8* align 4 %398, i64 4, i1 false)
  %399 = getelementptr inbounds %class.Lit, %class.Lit* %42, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @_Z3var3Lit(i32 %400)
  %402 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %393, i32 %401)
  %403 = load i32, i32* %402, align 4
  %404 = icmp sgt i32 %392, %403
  br i1 %404, label %405, label %407

405:                                              ; preds = %381
  %406 = load i32, i32* %40, align 4
  store i32 %406, i32* %39, align 4
  br label %407

407:                                              ; preds = %405, %381
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %40, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %40, align 4
  br label %376

411:                                              ; preds = %376
  %412 = load %class.vec.0*, %class.vec.0** %7, align 8
  %413 = load i32, i32* %39, align 4
  %414 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %412, i32 %413)
  %415 = bitcast %class.Lit* %43 to i8*
  %416 = bitcast %class.Lit* %414 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %415, i8* align 4 %416, i64 4, i1 false)
  %417 = load %class.vec.0*, %class.vec.0** %7, align 8
  %418 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %417, i32 1)
  %419 = load %class.vec.0*, %class.vec.0** %7, align 8
  %420 = load i32, i32* %39, align 4
  %421 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %419, i32 %420)
  %422 = bitcast %class.Lit* %421 to i8*
  %423 = bitcast %class.Lit* %418 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %422, i8* align 4 %423, i64 4, i1 false)
  %424 = load %class.vec.0*, %class.vec.0** %7, align 8
  %425 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %424, i32 1)
  %426 = bitcast %class.Lit* %425 to i8*
  %427 = bitcast %class.Lit* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %426, i8* align 4 %427, i64 4, i1 false)
  %428 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 34
  %429 = bitcast %class.Lit* %44 to i8*
  %430 = bitcast %class.Lit* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %429, i8* align 4 %430, i64 4, i1 false)
  %431 = getelementptr inbounds %class.Lit, %class.Lit* %44, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @_Z3var3Lit(i32 %432)
  %434 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %428, i32 %433)
  %435 = load i32, i32* %434, align 4
  %436 = load i32*, i32** %8, align 8
  store i32 %435, i32* %436, align 4
  br label %437

437:                                              ; preds = %411, %373
  store i32 0, i32* %45, align 4
  br label %438

438:                                              ; preds = %454, %437
  %439 = load i32, i32* %45, align 4
  %440 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 45
  %441 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %440)
  %442 = icmp slt i32 %439, %441
  br i1 %442, label %443, label %457

443:                                              ; preds = %438
  %444 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 43
  %445 = getelementptr inbounds %class.Solver, %class.Solver* %47, i32 0, i32 45
  %446 = load i32, i32* %45, align 4
  %447 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %445, i32 %446)
  %448 = bitcast %class.Lit* %46 to i8*
  %449 = bitcast %class.Lit* %447 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %448, i8* align 4 %449, i64 4, i1 false)
  %450 = getelementptr inbounds %class.Lit, %class.Lit* %46, i32 0, i32 0
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @_Z3var3Lit(i32 %451)
  %453 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %444, i32 %452)
  store i8 0, i8* %453, align 1
  br label %454

454:                                              ; preds = %443
  %455 = load i32, i32* %45, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %45, align 4
  br label %438

457:                                              ; preds = %438
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE4pushEv(%class.vec.0* %0) #0 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = ashr i32 %13, 1
  %15 = call i32 @_ZN3vecI3LitE4imaxEii(i32 2, i32 %14)
  %16 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  %18 = load %class.Lit*, %class.Lit** %17, align 8
  %19 = bitcast %class.Lit* %18 to i8*
  %20 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = call i8* @realloc(i8* %19, i64 %23) #12
  %25 = bitcast i8* %24 to %class.Lit*
  %26 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  store %class.Lit* %25, %class.Lit** %26, align 8
  br label %27

27:                                               ; preds = %9, %1
  %28 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  %29 = load %class.Lit*, %class.Lit** %28, align 8
  %30 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %class.Lit, %class.Lit* %29, i64 %32
  %34 = bitcast %class.Lit* %33 to i8*
  %35 = bitcast i8* %34 to %class.Lit*
  call void @_ZN3LitC2Ev(%class.Lit* %35)
  %36 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver15claBumpActivityER6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  %5 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %6 = load %class.Solver*, %class.Solver** %3, align 8
  %7 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 24
  %8 = load double, double* %7, align 8
  %9 = load %class.Clause*, %class.Clause** %4, align 8
  %10 = call dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %9)
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = fadd double %12, %8
  %14 = fptrunc double %13 to float
  store float %14, float* %10, align 4
  %15 = fpext float %14 to double
  %16 = fcmp ogt double %15, 1.000000e+20
  br i1 %16, label %17, label %40

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %33, %17
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 23
  %21 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %18
  %24 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 23
  %25 = load i32, i32* %5, align 4
  %26 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %24, i32 %25)
  %27 = load %class.Clause*, %class.Clause** %26, align 8
  %28 = call dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %27)
  %29 = load float, float* %28, align 4
  %30 = fpext float %29 to double
  %31 = fmul double %30, 0x3BC79CA10C924223
  %32 = fptrunc double %31 to float
  store float %32, float* %28, align 4
  br label %33

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %18

36:                                               ; preds = %18
  %37 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 24
  %38 = load double, double* %37, align 8
  %39 = fmul double %38, 0x3BC79CA10C924223
  store double %39, double* %37, align 8
  br label %40

40:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver15varBumpActivityEi(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.Solver*, %class.Solver** %3, align 8
  %7 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 26
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 25
  %10 = load i32, i32* %4, align 4
  %11 = call dereferenceable(8) double* @_ZN3vecIdEixEi(%class.vec.2* %9, i32 %10)
  %12 = load double, double* %11, align 8
  %13 = fadd double %12, %8
  store double %13, double* %11, align 8
  %14 = fcmp ogt double %13, 1.000000e+100
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %26, %15
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %6)
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 25
  %22 = load i32, i32* %5, align 4
  %23 = call dereferenceable(8) double* @_ZN3vecIdEixEi(%class.vec.2* %21, i32 %22)
  %24 = load double, double* %23, align 8
  %25 = fmul double %24, 1.000000e-100
  store double %25, double* %23, align 8
  br label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %16

29:                                               ; preds = %16
  %30 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 26
  %31 = load double, double* %30, align 8
  %32 = fmul double %31, 1.000000e-100
  store double %32, double* %30, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 39
  %35 = load i32, i32* %4, align 4
  %36 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi(%class.Heap* %34, i32 %35)
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 39
  %39 = load i32, i32* %4, align 4
  call void @_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi(%class.Heap* %38, i32 %39)
  br label %40

40:                                               ; preds = %37, %33
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZNK6Solver13abstractLevelEi(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Solver*, %class.Solver** %3, align 8
  %6 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 34
  %7 = load i32, i32* %4, align 4
  %8 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %6, i32 %7)
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 31
  %11 = shl i32 1, %10
  ret i32 %11
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZNK3vecI3LitE6copyToERS1_(%class.vec.0* %0, %class.vec.0* dereferenceable(16) %1) #0 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca %class.vec.0*, align 8
  %5 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store %class.vec.0* %1, %class.vec.0** %4, align 8
  %6 = load %class.vec.0*, %class.vec.0** %3, align 8
  %7 = load %class.vec.0*, %class.vec.0** %4, align 8
  call void @_ZN3vecI3LitE5clearEb(%class.vec.0* %7, i1 zeroext false)
  %8 = load %class.vec.0*, %class.vec.0** %4, align 8
  %9 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  call void @_ZN3vecI3LitE6growToEi(%class.vec.0* %8, i32 %10)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load %class.vec.0*, %class.vec.0** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %17, i32 %18)
  %20 = bitcast %class.Lit* %19 to i8*
  %21 = bitcast i8* %20 to %class.Lit*
  %22 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 0
  %23 = load %class.Lit*, %class.Lit** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %class.Lit, %class.Lit* %23, i64 %25
  %27 = bitcast %class.Lit* %21 to i8*
  %28 = bitcast %class.Lit* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %11

32:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_ZN6Solver12litRedundantE3Litj(%class.Solver* %0, i32 %1, i32 %2) #0 align 2 {
  %4 = alloca i1, align 1
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.Solver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.Lit, align 4
  %10 = alloca %class.Clause*, align 8
  %11 = alloca %class.Lit, align 4
  %12 = alloca i32, align 4
  %13 = alloca %class.Lit, align 4
  %14 = alloca %class.Lit, align 4
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.Lit, align 4
  %17 = alloca %class.Lit, align 4
  %18 = alloca %class.Lit, align 4
  %19 = alloca i32, align 4
  %20 = alloca %class.Lit, align 4
  %21 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  store i32 %1, i32* %21, align 4
  store %class.Solver* %0, %class.Solver** %6, align 8
  store i32 %2, i32* %7, align 4
  %22 = load %class.Solver*, %class.Solver** %6, align 8
  %23 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  call void @_ZN3vecI3LitE5clearEb(%class.vec.0* %23, i1 zeroext false)
  %24 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %24, %class.Lit* dereferenceable(4) %5)
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  %26 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %25)
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %150, %3
  %28 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  %29 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %28)
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %151

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 33
  %33 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  %34 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitE4lastEv(%class.vec.0* %33)
  %35 = bitcast %class.Lit* %9 to i8*
  %36 = bitcast %class.Lit* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = getelementptr inbounds %class.Lit, %class.Lit* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @_Z3var3Lit(i32 %38)
  %40 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %32, i32 %39)
  %41 = load %class.Clause*, %class.Clause** %40, align 8
  %42 = icmp ne %class.Clause* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %46

44:                                               ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12.71, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 318, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12litRedundantE3Litj, i64 0, i64 0)) #15
  unreachable

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %43
  %47 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 33
  %48 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  %49 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitE4lastEv(%class.vec.0* %48)
  %50 = bitcast %class.Lit* %11 to i8*
  %51 = bitcast %class.Lit* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %50, i8* align 4 %51, i64 4, i1 false)
  %52 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @_Z3var3Lit(i32 %53)
  %55 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %47, i32 %54)
  %56 = load %class.Clause*, %class.Clause** %55, align 8
  store %class.Clause* %56, %class.Clause** %10, align 8
  %57 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  call void @_ZN3vecI3LitE3popEv(%class.vec.0* %57)
  store i32 1, i32* %12, align 4
  br label %58

58:                                               ; preds = %147, %46
  %59 = load i32, i32* %12, align 4
  %60 = load %class.Clause*, %class.Clause** %10, align 8
  %61 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %60)
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %150

63:                                               ; preds = %58
  %64 = load %class.Clause*, %class.Clause** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %64, i32 %65)
  %67 = bitcast %class.Lit* %13 to i8*
  %68 = bitcast %class.Lit* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  %69 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 43
  %70 = bitcast %class.Lit* %14 to i8*
  %71 = bitcast %class.Lit* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = getelementptr inbounds %class.Lit, %class.Lit* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @_Z3var3Lit(i32 %73)
  %75 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %69, i32 %74)
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %146, label %78

78:                                               ; preds = %63
  %79 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 34
  %80 = bitcast %class.Lit* %15 to i8*
  %81 = bitcast %class.Lit* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = getelementptr inbounds %class.Lit, %class.Lit* %15, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @_Z3var3Lit(i32 %83)
  %85 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %79, i32 %84)
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %146

88:                                               ; preds = %78
  %89 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 33
  %90 = bitcast %class.Lit* %16 to i8*
  %91 = bitcast %class.Lit* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = getelementptr inbounds %class.Lit, %class.Lit* %16, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @_Z3var3Lit(i32 %93)
  %95 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %89, i32 %94)
  %96 = load %class.Clause*, %class.Clause** %95, align 8
  %97 = icmp ne %class.Clause* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %88
  %99 = bitcast %class.Lit* %17 to i8*
  %100 = bitcast %class.Lit* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = getelementptr inbounds %class.Lit, %class.Lit* %17, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @_Z3var3Lit(i32 %102)
  %104 = call i32 @_ZNK6Solver13abstractLevelEi(%class.Solver* %22, i32 %103)
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %98
  %109 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 43
  %110 = bitcast %class.Lit* %18 to i8*
  %111 = bitcast %class.Lit* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = getelementptr inbounds %class.Lit, %class.Lit* %18, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_Z3var3Lit(i32 %113)
  %115 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %109, i32 %114)
  store i8 1, i8* %115, align 1
  %116 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 44
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %116, %class.Lit* dereferenceable(4) %13)
  %117 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %117, %class.Lit* dereferenceable(4) %13)
  br label %145

118:                                              ; preds = %98, %88
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %136, %118
  %121 = load i32, i32* %19, align 4
  %122 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  %123 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %122)
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 43
  %127 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  %128 = load i32, i32* %19, align 4
  %129 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %127, i32 %128)
  %130 = bitcast %class.Lit* %20 to i8*
  %131 = bitcast %class.Lit* %129 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = getelementptr inbounds %class.Lit, %class.Lit* %20, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @_Z3var3Lit(i32 %133)
  %135 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %126, i32 %134)
  store i8 0, i8* %135, align 1
  br label %136

136:                                              ; preds = %125
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %19, align 4
  br label %120

139:                                              ; preds = %120
  %140 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  %141 = getelementptr inbounds %class.Solver, %class.Solver* %22, i32 0, i32 45
  %142 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %141)
  %143 = load i32, i32* %8, align 4
  %144 = sub nsw i32 %142, %143
  call void @_ZN3vecI3LitE6shrinkEi(%class.vec.0* %140, i32 %144)
  store i1 false, i1* %4, align 1
  br label %152

145:                                              ; preds = %108
  br label %146

146:                                              ; preds = %145, %78, %63
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %58

150:                                              ; preds = %58
  br label %27

151:                                              ; preds = %27
  store i1 true, i1* %4, align 1
  br label %152

152:                                              ; preds = %151, %139
  %153 = load i1, i1* %4, align 1
  ret i1 %153
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) %class.Lit* @_ZN3vecI3LitE4lastEv(%class.vec.0* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  %5 = load %class.Lit*, %class.Lit** %4, align 8
  %6 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = sub nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Lit, %class.Lit* %5, i64 %9
  ret %class.Lit* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE3popEv(%class.vec.0* %0) #1 comdat align 2 {
  %2 = alloca %class.vec.0*, align 8
  store %class.vec.0* %0, %class.vec.0** %2, align 8
  %3 = load %class.vec.0*, %class.vec.0** %2, align 8
  %4 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add nsw i32 %5, -1
  store i32 %6, i32* %4, align 8
  %7 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 0
  %8 = load %class.Lit*, %class.Lit** %7, align 8
  %9 = getelementptr inbounds %class.vec.0, %class.vec.0* %3, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %class.Lit, %class.Lit* %8, i64 %11
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE6growToEi(%class.vec.0* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.vec.0*, %class.vec.0** %3, align 8
  %7 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  call void @_ZN3vecI3LitE4growEi(%class.vec.0* %6, i32 %13)
  %14 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 0
  %22 = load %class.Lit*, %class.Lit** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %class.Lit, %class.Lit* %22, i64 %24
  %26 = bitcast %class.Lit* %25 to i8*
  %27 = bitcast i8* %26 to %class.Lit*
  call void @_ZN3LitC2Ev(%class.Lit* %27)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %class.vec.0, %class.vec.0* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI3LitE4growEi(%class.vec.0* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.0*, align 8
  %4 = alloca i32, align 4
  store %class.vec.0* %0, %class.vec.0** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.0*, %class.vec.0** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 2, %20 ]
  %23 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  br label %38

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %32, %24
  %26 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 1
  %31 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %25, label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %21
  %39 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  %40 = load %class.Lit*, %class.Lit** %39, align 8
  %41 = bitcast %class.Lit* %40 to i8*
  %42 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = call i8* @realloc(i8* %41, i64 %45) #12
  %47 = bitcast i8* %46 to %class.Lit*
  %48 = getelementptr inbounds %class.vec.0, %class.vec.0* %5, i32 0, i32 0
  store %class.Lit* %47, %class.Lit** %48, align 8
  br label %49

49:                                               ; preds = %38, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) double* @_ZN3vecIdEixEi(%class.vec.2* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.2*, align 8
  %4 = alloca i32, align 4
  store %class.vec.2* %0, %class.vec.2** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.2*, %class.vec.2** %3, align 8
  %6 = getelementptr inbounds %class.vec.2, %class.vec.2* %5, i32 0, i32 0
  %7 = load double*, double** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds double, double* %7, i64 %9
  ret double* %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Heap*, %class.Heap** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE6inHeapEi(%class.Heap* %5, i32 %6)
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29.72, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28.18, i64 0, i64 0), i32 82, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 2
  %13 = load i32, i32* %4, align 4
  %14 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %12, i32 %13)
  %15 = load i32, i32* %14, align 4
  call void @_ZN4HeapIN6Solver10VarOrderLtEE11percolateUpEi(%class.Heap* %5, i32 %15)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %0) #1 comdat align 2 {
  %2 = alloca %class.Clause*, align 8
  store %class.Clause* %0, %class.Clause** %2, align 8
  %3 = load %class.Clause*, %class.Clause** %2, align 8
  %4 = getelementptr inbounds %class.Clause, %class.Clause* %3, i32 0, i32 1
  %5 = bitcast %union.anon* %4 to float*
  ret float* %5
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver12analyzeFinalE3LitR3vecIS0_E(%class.Solver* %0, i32 %1, %class.vec.0* dereferenceable(16) %2) #0 align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.vec.0*, align 8
  %7 = alloca %class.Lit, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %class.Lit, align 4
  %11 = alloca %class.Lit, align 4
  %12 = alloca %class.Lit, align 4
  %13 = alloca %class.Clause*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %class.Lit, align 4
  %16 = alloca %class.Lit, align 4
  %17 = alloca %class.Lit, align 4
  %18 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  store i32 %1, i32* %18, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  store %class.vec.0* %2, %class.vec.0** %6, align 8
  %19 = load %class.Solver*, %class.Solver** %5, align 8
  %20 = load %class.vec.0*, %class.vec.0** %6, align 8
  call void @_ZN3vecI3LitE5clearEb(%class.vec.0* %20, i1 zeroext false)
  %21 = load %class.vec.0*, %class.vec.0** %6, align 8
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %21, %class.Lit* dereferenceable(4) %4)
  %22 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %19)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %137

25:                                               ; preds = %3
  %26 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 43
  %27 = bitcast %class.Lit* %7 to i8*
  %28 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @_Z3var3Lit(i32 %30)
  %32 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %26, i32 %31)
  store i8 1, i8* %32, align 1
  %33 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 31
  %34 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %126, %25
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 32
  %39 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %38, i32 0)
  %40 = load i32, i32* %39, align 4
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %129

42:                                               ; preds = %36
  %43 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 31
  %44 = load i32, i32* %8, align 4
  %45 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %43, i32 %44)
  %46 = bitcast %class.Lit* %10 to i8*
  %47 = bitcast %class.Lit* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %class.Lit, %class.Lit* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @_Z3var3Lit(i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 43
  %52 = load i32, i32* %9, align 4
  %53 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %51, i32 %52)
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %125

56:                                               ; preds = %42
  %57 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 33
  %58 = load i32, i32* %9, align 4
  %59 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %57, i32 %58)
  %60 = load %class.Clause*, %class.Clause** %59, align 8
  %61 = icmp eq %class.Clause* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 34
  %64 = load i32, i32* %9, align 4
  %65 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %63, i32 %64)
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %71

69:                                               ; preds = %62
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13.73, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 365, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__._ZN6Solver12analyzeFinalE3LitR3vecIS0_E, i64 0, i64 0)) #15
  unreachable

70:                                               ; No predecessors!
  br label %71

71:                                               ; preds = %70, %68
  %72 = load %class.vec.0*, %class.vec.0** %6, align 8
  %73 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 31
  %74 = load i32, i32* %8, align 4
  %75 = call dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %73, i32 %74)
  %76 = bitcast %class.Lit* %12 to i8*
  %77 = bitcast %class.Lit* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = getelementptr inbounds %class.Lit, %class.Lit* %12, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @_Zco3Lit(i32 %79)
  %81 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  call void @_ZN3vecI3LitE4pushERKS0_(%class.vec.0* %72, %class.Lit* dereferenceable(4) %11)
  br label %121

82:                                               ; preds = %56
  %83 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 33
  %84 = load i32, i32* %9, align 4
  %85 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %83, i32 %84)
  %86 = load %class.Clause*, %class.Clause** %85, align 8
  store %class.Clause* %86, %class.Clause** %13, align 8
  store i32 1, i32* %14, align 4
  br label %87

87:                                               ; preds = %117, %82
  %88 = load i32, i32* %14, align 4
  %89 = load %class.Clause*, %class.Clause** %13, align 8
  %90 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %89)
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %120

92:                                               ; preds = %87
  %93 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 34
  %94 = load %class.Clause*, %class.Clause** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %94, i32 %95)
  %97 = bitcast %class.Lit* %15 to i8*
  %98 = bitcast %class.Lit* %96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %97, i8* align 4 %98, i64 4, i1 false)
  %99 = getelementptr inbounds %class.Lit, %class.Lit* %15, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @_Z3var3Lit(i32 %100)
  %102 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %93, i32 %101)
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %92
  %106 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 43
  %107 = load %class.Clause*, %class.Clause** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %107, i32 %108)
  %110 = bitcast %class.Lit* %16 to i8*
  %111 = bitcast %class.Lit* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 %111, i64 4, i1 false)
  %112 = getelementptr inbounds %class.Lit, %class.Lit* %16, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @_Z3var3Lit(i32 %113)
  %115 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %106, i32 %114)
  store i8 1, i8* %115, align 1
  br label %116

116:                                              ; preds = %105, %92
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %87

120:                                              ; preds = %87
  br label %121

121:                                              ; preds = %120, %71
  %122 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 43
  %123 = load i32, i32* %9, align 4
  %124 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %122, i32 %123)
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %121, %42
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %8, align 4
  br label %36

129:                                              ; preds = %36
  %130 = getelementptr inbounds %class.Solver, %class.Solver* %19, i32 0, i32 43
  %131 = bitcast %class.Lit* %17 to i8*
  %132 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 4, i1 false)
  %133 = getelementptr inbounds %class.Lit, %class.Lit* %17, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @_Z3var3Lit(i32 %134)
  %136 = call dereferenceable(1) i8* @_ZN3vecIcEixEi(%class.vec.4* %130, i32 %135)
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %129, %24
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver8reduceDBEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %2, align 8
  %7 = load %class.Solver*, %class.Solver** %2, align 8
  %8 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 24
  %9 = load double, double* %8, align 8
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %11 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %10)
  %12 = sitofp i32 %11 to double
  %13 = fdiv double %9, %12
  store double %13, double* %5, align 8
  %14 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  call void @_Z4sortIP6Clause11reduceDB_ltEvR3vecIT_ET0_(%class.vec.1* dereferenceable(16) %14)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %49, %1
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %18 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %17)
  %19 = sdiv i32 %18, 2
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %23 = load i32, i32* %3, align 4
  %24 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %22, i32 %23)
  %25 = load %class.Clause*, %class.Clause** %24, align 8
  %26 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %25)
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %30 = load i32, i32* %3, align 4
  %31 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %29, i32 %30)
  %32 = load %class.Clause*, %class.Clause** %31, align 8
  %33 = call zeroext i1 @_ZNK6Solver6lockedERK6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %32)
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %36 = load i32, i32* %3, align 4
  %37 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %35, i32 %36)
  %38 = load %class.Clause*, %class.Clause** %37, align 8
  call void @_ZN6Solver12removeClauseER6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %38)
  br label %48

39:                                               ; preds = %28, %21
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %41 = load i32, i32* %3, align 4
  %42 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %40, i32 %41)
  %43 = load %class.Clause*, %class.Clause** %42, align 8
  %44 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  %47 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %44, i32 %45)
  store %class.Clause* %43, %class.Clause** %47, align 8
  br label %48

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %15

52:                                               ; preds = %15
  br label %53

53:                                               ; preds = %96, %52
  %54 = load i32, i32* %3, align 4
  %55 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %56 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %55)
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %99

58:                                               ; preds = %53
  %59 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %60 = load i32, i32* %3, align 4
  %61 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %59, i32 %60)
  %62 = load %class.Clause*, %class.Clause** %61, align 8
  %63 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %62)
  %64 = icmp sgt i32 %63, 2
  br i1 %64, label %65, label %86

65:                                               ; preds = %58
  %66 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %67 = load i32, i32* %3, align 4
  %68 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %66, i32 %67)
  %69 = load %class.Clause*, %class.Clause** %68, align 8
  %70 = call zeroext i1 @_ZNK6Solver6lockedERK6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %69)
  br i1 %70, label %86, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %73 = load i32, i32* %3, align 4
  %74 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %72, i32 %73)
  %75 = load %class.Clause*, %class.Clause** %74, align 8
  %76 = call dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %75)
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = load double, double* %5, align 8
  %80 = fcmp olt double %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %83 = load i32, i32* %3, align 4
  %84 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %82, i32 %83)
  %85 = load %class.Clause*, %class.Clause** %84, align 8
  call void @_ZN6Solver12removeClauseER6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %85)
  br label %95

86:                                               ; preds = %71, %65, %58
  %87 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %88 = load i32, i32* %3, align 4
  %89 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %87, i32 %88)
  %90 = load %class.Clause*, %class.Clause** %89, align 8
  %91 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %91, i32 %92)
  store %class.Clause* %90, %class.Clause** %94, align 8
  br label %95

95:                                               ; preds = %86, %81
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %53

99:                                               ; preds = %53
  %100 = getelementptr inbounds %class.Solver, %class.Solver* %7, i32 0, i32 23
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %101, %102
  call void @_ZN3vecIP6ClauseE6shrinkEi(%class.vec.1* %100, i32 %103)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z4sortIP6Clause11reduceDB_ltEvR3vecIT_ET0_(%class.vec.1* dereferenceable(16) %0) #0 comdat {
  %2 = alloca %class.lbool, align 1
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca %class.lbool, align 1
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  %5 = load %class.vec.1*, %class.vec.1** %3, align 8
  %6 = call %class.Clause** @_ZN3vecIP6ClauseEcvPS1_Ev(%class.vec.1* %5)
  %7 = load %class.vec.1*, %class.vec.1** %3, align 8
  %8 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %7)
  call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %6, i32 %8)
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK6Solver6lockedERK6Clause(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.lbool, align 1
  %7 = alloca %class.Lit, align 4
  %8 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %9 = load %class.Solver*, %class.Solver** %3, align 8
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 33
  %11 = load %class.Clause*, %class.Clause** %4, align 8
  %12 = call i32 @_ZNK6ClauseixEi(%class.Clause* %11, i32 0)
  %13 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_Z3var3Lit(i32 %15)
  %17 = call dereferenceable(8) %class.Clause** @_ZNK3vecIP6ClauseEixEi(%class.vec.1* %10, i32 %16)
  %18 = load %class.Clause*, %class.Clause** %17, align 8
  %19 = load %class.Clause*, %class.Clause** %4, align 8
  %20 = icmp eq %class.Clause* %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %class.Clause*, %class.Clause** %4, align 8
  %23 = call i32 @_ZNK6ClauseixEi(%class.Clause* %22, i32 0)
  %24 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %9, i32 %26)
  %28 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  store i8 %27, i8* %28, align 1
  %29 = bitcast %class.lbool* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %30 = getelementptr inbounds %class.lbool, %class.lbool* %8, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %6, i8 %31)
  br label %33

33:                                               ; preds = %21, %2
  %34 = phi i1 [ false, %2 ], [ %32, %21 ]
  ret i1 %34
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(8) %class.Clause** @_ZNK3vecIP6ClauseEixEi(%class.vec.1* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec.1*, align 8
  %4 = alloca i32, align 4
  store %class.vec.1* %0, %class.vec.1** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec.1*, %class.vec.1** %3, align 8
  %6 = getelementptr inbounds %class.vec.1, %class.vec.1* %5, i32 0, i32 0
  %7 = load %class.Clause**, %class.Clause*** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.Clause*, %class.Clause** %7, i64 %9
  ret %class.Clause** %10
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %0, i32 %1) #0 comdat {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Clause**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.lbool, align 1
  %7 = alloca %class.Clause*, align 8
  %8 = alloca %class.Clause*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %class.lbool, align 1
  %12 = alloca %class.lbool, align 1
  store %class.Clause** %0, %class.Clause*** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp sle i32 %13, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %class.Clause**, %class.Clause*** %4, align 8
  %17 = load i32, i32* %5, align 4
  call void @_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %16, i32 %17)
  br label %85

18:                                               ; preds = %2
  %19 = load %class.Clause**, %class.Clause*** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %class.Clause*, %class.Clause** %19, i64 %22
  %24 = load %class.Clause*, %class.Clause** %23, align 8
  store %class.Clause* %24, %class.Clause** %7, align 8
  store i32 -1, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %55, %18
  br label %27

27:                                               ; preds = %30, %26
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27
  %31 = load %class.Clause**, %class.Clause*** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %class.Clause*, %class.Clause** %31, i64 %33
  %35 = load %class.Clause*, %class.Clause** %34, align 8
  %36 = load %class.Clause*, %class.Clause** %7, align 8
  %37 = call zeroext i1 @_ZN11reduceDB_ltclEP6ClauseS1_(%class.lbool* %3, %class.Clause* %35, %class.Clause* %36)
  br i1 %37, label %27, label %38

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %42, %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39
  %43 = load %class.Clause*, %class.Clause** %7, align 8
  %44 = load %class.Clause**, %class.Clause*** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %class.Clause*, %class.Clause** %44, i64 %46
  %48 = load %class.Clause*, %class.Clause** %47, align 8
  %49 = call zeroext i1 @_ZN11reduceDB_ltclEP6ClauseS1_(%class.lbool* %3, %class.Clause* %43, %class.Clause* %48)
  br i1 %49, label %39, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %75

55:                                               ; preds = %50
  %56 = load %class.Clause**, %class.Clause*** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %class.Clause*, %class.Clause** %56, i64 %58
  %60 = load %class.Clause*, %class.Clause** %59, align 8
  store %class.Clause* %60, %class.Clause** %8, align 8
  %61 = load %class.Clause**, %class.Clause*** %4, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %class.Clause*, %class.Clause** %61, i64 %63
  %65 = load %class.Clause*, %class.Clause** %64, align 8
  %66 = load %class.Clause**, %class.Clause*** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %class.Clause*, %class.Clause** %66, i64 %68
  store %class.Clause* %65, %class.Clause** %69, align 8
  %70 = load %class.Clause*, %class.Clause** %8, align 8
  %71 = load %class.Clause**, %class.Clause*** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %class.Clause*, %class.Clause** %71, i64 %73
  store %class.Clause* %70, %class.Clause** %74, align 8
  br label %26

75:                                               ; preds = %54
  %76 = load %class.Clause**, %class.Clause*** %4, align 8
  %77 = load i32, i32* %9, align 4
  call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %76, i32 %77)
  %78 = load %class.Clause**, %class.Clause*** %4, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %class.Clause*, %class.Clause** %78, i64 %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %81, i32 %84)
  br label %85

85:                                               ; preds = %75, %15
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_(%class.Clause** %0, i32 %1) #0 comdat {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Clause**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %class.Clause*, align 8
  store %class.Clause** %0, %class.Clause*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %61, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %64

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %38, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %class.Clause**, %class.Clause*** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %class.Clause*, %class.Clause** %24, i64 %26
  %28 = load %class.Clause*, %class.Clause** %27, align 8
  %29 = load %class.Clause**, %class.Clause*** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %class.Clause*, %class.Clause** %29, i64 %31
  %33 = load %class.Clause*, %class.Clause** %32, align 8
  %34 = call zeroext i1 @_ZN11reduceDB_ltclEP6ClauseS1_(%class.lbool* %3, %class.Clause* %28, %class.Clause* %33)
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %19

41:                                               ; preds = %19
  %42 = load %class.Clause**, %class.Clause*** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %class.Clause*, %class.Clause** %42, i64 %44
  %46 = load %class.Clause*, %class.Clause** %45, align 8
  store %class.Clause* %46, %class.Clause** %9, align 8
  %47 = load %class.Clause**, %class.Clause*** %4, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %class.Clause*, %class.Clause** %47, i64 %49
  %51 = load %class.Clause*, %class.Clause** %50, align 8
  %52 = load %class.Clause**, %class.Clause*** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %class.Clause*, %class.Clause** %52, i64 %54
  store %class.Clause* %51, %class.Clause** %55, align 8
  %56 = load %class.Clause*, %class.Clause** %9, align 8
  %57 = load %class.Clause**, %class.Clause*** %4, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %class.Clause*, %class.Clause** %57, i64 %59
  store %class.Clause* %56, %class.Clause** %60, align 8
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %10

64:                                               ; preds = %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN11reduceDB_ltclEP6ClauseS1_(%class.lbool* %0, %class.Clause* %1, %class.Clause* %2) #1 comdat align 2 {
  %4 = alloca %class.lbool*, align 8
  %5 = alloca %class.Clause*, align 8
  %6 = alloca %class.Clause*, align 8
  store %class.lbool* %0, %class.lbool** %4, align 8
  store %class.Clause* %1, %class.Clause** %5, align 8
  store %class.Clause* %2, %class.Clause** %6, align 8
  %7 = load %class.lbool*, %class.lbool** %4, align 8
  %8 = load %class.Clause*, %class.Clause** %5, align 8
  %9 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %8)
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %class.Clause*, %class.Clause** %6, align 8
  %13 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %12)
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load %class.Clause*, %class.Clause** %5, align 8
  %17 = call dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %16)
  %18 = load float, float* %17, align 4
  %19 = load %class.Clause*, %class.Clause** %6, align 8
  %20 = call dereferenceable(4) float* @_ZN6Clause8activityEv(%class.Clause* %19)
  %21 = load float, float* %20, align 4
  %22 = fcmp olt float %18, %21
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ true, %11 ], [ %22, %15 ]
  br label %25

25:                                               ; preds = %23, %3
  %26 = phi i1 [ false, %3 ], [ %24, %23 ]
  ret i1 %26
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(%class.Solver* %0, %class.vec.1* dereferenceable(16) %1) #0 align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.vec.1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.vec.1* %1, %class.vec.1** %4, align 8
  %7 = load %class.Solver*, %class.Solver** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %34, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %class.vec.1*, %class.vec.1** %4, align 8
  %11 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %8
  %14 = load %class.vec.1*, %class.vec.1** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %14, i32 %15)
  %17 = load %class.Clause*, %class.Clause** %16, align 8
  %18 = call zeroext i1 @_ZNK6Solver9satisfiedERK6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %17)
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %class.vec.1*, %class.vec.1** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %20, i32 %21)
  %23 = load %class.Clause*, %class.Clause** %22, align 8
  call void @_ZN6Solver12removeClauseER6Clause(%class.Solver* %7, %class.Clause* dereferenceable(8) %23)
  br label %33

24:                                               ; preds = %13
  %25 = load %class.vec.1*, %class.vec.1** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %25, i32 %26)
  %28 = load %class.Clause*, %class.Clause** %27, align 8
  %29 = load %class.vec.1*, %class.vec.1** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  %32 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %29, i32 %30)
  store %class.Clause* %28, %class.Clause** %32, align 8
  br label %33

33:                                               ; preds = %24, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %8

37:                                               ; preds = %8
  %38 = load %class.vec.1*, %class.vec.1** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  call void @_ZN3vecIP6ClauseE6shrinkEi(%class.vec.1* %38, i32 %41)
  ret void
}

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_ZN6Solver8simplifyEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca i1, align 1
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %"struct.Solver::VarFilter", align 8
  store %class.Solver* %0, %class.Solver** %3, align 8
  %5 = load %class.Solver*, %class.Solver** %3, align 8
  %6 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %5)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 510, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__._ZN6Solver8simplifyEv, i64 0, i64 0)) #15
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 21
  %13 = load i8, i8* %12, align 8
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call %class.Clause* @_ZN6Solver9propagateEv(%class.Solver* %5)
  %17 = icmp ne %class.Clause* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 21
  store i8 0, i8* %19, align 8
  store i1 false, i1* %2, align 1
  br label %47

20:                                               ; preds = %15
  %21 = call i32 @_ZNK6Solver8nAssignsEv(%class.Solver* %5)
  %22 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 36
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 37
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %20
  store i1 true, i1* %2, align 1
  br label %47

30:                                               ; preds = %25
  %31 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 23
  call void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(%class.Solver* %5, %class.vec.1* dereferenceable(16) %31)
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 42
  %33 = load i8, i8* %32, align 8
  %34 = trunc i8 %33 to i1
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 22
  call void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(%class.Solver* %5, %class.vec.1* dereferenceable(16) %36)
  br label %37

37:                                               ; preds = %35, %30
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 39
  call void @_ZN6Solver9VarFilterC2ERKS_(%"struct.Solver::VarFilter"* %4, %class.Solver* dereferenceable(536) %5)
  call void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(%class.Heap* %38, %"struct.Solver::VarFilter"* dereferenceable(8) %4)
  %39 = call i32 @_ZNK6Solver8nAssignsEv(%class.Solver* %5)
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 36
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 17
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 18
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %42, %44
  %46 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 37
  store i64 %45, i64* %46, align 8
  store i1 true, i1* %2, align 1
  br label %47

47:                                               ; preds = %37, %29, %18
  %48 = load i1, i1* %2, align 1
  ret i1 %48
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZNK6Solver8nAssignsEv(%class.Solver* %0) #0 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 31
  %5 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %4)
  ret i32 %5
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6Solver9VarFilterC2ERKS_(%"struct.Solver::VarFilter"* %0, %class.Solver* dereferenceable(536) %1) unnamed_addr #1 comdat align 2 {
  %3 = alloca %"struct.Solver::VarFilter"*, align 8
  %4 = alloca %class.Solver*, align 8
  store %"struct.Solver::VarFilter"* %0, %"struct.Solver::VarFilter"** %3, align 8
  store %class.Solver* %1, %class.Solver** %4, align 8
  %5 = load %"struct.Solver::VarFilter"*, %"struct.Solver::VarFilter"** %3, align 8
  %6 = getelementptr inbounds %"struct.Solver::VarFilter", %"struct.Solver::VarFilter"* %5, i32 0, i32 0
  %7 = load %class.Solver*, %class.Solver** %4, align 8
  store %class.Solver* %7, %class.Solver** %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(%class.Heap* %0, %"struct.Solver::VarFilter"* dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca %"struct.Solver::VarFilter"*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store %"struct.Solver::VarFilter"* %1, %"struct.Solver::VarFilter"** %4, align 8
  %8 = load %class.Heap*, %class.Heap** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load i32, i32* %5, align 4
  %11 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %12 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %9
  %15 = load %"struct.Solver::VarFilter"*, %"struct.Solver::VarFilter"** %4, align 8
  %16 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %16, i32 %17)
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i1 @_ZNK6Solver9VarFilterclEi(%"struct.Solver::VarFilter"* %15, i32 %19)
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %23 = load i32, i32* %5, align 4
  %24 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %22, i32 %23)
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %26, i32 %27)
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 2
  %32 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %33 = load i32, i32* %5, align 4
  %34 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %32, i32 %33)
  %35 = load i32, i32* %34, align 4
  %36 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %31, i32 %35)
  store i32 %29, i32* %36, align 4
  br label %44

37:                                               ; preds = %14
  %38 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 2
  %39 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %40 = load i32, i32* %5, align 4
  %41 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %39, i32 %40)
  %42 = load i32, i32* %41, align 4
  %43 = call dereferenceable(4) i32* @_ZN3vecIiEixEi(%class.vec.5* %38, i32 %42)
  store i32 -1, i32* %43, align 4
  br label %44

44:                                               ; preds = %37, %21
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %9

48:                                               ; preds = %9
  %49 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %50, %51
  call void @_ZN3vecIiE6shrinkEi(%class.vec.5* %49, i32 %52)
  %53 = getelementptr inbounds %class.Heap, %class.Heap* %8, i32 0, i32 1
  %54 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %53)
  %55 = sdiv i32 %54, 2
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %62, %48
  %58 = load i32, i32* %7, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  call void @_ZN4HeapIN6Solver10VarOrderLtEE13percolateDownEi(%class.Heap* %8, i32 %61)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %7, align 4
  br label %57

65:                                               ; preds = %57
  %66 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEv(%class.Heap* %8)
  br i1 %66, label %67, label %68

67:                                               ; preds = %65
  br label %70

68:                                               ; preds = %65
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35.76, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28.18, i64 0, i64 0), i32 151, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @__PRETTY_FUNCTION__._ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_, i64 0, i64 0)) #15
  unreachable

69:                                               ; No predecessors!
  br label %70

70:                                               ; preds = %69, %67
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK6Solver9VarFilterclEi(%"struct.Solver::VarFilter"* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %"struct.Solver::VarFilter"*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %class.lbool, align 1
  %6 = alloca %class.lbool, align 1
  store %"struct.Solver::VarFilter"* %0, %"struct.Solver::VarFilter"** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %"struct.Solver::VarFilter"*, %"struct.Solver::VarFilter"** %3, align 8
  %8 = getelementptr inbounds %"struct.Solver::VarFilter", %"struct.Solver::VarFilter"* %7, i32 0, i32 0
  %9 = load %class.Solver*, %class.Solver** %8, align 8
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 28
  %11 = load i32, i32* %4, align 4
  %12 = call dereferenceable(1) i8* @_ZNK3vecIcEixEi(%class.vec.4* %10, i32 %11)
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = call i8 @_Z7toLbooli(i32 %14)
  %16 = getelementptr inbounds %class.lbool, %class.lbool* %5, i32 0, i32 0
  store i8 %15, i8* %16, align 1
  %17 = bitcast %class.lbool* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %18 = getelementptr inbounds %class.lbool, %class.lbool* %6, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %5, i8 %19)
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"struct.Solver::VarFilter", %"struct.Solver::VarFilter"* %7, i32 0, i32 0
  %23 = load %class.Solver*, %class.Solver** %22, align 8
  %24 = getelementptr inbounds %class.Solver, %class.Solver* %23, i32 0, i32 30
  %25 = load i32, i32* %4, align 4
  %26 = call dereferenceable(1) i8* @_ZNK3vecIcEixEi(%class.vec.4* %24, i32 %25)
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br label %29

29:                                               ; preds = %21, %2
  %30 = phi i1 [ false, %2 ], [ %28, %21 ]
  ret i1 %30
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEv(%class.Heap* %0) #0 comdat align 2 {
  %2 = alloca %class.Heap*, align 8
  store %class.Heap* %0, %class.Heap** %2, align 8
  %3 = load %class.Heap*, %class.Heap** %2, align 8
  %4 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEi(%class.Heap* %3, i32 1)
  ret i1 %4
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEi(%class.Heap* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Heap*, align 8
  %4 = alloca i32, align 4
  store %class.Heap* %0, %class.Heap** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.Heap*, %class.Heap** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 1
  %8 = call i32 @_ZNK3vecIiE4sizeEv(%class.vec.5* %7)
  %9 = icmp sge i32 %6, %8
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 0
  %15 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 1
  %16 = load i32, i32* %4, align 4
  %17 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %15, i32 %16)
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %class.Heap, %class.Heap* %5, i32 0, i32 1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE6parentEi(i32 %20)
  %22 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %19, i32 %21)
  %23 = load i32, i32* %22, align 4
  %24 = call zeroext i1 @_ZNK6Solver10VarOrderLtclEii(%"struct.Solver::VarOrderLt"* %14, i32 %18, i32 %23)
  br i1 %24, label %33, label %25

25:                                               ; preds = %13, %10
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE4leftEi(i32 %26)
  %28 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEi(%class.Heap* %5, i32 %27)
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @_ZN4HeapIN6Solver10VarOrderLtEE5rightEi(i32 %30)
  %32 = call zeroext i1 @_ZNK4HeapIN6Solver10VarOrderLtEE12heapPropertyEi(%class.Heap* %5, i32 %31)
  br label %33

33:                                               ; preds = %29, %25, %13
  %34 = phi i1 [ false, %25 ], [ false, %13 ], [ %32, %29 ]
  br label %35

35:                                               ; preds = %33, %2
  %36 = phi i1 [ true, %2 ], [ %34, %33 ]
  ret i1 %36
}

; Function Attrs: noinline uwtable
define dso_local i8 @_ZN6Solver6searchEii(%class.Solver* %0, i32 %1, i32 %2) #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %class.lbool, align 1
  %5 = alloca %class.Solver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %class.vec.0, align 8
  %11 = alloca i8, align 1
  %12 = alloca %class.Clause*, align 8
  %13 = alloca i8*
  %14 = alloca i32
  %15 = alloca i32, align 4
  %16 = alloca %class.lbool, align 1
  %17 = alloca %class.Lit, align 4
  %18 = alloca %class.lbool, align 1
  %19 = alloca %class.Lit, align 4
  %20 = alloca %class.Clause*, align 8
  %21 = alloca %class.Lit, align 4
  %22 = alloca %class.Lit, align 4
  %23 = alloca %class.Lit, align 4
  %24 = alloca %class.lbool, align 1
  %25 = alloca %class.Lit, align 4
  %26 = alloca %class.lbool, align 1
  %27 = alloca %class.lbool, align 1
  %28 = alloca %class.Lit, align 4
  %29 = alloca %class.lbool, align 1
  %30 = alloca %class.Lit, align 4
  %31 = alloca %class.Lit, align 4
  %32 = alloca %class.Lit, align 4
  %33 = alloca %class.Lit, align 4
  %34 = alloca %class.Lit, align 4
  %35 = alloca %class.lbool, align 1
  %36 = alloca %class.Lit, align 4
  %37 = alloca %class.lbool, align 1
  %38 = alloca %class.Lit, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %39 = load %class.Solver*, %class.Solver** %5, align 8
  %40 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 21
  %41 = load i8, i8* %40, align 8
  %42 = trunc i8 %41 to i1
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %46

44:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16.77, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 549, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__._ZN6Solver6searchEii, i64 0, i64 0)) #15
  unreachable

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %43
  store i32 0, i32* %9, align 4
  call void @_ZN3vecI3LitEC2Ev(%class.vec.0* %10)
  %47 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 12
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %47, align 8
  store i8 1, i8* %11, align 1
  br label %50

50:                                               ; preds = %272, %46
  %51 = invoke %class.Clause* @_ZN6Solver9propagateEv(%class.Solver* %39)
          to label %52 unwind label %66

52:                                               ; preds = %50
  store %class.Clause* %51, %class.Clause** %12, align 8
  %53 = load %class.Clause*, %class.Clause** %12, align 8
  %54 = icmp ne %class.Clause* %53, null
  br i1 %54, label %55, label %125

55:                                               ; preds = %52
  %56 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 16
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = invoke i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %39)
          to label %62 unwind label %66

62:                                               ; preds = %55
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = bitcast %class.lbool* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %65, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  store i32 1, i32* %15, align 4
  br label %273

66:                                               ; preds = %266, %265, %255, %249, %237, %228, %222, %211, %205, %198, %192, %190, %183, %175, %173, %170, %165, %163, %159, %153, %150, %142, %138, %134, %132, %123, %122, %115, %113, %111, %109, %107, %105, %99, %97, %93, %83, %77, %75, %73, %71, %70, %55, %50
  %67 = landingpad { i8*, i32 }
          cleanup
  %68 = extractvalue { i8*, i32 } %67, 0
  store i8* %68, i8** %13, align 8
  %69 = extractvalue { i8*, i32 } %67, 1
  store i32 %69, i32* %14, align 4
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %10) #12
  br label %276

70:                                               ; preds = %62
  store i8 0, i8* %11, align 1
  invoke void @_ZN3vecI3LitE5clearEb(%class.vec.0* %10, i1 zeroext false)
          to label %71 unwind label %66

71:                                               ; preds = %70
  %72 = load %class.Clause*, %class.Clause** %12, align 8
  invoke void @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi(%class.Solver* %39, %class.Clause* %72, %class.vec.0* dereferenceable(16) %10, i32* dereferenceable(4) %8)
          to label %73 unwind label %66

73:                                               ; preds = %71
  %74 = load i32, i32* %8, align 4
  invoke void @_ZN6Solver11cancelUntilEi(%class.Solver* %39, i32 %74)
          to label %75 unwind label %66

75:                                               ; preds = %73
  %76 = invoke dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %10, i32 0)
          to label %77 unwind label %66

77:                                               ; preds = %75
  %78 = bitcast %class.Lit* %17 to i8*
  %79 = bitcast %class.Lit* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %78, i8* align 4 %79, i64 4, i1 false)
  %80 = getelementptr inbounds %class.Lit, %class.Lit* %17, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = invoke i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %39, i32 %81)
          to label %83 unwind label %66

83:                                               ; preds = %77
  %84 = getelementptr inbounds %class.lbool, %class.lbool* %16, i32 0, i32 0
  store i8 %82, i8* %84, align 1
  %85 = bitcast %class.lbool* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %85, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %86 = getelementptr inbounds %class.lbool, %class.lbool* %18, i32 0, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = invoke zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %16, i8 %87)
          to label %89 unwind label %66

89:                                               ; preds = %83
  br i1 %88, label %90, label %91

90:                                               ; preds = %89
  br label %93

91:                                               ; preds = %89
  call void @__assert_fail(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 570, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__._ZN6Solver6searchEii, i64 0, i64 0)) #15
  unreachable

92:                                               ; No predecessors!
  br label %93

93:                                               ; preds = %92, %90
  %94 = invoke i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %10)
          to label %95 unwind label %66

95:                                               ; preds = %93
  %96 = icmp eq i32 %94, 1
  br i1 %96, label %97, label %105

97:                                               ; preds = %95
  %98 = invoke dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %10, i32 0)
          to label %99 unwind label %66

99:                                               ; preds = %97
  %100 = bitcast %class.Lit* %19 to i8*
  %101 = bitcast %class.Lit* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 4, i1 false)
  %102 = getelementptr inbounds %class.Lit, %class.Lit* %19, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  invoke void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %39, i32 %103, %class.Clause* null)
          to label %104 unwind label %66

104:                                              ; preds = %99
  br label %122

105:                                              ; preds = %95
  %106 = invoke %class.Clause* @_Z10Clause_newI3vecI3LitEEP6ClauseRKT_b(%class.vec.0* dereferenceable(16) %10, i1 zeroext true)
          to label %107 unwind label %66

107:                                              ; preds = %105
  store %class.Clause* %106, %class.Clause** %20, align 8
  %108 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 23
  invoke void @_ZN3vecIP6ClauseE4pushERKS1_(%class.vec.1* %108, %class.Clause** dereferenceable(8) %20)
          to label %109 unwind label %66

109:                                              ; preds = %107
  %110 = load %class.Clause*, %class.Clause** %20, align 8
  invoke void @_ZN6Solver12attachClauseER6Clause(%class.Solver* %39, %class.Clause* dereferenceable(8) %110)
          to label %111 unwind label %66

111:                                              ; preds = %109
  %112 = load %class.Clause*, %class.Clause** %20, align 8
  invoke void @_ZN6Solver15claBumpActivityER6Clause(%class.Solver* %39, %class.Clause* dereferenceable(8) %112)
          to label %113 unwind label %66

113:                                              ; preds = %111
  %114 = invoke dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %10, i32 0)
          to label %115 unwind label %66

115:                                              ; preds = %113
  %116 = bitcast %class.Lit* %21 to i8*
  %117 = bitcast %class.Lit* %114 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %116, i8* align 4 %117, i64 4, i1 false)
  %118 = load %class.Clause*, %class.Clause** %20, align 8
  %119 = getelementptr inbounds %class.Lit, %class.Lit* %21, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  invoke void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %39, i32 %120, %class.Clause* %118)
          to label %121 unwind label %66

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121, %104
  invoke void @_ZN6Solver16varDecayActivityEv(%class.Solver* %39)
          to label %123 unwind label %66

123:                                              ; preds = %122
  invoke void @_ZN6Solver16claDecayActivityEv(%class.Solver* %39)
          to label %124 unwind label %66

124:                                              ; preds = %123
  br label %272

125:                                              ; preds = %52
  %126 = load i32, i32* %6, align 4
  %127 = icmp sge i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = invoke double @_ZNK6Solver16progressEstimateEv(%class.Solver* %39)
          to label %134 unwind label %66

134:                                              ; preds = %132
  %135 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 41
  store double %133, double* %135, align 8
  invoke void @_ZN6Solver11cancelUntilEi(%class.Solver* %39, i32 0)
          to label %136 unwind label %66

136:                                              ; preds = %134
  %137 = bitcast %class.lbool* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %137, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  store i32 1, i32* %15, align 4
  br label %273

138:                                              ; preds = %128, %125
  %139 = invoke i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %39)
          to label %140 unwind label %66

140:                                              ; preds = %138
  %141 = icmp eq i32 %139, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %140
  %143 = invoke zeroext i1 @_ZN6Solver8simplifyEv(%class.Solver* %39)
          to label %144 unwind label %66

144:                                              ; preds = %142
  br i1 %143, label %147, label %145

145:                                              ; preds = %144
  %146 = bitcast %class.lbool* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %146, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  store i32 1, i32* %15, align 4
  br label %273

147:                                              ; preds = %144, %140
  %148 = load i32, i32* %7, align 4
  %149 = icmp sge i32 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %147
  %151 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 23
  %152 = invoke i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %151)
          to label %153 unwind label %66

153:                                              ; preds = %150
  %154 = invoke i32 @_ZNK6Solver8nAssignsEv(%class.Solver* %39)
          to label %155 unwind label %66

155:                                              ; preds = %153
  %156 = sub nsw i32 %152, %154
  %157 = load i32, i32* %7, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  invoke void @_ZN6Solver8reduceDBEv(%class.Solver* %39)
          to label %160 unwind label %66

160:                                              ; preds = %159
  br label %161

161:                                              ; preds = %160, %155, %147
  %162 = bitcast %class.Lit* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  br label %163

163:                                              ; preds = %221, %161
  %164 = invoke i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %39)
          to label %165 unwind label %66

165:                                              ; preds = %163
  %166 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 38
  %167 = invoke i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %166)
          to label %168 unwind label %66

168:                                              ; preds = %165
  %169 = icmp slt i32 %164, %167
  br i1 %169, label %170, label %222

170:                                              ; preds = %168
  %171 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 38
  %172 = invoke i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %39)
          to label %173 unwind label %66

173:                                              ; preds = %170
  %174 = invoke dereferenceable(4) %class.Lit* @_ZN3vecI3LitEixEi(%class.vec.0* %171, i32 %172)
          to label %175 unwind label %66

175:                                              ; preds = %173
  %176 = bitcast %class.Lit* %23 to i8*
  %177 = bitcast %class.Lit* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %176, i8* align 4 %177, i64 4, i1 false)
  %178 = bitcast %class.Lit* %25 to i8*
  %179 = bitcast %class.Lit* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 4, i1 false)
  %180 = getelementptr inbounds %class.Lit, %class.Lit* %25, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = invoke i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %39, i32 %181)
          to label %183 unwind label %66

183:                                              ; preds = %175
  %184 = getelementptr inbounds %class.lbool, %class.lbool* %24, i32 0, i32 0
  store i8 %182, i8* %184, align 1
  %185 = bitcast %class.lbool* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %185, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %186 = getelementptr inbounds %class.lbool, %class.lbool* %26, i32 0, i32 0
  %187 = load i8, i8* %186, align 1
  %188 = invoke zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %24, i8 %187)
          to label %189 unwind label %66

189:                                              ; preds = %183
  br i1 %188, label %190, label %192

190:                                              ; preds = %189
  invoke void @_ZN6Solver16newDecisionLevelEv(%class.Solver* %39)
          to label %191 unwind label %66

191:                                              ; preds = %190
  br label %221

192:                                              ; preds = %189
  %193 = bitcast %class.Lit* %28 to i8*
  %194 = bitcast %class.Lit* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %193, i8* align 4 %194, i64 4, i1 false)
  %195 = getelementptr inbounds %class.Lit, %class.Lit* %28, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = invoke i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %39, i32 %196)
          to label %198 unwind label %66

198:                                              ; preds = %192
  %199 = getelementptr inbounds %class.lbool, %class.lbool* %27, i32 0, i32 0
  store i8 %197, i8* %199, align 1
  %200 = bitcast %class.lbool* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %200, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %201 = getelementptr inbounds %class.lbool, %class.lbool* %29, i32 0, i32 0
  %202 = load i8, i8* %201, align 1
  %203 = invoke zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %27, i8 %202)
          to label %204 unwind label %66

204:                                              ; preds = %198
  br i1 %203, label %205, label %218

205:                                              ; preds = %204
  %206 = bitcast %class.Lit* %31 to i8*
  %207 = bitcast %class.Lit* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 4, i1 false)
  %208 = getelementptr inbounds %class.Lit, %class.Lit* %31, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = invoke i32 @_Zco3Lit(i32 %209)
          to label %211 unwind label %66

211:                                              ; preds = %205
  %212 = getelementptr inbounds %class.Lit, %class.Lit* %30, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 1
  %214 = getelementptr inbounds %class.Lit, %class.Lit* %30, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  invoke void @_ZN6Solver12analyzeFinalE3LitR3vecIS0_E(%class.Solver* %39, i32 %215, %class.vec.0* dereferenceable(16) %213)
          to label %216 unwind label %66

216:                                              ; preds = %211
  %217 = bitcast %class.lbool* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %217, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  store i32 1, i32* %15, align 4
  br label %273

218:                                              ; preds = %204
  %219 = bitcast %class.Lit* %22 to i8*
  %220 = bitcast %class.Lit* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %219, i8* align 4 %220, i64 4, i1 false)
  br label %222

221:                                              ; preds = %191
  br label %163

222:                                              ; preds = %218, %168
  %223 = bitcast %class.Lit* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  %224 = getelementptr inbounds %class.Lit, %class.Lit* %32, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = invoke zeroext i1 @_ZNK3LiteqES_(%class.Lit* %22, i32 %225)
          to label %227 unwind label %66

227:                                              ; preds = %222
  br i1 %226, label %228, label %249

228:                                              ; preds = %227
  %229 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 13
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %229, align 8
  %232 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 10
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %class.Solver, %class.Solver* %39, i32 0, i32 4
  %235 = load double, double* %234, align 8
  %236 = invoke i32 @_ZN6Solver13pickBranchLitEid(%class.Solver* %39, i32 %233, double %235)
          to label %237 unwind label %66

237:                                              ; preds = %228
  %238 = getelementptr inbounds %class.Lit, %class.Lit* %33, i32 0, i32 0
  store i32 %236, i32* %238, align 4
  %239 = bitcast %class.Lit* %22 to i8*
  %240 = bitcast %class.Lit* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %239, i8* align 4 %240, i64 4, i1 false)
  %241 = bitcast %class.Lit* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %241, i8* align 4 bitcast (%class.Lit* @_ZL9lit_Undef.14 to i8*), i64 4, i1 false)
  %242 = getelementptr inbounds %class.Lit, %class.Lit* %34, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = invoke zeroext i1 @_ZNK3LiteqES_(%class.Lit* %22, i32 %243)
          to label %245 unwind label %66

245:                                              ; preds = %237
  br i1 %244, label %246, label %248

246:                                              ; preds = %245
  %247 = bitcast %class.lbool* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %247, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  store i32 1, i32* %15, align 4
  br label %273

248:                                              ; preds = %245
  br label %249

249:                                              ; preds = %248, %227
  %250 = bitcast %class.Lit* %36 to i8*
  %251 = bitcast %class.Lit* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %250, i8* align 4 %251, i64 4, i1 false)
  %252 = getelementptr inbounds %class.Lit, %class.Lit* %36, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = invoke i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %39, i32 %253)
          to label %255 unwind label %66

255:                                              ; preds = %249
  %256 = getelementptr inbounds %class.lbool, %class.lbool* %35, i32 0, i32 0
  store i8 %254, i8* %256, align 1
  %257 = bitcast %class.lbool* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %257, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %258 = getelementptr inbounds %class.lbool, %class.lbool* %37, i32 0, i32 0
  %259 = load i8, i8* %258, align 1
  %260 = invoke zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %35, i8 %259)
          to label %261 unwind label %66

261:                                              ; preds = %255
  br i1 %260, label %262, label %263

262:                                              ; preds = %261
  br label %265

263:                                              ; preds = %261
  call void @__assert_fail(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18.79, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 629, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__._ZN6Solver6searchEii, i64 0, i64 0)) #15
  unreachable

264:                                              ; No predecessors!
  br label %265

265:                                              ; preds = %264, %262
  invoke void @_ZN6Solver16newDecisionLevelEv(%class.Solver* %39)
          to label %266 unwind label %66

266:                                              ; preds = %265
  %267 = bitcast %class.Lit* %38 to i8*
  %268 = bitcast %class.Lit* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %267, i8* align 4 %268, i64 4, i1 false)
  %269 = getelementptr inbounds %class.Lit, %class.Lit* %38, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  invoke void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(%class.Solver* %39, i32 %270, %class.Clause* null)
          to label %271 unwind label %66

271:                                              ; preds = %266
  br label %272

272:                                              ; preds = %271, %124
  br label %50

273:                                              ; preds = %246, %216, %145, %136, %64
  call void @_ZN3vecI3LitED2Ev(%class.vec.0* %10) #12
  %274 = getelementptr inbounds %class.lbool, %class.lbool* %4, i32 0, i32 0
  %275 = load i8, i8* %274, align 1
  ret i8 %275

276:                                              ; preds = %66
  %277 = load i8*, i8** %13, align 8
  %278 = load i32, i32* %14, align 4
  %279 = insertvalue { i8*, i32 } undef, i8* %277, 0
  %280 = insertvalue { i8*, i32 } %279, i32 %278, 1
  resume { i8*, i32 } %280
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6Solver16varDecayActivityEv(%class.Solver* %0) #1 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 2
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 26
  %7 = load double, double* %6, align 8
  %8 = fmul double %7, %5
  store double %8, double* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN6Solver16claDecayActivityEv(%class.Solver* %0) #1 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 3
  %5 = load double, double* %4, align 8
  %6 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 24
  %7 = load double, double* %6, align 8
  %8 = fmul double %7, %5
  store double %8, double* %6, align 8
  ret void
}

; Function Attrs: noinline uwtable
define dso_local double @_ZNK6Solver16progressEstimateEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %2, align 8
  %8 = load %class.Solver*, %class.Solver** %2, align 8
  store double 0.000000e+00, double* %3, align 8
  %9 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %8)
  %10 = sitofp i32 %9 to double
  %11 = fdiv double 1.000000e+00, %10
  store double %11, double* %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %52, %1
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %8)
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %26

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.Solver, %class.Solver* %8, i32 0, i32 32
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %21, i32 %23)
  %25 = load i32, i32* %24, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = phi i32 [ 0, %19 ], [ %25, %20 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @_ZNK6Solver13decisionLevelEv(%class.Solver* %8)
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds %class.Solver, %class.Solver* %8, i32 0, i32 31
  %33 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %32)
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %class.Solver, %class.Solver* %8, i32 0, i32 32
  %36 = load i32, i32* %5, align 4
  %37 = call dereferenceable(4) i32* @_ZNK3vecIiEixEi(%class.vec.5* %35, i32 %36)
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i32 [ %33, %31 ], [ %38, %34 ]
  store i32 %40, i32* %7, align 4
  %41 = load double, double* %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sitofp i32 %42 to double
  %44 = call double @pow(double %41, double %43) #12
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sitofp i32 %47 to double
  %49 = fmul double %44, %48
  %50 = load double, double* %3, align 8
  %51 = fadd double %50, %49
  store double %51, double* %3, align 8
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %12

55:                                               ; preds = %12
  %56 = load double, double* %3, align 8
  %57 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %8)
  %58 = sitofp i32 %57 to double
  %59 = fdiv double %56, %58
  ret double %59
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver16newDecisionLevelEv(%class.Solver* %0) #0 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %2, align 8
  %4 = load %class.Solver*, %class.Solver** %2, align 8
  %5 = getelementptr inbounds %class.Solver, %class.Solver* %4, i32 0, i32 32
  %6 = getelementptr inbounds %class.Solver, %class.Solver* %4, i32 0, i32 31
  %7 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %6)
  store i32 %7, i32* %3, align 4
  call void @_ZN3vecIiE4pushERKi(%class.vec.5* %5, i32* dereferenceable(4) %3)
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #4

; Function Attrs: noinline uwtable
define dso_local zeroext i1 @_ZN6Solver5solveERK3vecI3LitE(%class.Solver* %0, %class.vec.0* dereferenceable(16) %1) #0 align 2 {
  %3 = alloca i1, align 1
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.vec.0*, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca %class.lbool, align 1
  %9 = alloca %class.lbool, align 1
  %10 = alloca %class.lbool, align 1
  %11 = alloca %class.lbool, align 1
  %12 = alloca i32, align 4
  %13 = alloca %class.lbool, align 1
  %14 = alloca %class.lbool, align 1
  %15 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %4, align 8
  store %class.vec.0* %1, %class.vec.0** %5, align 8
  %16 = load %class.Solver*, %class.Solver** %4, align 8
  %17 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 0
  call void @_ZN3vecI5lboolE5clearEb(%class.vec* %17, i1 zeroext false)
  %18 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 1
  call void @_ZN3vecI3LitE5clearEb(%class.vec.0* %18, i1 zeroext false)
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 21
  %20 = load i8, i8* %19, align 8
  %21 = trunc i8 %20 to i1
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i1 false, i1* %3, align 1
  br label %102

23:                                               ; preds = %2
  %24 = load %class.vec.0*, %class.vec.0** %5, align 8
  %25 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 38
  call void @_ZNK3vecI3LitE6copyToERS1_(%class.vec.0* %24, %class.vec.0* dereferenceable(16) %25)
  %26 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = sitofp i32 %27 to double
  store double %28, double* %6, align 8
  %29 = call i32 @_ZNK6Solver8nClausesEv(%class.Solver* %16)
  %30 = sitofp i32 %29 to double
  %31 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 7
  %32 = load double, double* %31, align 8
  %33 = fmul double %30, %32
  store double %33, double* %7, align 8
  %34 = bitcast %class.lbool* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %34, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  br label %35

35:                                               ; preds = %40, %23
  %36 = bitcast %class.lbool* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %36, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_Undef.10, i32 0, i32 0), i64 1, i1 false)
  %37 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  %38 = load i8, i8* %37, align 1
  %39 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %8, i8 %38)
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load double, double* %6, align 8
  %42 = fptosi double %41 to i32
  %43 = load double, double* %7, align 8
  %44 = fptosi double %43 to i32
  %45 = call i8 @_ZN6Solver6searchEii(%class.Solver* %16, i32 %42, i32 %44)
  %46 = getelementptr inbounds %class.lbool, %class.lbool* %10, i32 0, i32 0
  store i8 %45, i8* %46, align 1
  %47 = bitcast %class.lbool* %8 to i8*
  %48 = bitcast %class.lbool* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %47, i8* align 1 %48, i64 1, i1 false)
  %49 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 6
  %50 = load double, double* %49, align 8
  %51 = load double, double* %6, align 8
  %52 = fmul double %51, %50
  store double %52, double* %6, align 8
  %53 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 8
  %54 = load double, double* %53, align 8
  %55 = load double, double* %7, align 8
  %56 = fmul double %55, %54
  store double %56, double* %7, align 8
  br label %35

57:                                               ; preds = %35
  %58 = bitcast %class.lbool* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %59 = getelementptr inbounds %class.lbool, %class.lbool* %11, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %8, i8 %60)
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 0
  %64 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %16)
  call void @_ZN3vecI5lboolE6growToEi(%class.vec* %63, i32 %64)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %78, %62
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @_ZNK6Solver5nVarsEv(%class.Solver* %16)
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = call i8 @_ZNK6Solver5valueEi(%class.Solver* %16, i32 %70)
  %72 = getelementptr inbounds %class.lbool, %class.lbool* %13, i32 0, i32 0
  store i8 %71, i8* %72, align 1
  %73 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 0
  %74 = load i32, i32* %12, align 4
  %75 = call dereferenceable(1) %class.lbool* @_ZN3vecI5lboolEixEi(%class.vec* %73, i32 %74)
  %76 = bitcast %class.lbool* %75 to i8*
  %77 = bitcast %class.lbool* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %76, i8* align 1 %77, i64 1, i1 false)
  br label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %65

81:                                               ; preds = %65
  call void @_ZN6Solver11verifyModelEv(%class.Solver* %16)
  br label %97

82:                                               ; preds = %57
  %83 = bitcast %class.lbool* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %83, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %84 = getelementptr inbounds %class.lbool, %class.lbool* %14, i32 0, i32 0
  %85 = load i8, i8* %84, align 1
  %86 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %8, i8 %85)
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %90

88:                                               ; preds = %82
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19.82, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 681, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__._ZN6Solver5solveERK3vecI3LitE, i64 0, i64 0)) #15
  unreachable

89:                                               ; No predecessors!
  br label %90

90:                                               ; preds = %89, %87
  %91 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 1
  %92 = call i32 @_ZNK3vecI3LitE4sizeEv(%class.vec.0* %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = getelementptr inbounds %class.Solver, %class.Solver* %16, i32 0, i32 21
  store i8 0, i8* %95, align 8
  br label %96

96:                                               ; preds = %94, %90
  br label %97

97:                                               ; preds = %96, %81
  call void @_ZN6Solver11cancelUntilEi(%class.Solver* %16, i32 0)
  %98 = bitcast %class.lbool* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %99 = getelementptr inbounds %class.lbool, %class.lbool* %15, i32 0, i32 0
  %100 = load i8, i8* %99, align 1
  %101 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %8, i8 %100)
  store i1 %101, i1* %3, align 1
  br label %102

102:                                              ; preds = %97, %22
  %103 = load i1, i1* %3, align 1
  ret i1 %103
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i32 @_ZNK6Solver8nClausesEv(%class.Solver* %0) #0 comdat align 2 {
  %2 = alloca %class.Solver*, align 8
  store %class.Solver* %0, %class.Solver** %2, align 8
  %3 = load %class.Solver*, %class.Solver** %2, align 8
  %4 = getelementptr inbounds %class.Solver, %class.Solver* %3, i32 0, i32 22
  %5 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %4)
  ret i32 %5
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN3vecI5lboolE6growToEi(%class.vec* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.vec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %class.vec* %0, %class.vec** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %class.vec*, %class.vec** %3, align 8
  %7 = getelementptr inbounds %class.vec, %class.vec* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %34

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  call void @_ZN3vecI5lboolE4growEi(%class.vec* %6, i32 %13)
  %14 = getelementptr inbounds %class.vec, %class.vec* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %28, %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.vec, %class.vec* %6, i32 0, i32 0
  %22 = load %class.lbool*, %class.lbool** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %class.lbool, %class.lbool* %22, i64 %24
  %26 = bitcast %class.lbool* %25 to i8*
  %27 = bitcast i8* %26 to %class.lbool*
  call void @_ZN5lboolC2Ev(%class.lbool* %27)
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %16

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = getelementptr inbounds %class.vec, %class.vec* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %11
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i8 @_ZNK6Solver5valueEi(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Solver*, align 8
  %5 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %class.Solver*, %class.Solver** %4, align 8
  %7 = getelementptr inbounds %class.Solver, %class.Solver* %6, i32 0, i32 28
  %8 = load i32, i32* %5, align 4
  %9 = call dereferenceable(1) i8* @_ZNK3vecIcEixEi(%class.vec.4* %7, i32 %8)
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = call i8 @_Z7toLbooli(i32 %11)
  %13 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  ret i8 %15
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver11verifyModelEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca %class.Clause*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %class.lbool, align 1
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.lbool, align 1
  store %class.Solver* %0, %class.Solver** %2, align 8
  %10 = load %class.Solver*, %class.Solver** %2, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %73, %1
  %12 = load i32, i32* %4, align 4
  %13 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 22
  %14 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 22
  %18 = load i32, i32* %4, align 4
  %19 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %17, i32 %18)
  %20 = load %class.Clause*, %class.Clause** %19, align 8
  %21 = call i32 @_ZNK6Clause4markEv(%class.Clause* %20)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %26

24:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20.83, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 698, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__._ZN6Solver11verifyModelEv, i64 0, i64 0)) #15
  unreachable

25:                                               ; No predecessors!
  br label %26

26:                                               ; preds = %25, %23
  %27 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 22
  %28 = load i32, i32* %4, align 4
  %29 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %27, i32 %28)
  %30 = load %class.Clause*, %class.Clause** %29, align 8
  store %class.Clause* %30, %class.Clause** %5, align 8
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %52, %26
  %32 = load i32, i32* %6, align 4
  %33 = load %class.Clause*, %class.Clause** %5, align 8
  %34 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %31
  %37 = load %class.Clause*, %class.Clause** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call dereferenceable(4) %class.Lit* @_ZN6ClauseixEi(%class.Clause* %37, i32 %38)
  %40 = bitcast %class.Lit* %8 to i8*
  %41 = bitcast %class.Lit* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8 @_ZNK6Solver10modelValueE3Lit(%class.Solver* %10, i32 %43)
  %45 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  store i8 %44, i8* %45, align 1
  %46 = bitcast %class.lbool* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %46, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %47 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %7, i8 %48)
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %72

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %31

55:                                               ; preds = %31
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %57 = call i32 @fflush(%struct._IO_FILE* %56)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21.84, i64 0, i64 0))
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %61 = call i32 @fflush(%struct._IO_FILE* %60)
  %62 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 22
  %63 = load i32, i32* %4, align 4
  %64 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %62, i32 %63)
  %65 = load %class.Clause*, %class.Clause** %64, align 8
  call void @_ZN6Solver11printClauseI6ClauseEEvRKT_(%class.Solver* %10, %class.Clause* dereferenceable(8) %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %67 = call i32 @fflush(%struct._IO_FILE* %66)
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22.85, i64 0, i64 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 @fflush(%struct._IO_FILE* %70)
  store i8 1, i8* %3, align 1
  br label %72

72:                                               ; preds = %55, %50
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %11

76:                                               ; preds = %11
  %77 = load i8, i8* %3, align 1
  %78 = trunc i8 %77 to i1
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  br label %83

81:                                               ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23.86, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 711, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__PRETTY_FUNCTION__._ZN6Solver11verifyModelEv, i64 0, i64 0)) #15
  unreachable

82:                                               ; No predecessors!
  br label %83

83:                                               ; preds = %82, %80
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %85 = call i32 @fflush(%struct._IO_FILE* %84)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = getelementptr inbounds %class.Solver, %class.Solver* %10, i32 0, i32 22
  %88 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %87)
  %89 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24.87, i64 0, i64 0), i32 %88)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = call i32 @fflush(%struct._IO_FILE* %90)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local i32 @_ZNK6Clause4markEv(%class.Clause* %0) #1 comdat align 2 {
  %2 = alloca %class.Clause*, align 8
  store %class.Clause* %0, %class.Clause** %2, align 8
  %3 = load %class.Clause*, %class.Clause** %2, align 8
  %4 = getelementptr inbounds %class.Clause, %class.Clause* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = lshr i32 %5, 1
  %7 = and i32 %6, 3
  ret i32 %7
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local i8 @_ZNK6Solver10modelValueE3Lit(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.lbool, align 1
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Solver*, align 8
  %6 = alloca %class.Lit, align 4
  %7 = alloca %class.Lit, align 4
  %8 = getelementptr inbounds %class.Lit, %class.Lit* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  store %class.Solver* %0, %class.Solver** %5, align 8
  %9 = load %class.Solver*, %class.Solver** %5, align 8
  %10 = getelementptr inbounds %class.Solver, %class.Solver* %9, i32 0, i32 0
  %11 = bitcast %class.Lit* %6 to i8*
  %12 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 %12, i64 4, i1 false)
  %13 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @_Z3var3Lit(i32 %14)
  %16 = call dereferenceable(1) %class.lbool* @_ZNK3vecI5lboolEixEi(%class.vec* %10, i32 %15)
  %17 = bitcast %class.Lit* %7 to i8*
  %18 = bitcast %class.Lit* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = getelementptr inbounds %class.Lit, %class.Lit* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call zeroext i1 @_Z4sign3Lit(i32 %20)
  %22 = call i8 @_ZNK5lbooleoEb(%class.lbool* %16, i1 zeroext %21)
  %23 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  ret i8 %25
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver11printClauseI6ClauseEEvRKT_(%class.Solver* %0, %class.Clause* dereferenceable(8) %1) #0 comdat align 2 {
  %3 = alloca %class.Solver*, align 8
  %4 = alloca %class.Clause*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %class.Lit, align 4
  store %class.Solver* %0, %class.Solver** %3, align 8
  store %class.Clause* %1, %class.Clause** %4, align 8
  %7 = load %class.Solver*, %class.Solver** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %5, align 4
  %10 = load %class.Clause*, %class.Clause** %4, align 8
  %11 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load %class.Clause*, %class.Clause** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @_ZNK6ClauseixEi(%class.Clause* %14, i32 %15)
  %17 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  call void @_ZN6Solver8printLitE3Lit(%class.Solver* %7, i32 %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36.88, i64 0, i64 0))
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %8

25:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline uwtable
define linkonce_odr dso_local void @_ZN6Solver8printLitE3Lit(%class.Solver* %0, i32 %1) #0 comdat align 2 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.Solver*, align 8
  %5 = alloca %class.Lit, align 4
  %6 = alloca %class.Lit, align 4
  %7 = alloca %class.lbool, align 1
  %8 = alloca %class.Lit, align 4
  %9 = alloca %class.lbool, align 1
  %10 = alloca %class.lbool, align 1
  %11 = alloca %class.Lit, align 4
  %12 = alloca %class.lbool, align 1
  %13 = getelementptr inbounds %class.Lit, %class.Lit* %3, i32 0, i32 0
  store i32 %1, i32* %13, align 4
  store %class.Solver* %0, %class.Solver** %4, align 8
  %14 = load %class.Solver*, %class.Solver** %4, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %16 = call i32 @fflush(%struct._IO_FILE* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = bitcast %class.Lit* %5 to i8*
  %19 = bitcast %class.Lit* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = getelementptr inbounds %class.Lit, %class.Lit* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call zeroext i1 @_Z4sign3Lit(i32 %21)
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38.89, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39.90, i64 0, i64 0)
  %25 = bitcast %class.Lit* %6 to i8*
  %26 = bitcast %class.Lit* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  %27 = getelementptr inbounds %class.Lit, %class.Lit* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_Z3var3Lit(i32 %28)
  %30 = add nsw i32 %29, 1
  %31 = bitcast %class.Lit* %8 to i8*
  %32 = bitcast %class.Lit* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = getelementptr inbounds %class.Lit, %class.Lit* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %14, i32 %34)
  %36 = getelementptr inbounds %class.lbool, %class.lbool* %7, i32 0, i32 0
  store i8 %35, i8* %36, align 1
  %37 = bitcast %class.lbool* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL6l_True.12, i32 0, i32 0), i64 1, i1 false)
  %38 = getelementptr inbounds %class.lbool, %class.lbool* %9, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %7, i8 %39)
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  br label %55

42:                                               ; preds = %2
  %43 = bitcast %class.Lit* %11 to i8*
  %44 = bitcast %class.Lit* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = getelementptr inbounds %class.Lit, %class.Lit* %11, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8 @_ZNK6Solver5valueE3Lit(%class.Solver* %14, i32 %46)
  %48 = getelementptr inbounds %class.lbool, %class.lbool* %10, i32 0, i32 0
  store i8 %47, i8* %48, align 1
  %49 = bitcast %class.lbool* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 getelementptr inbounds (%class.lbool, %class.lbool* @_ZL7l_False.11, i32 0, i32 0), i64 1, i1 false)
  %50 = getelementptr inbounds %class.lbool, %class.lbool* %12, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = call zeroext i1 @_ZNK5lbooleqES_(%class.lbool* %10, i8 %51)
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8 48, i8 88
  br label %55

55:                                               ; preds = %42, %41
  %56 = phi i8 [ 49, %41 ], [ %54, %42 ]
  %57 = sext i8 %56 to i32
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37.91, i64 0, i64 0), i8* %24, i32 %30, i32 %57)
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 @fflush(%struct._IO_FILE* %59)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local dereferenceable(1) %class.lbool* @_ZNK3vecI5lboolEixEi(%class.vec* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec*, align 8
  %4 = alloca i32, align 4
  store %class.vec* %0, %class.vec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec*, %class.vec** %3, align 8
  %6 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 0
  %7 = load %class.lbool*, %class.lbool** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.lbool, %class.lbool* %7, i64 %9
  ret %class.lbool* %10
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN3vecI5lboolE4growEi(%class.vec* %0, i32 %1) #1 comdat align 2 {
  %3 = alloca %class.vec*, align 8
  %4 = alloca i32, align 4
  store %class.vec* %0, %class.vec** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %class.vec*, %class.vec** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %49

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 2, %20 ]
  %23 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  br label %38

24:                                               ; preds = %11
  br label %25

25:                                               ; preds = %32, %24
  %26 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 3
  %29 = add nsw i32 %28, 1
  %30 = ashr i32 %29, 1
  %31 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %25, label %37

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %21
  %39 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 0
  %40 = load %class.lbool*, %class.lbool** %39, align 8
  %41 = bitcast %class.lbool* %40 to i8*
  %42 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 1
  %46 = call i8* @realloc(i8* %41, i64 %45) #12
  %47 = bitcast i8* %46 to %class.lbool*
  %48 = getelementptr inbounds %class.vec, %class.vec* %5, i32 0, i32 0
  store %class.lbool* %47, %class.lbool** %48, align 8
  br label %49

49:                                               ; preds = %38, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN5lboolC2Ev(%class.lbool* %0) unnamed_addr #1 comdat align 2 {
  %2 = alloca %class.lbool*, align 8
  store %class.lbool* %0, %class.lbool** %2, align 8
  %3 = load %class.lbool*, %class.lbool** %2, align 8
  %4 = getelementptr inbounds %class.lbool, %class.lbool* %3, i32 0, i32 0
  store i8 0, i8* %4, align 1
  ret void
}

; Function Attrs: noinline uwtable
define dso_local void @_ZN6Solver17checkLiteralCountEv(%class.Solver* %0) #0 align 2 {
  %2 = alloca %class.Solver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %class.Solver* %0, %class.Solver** %2, align 8
  %5 = load %class.Solver*, %class.Solver** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 22
  %9 = call i32 @_ZNK3vecIP6ClauseE4sizeEv(%class.vec.1* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %6
  %12 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 22
  %13 = load i32, i32* %4, align 4
  %14 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %12, i32 %13)
  %15 = load %class.Clause*, %class.Clause** %14, align 8
  %16 = call i32 @_ZNK6Clause4markEv(%class.Clause* %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 22
  %20 = load i32, i32* %4, align 4
  %21 = call dereferenceable(8) %class.Clause** @_ZN3vecIP6ClauseEixEi(%class.vec.1* %19, i32 %20)
  %22 = load %class.Clause*, %class.Clause** %21, align 8
  %23 = call i32 @_ZNK6Clause4sizeEv(%class.Clause* %22)
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %6

30:                                               ; preds = %6
  %31 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 17
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 17
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25.92, i64 0, i64 0), i32 %40, i32 %41)
  %43 = getelementptr inbounds %class.Solver, %class.Solver* %5, i32 0, i32 17
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %51

49:                                               ; preds = %36
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26.93, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5.57, i64 0, i64 0), i32 727, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__PRETTY_FUNCTION__._ZN6Solver17checkLiteralCountEv, i64 0, i64 0)) #15
  unreachable

50:                                               ; No predecessors!
  br label %51

51:                                               ; preds = %50, %48
  br label %52

52:                                               ; preds = %51, %30
  ret void
}

attributes #0 = { noinline uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noinline noreturn nounwind }
attributes #10 = { nobuiltin "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin }
attributes #17 = { builtin nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 -2146725020}
!3 = !{i32 -2146724953}
