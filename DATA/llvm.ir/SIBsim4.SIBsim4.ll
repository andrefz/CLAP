; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._options_t = type { i8*, %struct._junction_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._edit_script = type { %struct._edit_script*, i32, i8 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { i8** }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._hash_env_t = type { i8**, i8*, i32, i32*, i32, i32 }
%struct._seq_t = type { i8*, i8*, i8*, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { i8*, i32, i32, i32, [4096 x i8] }
%struct._result_t = type { %struct._edit_script_list*, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._edit_script_list = type { %struct._edit_script_list*, %struct._edit_script*, i32, i32, i32, i32, i32 }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._splice_score_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._hash_node_t = type { i32, i32 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when aligning.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when dividing\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"TROUBLE!!! startx:  %5d,  starty:  %5d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"TROUBLE!!! x:  %5d,  y:  %5d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"eCol->nb > 0\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"align.c\00", align 1
@__PRETTY_FUNCTION__.IDISPLAY = private unnamed_addr constant [112 x i8] c"void IDISPLAY(uchar *, uchar *, unsigned int, unsigned int, int *, unsigned int, unsigned int, collec_p_t, int)\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"align.c: Alignment fragment not found.\0A\00", align 1
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [6 x i8] c"\0A%*u \00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"\0A%*u %s\0A%*s %s\0A%*u %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1.13 = private unnamed_addr constant [35 x i8] c"\0A while processing:\0A%.256s\0A%.256s\0A\00", align 1
@.str.2.16 = private unnamed_addr constant [31 x i8] c"malloc of %zd failed: %s (%d)\0A\00", align 1
@.str.3.17 = private unnamed_addr constant [36 x i8] c"calloc of %zd, %zd failed: %s (%d)\0A\00", align 1
@.str.4.18 = private unnamed_addr constant [38 x i8] c"realloc of %p to %zd failed: %s (%d)\0A\00", align 1
@encoding = common dso_local global [128 x i32] zeroinitializer, align 16
@.str.11.19 = private unnamed_addr constant [17 x i8] c"q1 > 0 || p1 < m\00", align 1
@.str.1.20 = private unnamed_addr constant [9 x i8] c"sim4b1.c\00", align 1
@__PRETTY_FUNCTION__.greedy = private unnamed_addr constant [111 x i8] c"int greedy(uchar *, uchar *, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, collec_p_t)\00", align 1
@.str.10.21 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@__PRETTY_FUNCTION__.add_word = private unnamed_addr constant [56 x i8] c"void add_word(hash_env_p_t, unsigned int, unsigned int)\00", align 1
@.str.7.22 = private unnamed_addr constant [12 x i8] c"res != NULL\00", align 1
@__PRETTY_FUNCTION__.exon_cores = private unnamed_addr constant [104 x i8] c"void exon_cores(hash_env_p_t, uchar *, unsigned int, int, int, int, collec_p_t, collec_p_t, collec_p_t)\00", align 1
@.str.8.23 = private unnamed_addr constant [11 x i8] c"lLast >= 0\00", align 1
@.str.9.24 = private unnamed_addr constant [14 x i8] c"last_msp >= 0\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"eCol->nb > 0\00", align 1
@__PRETTY_FUNCTION__.print_exons = private unnamed_addr constant [34 x i8] c"void print_exons(collec_p_t, int)\00", align 1
@.str.2.26 = private unnamed_addr constant [26 x i8] c"%u-%u  (%u-%u)   %u%% ==\0A\00", align 1
@.str.4.27 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.5.28 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.3.29 = private unnamed_addr constant [41 x i8] c"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\0A\00", align 1
@.str.6.30 = private unnamed_addr constant [23 x i8] c"%u-%u  (%u-%u)   %u%%\0A\00", align 1
@argv0 = common dso_local global i8* null, align 8
@options = common dso_local global %struct._options_t zeroinitializer, align 8
@dna_seq_head = common dso_local global [256 x i8] zeroinitializer, align 16
@rna_seq_head = common dso_local global [256 x i8] zeroinitializer, align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.1.40 = private unnamed_addr constant [44 x i8] c"%s: Warning: could not set locale to POSIX\0A\00", align 1
@.str.2.41 = private unnamed_addr constant [20 x i8] c"GTAG,GCAG,GTAC,ATAC\00", align 1
@.str.3.42 = private unnamed_addr constant [33 x i8] c"A:C:c:E:f:g:I:K:L:M:o:q:R:r:W:X:\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.4.43 = private unnamed_addr constant [36 x i8] c"A must be one of 0, 1, 2, 3, or 4.\0A\00", align 1
@.str.5.44 = private unnamed_addr constant [42 x i8] c"Value for option C must be non-negative.\0A\00", align 1
@.str.6.45 = private unnamed_addr constant [42 x i8] c"Value for option c must be non-negative.\0A\00", align 1
@.str.7.46 = private unnamed_addr constant [35 x i8] c"Cutoff (E) must be within [3,10].\0A\00", align 1
@.str.8.47 = private unnamed_addr constant [47 x i8] c"Filter in percent (f) must be within [0,100].\0A\00", align 1
@.str.9.48 = private unnamed_addr constant [42 x i8] c"Value for option K must be non-negative.\0A\00", align 1
@.str.10.49 = private unnamed_addr constant [44 x i8] c"Splice types list has illegal length (%zu)\0A\00", align 1
@.str.11.50 = private unnamed_addr constant [67 x i8] c"Comma expected instead of %c at position %zuin splice types list.\0A\00", align 1
@.str.12.51 = private unnamed_addr constant [84 x i8] c"Expected 'A', 'C', 'G' or 'T' instead of '%c' atposition %zu in splice types list.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Value for option M must be non-negative.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"R must be one of 0, 1, or 2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"W must be within [1,15].\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"X must be positive.\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external dso_local global i32, align 4
@Usage = internal constant [1399 x i8] c"%s [options] dna est_db\0A\0AThis is SIBsim4 version 0.14.\0A\0AAvailable options (default value in braces[]):\0A  -A <int>  output format\0A             0: exon endpoints only\0A             1: alignment text\0A             3: both exon endpoints and alignment text\0A             4: both exon endpoints and alignment text with polyA info\0A            Note that 2 is unimplemented [%d]\0A  -C <int>  MSP score threshold for the second pass [%d]\0A  -c <int>  minimum score cutoff [%d]\0A  -E <int>  cutoff value [%d]\0A  -f <int>  score filter in percent (0 to disable filtering) [%d]\0A  -g <int>  join exons when gap on genomic and RNA have lengths which\0A            differ at most by this percentage [%d]\0A  -I <int>  window width in which to search for intron splicing [%d]\0A  -K <int>  MSP score threshold for the first pass [%d]\0A  -L <str>  a comma separated list of forward splice-types [%s]\0A  -M <int>  scoring splice sites, evaluate match within M nucleotides [%d]\0A  -o <int>  offset nt positions in dna sequence by this amount [%u]\0A  -q <int>  penalty for a nucleotide mismatch [%d]\0A  -R <int>  direction of search\0A             0: search the '+' (direct) strand only\0A             1: search the '-' strand only\0A             2: search both strands and report the best match\0A            [%d]\0A  -r <int>  reward for a nucleotide match [%d]\0A  -W <int>  word size [%d]\0A  -X <int>  value for terminating word extensions [%d]\0A\00", align 16
@.str.18 = private unnamed_addr constant [31 x i8] c"Cannot read sequence from %s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"Unrecognized request for EST orientation.\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"\0A%s%s\0A\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"(complement)\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Unrecognized option for alignment output.\0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\0APolyA site %u nt, %u/%u A's %u\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.25.52 = private unnamed_addr constant [7 x i8] c"AATAAA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ATTAAA\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"PolyA signal %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"\0APolyA site %u nt, %u/%u A's %u minus strand\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"TTTATT\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"TTTAAT\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"PolyA signal %u minus strand\0A\00", align 1
@dna_complement = internal constant [256 x i8] c"                                                                 TVGH  CD  M KN   YSA BWXR       tvgh  cd  m kn   ysa bwxr                                                                                                                                      ", align 16
@.str.34 = private unnamed_addr constant [239 x i8] c"\0A***  WARNING                                           ***\0A***  there appears to be several sequences in the DNA  ***\0A***  sequence file.  Only the first one will be used,  ***\0A***  which might not be what was intended.             ***\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"; LEN=\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"; LEN=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Sequence too long: %u\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Could not read from %d: %s(%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Could not open file %s: %s(%d)\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"\0ACaught signal %d while processing:\0A%.256s\0A%.256s\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @align_path(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct._edit_script** %7, %struct._edit_script** %8, i32 %9, i32 %10) #0 {
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._edit_script**, align 8
  %20 = alloca %struct._edit_script**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct._edit_script*, align 8
  %28 = alloca %struct._edit_script*, align 8
  %29 = alloca %struct._edit_script*, align 8
  %30 = alloca %struct._edit_script*, align 8
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
  %47 = alloca i8, align 1
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store %struct._edit_script** %7, %struct._edit_script*** %19, align 8
  store %struct._edit_script** %8, %struct._edit_script*** %20, align 8
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %48 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* null, %struct._edit_script** %48, align 8
  %49 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* null, %struct._edit_script** %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %16, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %11
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* null, %struct._edit_script** %58, align 8
  br label %74

59:                                               ; preds = %53
  %60 = call i8* @xmalloc(i64 16)
  %61 = bitcast i8* %60 to %struct._edit_script*
  store %struct._edit_script* %61, %struct._edit_script** %27, align 8
  %62 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %63 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %62, i32 0, i32 2
  store i8 2, i8* %63, align 4
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %68 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %70 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %69, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %70, align 8
  %71 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %72 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %71, %struct._edit_script** %72, align 8
  %73 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %71, %struct._edit_script** %73, align 8
  br label %74

74:                                               ; preds = %59, %57
  br label %967

75:                                               ; preds = %11
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = call i8* @xmalloc(i64 16)
  %81 = bitcast i8* %80 to %struct._edit_script*
  store %struct._edit_script* %81, %struct._edit_script** %27, align 8
  %82 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %83 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %82, i32 0, i32 2
  store i8 1, i8* %83, align 4
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %88 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  %89 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %90 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %89, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %90, align 8
  %91 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %92 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %91, %struct._edit_script** %92, align 8
  %93 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %91, %struct._edit_script** %93, align 8
  br label %967

94:                                               ; preds = %75
  %95 = load i32, i32* %18, align 4
  %96 = icmp sle i32 %95, 1
  br i1 %96, label %97, label %282

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %14, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %33, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %14, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %97
  %109 = call i8* @xmalloc(i64 16)
  %110 = bitcast i8* %109 to %struct._edit_script*
  store %struct._edit_script* %110, %struct._edit_script** %27, align 8
  %111 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %112 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %111, i32 0, i32 2
  store i8 3, i8* %112, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %117 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 8
  %118 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %119 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %118, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %119, align 8
  %120 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %121 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %120, %struct._edit_script** %121, align 8
  %122 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %120, %struct._edit_script** %122, align 8
  br label %281

123:                                              ; preds = %97
  %124 = load i32, i32* %17, align 4
  %125 = load i32, i32* %15, align 4
  %126 = sub nsw i32 %124, %125
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* %14, align 4
  %129 = sub nsw i32 %127, %128
  %130 = add nsw i32 %129, 1
  %131 = icmp eq i32 %126, %130
  br i1 %131, label %132, label %199

132:                                              ; preds = %123
  %133 = load i8*, i8** %12, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load i32, i32* %33, align 4
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %17, align 4
  %139 = call i32 @snake(i8* %133, i8* %134, i32 %135, i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %44, align 4
  %140 = load i32, i32* %44, align 4
  %141 = load i32, i32* %14, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %155

143:                                              ; preds = %132
  %144 = call i8* @xmalloc(i64 16)
  %145 = bitcast i8* %144 to %struct._edit_script*
  store %struct._edit_script* %145, %struct._edit_script** %27, align 8
  %146 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %147 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %146, i32 0, i32 2
  store i8 3, i8* %147, align 4
  %148 = load i32, i32* %44, align 4
  %149 = load i32, i32* %14, align 4
  %150 = sub nsw i32 %148, %149
  %151 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %152 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 8
  %153 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %154 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %153, %struct._edit_script** %154, align 8
  br label %155

155:                                              ; preds = %143, %132
  %156 = call i8* @xmalloc(i64 16)
  %157 = bitcast i8* %156 to %struct._edit_script*
  store %struct._edit_script* %157, %struct._edit_script** %29, align 8
  %158 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %159 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %158, i32 0, i32 2
  store i8 2, i8* %159, align 4
  %160 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %161 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %160, i32 0, i32 1
  store i32 1, i32* %161, align 8
  %162 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  %163 = load %struct._edit_script*, %struct._edit_script** %162, align 8
  %164 = icmp ne %struct._edit_script* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %155
  %166 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %167 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %168 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %167, i32 0, i32 0
  store %struct._edit_script* %166, %struct._edit_script** %168, align 8
  br label %172

169:                                              ; preds = %155
  %170 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %171 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %170, %struct._edit_script** %171, align 8
  br label %172

172:                                              ; preds = %169, %165
  %173 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %174 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %173, %struct._edit_script** %174, align 8
  %175 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %176 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %175, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %176, align 8
  %177 = load i32, i32* %16, align 4
  %178 = load i32, i32* %44, align 4
  %179 = sub nsw i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %198

181:                                              ; preds = %172
  %182 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  store %struct._edit_script* %182, %struct._edit_script** %27, align 8
  %183 = call i8* @xmalloc(i64 16)
  %184 = bitcast i8* %183 to %struct._edit_script*
  store %struct._edit_script* %184, %struct._edit_script** %29, align 8
  %185 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %184, %struct._edit_script** %185, align 8
  %186 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %187 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %186, i32 0, i32 2
  store i8 3, i8* %187, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %44, align 4
  %190 = sub nsw i32 %188, %189
  %191 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %192 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 8
  %193 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %194 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %193, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %194, align 8
  %195 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %196 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %197 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %196, i32 0, i32 0
  store %struct._edit_script* %195, %struct._edit_script** %197, align 8
  br label %198

198:                                              ; preds = %181, %172
  br label %280

199:                                              ; preds = %123
  %200 = load i32, i32* %17, align 4
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %200, %201
  %203 = add nsw i32 %202, 1
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %14, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp eq i32 %203, %206
  br i1 %207, label %208, label %276

208:                                              ; preds = %199
  %209 = load i8*, i8** %12, align 8
  %210 = load i8*, i8** %13, align 8
  %211 = load i32, i32* %33, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = call i32 @snake(i8* %209, i8* %210, i32 %211, i32 %212, i32 %213, i32 %214)
  store i32 %215, i32* %44, align 4
  %216 = load i32, i32* %44, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %231

219:                                              ; preds = %208
  %220 = call i8* @xmalloc(i64 16)
  %221 = bitcast i8* %220 to %struct._edit_script*
  store %struct._edit_script* %221, %struct._edit_script** %27, align 8
  %222 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %223 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %222, i32 0, i32 2
  store i8 3, i8* %223, align 4
  %224 = load i32, i32* %44, align 4
  %225 = load i32, i32* %14, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %228 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 8
  %229 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %230 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %229, %struct._edit_script** %230, align 8
  br label %231

231:                                              ; preds = %219, %208
  %232 = call i8* @xmalloc(i64 16)
  %233 = bitcast i8* %232 to %struct._edit_script*
  store %struct._edit_script* %233, %struct._edit_script** %29, align 8
  %234 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %235 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %234, i32 0, i32 2
  store i8 1, i8* %235, align 4
  %236 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %237 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %236, i32 0, i32 1
  store i32 1, i32* %237, align 8
  %238 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  %239 = load %struct._edit_script*, %struct._edit_script** %238, align 8
  %240 = icmp ne %struct._edit_script* %239, null
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %243 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %244 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %243, i32 0, i32 0
  store %struct._edit_script* %242, %struct._edit_script** %244, align 8
  br label %248

245:                                              ; preds = %231
  %246 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %247 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %246, %struct._edit_script** %247, align 8
  br label %248

248:                                              ; preds = %245, %241
  %249 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %250 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %249, %struct._edit_script** %250, align 8
  %251 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %252 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %251, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %252, align 8
  %253 = load i32, i32* %16, align 4
  %254 = load i32, i32* %44, align 4
  %255 = add nsw i32 %254, 1
  %256 = icmp sgt i32 %253, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %248
  %258 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  store %struct._edit_script* %258, %struct._edit_script** %27, align 8
  %259 = call i8* @xmalloc(i64 16)
  %260 = bitcast i8* %259 to %struct._edit_script*
  store %struct._edit_script* %260, %struct._edit_script** %29, align 8
  %261 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %260, %struct._edit_script** %261, align 8
  %262 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %263 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %262, i32 0, i32 2
  store i8 3, i8* %263, align 4
  %264 = load i32, i32* %16, align 4
  %265 = load i32, i32* %44, align 4
  %266 = sub nsw i32 %264, %265
  %267 = sub nsw i32 %266, 1
  %268 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %269 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 8
  %270 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %271 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %270, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %271, align 8
  %272 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %273 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %274 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %273, i32 0, i32 0
  store %struct._edit_script* %272, %struct._edit_script** %274, align 8
  br label %275

275:                                              ; preds = %257, %248
  br label %279

276:                                              ; preds = %199
  %277 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %278 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %277, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %279

279:                                              ; preds = %276, %275
  br label %280

280:                                              ; preds = %279, %198
  br label %281

281:                                              ; preds = %280, %108
  br label %967

282:                                              ; preds = %94
  %283 = load i32, i32* %18, align 4
  %284 = sdiv i32 %283, 2
  store i32 %284, i32* %31, align 4
  %285 = load i32, i32* %18, align 4
  %286 = load i32, i32* %31, align 4
  %287 = sub nsw i32 %285, %286
  store i32 %287, i32* %32, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %14, align 4
  %290 = sub nsw i32 %288, %289
  store i32 %290, i32* %33, align 4
  %291 = load i32, i32* %15, align 4
  %292 = load i32, i32* %16, align 4
  %293 = sub nsw i32 %291, %292
  %294 = load i32, i32* %33, align 4
  %295 = load i32, i32* %31, align 4
  %296 = sub nsw i32 %294, %295
  %297 = icmp slt i32 %293, %296
  br i1 %297, label %298, label %302

298:                                              ; preds = %282
  %299 = load i32, i32* %33, align 4
  %300 = load i32, i32* %31, align 4
  %301 = sub nsw i32 %299, %300
  br label %306

302:                                              ; preds = %282
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %16, align 4
  %305 = sub nsw i32 %303, %304
  br label %306

306:                                              ; preds = %302, %298
  %307 = phi i32 [ %301, %298 ], [ %305, %302 ]
  store i32 %307, i32* %34, align 4
  %308 = load i32, i32* %17, align 4
  %309 = load i32, i32* %14, align 4
  %310 = sub nsw i32 %308, %309
  %311 = load i32, i32* %33, align 4
  %312 = load i32, i32* %31, align 4
  %313 = add nsw i32 %311, %312
  %314 = icmp sgt i32 %310, %313
  br i1 %314, label %315, label %319

315:                                              ; preds = %306
  %316 = load i32, i32* %33, align 4
  %317 = load i32, i32* %31, align 4
  %318 = add nsw i32 %316, %317
  br label %323

319:                                              ; preds = %306
  %320 = load i32, i32* %17, align 4
  %321 = load i32, i32* %14, align 4
  %322 = sub nsw i32 %320, %321
  br label %323

323:                                              ; preds = %319, %315
  %324 = phi i32 [ %318, %315 ], [ %322, %319 ]
  store i32 %324, i32* %35, align 4
  %325 = load i32, i32* %17, align 4
  %326 = load i32, i32* %16, align 4
  %327 = sub nsw i32 %325, %326
  store i32 %327, i32* %36, align 4
  %328 = load i32, i32* %15, align 4
  %329 = load i32, i32* %16, align 4
  %330 = sub nsw i32 %328, %329
  %331 = load i32, i32* %36, align 4
  %332 = load i32, i32* %32, align 4
  %333 = sub nsw i32 %331, %332
  %334 = icmp slt i32 %330, %333
  br i1 %334, label %335, label %339

335:                                              ; preds = %323
  %336 = load i32, i32* %36, align 4
  %337 = load i32, i32* %32, align 4
  %338 = sub nsw i32 %336, %337
  br label %343

339:                                              ; preds = %323
  %340 = load i32, i32* %15, align 4
  %341 = load i32, i32* %16, align 4
  %342 = sub nsw i32 %340, %341
  br label %343

343:                                              ; preds = %339, %335
  %344 = phi i32 [ %338, %335 ], [ %342, %339 ]
  store i32 %344, i32* %37, align 4
  %345 = load i32, i32* %17, align 4
  %346 = load i32, i32* %14, align 4
  %347 = sub nsw i32 %345, %346
  %348 = load i32, i32* %36, align 4
  %349 = load i32, i32* %32, align 4
  %350 = add nsw i32 %348, %349
  %351 = icmp sgt i32 %347, %350
  br i1 %351, label %352, label %356

352:                                              ; preds = %343
  %353 = load i32, i32* %36, align 4
  %354 = load i32, i32* %32, align 4
  %355 = add nsw i32 %353, %354
  br label %360

356:                                              ; preds = %343
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* %14, align 4
  %359 = sub nsw i32 %357, %358
  br label %360

360:                                              ; preds = %356, %352
  %361 = phi i32 [ %355, %352 ], [ %359, %356 ]
  store i32 %361, i32* %38, align 4
  %362 = load i32, i32* %35, align 4
  %363 = load i32, i32* %34, align 4
  %364 = sub nsw i32 %362, %363
  %365 = add nsw i32 %364, 1
  %366 = sext i32 %365 to i64
  %367 = mul i64 %366, 4
  %368 = call i8* @xmalloc(i64 %367)
  %369 = bitcast i8* %368 to i32*
  %370 = load i32, i32* %34, align 4
  %371 = sext i32 %370 to i64
  %372 = sub i64 0, %371
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32* %373, i32** %23, align 8
  %374 = load i32, i32* %35, align 4
  %375 = load i32, i32* %34, align 4
  %376 = sub nsw i32 %374, %375
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = mul i64 %378, 4
  %380 = call i8* @xmalloc(i64 %379)
  %381 = bitcast i8* %380 to i32*
  %382 = load i32, i32* %34, align 4
  %383 = sext i32 %382 to i64
  %384 = sub i64 0, %383
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  store i32* %385, i32** %24, align 8
  %386 = load i32, i32* %34, align 4
  store i32 %386, i32* %40, align 4
  br label %387

387:                                              ; preds = %396, %360
  %388 = load i32, i32* %40, align 4
  %389 = load i32, i32* %35, align 4
  %390 = icmp sle i32 %388, %389
  br i1 %390, label %391, label %399

391:                                              ; preds = %387
  %392 = load i32*, i32** %23, align 8
  %393 = load i32, i32* %40, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 -1, i32* %395, align 4
  br label %396

396:                                              ; preds = %391
  %397 = load i32, i32* %40, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %40, align 4
  br label %387

399:                                              ; preds = %387
  %400 = load i8*, i8** %12, align 8
  %401 = load i8*, i8** %13, align 8
  %402 = load i32, i32* %33, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i32, i32* %16, align 4
  %405 = load i32, i32* %17, align 4
  %406 = call i32 @snake(i8* %400, i8* %401, i32 %402, i32 %403, i32 %404, i32 %405)
  %407 = load i32*, i32** %23, align 8
  %408 = load i32, i32* %33, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32, i32* %407, i64 %409
  store i32 %406, i32* %410, align 4
  store i32 1, i32* %39, align 4
  br label %411

411:                                              ; preds = %585, %399
  %412 = load i32, i32* %39, align 4
  %413 = load i32, i32* %31, align 4
  %414 = icmp sle i32 %412, %413
  br i1 %414, label %415, label %588

415:                                              ; preds = %411
  %416 = load i32, i32* %34, align 4
  %417 = load i32, i32* %33, align 4
  %418 = load i32, i32* %39, align 4
  %419 = sub nsw i32 %417, %418
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %415
  %422 = load i32, i32* %33, align 4
  %423 = load i32, i32* %39, align 4
  %424 = sub nsw i32 %422, %423
  br label %427

425:                                              ; preds = %415
  %426 = load i32, i32* %34, align 4
  br label %427

427:                                              ; preds = %425, %421
  %428 = phi i32 [ %424, %421 ], [ %426, %425 ]
  store i32 %428, i32* %45, align 4
  %429 = load i32, i32* %35, align 4
  %430 = load i32, i32* %33, align 4
  %431 = load i32, i32* %39, align 4
  %432 = add nsw i32 %430, %431
  %433 = icmp sgt i32 %429, %432
  br i1 %433, label %434, label %438

434:                                              ; preds = %427
  %435 = load i32, i32* %33, align 4
  %436 = load i32, i32* %39, align 4
  %437 = add nsw i32 %435, %436
  br label %440

438:                                              ; preds = %427
  %439 = load i32, i32* %35, align 4
  br label %440

440:                                              ; preds = %438, %434
  %441 = phi i32 [ %437, %434 ], [ %439, %438 ]
  store i32 %441, i32* %46, align 4
  %442 = load i32, i32* %45, align 4
  store i32 %442, i32* %40, align 4
  br label %443

443:                                              ; preds = %562, %440
  %444 = load i32, i32* %40, align 4
  %445 = load i32, i32* %46, align 4
  %446 = icmp sle i32 %444, %445
  br i1 %446, label %447, label %565

447:                                              ; preds = %443
  %448 = load i32, i32* %40, align 4
  %449 = load i32, i32* %45, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = load i32*, i32** %23, align 8
  %453 = load i32, i32* %40, align 4
  %454 = add nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %41, align 4
  br label %550

459:                                              ; preds = %447
  %460 = load i32, i32* %40, align 4
  %461 = load i32, i32* %46, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %470

463:                                              ; preds = %459
  %464 = load i32*, i32** %23, align 8
  %465 = load i32, i32* %40, align 4
  %466 = sub nsw i32 %465, 1
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %464, i64 %467
  %469 = load i32, i32* %468, align 4
  store i32 %469, i32* %41, align 4
  br label %549

470:                                              ; preds = %459
  %471 = load i32*, i32** %23, align 8
  %472 = load i32, i32* %40, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = load i32*, i32** %23, align 8
  %477 = load i32, i32* %40, align 4
  %478 = add nsw i32 %477, 1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %476, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = icmp sge i32 %475, %481
  br i1 %482, label %483, label %504

483:                                              ; preds = %470
  %484 = load i32*, i32** %23, align 8
  %485 = load i32, i32* %40, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = add nsw i32 %488, 1
  %490 = load i32*, i32** %23, align 8
  %491 = load i32, i32* %40, align 4
  %492 = sub nsw i32 %491, 1
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp sge i32 %489, %495
  br i1 %496, label %497, label %504

497:                                              ; preds = %483
  %498 = load i32*, i32** %23, align 8
  %499 = load i32, i32* %40, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %498, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %41, align 4
  br label %548

504:                                              ; preds = %483, %470
  %505 = load i32*, i32** %23, align 8
  %506 = load i32, i32* %40, align 4
  %507 = add nsw i32 %506, 1
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i32, i32* %505, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = add nsw i32 %510, 1
  %512 = load i32*, i32** %23, align 8
  %513 = load i32, i32* %40, align 4
  %514 = sub nsw i32 %513, 1
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds i32, i32* %512, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = icmp sge i32 %511, %517
  br i1 %518, label %519, label %540

519:                                              ; preds = %504
  %520 = load i32*, i32** %23, align 8
  %521 = load i32, i32* %40, align 4
  %522 = add nsw i32 %521, 1
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %520, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = load i32*, i32** %23, align 8
  %527 = load i32, i32* %40, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i32, i32* %526, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = icmp sge i32 %525, %530
  br i1 %531, label %532, label %540

532:                                              ; preds = %519
  %533 = load i32*, i32** %23, align 8
  %534 = load i32, i32* %40, align 4
  %535 = add nsw i32 %534, 1
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i32, i32* %533, i64 %536
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %41, align 4
  br label %547

540:                                              ; preds = %519, %504
  %541 = load i32*, i32** %23, align 8
  %542 = load i32, i32* %40, align 4
  %543 = sub nsw i32 %542, 1
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32, i32* %541, i64 %544
  %546 = load i32, i32* %545, align 4
  store i32 %546, i32* %41, align 4
  br label %547

547:                                              ; preds = %540, %532
  br label %548

548:                                              ; preds = %547, %497
  br label %549

549:                                              ; preds = %548, %463
  br label %550

550:                                              ; preds = %549, %451
  %551 = load i8*, i8** %12, align 8
  %552 = load i8*, i8** %13, align 8
  %553 = load i32, i32* %40, align 4
  %554 = load i32, i32* %41, align 4
  %555 = load i32, i32* %16, align 4
  %556 = load i32, i32* %17, align 4
  %557 = call i32 @snake(i8* %551, i8* %552, i32 %553, i32 %554, i32 %555, i32 %556)
  %558 = load i32*, i32** %24, align 8
  %559 = load i32, i32* %40, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds i32, i32* %558, i64 %560
  store i32 %557, i32* %561, align 4
  br label %562

562:                                              ; preds = %550
  %563 = load i32, i32* %40, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %40, align 4
  br label %443

565:                                              ; preds = %443
  %566 = load i32, i32* %45, align 4
  store i32 %566, i32* %40, align 4
  br label %567

567:                                              ; preds = %581, %565
  %568 = load i32, i32* %40, align 4
  %569 = load i32, i32* %46, align 4
  %570 = icmp sle i32 %568, %569
  br i1 %570, label %571, label %584

571:                                              ; preds = %567
  %572 = load i32*, i32** %24, align 8
  %573 = load i32, i32* %40, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i32, i32* %572, i64 %574
  %576 = load i32, i32* %575, align 4
  %577 = load i32*, i32** %23, align 8
  %578 = load i32, i32* %40, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  store i32 %576, i32* %580, align 4
  br label %581

581:                                              ; preds = %571
  %582 = load i32, i32* %40, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %40, align 4
  br label %567

584:                                              ; preds = %567
  br label %585

585:                                              ; preds = %584
  %586 = load i32, i32* %39, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %39, align 4
  br label %411

588:                                              ; preds = %411
  %589 = load i32, i32* %38, align 4
  %590 = load i32, i32* %37, align 4
  %591 = sub nsw i32 %589, %590
  %592 = add nsw i32 %591, 1
  %593 = sext i32 %592 to i64
  %594 = mul i64 %593, 4
  %595 = call i8* @xmalloc(i64 %594)
  %596 = bitcast i8* %595 to i32*
  %597 = load i32, i32* %37, align 4
  %598 = sext i32 %597 to i64
  %599 = sub i64 0, %598
  %600 = getelementptr inbounds i32, i32* %596, i64 %599
  store i32* %600, i32** %25, align 8
  %601 = load i32, i32* %38, align 4
  %602 = load i32, i32* %37, align 4
  %603 = sub nsw i32 %601, %602
  %604 = add nsw i32 %603, 1
  %605 = sext i32 %604 to i64
  %606 = mul i64 %605, 4
  %607 = call i8* @xmalloc(i64 %606)
  %608 = bitcast i8* %607 to i32*
  %609 = load i32, i32* %37, align 4
  %610 = sext i32 %609 to i64
  %611 = sub i64 0, %610
  %612 = getelementptr inbounds i32, i32* %608, i64 %611
  store i32* %612, i32** %26, align 8
  %613 = load i32, i32* %37, align 4
  store i32 %613, i32* %40, align 4
  br label %614

614:                                              ; preds = %625, %588
  %615 = load i32, i32* %40, align 4
  %616 = load i32, i32* %38, align 4
  %617 = icmp sle i32 %615, %616
  br i1 %617, label %618, label %628

618:                                              ; preds = %614
  %619 = load i32, i32* %16, align 4
  %620 = add nsw i32 %619, 1
  %621 = load i32*, i32** %25, align 8
  %622 = load i32, i32* %40, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  store i32 %620, i32* %624, align 4
  br label %625

625:                                              ; preds = %618
  %626 = load i32, i32* %40, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %40, align 4
  br label %614

628:                                              ; preds = %614
  %629 = load i8*, i8** %12, align 8
  %630 = load i8*, i8** %13, align 8
  %631 = load i32, i32* %36, align 4
  %632 = load i32, i32* %16, align 4
  %633 = load i32, i32* %14, align 4
  %634 = load i32, i32* %15, align 4
  %635 = load i32, i32* %21, align 4
  %636 = load i32, i32* %22, align 4
  %637 = call i32 @rsnake(i8* %629, i8* %630, i32 %631, i32 %632, i32 %633, i32 %634, i32 %635, i32 %636)
  %638 = load i32*, i32** %25, align 8
  %639 = load i32, i32* %36, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %638, i64 %640
  store i32 %637, i32* %641, align 4
  store i32 1, i32* %39, align 4
  br label %642

642:                                              ; preds = %822, %628
  %643 = load i32, i32* %39, align 4
  %644 = load i32, i32* %32, align 4
  %645 = icmp sle i32 %643, %644
  br i1 %645, label %646, label %825

646:                                              ; preds = %642
  %647 = load i32, i32* %37, align 4
  %648 = load i32, i32* %36, align 4
  %649 = load i32, i32* %39, align 4
  %650 = sub nsw i32 %648, %649
  %651 = icmp slt i32 %647, %650
  br i1 %651, label %652, label %656

652:                                              ; preds = %646
  %653 = load i32, i32* %36, align 4
  %654 = load i32, i32* %39, align 4
  %655 = sub nsw i32 %653, %654
  br label %658

656:                                              ; preds = %646
  %657 = load i32, i32* %37, align 4
  br label %658

658:                                              ; preds = %656, %652
  %659 = phi i32 [ %655, %652 ], [ %657, %656 ]
  store i32 %659, i32* %45, align 4
  %660 = load i32, i32* %38, align 4
  %661 = load i32, i32* %36, align 4
  %662 = load i32, i32* %39, align 4
  %663 = add nsw i32 %661, %662
  %664 = icmp sgt i32 %660, %663
  br i1 %664, label %665, label %669

665:                                              ; preds = %658
  %666 = load i32, i32* %36, align 4
  %667 = load i32, i32* %39, align 4
  %668 = add nsw i32 %666, %667
  br label %671

669:                                              ; preds = %658
  %670 = load i32, i32* %38, align 4
  br label %671

671:                                              ; preds = %669, %665
  %672 = phi i32 [ %668, %665 ], [ %670, %669 ]
  store i32 %672, i32* %46, align 4
  %673 = load i32, i32* %45, align 4
  store i32 %673, i32* %40, align 4
  br label %674

674:                                              ; preds = %799, %671
  %675 = load i32, i32* %40, align 4
  %676 = load i32, i32* %46, align 4
  %677 = icmp sle i32 %675, %676
  br i1 %677, label %678, label %802

678:                                              ; preds = %674
  %679 = load i32, i32* %40, align 4
  %680 = load i32, i32* %45, align 4
  %681 = icmp eq i32 %679, %680
  br i1 %681, label %682, label %689

682:                                              ; preds = %678
  %683 = load i32*, i32** %25, align 8
  %684 = load i32, i32* %40, align 4
  %685 = add nsw i32 %684, 1
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i32, i32* %683, i64 %686
  %688 = load i32, i32* %687, align 4
  store i32 %688, i32* %41, align 4
  br label %785

689:                                              ; preds = %678
  %690 = load i32, i32* %40, align 4
  %691 = load i32, i32* %46, align 4
  %692 = icmp eq i32 %690, %691
  br i1 %692, label %693, label %701

693:                                              ; preds = %689
  %694 = load i32*, i32** %25, align 8
  %695 = load i32, i32* %40, align 4
  %696 = sub nsw i32 %695, 1
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds i32, i32* %694, i64 %697
  %699 = load i32, i32* %698, align 4
  %700 = sub nsw i32 %699, 1
  store i32 %700, i32* %41, align 4
  br label %784

701:                                              ; preds = %689
  %702 = load i32*, i32** %25, align 8
  %703 = load i32, i32* %40, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i32, i32* %702, i64 %704
  %706 = load i32, i32* %705, align 4
  %707 = sub nsw i32 %706, 1
  %708 = load i32*, i32** %25, align 8
  %709 = load i32, i32* %40, align 4
  %710 = add nsw i32 %709, 1
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i32, i32* %708, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = icmp sle i32 %707, %713
  br i1 %714, label %715, label %737

715:                                              ; preds = %701
  %716 = load i32*, i32** %25, align 8
  %717 = load i32, i32* %40, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds i32, i32* %716, i64 %718
  %720 = load i32, i32* %719, align 4
  %721 = sub nsw i32 %720, 1
  %722 = load i32*, i32** %25, align 8
  %723 = load i32, i32* %40, align 4
  %724 = sub nsw i32 %723, 1
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds i32, i32* %722, i64 %725
  %727 = load i32, i32* %726, align 4
  %728 = sub nsw i32 %727, 1
  %729 = icmp sle i32 %721, %728
  br i1 %729, label %730, label %737

730:                                              ; preds = %715
  %731 = load i32*, i32** %25, align 8
  %732 = load i32, i32* %40, align 4
  %733 = sext i32 %732 to i64
  %734 = getelementptr inbounds i32, i32* %731, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = sub nsw i32 %735, 1
  store i32 %736, i32* %41, align 4
  br label %783

737:                                              ; preds = %715, %701
  %738 = load i32*, i32** %25, align 8
  %739 = load i32, i32* %40, align 4
  %740 = sub nsw i32 %739, 1
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds i32, i32* %738, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = sub nsw i32 %743, 1
  %745 = load i32*, i32** %25, align 8
  %746 = load i32, i32* %40, align 4
  %747 = add nsw i32 %746, 1
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds i32, i32* %745, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = icmp sle i32 %744, %750
  br i1 %751, label %752, label %775

752:                                              ; preds = %737
  %753 = load i32*, i32** %25, align 8
  %754 = load i32, i32* %40, align 4
  %755 = sub nsw i32 %754, 1
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, i32* %753, i64 %756
  %758 = load i32, i32* %757, align 4
  %759 = sub nsw i32 %758, 1
  %760 = load i32*, i32** %25, align 8
  %761 = load i32, i32* %40, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds i32, i32* %760, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = sub nsw i32 %764, 1
  %766 = icmp sle i32 %759, %765
  br i1 %766, label %767, label %775

767:                                              ; preds = %752
  %768 = load i32*, i32** %25, align 8
  %769 = load i32, i32* %40, align 4
  %770 = sub nsw i32 %769, 1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %768, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = sub nsw i32 %773, 1
  store i32 %774, i32* %41, align 4
  br label %782

775:                                              ; preds = %752, %737
  %776 = load i32*, i32** %25, align 8
  %777 = load i32, i32* %40, align 4
  %778 = add nsw i32 %777, 1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i32, i32* %776, i64 %779
  %781 = load i32, i32* %780, align 4
  store i32 %781, i32* %41, align 4
  br label %782

782:                                              ; preds = %775, %767
  br label %783

783:                                              ; preds = %782, %730
  br label %784

784:                                              ; preds = %783, %693
  br label %785

785:                                              ; preds = %784, %682
  %786 = load i8*, i8** %12, align 8
  %787 = load i8*, i8** %13, align 8
  %788 = load i32, i32* %40, align 4
  %789 = load i32, i32* %41, align 4
  %790 = load i32, i32* %14, align 4
  %791 = load i32, i32* %15, align 4
  %792 = load i32, i32* %21, align 4
  %793 = load i32, i32* %22, align 4
  %794 = call i32 @rsnake(i8* %786, i8* %787, i32 %788, i32 %789, i32 %790, i32 %791, i32 %792, i32 %793)
  %795 = load i32*, i32** %26, align 8
  %796 = load i32, i32* %40, align 4
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds i32, i32* %795, i64 %797
  store i32 %794, i32* %798, align 4
  br label %799

799:                                              ; preds = %785
  %800 = load i32, i32* %40, align 4
  %801 = add nsw i32 %800, 1
  store i32 %801, i32* %40, align 4
  br label %674

802:                                              ; preds = %674
  %803 = load i32, i32* %45, align 4
  store i32 %803, i32* %40, align 4
  br label %804

804:                                              ; preds = %818, %802
  %805 = load i32, i32* %40, align 4
  %806 = load i32, i32* %46, align 4
  %807 = icmp sle i32 %805, %806
  br i1 %807, label %808, label %821

808:                                              ; preds = %804
  %809 = load i32*, i32** %26, align 8
  %810 = load i32, i32* %40, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds i32, i32* %809, i64 %811
  %813 = load i32, i32* %812, align 4
  %814 = load i32*, i32** %25, align 8
  %815 = load i32, i32* %40, align 4
  %816 = sext i32 %815 to i64
  %817 = getelementptr inbounds i32, i32* %814, i64 %816
  store i32 %813, i32* %817, align 4
  br label %818

818:                                              ; preds = %808
  %819 = load i32, i32* %40, align 4
  %820 = add nsw i32 %819, 1
  store i32 %820, i32* %40, align 4
  br label %804

821:                                              ; preds = %804
  br label %822

822:                                              ; preds = %821
  %823 = load i32, i32* %39, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %39, align 4
  br label %642

825:                                              ; preds = %642
  store i8 0, i8* %47, align 1
  %826 = load i32, i32* %14, align 4
  store i32 %826, i32* %42, align 4
  %827 = load i32, i32* %15, align 4
  store i32 %827, i32* %43, align 4
  %828 = load i32, i32* %34, align 4
  %829 = load i32, i32* %37, align 4
  %830 = icmp slt i32 %828, %829
  br i1 %830, label %831, label %833

831:                                              ; preds = %825
  %832 = load i32, i32* %37, align 4
  br label %835

833:                                              ; preds = %825
  %834 = load i32, i32* %34, align 4
  br label %835

835:                                              ; preds = %833, %831
  %836 = phi i32 [ %832, %831 ], [ %834, %833 ]
  store i32 %836, i32* %45, align 4
  %837 = load i32, i32* %35, align 4
  %838 = load i32, i32* %38, align 4
  %839 = icmp sgt i32 %837, %838
  br i1 %839, label %840, label %842

840:                                              ; preds = %835
  %841 = load i32, i32* %38, align 4
  br label %844

842:                                              ; preds = %835
  %843 = load i32, i32* %35, align 4
  br label %844

844:                                              ; preds = %842, %840
  %845 = phi i32 [ %841, %840 ], [ %843, %842 ]
  store i32 %845, i32* %46, align 4
  %846 = load i32, i32* %45, align 4
  store i32 %846, i32* %40, align 4
  br label %847

847:                                              ; preds = %899, %844
  %848 = load i32, i32* %40, align 4
  %849 = load i32, i32* %46, align 4
  %850 = icmp sle i32 %848, %849
  br i1 %850, label %851, label %902

851:                                              ; preds = %847
  %852 = load i32*, i32** %23, align 8
  %853 = load i32, i32* %40, align 4
  %854 = sext i32 %853 to i64
  %855 = getelementptr inbounds i32, i32* %852, i64 %854
  %856 = load i32, i32* %855, align 4
  %857 = load i32*, i32** %25, align 8
  %858 = load i32, i32* %40, align 4
  %859 = sext i32 %858 to i64
  %860 = getelementptr inbounds i32, i32* %857, i64 %859
  %861 = load i32, i32* %860, align 4
  %862 = icmp sge i32 %856, %861
  br i1 %862, label %863, label %898

863:                                              ; preds = %851
  %864 = load i32*, i32** %23, align 8
  %865 = load i32, i32* %40, align 4
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds i32, i32* %864, i64 %866
  %868 = load i32, i32* %867, align 4
  %869 = load i32, i32* %14, align 4
  %870 = sub nsw i32 %868, %869
  %871 = load i32, i32* %16, align 4
  %872 = load i32*, i32** %25, align 8
  %873 = load i32, i32* %40, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds i32, i32* %872, i64 %874
  %876 = load i32, i32* %875, align 4
  %877 = sub nsw i32 %871, %876
  %878 = icmp sge i32 %870, %877
  br i1 %878, label %879, label %888

879:                                              ; preds = %863
  %880 = load i32*, i32** %23, align 8
  %881 = load i32, i32* %40, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i32, i32* %880, i64 %882
  %884 = load i32, i32* %883, align 4
  store i32 %884, i32* %42, align 4
  %885 = load i32, i32* %40, align 4
  %886 = load i32, i32* %42, align 4
  %887 = add nsw i32 %885, %886
  store i32 %887, i32* %43, align 4
  br label %897

888:                                              ; preds = %863
  %889 = load i32*, i32** %25, align 8
  %890 = load i32, i32* %40, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds i32, i32* %889, i64 %891
  %893 = load i32, i32* %892, align 4
  store i32 %893, i32* %42, align 4
  %894 = load i32, i32* %40, align 4
  %895 = load i32, i32* %42, align 4
  %896 = add nsw i32 %894, %895
  store i32 %896, i32* %43, align 4
  br label %897

897:                                              ; preds = %888, %879
  store i8 1, i8* %47, align 1
  br label %902

898:                                              ; preds = %851
  br label %899

899:                                              ; preds = %898
  %900 = load i32, i32* %40, align 4
  %901 = add nsw i32 %900, 1
  store i32 %901, i32* %40, align 4
  br label %847

902:                                              ; preds = %897, %847
  %903 = load i32*, i32** %23, align 8
  %904 = load i32, i32* %34, align 4
  %905 = sext i32 %904 to i64
  %906 = getelementptr inbounds i32, i32* %903, i64 %905
  %907 = bitcast i32* %906 to i8*
  call void @free(i8* %907) #5
  %908 = load i32*, i32** %25, align 8
  %909 = load i32, i32* %37, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds i32, i32* %908, i64 %910
  %912 = bitcast i32* %911 to i8*
  call void @free(i8* %912) #5
  %913 = load i32*, i32** %24, align 8
  %914 = load i32, i32* %34, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds i32, i32* %913, i64 %915
  %917 = bitcast i32* %916 to i8*
  call void @free(i8* %917) #5
  %918 = load i32*, i32** %26, align 8
  %919 = load i32, i32* %37, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds i32, i32* %918, i64 %920
  %922 = bitcast i32* %921 to i8*
  call void @free(i8* %922) #5
  %923 = load i8, i8* %47, align 1
  %924 = icmp ne i8 %923, 0
  br i1 %924, label %925, label %953

925:                                              ; preds = %902
  %926 = load i8*, i8** %12, align 8
  %927 = load i8*, i8** %13, align 8
  %928 = load i32, i32* %14, align 4
  %929 = load i32, i32* %15, align 4
  %930 = load i32, i32* %42, align 4
  %931 = load i32, i32* %43, align 4
  %932 = load i32, i32* %31, align 4
  %933 = load i32, i32* %21, align 4
  %934 = load i32, i32* %22, align 4
  call void @align_path(i8* %926, i8* %927, i32 %928, i32 %929, i32 %930, i32 %931, i32 %932, %struct._edit_script** %27, %struct._edit_script** %28, i32 %933, i32 %934)
  %935 = load i8*, i8** %12, align 8
  %936 = load i8*, i8** %13, align 8
  %937 = load i32, i32* %42, align 4
  %938 = load i32, i32* %43, align 4
  %939 = load i32, i32* %16, align 4
  %940 = load i32, i32* %17, align 4
  %941 = load i32, i32* %32, align 4
  %942 = load i32, i32* %21, align 4
  %943 = load i32, i32* %22, align 4
  call void @align_path(i8* %935, i8* %936, i32 %937, i32 %938, i32 %939, i32 %940, i32 %941, %struct._edit_script** %29, %struct._edit_script** %30, i32 %942, i32 %943)
  %944 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %945 = icmp ne %struct._edit_script* %944, null
  br i1 %945, label %946, label %950

946:                                              ; preds = %925
  %947 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %948 = load %struct._edit_script*, %struct._edit_script** %28, align 8
  %949 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %948, i32 0, i32 0
  store %struct._edit_script* %947, %struct._edit_script** %949, align 8
  br label %952

950:                                              ; preds = %925
  %951 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  store %struct._edit_script* %951, %struct._edit_script** %27, align 8
  br label %952

952:                                              ; preds = %950, %946
  br label %956

953:                                              ; preds = %902
  %954 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %955 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %954, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store %struct._edit_script* null, %struct._edit_script** %27, align 8
  br label %956

956:                                              ; preds = %953, %952
  %957 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %958 = load %struct._edit_script**, %struct._edit_script*** %19, align 8
  store %struct._edit_script* %957, %struct._edit_script** %958, align 8
  %959 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %960 = icmp ne %struct._edit_script* %959, null
  br i1 %960, label %961, label %964

961:                                              ; preds = %956
  %962 = load %struct._edit_script*, %struct._edit_script** %30, align 8
  %963 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %962, %struct._edit_script** %963, align 8
  br label %967

964:                                              ; preds = %956
  %965 = load %struct._edit_script*, %struct._edit_script** %28, align 8
  %966 = load %struct._edit_script**, %struct._edit_script*** %20, align 8
  store %struct._edit_script* %965, %struct._edit_script** %966, align 8
  br label %967

967:                                              ; preds = %964, %961, %281, %79, %74
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @snake(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %7, align 4
  br label %54

19:                                               ; preds = %6
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %47, %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %23
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8*, i8** %9, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %37, %43
  br label %45

45:                                               ; preds = %31, %27, %23
  %46 = phi i1 [ false, %27 ], [ false, %23 ], [ %44, %31 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  br label %23

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %17
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @rsnake(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %8
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %9, align 4
  br label %85

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* %17, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %18, align 4
  br label %52

52:                                               ; preds = %78, %48
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = load i8*, i8** %10, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %67, %74
  br label %76

76:                                               ; preds = %60, %56, %52
  %77 = phi i1 [ false, %56 ], [ false, %52 ], [ %75, %60 ]
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = load i32, i32* %13, align 4
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %18, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %18, align 4
  br label %52

83:                                               ; preds = %76
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %22
  %86 = load i32, i32* %9, align 4
  ret i32 %86
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @align_get_dist(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %24, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %24, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %7
  %38 = load i32, i32* %24, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %38, %39
  br label %45

41:                                               ; preds = %7
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = sub nsw i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i32 [ %40, %37 ], [ %44, %41 ]
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %24, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add nsw i32 %50, %51
  %53 = icmp sgt i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %24, align 4
  %56 = load i32, i32* %15, align 4
  %57 = add nsw i32 %55, %56
  br label %62

58:                                               ; preds = %45
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %26, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %18, align 4
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %26, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %25, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %62
  store i32 -1, i32* %8, align 4
  br label %342

75:                                               ; preds = %70
  %76 = load i32, i32* %26, align 4
  %77 = load i32, i32* %25, align 4
  %78 = sub nsw i32 %76, %77
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 4
  %82 = call i8* @xmalloc(i64 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* %25, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32* %87, i32** %16, align 8
  %88 = load i32, i32* %26, align 4
  %89 = load i32, i32* %25, align 4
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = call i8* @xmalloc(i64 %93)
  %95 = bitcast i8* %94 to i32*
  %96 = load i32, i32* %25, align 4
  %97 = sext i32 %96 to i64
  %98 = sub i64 0, %97
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  store i32* %99, i32** %17, align 8
  %100 = load i32, i32* %25, align 4
  store i32 %100, i32* %22, align 4
  br label %101

101:                                              ; preds = %110, %75
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %26, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %101
  %106 = load i32*, i32** %16, align 8
  %107 = load i32, i32* %22, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 -2147483648, i32* %109, align 4
  br label %110

110:                                              ; preds = %105
  %111 = load i32, i32* %22, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %101

113:                                              ; preds = %101
  %114 = load i8*, i8** %9, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = load i32, i32* %24, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @snake(i8* %114, i8* %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32*, i32** %16, align 8
  %122 = load i32, i32* %24, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %18, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp sge i32 %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %113
  %133 = load i32*, i32** %16, align 8
  %134 = load i32, i32* %25, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = bitcast i32* %136 to i8*
  call void @free(i8* %137) #5
  %138 = load i32*, i32** %17, align 8
  %139 = load i32, i32* %25, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = bitcast i32* %141 to i8*
  call void @free(i8* %142) #5
  store i32 0, i32* %8, align 4
  br label %342

143:                                              ; preds = %113
  store i32 1, i32* %21, align 4
  br label %144

144:                                              ; preds = %338, %143
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %15, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %341

148:                                              ; preds = %144
  %149 = load i32, i32* %25, align 4
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %21, align 4
  %152 = sub nsw i32 %150, %151
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* %24, align 4
  %156 = load i32, i32* %21, align 4
  %157 = sub nsw i32 %155, %156
  br label %160

158:                                              ; preds = %148
  %159 = load i32, i32* %25, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = phi i32 [ %157, %154 ], [ %159, %158 ]
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* %26, align 4
  %163 = load i32, i32* %24, align 4
  %164 = load i32, i32* %21, align 4
  %165 = add nsw i32 %163, %164
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %160
  %168 = load i32, i32* %24, align 4
  %169 = load i32, i32* %21, align 4
  %170 = add nsw i32 %168, %169
  br label %173

171:                                              ; preds = %160
  %172 = load i32, i32* %26, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %170, %167 ], [ %172, %171 ]
  store i32 %174, i32* %20, align 4
  %175 = load i32, i32* %19, align 4
  store i32 %175, i32* %22, align 4
  br label %176

176:                                              ; preds = %295, %173
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* %20, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %298

180:                                              ; preds = %176
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* %19, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %22, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %23, align 4
  br label %283

192:                                              ; preds = %180
  %193 = load i32, i32* %22, align 4
  %194 = load i32, i32* %20, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %23, align 4
  br label %282

203:                                              ; preds = %192
  %204 = load i32*, i32** %16, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %16, align 8
  %210 = load i32, i32* %22, align 4
  %211 = add nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp sge i32 %208, %214
  br i1 %215, label %216, label %237

216:                                              ; preds = %203
  %217 = load i32*, i32** %16, align 8
  %218 = load i32, i32* %22, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  %223 = load i32*, i32** %16, align 8
  %224 = load i32, i32* %22, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp sge i32 %222, %228
  br i1 %229, label %230, label %237

230:                                              ; preds = %216
  %231 = load i32*, i32** %16, align 8
  %232 = load i32, i32* %22, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %23, align 4
  br label %281

237:                                              ; preds = %216, %203
  %238 = load i32*, i32** %16, align 8
  %239 = load i32, i32* %22, align 4
  %240 = add nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i32*, i32** %16, align 8
  %246 = load i32, i32* %22, align 4
  %247 = sub nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp sge i32 %244, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %237
  %253 = load i32*, i32** %16, align 8
  %254 = load i32, i32* %22, align 4
  %255 = add nsw i32 %254, 1
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32*, i32** %16, align 8
  %260 = load i32, i32* %22, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %258, %263
  br i1 %264, label %265, label %273

265:                                              ; preds = %252
  %266 = load i32*, i32** %16, align 8
  %267 = load i32, i32* %22, align 4
  %268 = add nsw i32 %267, 1
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %23, align 4
  br label %280

273:                                              ; preds = %252, %237
  %274 = load i32*, i32** %16, align 8
  %275 = load i32, i32* %22, align 4
  %276 = sub nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %23, align 4
  br label %280

280:                                              ; preds = %273, %265
  br label %281

281:                                              ; preds = %280, %230
  br label %282

282:                                              ; preds = %281, %196
  br label %283

283:                                              ; preds = %282, %184
  %284 = load i8*, i8** %9, align 8
  %285 = load i8*, i8** %10, align 8
  %286 = load i32, i32* %22, align 4
  %287 = load i32, i32* %23, align 4
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @snake(i8* %284, i8* %285, i32 %286, i32 %287, i32 %288, i32 %289)
  %291 = load i32*, i32** %17, align 8
  %292 = load i32, i32* %22, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 %290, i32* %294, align 4
  br label %295

295:                                              ; preds = %283
  %296 = load i32, i32* %22, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %22, align 4
  br label %176

298:                                              ; preds = %176
  %299 = load i32, i32* %19, align 4
  store i32 %299, i32* %22, align 4
  br label %300

300:                                              ; preds = %314, %298
  %301 = load i32, i32* %22, align 4
  %302 = load i32, i32* %20, align 4
  %303 = icmp sle i32 %301, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %300
  %305 = load i32*, i32** %17, align 8
  %306 = load i32, i32* %22, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** %16, align 8
  %311 = load i32, i32* %22, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  store i32 %309, i32* %313, align 4
  br label %314

314:                                              ; preds = %304
  %315 = load i32, i32* %22, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %22, align 4
  br label %300

317:                                              ; preds = %300
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %13, align 4
  %324 = icmp sge i32 %322, %323
  br i1 %324, label %325, label %337

325:                                              ; preds = %317
  %326 = load i32*, i32** %16, align 8
  %327 = load i32, i32* %25, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = bitcast i32* %329 to i8*
  call void @free(i8* %330) #5
  %331 = load i32*, i32** %17, align 8
  %332 = load i32, i32* %25, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  %335 = bitcast i32* %334 to i8*
  call void @free(i8* %335) #5
  %336 = load i32, i32* %21, align 4
  store i32 %336, i32* %8, align 4
  br label %342

337:                                              ; preds = %317
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %21, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %21, align 4
  br label %144

341:                                              ; preds = %144
  store i32 -1, i32* %8, align 4
  br label %342

342:                                              ; preds = %341, %325, %132, %74
  %343 = load i32, i32* %8, align 4
  ret i32 %343
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Condense_both_Ends(%struct._edit_script** %0, %struct._edit_script** %1, %struct._edit_script** %2) #0 {
  %4 = alloca %struct._edit_script**, align 8
  %5 = alloca %struct._edit_script**, align 8
  %6 = alloca %struct._edit_script**, align 8
  %7 = alloca %struct._edit_script*, align 8
  %8 = alloca %struct._edit_script*, align 8
  store %struct._edit_script** %0, %struct._edit_script*** %4, align 8
  store %struct._edit_script** %1, %struct._edit_script*** %5, align 8
  store %struct._edit_script** %2, %struct._edit_script*** %6, align 8
  %9 = load %struct._edit_script**, %struct._edit_script*** %4, align 8
  %10 = load %struct._edit_script*, %struct._edit_script** %9, align 8
  store %struct._edit_script* %10, %struct._edit_script** %7, align 8
  %11 = load %struct._edit_script**, %struct._edit_script*** %6, align 8
  store %struct._edit_script* null, %struct._edit_script** %11, align 8
  br label %12

12:                                               ; preds = %61, %3
  %13 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %14 = icmp ne %struct._edit_script* %13, null
  br i1 %14, label %15, label %65

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %33, %15
  %17 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %18 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %17, i32 0, i32 0
  %19 = load %struct._edit_script*, %struct._edit_script** %18, align 8
  store %struct._edit_script* %19, %struct._edit_script** %8, align 8
  %20 = icmp ne %struct._edit_script* %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %23 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 4
  %25 = sext i8 %24 to i32
  %26 = load %struct._edit_script*, %struct._edit_script** %8, align 8
  %27 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 4
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br label %31

31:                                               ; preds = %21, %16
  %32 = phi i1 [ false, %16 ], [ %30, %21 ]
  br i1 %32, label %33, label %50

33:                                               ; preds = %31
  %34 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %35 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct._edit_script*, %struct._edit_script** %8, align 8
  %38 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %36, %39
  %41 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %42 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct._edit_script*, %struct._edit_script** %8, align 8
  %44 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %43, i32 0, i32 0
  %45 = load %struct._edit_script*, %struct._edit_script** %44, align 8
  %46 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %47 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %46, i32 0, i32 0
  store %struct._edit_script* %45, %struct._edit_script** %47, align 8
  %48 = load %struct._edit_script*, %struct._edit_script** %8, align 8
  %49 = bitcast %struct._edit_script* %48 to i8*
  call void @free(i8* %49) #5
  br label %16

50:                                               ; preds = %31
  %51 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %52 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %51, i32 0, i32 0
  %53 = load %struct._edit_script*, %struct._edit_script** %52, align 8
  %54 = icmp ne %struct._edit_script* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %57 = load %struct._edit_script**, %struct._edit_script*** %6, align 8
  store %struct._edit_script* %56, %struct._edit_script** %57, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %60 = load %struct._edit_script**, %struct._edit_script*** %5, align 8
  store %struct._edit_script* %59, %struct._edit_script** %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %63 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %62, i32 0, i32 0
  %64 = load %struct._edit_script*, %struct._edit_script** %63, align 8
  store %struct._edit_script* %64, %struct._edit_script** %7, align 8
  br label %12

65:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @S2A(%struct._edit_script* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct._edit_script*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._edit_script*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct._edit_script* %0, %struct._edit_script** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct._edit_script*, %struct._edit_script** %4, align 8
  store %struct._edit_script* %10, %struct._edit_script** %7, align 8
  %11 = load i32*, i32** %5, align 8
  store i32* %11, i32** %8, align 8
  br label %12

12:                                               ; preds = %74, %3
  %13 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %14 = icmp ne %struct._edit_script* %13, null
  br i1 %14, label %15, label %78

15:                                               ; preds = %12
  %16 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %17 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %16, i32 0, i32 2
  %18 = load i8, i8* %17, align 4
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %35

21:                                               ; preds = %15
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %25 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  store i32 0, i32* %29, align 4
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %22

34:                                               ; preds = %22
  br label %74

35:                                               ; preds = %15
  %36 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %37 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %36, i32 0, i32 2
  %38 = load i8, i8* %37, align 4
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %46 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  br label %53

48:                                               ; preds = %41
  %49 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %50 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 0, %51
  br label %53

53:                                               ; preds = %48, %44
  %54 = phi i32 [ %47, %44 ], [ %52, %48 ]
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %73

57:                                               ; preds = %35
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %62 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 0, %63
  br label %69

65:                                               ; preds = %57
  %66 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %67 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i32 [ %64, %60 ], [ %68, %65 ]
  %71 = load i32*, i32** %8, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %8, align 8
  store i32 %70, i32* %71, align 4
  br label %73

73:                                               ; preds = %69, %53
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct._edit_script*, %struct._edit_script** %7, align 8
  %76 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %75, i32 0, i32 0
  %77 = load %struct._edit_script*, %struct._edit_script** %76, align 8
  store %struct._edit_script* %77, %struct._edit_script** %7, align 8
  br label %12

78:                                               ; preds = %12
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = ptrtoint i32* %79 to i64
  %82 = ptrtoint i32* %80 to i64
  %83 = sub i64 %81, %82
  %84 = sdiv exact i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 -1
  store i32 %85, i32* %87, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @IDISPLAY(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, %struct._collec_t* %7, i32 %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._collec_t*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8, align 1
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
  %33 = alloca %struct._exon_t*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct._collec_t* %7, %struct._collec_t** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %32, align 4
  %34 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %9
  br label %40

39:                                               ; preds = %9
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 393, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @__PRETTY_FUNCTION__.IDISPLAY, i64 0, i64 0)) #9
  unreachable

40:                                               ; preds = %38
  %41 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %42 = call i32 @get_pos_width(%struct._collec_t* %41)
  store i32 %42, i32* %31, align 4
  br label %43

43:                                               ; preds = %72, %40
  %44 = load i32, i32* %32, align 4
  %45 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %46 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %51 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %50, i32 0, i32 0
  %52 = bitcast %union._collec_elt_t* %51 to %struct._exon_t***
  %53 = load %struct._exon_t**, %struct._exon_t*** %52, align 8
  %54 = load i32, i32* %32, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %53, i64 %55
  %57 = load %struct._exon_t*, %struct._exon_t** %56, align 8
  store %struct._exon_t* %57, %struct._exon_t** %33, align 8
  %58 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %49
  %63 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %65, %66
  br label %68

68:                                               ; preds = %62, %49
  %69 = phi i1 [ true, %49 ], [ %67, %62 ]
  br label %70

70:                                               ; preds = %68, %43
  %71 = phi i1 [ false, %43 ], [ %69, %68 ]
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = load i32, i32* %32, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %32, align 4
  br label %43

75:                                               ; preds = %70
  %76 = load i32, i32* %32, align 4
  %77 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %78 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp uge i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)) #10
  unreachable

82:                                               ; preds = %75
  store i32 0, i32* %24, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %26, align 4
  store i8 42, i8* %22, align 1
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %29, align 4
  %84 = load i32, i32* %16, align 4
  store i32 %84, i32* %30, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i8** %21, align 8
  %85 = load i32, i32* %32, align 4
  %86 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %87 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = sub i32 %88, 1
  %90 = icmp ult i32 %85, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %82
  %92 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %93 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  br label %97

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi i32 [ %95, %91 ], [ -1, %96 ]
  store i32 %98, i32* %25, align 4
  br label %99

99:                                               ; preds = %399, %97
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %27, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ult i32 %104, %105
  br label %107

107:                                              ; preds = %103, %99
  %108 = phi i1 [ true, %99 ], [ %106, %103 ]
  br i1 %108, label %109, label %400

109:                                              ; preds = %107
  %110 = load i32, i32* %23, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %109
  %113 = load i32*, i32** %14, align 8
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load i32*, i32** %14, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %14, align 8
  %119 = load i32, i32* %117, align 4
  store i32 %119, i32* %23, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = load i32, i32* %26, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %26, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %120, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i8*, i8** %19, align 8
  store i8 %125, i8* %126, align 1
  %127 = load i8*, i8** %11, align 8
  %128 = load i32, i32* %27, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %27, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %20, align 8
  store i8 %132, i8* %133, align 1
  %134 = load i8*, i8** %19, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %19, align 8
  %136 = load i8, i8* %134, align 1
  %137 = zext i8 %136 to i32
  %138 = load i8*, i8** %20, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %20, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %137, %141
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 124, i32 32
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %21, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %21, align 8
  store i8 %145, i8* %146, align 1
  br label %348

148:                                              ; preds = %112, %109
  %149 = load i32, i32* %23, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** %14, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %14, align 8
  %154 = load i32, i32* %152, align 4
  store i32 %154, i32* %23, align 4
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %23, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i8*, i8** %19, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %19, align 8
  store i8 32, i8* %159, align 1
  %161 = load i8*, i8** %11, align 8
  %162 = load i32, i32* %27, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %27, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %161, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = load i8*, i8** %20, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %20, align 8
  store i8 %166, i8* %167, align 1
  %169 = load i8*, i8** %21, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %21, align 8
  store i8 45, i8* %169, align 1
  %171 = load i32, i32* %23, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %23, align 4
  br label %347

173:                                              ; preds = %155
  %174 = load i32, i32* %26, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %174, %175
  %177 = load i32, i32* %25, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %245

179:                                              ; preds = %173
  %180 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %181 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 4
  %183 = ashr i64 %182, 56
  %184 = trunc i64 %183 to i32
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %179
  %187 = load i32, i32* %18, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %179
  store i8 61, i8* %22, align 1
  br label %196

190:                                              ; preds = %186
  %191 = load i32, i32* %18, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i8 62, i8* %22, align 1
  br label %195

194:                                              ; preds = %190
  store i8 60, i8* %22, align 1
  br label %195

195:                                              ; preds = %194, %193
  br label %196

196:                                              ; preds = %195, %189
  %197 = load i32, i32* %32, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %32, align 4
  %199 = load i32, i32* %32, align 4
  %200 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %201 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp ult i32 %199, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %196
  %205 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %206 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %205, i32 0, i32 0
  %207 = bitcast %union._collec_elt_t* %206 to %struct._exon_t***
  %208 = load %struct._exon_t**, %struct._exon_t*** %207, align 8
  %209 = load i32, i32* %32, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %208, i64 %210
  %212 = load %struct._exon_t*, %struct._exon_t** %211, align 8
  br label %214

213:                                              ; preds = %196
  br label %214

214:                                              ; preds = %213, %204
  %215 = phi %struct._exon_t* [ %212, %204 ], [ null, %213 ]
  store %struct._exon_t* %215, %struct._exon_t** %33, align 8
  %216 = load i32, i32* %32, align 4
  %217 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %218 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = sub i32 %219, 1
  %221 = icmp ult i32 %216, %220
  br i1 %221, label %222, label %227

222:                                              ; preds = %214
  %223 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %224 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  br label %228

227:                                              ; preds = %214
  br label %228

228:                                              ; preds = %227, %222
  %229 = phi i32 [ %226, %222 ], [ -1, %227 ]
  store i32 %229, i32* %25, align 4
  store i32 1, i32* %24, align 4
  %230 = load i8, i8* %22, align 1
  %231 = load i8*, i8** %21, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %21, align 8
  store i8 %230, i8* %231, align 1
  %233 = load i8*, i8** %10, align 8
  %234 = load i32, i32* %26, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %26, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %233, i64 %236
  %238 = load i8, i8* %237, align 1
  %239 = load i8*, i8** %19, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %19, align 8
  store i8 %238, i8* %239, align 1
  %241 = load i8*, i8** %20, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %20, align 8
  store i8 32, i8* %241, align 1
  %243 = load i32, i32* %23, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %23, align 4
  br label %346

245:                                              ; preds = %173
  %246 = load i32, i32* %24, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %263, label %248

248:                                              ; preds = %245
  %249 = load i8*, i8** %21, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %250, i8** %21, align 8
  store i8 45, i8* %249, align 1
  %251 = load i8*, i8** %10, align 8
  %252 = load i32, i32* %26, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %26, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i8, i8* %251, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = load i8*, i8** %19, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %19, align 8
  store i8 %256, i8* %257, align 1
  %259 = load i8*, i8** %20, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %20, align 8
  store i8 32, i8* %259, align 1
  %261 = load i32, i32* %23, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %23, align 4
  br label %345

263:                                              ; preds = %245
  %264 = load i32, i32* %24, align 4
  switch i32 %264, label %344 [
    i32 0, label %265
    i32 1, label %265
    i32 2, label %265
    i32 3, label %283
    i32 4, label %283
    i32 5, label %296
    i32 6, label %310
    i32 7, label %310
    i32 8, label %328
  ]

265:                                              ; preds = %263, %263, %263
  %266 = load i8*, i8** %10, align 8
  %267 = load i32, i32* %26, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %26, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = load i8*, i8** %19, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %19, align 8
  store i8 %271, i8* %272, align 1
  %274 = load i8*, i8** %20, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %20, align 8
  store i8 32, i8* %274, align 1
  %276 = load i8, i8* %22, align 1
  %277 = load i8*, i8** %21, align 8
  %278 = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %278, i8** %21, align 8
  store i8 %276, i8* %277, align 1
  %279 = load i32, i32* %23, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %23, align 4
  %281 = load i32, i32* %24, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %24, align 4
  br label %344

283:                                              ; preds = %263, %263
  %284 = load i8*, i8** %19, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %19, align 8
  store i8 46, i8* %284, align 1
  %286 = load i8*, i8** %20, align 8
  %287 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %287, i8** %20, align 8
  store i8 32, i8* %286, align 1
  %288 = load i8*, i8** %21, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %21, align 8
  store i8 46, i8* %288, align 1
  %290 = load i32, i32* %26, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %26, align 4
  %292 = load i32, i32* %23, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %23, align 4
  %294 = load i32, i32* %24, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %24, align 4
  br label %344

296:                                              ; preds = %263
  %297 = load i8*, i8** %19, align 8
  %298 = getelementptr inbounds i8, i8* %297, i32 1
  store i8* %298, i8** %19, align 8
  store i8 46, i8* %297, align 1
  %299 = load i8*, i8** %20, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %20, align 8
  store i8 32, i8* %299, align 1
  %301 = load i8*, i8** %21, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %21, align 8
  store i8 46, i8* %301, align 1
  %303 = load i32, i32* %23, align 4
  %304 = sub nsw i32 0, %303
  %305 = sub nsw i32 %304, 3
  %306 = load i32, i32* %26, align 4
  %307 = add i32 %306, %305
  store i32 %307, i32* %26, align 4
  store i32 -3, i32* %23, align 4
  %308 = load i32, i32* %24, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %24, align 4
  br label %344

310:                                              ; preds = %263, %263
  %311 = load i8*, i8** %10, align 8
  %312 = load i32, i32* %26, align 4
  %313 = add i32 %312, 1
  store i32 %313, i32* %26, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = load i8*, i8** %19, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %19, align 8
  store i8 %316, i8* %317, align 1
  %319 = load i8*, i8** %20, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %20, align 8
  store i8 32, i8* %319, align 1
  %321 = load i8, i8* %22, align 1
  %322 = load i8*, i8** %21, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %21, align 8
  store i8 %321, i8* %322, align 1
  %324 = load i32, i32* %23, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %23, align 4
  %326 = load i32, i32* %24, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %24, align 4
  br label %344

328:                                              ; preds = %263
  %329 = load i8*, i8** %10, align 8
  %330 = load i32, i32* %26, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %26, align 4
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  %334 = load i8, i8* %333, align 1
  %335 = load i8*, i8** %19, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %19, align 8
  store i8 %334, i8* %335, align 1
  %337 = load i8*, i8** %20, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %20, align 8
  store i8 32, i8* %337, align 1
  %339 = load i8, i8* %22, align 1
  %340 = load i8*, i8** %21, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %21, align 8
  store i8 %339, i8* %340, align 1
  %342 = load i32, i32* %23, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %23, align 4
  store i32 0, i32* %24, align 4
  br label %344

344:                                              ; preds = %328, %310, %296, %283, %265, %263
  br label %345

345:                                              ; preds = %344, %248
  br label %346

346:                                              ; preds = %345, %228
  br label %347

347:                                              ; preds = %346, %158
  br label %348

348:                                              ; preds = %347, %116
  %349 = load i8*, i8** %19, align 8
  %350 = icmp uge i8* %349, getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 50)
  br i1 %350, label %359, label %351

351:                                              ; preds = %348
  %352 = load i32, i32* %26, align 4
  %353 = load i32, i32* %12, align 4
  %354 = icmp uge i32 %352, %353
  br i1 %354, label %355, label %399

355:                                              ; preds = %351
  %356 = load i32, i32* %27, align 4
  %357 = load i32, i32* %13, align 4
  %358 = icmp uge i32 %356, %357
  br i1 %358, label %359, label %399

359:                                              ; preds = %355, %348
  %360 = load i8*, i8** %21, align 8
  store i8 0, i8* %360, align 1
  %361 = load i8*, i8** %20, align 8
  store i8 0, i8* %361, align 1
  %362 = load i8*, i8** %19, align 8
  store i8 0, i8* %362, align 1
  %363 = load i32, i32* %31, align 4
  %364 = load i32, i32* %28, align 4
  %365 = add i32 %364, 1
  store i32 %365, i32* %28, align 4
  %366 = mul i32 50, %364
  %367 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %363, i32 %366)
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 10), i8** %20, align 8
  br label %368

368:                                              ; preds = %374, %359
  %369 = load i8*, i8** %20, align 8
  %370 = load i8*, i8** %19, align 8
  %371 = icmp ule i8* %369, %370
  br i1 %371, label %372, label %377

372:                                              ; preds = %368
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372
  %375 = load i8*, i8** %20, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 10
  store i8* %376, i8** %20, align 8
  br label %368

377:                                              ; preds = %368
  %378 = load i8*, i8** %20, align 8
  %379 = load i8*, i8** %19, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 5
  %381 = icmp ule i8* %378, %380
  br i1 %381, label %382, label %384

382:                                              ; preds = %377
  %383 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %377
  %385 = load i32, i32* %31, align 4
  %386 = load i32, i32* %29, align 4
  %387 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %388 = add i32 %386, %387
  %389 = load i32, i32* %31, align 4
  %390 = load i32, i32* %31, align 4
  %391 = load i32, i32* %30, align 4
  %392 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %385, i32 %388, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i32 %389, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i32 %390, i32 %391, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0))
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %26, align 4
  %395 = add i32 %393, %394
  store i32 %395, i32* %29, align 4
  %396 = load i32, i32* %16, align 4
  %397 = load i32, i32* %27, align 4
  %398 = add i32 %396, %397
  store i32 %398, i32* %30, align 4
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @ALINE, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @BLINE, i64 0, i64 0), i8** %20, align 8
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @CLINE, i64 0, i64 0), i8** %21, align 8
  br label %399

399:                                              ; preds = %384, %355, %351
  br label %99

400:                                              ; preds = %107
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_pos_width(%struct._collec_t* %0) #0 {
  %2 = alloca %struct._collec_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %2, align 8
  %5 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %6 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 0
  %7 = bitcast %union._collec_elt_t* %6 to %struct._exon_t***
  %8 = load %struct._exon_t**, %struct._exon_t*** %7, align 8
  %9 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %10 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = sub i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %8, i64 %13
  %15 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %16 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %19 = add i32 %17, %18
  store i32 %19, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %24, %1
  %21 = load i32, i32* %3, align 4
  %22 = udiv i32 %21, 10
  store i32 %22, i32* %3, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %20

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = icmp ult i32 %28, 7
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 7, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Free_script(%struct._edit_script* %0) #0 {
  %2 = alloca %struct._edit_script*, align 8
  %3 = alloca %struct._edit_script*, align 8
  %4 = alloca %struct._edit_script*, align 8
  store %struct._edit_script* %0, %struct._edit_script** %2, align 8
  %5 = load %struct._edit_script*, %struct._edit_script** %2, align 8
  store %struct._edit_script* %5, %struct._edit_script** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct._edit_script*, %struct._edit_script** %3, align 8
  %8 = icmp ne %struct._edit_script* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct._edit_script*, %struct._edit_script** %3, align 8
  %11 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %10, i32 0, i32 0
  %12 = load %struct._edit_script*, %struct._edit_script** %11, align 8
  store %struct._edit_script* %12, %struct._edit_script** %4, align 8
  %13 = load %struct._edit_script*, %struct._edit_script** %3, align 8
  %14 = bitcast %struct._edit_script* %13 to i8*
  call void @free(i8* %14) #5
  %15 = load %struct._edit_script*, %struct._edit_script** %4, align 8
  store %struct._edit_script* %15, %struct._edit_script** %3, align 8
  br label %6

16:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define dso_local void @fatal(i8* %0, ...) #4 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %6 = bitcast %struct.__va_list_tag* %5 to i8*
  call void @llvm.va_start(i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = call i32 @fflush(%struct._IO_FILE* %7)
  %9 = load i8*, i8** @argv0, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %25

11:                                               ; preds = %1
  %12 = load i8*, i8** @argv0, align 8
  %13 = call i8* @strrchr(i8* %12, i32 47) #11
  store i8* %13, i8** %4, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  br label %22

20:                                               ; preds = %11
  %21 = load i8*, i8** @argv0, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i8* [ %19, %17 ], [ %21, %20 ]
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %22, %1
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = call i32 @vfprintf(%struct._IO_FILE* %26, i8* %27, %struct.__va_list_tag* %28)
  %30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %31 = bitcast %struct.__va_list_tag* %30 to i8*
  call void @llvm.va_end(i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1.13, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare dso_local i8* @strrchr(i8*, i32) #6

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xmalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* %2, align 8
  %10 = call i32* @__errno_location() #12
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @strerror(i32 %11) #5
  %13 = call i32* @__errno_location() #12
  %14 = load i32, i32* %13, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2.16, i64 0, i64 0), i64 %9, i8* %12, i32 %14) #10
  unreachable

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind readnone
declare dso_local i32* @__errno_location() #7

; Function Attrs: nounwind
declare dso_local i8* @strerror(i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xcalloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #5
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32* @__errno_location() #12
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @strerror(i32 %15) #5
  %17 = call i32* @__errno_location() #12
  %18 = load i32, i32* %17, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3.17, i64 0, i64 0), i64 %12, i64 %13, i8* %16, i32 %18) #10
  unreachable

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @xrealloc(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i8* @realloc(i8* %6, i64 %7) #5
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32* @__errno_location() #12
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @strerror(i32 %15) #5
  %17 = call i32* @__errno_location() #12
  %18 = load i32, i32* %17, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4.18, i64 0, i64 0), i8* %12, i64 %13, i8* %16, i32 %18) #10
  unreachable

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  ret i8* %20
}

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @SIM4(%struct._hash_env_t* %0, %struct._seq_t* %1, %struct._collec_t* %2) #0 {
  %4 = alloca %struct._hash_env_t*, align 8
  %5 = alloca %struct._seq_t*, align 8
  %6 = alloca %struct._collec_t*, align 8
  %7 = alloca %struct._collec_t, align 8
  %8 = alloca %struct._collec_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._result_t*, align 8
  %12 = alloca %struct._collec_t*, align 8
  %13 = alloca %struct._sim4_stats*, align 8
  %14 = alloca %struct._exon_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._hash_env_t, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct._exon_t*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct._hash_env_t, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct._exon_t*, align 8
  %33 = alloca %struct._exon_t*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct._hash_env_t, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct._exon_t*, align 8
  %39 = alloca i32, align 4
  %40 = alloca %struct._exon_t*, align 8
  store %struct._hash_env_t* %0, %struct._hash_env_t** %4, align 8
  store %struct._seq_t* %1, %struct._seq_t** %5, align 8
  store %struct._collec_t* %2, %struct._collec_t** %6, align 8
  %41 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %42 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %3
  %46 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %47 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %3
  br label %1156

51:                                               ; preds = %45
  call void @init_col(%struct._collec_t* %7, i32 5)
  %52 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %53 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %54 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %57 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %60 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  call void @exon_cores(%struct._hash_env_t* %52, i8* %55, i32 %58, i32 1, i32 1, i32 %59, %struct._collec_t* %7, %struct._collec_t* %60, %struct._collec_t* null)
  call void @init_col(%struct._collec_t* %8, i32 0)
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %1144, %51
  %62 = load i32, i32* %10, align 4
  %63 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %64 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %1147

67:                                               ; preds = %61
  %68 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %69 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %68, i32 0, i32 0
  %70 = bitcast %union._collec_elt_t* %69 to %struct._result_t***
  %71 = load %struct._result_t**, %struct._result_t*** %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct._result_t*, %struct._result_t** %71, i64 %73
  %75 = load %struct._result_t*, %struct._result_t** %74, align 8
  store %struct._result_t* %75, %struct._result_t** %11, align 8
  %76 = load %struct._result_t*, %struct._result_t** %11, align 8
  %77 = getelementptr inbounds %struct._result_t, %struct._result_t* %76, i32 0, i32 1
  store %struct._collec_t* %77, %struct._collec_t** %12, align 8
  %78 = load %struct._result_t*, %struct._result_t** %11, align 8
  %79 = getelementptr inbounds %struct._result_t, %struct._result_t* %78, i32 0, i32 5
  store %struct._sim4_stats* %79, %struct._sim4_stats** %13, align 8
  %80 = load %struct._sim4_stats*, %struct._sim4_stats** %13, align 8
  %81 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  %82 = load %struct._sim4_stats*, %struct._sim4_stats** %13, align 8
  %83 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %82, i32 0, i32 2
  store i32 0, i32* %83, align 4
  %84 = load %struct._result_t*, %struct._result_t** %11, align 8
  %85 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %86 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %89 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  call void @kill_polyA(%struct._result_t* %84, i8* %87, i8* %90)
  %91 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %92 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %67
  br label %1144

96:                                               ; preds = %67
  %97 = load %struct._sim4_stats*, %struct._sim4_stats** %13, align 8
  %98 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %399, label %101

101:                                              ; preds = %96
  %102 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %103 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %102, i32 0, i32 0
  %104 = bitcast %union._collec_elt_t* %103 to %struct._exon_t***
  %105 = load %struct._exon_t**, %struct._exon_t*** %104, align 8
  %106 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %105, i64 0
  %107 = load %struct._exon_t*, %struct._exon_t** %106, align 8
  %108 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp ugt i32 %109, 1
  br i1 %110, label %111, label %399

111:                                              ; preds = %101
  %112 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %113 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %112, i32 0, i32 0
  %114 = bitcast %union._collec_elt_t* %113 to %struct._exon_t***
  %115 = load %struct._exon_t**, %struct._exon_t*** %114, align 8
  %116 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %115, i64 0
  %117 = load %struct._exon_t*, %struct._exon_t** %116, align 8
  store %struct._exon_t* %117, %struct._exon_t** %14, align 8
  store i32 0, i32* %15, align 4
  %118 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %119 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sub i32 %120, 1
  %122 = icmp ugt i32 %121, 60
  br i1 %122, label %123, label %209

123:                                              ; preds = %111
  %124 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %125 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %126, 1
  %128 = load %struct._result_t*, %struct._result_t** %11, align 8
  %129 = getelementptr inbounds %struct._result_t, %struct._result_t* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ugt i32 %127, %130
  br i1 %131, label %132, label %209

132:                                              ; preds = %123
  %133 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %134 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = icmp ugt i32 10, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %139 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  br label %142

141:                                              ; preds = %132
  br label %142

142:                                              ; preds = %141, %137
  %143 = phi i32 [ %140, %137 ], [ 10, %141 ]
  %144 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %145 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %148 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub i32 %149, 1
  call void @init_hash_env(%struct._hash_env_t* %16, i32 %143, i8* %146, i32 %150)
  call void @bld_table(%struct._hash_env_t* %16)
  %151 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %152 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct._result_t*, %struct._result_t** %11, align 8
  %155 = getelementptr inbounds %struct._result_t, %struct._result_t* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  %159 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %160 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct._result_t*, %struct._result_t** %11, align 8
  %163 = getelementptr inbounds %struct._result_t, %struct._result_t* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = sub i32 %161, %164
  %166 = sub i32 %165, 1
  %167 = load %struct._result_t*, %struct._result_t** %11, align 8
  %168 = getelementptr inbounds %struct._result_t, %struct._result_t* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = add i32 %169, 1
  %171 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  call void @exon_cores(%struct._hash_env_t* %16, i8* %158, i32 %166, i32 1, i32 %170, i32 %171, %struct._collec_t* %7, %struct._collec_t* null, %struct._collec_t* %8)
  call void @free_hash_env(%struct._hash_env_t* %16)
  %172 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = icmp ugt i32 %173, 0
  br i1 %174, label %175, label %208

175:                                              ; preds = %142
  call void @swap_seqs(%struct._collec_t* %8)
  %176 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %177 = bitcast %union._collec_elt_t* %176 to %struct._exon_t***
  %178 = load %struct._exon_t**, %struct._exon_t*** %177, align 8
  %179 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = sub i32 %180, 1
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %178, i64 %182
  %184 = load %struct._exon_t*, %struct._exon_t** %183, align 8
  %185 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %186 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %189 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %192 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %195 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  call void @grow_exon_right(%struct._exon_t* %184, i8* %187, i32 %190, i8* %193, i32 %196)
  %197 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %198 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %199 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  call void @merge(%struct._collec_t* %197, %struct._collec_t* %8, i32 0, i32 %200)
  %201 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  store i32 0, i32* %201, align 8
  %202 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %203 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %202, i32 0, i32 0
  %204 = bitcast %union._collec_elt_t* %203 to %struct._exon_t***
  %205 = load %struct._exon_t**, %struct._exon_t*** %204, align 8
  %206 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %205, i64 0
  %207 = load %struct._exon_t*, %struct._exon_t** %206, align 8
  store %struct._exon_t* %207, %struct._exon_t** %14, align 8
  br label %208

208:                                              ; preds = %175, %142
  br label %209

209:                                              ; preds = %208, %123, %111
  br label %210

210:                                              ; preds = %232, %209
  %211 = load i32, i32* %15, align 4
  %212 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %213 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp ult i32 %211, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %210
  %217 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %218 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %217, i32 0, i32 0
  %219 = bitcast %union._collec_elt_t* %218 to %struct._exon_t***
  %220 = load %struct._exon_t**, %struct._exon_t*** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %220, i64 %222
  %224 = load %struct._exon_t*, %struct._exon_t** %223, align 8
  %225 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %226 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %225, i32 0, i32 2
  %227 = load i8*, i8** %226, align 8
  %228 = call i32 @is_polyAT_exon_p(%struct._exon_t* %224, i8* %227)
  %229 = icmp ne i32 %228, 0
  br label %230

230:                                              ; preds = %216, %210
  %231 = phi i1 [ false, %210 ], [ %229, %216 ]
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = load i32, i32* %15, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %15, align 4
  br label %210

235:                                              ; preds = %230
  %236 = load i32, i32* %15, align 4
  %237 = icmp ugt i32 %236, 0
  br i1 %237, label %238, label %294

238:                                              ; preds = %235
  store i32 0, i32* %17, align 4
  br label %239

239:                                              ; preds = %253, %238
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %15, align 4
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %239
  %244 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %245 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %244, i32 0, i32 0
  %246 = bitcast %union._collec_elt_t* %245 to %struct._exon_t***
  %247 = load %struct._exon_t**, %struct._exon_t*** %246, align 8
  %248 = load i32, i32* %17, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %247, i64 %249
  %251 = load %struct._exon_t*, %struct._exon_t** %250, align 8
  %252 = bitcast %struct._exon_t* %251 to i8*
  call void @free(i8* %252) #5
  br label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %17, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %17, align 4
  br label %239

256:                                              ; preds = %239
  %257 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %258 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %257, i32 0, i32 0
  %259 = bitcast %union._collec_elt_t* %258 to i8***
  %260 = load i8**, i8*** %259, align 8
  %261 = bitcast i8** %260 to i8*
  %262 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %263 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %262, i32 0, i32 0
  %264 = bitcast %union._collec_elt_t* %263 to i8***
  %265 = load i8**, i8*** %264, align 8
  %266 = load i32, i32* %15, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = bitcast i8** %268 to i8*
  %270 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %271 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sub i32 %272, %273
  %275 = zext i32 %274 to i64
  %276 = mul i64 %275, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %261, i8* align 8 %269, i64 %276, i1 false)
  %277 = load i32, i32* %15, align 4
  %278 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %279 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = sub i32 %280, %277
  store i32 %281, i32* %279, align 8
  %282 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %283 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %256
  br label %1144

287:                                              ; preds = %256
  %288 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %289 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %288, i32 0, i32 0
  %290 = bitcast %union._collec_elt_t* %289 to %struct._exon_t***
  %291 = load %struct._exon_t**, %struct._exon_t*** %290, align 8
  %292 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %291, i64 0
  %293 = load %struct._exon_t*, %struct._exon_t** %292, align 8
  store %struct._exon_t* %293, %struct._exon_t** %14, align 8
  br label %294

294:                                              ; preds = %287, %235
  %295 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %296 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 4
  %298 = sub i32 %297, 1
  %299 = icmp ugt i32 %298, 0
  br i1 %299, label %300, label %398

300:                                              ; preds = %294
  %301 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %302 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = sub i32 %303, 1
  %305 = icmp ugt i32 %304, 250
  br i1 %305, label %306, label %307

306:                                              ; preds = %300
  br label %312

307:                                              ; preds = %300
  %308 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %309 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = sub i32 %310, 1
  br label %312

312:                                              ; preds = %307, %306
  %313 = phi i32 [ 250, %306 ], [ %311, %307 ]
  store i32 %313, i32* %18, align 4
  %314 = load i32, i32* %18, align 4
  %315 = mul nsw i32 4, %314
  %316 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %317 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = sub nsw i32 %318, 1
  %320 = icmp sgt i32 %315, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %312
  %322 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %323 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 %324, 1
  br label %329

326:                                              ; preds = %312
  %327 = load i32, i32* %18, align 4
  %328 = mul nsw i32 4, %327
  br label %329

329:                                              ; preds = %326, %321
  %330 = phi i32 [ %325, %321 ], [ %328, %326 ]
  store i32 %330, i32* %19, align 4
  %331 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %332 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %331, i32 0, i32 2
  %333 = load i8*, i8** %332, align 8
  %334 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %335 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %333, i64 %337
  %339 = getelementptr inbounds i8, i8* %338, i64 -1
  %340 = load i32, i32* %18, align 4
  %341 = sext i32 %340 to i64
  %342 = sub i64 0, %341
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  %344 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %345 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %348 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %346, i64 %350
  %352 = getelementptr inbounds i8, i8* %351, i64 -1
  %353 = load i32, i32* %19, align 4
  %354 = sext i32 %353 to i64
  %355 = sub i64 0, %354
  %356 = getelementptr inbounds i8, i8* %352, i64 %355
  %357 = load i32, i32* %18, align 4
  %358 = load i32, i32* %19, align 4
  %359 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %360 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = sub i32 %361, 1
  %363 = load i32, i32* %18, align 4
  %364 = sub i32 %362, %363
  %365 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %366 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = sub i32 %367, 1
  %369 = load i32, i32* %19, align 4
  %370 = sub i32 %368, %369
  %371 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %372 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @extend_bw(i8* %343, i8* %356, i32 %357, i32 %358, i32 %364, i32 %370, i32* %20, i32* %21, i32 %373)
  store i32 %374, i32* %22, align 4
  %375 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %376 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %377, 1
  %379 = load i32, i32* %20, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  %382 = mul nsw i32 %380, %381
  %383 = load i32, i32* %22, align 4
  %384 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  %385 = mul nsw i32 %383, %384
  %386 = add nsw i32 %382, %385
  %387 = icmp sge i32 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %329
  %389 = load i32, i32* %20, align 4
  %390 = add nsw i32 %389, 1
  %391 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %392 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %391, i32 0, i32 1
  store i32 %390, i32* %392, align 4
  %393 = load i32, i32* %21, align 4
  %394 = add nsw i32 %393, 1
  %395 = load %struct._exon_t*, %struct._exon_t** %14, align 8
  %396 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %395, i32 0, i32 0
  store i32 %394, i32* %396, align 4
  br label %397

397:                                              ; preds = %388, %329
  br label %398

398:                                              ; preds = %397, %294
  br label %399

399:                                              ; preds = %398, %101, %96
  %400 = load %struct._sim4_stats*, %struct._sim4_stats** %13, align 8
  %401 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %726, label %404

404:                                              ; preds = %399
  %405 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %406 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %405, i32 0, i32 0
  %407 = bitcast %union._collec_elt_t* %406 to %struct._exon_t***
  %408 = load %struct._exon_t**, %struct._exon_t*** %407, align 8
  %409 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %410 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 8
  %412 = sub i32 %411, 1
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %408, i64 %413
  %415 = load %struct._exon_t*, %struct._exon_t** %414, align 8
  %416 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %419 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %418, i32 0, i32 5
  %420 = load i32, i32* %419, align 4
  %421 = icmp ult i32 %417, %420
  br i1 %421, label %422, label %726

422:                                              ; preds = %404
  %423 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %424 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %423, i32 0, i32 0
  %425 = bitcast %union._collec_elt_t* %424 to %struct._exon_t***
  %426 = load %struct._exon_t**, %struct._exon_t*** %425, align 8
  %427 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %428 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  %430 = sub i32 %429, 1
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %426, i64 %431
  %433 = load %struct._exon_t*, %struct._exon_t** %432, align 8
  store %struct._exon_t* %433, %struct._exon_t** %23, align 8
  store i32 0, i32* %24, align 4
  %434 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %435 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 4
  %437 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %438 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 4
  %440 = sub i32 %436, %439
  %441 = icmp ugt i32 %440, 60
  br i1 %441, label %442, label %544

442:                                              ; preds = %422
  %443 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %444 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 4
  %446 = load %struct._result_t*, %struct._result_t** %11, align 8
  %447 = getelementptr inbounds %struct._result_t, %struct._result_t* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load %struct._result_t*, %struct._result_t** %11, align 8
  %450 = getelementptr inbounds %struct._result_t, %struct._result_t* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = add i32 %448, %451
  %453 = icmp ult i32 %445, %452
  br i1 %453, label %454, label %544

454:                                              ; preds = %442
  %455 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %456 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %455, i32 0, i32 5
  %457 = load i32, i32* %456, align 4
  %458 = icmp ugt i32 10, %457
  br i1 %458, label %459, label %463

459:                                              ; preds = %454
  %460 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %461 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 4
  br label %464

463:                                              ; preds = %454
  br label %464

464:                                              ; preds = %463, %459
  %465 = phi i32 [ %462, %459 ], [ 10, %463 ]
  %466 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %467 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %466, i32 0, i32 2
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %470 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %469, i32 0, i32 3
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i8, i8* %468, i64 %472
  %474 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %475 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %474, i32 0, i32 5
  %476 = load i32, i32* %475, align 4
  %477 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %478 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 4
  %480 = sub i32 %476, %479
  call void @init_hash_env(%struct._hash_env_t* %25, i32 %465, i8* %473, i32 %480)
  call void @bld_table(%struct._hash_env_t* %25)
  %481 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %482 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %481, i32 0, i32 1
  %483 = load i8*, i8** %482, align 8
  %484 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %485 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds i8, i8* %483, i64 %487
  %489 = load %struct._result_t*, %struct._result_t** %11, align 8
  %490 = getelementptr inbounds %struct._result_t, %struct._result_t* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = load %struct._result_t*, %struct._result_t** %11, align 8
  %493 = getelementptr inbounds %struct._result_t, %struct._result_t* %492, i32 0, i32 3
  %494 = load i32, i32* %493, align 4
  %495 = add i32 %491, %494
  %496 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %497 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = sub i32 %495, %498
  %500 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %501 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %500, i32 0, i32 3
  %502 = load i32, i32* %501, align 4
  %503 = add i32 %502, 1
  %504 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %505 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %504, i32 0, i32 2
  %506 = load i32, i32* %505, align 4
  %507 = add i32 %506, 1
  %508 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  call void @exon_cores(%struct._hash_env_t* %25, i8* %488, i32 %499, i32 %503, i32 %507, i32 %508, %struct._collec_t* %7, %struct._collec_t* null, %struct._collec_t* %8)
  call void @free_hash_env(%struct._hash_env_t* %25)
  %509 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = icmp ugt i32 %510, 0
  br i1 %511, label %512, label %543

512:                                              ; preds = %464
  call void @swap_seqs(%struct._collec_t* %8)
  %513 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %514 = bitcast %union._collec_elt_t* %513 to %struct._exon_t***
  %515 = load %struct._exon_t**, %struct._exon_t*** %514, align 8
  %516 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %515, i64 0
  %517 = load %struct._exon_t*, %struct._exon_t** %516, align 8
  %518 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %519 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %518, i32 0, i32 1
  %520 = load i8*, i8** %519, align 8
  %521 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %522 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %521, i32 0, i32 2
  %523 = load i8*, i8** %522, align 8
  call void @grow_exon_left(%struct._exon_t* %517, i8* %520, i8* %523)
  %524 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %525 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %526 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %529 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %528, i32 0, i32 5
  %530 = load i32, i32* %529, align 4
  call void @merge(%struct._collec_t* %524, %struct._collec_t* %8, i32 %527, i32 %530)
  %531 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  store i32 0, i32* %531, align 8
  %532 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %533 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %532, i32 0, i32 0
  %534 = bitcast %union._collec_elt_t* %533 to %struct._exon_t***
  %535 = load %struct._exon_t**, %struct._exon_t*** %534, align 8
  %536 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %537 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 8
  %539 = sub i32 %538, 1
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %535, i64 %540
  %542 = load %struct._exon_t*, %struct._exon_t** %541, align 8
  store %struct._exon_t* %542, %struct._exon_t** %23, align 8
  br label %543

543:                                              ; preds = %512, %464
  br label %544

544:                                              ; preds = %543, %442, %422
  br label %545

545:                                              ; preds = %572, %544
  %546 = load i32, i32* %24, align 4
  %547 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %548 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 8
  %550 = icmp ult i32 %546, %549
  br i1 %550, label %551, label %570

551:                                              ; preds = %545
  %552 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %553 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %552, i32 0, i32 0
  %554 = bitcast %union._collec_elt_t* %553 to %struct._exon_t***
  %555 = load %struct._exon_t**, %struct._exon_t*** %554, align 8
  %556 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %557 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* %24, align 4
  %560 = sub i32 %558, %559
  %561 = sub i32 %560, 1
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %555, i64 %562
  %564 = load %struct._exon_t*, %struct._exon_t** %563, align 8
  %565 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %566 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %565, i32 0, i32 2
  %567 = load i8*, i8** %566, align 8
  %568 = call i32 @is_polyAT_exon_p(%struct._exon_t* %564, i8* %567)
  %569 = icmp ne i32 %568, 0
  br label %570

570:                                              ; preds = %551, %545
  %571 = phi i1 [ false, %545 ], [ %569, %551 ]
  br i1 %571, label %572, label %575

572:                                              ; preds = %570
  %573 = load i32, i32* %24, align 4
  %574 = add i32 %573, 1
  store i32 %574, i32* %24, align 4
  br label %545

575:                                              ; preds = %570
  %576 = load i32, i32* %24, align 4
  %577 = icmp ugt i32 %576, 0
  br i1 %577, label %578, label %626

578:                                              ; preds = %575
  %579 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %580 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = load i32, i32* %24, align 4
  %583 = sub i32 %581, %582
  store i32 %583, i32* %26, align 4
  br label %584

584:                                              ; preds = %600, %578
  %585 = load i32, i32* %26, align 4
  %586 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %587 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 8
  %589 = icmp ult i32 %585, %588
  br i1 %589, label %590, label %603

590:                                              ; preds = %584
  %591 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %592 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %591, i32 0, i32 0
  %593 = bitcast %union._collec_elt_t* %592 to %struct._exon_t***
  %594 = load %struct._exon_t**, %struct._exon_t*** %593, align 8
  %595 = load i32, i32* %26, align 4
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %594, i64 %596
  %598 = load %struct._exon_t*, %struct._exon_t** %597, align 8
  %599 = bitcast %struct._exon_t* %598 to i8*
  call void @free(i8* %599) #5
  br label %600

600:                                              ; preds = %590
  %601 = load i32, i32* %26, align 4
  %602 = add i32 %601, 1
  store i32 %602, i32* %26, align 4
  br label %584

603:                                              ; preds = %584
  %604 = load i32, i32* %24, align 4
  %605 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %606 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 8
  %608 = sub i32 %607, %604
  store i32 %608, i32* %606, align 8
  %609 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %610 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 8
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %603
  br label %1144

614:                                              ; preds = %603
  %615 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %616 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %615, i32 0, i32 0
  %617 = bitcast %union._collec_elt_t* %616 to %struct._exon_t***
  %618 = load %struct._exon_t**, %struct._exon_t*** %617, align 8
  %619 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %620 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %619, i32 0, i32 1
  %621 = load i32, i32* %620, align 8
  %622 = sub i32 %621, 1
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %618, i64 %623
  %625 = load %struct._exon_t*, %struct._exon_t** %624, align 8
  store %struct._exon_t* %625, %struct._exon_t** %23, align 8
  br label %626

626:                                              ; preds = %614, %575
  %627 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %628 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %627, i32 0, i32 5
  %629 = load i32, i32* %628, align 4
  %630 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %631 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %630, i32 0, i32 3
  %632 = load i32, i32* %631, align 4
  %633 = sub i32 %629, %632
  %634 = icmp ugt i32 %633, 0
  br i1 %634, label %635, label %725

635:                                              ; preds = %626
  %636 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %637 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %636, i32 0, i32 5
  %638 = load i32, i32* %637, align 4
  %639 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %640 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %639, i32 0, i32 3
  %641 = load i32, i32* %640, align 4
  %642 = sub i32 %638, %641
  %643 = icmp ugt i32 %642, 250
  br i1 %643, label %644, label %645

644:                                              ; preds = %635
  br label %653

645:                                              ; preds = %635
  %646 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %647 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 4
  %649 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %650 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %649, i32 0, i32 3
  %651 = load i32, i32* %650, align 4
  %652 = sub i32 %648, %651
  br label %653

653:                                              ; preds = %645, %644
  %654 = phi i32 [ 250, %644 ], [ %652, %645 ]
  store i32 %654, i32* %27, align 4
  %655 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %656 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %655, i32 0, i32 2
  %657 = load i8*, i8** %656, align 8
  %658 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %659 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %658, i32 0, i32 3
  %660 = load i32, i32* %659, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds i8, i8* %657, i64 %661
  %663 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %664 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %663, i32 0, i32 1
  %665 = load i8*, i8** %664, align 8
  %666 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %667 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %666, i32 0, i32 2
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds i8, i8* %665, i64 %669
  %671 = load i32, i32* %27, align 4
  %672 = load i32, i32* %27, align 4
  %673 = mul nsw i32 4, %672
  %674 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %675 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %674, i32 0, i32 2
  %676 = load i32, i32* %675, align 8
  %677 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %678 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %677, i32 0, i32 2
  %679 = load i32, i32* %678, align 4
  %680 = sub i32 %676, %679
  %681 = icmp sgt i32 %673, %680
  br i1 %681, label %682, label %690

682:                                              ; preds = %653
  %683 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %684 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %683, i32 0, i32 2
  %685 = load i32, i32* %684, align 8
  %686 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %687 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 4
  %689 = sub i32 %685, %688
  br label %693

690:                                              ; preds = %653
  %691 = load i32, i32* %27, align 4
  %692 = mul nsw i32 4, %691
  br label %693

693:                                              ; preds = %690, %682
  %694 = phi i32 [ %689, %682 ], [ %692, %690 ]
  %695 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %696 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %695, i32 0, i32 3
  %697 = load i32, i32* %696, align 4
  %698 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %699 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %698, i32 0, i32 2
  %700 = load i32, i32* %699, align 4
  %701 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %702 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %701, i32 0, i32 5
  %703 = load i32, i32* %702, align 4
  %704 = call i32 @extend_fw(i8* %662, i8* %670, i32 %671, i32 %694, i32 %697, i32 %700, i32* %29, i32* %30, i32 %703)
  store i32 %704, i32* %28, align 4
  %705 = load i32, i32* %29, align 4
  %706 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %707 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %706, i32 0, i32 3
  %708 = load i32, i32* %707, align 4
  %709 = sub nsw i32 %705, %708
  %710 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  %711 = mul nsw i32 %709, %710
  %712 = load i32, i32* %28, align 4
  %713 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  %714 = mul nsw i32 %712, %713
  %715 = add nsw i32 %711, %714
  %716 = icmp sge i32 %715, 0
  br i1 %716, label %717, label %724

717:                                              ; preds = %693
  %718 = load i32, i32* %29, align 4
  %719 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %720 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %719, i32 0, i32 3
  store i32 %718, i32* %720, align 4
  %721 = load i32, i32* %30, align 4
  %722 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %723 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %722, i32 0, i32 2
  store i32 %721, i32* %723, align 4
  br label %724

724:                                              ; preds = %717, %693
  br label %725

725:                                              ; preds = %724, %626
  br label %726

726:                                              ; preds = %725, %404, %399
  %727 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %728 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 8
  %730 = icmp ugt i32 %729, 1
  br i1 %730, label %731, label %981

731:                                              ; preds = %726
  store i32 1, i32* %31, align 4
  br label %732

732:                                              ; preds = %977, %731
  %733 = load i32, i32* %31, align 4
  %734 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %735 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %734, i32 0, i32 1
  %736 = load i32, i32* %735, align 8
  %737 = icmp ult i32 %733, %736
  br i1 %737, label %738, label %980

738:                                              ; preds = %732
  %739 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %740 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %739, i32 0, i32 0
  %741 = bitcast %union._collec_elt_t* %740 to %struct._exon_t***
  %742 = load %struct._exon_t**, %struct._exon_t*** %741, align 8
  %743 = load i32, i32* %31, align 4
  %744 = sub i32 %743, 1
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %742, i64 %745
  %747 = load %struct._exon_t*, %struct._exon_t** %746, align 8
  store %struct._exon_t* %747, %struct._exon_t** %32, align 8
  %748 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %749 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %748, i32 0, i32 0
  %750 = bitcast %union._collec_elt_t* %749 to %struct._exon_t***
  %751 = load %struct._exon_t**, %struct._exon_t*** %750, align 8
  %752 = load i32, i32* %31, align 4
  %753 = zext i32 %752 to i64
  %754 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %751, i64 %753
  %755 = load %struct._exon_t*, %struct._exon_t** %754, align 8
  store %struct._exon_t* %755, %struct._exon_t** %33, align 8
  %756 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %757 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %756, i32 0, i32 1
  %758 = load i32, i32* %757, align 4
  %759 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %760 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %759, i32 0, i32 3
  %761 = load i32, i32* %760, align 4
  %762 = sub i32 %758, %761
  %763 = sub i32 %762, 1
  store i32 %763, i32* %34, align 4
  %764 = load i32, i32* %34, align 4
  %765 = icmp sgt i32 %764, 0
  br i1 %765, label %766, label %976

766:                                              ; preds = %738
  %767 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %768 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %767, i32 0, i32 0
  %769 = load i32, i32* %768, align 4
  %770 = sub i32 %769, 1
  %771 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %772 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %771, i32 0, i32 2
  %773 = load i32, i32* %772, align 4
  %774 = icmp ugt i32 %770, %773
  br i1 %774, label %775, label %975

775:                                              ; preds = %766
  %776 = load i32, i32* %34, align 4
  %777 = icmp sle i32 %776, 500
  br i1 %777, label %778, label %884

778:                                              ; preds = %775
  %779 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %780 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %779, i32 0, i32 2
  %781 = load i8*, i8** %780, align 8
  %782 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %783 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %782, i32 0, i32 3
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds i8, i8* %781, i64 %785
  %787 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %788 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %787, i32 0, i32 1
  %789 = load i8*, i8** %788, align 8
  %790 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %791 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %790, i32 0, i32 2
  %792 = load i32, i32* %791, align 4
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds i8, i8* %789, i64 %793
  %795 = load i32, i32* %34, align 4
  %796 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %797 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %796, i32 0, i32 0
  %798 = load i32, i32* %797, align 4
  %799 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %800 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %799, i32 0, i32 2
  %801 = load i32, i32* %800, align 4
  %802 = sub i32 %798, %801
  %803 = sub i32 %802, 1
  %804 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %805 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %804, i32 0, i32 3
  %806 = load i32, i32* %805, align 4
  %807 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %808 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %807, i32 0, i32 2
  %809 = load i32, i32* %808, align 4
  %810 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %811 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %810, i32 0, i32 5
  %812 = load i32, i32* %811, align 4
  %813 = call i32 @greedy(i8* %786, i8* %794, i32 %795, i32 %803, i32 %806, i32 %809, i32 %812, %struct._collec_t* %8)
  store i32 %813, i32* %36, align 4
  %814 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %815 = load i32, i32* %814, align 8
  %816 = icmp ugt i32 %815, 0
  br i1 %816, label %817, label %883

817:                                              ; preds = %778
  %818 = load i32, i32* %36, align 4
  %819 = sitofp i32 %818 to double
  %820 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %821 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %820, i32 0, i32 5
  %822 = load i32, i32* %821, align 4
  %823 = uitofp i32 %822 to double
  %824 = load i32, i32* %34, align 4
  %825 = sitofp i32 %824 to double
  %826 = fmul double 2.000000e-01, %825
  %827 = fadd double %826, 1.000000e+00
  %828 = fcmp olt double %823, %827
  br i1 %828, label %829, label %834

829:                                              ; preds = %817
  %830 = load i32, i32* %34, align 4
  %831 = sitofp i32 %830 to double
  %832 = fmul double 2.000000e-01, %831
  %833 = fadd double %832, 1.000000e+00
  br label %839

834:                                              ; preds = %817
  %835 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %836 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %835, i32 0, i32 5
  %837 = load i32, i32* %836, align 4
  %838 = uitofp i32 %837 to double
  br label %839

839:                                              ; preds = %834, %829
  %840 = phi double [ %833, %829 ], [ %838, %834 ]
  %841 = fcmp ole double %819, %840
  br i1 %841, label %842, label %883

842:                                              ; preds = %839
  %843 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %844 = bitcast %union._collec_elt_t* %843 to %struct._exon_t***
  %845 = load %struct._exon_t**, %struct._exon_t*** %844, align 8
  %846 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %845, i64 0
  %847 = load %struct._exon_t*, %struct._exon_t** %846, align 8
  %848 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %849 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %848, i32 0, i32 1
  %850 = load i8*, i8** %849, align 8
  %851 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %852 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %851, i32 0, i32 2
  %853 = load i8*, i8** %852, align 8
  call void @grow_exon_left(%struct._exon_t* %847, i8* %850, i8* %853)
  %854 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %855 = bitcast %union._collec_elt_t* %854 to %struct._exon_t***
  %856 = load %struct._exon_t**, %struct._exon_t*** %855, align 8
  %857 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %858 = load i32, i32* %857, align 8
  %859 = sub i32 %858, 1
  %860 = zext i32 %859 to i64
  %861 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %856, i64 %860
  %862 = load %struct._exon_t*, %struct._exon_t** %861, align 8
  %863 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %864 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %863, i32 0, i32 1
  %865 = load i8*, i8** %864, align 8
  %866 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %867 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %866, i32 0, i32 2
  %868 = load i32, i32* %867, align 8
  %869 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %870 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %869, i32 0, i32 2
  %871 = load i8*, i8** %870, align 8
  %872 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %873 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %872, i32 0, i32 5
  %874 = load i32, i32* %873, align 4
  call void @grow_exon_right(%struct._exon_t* %862, i8* %865, i32 %868, i8* %871, i32 %874)
  %875 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %876 = load i32, i32* %31, align 4
  %877 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %878 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %877, i32 0, i32 5
  %879 = load i32, i32* %878, align 4
  call void @merge(%struct._collec_t* %875, %struct._collec_t* %8, i32 %876, i32 %879)
  %880 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  store i32 0, i32* %880, align 8
  %881 = load i32, i32* %31, align 4
  %882 = sub i32 %881, 1
  store i32 %882, i32* %31, align 4
  br label %977

883:                                              ; preds = %839, %778
  br label %884

884:                                              ; preds = %883, %775
  %885 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %886 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %885, i32 0, i32 5
  %887 = load i32, i32* %886, align 4
  %888 = icmp ugt i32 8, %887
  br i1 %888, label %889, label %893

889:                                              ; preds = %884
  %890 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %891 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %890, i32 0, i32 5
  %892 = load i32, i32* %891, align 4
  br label %894

893:                                              ; preds = %884
  br label %894

894:                                              ; preds = %893, %889
  %895 = phi i32 [ %892, %889 ], [ 8, %893 ]
  %896 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %897 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %896, i32 0, i32 1
  %898 = load i8*, i8** %897, align 8
  %899 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %900 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %899, i32 0, i32 2
  %901 = load i32, i32* %900, align 4
  %902 = zext i32 %901 to i64
  %903 = getelementptr inbounds i8, i8* %898, i64 %902
  %904 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  %905 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %904, i32 0, i32 0
  %906 = load i32, i32* %905, align 4
  %907 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %908 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %907, i32 0, i32 2
  %909 = load i32, i32* %908, align 4
  %910 = sub i32 %906, %909
  %911 = sub i32 %910, 1
  call void @init_hash_env(%struct._hash_env_t* %35, i32 %895, i8* %903, i32 %911)
  call void @bld_table(%struct._hash_env_t* %35)
  %912 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %913 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %912, i32 0, i32 2
  %914 = load i8*, i8** %913, align 8
  %915 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %916 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %915, i32 0, i32 3
  %917 = load i32, i32* %916, align 4
  %918 = zext i32 %917 to i64
  %919 = getelementptr inbounds i8, i8* %914, i64 %918
  %920 = load i32, i32* %34, align 4
  %921 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %922 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %921, i32 0, i32 2
  %923 = load i32, i32* %922, align 4
  %924 = add i32 %923, 1
  %925 = load %struct._exon_t*, %struct._exon_t** %32, align 8
  %926 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %925, i32 0, i32 3
  %927 = load i32, i32* %926, align 4
  %928 = add i32 %927, 1
  %929 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  call void @exon_cores(%struct._hash_env_t* %35, i8* %919, i32 %920, i32 %924, i32 %928, i32 %929, %struct._collec_t* %7, %struct._collec_t* null, %struct._collec_t* %8)
  call void @free_hash_env(%struct._hash_env_t* %35)
  %930 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %931 = load i32, i32* %930, align 8
  %932 = icmp ugt i32 %931, 0
  br i1 %932, label %933, label %974

933:                                              ; preds = %894
  %934 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %935 = bitcast %union._collec_elt_t* %934 to %struct._exon_t***
  %936 = load %struct._exon_t**, %struct._exon_t*** %935, align 8
  %937 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %936, i64 0
  %938 = load %struct._exon_t*, %struct._exon_t** %937, align 8
  %939 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %940 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %939, i32 0, i32 1
  %941 = load i8*, i8** %940, align 8
  %942 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %943 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %942, i32 0, i32 2
  %944 = load i8*, i8** %943, align 8
  call void @grow_exon_left(%struct._exon_t* %938, i8* %941, i8* %944)
  %945 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %946 = bitcast %union._collec_elt_t* %945 to %struct._exon_t***
  %947 = load %struct._exon_t**, %struct._exon_t*** %946, align 8
  %948 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %949 = load i32, i32* %948, align 8
  %950 = sub i32 %949, 1
  %951 = zext i32 %950 to i64
  %952 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %947, i64 %951
  %953 = load %struct._exon_t*, %struct._exon_t** %952, align 8
  %954 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %955 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %954, i32 0, i32 1
  %956 = load i8*, i8** %955, align 8
  %957 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %958 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %957, i32 0, i32 2
  %959 = load i32, i32* %958, align 8
  %960 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %961 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %960, i32 0, i32 2
  %962 = load i8*, i8** %961, align 8
  %963 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %964 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %963, i32 0, i32 5
  %965 = load i32, i32* %964, align 4
  call void @grow_exon_right(%struct._exon_t* %953, i8* %956, i32 %959, i8* %962, i32 %965)
  %966 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %967 = load i32, i32* %31, align 4
  %968 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %969 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %968, i32 0, i32 5
  %970 = load i32, i32* %969, align 4
  call void @merge(%struct._collec_t* %966, %struct._collec_t* %8, i32 %967, i32 %970)
  %971 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  store i32 0, i32* %971, align 8
  %972 = load i32, i32* %31, align 4
  %973 = sub i32 %972, 1
  store i32 %973, i32* %31, align 4
  br label %974

974:                                              ; preds = %933, %894
  br label %975

975:                                              ; preds = %974, %766
  br label %976

976:                                              ; preds = %975, %738
  br label %977

977:                                              ; preds = %976, %842
  %978 = load i32, i32* %31, align 4
  %979 = add i32 %978, 1
  store i32 %979, i32* %31, align 4
  br label %732

980:                                              ; preds = %732
  br label %981

981:                                              ; preds = %980, %726
  %982 = load %struct._result_t*, %struct._result_t** %11, align 8
  %983 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %984 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %983, i32 0, i32 1
  %985 = load i8*, i8** %984, align 8
  %986 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %987 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %986, i32 0, i32 2
  %988 = load i8*, i8** %987, align 8
  call void @kill_polyA(%struct._result_t* %982, i8* %985, i8* %988)
  %989 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %990 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %991 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %990, i32 0, i32 5
  %992 = load i32, i32* %991, align 4
  call void @compact_exons(%struct._collec_t* %989, i32 %992)
  %993 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %994 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %993, i32 0, i32 1
  %995 = load i32, i32* %994, align 8
  %996 = icmp ugt i32 %995, 0
  br i1 %996, label %997, label %1061

997:                                              ; preds = %981
  store i32 0, i32* %37, align 4
  br label %998

998:                                              ; preds = %1026, %997
  %999 = load i32, i32* %37, align 4
  %1000 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1001 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1000, i32 0, i32 1
  %1002 = load i32, i32* %1001, align 8
  %1003 = icmp ult i32 %999, %1002
  br i1 %1003, label %1004, label %1031

1004:                                             ; preds = %998
  %1005 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1006 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1005, i32 0, i32 0
  %1007 = bitcast %union._collec_elt_t* %1006 to %struct._exon_t***
  %1008 = load %struct._exon_t**, %struct._exon_t*** %1007, align 8
  %1009 = load i32, i32* %37, align 4
  %1010 = zext i32 %1009 to i64
  %1011 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %1008, i64 %1010
  %1012 = load %struct._exon_t*, %struct._exon_t** %1011, align 8
  store %struct._exon_t* %1012, %struct._exon_t** %38, align 8
  %1013 = load %struct._exon_t*, %struct._exon_t** %38, align 8
  %1014 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %1013, i32 0, i32 3
  %1015 = load i32, i32* %1014, align 4
  %1016 = load %struct._exon_t*, %struct._exon_t** %38, align 8
  %1017 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %1016, i32 0, i32 1
  %1018 = load i32, i32* %1017, align 4
  %1019 = sub i32 %1015, %1018
  %1020 = add i32 %1019, 1
  %1021 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %1022 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1021, i32 0, i32 5
  %1023 = load i32, i32* %1022, align 4
  %1024 = icmp uge i32 %1020, %1023
  br i1 %1024, label %1025, label %1026

1025:                                             ; preds = %1004
  br label %1031

1026:                                             ; preds = %1004
  %1027 = load %struct._exon_t*, %struct._exon_t** %38, align 8
  %1028 = bitcast %struct._exon_t* %1027 to i8*
  call void @free(i8* %1028) #5
  %1029 = load i32, i32* %37, align 4
  %1030 = add i32 %1029, 1
  store i32 %1030, i32* %37, align 4
  br label %998

1031:                                             ; preds = %1025, %998
  %1032 = load i32, i32* %37, align 4
  %1033 = icmp ugt i32 %1032, 0
  br i1 %1033, label %1034, label %1060

1034:                                             ; preds = %1031
  %1035 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1036 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1035, i32 0, i32 0
  %1037 = bitcast %union._collec_elt_t* %1036 to i8***
  %1038 = load i8**, i8*** %1037, align 8
  %1039 = bitcast i8** %1038 to i8*
  %1040 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1041 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1040, i32 0, i32 0
  %1042 = bitcast %union._collec_elt_t* %1041 to i8***
  %1043 = load i8**, i8*** %1042, align 8
  %1044 = load i32, i32* %37, align 4
  %1045 = zext i32 %1044 to i64
  %1046 = getelementptr inbounds i8*, i8** %1043, i64 %1045
  %1047 = bitcast i8** %1046 to i8*
  %1048 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1049 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1048, i32 0, i32 1
  %1050 = load i32, i32* %1049, align 8
  %1051 = load i32, i32* %37, align 4
  %1052 = sub i32 %1050, %1051
  %1053 = zext i32 %1052 to i64
  %1054 = mul i64 %1053, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %1039, i8* align 8 %1047, i64 %1054, i1 false)
  %1055 = load i32, i32* %37, align 4
  %1056 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1057 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1056, i32 0, i32 1
  %1058 = load i32, i32* %1057, align 8
  %1059 = sub i32 %1058, %1055
  store i32 %1059, i32* %1057, align 8
  br label %1060

1060:                                             ; preds = %1034, %1031
  br label %1061

1061:                                             ; preds = %1060, %981
  %1062 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1063 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1062, i32 0, i32 1
  %1064 = load i32, i32* %1063, align 8
  %1065 = icmp ugt i32 %1064, 0
  br i1 %1065, label %1066, label %1106

1066:                                             ; preds = %1061
  %1067 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1068 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1067, i32 0, i32 1
  %1069 = load i32, i32* %1068, align 8
  %1070 = sub i32 %1069, 1
  store i32 %1070, i32* %39, align 4
  br label %1071

1071:                                             ; preds = %1096, %1066
  %1072 = load i32, i32* %39, align 4
  %1073 = icmp sge i32 %1072, 0
  br i1 %1073, label %1074, label %1105

1074:                                             ; preds = %1071
  %1075 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1076 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1075, i32 0, i32 0
  %1077 = bitcast %union._collec_elt_t* %1076 to %struct._exon_t***
  %1078 = load %struct._exon_t**, %struct._exon_t*** %1077, align 8
  %1079 = load i32, i32* %39, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %1078, i64 %1080
  %1082 = load %struct._exon_t*, %struct._exon_t** %1081, align 8
  store %struct._exon_t* %1082, %struct._exon_t** %40, align 8
  %1083 = load %struct._exon_t*, %struct._exon_t** %40, align 8
  %1084 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %1083, i32 0, i32 3
  %1085 = load i32, i32* %1084, align 4
  %1086 = load %struct._exon_t*, %struct._exon_t** %40, align 8
  %1087 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %1086, i32 0, i32 1
  %1088 = load i32, i32* %1087, align 4
  %1089 = sub i32 %1085, %1088
  %1090 = add i32 %1089, 1
  %1091 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %1092 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1091, i32 0, i32 5
  %1093 = load i32, i32* %1092, align 4
  %1094 = icmp uge i32 %1090, %1093
  br i1 %1094, label %1095, label %1096

1095:                                             ; preds = %1074
  br label %1105

1096:                                             ; preds = %1074
  %1097 = load %struct._exon_t*, %struct._exon_t** %40, align 8
  %1098 = bitcast %struct._exon_t* %1097 to i8*
  call void @free(i8* %1098) #5
  %1099 = load i32, i32* %39, align 4
  %1100 = sub nsw i32 %1099, 1
  store i32 %1100, i32* %39, align 4
  %1101 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1102 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %1101, i32 0, i32 1
  %1103 = load i32, i32* %1102, align 8
  %1104 = sub i32 %1103, 1
  store i32 %1104, i32* %1102, align 8
  br label %1071

1105:                                             ; preds = %1095, %1071
  br label %1106

1106:                                             ; preds = %1105, %1061
  %1107 = load %struct._result_t*, %struct._result_t** %11, align 8
  %1108 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %1109 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1108, i32 0, i32 1
  %1110 = load i8*, i8** %1109, align 8
  %1111 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %1112 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %1111, i32 0, i32 2
  %1113 = load i8*, i8** %1112, align 8
  call void @slide_intron(%struct._result_t* %1107, i8* %1110, i8* %1113)
  %1114 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %1115 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1114, i32 0, i32 1
  %1116 = load i8*, i8** %1115, align 8
  %1117 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %1118 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %1117, i32 0, i32 2
  %1119 = load i8*, i8** %1118, align 8
  %1120 = load %struct._sim4_stats*, %struct._sim4_stats** %13, align 8
  %1121 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %1120, i32 0, i32 0
  %1122 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %1123 = load %struct._result_t*, %struct._result_t** %11, align 8
  %1124 = getelementptr inbounds %struct._result_t, %struct._result_t* %1123, i32 0, i32 0
  %1125 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %1126 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %1125, i32 0, i32 2
  %1127 = load i32, i32* %1126, align 8
  %1128 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %1129 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %1128, i32 0, i32 5
  %1130 = load i32, i32* %1129, align 4
  %1131 = call i32 @pluri_align(i8* %1116, i8* %1119, i32* %1121, %struct._collec_t* %1122, %struct._edit_script_list** %1124, i32 %1127, i32 %1130)
  store i32 %1131, i32* %9, align 4
  %1132 = load i32, i32* %9, align 4
  %1133 = icmp ne i32 %1132, 0
  br i1 %1133, label %1137, label %1134

1134:                                             ; preds = %1106
  %1135 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %1136 = icmp ne i32 %1135, 0
  br i1 %1136, label %1143, label %1137

1137:                                             ; preds = %1134, %1106
  %1138 = load %struct._result_t*, %struct._result_t** %11, align 8
  %1139 = getelementptr inbounds %struct._result_t, %struct._result_t* %1138, i32 0, i32 0
  %1140 = load %struct._edit_script_list*, %struct._edit_script_list** %1139, align 8
  call void @free_align(%struct._edit_script_list* %1140)
  %1141 = load %struct._result_t*, %struct._result_t** %11, align 8
  %1142 = getelementptr inbounds %struct._result_t, %struct._result_t* %1141, i32 0, i32 0
  store %struct._edit_script_list* null, %struct._edit_script_list** %1142, align 8
  br label %1143

1143:                                             ; preds = %1137, %1134
  br label %1144

1144:                                             ; preds = %1143, %613, %286, %95
  %1145 = load i32, i32* %10, align 4
  %1146 = add i32 %1145, 1
  store i32 %1146, i32* %10, align 4
  br label %61

1147:                                             ; preds = %61
  %1148 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %7, i32 0, i32 0
  %1149 = bitcast %union._collec_elt_t* %1148 to i8***
  %1150 = load i8**, i8*** %1149, align 8
  %1151 = bitcast i8** %1150 to i8*
  call void @free(i8* %1151) #5
  %1152 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 0
  %1153 = bitcast %union._collec_elt_t* %1152 to i8***
  %1154 = load i8**, i8*** %1153, align 8
  %1155 = bitcast i8** %1154 to i8*
  call void @free(i8* %1155) #5
  br label %1156

1156:                                             ; preds = %1147, %50
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_col(%struct._collec_t* %0, i32 %1) #0 {
  %3 = alloca %struct._collec_t*, align 8
  %4 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %7 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  store i32 0, i32* %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call i8* @xmalloc(i64 %15)
  %17 = bitcast i8* %16 to i8**
  %18 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %18, i32 0, i32 0
  %20 = bitcast %union._collec_elt_t* %19 to i8***
  store i8** %17, i8*** %20, align 8
  br label %25

21:                                               ; preds = %2
  %22 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %23 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %22, i32 0, i32 0
  %24 = bitcast %union._collec_elt_t* %23 to i8***
  store i8** null, i8*** %24, align 8
  br label %25

25:                                               ; preds = %21, %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @exon_cores(%struct._hash_env_t* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct._collec_t* %6, %struct._collec_t* %7, %struct._collec_t* %8) #0 {
  %10 = alloca %struct._hash_env_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._collec_t*, align 8
  %17 = alloca %struct._collec_t*, align 8
  %18 = alloca %struct._collec_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._result_t*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct._exon_t*, align 8
  %29 = alloca %struct._exon_t*, align 8
  %30 = alloca %struct._exon_t*, align 8
  %31 = alloca %struct._exon_t*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct._exon_t*, align 8
  %37 = alloca %struct._exon_t*, align 8
  store %struct._hash_env_t* %0, %struct._hash_env_t** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct._collec_t* %6, %struct._collec_t** %16, align 8
  store %struct._collec_t* %7, %struct._collec_t** %17, align 8
  store %struct._collec_t* %8, %struct._collec_t** %18, align 8
  %38 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %39 = icmp ne %struct._collec_t* %38, null
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %21, align 4
  %41 = load %struct._hash_env_t*, %struct._hash_env_t** %10, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  call void @search(%struct._hash_env_t* %41, i8* %42, i32 %43, i32 %44, %struct._collec_t* %45)
  %46 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %47 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %46, i32 0, i32 0
  %48 = bitcast %union._collec_elt_t* %47 to %struct._exon_t***
  %49 = load %struct._exon_t**, %struct._exon_t*** %48, align 8
  %50 = bitcast %struct._exon_t** %49 to i8*
  %51 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  call void @qsort(i8* %50, i64 %54, i64 8, i32 (i8*, i8*)* @msp_rna_compare)
  %55 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  call void @trim_small_repeated_msps(%struct._collec_t* %55)
  %56 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %57 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %56, i32 0, i32 0
  %58 = bitcast %union._collec_elt_t* %57 to %struct._exon_t***
  %59 = load %struct._exon_t**, %struct._exon_t*** %58, align 8
  %60 = bitcast %struct._exon_t** %59 to i8*
  %61 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %62 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = zext i32 %63 to i64
  call void @qsort(i8* %60, i64 %64, i64 8, i32 (i8*, i8*)* @msp_compare)
  %65 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  call void @combine_msps(%struct._collec_t* %65)
  %66 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %67 = icmp eq %struct._collec_t* %66, null
  br i1 %67, label %68, label %468

68:                                               ; preds = %9
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %27, align 4
  %70 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %71 = icmp ne %struct._collec_t* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 590, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.exon_cores, i64 0, i64 0)) #9
  unreachable

74:                                               ; preds = %72
  store i32 0, i32* %19, align 4
  br label %75

75:                                               ; preds = %110, %74
  %76 = load i32, i32* %19, align 4
  %77 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %78 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %76, %79
  br i1 %80, label %81, label %113

81:                                               ; preds = %75
  %82 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %83 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %82, i32 0, i32 0
  %84 = bitcast %union._collec_elt_t* %83 to %struct._exon_t***
  %85 = load %struct._exon_t**, %struct._exon_t*** %84, align 8
  %86 = load i32, i32* %19, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %85, i64 %87
  %89 = load %struct._exon_t*, %struct._exon_t** %88, align 8
  store %struct._exon_t* %89, %struct._exon_t** %28, align 8
  %90 = load %struct._exon_t*, %struct._exon_t** %28, align 8
  %91 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %23, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %81
  %96 = load %struct._exon_t*, %struct._exon_t** %28, align 8
  %97 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %23, align 4
  br label %99

99:                                               ; preds = %95, %81
  %100 = load %struct._exon_t*, %struct._exon_t** %28, align 8
  %101 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %24, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load %struct._exon_t*, %struct._exon_t** %28, align 8
  %107 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %24, align 4
  br label %109

109:                                              ; preds = %105, %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %19, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %19, align 4
  br label %75

113:                                              ; preds = %75
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %23, align 4
  %116 = sub i32 %114, %115
  %117 = add i32 %116, 1
  store i32 %117, i32* %25, align 4
  %118 = load i32, i32* %25, align 4
  %119 = udiv i32 %118, 4
  store i32 %119, i32* %25, align 4
  %120 = load i32, i32* %25, align 4
  %121 = load i32, i32* %23, align 4
  %122 = add i32 %121, %120
  store i32 %122, i32* %23, align 4
  %123 = load i32, i32* %24, align 4
  %124 = load i32, i32* %25, align 4
  %125 = icmp ugt i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  %127 = load i32, i32* %25, align 4
  %128 = load i32, i32* %24, align 4
  %129 = sub i32 %128, %127
  store i32 %129, i32* %24, align 4
  br label %130

130:                                              ; preds = %126, %113
  store i32 0, i32* %19, align 4
  br label %131

131:                                              ; preds = %175, %130
  %132 = load i32, i32* %19, align 4
  %133 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %134 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp ult i32 %132, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %131
  %138 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %139 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %138, i32 0, i32 0
  %140 = bitcast %union._collec_elt_t* %139 to %struct._exon_t***
  %141 = load %struct._exon_t**, %struct._exon_t*** %140, align 8
  %142 = load i32, i32* %19, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %141, i64 %143
  %145 = load %struct._exon_t*, %struct._exon_t** %144, align 8
  store %struct._exon_t* %145, %struct._exon_t** %29, align 8
  %146 = load %struct._exon_t*, %struct._exon_t** %29, align 8
  %147 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %23, align 4
  %150 = icmp ult i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = load %struct._exon_t*, %struct._exon_t** %29, align 8
  %153 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %152, i32 0, i32 6
  %154 = zext i32 %151 to i64
  %155 = load i64, i64* %153, align 4
  %156 = and i64 %154, 1
  %157 = shl i64 %156, 1
  %158 = and i64 %155, -3
  %159 = or i64 %158, %157
  store i64 %159, i64* %153, align 4
  %160 = trunc i64 %156 to i32
  %161 = load %struct._exon_t*, %struct._exon_t** %29, align 8
  %162 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %24, align 4
  %165 = icmp ugt i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load %struct._exon_t*, %struct._exon_t** %29, align 8
  %168 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %167, i32 0, i32 6
  %169 = zext i32 %166 to i64
  %170 = load i64, i64* %168, align 4
  %171 = and i64 %169, 1
  %172 = and i64 %170, -2
  %173 = or i64 %172, %171
  store i64 %173, i64* %168, align 4
  %174 = trunc i64 %171 to i32
  br label %175

175:                                              ; preds = %137
  %176 = load i32, i32* %19, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %131

178:                                              ; preds = %131
  %179 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %180 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %181 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @link_msps(%struct._collec_t* %179, i32 0, i32 %182)
  store i32 %183, i32* %20, align 4
  %184 = load i32, i32* %20, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %178
  br label %533

187:                                              ; preds = %178
  %188 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %189 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %188, i32 0, i32 0
  %190 = bitcast %union._collec_elt_t* %189 to %struct._exon_t***
  %191 = load %struct._exon_t**, %struct._exon_t*** %190, align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %191, i64 %193
  %195 = load %struct._exon_t*, %struct._exon_t** %194, align 8
  %196 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %195, i32 0, i32 5
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %26, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %199 = icmp uge i32 %198, 50
  br i1 %199, label %200, label %205

200:                                              ; preds = %187
  %201 = load i32, i32* %26, align 4
  %202 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %203 = mul i32 %201, %202
  %204 = udiv i32 %203, 100
  store i32 %204, i32* %26, align 4
  br label %210

205:                                              ; preds = %187
  %206 = load i32, i32* %26, align 4
  %207 = udiv i32 %206, 4
  %208 = load i32, i32* %26, align 4
  %209 = sub i32 %208, %207
  store i32 %209, i32* %26, align 4
  br label %210

210:                                              ; preds = %205, %200
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %19, align 4
  br label %211

211:                                              ; preds = %429, %210
  %212 = load i32, i32* %19, align 4
  %213 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %214 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %432

217:                                              ; preds = %211
  %218 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %219 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %218, i32 0, i32 0
  %220 = bitcast %union._collec_elt_t* %219 to %struct._exon_t***
  %221 = load %struct._exon_t**, %struct._exon_t*** %220, align 8
  %222 = load i32, i32* %19, align 4
  %223 = sub i32 %222, 1
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %221, i64 %224
  %226 = load %struct._exon_t*, %struct._exon_t** %225, align 8
  store %struct._exon_t* %226, %struct._exon_t** %30, align 8
  %227 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %228 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %227, i32 0, i32 0
  %229 = bitcast %union._collec_elt_t* %228 to %struct._exon_t***
  %230 = load %struct._exon_t**, %struct._exon_t*** %229, align 8
  %231 = load i32, i32* %19, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %230, i64 %232
  %234 = load %struct._exon_t*, %struct._exon_t** %233, align 8
  store %struct._exon_t* %234, %struct._exon_t** %31, align 8
  %235 = load %struct._exon_t*, %struct._exon_t** %30, align 8
  %236 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %235, i32 0, i32 6
  %237 = load i64, i64* %236, align 4
  %238 = and i64 %237, 1
  %239 = trunc i64 %238 to i32
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %217
  %242 = load %struct._exon_t*, %struct._exon_t** %31, align 8
  %243 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %242, i32 0, i32 6
  %244 = load i64, i64* %243, align 4
  %245 = and i64 %244, 1
  %246 = trunc i64 %245 to i32
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %279

248:                                              ; preds = %241, %217
  %249 = load %struct._exon_t*, %struct._exon_t** %30, align 8
  %250 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 4
  %252 = lshr i64 %251, 1
  %253 = and i64 %252, 1
  %254 = trunc i64 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %264, label %256

256:                                              ; preds = %248
  %257 = load %struct._exon_t*, %struct._exon_t** %31, align 8
  %258 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %257, i32 0, i32 6
  %259 = load i64, i64* %258, align 4
  %260 = lshr i64 %259, 1
  %261 = and i64 %260, 1
  %262 = trunc i64 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %279, label %264

264:                                              ; preds = %256, %248
  %265 = load %struct._exon_t*, %struct._exon_t** %30, align 8
  %266 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %265, i32 0, i32 6
  %267 = load i64, i64* %266, align 4
  %268 = and i64 %267, 1
  %269 = trunc i64 %268 to i32
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %428

271:                                              ; preds = %264
  %272 = load %struct._exon_t*, %struct._exon_t** %31, align 8
  %273 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %272, i32 0, i32 6
  %274 = load i64, i64* %273, align 4
  %275 = lshr i64 %274, 1
  %276 = and i64 %275, 1
  %277 = trunc i64 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %428

279:                                              ; preds = %271, %256, %241
  store i32 1, i32* %27, align 4
  %280 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %281 = load i32, i32* %23, align 4
  %282 = load i32, i32* %19, align 4
  %283 = call i32 @link_msps(%struct._collec_t* %280, i32 %281, i32 %282)
  store i32 %283, i32* %32, align 4
  %284 = load i32, i32* %32, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %288

287:                                              ; preds = %279
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 642, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.exon_cores, i64 0, i64 0)) #9
  unreachable

288:                                              ; preds = %286
  %289 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %290 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %289, i32 0, i32 0
  %291 = bitcast %union._collec_elt_t* %290 to %struct._exon_t***
  %292 = load %struct._exon_t**, %struct._exon_t*** %291, align 8
  %293 = load i32, i32* %32, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %292, i64 %294
  %296 = load %struct._exon_t*, %struct._exon_t** %295, align 8
  %297 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %33, align 4
  %299 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %300 = load i32, i32* %19, align 4
  %301 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %302 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @link_msps(%struct._collec_t* %299, i32 %300, i32 %303)
  store i32 %304, i32* %20, align 4
  %305 = load i32, i32* %20, align 4
  %306 = icmp sge i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %288
  br label %309

308:                                              ; preds = %288
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @__PRETTY_FUNCTION__.exon_cores, i64 0, i64 0)) #9
  unreachable

309:                                              ; preds = %307
  %310 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %311 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %310, i32 0, i32 0
  %312 = bitcast %union._collec_elt_t* %311 to %struct._exon_t***
  %313 = load %struct._exon_t**, %struct._exon_t*** %312, align 8
  %314 = load i32, i32* %20, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %313, i64 %315
  %317 = load %struct._exon_t*, %struct._exon_t** %316, align 8
  %318 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %317, i32 0, i32 5
  %319 = load i32, i32* %318, align 4
  store i32 %319, i32* %34, align 4
  %320 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %321 = icmp uge i32 %320, 50
  br i1 %321, label %322, label %330

322:                                              ; preds = %309
  %323 = load i32, i32* %33, align 4
  %324 = load i32, i32* %26, align 4
  %325 = icmp uge i32 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %322
  %327 = load i32, i32* %34, align 4
  %328 = load i32, i32* %26, align 4
  %329 = icmp uge i32 %327, %328
  br i1 %329, label %341, label %330

330:                                              ; preds = %326, %322, %309
  %331 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %332 = icmp ult i32 %331, 50
  br i1 %332, label %333, label %427

333:                                              ; preds = %330
  %334 = load i32, i32* %33, align 4
  %335 = load i32, i32* %26, align 4
  %336 = icmp uge i32 %334, %335
  br i1 %336, label %341, label %337

337:                                              ; preds = %333
  %338 = load i32, i32* %34, align 4
  %339 = load i32, i32* %26, align 4
  %340 = icmp uge i32 %338, %339
  br i1 %340, label %341, label %427

341:                                              ; preds = %337, %333, %326
  %342 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %343 = call i8* @xcalloc(i64 1, i64 48)
  call void @add_col_elt(%struct._collec_t* %342, i8* %343)
  %344 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %345 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %344, i32 0, i32 0
  %346 = bitcast %union._collec_elt_t* %345 to %struct._result_t***
  %347 = load %struct._result_t**, %struct._result_t*** %346, align 8
  %348 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %349 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = sub i32 %350, 1
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds %struct._result_t*, %struct._result_t** %347, i64 %352
  %354 = load %struct._result_t*, %struct._result_t** %353, align 8
  store %struct._result_t* %354, %struct._result_t** %22, align 8
  %355 = load i32, i32* %24, align 4
  %356 = load %struct._result_t*, %struct._result_t** %22, align 8
  %357 = getelementptr inbounds %struct._result_t, %struct._result_t* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 8
  %358 = load %struct._exon_t*, %struct._exon_t** %31, align 8
  %359 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %24, align 4
  %362 = sub i32 %360, %361
  %363 = load %struct._result_t*, %struct._result_t** %22, align 8
  %364 = getelementptr inbounds %struct._result_t, %struct._result_t* %363, i32 0, i32 3
  store i32 %362, i32* %364, align 4
  %365 = load %struct._result_t*, %struct._result_t** %22, align 8
  %366 = getelementptr inbounds %struct._result_t, %struct._result_t* %365, i32 0, i32 1
  store %struct._collec_t* %366, %struct._collec_t** %18, align 8
  %367 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %368 = load i32, i32* %19, align 4
  %369 = load i32, i32* %23, align 4
  %370 = sub i32 %368, %369
  call void @init_col(%struct._collec_t* %367, i32 %370)
  %371 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %372 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %371, i32 0, i32 0
  %373 = bitcast %union._collec_elt_t* %372 to %struct._exon_t***
  %374 = load %struct._exon_t**, %struct._exon_t*** %373, align 8
  %375 = load i32, i32* %32, align 4
  %376 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  call void @msp2exons(%struct._exon_t** %374, i32 %375, %struct._collec_t* %376, i32 0)
  store i32 0, i32* %35, align 4
  br label %377

377:                                              ; preds = %412, %341
  %378 = load i32, i32* %35, align 4
  %379 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %380 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 8
  %382 = icmp ult i32 %378, %381
  br i1 %382, label %383, label %415

383:                                              ; preds = %377
  %384 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %385 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %384, i32 0, i32 0
  %386 = bitcast %union._collec_elt_t* %385 to %struct._exon_t***
  %387 = load %struct._exon_t**, %struct._exon_t*** %386, align 8
  %388 = load i32, i32* %35, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %387, i64 %389
  %391 = load %struct._exon_t*, %struct._exon_t** %390, align 8
  store %struct._exon_t* %391, %struct._exon_t** %36, align 8
  %392 = load i32, i32* %13, align 4
  %393 = load %struct._exon_t*, %struct._exon_t** %36, align 8
  %394 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = add i32 %395, %392
  store i32 %396, i32* %394, align 4
  %397 = load i32, i32* %13, align 4
  %398 = load %struct._exon_t*, %struct._exon_t** %36, align 8
  %399 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = add i32 %400, %397
  store i32 %401, i32* %399, align 4
  %402 = load i32, i32* %14, align 4
  %403 = load %struct._exon_t*, %struct._exon_t** %36, align 8
  %404 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %403, i32 0, i32 3
  %405 = load i32, i32* %404, align 4
  %406 = add i32 %405, %402
  store i32 %406, i32* %404, align 4
  %407 = load i32, i32* %14, align 4
  %408 = load %struct._exon_t*, %struct._exon_t** %36, align 8
  %409 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = add i32 %410, %407
  store i32 %411, i32* %409, align 4
  br label %412

412:                                              ; preds = %383
  %413 = load i32, i32* %35, align 4
  %414 = add i32 %413, 1
  store i32 %414, i32* %35, align 4
  br label %377

415:                                              ; preds = %377
  %416 = load i32, i32* %19, align 4
  store i32 %416, i32* %23, align 4
  %417 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %418 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %417, i32 0, i32 0
  %419 = bitcast %union._collec_elt_t* %418 to %struct._exon_t***
  %420 = load %struct._exon_t**, %struct._exon_t*** %419, align 8
  %421 = load i32, i32* %32, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %420, i64 %422
  %424 = load %struct._exon_t*, %struct._exon_t** %423, align 8
  %425 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %24, align 4
  store i32 0, i32* %27, align 4
  br label %427

427:                                              ; preds = %415, %337, %330
  br label %428

428:                                              ; preds = %427, %271, %264
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %19, align 4
  %431 = add i32 %430, 1
  store i32 %431, i32* %19, align 4
  br label %211

432:                                              ; preds = %211
  %433 = load i32, i32* %27, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %432
  %436 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %437 = load i32, i32* %23, align 4
  %438 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %439 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @link_msps(%struct._collec_t* %436, i32 %437, i32 %440)
  store i32 %441, i32* %20, align 4
  br label %442

442:                                              ; preds = %435, %432
  %443 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %444 = call i8* @xcalloc(i64 1, i64 48)
  call void @add_col_elt(%struct._collec_t* %443, i8* %444)
  %445 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %446 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %445, i32 0, i32 0
  %447 = bitcast %union._collec_elt_t* %446 to %struct._result_t***
  %448 = load %struct._result_t**, %struct._result_t*** %447, align 8
  %449 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %450 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %449, i32 0, i32 1
  %451 = load i32, i32* %450, align 8
  %452 = sub i32 %451, 1
  %453 = zext i32 %452 to i64
  %454 = getelementptr inbounds %struct._result_t*, %struct._result_t** %448, i64 %453
  %455 = load %struct._result_t*, %struct._result_t** %454, align 8
  store %struct._result_t* %455, %struct._result_t** %22, align 8
  %456 = load i32, i32* %24, align 4
  %457 = load %struct._result_t*, %struct._result_t** %22, align 8
  %458 = getelementptr inbounds %struct._result_t, %struct._result_t* %457, i32 0, i32 2
  store i32 %456, i32* %458, align 8
  %459 = load %struct._hash_env_t*, %struct._hash_env_t** %10, align 8
  %460 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* %24, align 4
  %463 = sub i32 %461, %462
  %464 = load %struct._result_t*, %struct._result_t** %22, align 8
  %465 = getelementptr inbounds %struct._result_t, %struct._result_t* %464, i32 0, i32 3
  store i32 %463, i32* %465, align 4
  %466 = load %struct._result_t*, %struct._result_t** %22, align 8
  %467 = getelementptr inbounds %struct._result_t, %struct._result_t* %466, i32 0, i32 1
  store %struct._collec_t* %467, %struct._collec_t** %18, align 8
  br label %474

468:                                              ; preds = %9
  %469 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %470 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %471 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = call i32 @link_msps(%struct._collec_t* %469, i32 0, i32 %472)
  store i32 %473, i32* %20, align 4
  br label %474

474:                                              ; preds = %468, %442
  %475 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %476 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %484

479:                                              ; preds = %474
  %480 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %481 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %482 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %481, i32 0, i32 1
  %483 = load i32, i32* %482, align 8
  call void @init_col(%struct._collec_t* %480, i32 %483)
  br label %484

484:                                              ; preds = %479, %474
  %485 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %486 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %485, i32 0, i32 0
  %487 = bitcast %union._collec_elt_t* %486 to %struct._exon_t***
  %488 = load %struct._exon_t**, %struct._exon_t*** %487, align 8
  %489 = load i32, i32* %20, align 4
  %490 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %491 = load i32, i32* %21, align 4
  call void @msp2exons(%struct._exon_t** %488, i32 %489, %struct._collec_t* %490, i32 %491)
  store i32 0, i32* %19, align 4
  br label %492

492:                                              ; preds = %527, %484
  %493 = load i32, i32* %19, align 4
  %494 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %495 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = icmp ult i32 %493, %496
  br i1 %497, label %498, label %530

498:                                              ; preds = %492
  %499 = load %struct._collec_t*, %struct._collec_t** %18, align 8
  %500 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %499, i32 0, i32 0
  %501 = bitcast %union._collec_elt_t* %500 to %struct._exon_t***
  %502 = load %struct._exon_t**, %struct._exon_t*** %501, align 8
  %503 = load i32, i32* %19, align 4
  %504 = zext i32 %503 to i64
  %505 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %502, i64 %504
  %506 = load %struct._exon_t*, %struct._exon_t** %505, align 8
  store %struct._exon_t* %506, %struct._exon_t** %37, align 8
  %507 = load i32, i32* %13, align 4
  %508 = load %struct._exon_t*, %struct._exon_t** %37, align 8
  %509 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 4
  %511 = add i32 %510, %507
  store i32 %511, i32* %509, align 4
  %512 = load i32, i32* %13, align 4
  %513 = load %struct._exon_t*, %struct._exon_t** %37, align 8
  %514 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %513, i32 0, i32 0
  %515 = load i32, i32* %514, align 4
  %516 = add i32 %515, %512
  store i32 %516, i32* %514, align 4
  %517 = load i32, i32* %14, align 4
  %518 = load %struct._exon_t*, %struct._exon_t** %37, align 8
  %519 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 4
  %521 = add i32 %520, %517
  store i32 %521, i32* %519, align 4
  %522 = load i32, i32* %14, align 4
  %523 = load %struct._exon_t*, %struct._exon_t** %37, align 8
  %524 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 4
  %526 = add i32 %525, %522
  store i32 %526, i32* %524, align 4
  br label %527

527:                                              ; preds = %498
  %528 = load i32, i32* %19, align 4
  %529 = add i32 %528, 1
  store i32 %529, i32* %19, align 4
  br label %492

530:                                              ; preds = %492
  %531 = load %struct._collec_t*, %struct._collec_t** %16, align 8
  %532 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %531, i32 0, i32 1
  store i32 0, i32* %532, align 8
  br label %533

533:                                              ; preds = %530, %186
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @kill_polyA(%struct._result_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct._result_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._collec_t*, align 8
  %9 = alloca %struct._sim4_stats, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._exon_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct._exon_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct._result_t* %0, %struct._result_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %24 = load %struct._result_t*, %struct._result_t** %4, align 8
  %25 = getelementptr inbounds %struct._result_t, %struct._result_t* %24, i32 0, i32 1
  store %struct._collec_t* %25, %struct._collec_t** %8, align 8
  %26 = bitcast %struct._sim4_stats* %9 to i8*
  %27 = bitcast %struct._sim4_stats* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %48, %3
  %29 = load i32, i32* %7, align 4
  %30 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %31 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %36 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %35, i32 0, i32 0
  %37 = bitcast %union._collec_elt_t* %36 to %struct._exon_t***
  %38 = load %struct._exon_t**, %struct._exon_t*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %38, i64 %40
  %42 = load %struct._exon_t*, %struct._exon_t** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @is_polyAT_exon_p(%struct._exon_t* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %34, %28
  %47 = phi i1 [ false, %28 ], [ %45, %34 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %28

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %69, %54
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %61 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %60, i32 0, i32 0
  %62 = bitcast %union._collec_elt_t* %61 to %struct._exon_t***
  %63 = load %struct._exon_t**, %struct._exon_t*** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %63, i64 %65
  %67 = load %struct._exon_t*, %struct._exon_t** %66, align 8
  %68 = bitcast %struct._exon_t* %67 to i8*
  call void @free(i8* %68) #5
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %55

72:                                               ; preds = %55
  %73 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %74 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %73, i32 0, i32 0
  %75 = bitcast %union._collec_elt_t* %74 to i8***
  %76 = load i8**, i8*** %75, align 8
  %77 = bitcast i8** %76 to i8*
  %78 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %79 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %78, i32 0, i32 0
  %80 = bitcast %union._collec_elt_t* %79 to i8***
  %81 = load i8**, i8*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = bitcast i8** %84 to i8*
  %86 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %87 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sub i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %85, i64 %92, i1 false)
  %93 = load i32, i32* %7, align 4
  %94 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %95 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %72, %51
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %124, %98
  %100 = load i32, i32* %7, align 4
  %101 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %102 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %107 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %106, i32 0, i32 0
  %108 = bitcast %union._collec_elt_t* %107 to %struct._exon_t***
  %109 = load %struct._exon_t**, %struct._exon_t*** %108, align 8
  %110 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %111 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sub i32 %112, %113
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %109, i64 %116
  %118 = load %struct._exon_t*, %struct._exon_t** %117, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @is_polyAT_exon_p(%struct._exon_t* %118, i8* %119)
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %105, %99
  %123 = phi i1 [ false, %99 ], [ %121, %105 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i32, i32* %7, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %99

127:                                              ; preds = %122
  %128 = load i32, i32* %7, align 4
  %129 = icmp ugt i32 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  %131 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %132 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %7, align 4
  %135 = sub i32 %133, %134
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %152, %130
  %137 = load i32, i32* %11, align 4
  %138 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %139 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = icmp ult i32 %137, %140
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %144 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %143, i32 0, i32 0
  %145 = bitcast %union._collec_elt_t* %144 to %struct._exon_t***
  %146 = load %struct._exon_t**, %struct._exon_t*** %145, align 8
  %147 = load i32, i32* %11, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %146, i64 %148
  %150 = load %struct._exon_t*, %struct._exon_t** %149, align 8
  %151 = bitcast %struct._exon_t* %150 to i8*
  call void @free(i8* %151) #5
  br label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %11, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %136

155:                                              ; preds = %136
  %156 = load i32, i32* %7, align 4
  %157 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %158 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = sub i32 %159, %156
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %155, %127
  %162 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %163 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ugt i32 %164, 0
  br i1 %165, label %166, label %291

166:                                              ; preds = %161
  %167 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %168 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %167, i32 0, i32 0
  %169 = bitcast %union._collec_elt_t* %168 to %struct._exon_t***
  %170 = load %struct._exon_t**, %struct._exon_t*** %169, align 8
  %171 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %172 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = sub i32 %173, 1
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %170, i64 %175
  %177 = load %struct._exon_t*, %struct._exon_t** %176, align 8
  store %struct._exon_t* %177, %struct._exon_t** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %178 = load i8*, i8** %6, align 8
  %179 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %180 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %178, i64 %182
  store i8* %183, i8** %17, align 8
  %184 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  store i32 0, i32* %184, align 4
  br label %185

185:                                              ; preds = %225, %166
  %186 = load i8*, i8** %17, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %192, %193
  %195 = icmp slt i32 %194, 10
  br label %196

196:                                              ; preds = %190, %185
  %197 = phi i1 [ false, %185 ], [ %195, %190 ]
  br i1 %197, label %198, label %228

198:                                              ; preds = %196
  %199 = load i32, i32* %15, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %15, align 4
  %201 = load i8*, i8** %17, align 8
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  switch i32 %203, label %222 [
    i32 65, label %204
    i32 78, label %221
  ]

204:                                              ; preds = %198
  %205 = load i32, i32* %14, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %209, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load i32, i32* %16, align 4
  %215 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  store i32 %214, i32* %215, align 4
  %216 = load i32, i32* %14, align 4
  %217 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  store i32 %216, i32* %217, align 4
  %218 = load i32, i32* %15, align 4
  %219 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %213, %204
  br label %225

221:                                              ; preds = %198
  br label %225

222:                                              ; preds = %198
  %223 = load i32, i32* %16, align 4
  %224 = sub nsw i32 %223, 2
  store i32 %224, i32* %16, align 4
  br label %225

225:                                              ; preds = %222, %221, %220
  %226 = load i8*, i8** %17, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  store i8* %227, i8** %17, align 8
  br label %185

228:                                              ; preds = %196
  %229 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %290

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp uge i32 %234, 8
  br i1 %235, label %236, label %290

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = mul i32 %238, 10
  %240 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = udiv i32 %239, %241
  %243 = icmp uge i32 %242, 8
  br i1 %243, label %244, label %290

244:                                              ; preds = %236
  %245 = load i8*, i8** %5, align 8
  %246 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %247 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %245, i64 %249
  store i8* %250, i8** %17, align 8
  store i32 0, i32* %15, align 4
  br label %251

251:                                              ; preds = %273, %244
  %252 = load i8*, i8** %17, align 8
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load i32, i32* %15, align 4
  %258 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp ult i32 %257, %259
  br label %261

261:                                              ; preds = %256, %251
  %262 = phi i1 [ false, %251 ], [ %260, %256 ]
  br i1 %262, label %263, label %276

263:                                              ; preds = %261
  %264 = load i32, i32* %15, align 4
  %265 = add i32 %264, 1
  store i32 %265, i32* %15, align 4
  %266 = load i8*, i8** %17, align 8
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp eq i32 %268, 65
  br i1 %269, label %270, label %273

270:                                              ; preds = %263
  %271 = load i32, i32* %13, align 4
  %272 = add i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %273

273:                                              ; preds = %270, %263
  %274 = load i8*, i8** %17, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 1
  store i8* %275, i8** %17, align 8
  br label %251

276:                                              ; preds = %261
  %277 = load i32, i32* %15, align 4
  %278 = icmp ugt i32 %277, 0
  br i1 %278, label %279, label %289

279:                                              ; preds = %276
  %280 = load i32, i32* %13, align 4
  %281 = mul i32 %280, 10
  %282 = load i32, i32* %15, align 4
  %283 = udiv i32 %281, %282
  %284 = icmp ult i32 %283, 8
  br i1 %284, label %285, label %289

285:                                              ; preds = %279
  %286 = load %struct._result_t*, %struct._result_t** %4, align 8
  %287 = getelementptr inbounds %struct._result_t, %struct._result_t* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %287, i32 0, i32 1
  store i32 1, i32* %288, align 4
  br label %289

289:                                              ; preds = %285, %279, %276
  br label %290

290:                                              ; preds = %289, %236, %232, %228
  br label %291

291:                                              ; preds = %290, %161
  %292 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %293 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 8
  %295 = icmp ugt i32 %294, 0
  br i1 %295, label %296, label %416

296:                                              ; preds = %291
  %297 = load %struct._collec_t*, %struct._collec_t** %8, align 8
  %298 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %297, i32 0, i32 0
  %299 = bitcast %union._collec_elt_t* %298 to %struct._exon_t***
  %300 = load %struct._exon_t**, %struct._exon_t*** %299, align 8
  %301 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %300, i64 0
  %302 = load %struct._exon_t*, %struct._exon_t** %301, align 8
  store %struct._exon_t* %302, %struct._exon_t** %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %303 = load i8*, i8** %6, align 8
  %304 = load %struct._exon_t*, %struct._exon_t** %18, align 8
  %305 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds i8, i8* %303, i64 %307
  %309 = getelementptr inbounds i8, i8* %308, i64 -2
  store i8* %309, i8** %23, align 8
  %310 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  store i32 0, i32* %310, align 4
  br label %311

311:                                              ; preds = %350, %296
  %312 = load i8*, i8** %23, align 8
  %313 = load i8*, i8** %6, align 8
  %314 = icmp uge i8* %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %22, align 4
  %319 = sub nsw i32 %317, %318
  %320 = icmp slt i32 %319, 10
  br label %321

321:                                              ; preds = %315, %311
  %322 = phi i1 [ false, %311 ], [ %320, %315 ]
  br i1 %322, label %323, label %353

323:                                              ; preds = %321
  %324 = load i32, i32* %21, align 4
  %325 = add i32 %324, 1
  store i32 %325, i32* %21, align 4
  %326 = load i8*, i8** %23, align 8
  %327 = load i8, i8* %326, align 1
  %328 = zext i8 %327 to i32
  switch i32 %328, label %347 [
    i32 84, label %329
    i32 78, label %346
  ]

329:                                              ; preds = %323
  %330 = load i32, i32* %20, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %20, align 4
  %332 = load i32, i32* %22, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %22, align 4
  %334 = load i32, i32* %22, align 4
  %335 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = icmp sgt i32 %334, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %329
  %339 = load i32, i32* %22, align 4
  %340 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  store i32 %339, i32* %340, align 4
  %341 = load i32, i32* %20, align 4
  %342 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  store i32 %341, i32* %342, align 4
  %343 = load i32, i32* %21, align 4
  %344 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  store i32 %343, i32* %344, align 4
  br label %345

345:                                              ; preds = %338, %329
  br label %350

346:                                              ; preds = %323
  br label %350

347:                                              ; preds = %323
  %348 = load i32, i32* %22, align 4
  %349 = sub nsw i32 %348, 2
  store i32 %349, i32* %22, align 4
  br label %350

350:                                              ; preds = %347, %346, %345
  %351 = load i8*, i8** %23, align 8
  %352 = getelementptr inbounds i8, i8* %351, i64 -1
  store i8* %352, i8** %23, align 8
  br label %311

353:                                              ; preds = %321
  %354 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = icmp sgt i32 %355, 0
  br i1 %356, label %357, label %415

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  %359 = load i32, i32* %358, align 4
  %360 = icmp uge i32 %359, 8
  br i1 %360, label %361, label %415

361:                                              ; preds = %357
  %362 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = mul i32 %363, 10
  %365 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = udiv i32 %364, %366
  %368 = icmp uge i32 %367, 8
  br i1 %368, label %369, label %415

369:                                              ; preds = %361
  %370 = load i8*, i8** %5, align 8
  %371 = load %struct._exon_t*, %struct._exon_t** %18, align 8
  %372 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %370, i64 %374
  %376 = getelementptr inbounds i8, i8* %375, i64 -2
  store i8* %376, i8** %23, align 8
  store i32 0, i32* %21, align 4
  br label %377

377:                                              ; preds = %398, %369
  %378 = load i8*, i8** %23, align 8
  %379 = load i8*, i8** %5, align 8
  %380 = icmp uge i8* %378, %379
  br i1 %380, label %381, label %386

381:                                              ; preds = %377
  %382 = load i32, i32* %21, align 4
  %383 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %9, i32 0, i32 2
  %384 = load i32, i32* %383, align 4
  %385 = icmp ult i32 %382, %384
  br label %386

386:                                              ; preds = %381, %377
  %387 = phi i1 [ false, %377 ], [ %385, %381 ]
  br i1 %387, label %388, label %401

388:                                              ; preds = %386
  %389 = load i32, i32* %21, align 4
  %390 = add i32 %389, 1
  store i32 %390, i32* %21, align 4
  %391 = load i8*, i8** %23, align 8
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 84
  br i1 %394, label %395, label %398

395:                                              ; preds = %388
  %396 = load i32, i32* %19, align 4
  %397 = add i32 %396, 1
  store i32 %397, i32* %19, align 4
  br label %398

398:                                              ; preds = %395, %388
  %399 = load i8*, i8** %23, align 8
  %400 = getelementptr inbounds i8, i8* %399, i64 -1
  store i8* %400, i8** %23, align 8
  br label %377

401:                                              ; preds = %386
  %402 = load i32, i32* %21, align 4
  %403 = icmp ugt i32 %402, 0
  br i1 %403, label %404, label %414

404:                                              ; preds = %401
  %405 = load i32, i32* %19, align 4
  %406 = mul i32 %405, 10
  %407 = load i32, i32* %21, align 4
  %408 = udiv i32 %406, %407
  %409 = icmp ult i32 %408, 8
  br i1 %409, label %410, label %414

410:                                              ; preds = %404
  %411 = load %struct._result_t*, %struct._result_t** %4, align 8
  %412 = getelementptr inbounds %struct._result_t, %struct._result_t* %411, i32 0, i32 5
  %413 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %412, i32 0, i32 2
  store i32 1, i32* %413, align 4
  br label %414

414:                                              ; preds = %410, %404, %401
  br label %415

415:                                              ; preds = %414, %361, %357, %353
  br label %416

416:                                              ; preds = %415, %291
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_hash_env(%struct._hash_env_t* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct._hash_env_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._hash_env_t* %0, %struct._hash_env_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %11 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %14 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %17 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add i32 %18, %19
  %21 = sub i32 %20, 2
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %25 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = call i8* @xmalloc(i64 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %33 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %32, i32 0, i32 3
  store i32* %31, i32** %33, align 8
  %34 = call i8* @xcalloc(i64 524288, i64 8)
  %35 = bitcast i8* %34 to i8**
  %36 = load %struct._hash_env_t*, %struct._hash_env_t** %5, align 8
  %37 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %36, i32 0, i32 0
  store i8** %35, i8*** %37, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @bld_table(%struct._hash_env_t* %0) #0 {
  %2 = alloca %struct._hash_env_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._hash_env_t* %0, %struct._hash_env_t** %2, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %10 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %85, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %15 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %86

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %72, %45, %18
  store i32 0, i32* %3, align 4
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %51, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %23 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ult i32 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %29 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i1 [ false, %20 ], [ %31, %26 ]
  br i1 %33, label %34, label %54

34:                                               ; preds = %32
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %19

46:                                               ; preds = %34
  %47 = load i32, i32* %3, align 4
  %48 = shl i32 %47, 2
  %49 = load i32, i32* %7, align 4
  %50 = add i32 %48, %49
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %20

54:                                               ; preds = %32
  br label %55

55:                                               ; preds = %73, %54
  %56 = load i32, i32* %4, align 4
  %57 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %58 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ugt i32 %70, 3
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %19

73:                                               ; preds = %61
  %74 = load i32, i32* %3, align 4
  %75 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %76 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %74, %77
  %79 = shl i32 %78, 2
  %80 = load i32, i32* %8, align 4
  %81 = add i32 %79, %80
  store i32 %81, i32* %3, align 4
  %82 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %4, align 4
  call void @add_word(%struct._hash_env_t* %82, i32 %83, i32 %84)
  br label %55

85:                                               ; preds = %55
  br label %12

86:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_hash_env(%struct._hash_env_t* %0) #0 {
  %2 = alloca %struct._hash_env_t*, align 8
  %3 = alloca i32, align 4
  store %struct._hash_env_t* %0, %struct._hash_env_t** %2, align 8
  %4 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %5 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = bitcast i32* %6 to i8*
  call void @free(i8* %7) #5
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp ult i32 %9, 524288
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %13 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  call void @tdestroy(i8* %18, void (i8*)* @free)
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %8

22:                                               ; preds = %8
  %23 = load %struct._hash_env_t*, %struct._hash_env_t** %2, align 8
  %24 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %23, i32 0, i32 0
  %25 = load i8**, i8*** %24, align 8
  %26 = bitcast i8** %25 to i8*
  call void @free(i8* %26) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @swap_seqs(%struct._collec_t* %0) #0 {
  %2 = alloca %struct._collec_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ult i32 %7, %10
  br i1 %11, label %12, label %46

12:                                               ; preds = %6
  %13 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %14 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %13, i32 0, i32 0
  %15 = bitcast %union._collec_elt_t* %14 to %struct._exon_t***
  %16 = load %struct._exon_t**, %struct._exon_t*** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %16, i64 %18
  %20 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  store %struct._exon_t* %20, %struct._exon_t** %4, align 8
  %21 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %22 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %25 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %28 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %31 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %33 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %39 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %42 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %12
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %6

46:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @grow_exon_right(%struct._exon_t* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct._exon_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._exon_t* %0, %struct._exon_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %5
  %12 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %13 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %19 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %26 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %34 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %31, %39
  br label %41

41:                                               ; preds = %23, %17, %11
  %42 = phi i1 [ false, %17 ], [ false, %11 ], [ %40, %23 ]
  br i1 %42, label %43, label %52

43:                                               ; preds = %41
  %44 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %45 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %49 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %11

52:                                               ; preds = %41
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @merge(%struct._collec_t* %0, %struct._collec_t* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct._collec_t*, align 8
  %6 = alloca %struct._collec_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._exon_t*, align 8
  %12 = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %0, %struct._collec_t** %5, align 8
  store %struct._collec_t* %1, %struct._collec_t** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %15 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add i32 %13, %16
  store i32 %17, i32* %9, align 4
  %18 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %368

23:                                               ; preds = %4
  %24 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %25 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %28 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add i32 %26, %29
  %31 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %32 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %23
  %36 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %37 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %40 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %38, %41
  %43 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %44 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %46 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %45, i32 0, i32 0
  %47 = bitcast %union._collec_elt_t* %46 to i8***
  %48 = load i8**, i8*** %47, align 8
  %49 = bitcast i8** %48 to i8*
  %50 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %51 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = zext i32 %52 to i64
  %54 = mul i64 %53, 8
  %55 = call i8* @xrealloc(i8* %49, i64 %54)
  %56 = bitcast i8* %55 to i8**
  %57 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %58 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %57, i32 0, i32 0
  %59 = bitcast %union._collec_elt_t* %58 to i8***
  store i8** %56, i8*** %59, align 8
  br label %60

60:                                               ; preds = %35, %23
  %61 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %62 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %61, i32 0, i32 0
  %63 = bitcast %union._collec_elt_t* %62 to i8***
  %64 = load i8**, i8*** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = bitcast i8** %67 to i8*
  %69 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %70 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %69, i32 0, i32 0
  %71 = bitcast %union._collec_elt_t* %70 to i8***
  %72 = load i8**, i8*** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %72, i64 %74
  %76 = bitcast i8** %75 to i8*
  %77 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %78 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %76, i64 %83, i1 false)
  %84 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %85 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %84, i32 0, i32 0
  %86 = bitcast %union._collec_elt_t* %85 to i8***
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = bitcast i8** %90 to i8*
  %92 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %93 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %92, i32 0, i32 0
  %94 = bitcast %union._collec_elt_t* %93 to i8***
  %95 = load i8**, i8*** %94, align 8
  %96 = bitcast i8** %95 to i8*
  %97 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %98 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = zext i32 %99 to i64
  %101 = mul i64 %100, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %96, i64 %101, i1 false)
  %102 = load %struct._collec_t*, %struct._collec_t** %6, align 8
  %103 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %106 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %111 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp ult i32 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %60
  %115 = load i32, i32* %9, align 4
  %116 = add i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %114, %60
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %7, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %365, %123
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ult i32 %126, %127
  br i1 %128, label %129, label %368

129:                                              ; preds = %125
  %130 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %131 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %130, i32 0, i32 0
  %132 = bitcast %union._collec_elt_t* %131 to %struct._exon_t***
  %133 = load %struct._exon_t**, %struct._exon_t*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sub i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %133, i64 %136
  %138 = load %struct._exon_t*, %struct._exon_t** %137, align 8
  store %struct._exon_t* %138, %struct._exon_t** %11, align 8
  %139 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %140 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %139, i32 0, i32 0
  %141 = bitcast %union._collec_elt_t* %140 to %struct._exon_t***
  %142 = load %struct._exon_t**, %struct._exon_t*** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %142, i64 %144
  %146 = load %struct._exon_t*, %struct._exon_t** %145, align 8
  store %struct._exon_t* %146, %struct._exon_t** %12, align 8
  %147 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %148 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %151 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ule i32 %149, %152
  br i1 %153, label %154, label %189

154:                                              ; preds = %129
  %155 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %156 = bitcast %struct._exon_t* %155 to i8*
  call void @free(i8* %156) #5
  %157 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %158 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %157, i32 0, i32 0
  %159 = bitcast %union._collec_elt_t* %158 to i8***
  %160 = load i8**, i8*** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %160, i64 %162
  %164 = getelementptr inbounds i8*, i8** %163, i64 -1
  %165 = bitcast i8** %164 to i8*
  %166 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %167 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %166, i32 0, i32 0
  %168 = bitcast %union._collec_elt_t* %167 to i8***
  %169 = load i8**, i8*** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %169, i64 %171
  %173 = bitcast i8** %172 to i8*
  %174 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %175 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* %10, align 4
  %178 = sub i32 %176, %177
  %179 = zext i32 %178 to i64
  %180 = mul i64 %179, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %165, i8* align 8 %173, i64 %180, i1 false)
  %181 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %182 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sub i32 %183, 1
  store i32 %184, i32* %182, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sub i32 %185, 1
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %10, align 4
  %188 = sub i32 %187, 1
  store i32 %188, i32* %10, align 4
  br label %365

189:                                              ; preds = %129
  %190 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %191 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %194 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = icmp uge i32 %192, %195
  br i1 %196, label %197, label %232

197:                                              ; preds = %189
  %198 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %199 = bitcast %struct._exon_t* %198 to i8*
  call void @free(i8* %199) #5
  %200 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %201 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = sub i32 %202, 1
  store i32 %203, i32* %201, align 8
  %204 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %205 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %204, i32 0, i32 0
  %206 = bitcast %union._collec_elt_t* %205 to i8***
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = bitcast i8** %210 to i8*
  %212 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %213 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %212, i32 0, i32 0
  %214 = bitcast %union._collec_elt_t* %213 to i8***
  %215 = load i8**, i8*** %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = getelementptr inbounds i8*, i8** %218, i64 1
  %220 = bitcast i8** %219 to i8*
  %221 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %222 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sub i32 %223, %224
  %226 = zext i32 %225 to i64
  %227 = mul i64 %226, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %220, i64 %227, i1 false)
  %228 = load i32, i32* %9, align 4
  %229 = sub i32 %228, 1
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %10, align 4
  %231 = sub i32 %230, 1
  store i32 %231, i32* %10, align 4
  br label %365

232:                                              ; preds = %189
  %233 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %234 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %237 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, 1
  %240 = add i32 %239, 30
  %241 = icmp ult i32 %235, %240
  br i1 %241, label %242, label %364

242:                                              ; preds = %232
  %243 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %244 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %247 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = add i32 %248, 1
  %250 = load i32, i32* %8, align 4
  %251 = add i32 %249, %250
  %252 = icmp ule i32 %245, %251
  br i1 %252, label %253, label %364

253:                                              ; preds = %242
  %254 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %255 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %258 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ugt i32 %256, %259
  br i1 %260, label %261, label %265

261:                                              ; preds = %253
  %262 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %263 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  br label %269

265:                                              ; preds = %253
  %266 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %267 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  br label %269

269:                                              ; preds = %265, %261
  %270 = phi i32 [ %264, %261 ], [ %268, %265 ]
  %271 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %272 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %271, i32 0, i32 0
  store i32 %270, i32* %272, align 4
  %273 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %274 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %277 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = icmp ugt i32 %275, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %269
  %281 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %282 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  br label %288

284:                                              ; preds = %269
  %285 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %286 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  br label %288

288:                                              ; preds = %284, %280
  %289 = phi i32 [ %283, %280 ], [ %287, %284 ]
  %290 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %291 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %293 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %296 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp ult i32 %294, %297
  br i1 %298, label %299, label %303

299:                                              ; preds = %288
  %300 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %301 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  br label %307

303:                                              ; preds = %288
  %304 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %305 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 4
  br label %307

307:                                              ; preds = %303, %299
  %308 = phi i32 [ %302, %299 ], [ %306, %303 ]
  %309 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %310 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %309, i32 0, i32 2
  store i32 %308, i32* %310, align 4
  %311 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %312 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %315 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = icmp ult i32 %313, %316
  br i1 %317, label %318, label %322

318:                                              ; preds = %307
  %319 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %320 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  br label %326

322:                                              ; preds = %307
  %323 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %324 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %323, i32 0, i32 3
  %325 = load i32, i32* %324, align 4
  br label %326

326:                                              ; preds = %322, %318
  %327 = phi i32 [ %321, %318 ], [ %325, %322 ]
  %328 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %329 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %328, i32 0, i32 3
  store i32 %327, i32* %329, align 4
  %330 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %331 = bitcast %struct._exon_t* %330 to i8*
  call void @free(i8* %331) #5
  %332 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %333 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = sub i32 %334, 1
  store i32 %335, i32* %333, align 8
  %336 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %337 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %336, i32 0, i32 0
  %338 = bitcast %union._collec_elt_t* %337 to i8***
  %339 = load i8**, i8*** %338, align 8
  %340 = load i32, i32* %10, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds i8*, i8** %339, i64 %341
  %343 = bitcast i8** %342 to i8*
  %344 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %345 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %344, i32 0, i32 0
  %346 = bitcast %union._collec_elt_t* %345 to i8***
  %347 = load i8**, i8*** %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i8*, i8** %347, i64 %349
  %351 = getelementptr inbounds i8*, i8** %350, i64 1
  %352 = bitcast i8** %351 to i8*
  %353 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %354 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %10, align 4
  %357 = sub i32 %355, %356
  %358 = zext i32 %357 to i64
  %359 = mul i64 %358, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %343, i8* align 8 %352, i64 %359, i1 false)
  %360 = load i32, i32* %9, align 4
  %361 = sub i32 %360, 1
  store i32 %361, i32* %9, align 4
  %362 = load i32, i32* %10, align 4
  %363 = sub i32 %362, 1
  store i32 %363, i32* %10, align 4
  br label %364

364:                                              ; preds = %326, %242, %232
  br label %365

365:                                              ; preds = %364, %197, %154
  %366 = load i32, i32* %10, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %10, align 4
  br label %125

368:                                              ; preds = %125, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_polyAT_exon_p(%struct._exon_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._exon_t* %0, %struct._exon_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %14 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %17 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  %20 = add i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %22 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %54, %2
  %26 = load i32, i32* %11, align 4
  %27 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %28 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %11, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  switch i32 %37, label %50 [
    i32 65, label %38
    i32 67, label %41
    i32 71, label %44
    i32 84, label %47
  ]

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %53

44:                                               ; preds = %31
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %53

47:                                               ; preds = %31
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %53

50:                                               ; preds = %31
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %47, %44, %41, %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = sub i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ult i32 %61, 30
  br i1 %62, label %63, label %93

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = mul i32 %64, 10
  %66 = load i32, i32* %12, align 4
  %67 = udiv i32 %65, %66
  %68 = icmp uge i32 %67, 7
  br i1 %68, label %91, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add i32 %70, %71
  %73 = mul i32 %72, 10
  %74 = load i32, i32* %12, align 4
  %75 = udiv i32 %73, %74
  %76 = icmp uge i32 %75, 8
  br i1 %76, label %91, label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = mul i32 %78, 10
  %80 = load i32, i32* %12, align 4
  %81 = udiv i32 %79, %80
  %82 = icmp uge i32 %81, 7
  br i1 %82, label %91, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %84, %85
  %87 = mul i32 %86, 10
  %88 = load i32, i32* %12, align 4
  %89 = udiv i32 %87, %88
  %90 = icmp uge i32 %89, 8
  br i1 %90, label %91, label %92

91:                                               ; preds = %83, %77, %69, %63
  store i32 1, i32* %3, align 4
  br label %124

92:                                               ; preds = %83
  br label %123

93:                                               ; preds = %57
  %94 = load i32, i32* %6, align 4
  %95 = mul i32 %94, 10
  %96 = load i32, i32* %12, align 4
  %97 = udiv i32 %95, %96
  %98 = icmp uge i32 %97, 8
  br i1 %98, label %121, label %99

99:                                               ; preds = %93
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %8, align 4
  %102 = add i32 %100, %101
  %103 = mul i32 %102, 100
  %104 = load i32, i32* %12, align 4
  %105 = udiv i32 %103, %104
  %106 = icmp uge i32 %105, 95
  br i1 %106, label %121, label %107

107:                                              ; preds = %99
  %108 = load i32, i32* %9, align 4
  %109 = mul i32 %108, 10
  %110 = load i32, i32* %12, align 4
  %111 = udiv i32 %109, %110
  %112 = icmp uge i32 %111, 8
  br i1 %112, label %121, label %113

113:                                              ; preds = %107
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %7, align 4
  %116 = add i32 %114, %115
  %117 = mul i32 %116, 100
  %118 = load i32, i32* %12, align 4
  %119 = udiv i32 %117, %118
  %120 = icmp uge i32 %119, 95
  br i1 %120, label %121, label %122

121:                                              ; preds = %113, %107, %99, %93
  store i32 1, i32* %3, align 4
  br label %124

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %92
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %121, %91
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal i32 @extend_bw(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
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
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %13, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %25, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %26, align 4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %20, align 4
  br label %41

41:                                               ; preds = %66, %9
  %42 = load i32, i32* %21, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %20, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %21, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %20, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %54, %61
  br label %63

63:                                               ; preds = %47, %44, %41
  %64 = phi i1 [ false, %44 ], [ false, %41 ], [ %62, %47 ]
  br i1 %64, label %65, label %71

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %21, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %21, align 4
  %69 = load i32, i32* %20, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %20, align 4
  br label %41

71:                                               ; preds = %63
  %72 = load i32, i32* %21, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %20, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32*, i32** %17, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32*, i32** %18, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %10, align 4
  br label %586

86:                                               ; preds = %74
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %87, %88
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = call i8* @xmalloc(i64 %92)
  %94 = bitcast i8* %93 to i32*
  store i32* %94, i32** %29, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 4
  %101 = call i8* @xmalloc(i64 %100)
  %102 = bitcast i8* %101 to i32*
  store i32* %102, i32** %30, align 8
  store i32 0, i32* %24, align 4
  br label %103

103:                                              ; preds = %116, %86
  %104 = load i32, i32* %24, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %105, %106
  %108 = icmp sle i32 %104, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  %112 = load i32*, i32** %29, align 8
  %113 = load i32, i32* %24, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %24, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %24, align 4
  br label %103

119:                                              ; preds = %103
  %120 = load i32, i32* %21, align 4
  %121 = load i32*, i32** %29, align 8
  %122 = load i32, i32* %26, align 4
  %123 = load i32, i32* %25, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  store i32 %120, i32* %126, align 4
  %127 = load i32, i32* %26, align 4
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* %27, align 4
  %131 = load i32, i32* %26, align 4
  %132 = load i32, i32* %25, align 4
  %133 = add nsw i32 %131, %132
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %28, align 4
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 4
  %139 = call i8* @xmalloc(i64 %138)
  %140 = bitcast i8* %139 to i32*
  store i32* %140, i32** %31, align 8
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = mul i64 %143, 4
  %145 = call i8* @xmalloc(i64 %144)
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %32, align 8
  store i32 1, i32* %23, align 4
  br label %147

147:                                              ; preds = %158, %119
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp sle i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  %154 = load i32*, i32** %31, align 8
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 %153, i32* %157, align 4
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %23, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %23, align 4
  br label %147

161:                                              ; preds = %147
  %162 = load i32*, i32** %29, align 8
  %163 = load i32, i32* %26, align 4
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %31, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* %25, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32*, i32** %32, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %173, i32* %175, align 4
  store i32 0, i32* %23, align 4
  br label %176

176:                                              ; preds = %524, %161
  %177 = load i32, i32* %23, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %23, align 4
  %179 = load i32, i32* %22, align 4
  %180 = icmp sle i32 %178, %179
  br i1 %180, label %181, label %216

181:                                              ; preds = %176
  %182 = load i32, i32* %23, align 4
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %13, align 4
  %185 = load i32*, i32** %31, align 8
  %186 = load i32, i32* %23, align 4
  %187 = sub nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %184, %190
  %192 = load i32, i32* %19, align 4
  %193 = call i32 @good_ratio(i32 %191, i32 %192)
  %194 = icmp sle i32 %183, %193
  br i1 %194, label %214, label %195

195:                                              ; preds = %181
  %196 = load i32, i32* %23, align 4
  %197 = icmp sge i32 %196, 2
  br i1 %197, label %198, label %212

198:                                              ; preds = %195
  %199 = load i32, i32* %23, align 4
  %200 = sub nsw i32 %199, 2
  %201 = load i32, i32* %13, align 4
  %202 = load i32*, i32** %31, align 8
  %203 = load i32, i32* %23, align 4
  %204 = sub nsw i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %201, %207
  %209 = load i32, i32* %19, align 4
  %210 = call i32 @good_ratio(i32 %208, i32 %209)
  %211 = icmp sle i32 %200, %210
  br label %212

212:                                              ; preds = %198, %195
  %213 = phi i1 [ false, %195 ], [ %211, %198 ]
  br label %214

214:                                              ; preds = %212, %181
  %215 = phi i1 [ true, %181 ], [ %213, %212 ]
  br label %216

216:                                              ; preds = %214, %176
  %217 = phi i1 [ false, %176 ], [ %215, %214 ]
  br i1 %217, label %218, label %529

218:                                              ; preds = %216
  %219 = load i32, i32* %27, align 4
  store i32 %219, i32* %24, align 4
  br label %220

220:                                              ; preds = %447, %218
  %221 = load i32, i32* %24, align 4
  %222 = load i32, i32* %28, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %450

224:                                              ; preds = %220
  %225 = load i32, i32* %24, align 4
  %226 = load i32, i32* %23, align 4
  %227 = sub nsw i32 0, %226
  %228 = load i32, i32* %25, align 4
  %229 = add nsw i32 %227, %228
  %230 = load i32, i32* %26, align 4
  %231 = add nsw i32 %229, %230
  %232 = icmp eq i32 %225, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %224
  %234 = load i32*, i32** %29, align 8
  %235 = load i32, i32* %24, align 4
  %236 = add nsw i32 %235, 1
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %21, align 4
  br label %340

240:                                              ; preds = %224
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* %23, align 4
  %243 = load i32, i32* %25, align 4
  %244 = add nsw i32 %242, %243
  %245 = load i32, i32* %26, align 4
  %246 = add nsw i32 %244, %245
  %247 = icmp eq i32 %241, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %240
  %249 = load i32*, i32** %29, align 8
  %250 = load i32, i32* %24, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %249, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = sub nsw i32 %254, 1
  store i32 %255, i32* %21, align 4
  br label %339

256:                                              ; preds = %240
  %257 = load i32*, i32** %29, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 1
  %263 = load i32*, i32** %29, align 8
  %264 = load i32, i32* %24, align 4
  %265 = add nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sle i32 %262, %268
  br i1 %269, label %270, label %292

270:                                              ; preds = %256
  %271 = load i32*, i32** %29, align 8
  %272 = load i32, i32* %24, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sub nsw i32 %275, 1
  %277 = load i32*, i32** %29, align 8
  %278 = load i32, i32* %24, align 4
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = sub nsw i32 %282, 1
  %284 = icmp sle i32 %276, %283
  br i1 %284, label %285, label %292

285:                                              ; preds = %270
  %286 = load i32*, i32** %29, align 8
  %287 = load i32, i32* %24, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %290, 1
  store i32 %291, i32* %21, align 4
  br label %338

292:                                              ; preds = %270, %256
  %293 = load i32*, i32** %29, align 8
  %294 = load i32, i32* %24, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %293, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = sub nsw i32 %298, 1
  %300 = load i32*, i32** %29, align 8
  %301 = load i32, i32* %24, align 4
  %302 = add nsw i32 %301, 1
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp sle i32 %299, %305
  br i1 %306, label %307, label %330

307:                                              ; preds = %292
  %308 = load i32*, i32** %29, align 8
  %309 = load i32, i32* %24, align 4
  %310 = sub nsw i32 %309, 1
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %308, i64 %311
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %313, 1
  %315 = load i32*, i32** %29, align 8
  %316 = load i32, i32* %24, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = sub nsw i32 %319, 1
  %321 = icmp sle i32 %314, %320
  br i1 %321, label %322, label %330

322:                                              ; preds = %307
  %323 = load i32*, i32** %29, align 8
  %324 = load i32, i32* %24, align 4
  %325 = sub nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %323, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = sub nsw i32 %328, 1
  store i32 %329, i32* %21, align 4
  br label %337

330:                                              ; preds = %307, %292
  %331 = load i32*, i32** %29, align 8
  %332 = load i32, i32* %24, align 4
  %333 = add nsw i32 %332, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %21, align 4
  br label %337

337:                                              ; preds = %330, %322
  br label %338

338:                                              ; preds = %337, %285
  br label %339

339:                                              ; preds = %338, %248
  br label %340

340:                                              ; preds = %339, %233
  %341 = load i32, i32* %21, align 4
  %342 = load i32, i32* %24, align 4
  %343 = add nsw i32 %341, %342
  %344 = load i32, i32* %26, align 4
  %345 = sub nsw i32 %343, %344
  store i32 %345, i32* %20, align 4
  br label %346

346:                                              ; preds = %370, %340
  %347 = load i32, i32* %21, align 4
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %368

349:                                              ; preds = %346
  %350 = load i32, i32* %20, align 4
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %368

352:                                              ; preds = %349
  %353 = load i8*, i8** %11, align 8
  %354 = load i32, i32* %21, align 4
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = load i8*, i8** %12, align 8
  %361 = load i32, i32* %20, align 4
  %362 = sub nsw i32 %361, 1
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %360, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = icmp eq i32 %359, %366
  br label %368

368:                                              ; preds = %352, %349, %346
  %369 = phi i1 [ false, %349 ], [ false, %346 ], [ %367, %352 ]
  br i1 %369, label %370, label %375

370:                                              ; preds = %368
  %371 = load i32, i32* %21, align 4
  %372 = add nsw i32 %371, -1
  store i32 %372, i32* %21, align 4
  %373 = load i32, i32* %20, align 4
  %374 = add nsw i32 %373, -1
  store i32 %374, i32* %20, align 4
  br label %346

375:                                              ; preds = %368
  %376 = load i32, i32* %21, align 4
  %377 = load i32*, i32** %30, align 8
  %378 = load i32, i32* %24, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %376, i32* %380, align 4
  %381 = load i32, i32* %21, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %404

383:                                              ; preds = %375
  %384 = load i32, i32* %20, align 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %404

386:                                              ; preds = %383
  %387 = load i32*, i32** %29, align 8
  %388 = bitcast i32* %387 to i8*
  call void @free(i8* %388) #5
  %389 = load i32*, i32** %30, align 8
  %390 = bitcast i32* %389 to i8*
  call void @free(i8* %390) #5
  %391 = load i32*, i32** %31, align 8
  %392 = bitcast i32* %391 to i8*
  call void @free(i8* %392) #5
  %393 = load i32*, i32** %32, align 8
  %394 = bitcast i32* %393 to i8*
  call void @free(i8* %394) #5
  %395 = load i32, i32* %21, align 4
  %396 = load i32, i32* %15, align 4
  %397 = add nsw i32 %395, %396
  %398 = load i32*, i32** %17, align 8
  store i32 %397, i32* %398, align 4
  %399 = load i32, i32* %20, align 4
  %400 = load i32, i32* %16, align 4
  %401 = add nsw i32 %399, %400
  %402 = load i32*, i32** %18, align 8
  store i32 %401, i32* %402, align 4
  %403 = load i32, i32* %23, align 4
  store i32 %403, i32* %10, align 4
  br label %586

404:                                              ; preds = %383, %375
  %405 = load i32, i32* %21, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %425

407:                                              ; preds = %404
  %408 = load i32*, i32** %29, align 8
  %409 = bitcast i32* %408 to i8*
  call void @free(i8* %409) #5
  %410 = load i32*, i32** %30, align 8
  %411 = bitcast i32* %410 to i8*
  call void @free(i8* %411) #5
  %412 = load i32*, i32** %31, align 8
  %413 = bitcast i32* %412 to i8*
  call void @free(i8* %413) #5
  %414 = load i32*, i32** %32, align 8
  %415 = bitcast i32* %414 to i8*
  call void @free(i8* %415) #5
  %416 = load i32, i32* %21, align 4
  %417 = load i32, i32* %15, align 4
  %418 = add nsw i32 %416, %417
  %419 = load i32*, i32** %17, align 8
  store i32 %418, i32* %419, align 4
  %420 = load i32, i32* %20, align 4
  %421 = load i32, i32* %16, align 4
  %422 = add nsw i32 %420, %421
  %423 = load i32*, i32** %18, align 8
  store i32 %422, i32* %423, align 4
  %424 = load i32, i32* %23, align 4
  store i32 %424, i32* %10, align 4
  br label %586

425:                                              ; preds = %404
  %426 = load i32, i32* %20, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %446

428:                                              ; preds = %425
  %429 = load i32*, i32** %29, align 8
  %430 = bitcast i32* %429 to i8*
  call void @free(i8* %430) #5
  %431 = load i32*, i32** %30, align 8
  %432 = bitcast i32* %431 to i8*
  call void @free(i8* %432) #5
  %433 = load i32*, i32** %31, align 8
  %434 = bitcast i32* %433 to i8*
  call void @free(i8* %434) #5
  %435 = load i32*, i32** %32, align 8
  %436 = bitcast i32* %435 to i8*
  call void @free(i8* %436) #5
  %437 = load i32, i32* %21, align 4
  %438 = load i32, i32* %15, align 4
  %439 = add nsw i32 %437, %438
  %440 = load i32*, i32** %17, align 8
  store i32 %439, i32* %440, align 4
  %441 = load i32, i32* %20, align 4
  %442 = load i32, i32* %16, align 4
  %443 = add nsw i32 %441, %442
  %444 = load i32*, i32** %18, align 8
  store i32 %443, i32* %444, align 4
  %445 = load i32, i32* %23, align 4
  store i32 %445, i32* %10, align 4
  br label %586

446:                                              ; preds = %425
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %24, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %24, align 4
  br label %220

450:                                              ; preds = %220
  %451 = load i32*, i32** %29, align 8
  %452 = load i32, i32* %26, align 4
  %453 = load i32, i32* %25, align 4
  %454 = add nsw i32 %452, %453
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %451, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %31, align 8
  %459 = load i32, i32* %23, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %457, i32* %461, align 4
  %462 = load i32, i32* %26, align 4
  %463 = load i32, i32* %25, align 4
  %464 = add nsw i32 %462, %463
  %465 = load i32*, i32** %32, align 8
  %466 = load i32, i32* %23, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  store i32 %464, i32* %468, align 4
  %469 = load i32, i32* %27, align 4
  store i32 %469, i32* %24, align 4
  br label %470

470:                                              ; preds = %502, %450
  %471 = load i32, i32* %24, align 4
  %472 = load i32, i32* %28, align 4
  %473 = icmp sle i32 %471, %472
  br i1 %473, label %474, label %505

474:                                              ; preds = %470
  %475 = load i32*, i32** %30, align 8
  %476 = load i32, i32* %24, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = load i32*, i32** %31, align 8
  %481 = load i32, i32* %23, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  %484 = load i32, i32* %483, align 4
  %485 = icmp slt i32 %479, %484
  br i1 %485, label %486, label %501

486:                                              ; preds = %474
  %487 = load i32*, i32** %30, align 8
  %488 = load i32, i32* %24, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32*, i32** %31, align 8
  %493 = load i32, i32* %23, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds i32, i32* %492, i64 %494
  store i32 %491, i32* %495, align 4
  %496 = load i32, i32* %24, align 4
  %497 = load i32*, i32** %32, align 8
  %498 = load i32, i32* %23, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  store i32 %496, i32* %500, align 4
  br label %501

501:                                              ; preds = %486, %474
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %24, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %24, align 4
  br label %470

505:                                              ; preds = %470
  %506 = load i32, i32* %27, align 4
  store i32 %506, i32* %24, align 4
  br label %507

507:                                              ; preds = %521, %505
  %508 = load i32, i32* %24, align 4
  %509 = load i32, i32* %28, align 4
  %510 = icmp sle i32 %508, %509
  br i1 %510, label %511, label %524

511:                                              ; preds = %507
  %512 = load i32*, i32** %30, align 8
  %513 = load i32, i32* %24, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  %516 = load i32, i32* %515, align 4
  %517 = load i32*, i32** %29, align 8
  %518 = load i32, i32* %24, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  store i32 %516, i32* %520, align 4
  br label %521

521:                                              ; preds = %511
  %522 = load i32, i32* %24, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %24, align 4
  br label %507

524:                                              ; preds = %507
  %525 = load i32, i32* %27, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %27, align 4
  %527 = load i32, i32* %28, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %28, align 4
  br label %176

529:                                              ; preds = %216
  br label %530

530:                                              ; preds = %549, %529
  %531 = load i32, i32* %23, align 4
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %547

533:                                              ; preds = %530
  %534 = load i32*, i32** %31, align 8
  %535 = load i32, i32* %23, align 4
  %536 = sub nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i32, i32* %534, i64 %537
  %539 = load i32, i32* %538, align 4
  %540 = load i32*, i32** %31, align 8
  %541 = load i32, i32* %23, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = sub nsw i32 %539, %544
  %546 = icmp slt i32 %545, 3
  br label %547

547:                                              ; preds = %533, %530
  %548 = phi i1 [ false, %530 ], [ %546, %533 ]
  br i1 %548, label %549, label %552

549:                                              ; preds = %547
  %550 = load i32, i32* %23, align 4
  %551 = add nsw i32 %550, -1
  store i32 %551, i32* %23, align 4
  br label %530

552:                                              ; preds = %547
  %553 = load i32*, i32** %31, align 8
  %554 = load i32, i32* %23, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i32, i32* %553, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* %15, align 4
  %559 = add nsw i32 %557, %558
  %560 = load i32*, i32** %17, align 8
  store i32 %559, i32* %560, align 4
  %561 = load i32*, i32** %31, align 8
  %562 = load i32, i32* %23, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds i32, i32* %561, i64 %563
  %565 = load i32, i32* %564, align 4
  %566 = load i32*, i32** %32, align 8
  %567 = load i32, i32* %23, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds i32, i32* %566, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %565, %570
  %572 = load i32, i32* %26, align 4
  %573 = sub nsw i32 %571, %572
  %574 = load i32, i32* %16, align 4
  %575 = add nsw i32 %573, %574
  %576 = load i32*, i32** %18, align 8
  store i32 %575, i32* %576, align 4
  %577 = load i32*, i32** %31, align 8
  %578 = bitcast i32* %577 to i8*
  call void @free(i8* %578) #5
  %579 = load i32*, i32** %32, align 8
  %580 = bitcast i32* %579 to i8*
  call void @free(i8* %580) #5
  %581 = load i32*, i32** %29, align 8
  %582 = bitcast i32* %581 to i8*
  call void @free(i8* %582) #5
  %583 = load i32*, i32** %30, align 8
  %584 = bitcast i32* %583 to i8*
  call void @free(i8* %584) #5
  %585 = load i32, i32* %23, align 4
  store i32 %585, i32* %10, align 4
  br label %586

586:                                              ; preds = %552, %428, %407, %386, %77
  %587 = load i32, i32* %10, align 4
  ret i32 %587
}

; Function Attrs: noinline nounwind uwtable
define internal void @grow_exon_left(%struct._exon_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._exon_t* %0, %struct._exon_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %11 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %9, i64 %13
  %15 = getelementptr inbounds i8, i8* %14, i64 -2
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %18 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %16, i64 %20
  %22 = getelementptr inbounds i8, i8* %21, i64 -2
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %41, %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp uge i8* %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp uge i8* %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br label %39

39:                                               ; preds = %31, %27, %23
  %40 = phi i1 [ false, %27 ], [ false, %23 ], [ %38, %31 ]
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 -1
  store i8* %43, i8** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 -1
  store i8* %45, i8** %8, align 8
  %46 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %47 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %51 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %23

54:                                               ; preds = %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @extend_fw(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %25, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %35

35:                                               ; preds = %60, %9
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = load i32, i32* %21, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = load i8*, i8** %12, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %49, %55
  br label %57

57:                                               ; preds = %43, %39, %35
  %58 = phi i1 [ false, %39 ], [ false, %35 ], [ %56, %43 ]
  br i1 %58, label %59, label %65

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %21, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %20, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %20, align 4
  br label %35

65:                                               ; preds = %57
  %66 = load i32, i32* %21, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* %21, align 4
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32*, i32** %17, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %16, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32*, i32** %18, align 8
  store i32 %76, i32* %77, align 4
  store i32 0, i32* %10, align 4
  br label %569

78:                                               ; preds = %65
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %15, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32*, i32** %17, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %18, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %10, align 4
  br label %569

91:                                               ; preds = %78
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = add nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = call i8* @xmalloc(i64 %97)
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %28, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %100, %101
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = call i8* @xmalloc(i64 %105)
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %29, align 8
  store i32 0, i32* %24, align 4
  br label %108

108:                                              ; preds = %119, %91
  %109 = load i32, i32* %24, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp sle i32 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %108
  %115 = load i32*, i32** %28, align 8
  %116 = load i32, i32* %24, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 -1, i32* %118, align 4
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %24, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %24, align 4
  br label %108

122:                                              ; preds = %108
  %123 = load i32, i32* %21, align 4
  %124 = load i32*, i32** %28, align 8
  %125 = load i32, i32* %25, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %127, align 4
  %128 = load i32, i32* %25, align 4
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %26, align 4
  %130 = load i32, i32* %25, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %27, align 4
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = call i8* @xmalloc(i64 %135)
  %137 = bitcast i8* %136 to i32*
  store i32* %137, i32** %30, align 8
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 4
  %142 = call i8* @xmalloc(i64 %141)
  %143 = bitcast i8* %142 to i32*
  store i32* %143, i32** %31, align 8
  store i32 1, i32* %23, align 4
  br label %144

144:                                              ; preds = %153, %122
  %145 = load i32, i32* %23, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp sle i32 %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load i32*, i32** %30, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 -1, i32* %152, align 4
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %23, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %23, align 4
  br label %144

156:                                              ; preds = %144
  %157 = load i32*, i32** %28, align 8
  %158 = load i32, i32* %25, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %30, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %25, align 4
  %165 = load i32*, i32** %31, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  store i32 %164, i32* %166, align 4
  store i32 0, i32* %23, align 4
  br label %167

167:                                              ; preds = %507, %156
  %168 = load i32, i32* %23, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %23, align 4
  %170 = load i32, i32* %22, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %203

172:                                              ; preds = %167
  %173 = load i32, i32* %23, align 4
  %174 = sub nsw i32 %173, 1
  %175 = load i32*, i32** %30, align 8
  %176 = load i32, i32* %23, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %19, align 4
  %182 = call i32 @good_ratio(i32 %180, i32 %181)
  %183 = icmp sle i32 %174, %182
  br i1 %183, label %201, label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %23, align 4
  %186 = icmp sge i32 %185, 2
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i32, i32* %23, align 4
  %189 = sub nsw i32 %188, 2
  %190 = load i32*, i32** %30, align 8
  %191 = load i32, i32* %23, align 4
  %192 = sub nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %19, align 4
  %197 = call i32 @good_ratio(i32 %195, i32 %196)
  %198 = icmp sle i32 %189, %197
  br label %199

199:                                              ; preds = %187, %184
  %200 = phi i1 [ false, %184 ], [ %198, %187 ]
  br label %201

201:                                              ; preds = %199, %172
  %202 = phi i1 [ true, %172 ], [ %200, %199 ]
  br label %203

203:                                              ; preds = %201, %167
  %204 = phi i1 [ false, %167 ], [ %202, %201 ]
  br i1 %204, label %205, label %512

205:                                              ; preds = %203
  %206 = load i32, i32* %26, align 4
  store i32 %206, i32* %24, align 4
  br label %207

207:                                              ; preds = %434, %205
  %208 = load i32, i32* %24, align 4
  %209 = load i32, i32* %27, align 4
  %210 = icmp sle i32 %208, %209
  br i1 %210, label %211, label %437

211:                                              ; preds = %207
  %212 = load i32, i32* %24, align 4
  %213 = load i32, i32* %23, align 4
  %214 = sub nsw i32 0, %213
  %215 = load i32, i32* %25, align 4
  %216 = add nsw i32 %214, %215
  %217 = icmp eq i32 %212, %216
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %219 = load i32*, i32** %28, align 8
  %220 = load i32, i32* %24, align 4
  %221 = add nsw i32 %220, 1
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %219, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %21, align 4
  br label %319

226:                                              ; preds = %211
  %227 = load i32, i32* %24, align 4
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %25, align 4
  %230 = add nsw i32 %228, %229
  %231 = icmp eq i32 %227, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %226
  %233 = load i32*, i32** %28, align 8
  %234 = load i32, i32* %24, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  %238 = load i32, i32* %237, align 4
  store i32 %238, i32* %21, align 4
  br label %318

239:                                              ; preds = %226
  %240 = load i32*, i32** %28, align 8
  %241 = load i32, i32* %24, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %28, align 8
  %246 = load i32, i32* %24, align 4
  %247 = add nsw i32 %246, 1
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = icmp sge i32 %244, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %239
  %253 = load i32*, i32** %28, align 8
  %254 = load i32, i32* %24, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, 1
  %259 = load i32*, i32** %28, align 8
  %260 = load i32, i32* %24, align 4
  %261 = sub nsw i32 %260, 1
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = icmp sge i32 %258, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %252
  %267 = load i32*, i32** %28, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %21, align 4
  br label %317

273:                                              ; preds = %252, %239
  %274 = load i32*, i32** %28, align 8
  %275 = load i32, i32* %24, align 4
  %276 = add nsw i32 %275, 1
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %274, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  %281 = load i32*, i32** %28, align 8
  %282 = load i32, i32* %24, align 4
  %283 = sub nsw i32 %282, 1
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %281, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = icmp sge i32 %280, %286
  br i1 %287, label %288, label %309

288:                                              ; preds = %273
  %289 = load i32*, i32** %28, align 8
  %290 = load i32, i32* %24, align 4
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32*, i32** %28, align 8
  %296 = load i32, i32* %24, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = icmp sge i32 %294, %299
  br i1 %300, label %301, label %309

301:                                              ; preds = %288
  %302 = load i32*, i32** %28, align 8
  %303 = load i32, i32* %24, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %302, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %21, align 4
  br label %316

309:                                              ; preds = %288, %273
  %310 = load i32*, i32** %28, align 8
  %311 = load i32, i32* %24, align 4
  %312 = sub nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %21, align 4
  br label %316

316:                                              ; preds = %309, %301
  br label %317

317:                                              ; preds = %316, %266
  br label %318

318:                                              ; preds = %317, %232
  br label %319

319:                                              ; preds = %318, %218
  %320 = load i32, i32* %21, align 4
  %321 = load i32, i32* %24, align 4
  %322 = add nsw i32 %320, %321
  %323 = load i32, i32* %25, align 4
  %324 = sub nsw i32 %322, %323
  store i32 %324, i32* %20, align 4
  %325 = load i32, i32* %21, align 4
  %326 = icmp sge i32 %325, 0
  br i1 %326, label %327, label %358

327:                                              ; preds = %319
  br label %328

328:                                              ; preds = %352, %327
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* %13, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %350

332:                                              ; preds = %328
  %333 = load i32, i32* %20, align 4
  %334 = load i32, i32* %14, align 4
  %335 = icmp slt i32 %333, %334
  br i1 %335, label %336, label %350

336:                                              ; preds = %332
  %337 = load i8*, i8** %11, align 8
  %338 = load i32, i32* %21, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i8, i8* %337, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = load i8*, i8** %12, align 8
  %344 = load i32, i32* %20, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8, i8* %343, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp eq i32 %342, %348
  br label %350

350:                                              ; preds = %336, %332, %328
  %351 = phi i1 [ false, %332 ], [ false, %328 ], [ %349, %336 ]
  br i1 %351, label %352, label %357

352:                                              ; preds = %350
  %353 = load i32, i32* %21, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %21, align 4
  %355 = load i32, i32* %20, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %20, align 4
  br label %328

357:                                              ; preds = %350
  br label %358

358:                                              ; preds = %357, %319
  %359 = load i32, i32* %21, align 4
  %360 = load i32*, i32** %29, align 8
  %361 = load i32, i32* %24, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  store i32 %359, i32* %363, align 4
  %364 = load i32, i32* %21, align 4
  %365 = load i32, i32* %13, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %389

367:                                              ; preds = %358
  %368 = load i32, i32* %20, align 4
  %369 = load i32, i32* %14, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %389

371:                                              ; preds = %367
  %372 = load i32*, i32** %28, align 8
  %373 = bitcast i32* %372 to i8*
  call void @free(i8* %373) #5
  %374 = load i32*, i32** %29, align 8
  %375 = bitcast i32* %374 to i8*
  call void @free(i8* %375) #5
  %376 = load i32*, i32** %30, align 8
  %377 = bitcast i32* %376 to i8*
  call void @free(i8* %377) #5
  %378 = load i32*, i32** %31, align 8
  %379 = bitcast i32* %378 to i8*
  call void @free(i8* %379) #5
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* %15, align 4
  %382 = add nsw i32 %380, %381
  %383 = load i32*, i32** %17, align 8
  store i32 %382, i32* %383, align 4
  %384 = load i32, i32* %20, align 4
  %385 = load i32, i32* %16, align 4
  %386 = add nsw i32 %384, %385
  %387 = load i32*, i32** %18, align 8
  store i32 %386, i32* %387, align 4
  %388 = load i32, i32* %23, align 4
  store i32 %388, i32* %10, align 4
  br label %569

389:                                              ; preds = %367, %358
  %390 = load i32, i32* %21, align 4
  %391 = load i32, i32* %13, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %411

393:                                              ; preds = %389
  %394 = load i32*, i32** %29, align 8
  %395 = bitcast i32* %394 to i8*
  call void @free(i8* %395) #5
  %396 = load i32*, i32** %28, align 8
  %397 = bitcast i32* %396 to i8*
  call void @free(i8* %397) #5
  %398 = load i32*, i32** %30, align 8
  %399 = bitcast i32* %398 to i8*
  call void @free(i8* %399) #5
  %400 = load i32*, i32** %31, align 8
  %401 = bitcast i32* %400 to i8*
  call void @free(i8* %401) #5
  %402 = load i32, i32* %21, align 4
  %403 = load i32, i32* %15, align 4
  %404 = add nsw i32 %402, %403
  %405 = load i32*, i32** %17, align 8
  store i32 %404, i32* %405, align 4
  %406 = load i32, i32* %20, align 4
  %407 = load i32, i32* %16, align 4
  %408 = add nsw i32 %406, %407
  %409 = load i32*, i32** %18, align 8
  store i32 %408, i32* %409, align 4
  %410 = load i32, i32* %23, align 4
  store i32 %410, i32* %10, align 4
  br label %569

411:                                              ; preds = %389
  %412 = load i32, i32* %20, align 4
  %413 = load i32, i32* %14, align 4
  %414 = icmp eq i32 %412, %413
  br i1 %414, label %415, label %433

415:                                              ; preds = %411
  %416 = load i32*, i32** %29, align 8
  %417 = bitcast i32* %416 to i8*
  call void @free(i8* %417) #5
  %418 = load i32*, i32** %28, align 8
  %419 = bitcast i32* %418 to i8*
  call void @free(i8* %419) #5
  %420 = load i32*, i32** %30, align 8
  %421 = bitcast i32* %420 to i8*
  call void @free(i8* %421) #5
  %422 = load i32*, i32** %31, align 8
  %423 = bitcast i32* %422 to i8*
  call void @free(i8* %423) #5
  %424 = load i32, i32* %21, align 4
  %425 = load i32, i32* %15, align 4
  %426 = add nsw i32 %424, %425
  %427 = load i32*, i32** %17, align 8
  store i32 %426, i32* %427, align 4
  %428 = load i32, i32* %20, align 4
  %429 = load i32, i32* %16, align 4
  %430 = add nsw i32 %428, %429
  %431 = load i32*, i32** %18, align 8
  store i32 %430, i32* %431, align 4
  %432 = load i32, i32* %23, align 4
  store i32 %432, i32* %10, align 4
  br label %569

433:                                              ; preds = %411
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %24, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %24, align 4
  br label %207

437:                                              ; preds = %207
  %438 = load i32*, i32** %28, align 8
  %439 = load i32, i32* %25, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %438, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = load i32*, i32** %30, align 8
  %444 = load i32, i32* %23, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %443, i64 %445
  store i32 %442, i32* %446, align 4
  %447 = load i32, i32* %25, align 4
  %448 = load i32*, i32** %31, align 8
  %449 = load i32, i32* %23, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i32, i32* %448, i64 %450
  store i32 %447, i32* %451, align 4
  %452 = load i32, i32* %26, align 4
  store i32 %452, i32* %24, align 4
  br label %453

453:                                              ; preds = %485, %437
  %454 = load i32, i32* %24, align 4
  %455 = load i32, i32* %27, align 4
  %456 = icmp sle i32 %454, %455
  br i1 %456, label %457, label %488

457:                                              ; preds = %453
  %458 = load i32*, i32** %29, align 8
  %459 = load i32, i32* %24, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** %30, align 8
  %464 = load i32, i32* %23, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = icmp sgt i32 %462, %467
  br i1 %468, label %469, label %484

469:                                              ; preds = %457
  %470 = load i32*, i32** %29, align 8
  %471 = load i32, i32* %24, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32*, i32** %30, align 8
  %476 = load i32, i32* %23, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %475, i64 %477
  store i32 %474, i32* %478, align 4
  %479 = load i32, i32* %24, align 4
  %480 = load i32*, i32** %31, align 8
  %481 = load i32, i32* %23, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i32, i32* %480, i64 %482
  store i32 %479, i32* %483, align 4
  br label %484

484:                                              ; preds = %469, %457
  br label %485

485:                                              ; preds = %484
  %486 = load i32, i32* %24, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %24, align 4
  br label %453

488:                                              ; preds = %453
  %489 = load i32, i32* %26, align 4
  store i32 %489, i32* %24, align 4
  br label %490

490:                                              ; preds = %504, %488
  %491 = load i32, i32* %24, align 4
  %492 = load i32, i32* %27, align 4
  %493 = icmp sle i32 %491, %492
  br i1 %493, label %494, label %507

494:                                              ; preds = %490
  %495 = load i32*, i32** %29, align 8
  %496 = load i32, i32* %24, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = load i32*, i32** %28, align 8
  %501 = load i32, i32* %24, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  store i32 %499, i32* %503, align 4
  br label %504

504:                                              ; preds = %494
  %505 = load i32, i32* %24, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %24, align 4
  br label %490

507:                                              ; preds = %490
  %508 = load i32, i32* %26, align 4
  %509 = add nsw i32 %508, -1
  store i32 %509, i32* %26, align 4
  %510 = load i32, i32* %27, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %27, align 4
  br label %167

512:                                              ; preds = %203
  br label %513

513:                                              ; preds = %532, %512
  %514 = load i32, i32* %23, align 4
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %530

516:                                              ; preds = %513
  %517 = load i32*, i32** %30, align 8
  %518 = load i32, i32* %23, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32, i32* %517, i64 %519
  %521 = load i32, i32* %520, align 4
  %522 = load i32*, i32** %30, align 8
  %523 = load i32, i32* %23, align 4
  %524 = sub nsw i32 %523, 1
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds i32, i32* %522, i64 %525
  %527 = load i32, i32* %526, align 4
  %528 = sub nsw i32 %521, %527
  %529 = icmp slt i32 %528, 3
  br label %530

530:                                              ; preds = %516, %513
  %531 = phi i1 [ false, %513 ], [ %529, %516 ]
  br i1 %531, label %532, label %535

532:                                              ; preds = %530
  %533 = load i32, i32* %23, align 4
  %534 = add nsw i32 %533, -1
  store i32 %534, i32* %23, align 4
  br label %513

535:                                              ; preds = %530
  %536 = load i32*, i32** %30, align 8
  %537 = load i32, i32* %23, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32, i32* %536, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %15, align 4
  %542 = add nsw i32 %540, %541
  %543 = load i32*, i32** %17, align 8
  store i32 %542, i32* %543, align 4
  %544 = load i32*, i32** %30, align 8
  %545 = load i32, i32* %23, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %544, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = load i32*, i32** %31, align 8
  %550 = load i32, i32* %23, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = add nsw i32 %548, %553
  %555 = load i32, i32* %25, align 4
  %556 = sub nsw i32 %554, %555
  %557 = load i32, i32* %16, align 4
  %558 = add nsw i32 %556, %557
  %559 = load i32*, i32** %18, align 8
  store i32 %558, i32* %559, align 4
  %560 = load i32*, i32** %30, align 8
  %561 = bitcast i32* %560 to i8*
  call void @free(i8* %561) #5
  %562 = load i32*, i32** %31, align 8
  %563 = bitcast i32* %562 to i8*
  call void @free(i8* %563) #5
  %564 = load i32*, i32** %28, align 8
  %565 = bitcast i32* %564 to i8*
  call void @free(i8* %565) #5
  %566 = load i32*, i32** %29, align 8
  %567 = bitcast i32* %566 to i8*
  call void @free(i8* %567) #5
  %568 = load i32, i32* %23, align 4
  store i32 %568, i32* %10, align 4
  br label %569

569:                                              ; preds = %535, %415, %393, %371, %82, %69
  %570 = load i32, i32* %10, align 4
  ret i32 %570
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @greedy(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct._collec_t* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._collec_t*, align 8
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
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct._collec_t* %7, %struct._collec_t** %17, align 8
  %47 = load i32, i32* %13, align 4
  %48 = icmp uge i32 %47, 1000000
  br i1 %48, label %49, label %50

49:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %1145

50:                                               ; preds = %8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %12, align 4
  %53 = sub i32 %51, %52
  store i32 %53, i32* %25, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %12, align 4
  %56 = uitofp i32 %55 to double
  %57 = fmul double 2.000000e-01, %56
  %58 = fadd double %57, 1.000000e+00
  %59 = fptoui double %58 to i32
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* %12, align 4
  %63 = uitofp i32 %62 to double
  %64 = fmul double 2.000000e-01, %63
  %65 = fadd double %64, 1.000000e+00
  %66 = fptoui double %65 to i32
  br label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %16, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %66, %61 ], [ %68, %67 ]
  store i32 %70, i32* %31, align 4
  store i32 %70, i32* %29, align 4
  %71 = load i32, i32* %25, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %134

73:                                               ; preds = %69
  %74 = load i32, i32* %12, align 4
  %75 = uitofp i32 %74 to double
  %76 = load i32, i32* %16, align 4
  %77 = uitofp i32 %76 to double
  %78 = load i32, i32* %13, align 4
  %79 = uitofp i32 %78 to double
  %80 = fmul double 1.200000e+00, %79
  %81 = fcmp ogt double %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %73
  %83 = load i32, i32* %13, align 4
  %84 = uitofp i32 %83 to double
  %85 = fmul double 1.200000e+00, %84
  br label %89

86:                                               ; preds = %73
  %87 = load i32, i32* %16, align 4
  %88 = uitofp i32 %87 to double
  br label %89

89:                                               ; preds = %86, %82
  %90 = phi double [ %85, %82 ], [ %88, %86 ]
  %91 = fcmp ole double %75, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %94 = load i32, i32* %15, align 4
  %95 = add i32 %94, 1
  %96 = load i32, i32* %14, align 4
  %97 = add i32 %96, 1
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* %13, align 4
  %100 = add i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add i32 %101, %102
  %104 = call %struct._exon_t* @new_exon(i32 %95, i32 %97, i32 %100, i32 %103)
  %105 = bitcast %struct._exon_t* %104 to i8*
  call void @add_col_elt(%struct._collec_t* %93, i8* %105)
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = uitofp i32 %109 to double
  %111 = fmul double 2.000000e-01, %110
  %112 = fadd double %111, 1.000000e+00
  %113 = fptoui double %112 to i32
  %114 = add i32 %108, %113
  store i32 %114, i32* %9, align 4
  br label %1145

115:                                              ; preds = %89
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* %12, align 4
  %118 = uitofp i32 %117 to double
  %119 = fmul double 2.000000e-01, %118
  %120 = fadd double %119, 1.000000e+00
  %121 = fptoui double %120 to i32
  %122 = icmp ult i32 %116, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load i32, i32* %12, align 4
  %125 = uitofp i32 %124 to double
  %126 = fmul double 2.000000e-01, %125
  %127 = fadd double %126, 1.000000e+00
  %128 = fptoui double %127 to i32
  br label %131

129:                                              ; preds = %115
  %130 = load i32, i32* %16, align 4
  br label %131

131:                                              ; preds = %129, %123
  %132 = phi i32 [ %128, %123 ], [ %130, %129 ]
  %133 = add i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %1145

134:                                              ; preds = %69
  %135 = load i32, i32* %31, align 4
  store i32 %135, i32* %27, align 4
  %136 = load i32, i32* %31, align 4
  %137 = load i32, i32* %25, align 4
  %138 = sub i32 %136, %137
  store i32 %138, i32* %26, align 4
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %24, align 4
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %18, align 4
  br label %141

141:                                              ; preds = %166, %134
  %142 = load i32, i32* %24, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %163

144:                                              ; preds = %141
  %145 = load i32, i32* %18, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %24, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = load i8*, i8** %11, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %155, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %154, %161
  br label %163

163:                                              ; preds = %147, %144, %141
  %164 = phi i1 [ false, %144 ], [ false, %141 ], [ %162, %147 ]
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %24, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %24, align 4
  %169 = load i32, i32* %18, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %18, align 4
  br label %141

171:                                              ; preds = %163
  %172 = load i32, i32* %24, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %192

174:                                              ; preds = %171
  %175 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %12, align 4
  %178 = sub i32 %176, %177
  %179 = load i32, i32* %13, align 4
  %180 = add i32 %178, %179
  %181 = add i32 %180, 1
  %182 = load i32, i32* %14, align 4
  %183 = add i32 %182, 1
  %184 = load i32, i32* %15, align 4
  %185 = load i32, i32* %13, align 4
  %186 = add i32 %184, %185
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %12, align 4
  %189 = add i32 %187, %188
  %190 = call %struct._exon_t* @new_exon(i32 %181, i32 %183, i32 %186, i32 %189)
  %191 = bitcast %struct._exon_t* %190 to i8*
  call void @add_col_elt(%struct._collec_t* %175, i8* %191)
  store i32 0, i32* %9, align 4
  br label %1145

192:                                              ; preds = %171
  %193 = load i32, i32* %31, align 4
  %194 = load i32, i32* %13, align 4
  %195 = add i32 %193, %194
  %196 = add i32 %195, 1
  %197 = zext i32 %196 to i64
  %198 = mul i64 %197, 4
  %199 = call i8* @xmalloc(i64 %198)
  %200 = bitcast i8* %199 to i32*
  store i32* %200, i32** %35, align 8
  %201 = load i32, i32* %31, align 4
  %202 = load i32, i32* %13, align 4
  %203 = add i32 %201, %202
  %204 = add i32 %203, 1
  %205 = zext i32 %204 to i64
  %206 = mul i64 %205, 4
  %207 = call i8* @xmalloc(i64 %206)
  %208 = bitcast i8* %207 to i32*
  store i32* %208, i32** %37, align 8
  store i32 0, i32* %32, align 4
  br label %209

209:                                              ; preds = %228, %192
  %210 = load i32, i32* %32, align 4
  %211 = load i32, i32* %31, align 4
  %212 = load i32, i32* %13, align 4
  %213 = add i32 %211, %212
  %214 = icmp ule i32 %210, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %209
  %216 = load i32, i32* %12, align 4
  %217 = add i32 %216, 1
  %218 = load i32*, i32** %35, align 8
  %219 = load i32, i32* %32, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %217, i32* %221, align 4
  %222 = load i32, i32* %12, align 4
  %223 = add i32 %222, 1
  %224 = load i32*, i32** %37, align 8
  %225 = load i32, i32* %32, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  store i32 %223, i32* %227, align 4
  br label %228

228:                                              ; preds = %215
  %229 = load i32, i32* %32, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %32, align 4
  br label %209

231:                                              ; preds = %209
  %232 = load i32, i32* %24, align 4
  %233 = load i32*, i32** %35, align 8
  %234 = load i32, i32* %26, align 4
  %235 = load i32, i32* %25, align 4
  %236 = add nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  store i32 %232, i32* %238, align 4
  %239 = load i32, i32* %26, align 4
  %240 = load i32, i32* %25, align 4
  %241 = add nsw i32 %239, %240
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %20, align 4
  %243 = load i32, i32* %26, align 4
  %244 = load i32, i32* %25, align 4
  %245 = add nsw i32 %243, %244
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %22, align 4
  store i32 0, i32* %24, align 4
  br label %247

247:                                              ; preds = %272, %231
  %248 = load i32, i32* %24, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ult i32 %248, %249
  br i1 %250, label %251, label %269

251:                                              ; preds = %247
  %252 = load i32, i32* %24, align 4
  %253 = load i32, i32* %12, align 4
  %254 = icmp ult i32 %252, %253
  br i1 %254, label %255, label %269

255:                                              ; preds = %251
  %256 = load i8*, i8** %10, align 8
  %257 = load i32, i32* %24, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = load i8, i8* %259, align 1
  %261 = zext i8 %260 to i32
  %262 = load i8*, i8** %11, align 8
  %263 = load i32, i32* %24, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %261, %267
  br label %269

269:                                              ; preds = %255, %251, %247
  %270 = phi i1 [ false, %251 ], [ false, %247 ], [ %268, %255 ]
  br i1 %270, label %271, label %275

271:                                              ; preds = %269
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %24, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %24, align 4
  br label %247

275:                                              ; preds = %269
  %276 = load i32, i32* %24, align 4
  %277 = load i32, i32* %12, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %297

279:                                              ; preds = %275
  %280 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %281 = load i32, i32* %15, align 4
  %282 = add i32 %281, 1
  %283 = load i32, i32* %14, align 4
  %284 = add i32 %283, 1
  %285 = load i32, i32* %15, align 4
  %286 = load i32, i32* %12, align 4
  %287 = add i32 %285, %286
  %288 = load i32, i32* %14, align 4
  %289 = load i32, i32* %12, align 4
  %290 = add i32 %288, %289
  %291 = call %struct._exon_t* @new_exon(i32 %282, i32 %284, i32 %287, i32 %290)
  %292 = bitcast %struct._exon_t* %291 to i8*
  call void @add_col_elt(%struct._collec_t* %280, i8* %292)
  %293 = load i32*, i32** %35, align 8
  %294 = bitcast i32* %293 to i8*
  call void @free(i8* %294) #5
  %295 = load i32*, i32** %37, align 8
  %296 = bitcast i32* %295 to i8*
  call void @free(i8* %296) #5
  store i32 0, i32* %9, align 4
  br label %1145

297:                                              ; preds = %275
  %298 = load i32, i32* %31, align 4
  %299 = load i32, i32* %13, align 4
  %300 = add i32 %298, %299
  %301 = add i32 %300, 1
  %302 = zext i32 %301 to i64
  %303 = mul i64 %302, 4
  %304 = call i8* @xmalloc(i64 %303)
  %305 = bitcast i8* %304 to i32*
  store i32* %305, i32** %36, align 8
  %306 = load i32, i32* %31, align 4
  %307 = load i32, i32* %13, align 4
  %308 = add i32 %306, %307
  %309 = add i32 %308, 1
  %310 = zext i32 %309 to i64
  %311 = mul i64 %310, 4
  %312 = call i8* @xmalloc(i64 %311)
  %313 = bitcast i8* %312 to i32*
  store i32* %313, i32** %38, align 8
  store i32 0, i32* %32, align 4
  br label %314

314:                                              ; preds = %329, %297
  %315 = load i32, i32* %32, align 4
  %316 = load i32, i32* %31, align 4
  %317 = load i32, i32* %13, align 4
  %318 = add i32 %316, %317
  %319 = icmp ule i32 %315, %318
  br i1 %319, label %320, label %332

320:                                              ; preds = %314
  %321 = load i32*, i32** %36, align 8
  %322 = load i32, i32* %32, align 4
  %323 = zext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 -1, i32* %324, align 4
  %325 = load i32*, i32** %38, align 8
  %326 = load i32, i32* %32, align 4
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %325, i64 %327
  store i32 -1, i32* %328, align 4
  br label %329

329:                                              ; preds = %320
  %330 = load i32, i32* %32, align 4
  %331 = add i32 %330, 1
  store i32 %331, i32* %32, align 4
  br label %314

332:                                              ; preds = %314
  %333 = load i32, i32* %24, align 4
  %334 = load i32*, i32** %36, align 8
  %335 = load i32, i32* %27, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %333, i32* %337, align 4
  %338 = load i32, i32* %27, align 4
  %339 = sub nsw i32 %338, 1
  store i32 %339, i32* %21, align 4
  %340 = load i32, i32* %27, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %23, align 4
  %342 = load i32, i32* %31, align 4
  %343 = add i32 %342, 1
  %344 = zext i32 %343 to i64
  %345 = mul i64 %344, 4
  %346 = call i8* @xmalloc(i64 %345)
  %347 = bitcast i8* %346 to i32*
  store i32* %347, i32** %41, align 8
  %348 = load i32, i32* %31, align 4
  %349 = add i32 %348, 1
  %350 = zext i32 %349 to i64
  %351 = mul i64 %350, 4
  %352 = call i8* @xmalloc(i64 %351)
  %353 = bitcast i8* %352 to i32*
  store i32* %353, i32** %39, align 8
  %354 = load i32, i32* %31, align 4
  %355 = add i32 %354, 1
  %356 = zext i32 %355 to i64
  %357 = mul i64 %356, 4
  %358 = call i8* @xmalloc(i64 %357)
  %359 = bitcast i8* %358 to i32*
  store i32* %359, i32** %42, align 8
  %360 = load i32, i32* %31, align 4
  %361 = add i32 %360, 1
  %362 = zext i32 %361 to i64
  %363 = mul i64 %362, 4
  %364 = call i8* @xmalloc(i64 %363)
  %365 = bitcast i8* %364 to i32*
  store i32* %365, i32** %40, align 8
  store i32 1, i32* %28, align 4
  br label %366

366:                                              ; preds = %381, %332
  %367 = load i32, i32* %28, align 4
  %368 = load i32, i32* %31, align 4
  %369 = icmp ule i32 %367, %368
  br i1 %369, label %370, label %384

370:                                              ; preds = %366
  %371 = load i32, i32* %12, align 4
  %372 = add i32 %371, 1
  %373 = load i32*, i32** %39, align 8
  %374 = load i32, i32* %28, align 4
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 %372, i32* %376, align 4
  %377 = load i32*, i32** %41, align 8
  %378 = load i32, i32* %28, align 4
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 -1, i32* %380, align 4
  br label %381

381:                                              ; preds = %370
  %382 = load i32, i32* %28, align 4
  %383 = add i32 %382, 1
  store i32 %383, i32* %28, align 4
  br label %366

384:                                              ; preds = %366
  %385 = load i32*, i32** %35, align 8
  %386 = load i32, i32* %26, align 4
  %387 = load i32, i32* %25, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32, i32* %385, i64 %389
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %39, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  store i32 %391, i32* %393, align 4
  %394 = load i32, i32* %26, align 4
  %395 = load i32, i32* %25, align 4
  %396 = add nsw i32 %394, %395
  %397 = load i32*, i32** %40, align 8
  %398 = getelementptr inbounds i32, i32* %397, i64 0
  store i32 %396, i32* %398, align 4
  %399 = load i32*, i32** %36, align 8
  %400 = load i32, i32* %27, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i32, i32* %399, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %41, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  store i32 %403, i32* %405, align 4
  %406 = load i32, i32* %27, align 4
  %407 = load i32*, i32** %42, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  store i32 %406, i32* %408, align 4
  store i32 -1, i32* %34, align 4
  store i32 -1, i32* %33, align 4
  store i32 1, i32* %28, align 4
  br label %409

409:                                              ; preds = %960, %384
  %410 = load i32, i32* %28, align 4
  %411 = load i32, i32* %29, align 4
  %412 = icmp ule i32 %410, %411
  br i1 %412, label %413, label %967

413:                                              ; preds = %409
  %414 = load i32, i32* %20, align 4
  store i32 %414, i32* %19, align 4
  br label %415

415:                                              ; preds = %573, %413
  %416 = load i32, i32* %19, align 4
  %417 = load i32, i32* %22, align 4
  %418 = icmp sle i32 %416, %417
  br i1 %418, label %419, label %576

419:                                              ; preds = %415
  %420 = load i32, i32* %19, align 4
  %421 = load i32, i32* %28, align 4
  %422 = sub nsw i32 0, %421
  %423 = load i32, i32* %25, align 4
  %424 = add nsw i32 %422, %423
  %425 = load i32, i32* %26, align 4
  %426 = add nsw i32 %424, %425
  %427 = icmp eq i32 %420, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %419
  %429 = load i32*, i32** %35, align 8
  %430 = load i32, i32* %19, align 4
  %431 = add nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %24, align 4
  br label %532

435:                                              ; preds = %419
  %436 = load i32, i32* %19, align 4
  %437 = load i32, i32* %28, align 4
  %438 = load i32, i32* %25, align 4
  %439 = add nsw i32 %437, %438
  %440 = load i32, i32* %26, align 4
  %441 = add nsw i32 %439, %440
  %442 = icmp eq i32 %436, %441
  br i1 %442, label %443, label %451

443:                                              ; preds = %435
  %444 = load i32*, i32** %35, align 8
  %445 = load i32, i32* %19, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %444, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = sub nsw i32 %449, 1
  store i32 %450, i32* %24, align 4
  br label %531

451:                                              ; preds = %435
  %452 = load i32*, i32** %35, align 8
  %453 = load i32, i32* %19, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i32, i32* %452, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = load i32*, i32** %35, align 8
  %458 = load i32, i32* %19, align 4
  %459 = add nsw i32 %458, 1
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %457, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp sle i32 %456, %462
  br i1 %463, label %464, label %485

464:                                              ; preds = %451
  %465 = load i32*, i32** %35, align 8
  %466 = load i32, i32* %19, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds i32, i32* %465, i64 %467
  %469 = load i32, i32* %468, align 4
  %470 = sub nsw i32 %469, 1
  %471 = load i32*, i32** %35, align 8
  %472 = load i32, i32* %19, align 4
  %473 = sub nsw i32 %472, 1
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32, i32* %471, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp sle i32 %470, %476
  br i1 %477, label %478, label %485

478:                                              ; preds = %464
  %479 = load i32*, i32** %35, align 8
  %480 = load i32, i32* %19, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32, i32* %479, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = sub nsw i32 %483, 1
  store i32 %484, i32* %24, align 4
  br label %530

485:                                              ; preds = %464, %451
  %486 = load i32*, i32** %35, align 8
  %487 = load i32, i32* %19, align 4
  %488 = sub nsw i32 %487, 1
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %486, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = load i32*, i32** %35, align 8
  %493 = load i32, i32* %19, align 4
  %494 = add nsw i32 %493, 1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i32, i32* %492, i64 %495
  %497 = load i32, i32* %496, align 4
  %498 = sub nsw i32 %497, 1
  %499 = icmp sle i32 %491, %498
  br i1 %499, label %500, label %522

500:                                              ; preds = %485
  %501 = load i32*, i32** %35, align 8
  %502 = load i32, i32* %19, align 4
  %503 = sub nsw i32 %502, 1
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %501, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load i32*, i32** %35, align 8
  %508 = load i32, i32* %19, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds i32, i32* %507, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = sub nsw i32 %511, 1
  %513 = icmp sle i32 %506, %512
  br i1 %513, label %514, label %522

514:                                              ; preds = %500
  %515 = load i32*, i32** %35, align 8
  %516 = load i32, i32* %19, align 4
  %517 = sub nsw i32 %516, 1
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %515, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = sub nsw i32 %520, 1
  store i32 %521, i32* %24, align 4
  br label %529

522:                                              ; preds = %500, %485
  %523 = load i32*, i32** %35, align 8
  %524 = load i32, i32* %19, align 4
  %525 = add nsw i32 %524, 1
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  %528 = load i32, i32* %527, align 4
  store i32 %528, i32* %24, align 4
  br label %529

529:                                              ; preds = %522, %514
  br label %530

530:                                              ; preds = %529, %478
  br label %531

531:                                              ; preds = %530, %443
  br label %532

532:                                              ; preds = %531, %428
  %533 = load i32, i32* %24, align 4
  %534 = load i32, i32* %19, align 4
  %535 = add nsw i32 %533, %534
  %536 = load i32, i32* %26, align 4
  %537 = sub nsw i32 %535, %536
  store i32 %537, i32* %18, align 4
  br label %538

538:                                              ; preds = %562, %532
  %539 = load i32, i32* %24, align 4
  %540 = icmp sgt i32 %539, 0
  br i1 %540, label %541, label %560

541:                                              ; preds = %538
  %542 = load i32, i32* %18, align 4
  %543 = icmp sgt i32 %542, 0
  br i1 %543, label %544, label %560

544:                                              ; preds = %541
  %545 = load i8*, i8** %10, align 8
  %546 = load i32, i32* %24, align 4
  %547 = sub nsw i32 %546, 1
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, i8* %545, i64 %548
  %550 = load i8, i8* %549, align 1
  %551 = zext i8 %550 to i32
  %552 = load i8*, i8** %11, align 8
  %553 = load i32, i32* %18, align 4
  %554 = sub nsw i32 %553, 1
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds i8, i8* %552, i64 %555
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = icmp eq i32 %551, %558
  br label %560

560:                                              ; preds = %544, %541, %538
  %561 = phi i1 [ false, %541 ], [ false, %538 ], [ %559, %544 ]
  br i1 %561, label %562, label %567

562:                                              ; preds = %560
  %563 = load i32, i32* %24, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %24, align 4
  %565 = load i32, i32* %18, align 4
  %566 = add nsw i32 %565, -1
  store i32 %566, i32* %18, align 4
  br label %538

567:                                              ; preds = %560
  %568 = load i32, i32* %24, align 4
  %569 = load i32*, i32** %37, align 8
  %570 = load i32, i32* %19, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32, i32* %569, i64 %571
  store i32 %568, i32* %572, align 4
  br label %573

573:                                              ; preds = %567
  %574 = load i32, i32* %19, align 4
  %575 = add nsw i32 %574, 1
  store i32 %575, i32* %19, align 4
  br label %415

576:                                              ; preds = %415
  %577 = load i32*, i32** %37, align 8
  %578 = load i32, i32* %25, align 4
  %579 = load i32, i32* %26, align 4
  %580 = add nsw i32 %578, %579
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i32, i32* %577, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = load i32*, i32** %39, align 8
  %585 = load i32, i32* %28, align 4
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i32, i32* %584, i64 %586
  store i32 %583, i32* %587, align 4
  %588 = load i32, i32* %25, align 4
  %589 = load i32, i32* %26, align 4
  %590 = add nsw i32 %588, %589
  %591 = load i32*, i32** %40, align 8
  %592 = load i32, i32* %28, align 4
  %593 = zext i32 %592 to i64
  %594 = getelementptr inbounds i32, i32* %591, i64 %593
  store i32 %590, i32* %594, align 4
  %595 = load i32, i32* %20, align 4
  store i32 %595, i32* %19, align 4
  br label %596

596:                                              ; preds = %643, %576
  %597 = load i32, i32* %19, align 4
  %598 = load i32, i32* %22, align 4
  %599 = icmp sle i32 %597, %598
  br i1 %599, label %600, label %646

600:                                              ; preds = %596
  %601 = load i32*, i32** %37, align 8
  %602 = load i32, i32* %19, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i32, i32* %601, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = load i32*, i32** %35, align 8
  %607 = load i32, i32* %19, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %606, i64 %608
  store i32 %605, i32* %609, align 4
  %610 = load i32, i32* %12, align 4
  %611 = add i32 %610, 1
  %612 = load i32*, i32** %37, align 8
  %613 = load i32, i32* %19, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds i32, i32* %612, i64 %614
  store i32 %611, i32* %615, align 4
  %616 = load i32*, i32** %35, align 8
  %617 = load i32, i32* %19, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = load i32*, i32** %39, align 8
  %622 = load i32, i32* %28, align 4
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i32, i32* %621, i64 %623
  %625 = load i32, i32* %624, align 4
  %626 = icmp slt i32 %620, %625
  br i1 %626, label %627, label %642

627:                                              ; preds = %600
  %628 = load i32*, i32** %35, align 8
  %629 = load i32, i32* %19, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds i32, i32* %628, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = load i32*, i32** %39, align 8
  %634 = load i32, i32* %28, align 4
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  store i32 %632, i32* %636, align 4
  %637 = load i32, i32* %19, align 4
  %638 = load i32*, i32** %40, align 8
  %639 = load i32, i32* %28, align 4
  %640 = zext i32 %639 to i64
  %641 = getelementptr inbounds i32, i32* %638, i64 %640
  store i32 %637, i32* %641, align 4
  br label %642

642:                                              ; preds = %627, %600
  br label %643

643:                                              ; preds = %642
  %644 = load i32, i32* %19, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %19, align 4
  br label %596

646:                                              ; preds = %596
  store i32 0, i32* %30, align 4
  br label %647

647:                                              ; preds = %685, %646
  %648 = load i32, i32* %30, align 4
  %649 = load i32, i32* %28, align 4
  %650 = icmp ult i32 %648, %649
  br i1 %650, label %651, label %688

651:                                              ; preds = %647
  %652 = load i32*, i32** %39, align 8
  %653 = load i32, i32* %28, align 4
  %654 = zext i32 %653 to i64
  %655 = getelementptr inbounds i32, i32* %652, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = load i32*, i32** %41, align 8
  %658 = load i32, i32* %30, align 4
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds i32, i32* %657, i64 %659
  %661 = load i32, i32* %660, align 4
  %662 = icmp sle i32 %656, %661
  br i1 %662, label %663, label %684

663:                                              ; preds = %651
  %664 = load i32, i32* %29, align 4
  %665 = load i32, i32* %28, align 4
  %666 = load i32, i32* %30, align 4
  %667 = add i32 %665, %666
  %668 = icmp ugt i32 %664, %667
  br i1 %668, label %678, label %669

669:                                              ; preds = %663
  %670 = load i32, i32* %29, align 4
  %671 = load i32, i32* %28, align 4
  %672 = load i32, i32* %30, align 4
  %673 = add i32 %671, %672
  %674 = icmp eq i32 %670, %673
  br i1 %674, label %675, label %684

675:                                              ; preds = %669
  %676 = load i32, i32* %34, align 4
  %677 = icmp slt i32 %676, 0
  br i1 %677, label %678, label %684

678:                                              ; preds = %675, %663
  %679 = load i32, i32* %28, align 4
  %680 = load i32, i32* %30, align 4
  %681 = add i32 %679, %680
  store i32 %681, i32* %29, align 4
  %682 = load i32, i32* %28, align 4
  store i32 %682, i32* %33, align 4
  %683 = load i32, i32* %30, align 4
  store i32 %683, i32* %34, align 4
  br label %688

684:                                              ; preds = %675, %669, %651
  br label %685

685:                                              ; preds = %684
  %686 = load i32, i32* %30, align 4
  %687 = add i32 %686, 1
  store i32 %687, i32* %30, align 4
  br label %647

688:                                              ; preds = %678, %647
  %689 = load i32, i32* %20, align 4
  %690 = add nsw i32 %689, -1
  store i32 %690, i32* %20, align 4
  %691 = load i32, i32* %22, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %22, align 4
  %693 = load i32, i32* %21, align 4
  store i32 %693, i32* %19, align 4
  br label %694

694:                                              ; preds = %851, %688
  %695 = load i32, i32* %19, align 4
  %696 = load i32, i32* %23, align 4
  %697 = icmp sle i32 %695, %696
  br i1 %697, label %698, label %854

698:                                              ; preds = %694
  %699 = load i32, i32* %19, align 4
  %700 = load i32, i32* %28, align 4
  %701 = sub nsw i32 0, %700
  %702 = load i32, i32* %27, align 4
  %703 = add nsw i32 %701, %702
  %704 = icmp eq i32 %699, %703
  br i1 %704, label %705, label %713

705:                                              ; preds = %698
  %706 = load i32*, i32** %36, align 8
  %707 = load i32, i32* %19, align 4
  %708 = add nsw i32 %707, 1
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds i32, i32* %706, i64 %709
  %711 = load i32, i32* %710, align 4
  %712 = add nsw i32 %711, 1
  store i32 %712, i32* %24, align 4
  br label %806

713:                                              ; preds = %698
  %714 = load i32, i32* %19, align 4
  %715 = load i32, i32* %28, align 4
  %716 = load i32, i32* %27, align 4
  %717 = add nsw i32 %715, %716
  %718 = icmp eq i32 %714, %717
  br i1 %718, label %719, label %726

719:                                              ; preds = %713
  %720 = load i32*, i32** %36, align 8
  %721 = load i32, i32* %19, align 4
  %722 = sub nsw i32 %721, 1
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, i32* %720, i64 %723
  %725 = load i32, i32* %724, align 4
  store i32 %725, i32* %24, align 4
  br label %805

726:                                              ; preds = %713
  %727 = load i32*, i32** %36, align 8
  %728 = load i32, i32* %19, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, i32* %727, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = load i32*, i32** %36, align 8
  %733 = load i32, i32* %19, align 4
  %734 = add nsw i32 %733, 1
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds i32, i32* %732, i64 %735
  %737 = load i32, i32* %736, align 4
  %738 = icmp sge i32 %731, %737
  br i1 %738, label %739, label %760

739:                                              ; preds = %726
  %740 = load i32*, i32** %36, align 8
  %741 = load i32, i32* %19, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, i32* %740, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = add nsw i32 %744, 1
  %746 = load i32*, i32** %36, align 8
  %747 = load i32, i32* %19, align 4
  %748 = sub nsw i32 %747, 1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, i32* %746, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = icmp sge i32 %745, %751
  br i1 %752, label %753, label %760

753:                                              ; preds = %739
  %754 = load i32*, i32** %36, align 8
  %755 = load i32, i32* %19, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds i32, i32* %754, i64 %756
  %758 = load i32, i32* %757, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %24, align 4
  br label %804

760:                                              ; preds = %739, %726
  %761 = load i32*, i32** %36, align 8
  %762 = load i32, i32* %19, align 4
  %763 = add nsw i32 %762, 1
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i32, i32* %761, i64 %764
  %766 = load i32, i32* %765, align 4
  %767 = add nsw i32 %766, 1
  %768 = load i32*, i32** %36, align 8
  %769 = load i32, i32* %19, align 4
  %770 = sub nsw i32 %769, 1
  %771 = sext i32 %770 to i64
  %772 = getelementptr inbounds i32, i32* %768, i64 %771
  %773 = load i32, i32* %772, align 4
  %774 = icmp sge i32 %767, %773
  br i1 %774, label %775, label %796

775:                                              ; preds = %760
  %776 = load i32*, i32** %36, align 8
  %777 = load i32, i32* %19, align 4
  %778 = add nsw i32 %777, 1
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i32, i32* %776, i64 %779
  %781 = load i32, i32* %780, align 4
  %782 = load i32*, i32** %36, align 8
  %783 = load i32, i32* %19, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds i32, i32* %782, i64 %784
  %786 = load i32, i32* %785, align 4
  %787 = icmp sge i32 %781, %786
  br i1 %787, label %788, label %796

788:                                              ; preds = %775
  %789 = load i32*, i32** %36, align 8
  %790 = load i32, i32* %19, align 4
  %791 = add nsw i32 %790, 1
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds i32, i32* %789, i64 %792
  %794 = load i32, i32* %793, align 4
  %795 = add nsw i32 %794, 1
  store i32 %795, i32* %24, align 4
  br label %803

796:                                              ; preds = %775, %760
  %797 = load i32*, i32** %36, align 8
  %798 = load i32, i32* %19, align 4
  %799 = sub nsw i32 %798, 1
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds i32, i32* %797, i64 %800
  %802 = load i32, i32* %801, align 4
  store i32 %802, i32* %24, align 4
  br label %803

803:                                              ; preds = %796, %788
  br label %804

804:                                              ; preds = %803, %753
  br label %805

805:                                              ; preds = %804, %719
  br label %806

806:                                              ; preds = %805, %705
  %807 = load i32, i32* %24, align 4
  %808 = load i32, i32* %19, align 4
  %809 = add nsw i32 %807, %808
  %810 = load i32, i32* %27, align 4
  %811 = sub nsw i32 %809, %810
  store i32 %811, i32* %18, align 4
  %812 = load i32, i32* %24, align 4
  %813 = icmp sge i32 %812, 0
  br i1 %813, label %814, label %845

814:                                              ; preds = %806
  br label %815

815:                                              ; preds = %839, %814
  %816 = load i32, i32* %24, align 4
  %817 = load i32, i32* %12, align 4
  %818 = icmp ult i32 %816, %817
  br i1 %818, label %819, label %837

819:                                              ; preds = %815
  %820 = load i32, i32* %18, align 4
  %821 = load i32, i32* %13, align 4
  %822 = icmp ult i32 %820, %821
  br i1 %822, label %823, label %837

823:                                              ; preds = %819
  %824 = load i8*, i8** %10, align 8
  %825 = load i32, i32* %24, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds i8, i8* %824, i64 %826
  %828 = load i8, i8* %827, align 1
  %829 = zext i8 %828 to i32
  %830 = load i8*, i8** %11, align 8
  %831 = load i32, i32* %18, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds i8, i8* %830, i64 %832
  %834 = load i8, i8* %833, align 1
  %835 = zext i8 %834 to i32
  %836 = icmp eq i32 %829, %835
  br label %837

837:                                              ; preds = %823, %819, %815
  %838 = phi i1 [ false, %819 ], [ false, %815 ], [ %836, %823 ]
  br i1 %838, label %839, label %844

839:                                              ; preds = %837
  %840 = load i32, i32* %24, align 4
  %841 = add nsw i32 %840, 1
  store i32 %841, i32* %24, align 4
  %842 = load i32, i32* %18, align 4
  %843 = add nsw i32 %842, 1
  store i32 %843, i32* %18, align 4
  br label %815

844:                                              ; preds = %837
  br label %845

845:                                              ; preds = %844, %806
  %846 = load i32, i32* %24, align 4
  %847 = load i32*, i32** %38, align 8
  %848 = load i32, i32* %19, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds i32, i32* %847, i64 %849
  store i32 %846, i32* %850, align 4
  br label %851

851:                                              ; preds = %845
  %852 = load i32, i32* %19, align 4
  %853 = add nsw i32 %852, 1
  store i32 %853, i32* %19, align 4
  br label %694

854:                                              ; preds = %694
  %855 = load i32*, i32** %38, align 8
  %856 = load i32, i32* %27, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds i32, i32* %855, i64 %857
  %859 = load i32, i32* %858, align 4
  %860 = load i32*, i32** %41, align 8
  %861 = load i32, i32* %28, align 4
  %862 = zext i32 %861 to i64
  %863 = getelementptr inbounds i32, i32* %860, i64 %862
  store i32 %859, i32* %863, align 4
  %864 = load i32, i32* %27, align 4
  %865 = load i32*, i32** %42, align 8
  %866 = load i32, i32* %28, align 4
  %867 = zext i32 %866 to i64
  %868 = getelementptr inbounds i32, i32* %865, i64 %867
  store i32 %864, i32* %868, align 4
  %869 = load i32, i32* %21, align 4
  store i32 %869, i32* %19, align 4
  br label %870

870:                                              ; preds = %915, %854
  %871 = load i32, i32* %19, align 4
  %872 = load i32, i32* %23, align 4
  %873 = icmp sle i32 %871, %872
  br i1 %873, label %874, label %918

874:                                              ; preds = %870
  %875 = load i32*, i32** %38, align 8
  %876 = load i32, i32* %19, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds i32, i32* %875, i64 %877
  %879 = load i32, i32* %878, align 4
  %880 = load i32*, i32** %36, align 8
  %881 = load i32, i32* %19, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds i32, i32* %880, i64 %882
  store i32 %879, i32* %883, align 4
  %884 = load i32*, i32** %38, align 8
  %885 = load i32, i32* %19, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds i32, i32* %884, i64 %886
  store i32 -1, i32* %887, align 4
  %888 = load i32*, i32** %36, align 8
  %889 = load i32, i32* %19, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds i32, i32* %888, i64 %890
  %892 = load i32, i32* %891, align 4
  %893 = load i32*, i32** %41, align 8
  %894 = load i32, i32* %28, align 4
  %895 = zext i32 %894 to i64
  %896 = getelementptr inbounds i32, i32* %893, i64 %895
  %897 = load i32, i32* %896, align 4
  %898 = icmp sgt i32 %892, %897
  br i1 %898, label %899, label %914

899:                                              ; preds = %874
  %900 = load i32*, i32** %36, align 8
  %901 = load i32, i32* %19, align 4
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i32, i32* %900, i64 %902
  %904 = load i32, i32* %903, align 4
  %905 = load i32*, i32** %41, align 8
  %906 = load i32, i32* %28, align 4
  %907 = zext i32 %906 to i64
  %908 = getelementptr inbounds i32, i32* %905, i64 %907
  store i32 %904, i32* %908, align 4
  %909 = load i32, i32* %19, align 4
  %910 = load i32*, i32** %42, align 8
  %911 = load i32, i32* %28, align 4
  %912 = zext i32 %911 to i64
  %913 = getelementptr inbounds i32, i32* %910, i64 %912
  store i32 %909, i32* %913, align 4
  br label %914

914:                                              ; preds = %899, %874
  br label %915

915:                                              ; preds = %914
  %916 = load i32, i32* %19, align 4
  %917 = add nsw i32 %916, 1
  store i32 %917, i32* %19, align 4
  br label %870

918:                                              ; preds = %870
  store i32 0, i32* %30, align 4
  br label %919

919:                                              ; preds = %957, %918
  %920 = load i32, i32* %30, align 4
  %921 = load i32, i32* %28, align 4
  %922 = icmp ule i32 %920, %921
  br i1 %922, label %923, label %960

923:                                              ; preds = %919
  %924 = load i32*, i32** %39, align 8
  %925 = load i32, i32* %30, align 4
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds i32, i32* %924, i64 %926
  %928 = load i32, i32* %927, align 4
  %929 = load i32*, i32** %41, align 8
  %930 = load i32, i32* %28, align 4
  %931 = zext i32 %930 to i64
  %932 = getelementptr inbounds i32, i32* %929, i64 %931
  %933 = load i32, i32* %932, align 4
  %934 = icmp sle i32 %928, %933
  br i1 %934, label %935, label %956

935:                                              ; preds = %923
  %936 = load i32, i32* %29, align 4
  %937 = load i32, i32* %28, align 4
  %938 = load i32, i32* %30, align 4
  %939 = add i32 %937, %938
  %940 = icmp ugt i32 %936, %939
  br i1 %940, label %950, label %941

941:                                              ; preds = %935
  %942 = load i32, i32* %29, align 4
  %943 = load i32, i32* %28, align 4
  %944 = load i32, i32* %30, align 4
  %945 = add i32 %943, %944
  %946 = icmp eq i32 %942, %945
  br i1 %946, label %947, label %956

947:                                              ; preds = %941
  %948 = load i32, i32* %34, align 4
  %949 = icmp slt i32 %948, 0
  br i1 %949, label %950, label %956

950:                                              ; preds = %947, %935
  %951 = load i32, i32* %28, align 4
  %952 = load i32, i32* %30, align 4
  %953 = add i32 %951, %952
  store i32 %953, i32* %29, align 4
  %954 = load i32, i32* %30, align 4
  store i32 %954, i32* %33, align 4
  %955 = load i32, i32* %28, align 4
  store i32 %955, i32* %34, align 4
  br label %960

956:                                              ; preds = %947, %941, %923
  br label %957

957:                                              ; preds = %956
  %958 = load i32, i32* %30, align 4
  %959 = add i32 %958, 1
  store i32 %959, i32* %30, align 4
  br label %919

960:                                              ; preds = %950, %919
  %961 = load i32, i32* %21, align 4
  %962 = add nsw i32 %961, -1
  store i32 %962, i32* %21, align 4
  %963 = load i32, i32* %23, align 4
  %964 = add nsw i32 %963, 1
  store i32 %964, i32* %23, align 4
  %965 = load i32, i32* %28, align 4
  %966 = add i32 %965, 1
  store i32 %966, i32* %28, align 4
  br label %409

967:                                              ; preds = %409
  %968 = load i32, i32* %28, align 4
  %969 = load i32, i32* %31, align 4
  %970 = icmp ugt i32 %968, %969
  br i1 %970, label %971, label %989

971:                                              ; preds = %967
  %972 = load i32*, i32** %35, align 8
  %973 = bitcast i32* %972 to i8*
  call void @free(i8* %973) #5
  %974 = load i32*, i32** %37, align 8
  %975 = bitcast i32* %974 to i8*
  call void @free(i8* %975) #5
  %976 = load i32*, i32** %36, align 8
  %977 = bitcast i32* %976 to i8*
  call void @free(i8* %977) #5
  %978 = load i32*, i32** %38, align 8
  %979 = bitcast i32* %978 to i8*
  call void @free(i8* %979) #5
  %980 = load i32*, i32** %39, align 8
  %981 = bitcast i32* %980 to i8*
  call void @free(i8* %981) #5
  %982 = load i32*, i32** %40, align 8
  %983 = bitcast i32* %982 to i8*
  call void @free(i8* %983) #5
  %984 = load i32*, i32** %41, align 8
  %985 = bitcast i32* %984 to i8*
  call void @free(i8* %985) #5
  %986 = load i32*, i32** %42, align 8
  %987 = bitcast i32* %986 to i8*
  call void @free(i8* %987) #5
  %988 = load i32, i32* %28, align 4
  store i32 %988, i32* %9, align 4
  br label %1145

989:                                              ; preds = %967
  %990 = load i32, i32* %12, align 4
  %991 = load i32*, i32** %39, align 8
  %992 = load i32, i32* %33, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds i32, i32* %991, i64 %993
  %995 = load i32, i32* %994, align 4
  %996 = sub nsw i32 %990, %995
  %997 = load i32*, i32** %41, align 8
  %998 = load i32, i32* %34, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i32, i32* %997, i64 %999
  %1001 = load i32, i32* %1000, align 4
  %1002 = icmp sge i32 %996, %1001
  br i1 %1002, label %1003, label %1040

1003:                                             ; preds = %989
  %1004 = load i32*, i32** %39, align 8
  %1005 = load i32, i32* %33, align 4
  %1006 = sext i32 %1005 to i64
  %1007 = getelementptr inbounds i32, i32* %1004, i64 %1006
  %1008 = load i32, i32* %1007, align 4
  store i32 %1008, i32* %43, align 4
  %1009 = load i32*, i32** %39, align 8
  %1010 = load i32, i32* %33, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds i32, i32* %1009, i64 %1011
  %1013 = load i32, i32* %1012, align 4
  %1014 = load i32*, i32** %42, align 8
  %1015 = load i32, i32* %34, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds i32, i32* %1014, i64 %1016
  %1018 = load i32, i32* %1017, align 4
  %1019 = add nsw i32 %1013, %1018
  %1020 = load i32, i32* %27, align 4
  %1021 = sub nsw i32 %1019, %1020
  store i32 %1021, i32* %44, align 4
  %1022 = load i32*, i32** %39, align 8
  %1023 = load i32, i32* %33, align 4
  %1024 = sext i32 %1023 to i64
  %1025 = getelementptr inbounds i32, i32* %1022, i64 %1024
  %1026 = load i32, i32* %1025, align 4
  store i32 %1026, i32* %45, align 4
  %1027 = load i32*, i32** %39, align 8
  %1028 = load i32, i32* %33, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds i32, i32* %1027, i64 %1029
  %1031 = load i32, i32* %1030, align 4
  %1032 = load i32*, i32** %40, align 8
  %1033 = load i32, i32* %33, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds i32, i32* %1032, i64 %1034
  %1036 = load i32, i32* %1035, align 4
  %1037 = add nsw i32 %1031, %1036
  %1038 = load i32, i32* %26, align 4
  %1039 = sub nsw i32 %1037, %1038
  store i32 %1039, i32* %46, align 4
  br label %1077

1040:                                             ; preds = %989
  %1041 = load i32*, i32** %41, align 8
  %1042 = load i32, i32* %34, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i32, i32* %1041, i64 %1043
  %1045 = load i32, i32* %1044, align 4
  store i32 %1045, i32* %43, align 4
  %1046 = load i32*, i32** %41, align 8
  %1047 = load i32, i32* %34, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds i32, i32* %1046, i64 %1048
  %1050 = load i32, i32* %1049, align 4
  %1051 = load i32*, i32** %42, align 8
  %1052 = load i32, i32* %34, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds i32, i32* %1051, i64 %1053
  %1055 = load i32, i32* %1054, align 4
  %1056 = add nsw i32 %1050, %1055
  %1057 = load i32, i32* %27, align 4
  %1058 = sub nsw i32 %1056, %1057
  store i32 %1058, i32* %44, align 4
  %1059 = load i32*, i32** %41, align 8
  %1060 = load i32, i32* %34, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds i32, i32* %1059, i64 %1061
  %1063 = load i32, i32* %1062, align 4
  store i32 %1063, i32* %45, align 4
  %1064 = load i32*, i32** %41, align 8
  %1065 = load i32, i32* %34, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, i32* %1064, i64 %1066
  %1068 = load i32, i32* %1067, align 4
  %1069 = load i32*, i32** %40, align 8
  %1070 = load i32, i32* %33, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds i32, i32* %1069, i64 %1071
  %1073 = load i32, i32* %1072, align 4
  %1074 = add nsw i32 %1068, %1073
  %1075 = load i32, i32* %26, align 4
  %1076 = sub nsw i32 %1074, %1075
  store i32 %1076, i32* %46, align 4
  br label %1077

1077:                                             ; preds = %1040, %1003
  %1078 = load i32, i32* %45, align 4
  %1079 = icmp ugt i32 %1078, 0
  br i1 %1079, label %1084, label %1080

1080:                                             ; preds = %1077
  %1081 = load i32, i32* %43, align 4
  %1082 = load i32, i32* %12, align 4
  %1083 = icmp ult i32 %1081, %1082
  br i1 %1083, label %1084, label %1085

1084:                                             ; preds = %1080, %1077
  br label %1086

1085:                                             ; preds = %1080
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 1605, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @__PRETTY_FUNCTION__.greedy, i64 0, i64 0)) #9
  unreachable

1086:                                             ; preds = %1084
  %1087 = load i32, i32* %45, align 4
  %1088 = icmp ugt i32 %1087, 0
  br i1 %1088, label %1089, label %1103

1089:                                             ; preds = %1086
  %1090 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %1091 = load i32, i32* %15, align 4
  %1092 = add i32 %1091, 1
  %1093 = load i32, i32* %14, align 4
  %1094 = add i32 %1093, 1
  %1095 = load i32, i32* %15, align 4
  %1096 = load i32, i32* %44, align 4
  %1097 = add i32 %1095, %1096
  %1098 = load i32, i32* %14, align 4
  %1099 = load i32, i32* %43, align 4
  %1100 = add i32 %1098, %1099
  %1101 = call %struct._exon_t* @new_exon(i32 %1092, i32 %1094, i32 %1097, i32 %1100)
  %1102 = bitcast %struct._exon_t* %1101 to i8*
  call void @add_col_elt(%struct._collec_t* %1090, i8* %1102)
  br label %1103

1103:                                             ; preds = %1089, %1086
  %1104 = load i32, i32* %43, align 4
  %1105 = load i32, i32* %12, align 4
  %1106 = icmp ult i32 %1104, %1105
  br i1 %1106, label %1107, label %1125

1107:                                             ; preds = %1103
  %1108 = load %struct._collec_t*, %struct._collec_t** %17, align 8
  %1109 = load i32, i32* %15, align 4
  %1110 = load i32, i32* %46, align 4
  %1111 = add i32 %1109, %1110
  %1112 = add i32 %1111, 1
  %1113 = load i32, i32* %14, align 4
  %1114 = load i32, i32* %45, align 4
  %1115 = add i32 %1113, %1114
  %1116 = add i32 %1115, 1
  %1117 = load i32, i32* %15, align 4
  %1118 = load i32, i32* %13, align 4
  %1119 = add i32 %1117, %1118
  %1120 = load i32, i32* %14, align 4
  %1121 = load i32, i32* %12, align 4
  %1122 = add i32 %1120, %1121
  %1123 = call %struct._exon_t* @new_exon(i32 %1112, i32 %1116, i32 %1119, i32 %1122)
  %1124 = bitcast %struct._exon_t* %1123 to i8*
  call void @add_col_elt(%struct._collec_t* %1108, i8* %1124)
  br label %1125

1125:                                             ; preds = %1107, %1103
  %1126 = load i32*, i32** %35, align 8
  %1127 = bitcast i32* %1126 to i8*
  call void @free(i8* %1127) #5
  %1128 = load i32*, i32** %37, align 8
  %1129 = bitcast i32* %1128 to i8*
  call void @free(i8* %1129) #5
  %1130 = load i32*, i32** %36, align 8
  %1131 = bitcast i32* %1130 to i8*
  call void @free(i8* %1131) #5
  %1132 = load i32*, i32** %38, align 8
  %1133 = bitcast i32* %1132 to i8*
  call void @free(i8* %1133) #5
  %1134 = load i32*, i32** %39, align 8
  %1135 = bitcast i32* %1134 to i8*
  call void @free(i8* %1135) #5
  %1136 = load i32*, i32** %40, align 8
  %1137 = bitcast i32* %1136 to i8*
  call void @free(i8* %1137) #5
  %1138 = load i32*, i32** %41, align 8
  %1139 = bitcast i32* %1138 to i8*
  call void @free(i8* %1139) #5
  %1140 = load i32*, i32** %42, align 8
  %1141 = bitcast i32* %1140 to i8*
  call void @free(i8* %1141) #5
  %1142 = load i32, i32* %33, align 4
  %1143 = load i32, i32* %34, align 4
  %1144 = add nsw i32 %1142, %1143
  store i32 %1144, i32* %9, align 4
  br label %1145

1145:                                             ; preds = %1125, %971, %279, %174, %131, %92, %49
  %1146 = load i32, i32* %9, align 4
  ret i32 %1146
}

; Function Attrs: noinline nounwind uwtable
define internal void @compact_exons(%struct._collec_t* %0, i32 %1) #0 {
  %3 = alloca %struct._collec_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._exon_t*, align 8
  %7 = alloca %struct._exon_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._exon_t*, align 8
  %10 = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %0, %struct._collec_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %11

11:                                               ; preds = %184, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %14 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %185

17:                                               ; preds = %11
  %18 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %18, i32 0, i32 0
  %20 = bitcast %union._collec_elt_t* %19 to %struct._exon_t***
  %21 = load %struct._exon_t**, %struct._exon_t*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %21, i64 %24
  %26 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  store %struct._exon_t* %26, %struct._exon_t** %6, align 8
  %27 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %28 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %27, i32 0, i32 0
  %29 = bitcast %union._collec_elt_t* %28 to %struct._exon_t***
  %30 = load %struct._exon_t**, %struct._exon_t*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %30, i64 %32
  %34 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  store %struct._exon_t* %34, %struct._exon_t** %7, align 8
  %35 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %39 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %44 = icmp ule i32 %42, %43
  br i1 %44, label %45, label %181

45:                                               ; preds = %17
  %46 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %47 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sub i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %51 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %54 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %119

57:                                               ; preds = %45
  %58 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %59 = bitcast %struct._exon_t* %58 to i8*
  call void @free(i8* %59) #5
  %60 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %61 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %60, i32 0, i32 0
  %62 = bitcast %union._collec_elt_t* %61 to %struct._exon_t***
  %63 = load %struct._exon_t**, %struct._exon_t*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %63, i64 %65
  %67 = bitcast %struct._exon_t** %66 to i8*
  %68 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %69 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %68, i32 0, i32 0
  %70 = bitcast %union._collec_elt_t* %69 to %struct._exon_t***
  %71 = load %struct._exon_t**, %struct._exon_t*** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %71, i64 %73
  %75 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %74, i64 1
  %76 = bitcast %struct._exon_t** %75 to i8*
  %77 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %78 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sub i32 %79, %80
  %82 = zext i32 %81 to i64
  %83 = mul i64 %82, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %76, i64 %83, i1 false)
  %84 = load i32, i32* %5, align 4
  %85 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %86 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %84, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %57
  %90 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %91 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %90, i32 0, i32 0
  %92 = bitcast %union._collec_elt_t* %91 to %struct._exon_t***
  %93 = load %struct._exon_t**, %struct._exon_t*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %93, i64 %95
  %97 = load %struct._exon_t*, %struct._exon_t** %96, align 8
  store %struct._exon_t* %97, %struct._exon_t** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %100 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = add i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %105 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %110 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sub i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %115 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sub i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %89, %57
  br label %180

119:                                              ; preds = %45
  %120 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %121 = bitcast %struct._exon_t* %120 to i8*
  call void @free(i8* %121) #5
  %122 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %123 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %122, i32 0, i32 0
  %124 = bitcast %union._collec_elt_t* %123 to %struct._exon_t***
  %125 = load %struct._exon_t**, %struct._exon_t*** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %125, i64 %127
  %129 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %128, i64 -1
  %130 = bitcast %struct._exon_t** %129 to i8*
  %131 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %132 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %131, i32 0, i32 0
  %133 = bitcast %union._collec_elt_t* %132 to %struct._exon_t***
  %134 = load %struct._exon_t**, %struct._exon_t*** %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %134, i64 %136
  %138 = bitcast %struct._exon_t** %137 to i8*
  %139 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %140 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sub i32 %141, %142
  %144 = add i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = mul i64 %145, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %138, i64 %146, i1 false)
  %147 = load i32, i32* %5, align 4
  %148 = icmp ugt i32 %147, 1
  br i1 %148, label %149, label %179

149:                                              ; preds = %119
  %150 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %151 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %150, i32 0, i32 0
  %152 = bitcast %union._collec_elt_t* %151 to %struct._exon_t***
  %153 = load %struct._exon_t**, %struct._exon_t*** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = sub i32 %154, 2
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %153, i64 %156
  %158 = load %struct._exon_t*, %struct._exon_t** %157, align 8
  store %struct._exon_t* %158, %struct._exon_t** %6, align 8
  %159 = load i32, i32* %8, align 4
  %160 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %161 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %166 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %171 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = sub i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %176 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = sub i32 %177, %174
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %149, %119
  br label %180

180:                                              ; preds = %179, %118
  br label %184

181:                                              ; preds = %17
  %182 = load i32, i32* %5, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %181, %180
  br label %11

185:                                              ; preds = %11
  store i32 1, i32* %5, align 4
  br label %186

186:                                              ; preds = %289, %185
  %187 = load i32, i32* %5, align 4
  %188 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %189 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %192, label %292

192:                                              ; preds = %186
  %193 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %194 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %193, i32 0, i32 0
  %195 = bitcast %union._collec_elt_t* %194 to %struct._exon_t***
  %196 = load %struct._exon_t**, %struct._exon_t*** %195, align 8
  %197 = load i32, i32* %5, align 4
  %198 = sub i32 %197, 1
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %196, i64 %199
  %201 = load %struct._exon_t*, %struct._exon_t** %200, align 8
  store %struct._exon_t* %201, %struct._exon_t** %9, align 8
  %202 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %203 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %202, i32 0, i32 0
  %204 = bitcast %union._collec_elt_t* %203 to %struct._exon_t***
  %205 = load %struct._exon_t**, %struct._exon_t*** %204, align 8
  %206 = load i32, i32* %5, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %205, i64 %207
  %209 = load %struct._exon_t*, %struct._exon_t** %208, align 8
  store %struct._exon_t* %209, %struct._exon_t** %10, align 8
  %210 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %211 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %214 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = add i32 %215, 1
  %217 = add i32 %216, 30
  %218 = icmp ult i32 %212, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %192
  %220 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %221 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %224 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = add i32 %225, 1
  %227 = load i32, i32* %4, align 4
  %228 = add i32 %226, %227
  %229 = icmp ule i32 %222, %228
  br i1 %229, label %245, label %230

230:                                              ; preds = %219, %192
  %231 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %232 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %235 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %238 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %241 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @about_same_gap_p(i32 %233, i32 %236, i32 %239, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %288

245:                                              ; preds = %230, %219
  %246 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %247 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %250 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 4
  %251 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %252 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %255 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  %256 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %257 = bitcast %struct._exon_t* %256 to i8*
  call void @free(i8* %257) #5
  %258 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %259 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sub i32 %260, 1
  store i32 %261, i32* %259, align 8
  %262 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %263 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %262, i32 0, i32 0
  %264 = bitcast %union._collec_elt_t* %263 to i8***
  %265 = load i8**, i8*** %264, align 8
  %266 = load i32, i32* %5, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = bitcast i8** %268 to i8*
  %270 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %271 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %270, i32 0, i32 0
  %272 = bitcast %union._collec_elt_t* %271 to i8***
  %273 = load i8**, i8*** %272, align 8
  %274 = load i32, i32* %5, align 4
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds i8*, i8** %273, i64 %275
  %277 = getelementptr inbounds i8*, i8** %276, i64 1
  %278 = bitcast i8** %277 to i8*
  %279 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %280 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sub i32 %281, %282
  %284 = zext i32 %283 to i64
  %285 = mul i64 %284, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %278, i64 %285, i1 false)
  %286 = load i32, i32* %5, align 4
  %287 = sub i32 %286, 1
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %245, %230
  br label %289

289:                                              ; preds = %288
  %290 = load i32, i32* %5, align 4
  %291 = add i32 %290, 1
  store i32 %291, i32* %5, align 4
  br label %186

292:                                              ; preds = %186
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @slide_intron(%struct._result_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct._result_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._exon_t*, align 8
  %9 = alloca %struct._exon_t*, align 8
  %10 = alloca %struct._splice_score_t, align 4
  %11 = alloca %struct._exon_t*, align 8
  %12 = alloca %struct._exon_t*, align 8
  %13 = alloca %struct._splice_score_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._exon_t*, align 8
  %20 = alloca %struct._exon_t*, align 8
  %21 = alloca %struct._splice_score_t, align 4
  %22 = alloca %struct._splice_score_t, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct._exon_t*, align 8
  %26 = alloca %struct._exon_t*, align 8
  %27 = alloca %struct._splice_score_t, align 4
  %28 = alloca %struct._splice_score_t, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct._result_t* %0, %struct._result_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 1, i32* %7, align 4
  br label %31

31:                                               ; preds = %143, %3
  %32 = load i32, i32* %7, align 4
  %33 = load %struct._result_t*, %struct._result_t** %4, align 8
  %34 = getelementptr inbounds %struct._result_t, %struct._result_t* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %146

38:                                               ; preds = %31
  %39 = load %struct._result_t*, %struct._result_t** %4, align 8
  %40 = getelementptr inbounds %struct._result_t, %struct._result_t* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %40, i32 0, i32 0
  %42 = bitcast %union._collec_elt_t* %41 to %struct._exon_t***
  %43 = load %struct._exon_t**, %struct._exon_t*** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %43, i64 %46
  %48 = load %struct._exon_t*, %struct._exon_t** %47, align 8
  store %struct._exon_t* %48, %struct._exon_t** %8, align 8
  %49 = load %struct._result_t*, %struct._result_t** %4, align 8
  %50 = getelementptr inbounds %struct._result_t, %struct._result_t* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %50, i32 0, i32 0
  %52 = bitcast %union._collec_elt_t* %51 to %struct._exon_t***
  %53 = load %struct._exon_t**, %struct._exon_t*** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %53, i64 %55
  %57 = load %struct._exon_t*, %struct._exon_t** %56, align 8
  store %struct._exon_t* %57, %struct._exon_t** %9, align 8
  %58 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %59 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 4
  %61 = and i64 %60, 72057594037927935
  %62 = or i64 %61, -72057594037927936
  store i64 %62, i64* %59, align 4
  %63 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 6
  %65 = load i64, i64* %64, align 4
  %66 = and i64 %65, -12884901889
  store i64 %66, i64* %64, align 4
  %67 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %68 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 4
  %70 = and i64 %69, -72057576858058753
  store i64 %70, i64* %68, align 4
  %71 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %72 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %75 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = sub i32 %73, %76
  %78 = icmp ne i32 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %38
  br label %143

80:                                               ; preds = %38
  %81 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %82 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %86 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %90 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @perfect_spl_p(i8* %93, i8* %94, %struct._splice_score_t* %10)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %142

97:                                               ; preds = %80
  %98 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = load %struct._result_t*, %struct._result_t** %4, align 8
  %101 = getelementptr inbounds %struct._result_t, %struct._result_t* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %107 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 6
  %108 = zext i32 %105 to i64
  %109 = load i64, i64* %107, align 4
  %110 = and i64 %108, 3
  %111 = shl i64 %110, 32
  %112 = and i64 %109, -12884901889
  %113 = or i64 %112, %111
  store i64 %113, i64* %107, align 4
  %114 = shl i64 %110, 62
  %115 = ashr i64 %114, 62
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %10, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %120 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %119, i32 0, i32 6
  %121 = zext i32 %118 to i64
  %122 = load i64, i64* %120, align 4
  %123 = and i64 %121, 255
  %124 = shl i64 %123, 56
  %125 = and i64 %122, 72057594037927935
  %126 = or i64 %125, %124
  store i64 %126, i64* %120, align 4
  %127 = shl i64 %123, 56
  %128 = ashr i64 %127, 56
  %129 = trunc i64 %128 to i32
  %130 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %131 = mul i32 %130, 2
  %132 = add i32 4, %131
  %133 = load %struct._exon_t*, %struct._exon_t** %8, align 8
  %134 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %133, i32 0, i32 6
  %135 = zext i32 %132 to i64
  %136 = load i64, i64* %134, align 4
  %137 = and i64 %135, 4194303
  %138 = shl i64 %137, 34
  %139 = and i64 %136, -72057576858058753
  %140 = or i64 %139, %138
  store i64 %140, i64* %134, align 4
  %141 = trunc i64 %137 to i32
  br label %142

142:                                              ; preds = %97, %80
  br label %143

143:                                              ; preds = %142, %79
  %144 = load i32, i32* %7, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %31

146:                                              ; preds = %31
  store i32 1, i32* %7, align 4
  br label %147

147:                                              ; preds = %369, %146
  %148 = load i32, i32* %7, align 4
  %149 = load %struct._result_t*, %struct._result_t** %4, align 8
  %150 = getelementptr inbounds %struct._result_t, %struct._result_t* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = icmp ult i32 %148, %152
  br i1 %153, label %154, label %372

154:                                              ; preds = %147
  %155 = load %struct._result_t*, %struct._result_t** %4, align 8
  %156 = getelementptr inbounds %struct._result_t, %struct._result_t* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %156, i32 0, i32 0
  %158 = bitcast %union._collec_elt_t* %157 to %struct._exon_t***
  %159 = load %struct._exon_t**, %struct._exon_t*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sub i32 %160, 1
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %159, i64 %162
  %164 = load %struct._exon_t*, %struct._exon_t** %163, align 8
  store %struct._exon_t* %164, %struct._exon_t** %11, align 8
  %165 = load %struct._result_t*, %struct._result_t** %4, align 8
  %166 = getelementptr inbounds %struct._result_t, %struct._result_t* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %166, i32 0, i32 0
  %168 = bitcast %union._collec_elt_t* %167 to %struct._exon_t***
  %169 = load %struct._exon_t**, %struct._exon_t*** %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %169, i64 %171
  %173 = load %struct._exon_t*, %struct._exon_t** %172, align 8
  store %struct._exon_t* %173, %struct._exon_t** %12, align 8
  store i32 0, i32* %16, align 4
  %174 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %175 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %178 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp ugt i32 %176, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %154
  br label %369

182:                                              ; preds = %154
  %183 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %184 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %187 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sub i32 %185, %188
  %190 = add i32 %189, 2
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = zext i32 %191 to i64
  %193 = mul i64 %192, 28
  %194 = call i8* @xmalloc(i64 %193)
  %195 = bitcast i8* %194 to %struct._splice_score_t*
  store %struct._splice_score_t* %195, %struct._splice_score_t** %13, align 8
  store i32 0, i32* %15, align 4
  br label %196

196:                                              ; preds = %255, %182
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %14, align 4
  %199 = icmp ult i32 %197, %198
  br i1 %199, label %200, label %258

200:                                              ; preds = %196
  %201 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %202 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %14, align 4
  %205 = sub i32 %203, %204
  %206 = load i32, i32* %15, align 4
  %207 = add i32 %205, %206
  %208 = add i32 %207, 1
  %209 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %210 = load i32, i32* %15, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %209, i64 %211
  %213 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %212, i32 0, i32 0
  store i32 %208, i32* %213, align 4
  %214 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %215 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sub i32 %216, %217
  %219 = load i32, i32* %15, align 4
  %220 = add i32 %218, %219
  %221 = add i32 %220, 1
  %222 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %223 = load i32, i32* %15, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %222, i64 %224
  %226 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %225, i32 0, i32 1
  store i32 %221, i32* %226, align 4
  %227 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %228 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %15, align 4
  %231 = add i32 %229, %230
  %232 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %233 = load i32, i32* %15, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %232, i64 %234
  %236 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %235, i32 0, i32 2
  store i32 %231, i32* %236, align 4
  %237 = load i8*, i8** %5, align 8
  %238 = load i8*, i8** %6, align 8
  %239 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %240 = load i32, i32* %15, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %239, i64 %241
  %243 = call i32 @perfect_spl_p(i8* %237, i8* %238, %struct._splice_score_t* %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %200
  %246 = load i32, i32* %16, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %16, align 4
  br label %254

248:                                              ; preds = %200
  %249 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %250 = load i32, i32* %15, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %249, i64 %251
  %253 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %252, i32 0, i32 6
  store i32 0, i32* %253, align 4
  br label %254

254:                                              ; preds = %248, %245
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %15, align 4
  %257 = add i32 %256, 1
  store i32 %257, i32* %15, align 4
  br label %196

258:                                              ; preds = %196
  %259 = load i32, i32* %16, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %366

261:                                              ; preds = %258
  store i32 0, i32* %15, align 4
  br label %262

262:                                              ; preds = %362, %261
  %263 = load i32, i32* %15, align 4
  %264 = load i32, i32* %14, align 4
  %265 = icmp ult i32 %263, %264
  br i1 %265, label %266, label %365

266:                                              ; preds = %262
  %267 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %268 = load i32, i32* %15, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %267, i64 %269
  %271 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %361

274:                                              ; preds = %266
  %275 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %276 = load i32, i32* %15, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %275, i64 %277
  %279 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = load %struct._result_t*, %struct._result_t** %4, align 8
  %282 = getelementptr inbounds %struct._result_t, %struct._result_t* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = add nsw i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %286 = load i32, i32* %15, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %285, i64 %287
  %289 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %292 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %291, i32 0, i32 6
  %293 = zext i32 %290 to i64
  %294 = load i64, i64* %292, align 4
  %295 = and i64 %293, 3
  %296 = shl i64 %295, 32
  %297 = and i64 %294, -12884901889
  %298 = or i64 %297, %296
  store i64 %298, i64* %292, align 4
  %299 = shl i64 %295, 62
  %300 = ashr i64 %299, 62
  %301 = trunc i64 %300 to i32
  %302 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %303 = load i32, i32* %15, align 4
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %302, i64 %304
  %306 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %305, i32 0, i32 3
  %307 = load i32, i32* %306, align 4
  %308 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %309 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %308, i32 0, i32 6
  %310 = zext i32 %307 to i64
  %311 = load i64, i64* %309, align 4
  %312 = and i64 %310, 255
  %313 = shl i64 %312, 56
  %314 = and i64 %311, 72057594037927935
  %315 = or i64 %314, %313
  store i64 %315, i64* %309, align 4
  %316 = shl i64 %312, 56
  %317 = ashr i64 %316, 56
  %318 = trunc i64 %317 to i32
  %319 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %320 = mul i32 %319, 2
  %321 = add i32 4, %320
  %322 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %323 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %322, i32 0, i32 6
  %324 = zext i32 %321 to i64
  %325 = load i64, i64* %323, align 4
  %326 = and i64 %324, 4194303
  %327 = shl i64 %326, 34
  %328 = and i64 %325, -72057576858058753
  %329 = or i64 %328, %327
  store i64 %329, i64* %323, align 4
  %330 = trunc i64 %326 to i32
  %331 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %332 = load i32, i32* %15, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %331, i64 %333
  %335 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %338 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %337, i32 0, i32 2
  store i32 %336, i32* %338, align 4
  %339 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %340 = load i32, i32* %15, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %339, i64 %341
  %343 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %346 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %345, i32 0, i32 3
  store i32 %344, i32* %346, align 4
  %347 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %348 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = add i32 %349, 1
  %351 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %352 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %351, i32 0, i32 1
  store i32 %350, i32* %352, align 4
  %353 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %354 = load i32, i32* %15, align 4
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %353, i64 %355
  %357 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  %360 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %359, i32 0, i32 0
  store i32 %358, i32* %360, align 4
  br label %361

361:                                              ; preds = %274, %266
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %15, align 4
  %364 = add i32 %363, 1
  store i32 %364, i32* %15, align 4
  br label %262

365:                                              ; preds = %262
  br label %366

366:                                              ; preds = %365, %258
  %367 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %368 = bitcast %struct._splice_score_t* %367 to i8*
  call void @free(i8* %368) #5
  br label %369

369:                                              ; preds = %366, %181
  %370 = load i32, i32* %7, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %7, align 4
  br label %147

372:                                              ; preds = %147
  %373 = load %struct._result_t*, %struct._result_t** %4, align 8
  %374 = getelementptr inbounds %struct._result_t, %struct._result_t* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %535

377:                                              ; preds = %372
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %7, align 4
  br label %378

378:                                              ; preds = %521, %377
  %379 = load i32, i32* %7, align 4
  %380 = load %struct._result_t*, %struct._result_t** %4, align 8
  %381 = getelementptr inbounds %struct._result_t, %struct._result_t* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = icmp ult i32 %379, %383
  br i1 %384, label %385, label %524

385:                                              ; preds = %378
  %386 = load %struct._result_t*, %struct._result_t** %4, align 8
  %387 = getelementptr inbounds %struct._result_t, %struct._result_t* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %387, i32 0, i32 0
  %389 = bitcast %union._collec_elt_t* %388 to %struct._exon_t***
  %390 = load %struct._exon_t**, %struct._exon_t*** %389, align 8
  %391 = load i32, i32* %7, align 4
  %392 = sub i32 %391, 1
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %390, i64 %393
  %395 = load %struct._exon_t*, %struct._exon_t** %394, align 8
  store %struct._exon_t* %395, %struct._exon_t** %19, align 8
  %396 = load %struct._result_t*, %struct._result_t** %4, align 8
  %397 = getelementptr inbounds %struct._result_t, %struct._result_t* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %397, i32 0, i32 0
  %399 = bitcast %union._collec_elt_t* %398 to %struct._exon_t***
  %400 = load %struct._exon_t**, %struct._exon_t*** %399, align 8
  %401 = load i32, i32* %7, align 4
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %400, i64 %402
  %404 = load %struct._exon_t*, %struct._exon_t** %403, align 8
  store %struct._exon_t* %404, %struct._exon_t** %20, align 8
  %405 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %406 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %405, i32 0, i32 3
  %407 = load i32, i32* %406, align 4
  %408 = add i32 %407, 1
  %409 = load %struct._exon_t*, %struct._exon_t** %20, align 8
  %410 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = icmp ult i32 %408, %411
  br i1 %412, label %413, label %414

413:                                              ; preds = %385
  br label %521

414:                                              ; preds = %385
  %415 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %416 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %415, i32 0, i32 6
  %417 = load i64, i64* %416, align 4
  %418 = shl i64 %417, 30
  %419 = ashr i64 %418, 62
  %420 = trunc i64 %419 to i32
  %421 = icmp sgt i32 %420, 0
  br i1 %421, label %422, label %431

422:                                              ; preds = %414
  %423 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %424 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %423, i32 0, i32 6
  %425 = load i64, i64* %424, align 4
  %426 = lshr i64 %425, 34
  %427 = and i64 %426, 4194303
  %428 = trunc i64 %427 to i32
  %429 = load i32, i32* %17, align 4
  %430 = add i32 %429, %428
  store i32 %430, i32* %17, align 4
  br label %521

431:                                              ; preds = %414
  %432 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %433 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %432, i32 0, i32 6
  %434 = load i64, i64* %433, align 4
  %435 = shl i64 %434, 30
  %436 = ashr i64 %435, 62
  %437 = trunc i64 %436 to i32
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %448

439:                                              ; preds = %431
  %440 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %441 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %440, i32 0, i32 6
  %442 = load i64, i64* %441, align 4
  %443 = lshr i64 %442, 34
  %444 = and i64 %443, 4194303
  %445 = trunc i64 %444 to i32
  %446 = load i32, i32* %18, align 4
  %447 = add i32 %446, %445
  store i32 %447, i32* %18, align 4
  br label %521

448:                                              ; preds = %431
  %449 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %450 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load %struct._exon_t*, %struct._exon_t** %20, align 8
  %453 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = sub i32 %451, %454
  %456 = add i32 %455, 2
  store i32 %456, i32* %23, align 4
  %457 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 3
  store i32 -1, i32* %457, align 4
  %458 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 4
  store i32 0, i32* %458, align 4
  %459 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 5
  store i32 0, i32* %459, align 4
  store i32 0, i32* %24, align 4
  br label %460

460:                                              ; preds = %499, %448
  %461 = load i32, i32* %24, align 4
  %462 = load i32, i32* %23, align 4
  %463 = icmp ult i32 %461, %462
  br i1 %463, label %464, label %502

464:                                              ; preds = %460
  %465 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %466 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %23, align 4
  %469 = sub i32 %467, %468
  %470 = load i32, i32* %24, align 4
  %471 = add i32 %469, %470
  %472 = add i32 %471, 1
  %473 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 0
  store i32 %472, i32* %473, align 4
  %474 = load %struct._exon_t*, %struct._exon_t** %19, align 8
  %475 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %474, i32 0, i32 3
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* %23, align 4
  %478 = sub i32 %476, %477
  %479 = load i32, i32* %24, align 4
  %480 = add i32 %478, %479
  %481 = add i32 %480, 1
  %482 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 1
  store i32 %481, i32* %482, align 4
  %483 = load %struct._exon_t*, %struct._exon_t** %20, align 8
  %484 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* %24, align 4
  %487 = add i32 %485, %486
  %488 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 2
  store i32 %487, i32* %488, align 4
  %489 = load i8*, i8** %5, align 8
  %490 = load i8*, i8** %6, align 8
  call void @compute_max_score(i8* %489, i8* %490, %struct._splice_score_t* %22, i32 0)
  %491 = bitcast %struct._splice_score_t* %22 to i8*
  %492 = bitcast %struct._splice_score_t* %21 to i8*
  %493 = call i32 @splice_score_compare(i8* %491, i8* %492)
  %494 = icmp sgt i32 %493, 0
  br i1 %494, label %495, label %498

495:                                              ; preds = %464
  %496 = bitcast %struct._splice_score_t* %21 to i8*
  %497 = bitcast %struct._splice_score_t* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %496, i8* align 4 %497, i64 28, i1 false)
  br label %498

498:                                              ; preds = %495, %464
  br label %499

499:                                              ; preds = %498
  %500 = load i32, i32* %24, align 4
  %501 = add i32 %500, 1
  store i32 %501, i32* %24, align 4
  br label %460

502:                                              ; preds = %460
  %503 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 6
  %504 = load i32, i32* %503, align 4
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %511

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 4
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %17, align 4
  %510 = add i32 %509, %508
  store i32 %510, i32* %17, align 4
  br label %511

511:                                              ; preds = %506, %502
  %512 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 6
  %513 = load i32, i32* %512, align 4
  %514 = icmp slt i32 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 4
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %18, align 4
  %519 = add i32 %518, %517
  store i32 %519, i32* %18, align 4
  br label %520

520:                                              ; preds = %515, %511
  br label %521

521:                                              ; preds = %520, %439, %422, %413
  %522 = load i32, i32* %7, align 4
  %523 = add i32 %522, 1
  store i32 %523, i32* %7, align 4
  br label %378

524:                                              ; preds = %378
  %525 = load i32, i32* %17, align 4
  %526 = load i32, i32* %18, align 4
  %527 = icmp uge i32 %525, %526
  br i1 %527, label %528, label %531

528:                                              ; preds = %524
  %529 = load %struct._result_t*, %struct._result_t** %4, align 8
  %530 = getelementptr inbounds %struct._result_t, %struct._result_t* %529, i32 0, i32 4
  store i32 1, i32* %530, align 8
  br label %534

531:                                              ; preds = %524
  %532 = load %struct._result_t*, %struct._result_t** %4, align 8
  %533 = getelementptr inbounds %struct._result_t, %struct._result_t* %532, i32 0, i32 4
  store i32 -1, i32* %533, align 8
  br label %534

534:                                              ; preds = %531, %528
  br label %535

535:                                              ; preds = %534, %372
  store i32 1, i32* %7, align 4
  br label %536

536:                                              ; preds = %704, %535
  %537 = load i32, i32* %7, align 4
  %538 = load %struct._result_t*, %struct._result_t** %4, align 8
  %539 = getelementptr inbounds %struct._result_t, %struct._result_t* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 8
  %542 = icmp ult i32 %537, %541
  br i1 %542, label %543, label %707

543:                                              ; preds = %536
  %544 = load %struct._result_t*, %struct._result_t** %4, align 8
  %545 = getelementptr inbounds %struct._result_t, %struct._result_t* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %545, i32 0, i32 0
  %547 = bitcast %union._collec_elt_t* %546 to %struct._exon_t***
  %548 = load %struct._exon_t**, %struct._exon_t*** %547, align 8
  %549 = load i32, i32* %7, align 4
  %550 = sub i32 %549, 1
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %548, i64 %551
  %553 = load %struct._exon_t*, %struct._exon_t** %552, align 8
  store %struct._exon_t* %553, %struct._exon_t** %25, align 8
  %554 = load %struct._result_t*, %struct._result_t** %4, align 8
  %555 = getelementptr inbounds %struct._result_t, %struct._result_t* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %555, i32 0, i32 0
  %557 = bitcast %union._collec_elt_t* %556 to %struct._exon_t***
  %558 = load %struct._exon_t**, %struct._exon_t*** %557, align 8
  %559 = load i32, i32* %7, align 4
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %558, i64 %560
  %562 = load %struct._exon_t*, %struct._exon_t** %561, align 8
  store %struct._exon_t* %562, %struct._exon_t** %26, align 8
  %563 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %564 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %563, i32 0, i32 6
  %565 = load i64, i64* %564, align 4
  %566 = ashr i64 %565, 56
  %567 = trunc i64 %566 to i32
  %568 = icmp sge i32 %567, 0
  br i1 %568, label %569, label %581

569:                                              ; preds = %543
  %570 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %571 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %570, i32 0, i32 6
  %572 = load i64, i64* %571, align 4
  %573 = shl i64 %572, 30
  %574 = ashr i64 %573, 62
  %575 = trunc i64 %574 to i32
  %576 = load %struct._result_t*, %struct._result_t** %4, align 8
  %577 = getelementptr inbounds %struct._result_t, %struct._result_t* %576, i32 0, i32 4
  %578 = load i32, i32* %577, align 8
  %579 = mul nsw i32 %575, %578
  %580 = icmp sgt i32 %579, 0
  br i1 %580, label %590, label %581

581:                                              ; preds = %569, %543
  %582 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %583 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %582, i32 0, i32 3
  %584 = load i32, i32* %583, align 4
  %585 = add i32 %584, 1
  %586 = load %struct._exon_t*, %struct._exon_t** %26, align 8
  %587 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = icmp ult i32 %585, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %581, %569
  br label %704

591:                                              ; preds = %581
  %592 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %593 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %592, i32 0, i32 3
  %594 = load i32, i32* %593, align 4
  %595 = load %struct._exon_t*, %struct._exon_t** %26, align 8
  %596 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = sub i32 %594, %597
  %599 = add i32 %598, 2
  store i32 %599, i32* %29, align 4
  %600 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 3
  store i32 -1, i32* %600, align 4
  %601 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 4
  store i32 0, i32* %601, align 4
  %602 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 5
  store i32 0, i32* %602, align 4
  store i32 0, i32* %30, align 4
  br label %603

603:                                              ; preds = %645, %591
  %604 = load i32, i32* %30, align 4
  %605 = load i32, i32* %29, align 4
  %606 = icmp ult i32 %604, %605
  br i1 %606, label %607, label %648

607:                                              ; preds = %603
  %608 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %609 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* %29, align 4
  %612 = sub i32 %610, %611
  %613 = load i32, i32* %30, align 4
  %614 = add i32 %612, %613
  %615 = add i32 %614, 1
  %616 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %28, i32 0, i32 0
  store i32 %615, i32* %616, align 4
  %617 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %618 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %617, i32 0, i32 3
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* %29, align 4
  %621 = sub i32 %619, %620
  %622 = load i32, i32* %30, align 4
  %623 = add i32 %621, %622
  %624 = add i32 %623, 1
  %625 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %28, i32 0, i32 1
  store i32 %624, i32* %625, align 4
  %626 = load %struct._exon_t*, %struct._exon_t** %26, align 8
  %627 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %626, i32 0, i32 0
  %628 = load i32, i32* %627, align 4
  %629 = load i32, i32* %30, align 4
  %630 = add i32 %628, %629
  %631 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %28, i32 0, i32 2
  store i32 %630, i32* %631, align 4
  %632 = load i8*, i8** %5, align 8
  %633 = load i8*, i8** %6, align 8
  %634 = load %struct._result_t*, %struct._result_t** %4, align 8
  %635 = getelementptr inbounds %struct._result_t, %struct._result_t* %634, i32 0, i32 4
  %636 = load i32, i32* %635, align 8
  call void @compute_max_score(i8* %632, i8* %633, %struct._splice_score_t* %28, i32 %636)
  %637 = bitcast %struct._splice_score_t* %28 to i8*
  %638 = bitcast %struct._splice_score_t* %27 to i8*
  %639 = call i32 @splice_score_compare(i8* %637, i8* %638)
  %640 = icmp sgt i32 %639, 0
  br i1 %640, label %641, label %644

641:                                              ; preds = %607
  %642 = bitcast %struct._splice_score_t* %27 to i8*
  %643 = bitcast %struct._splice_score_t* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %642, i8* align 4 %643, i64 28, i1 false)
  br label %644

644:                                              ; preds = %641, %607
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %30, align 4
  %647 = add i32 %646, 1
  store i32 %647, i32* %30, align 4
  br label %603

648:                                              ; preds = %603
  %649 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 6
  %650 = load i32, i32* %649, align 4
  %651 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %652 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %651, i32 0, i32 6
  %653 = zext i32 %650 to i64
  %654 = load i64, i64* %652, align 4
  %655 = and i64 %653, 3
  %656 = shl i64 %655, 32
  %657 = and i64 %654, -12884901889
  %658 = or i64 %657, %656
  store i64 %658, i64* %652, align 4
  %659 = shl i64 %655, 62
  %660 = ashr i64 %659, 62
  %661 = trunc i64 %660 to i32
  %662 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 3
  %663 = load i32, i32* %662, align 4
  %664 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %665 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %664, i32 0, i32 6
  %666 = zext i32 %663 to i64
  %667 = load i64, i64* %665, align 4
  %668 = and i64 %666, 255
  %669 = shl i64 %668, 56
  %670 = and i64 %667, 72057594037927935
  %671 = or i64 %670, %669
  store i64 %671, i64* %665, align 4
  %672 = shl i64 %668, 56
  %673 = ashr i64 %672, 56
  %674 = trunc i64 %673 to i32
  %675 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 4
  %676 = load i32, i32* %675, align 4
  %677 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %678 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %677, i32 0, i32 6
  %679 = zext i32 %676 to i64
  %680 = load i64, i64* %678, align 4
  %681 = and i64 %679, 4194303
  %682 = shl i64 %681, 34
  %683 = and i64 %680, -72057576858058753
  %684 = or i64 %683, %682
  store i64 %684, i64* %678, align 4
  %685 = trunc i64 %681 to i32
  %686 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 0
  %687 = load i32, i32* %686, align 4
  %688 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %689 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %688, i32 0, i32 2
  store i32 %687, i32* %689, align 4
  %690 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  %692 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %693 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %692, i32 0, i32 3
  store i32 %691, i32* %693, align 4
  %694 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %695 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %694, i32 0, i32 3
  %696 = load i32, i32* %695, align 4
  %697 = add i32 %696, 1
  %698 = load %struct._exon_t*, %struct._exon_t** %26, align 8
  %699 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %698, i32 0, i32 1
  store i32 %697, i32* %699, align 4
  %700 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %27, i32 0, i32 2
  %701 = load i32, i32* %700, align 4
  %702 = load %struct._exon_t*, %struct._exon_t** %26, align 8
  %703 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %702, i32 0, i32 0
  store i32 %701, i32* %703, align 4
  br label %704

704:                                              ; preds = %648, %590
  %705 = load i32, i32* %7, align 4
  %706 = add i32 %705, 1
  store i32 %706, i32* %7, align 4
  br label %536

707:                                              ; preds = %536
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @pluri_align(i8* %0, i8* %1, i32* %2, %struct._collec_t* %3, %struct._edit_script_list** %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct._collec_t*, align 8
  %13 = alloca %struct._edit_script_list**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._exon_t, align 4
  %17 = alloca %struct._exon_t*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct._edit_script*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct._exon_t*, align 8
  %26 = alloca %struct._edit_script*, align 8
  %27 = alloca %struct._edit_script*, align 8
  %28 = alloca %struct._edit_script*, align 8
  %29 = alloca %struct._edit_script*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct._edit_script_list*, align 8
  %36 = alloca %struct._edit_script*, align 8
  %37 = alloca i32, align 4
  %38 = alloca %struct._edit_script_list*, align 8
  %39 = alloca %struct._edit_script_list*, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct._collec_t* %3, %struct._collec_t** %12, align 8
  store %struct._edit_script_list** %4, %struct._edit_script_list*** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct._exon_t* %16, %struct._exon_t** %17, align 8
  store i32 0, i32* %22, align 4
  store %struct._edit_script* null, %struct._edit_script** %23, align 8
  %40 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  store %struct._edit_script_list* null, %struct._edit_script_list** %40, align 8
  store i32 0, i32* %21, align 4
  %41 = load i32, i32* %14, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %15, align 4
  store i32 %42, i32* %20, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 2
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 3
  store i32 0, i32* %50, align 4
  %51 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %52 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sub i32 %53, 1
  store i32 %54, i32* %24, align 4
  br label %55

55:                                               ; preds = %456, %7
  %56 = load i32, i32* %24, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %459

58:                                               ; preds = %55
  %59 = load %struct._collec_t*, %struct._collec_t** %12, align 8
  %60 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %59, i32 0, i32 0
  %61 = bitcast %union._collec_elt_t* %60 to %struct._exon_t***
  %62 = load %struct._exon_t**, %struct._exon_t*** %61, align 8
  %63 = load i32, i32* %24, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %62, i64 %64
  %66 = load %struct._exon_t*, %struct._exon_t** %65, align 8
  store %struct._exon_t* %66, %struct._exon_t** %25, align 8
  %67 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %68 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %71 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = sub i32 %69, %72
  %74 = sub i32 %73, 1
  store i32 %74, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %58
  %77 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %78 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %76
  %82 = call i8* @xmalloc(i64 40)
  %83 = bitcast i8* %82 to %struct._edit_script_list*
  store %struct._edit_script_list* %83, %struct._edit_script_list** %35, align 8
  %84 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  %85 = load %struct._edit_script_list*, %struct._edit_script_list** %84, align 8
  %86 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %87 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %86, i32 0, i32 0
  store %struct._edit_script_list* %85, %struct._edit_script_list** %87, align 8
  %88 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %89 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  store %struct._edit_script_list* %88, %struct._edit_script_list** %89, align 8
  %90 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %91 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %92 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %91, i32 0, i32 1
  store %struct._edit_script* %90, %struct._edit_script** %92, align 8
  %93 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %94 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %97 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %99 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %102 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %105 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sub i32 %103, %106
  %108 = add i32 %107, 1
  %109 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %110 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %113 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %111, %114
  %116 = add i32 %115, 1
  %117 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %118 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %21, align 4
  %120 = load %struct._edit_script_list*, %struct._edit_script_list** %35, align 8
  %121 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  store i32 0, i32* %21, align 4
  store %struct._edit_script* null, %struct._edit_script** %23, align 8
  br label %122

122:                                              ; preds = %81, %76
  %123 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %124 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %19, align 4
  %126 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %127 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %20, align 4
  br label %165

129:                                              ; preds = %58
  %130 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %131 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %134 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = sub i32 %132, %135
  %137 = sub i32 %136, 1
  store i32 %137, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %129
  %140 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %139
  %145 = call i8* @xmalloc(i64 16)
  %146 = bitcast i8* %145 to %struct._edit_script*
  store %struct._edit_script* %146, %struct._edit_script** %36, align 8
  %147 = load %struct._edit_script*, %struct._edit_script** %36, align 8
  %148 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %147, i32 0, i32 2
  store i8 1, i8* %148, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load %struct._edit_script*, %struct._edit_script** %36, align 8
  %151 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 8
  %152 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %153 = load %struct._edit_script*, %struct._edit_script** %36, align 8
  %154 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %153, i32 0, i32 0
  store %struct._edit_script* %152, %struct._edit_script** %154, align 8
  %155 = load %struct._edit_script*, %struct._edit_script** %36, align 8
  store %struct._edit_script* %155, %struct._edit_script** %23, align 8
  br label %164

156:                                              ; preds = %139, %129
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %161 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %159, %156
  br label %164

164:                                              ; preds = %163, %144
  br label %165

165:                                              ; preds = %164, %122
  %166 = load i8*, i8** %9, align 8
  %167 = load i8*, i8** %10, align 8
  %168 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %169 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = sub i32 %170, 1
  %172 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %173 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sub i32 %174, 1
  %176 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %177 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %180 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %183 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %186 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sub i32 %184, %187
  %189 = add i32 %188, 1
  %190 = uitofp i32 %189 to double
  %191 = fmul double 2.000000e-01, %190
  %192 = fcmp olt double 1.000000e+03, %191
  br i1 %192, label %193, label %204

193:                                              ; preds = %165
  %194 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %195 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %198 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = sub i32 %196, %199
  %201 = add i32 %200, 1
  %202 = uitofp i32 %201 to double
  %203 = fmul double 2.000000e-01, %202
  br label %205

204:                                              ; preds = %165
  br label %205

205:                                              ; preds = %204, %193
  %206 = phi double [ %203, %193 ], [ 1.000000e+03, %204 ]
  %207 = fptosi double %206 to i32
  %208 = call i32 @align_get_dist(i8* %166, i8* %167, i32 %171, i32 %175, i32 %178, i32 %181, i32 %207)
  store i32 %208, i32* %18, align 4
  %209 = load i32, i32* %18, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  store i32 -1, i32* %8, align 4
  br label %556

212:                                              ; preds = %205
  %213 = load i8*, i8** %9, align 8
  %214 = load i8*, i8** %10, align 8
  %215 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %216 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sub i32 %217, 1
  %219 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %220 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = sub i32 %221, 1
  %223 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %224 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %227 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %18, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %15, align 4
  call void @align_path(i8* %213, i8* %214, i32 %218, i32 %222, i32 %225, i32 %228, i32 %229, %struct._edit_script** %26, %struct._edit_script** %27, i32 %230, i32 %231)
  %232 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %233 = icmp eq %struct._edit_script* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %212
  store i32 -1, i32* %8, align 4
  br label %556

235:                                              ; preds = %212
  call void @Condense_both_Ends(%struct._edit_script** %26, %struct._edit_script** %27, %struct._edit_script** %28)
  %236 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %237 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %287, label %240

240:                                              ; preds = %235
  %241 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %242 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %241, i32 0, i32 2
  %243 = load i8, i8* %242, align 4
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %287

246:                                              ; preds = %240
  %247 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %248 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = add nsw i32 0, %249
  %251 = load i32, i32* %18, align 4
  %252 = sub nsw i32 %251, %250
  store i32 %252, i32* %18, align 4
  %253 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %254 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %257 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = sub i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %261 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %19, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %19, align 4
  %265 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %266 = icmp ne %struct._edit_script* %265, null
  br i1 %266, label %267, label %281

267:                                              ; preds = %246
  %268 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %269 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %268, i32 0, i32 2
  %270 = load i8, i8* %269, align 4
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %281

273:                                              ; preds = %267
  %274 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %275 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %278 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %273, %267, %246
  %282 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %283 = bitcast %struct._edit_script* %282 to i8*
  call void @free(i8* %283) #5
  %284 = load %struct._edit_script*, %struct._edit_script** %28, align 8
  %285 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %284, i32 0, i32 0
  store %struct._edit_script* null, %struct._edit_script** %285, align 8
  %286 = load %struct._edit_script*, %struct._edit_script** %28, align 8
  store %struct._edit_script* %286, %struct._edit_script** %27, align 8
  br label %287

287:                                              ; preds = %281, %240, %235
  %288 = load i32, i32* %24, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %325

290:                                              ; preds = %287
  %291 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %292 = icmp ne %struct._edit_script* %291, null
  br i1 %292, label %293, label %325

293:                                              ; preds = %290
  %294 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %295 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %294, i32 0, i32 2
  %296 = load i8, i8* %295, align 4
  %297 = sext i8 %296 to i32
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %325

299:                                              ; preds = %293
  %300 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %301 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 0, %302
  %304 = load i32, i32* %18, align 4
  %305 = sub nsw i32 %304, %303
  store i32 %305, i32* %18, align 4
  %306 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %307 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  %309 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %310 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %314 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %313, i32 0, i32 0
  %315 = load %struct._edit_script*, %struct._edit_script** %314, align 8
  store %struct._edit_script* %315, %struct._edit_script** %29, align 8
  %316 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %317 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %318 = icmp eq %struct._edit_script* %316, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %299
  %320 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  store %struct._edit_script* %320, %struct._edit_script** %27, align 8
  br label %321

321:                                              ; preds = %319, %299
  %322 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  %323 = bitcast %struct._edit_script* %322 to i8*
  call void @free(i8* %323) #5
  %324 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  store %struct._edit_script* %324, %struct._edit_script** %26, align 8
  br label %325

325:                                              ; preds = %321, %293, %290, %287
  %326 = load i32, i32* %18, align 4
  %327 = load i32, i32* %21, align 4
  %328 = add nsw i32 %327, %326
  store i32 %328, i32* %21, align 4
  %329 = load i8*, i8** %9, align 8
  %330 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %331 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i8, i8* %329, i64 %333
  %335 = getelementptr inbounds i8, i8* %334, i64 -1
  store i8* %335, i8** %30, align 8
  %336 = load i8*, i8** %10, align 8
  %337 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %338 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %336, i64 %340
  %342 = getelementptr inbounds i8, i8* %341, i64 -1
  store i8* %342, i8** %31, align 8
  store i32 0, i32* %33, align 4
  store i32 0, i32* %32, align 4
  %343 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  store %struct._edit_script* %343, %struct._edit_script** %29, align 8
  br label %344

344:                                              ; preds = %416, %325
  %345 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %346 = icmp ne %struct._edit_script* %345, null
  br i1 %346, label %347, label %420

347:                                              ; preds = %344
  %348 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %349 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %348, i32 0, i32 2
  %350 = load i8, i8* %349, align 4
  %351 = sext i8 %350 to i32
  switch i32 %351, label %416 [
    i32 1, label %352
    i32 2, label %369
    i32 3, label %386
  ]

352:                                              ; preds = %347
  %353 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %354 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load i32, i32* %33, align 4
  %357 = add nsw i32 %356, %355
  store i32 %357, i32* %33, align 4
  %358 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %359 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* %32, align 4
  %362 = add nsw i32 %361, %360
  store i32 %362, i32* %32, align 4
  %363 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %364 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i8*, i8** %30, align 8
  %367 = sext i32 %365 to i64
  %368 = getelementptr inbounds i8, i8* %366, i64 %367
  store i8* %368, i8** %30, align 8
  br label %416

369:                                              ; preds = %347
  %370 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %371 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* %33, align 4
  %374 = add nsw i32 %373, %372
  store i32 %374, i32* %33, align 4
  %375 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %376 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 8
  %378 = load i32, i32* %32, align 4
  %379 = add nsw i32 %378, %377
  store i32 %379, i32* %32, align 4
  %380 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %381 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 8
  %383 = load i8*, i8** %31, align 8
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i8, i8* %383, i64 %384
  store i8* %385, i8** %31, align 8
  br label %416

386:                                              ; preds = %347
  store i32 0, i32* %37, align 4
  br label %387

387:                                              ; preds = %408, %386
  %388 = load i32, i32* %37, align 4
  %389 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %390 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 8
  %392 = icmp slt i32 %388, %391
  br i1 %392, label %393, label %415

393:                                              ; preds = %387
  %394 = load i8*, i8** %30, align 8
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i32
  %397 = load i8*, i8** %31, align 8
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = icmp ne i32 %396, %399
  br i1 %400, label %401, label %404

401:                                              ; preds = %393
  %402 = load i32, i32* %32, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %32, align 4
  br label %407

404:                                              ; preds = %393
  %405 = load i32, i32* %22, align 4
  %406 = add i32 %405, 1
  store i32 %406, i32* %22, align 4
  br label %407

407:                                              ; preds = %404, %401
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %37, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %37, align 4
  %411 = load i8*, i8** %30, align 8
  %412 = getelementptr inbounds i8, i8* %411, i32 1
  store i8* %412, i8** %30, align 8
  %413 = load i8*, i8** %31, align 8
  %414 = getelementptr inbounds i8, i8* %413, i32 1
  store i8* %414, i8** %31, align 8
  br label %387

415:                                              ; preds = %387
  br label %416

416:                                              ; preds = %415, %369, %352, %347
  %417 = load %struct._edit_script*, %struct._edit_script** %29, align 8
  %418 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %417, i32 0, i32 0
  %419 = load %struct._edit_script*, %struct._edit_script** %418, align 8
  store %struct._edit_script* %419, %struct._edit_script** %29, align 8
  br label %344

420:                                              ; preds = %344
  %421 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %422 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %425 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = sub i32 %423, %426
  %428 = add i32 %427, 1
  %429 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %430 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 4
  %432 = add i32 %428, %431
  %433 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %434 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = sub i32 %432, %435
  %437 = add i32 %436, 1
  %438 = load i32, i32* %33, align 4
  %439 = add i32 %437, %438
  %440 = uitofp i32 %439 to double
  %441 = fdiv double %440, 2.000000e+00
  %442 = fptosi double %441 to i32
  store i32 %442, i32* %34, align 4
  %443 = load i32, i32* %34, align 4
  %444 = load i32, i32* %32, align 4
  %445 = sub nsw i32 %443, %444
  %446 = mul nsw i32 %445, 100
  %447 = load i32, i32* %34, align 4
  %448 = sdiv i32 %446, %447
  %449 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  %450 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %449, i32 0, i32 4
  store i32 %448, i32* %450, align 4
  %451 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %452 = load %struct._edit_script*, %struct._edit_script** %27, align 8
  %453 = getelementptr inbounds %struct._edit_script, %struct._edit_script* %452, i32 0, i32 0
  store %struct._edit_script* %451, %struct._edit_script** %453, align 8
  %454 = load %struct._edit_script*, %struct._edit_script** %26, align 8
  store %struct._edit_script* %454, %struct._edit_script** %23, align 8
  %455 = load %struct._exon_t*, %struct._exon_t** %25, align 8
  store %struct._exon_t* %455, %struct._exon_t** %17, align 8
  br label %456

456:                                              ; preds = %420
  %457 = load i32, i32* %24, align 4
  %458 = add nsw i32 %457, -1
  store i32 %458, i32* %24, align 4
  br label %55

459:                                              ; preds = %55
  %460 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %461 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = sub i32 %462, 1
  store i32 %463, i32* %18, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %510

465:                                              ; preds = %459
  %466 = load i32, i32* %18, align 4
  %467 = load i32, i32* %15, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %510

469:                                              ; preds = %465
  %470 = call i8* @xmalloc(i64 40)
  %471 = bitcast i8* %470 to %struct._edit_script_list*
  store %struct._edit_script_list* %471, %struct._edit_script_list** %38, align 8
  %472 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  %473 = load %struct._edit_script_list*, %struct._edit_script_list** %472, align 8
  %474 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %475 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %474, i32 0, i32 0
  store %struct._edit_script_list* %473, %struct._edit_script_list** %475, align 8
  %476 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %477 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  store %struct._edit_script_list* %476, %struct._edit_script_list** %477, align 8
  %478 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %479 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %478, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %482 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %481, i32 0, i32 2
  store i32 %480, i32* %482, align 8
  %483 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %484 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %487 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %486, i32 0, i32 3
  store i32 %485, i32* %487, align 4
  %488 = load i32, i32* %19, align 4
  %489 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %490 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 8
  %492 = sub i32 %488, %491
  %493 = add i32 %492, 1
  %494 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %495 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %494, i32 0, i32 4
  store i32 %493, i32* %495, align 8
  %496 = load i32, i32* %20, align 4
  %497 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %498 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = sub i32 %496, %499
  %501 = add i32 %500, 1
  %502 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %503 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %502, i32 0, i32 5
  store i32 %501, i32* %503, align 4
  %504 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %505 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %506 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %505, i32 0, i32 1
  store %struct._edit_script* %504, %struct._edit_script** %506, align 8
  %507 = load i32, i32* %21, align 4
  %508 = load %struct._edit_script_list*, %struct._edit_script_list** %38, align 8
  %509 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %508, i32 0, i32 6
  store i32 %507, i32* %509, align 8
  br label %553

510:                                              ; preds = %465, %459
  %511 = load i32, i32* %18, align 4
  %512 = load i32, i32* %15, align 4
  %513 = icmp ne i32 %511, %512
  br i1 %513, label %514, label %552

514:                                              ; preds = %510
  %515 = call i8* @xmalloc(i64 40)
  %516 = bitcast i8* %515 to %struct._edit_script_list*
  store %struct._edit_script_list* %516, %struct._edit_script_list** %39, align 8
  %517 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  %518 = load %struct._edit_script_list*, %struct._edit_script_list** %517, align 8
  %519 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %520 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %519, i32 0, i32 0
  store %struct._edit_script_list* %518, %struct._edit_script_list** %520, align 8
  %521 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %522 = load %struct._edit_script_list**, %struct._edit_script_list*** %13, align 8
  store %struct._edit_script_list* %521, %struct._edit_script_list** %522, align 8
  %523 = load %struct._exon_t*, %struct._exon_t** %17, align 8
  %524 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 4
  %526 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %527 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %526, i32 0, i32 2
  store i32 %525, i32* %527, align 8
  %528 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %529 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %528, i32 0, i32 3
  store i32 1, i32* %529, align 4
  %530 = load i32, i32* %19, align 4
  %531 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %532 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %531, i32 0, i32 2
  %533 = load i32, i32* %532, align 8
  %534 = sub i32 %530, %533
  %535 = add i32 %534, 1
  %536 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %537 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %536, i32 0, i32 4
  store i32 %535, i32* %537, align 8
  %538 = load i32, i32* %20, align 4
  %539 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %540 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = sub i32 %538, %541
  %543 = add i32 %542, 1
  %544 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %545 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %544, i32 0, i32 5
  store i32 %543, i32* %545, align 4
  %546 = load %struct._edit_script*, %struct._edit_script** %23, align 8
  %547 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %548 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %547, i32 0, i32 1
  store %struct._edit_script* %546, %struct._edit_script** %548, align 8
  %549 = load i32, i32* %21, align 4
  %550 = load %struct._edit_script_list*, %struct._edit_script_list** %39, align 8
  %551 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %550, i32 0, i32 6
  store i32 %549, i32* %551, align 8
  br label %552

552:                                              ; preds = %514, %510
  br label %553

553:                                              ; preds = %552, %469
  %554 = load i32, i32* %22, align 4
  %555 = load i32*, i32** %11, align 8
  store i32 %554, i32* %555, align 4
  store i32 0, i32* %8, align 4
  br label %556

556:                                              ; preds = %553, %234, %211
  %557 = load i32, i32* %8, align 4
  ret i32 %557
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @free_align(%struct._edit_script_list* %0) #0 {
  %2 = alloca %struct._edit_script_list*, align 8
  %3 = alloca %struct._edit_script_list*, align 8
  store %struct._edit_script_list* %0, %struct._edit_script_list** %2, align 8
  %4 = load %struct._edit_script_list*, %struct._edit_script_list** %2, align 8
  store %struct._edit_script_list* %4, %struct._edit_script_list** %3, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct._edit_script_list*, %struct._edit_script_list** %2, align 8
  store %struct._edit_script_list* %6, %struct._edit_script_list** %3, align 8
  %7 = icmp ne %struct._edit_script_list* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct._edit_script_list*, %struct._edit_script_list** %2, align 8
  %10 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %9, i32 0, i32 0
  %11 = load %struct._edit_script_list*, %struct._edit_script_list** %10, align 8
  store %struct._edit_script_list* %11, %struct._edit_script_list** %2, align 8
  %12 = load %struct._edit_script_list*, %struct._edit_script_list** %3, align 8
  %13 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %12, i32 0, i32 1
  %14 = load %struct._edit_script*, %struct._edit_script** %13, align 8
  call void @Free_script(%struct._edit_script* %14)
  %15 = load %struct._edit_script_list*, %struct._edit_script_list** %3, align 8
  %16 = bitcast %struct._edit_script_list* %15 to i8*
  call void @free(i8* %16) #5
  br label %5

17:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @perfect_spl_p(i8* %0, i8* %1, %struct._splice_score_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._splice_score_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._splice_score_t* %2, %struct._splice_score_t** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %13 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  %17 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %18 = zext i32 %17 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %23 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %28 = zext i32 %27 to i64
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %32 = call i32 @SWscore(i8* %20, i8* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %115

37:                                               ; preds = %3
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %40 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %38, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %47 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %52 = call i32 @SWscore(i8* %44, i8* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %115

57:                                               ; preds = %37
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %61 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %58, i8* align 1 %64, i64 2, i1 false)
  %65 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %69 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %67, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 -3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %66, i8* align 1 %73, i64 2, i1 false)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %111, %57
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %114

78:                                               ; preds = %74
  %79 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %80 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %81 = load i32, i32* %9, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %80, i64 %82
  %84 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %83, i32 0, i32 0
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %84, i64 0, i64 0
  %86 = call i32 @memcmp(i8* %79, i8* %85, i64 4) #11
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %91 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %93 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %92, i32 0, i32 6
  store i32 1, i32* %93, align 4
  store i32 1, i32* %4, align 4
  br label %115

94:                                               ; preds = %78
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 0
  %96 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %96, i64 %98
  %100 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %99, i32 0, i32 1
  %101 = getelementptr inbounds [4 x i8], [4 x i8]* %100, i64 0, i64 0
  %102 = call i32 @memcmp(i8* %95, i8* %101, i64 4) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %94
  %105 = load i32, i32* %9, align 4
  %106 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %107 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %109 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %108, i32 0, i32 6
  store i32 -1, i32* %109, align 4
  store i32 1, i32* %4, align 4
  br label %115

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %9, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %74

114:                                              ; preds = %74
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %114, %104, %88, %56, %36
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

; Function Attrs: noinline nounwind uwtable
define internal void @compute_max_score(i8* %0, i8* %1, %struct._splice_score_t* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._splice_score_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct._splice_score_t* %2, %struct._splice_score_t** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %15 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %18 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %21 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %24 = mul i32 %23, 2
  %25 = add i32 %24, 4
  %26 = zext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = call i8* @xmalloc(i64 %27)
  store i8* %28, i8** %13, align 8
  %29 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %30 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %29, i32 0, i32 4
  store i32 0, i32* %30, align 4
  %31 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %32 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %31, i32 0, i32 5
  store i32 0, i32* %32, align 4
  %33 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %34 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %33, i32 0, i32 3
  store i32 -1, i32* %34, align 4
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %76, %4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %79

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %51, i64 %53
  %55 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %55, i64 0, i64 0
  call void @compute_max_score_1(i8* %43, i8* %44, %struct._splice_score_t* %45, i32 %46, i32 %47, i32 %48, i32 %49, i8* %50, i8* %56, i32 1)
  br label %57

57:                                               ; preds = %42, %39
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  %61 = load i8*, i8** %5, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i8*, i8** %13, align 8
  %69 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %69, i64 %71
  %73 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %72, i32 0, i32 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i64 0, i64 0
  call void @compute_max_score_1(i8* %61, i8* %62, %struct._splice_score_t* %63, i32 %64, i32 %65, i32 %66, i32 %67, i8* %68, i8* %74, i32 -1)
  br label %75

75:                                               ; preds = %60, %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %35

79:                                               ; preds = %35
  %80 = load i8*, i8** %13, align 8
  call void @free(i8* %80) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @splice_score_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._splice_score_t*, align 8
  %7 = alloca %struct._splice_score_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct._splice_score_t*
  store %struct._splice_score_t* %9, %struct._splice_score_t** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct._splice_score_t*
  store %struct._splice_score_t* %11, %struct._splice_score_t** %7, align 8
  %12 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %13 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %16 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %22 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %25 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %66

29:                                               ; preds = %20
  %30 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %31 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %34 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %66

38:                                               ; preds = %29
  %39 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %40 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %43 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = icmp ugt i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %66

47:                                               ; preds = %38
  %48 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %49 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %52 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp ugt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 -1, i32* %3, align 4
  br label %66

56:                                               ; preds = %47
  %57 = load %struct._splice_score_t*, %struct._splice_score_t** %6, align 8
  %58 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct._splice_score_t*, %struct._splice_score_t** %7, align 8
  %61 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %55, %46, %37, %28, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal void @compute_max_score_1(i8* %0, i8* %1, %struct._splice_score_t* %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._splice_score_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct._splice_score_t, align 4
  %23 = alloca %struct._splice_score_t, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct._splice_score_t, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store %struct._splice_score_t* %2, %struct._splice_score_t** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %26 = load i8*, i8** %18, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8*, i8** %19, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 4, i1 false)
  %31 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %32 = sub i32 0, %31
  store i32 %32, i32* %21, align 4
  br label %33

33:                                               ; preds = %287, %10
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %290

37:                                               ; preds = %33
  %38 = load i32, i32* %14, align 4
  %39 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 5
  store i32 0, i32* %41, align 4
  %42 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 5
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 4
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 4
  store i32 0, i32* %44, align 4
  %45 = load i8*, i8** %18, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %16, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i32, i32* %21, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %58 = zext i32 %57 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %45, i8* align 1 %56, i64 %58, i1 false)
  %59 = load i8*, i8** %18, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = getelementptr inbounds i8, i8* %62, i64 4
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %16, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %21, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %72 = zext i32 %71 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %63, i8* align 1 %70, i64 %72, i1 false)
  store i32 -1, i32* %24, align 4
  br label %73

73:                                               ; preds = %239, %37
  %74 = load i32, i32* %24, align 4
  %75 = icmp sle i32 %74, 1
  br i1 %75, label %76, label %242

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 3
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  store i32 0, i32* %79, align 4
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %21, align 4
  %83 = add i32 %81, %82
  %84 = load i32, i32* %24, align 4
  %85 = add i32 %83, %84
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8*, i8** %19, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %89, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %95, %76
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %21, align 4
  %103 = add i32 %101, %102
  %104 = load i32, i32* %24, align 4
  %105 = add i32 %103, %104
  %106 = add i32 %105, 1
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %100, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i8*, i8** %19, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %110, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %99
  %117 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %116, %99
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* %15, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %126 = zext i32 %125 to i64
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i32, i32* %21, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %131, i64 %133
  %135 = load i8*, i8** %18, align 8
  %136 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %137 = add i32 %136, 2
  %138 = call i32 @SWscore(i8* %134, i8* %135, i32 %137)
  %139 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = bitcast %struct._splice_score_t* %25 to i8*
  %141 = bitcast %struct._splice_score_t* %22 to i8*
  %142 = call i32 @splice_score_compare(i8* %140, i8* %141)
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %120
  %145 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 4
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 5
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %21, align 4
  %153 = add i32 %151, %152
  %154 = load i32, i32* %24, align 4
  %155 = add i32 %153, %154
  %156 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 0
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %144, %120
  %158 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  store i32 0, i32* %158, align 4
  %159 = load i8*, i8** %11, align 8
  %160 = load i32, i32* %17, align 4
  %161 = sub i32 %160, 3
  %162 = load i32, i32* %21, align 4
  %163 = add i32 %161, %162
  %164 = load i32, i32* %24, align 4
  %165 = add i32 %163, %164
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %159, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i8*, i8** %19, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 2
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp eq i32 %169, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %157
  %176 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %175, %157
  %180 = load i8*, i8** %11, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sub i32 %181, 2
  %183 = load i32, i32* %21, align 4
  %184 = add i32 %182, %183
  %185 = load i32, i32* %24, align 4
  %186 = add i32 %184, %185
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %180, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i8*, i8** %19, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 3
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp eq i32 %190, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %179
  %197 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %196, %179
  %201 = load i8*, i8** %11, align 8
  %202 = load i32, i32* %17, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %201, i64 %203
  %205 = getelementptr inbounds i8, i8* %204, i64 -3
  %206 = load i32, i32* %21, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load i32, i32* %24, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = load i8*, i8** %18, align 8
  %213 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = getelementptr inbounds i8, i8* %215, i64 2
  %217 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %218 = add i32 %217, 2
  %219 = call i32 @SWscore(i8* %211, i8* %216, i32 %218)
  %220 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 4
  store i32 %219, i32* %220, align 4
  %221 = bitcast %struct._splice_score_t* %25 to i8*
  %222 = bitcast %struct._splice_score_t* %23 to i8*
  %223 = call i32 @splice_score_compare(i8* %221, i8* %222)
  %224 = icmp sgt i32 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %200
  %226 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 4
  store i32 %227, i32* %228, align 4
  %229 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %25, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 5
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* %21, align 4
  %234 = add i32 %232, %233
  %235 = load i32, i32* %24, align 4
  %236 = add i32 %234, %235
  %237 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 2
  store i32 %236, i32* %237, align 4
  br label %238

238:                                              ; preds = %225, %200
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %24, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %24, align 4
  br label %73

242:                                              ; preds = %73
  %243 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 4
  %246 = load i32, i32* %245, align 4
  %247 = add i32 %246, %244
  store i32 %247, i32* %245, align 4
  %248 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 5
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = add i32 %251, %249
  store i32 %252, i32* %250, align 4
  %253 = bitcast %struct._splice_score_t* %22 to i8*
  %254 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %255 = bitcast %struct._splice_score_t* %254 to i8*
  %256 = call i32 @splice_score_compare(i8* %253, i8* %255)
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %286

258:                                              ; preds = %242
  %259 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %262 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %261, i32 0, i32 4
  store i32 %260, i32* %262, align 4
  %263 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %266 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %265, i32 0, i32 5
  store i32 %264, i32* %266, align 4
  %267 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %22, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %270 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %21, align 4
  %273 = add i32 %271, %272
  %274 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %275 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %23, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %279 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %282 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %20, align 4
  %284 = load %struct._splice_score_t*, %struct._splice_score_t** %13, align 8
  %285 = getelementptr inbounds %struct._splice_score_t, %struct._splice_score_t* %284, i32 0, i32 6
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %258, %242
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %21, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %21, align 4
  br label %33

290:                                              ; preds = %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SWscore(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %13, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %19, i32* %20, align 4
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %198, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %201

25:                                               ; preds = %21
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %34, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 0
  %44 = add nsw i32 %27, %43
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  br label %71

51:                                               ; preds = %25
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub i32 %55, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %60, %66
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 0
  %70 = add nsw i32 %53, %69
  br label %71

71:                                               ; preds = %51, %48
  %72 = phi i32 [ %50, %48 ], [ %70, %51 ]
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %72, i32* %73, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sub i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %81, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  %92 = add nsw i32 %75, %91
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %71
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  br label %119

99:                                               ; preds = %71
  %100 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %5, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sub i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %107, %114
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 1, i32 0
  %118 = add nsw i32 %101, %117
  br label %119

119:                                              ; preds = %99, %96
  %120 = phi i32 [ %98, %96 ], [ %118, %99 ]
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %120, i32* %121, align 4
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %119
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %131 = load i32, i32* %130, align 4
  %132 = sub nsw i32 %131, 1
  br label %137

133:                                              ; preds = %119
  %134 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = sub nsw i32 %135, 1
  br label %137

137:                                              ; preds = %133, %129
  %138 = phi i32 [ %132, %129 ], [ %136, %133 ]
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i8*, i8** %4, align 8
  %142 = load i32, i32* %7, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* %7, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %146, %152
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 1, i32 0
  %156 = add nsw i32 %140, %155
  %157 = icmp slt i32 %138, %156
  br i1 %157, label %158, label %177

158:                                              ; preds = %137
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = load i32, i32* %7, align 4
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %161, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i8*, i8** %5, align 8
  %168 = load i32, i32* %7, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %166, %172
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 1, i32 0
  %176 = add nsw i32 %160, %175
  br label %195

177:                                              ; preds = %137
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 1
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %177
  %186 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %187 = load i32, i32* %186, align 4
  %188 = sub nsw i32 %187, 1
  br label %193

189:                                              ; preds = %177
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = sub nsw i32 %191, 1
  br label %193

193:                                              ; preds = %189, %185
  %194 = phi i32 [ %188, %185 ], [ %192, %189 ]
  br label %195

195:                                              ; preds = %193, %158
  %196 = phi i32 [ %176, %158 ], [ %194, %193 ]
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %7, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %21

201:                                              ; preds = %21
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %203 = load i32, i32* %202, align 4
  ret i32 %203
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #6

; Function Attrs: noinline nounwind uwtable
define internal i32 @about_same_gap_p(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ule i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %50

22:                                               ; preds = %17
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sub i32 %23, %24
  %26 = sub i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sub i32 %27, %28
  %30 = sub i32 %29, 1
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %11, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %22
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = mul i32 %42, 100
  %44 = load i32, i32* %10, align 4
  %45 = udiv i32 %43, %44
  %46 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 8
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %50

49:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %48, %21
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._exon_t* @new_exon(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct._exon_t*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i8* @xmalloc(i64 32)
  %11 = bitcast i8* %10 to %struct._exon_t*
  store %struct._exon_t* %11, %struct._exon_t** %9, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %14 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %17 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %20 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %23 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  ret %struct._exon_t* %24
}

; Function Attrs: noinline nounwind uwtable
define internal void @add_col_elt(%struct._collec_t* %0, i8* %1) #0 {
  %3 = alloca %struct._collec_t*, align 8
  %4 = alloca i8*, align 8
  store %struct._collec_t* %0, %struct._collec_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %6 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ule i32 %7, %10
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %14 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %15, 5
  store i32 %16, i32* %14, align 4
  %17 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %18 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %17, i32 0, i32 0
  %19 = bitcast %union._collec_elt_t* %18 to i8***
  %20 = load i8**, i8*** %19, align 8
  %21 = bitcast i8** %20 to i8*
  %22 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %23 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = zext i32 %24 to i64
  %26 = mul i64 %25, 8
  %27 = call i8* @xrealloc(i8* %21, i64 %26)
  %28 = bitcast i8* %27 to i8**
  %29 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %30 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %29, i32 0, i32 0
  %31 = bitcast %union._collec_elt_t* %30 to i8***
  store i8** %28, i8*** %31, align 8
  br label %32

32:                                               ; preds = %12, %2
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %35 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %34, i32 0, i32 0
  %36 = bitcast %union._collec_elt_t* %35 to i8***
  %37 = load i8**, i8*** %36, align 8
  %38 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %39 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8*, i8** %37, i64 %42
  store i8* %33, i8** %43, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @good_ratio(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sdiv i32 %7, 2
  %9 = icmp sle i32 %6, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 2, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 2, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = sitofp i32 %19 to double
  %21 = fmul double 0x3FC3333333333334, %20
  %22 = fadd double %21, 1.000000e+00
  %23 = fptosi double %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local void @tdestroy(i8*, void (i8*)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @add_word(%struct._hash_env_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct._hash_env_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._hash_node_t*, align 8
  %8 = alloca %struct._hash_node_t**, align 8
  store %struct._hash_env_t* %0, %struct._hash_env_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i8* @xmalloc(i64 8)
  %10 = bitcast i8* %9 to %struct._hash_node_t*
  store %struct._hash_node_t* %10, %struct._hash_node_t** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %13 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %15 = bitcast %struct._hash_node_t* %14 to i8*
  %16 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %17 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %16, i32 0, i32 0
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 524287
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = call i8* @tsearch(i8* %15, i8** %22, i32 (i8*, i8*)* @hash_node_compare)
  %24 = bitcast i8* %23 to %struct._hash_node_t**
  store %struct._hash_node_t** %24, %struct._hash_node_t*** %8, align 8
  %25 = load %struct._hash_node_t**, %struct._hash_node_t*** %8, align 8
  %26 = icmp ne %struct._hash_node_t** %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %29

28:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 924, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.add_word, i64 0, i64 0)) #9
  unreachable

29:                                               ; preds = %27
  %30 = load %struct._hash_node_t**, %struct._hash_node_t*** %8, align 8
  %31 = load %struct._hash_node_t*, %struct._hash_node_t** %30, align 8
  %32 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %33 = icmp ne %struct._hash_node_t* %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %36 = bitcast %struct._hash_node_t* %35 to i8*
  call void @free(i8* %36) #5
  %37 = load %struct._hash_node_t**, %struct._hash_node_t*** %8, align 8
  %38 = load %struct._hash_node_t*, %struct._hash_node_t** %37, align 8
  %39 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %42 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %54

47:                                               ; preds = %29
  %48 = load %struct._hash_env_t*, %struct._hash_env_t** %4, align 8
  %49 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 -1, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %34
  %55 = load i32, i32* %6, align 4
  %56 = load %struct._hash_node_t**, %struct._hash_node_t*** %8, align 8
  %57 = load %struct._hash_node_t*, %struct._hash_node_t** %56, align 8
  %58 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @hash_node_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._hash_node_t*, align 8
  %7 = alloca %struct._hash_node_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct._hash_node_t*
  store %struct._hash_node_t* %9, %struct._hash_node_t** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct._hash_node_t*
  store %struct._hash_node_t* %11, %struct._hash_node_t** %7, align 8
  %12 = load %struct._hash_node_t*, %struct._hash_node_t** %6, align 8
  %13 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %16 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %30

20:                                               ; preds = %2
  %21 = load %struct._hash_node_t*, %struct._hash_node_t** %6, align 8
  %22 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct._hash_node_t*, %struct._hash_node_t** %7, align 8
  %25 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ugt i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %19
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i8* @tsearch(i8*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @search(%struct._hash_env_t* %0, i8* %1, i32 %2, i32 %3, %struct._collec_t* %4) #0 {
  %6 = alloca %struct._hash_env_t*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._collec_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._hash_node_t, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct._hash_node_t**, align 8
  %20 = alloca i32, align 4
  store %struct._hash_env_t* %0, %struct._hash_env_t** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct._collec_t* %4, %struct._collec_t** %10, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %22 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add i32 %23, %24
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @xcalloc(i64 %27, i64 4)
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %32 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  store i32* %35, i32** %14, align 8
  %36 = load i8*, i8** %7, align 8
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %146, %5
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %147

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %94, %67, %41
  %43 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  store i32 0, i32* %43, align 4
  store i32 1, i32* %15, align 4
  br label %44

44:                                               ; preds = %75, %42
  %45 = load i32, i32* %15, align 4
  %46 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %47 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %51, %52
  br label %54

54:                                               ; preds = %50, %44
  %55 = phi i1 [ false, %44 ], [ %53, %50 ]
  br i1 %55, label %56, label %78

56:                                               ; preds = %54
  %57 = load i8*, i8** %11, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %11, align 8
  %59 = load i8, i8* %57, align 1
  %60 = zext i8 %59 to i64
  %61 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %42

68:                                               ; preds = %56
  %69 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 2
  %72 = load i32, i32* %17, align 4
  %73 = add i32 %71, %72
  %74 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  store i32 %73, i32* %74, align 4
  br label %75

75:                                               ; preds = %68
  %76 = load i32, i32* %15, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %15, align 4
  br label %44

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %145, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %146

83:                                               ; preds = %79
  %84 = load i8*, i8** %11, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %11, align 8
  %86 = load i8, i8* %84, align 1
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  br label %42

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %99 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %97, %100
  %102 = shl i32 %101, 2
  %103 = load i32, i32* %18, align 4
  %104 = add i32 %102, %103
  %105 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = bitcast %struct._hash_node_t* %16 to i8*
  %107 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %108 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %107, i32 0, i32 0
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %16, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 524287
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %109, i64 %113
  %115 = call i8* @tfind(i8* %106, i8** %114, i32 (i8*, i8*)* @hash_node_compare)
  %116 = bitcast i8* %115 to %struct._hash_node_t**
  store %struct._hash_node_t** %116, %struct._hash_node_t*** %19, align 8
  %117 = load %struct._hash_node_t**, %struct._hash_node_t*** %19, align 8
  %118 = icmp ne %struct._hash_node_t** %117, null
  br i1 %118, label %119, label %145

119:                                              ; preds = %95
  %120 = load %struct._hash_node_t**, %struct._hash_node_t*** %19, align 8
  %121 = load %struct._hash_node_t*, %struct._hash_node_t** %120, align 8
  %122 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %20, align 4
  br label %124

124:                                              ; preds = %136, %119
  %125 = load i32, i32* %20, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %124
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %12, align 4
  %130 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %131 = load i8*, i8** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load %struct._collec_t*, %struct._collec_t** %10, align 8
  %135 = load i32*, i32** %14, align 8
  call void @extend_hit(i32 %128, i32 %129, %struct._hash_env_t* %130, i8* %131, i32 %132, i32 %133, %struct._collec_t* %134, i32* %135)
  br label %136

136:                                              ; preds = %127
  %137 = load %struct._hash_env_t*, %struct._hash_env_t** %6, align 8
  %138 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %20, align 4
  br label %124

144:                                              ; preds = %124
  br label %145

145:                                              ; preds = %144, %95
  br label %79

146:                                              ; preds = %79
  br label %37

147:                                              ; preds = %37
  %148 = load i32*, i32** %13, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @msp_rna_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._exon_t*, align 8
  %7 = alloca %struct._exon_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct._exon_t**
  %10 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  store %struct._exon_t* %10, %struct._exon_t** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct._exon_t**
  %13 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  store %struct._exon_t* %13, %struct._exon_t** %7, align 8
  %14 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %15 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %18 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %24 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %50

31:                                               ; preds = %22
  %32 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %33 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %42 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %45 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %39, %30, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @trim_small_repeated_msps(%struct._collec_t* %0) #0 {
  %2 = alloca %struct._collec_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %92, %70, %31, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %11 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %123

14:                                               ; preds = %8
  %15 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %16 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %15, i32 0, i32 0
  %17 = bitcast %union._collec_elt_t* %16 to %struct._exon_t***
  %18 = load %struct._exon_t**, %struct._exon_t*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %18, i64 %20
  %22 = load %struct._exon_t*, %struct._exon_t** %21, align 8
  store %struct._exon_t* %22, %struct._exon_t** %4, align 8
  %23 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %24 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %25, %28
  %30 = icmp uge i32 %29, 50
  br i1 %30, label %31, label %34

31:                                               ; preds = %14
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %8

34:                                               ; preds = %14
  %35 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add i32 %37, 5
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %62, %34
  %42 = load i32, i32* %5, align 4
  %43 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %44 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %49 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %48, i32 0, i32 0
  %50 = bitcast %union._collec_elt_t* %49 to %struct._exon_t***
  %51 = load %struct._exon_t**, %struct._exon_t*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %51, i64 %53
  %55 = load %struct._exon_t*, %struct._exon_t** %54, align 8
  %56 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ule i32 %57, %58
  br label %60

60:                                               ; preds = %47, %41
  %61 = phi i1 [ false, %41 ], [ %59, %47 ]
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %41

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %3, align 4
  %68 = sub i32 %66, %67
  %69 = icmp ult i32 %68, 20
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %3, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %8

73:                                               ; preds = %65
  %74 = load i32, i32* %3, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %89, %73
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %75
  %80 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %81 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %80, i32 0, i32 0
  %82 = bitcast %union._collec_elt_t* %81 to %struct._exon_t***
  %83 = load %struct._exon_t**, %struct._exon_t*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %83, i64 %85
  %87 = load %struct._exon_t*, %struct._exon_t** %86, align 8
  %88 = bitcast %struct._exon_t* %87 to i8*
  call void @free(i8* %88) #5
  br label %89

89:                                               ; preds = %79
  %90 = load i32, i32* %6, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %75

92:                                               ; preds = %75
  %93 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %94 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %93, i32 0, i32 0
  %95 = bitcast %union._collec_elt_t* %94 to %struct._exon_t***
  %96 = load %struct._exon_t**, %struct._exon_t*** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %96, i64 %98
  %100 = bitcast %struct._exon_t** %99 to i8*
  %101 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %102 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %101, i32 0, i32 0
  %103 = bitcast %union._collec_elt_t* %102 to %struct._exon_t***
  %104 = load %struct._exon_t**, %struct._exon_t*** %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %104, i64 %106
  %108 = bitcast %struct._exon_t** %107 to i8*
  %109 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %110 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sub i32 %111, %112
  %114 = zext i32 %113 to i64
  %115 = mul i64 %114, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %100, i8* align 8 %108, i64 %115, i1 false)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %3, align 4
  %118 = sub i32 %116, %117
  %119 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %120 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sub i32 %121, %118
  store i32 %122, i32* %120, align 8
  br label %8

123:                                              ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @msp_compare(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._exon_t*, align 8
  %7 = alloca %struct._exon_t*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct._exon_t**
  %10 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  store %struct._exon_t* %10, %struct._exon_t** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct._exon_t**
  %13 = load %struct._exon_t*, %struct._exon_t** %12, align 8
  store %struct._exon_t* %13, %struct._exon_t** %7, align 8
  %14 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %15 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %18 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %24 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %27 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %50

31:                                               ; preds = %22
  %32 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %33 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %50

40:                                               ; preds = %31
  %41 = load %struct._exon_t*, %struct._exon_t** %6, align 8
  %42 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %45 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %39, %30, %21
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind uwtable
define internal void @combine_msps(%struct._collec_t* %0) #0 {
  %2 = alloca %struct._collec_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._exon_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._exon_t*, align 8
  %10 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %254, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %14 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %255

17:                                               ; preds = %11
  %18 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %19 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %18, i32 0, i32 0
  %20 = bitcast %union._collec_elt_t* %19 to %struct._exon_t***
  %21 = load %struct._exon_t**, %struct._exon_t*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %21, i64 %23
  %25 = load %struct._exon_t*, %struct._exon_t** %24, align 8
  store %struct._exon_t* %25, %struct._exon_t** %4, align 8
  store i32 0, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %102, %17
  %29 = load i32, i32* %6, align 4
  %30 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %31 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %105

34:                                               ; preds = %28
  %35 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %36 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %35, i32 0, i32 0
  %37 = bitcast %union._collec_elt_t* %36 to %struct._exon_t***
  %38 = load %struct._exon_t**, %struct._exon_t*** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %38, i64 %40
  %42 = load %struct._exon_t*, %struct._exon_t** %41, align 8
  store %struct._exon_t* %42, %struct._exon_t** %7, align 8
  store i32 0, i32* %8, align 4
  %43 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %44 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %47 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add i32 %48, 1
  %50 = icmp ule i32 %45, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %34
  %52 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %53 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %56 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %54, %57
  %59 = add i32 %58, 2
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %34
  %61 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %62 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %65 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ugt i32 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %60
  %69 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %70 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %73 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add i32 %74, 1
  %76 = icmp ule i32 %71, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %79 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %82 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %80, %83
  %85 = add i32 %84, 2
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %77, %68, %60
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sub nsw i32 %95, %96
  %98 = call i32 @abs(i32 %97) #12
  %99 = icmp sle i32 %98, 10
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %105

101:                                              ; preds = %94, %86
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %28

105:                                              ; preds = %100, %28
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %251

108:                                              ; preds = %105
  %109 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %110 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %109, i32 0, i32 0
  %111 = bitcast %union._collec_elt_t* %110 to %struct._exon_t***
  %112 = load %struct._exon_t**, %struct._exon_t*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %112, i64 %114
  %116 = load %struct._exon_t*, %struct._exon_t** %115, align 8
  store %struct._exon_t* %116, %struct._exon_t** %9, align 8
  %117 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %118 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %121 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %119, %122
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add i32 %125, 1
  %127 = icmp uge i32 %124, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %108
  %129 = load i32, i32* %5, align 4
  %130 = add i32 %129, 1
  %131 = load i32, i32* %10, align 4
  %132 = sub i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %134

133:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %133, %128
  %135 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %136 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %139 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp ugt i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %144 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  br label %150

146:                                              ; preds = %134
  %147 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %148 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  br label %150

150:                                              ; preds = %146, %142
  %151 = phi i32 [ %145, %142 ], [ %149, %146 ]
  %152 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %153 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %155 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %158 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ugt i32 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %150
  %162 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %163 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  br label %169

165:                                              ; preds = %150
  %166 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %167 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i32 [ %164, %161 ], [ %168, %165 ]
  %171 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %172 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %174 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %177 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = icmp ult i32 %175, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %169
  %181 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %182 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  br label %188

184:                                              ; preds = %169
  %185 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %186 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  br label %188

188:                                              ; preds = %184, %180
  %189 = phi i32 [ %183, %180 ], [ %187, %184 ]
  %190 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %191 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 4
  %192 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %193 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %196 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp ult i32 %194, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %188
  %200 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %201 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  br label %207

203:                                              ; preds = %188
  %204 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %205 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  br label %207

207:                                              ; preds = %203, %199
  %208 = phi i32 [ %202, %199 ], [ %206, %203 ]
  %209 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %210 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* %10, align 4
  %212 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %213 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 4
  %215 = icmp ugt i32 %211, %214
  br i1 %215, label %216, label %220

216:                                              ; preds = %207
  %217 = load i32, i32* %10, align 4
  %218 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %219 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %218, i32 0, i32 4
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %207
  %221 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %222 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sub i32 %223, 1
  store i32 %224, i32* %222, align 8
  %225 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %226 = bitcast %struct._exon_t* %225 to i8*
  call void @free(i8* %226) #5
  %227 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %228 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %227, i32 0, i32 0
  %229 = bitcast %union._collec_elt_t* %228 to %struct._exon_t***
  %230 = load %struct._exon_t**, %struct._exon_t*** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %230, i64 %232
  %234 = bitcast %struct._exon_t** %233 to i8*
  %235 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %236 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %235, i32 0, i32 0
  %237 = bitcast %union._collec_elt_t* %236 to %struct._exon_t***
  %238 = load %struct._exon_t**, %struct._exon_t*** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %238, i64 %240
  %242 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %241, i64 1
  %243 = bitcast %struct._exon_t** %242 to i8*
  %244 = load %struct._collec_t*, %struct._collec_t** %2, align 8
  %245 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sub i32 %246, %247
  %249 = zext i32 %248 to i64
  %250 = mul i64 %249, 8
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %243, i64 %250, i1 false)
  br label %254

251:                                              ; preds = %105
  %252 = load i32, i32* %3, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %3, align 4
  br label %254

254:                                              ; preds = %251, %220
  br label %11

255:                                              ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @link_msps(%struct._collec_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._collec_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._hash_node_t, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._exon_t*, align 8
  %11 = alloca %struct._exon_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct._exon_t*, align 8
  %14 = alloca i32, align 4
  store %struct._collec_t* %0, %struct._collec_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %166

19:                                               ; preds = %3
  %20 = bitcast %struct._hash_node_t* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %42, %19
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %28 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %27, i32 0, i32 0
  %29 = bitcast %union._collec_elt_t* %28 to %struct._exon_t***
  %30 = load %struct._exon_t**, %struct._exon_t*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %30, i64 %32
  %34 = load %struct._exon_t*, %struct._exon_t** %33, align 8
  store %struct._exon_t* %34, %struct._exon_t** %10, align 8
  %35 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 5
  store i32 0, i32* %36, align 4
  %37 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %38 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 4
  %40 = and i64 %39, -4294967293
  %41 = or i64 %40, 4294967292
  store i64 %41, i64* %38, align 4
  br label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %9, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %22

45:                                               ; preds = %22
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %160, %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %163

51:                                               ; preds = %47
  %52 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %53 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %52, i32 0, i32 0
  %54 = bitcast %union._collec_elt_t* %53 to %struct._exon_t***
  %55 = load %struct._exon_t**, %struct._exon_t*** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %55, i64 %57
  %59 = load %struct._exon_t*, %struct._exon_t** %58, align 8
  store %struct._exon_t* %59, %struct._exon_t** %11, align 8
  %60 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %61 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = add i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %68 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %51
  %74 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %75 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %8, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %8, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %51
  %81 = load i32, i32* %9, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %156, %80
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %159

87:                                               ; preds = %83
  %88 = load %struct._collec_t*, %struct._collec_t** %5, align 8
  %89 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %88, i32 0, i32 0
  %90 = bitcast %union._collec_elt_t* %89 to %struct._exon_t***
  %91 = load %struct._exon_t**, %struct._exon_t*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %91, i64 %93
  %95 = load %struct._exon_t*, %struct._exon_t** %94, align 8
  store %struct._exon_t* %95, %struct._exon_t** %13, align 8
  %96 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %97 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %98 = call i32 @lies_after_p(%struct._exon_t* %96, %struct._exon_t* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %155

100:                                              ; preds = %87
  %101 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %102 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %105 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = icmp uge i32 %103, %106
  br i1 %107, label %108, label %155

108:                                              ; preds = %100
  %109 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %110 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %113 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sub i32 %111, %114
  %116 = call i32 @abs(i32 %115) #12
  %117 = ashr i32 %116, 15
  store i32 %117, i32* %14, align 4
  %118 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %119 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %122 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sub i32 %120, %123
  %125 = call i32 @abs(i32 %124) #12
  %126 = ashr i32 %125, 15
  %127 = load i32, i32* %14, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %14, align 4
  %130 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %131 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp ult i32 %129, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %108
  %135 = load %struct._exon_t*, %struct._exon_t** %11, align 8
  %136 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub i32 %137, %138
  %140 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %144 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %143, i32 0, i32 6
  %145 = zext i32 %142 to i64
  %146 = load i64, i64* %144, align 4
  %147 = and i64 %145, 1073741823
  %148 = shl i64 %147, 2
  %149 = and i64 %146, -4294967293
  %150 = or i64 %149, %148
  store i64 %150, i64* %144, align 4
  %151 = shl i64 %147, 34
  %152 = ashr i64 %151, 34
  %153 = trunc i64 %152 to i32
  br label %154

154:                                              ; preds = %134, %108
  br label %155

155:                                              ; preds = %154, %100, %87
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %83

159:                                              ; preds = %83
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %9, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %47

163:                                              ; preds = %47
  %164 = getelementptr inbounds %struct._hash_node_t, %struct._hash_node_t* %8, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %163, %18
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

; Function Attrs: noinline nounwind uwtable
define internal void @msp2exons(%struct._exon_t** %0, i32 %1, %struct._collec_t* %2, i32 %3) #0 {
  %5 = alloca %struct._exon_t**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._collec_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._exon_t*, align 8
  %10 = alloca %struct._exon_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._exon_t*, align 8
  store %struct._exon_t** %0, %struct._exon_t*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct._collec_t* %2, %struct._collec_t** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %14

14:                                               ; preds = %145, %132, %4
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %155

17:                                               ; preds = %14
  %18 = load %struct._exon_t**, %struct._exon_t*** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %18, i64 %20
  %22 = load %struct._exon_t*, %struct._exon_t** %21, align 8
  store %struct._exon_t* %22, %struct._exon_t** %9, align 8
  %23 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %24 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ugt i32 %25, 0
  br i1 %26, label %27, label %145

27:                                               ; preds = %17
  %28 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %29 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %28, i32 0, i32 0
  %30 = bitcast %union._collec_elt_t* %29 to %struct._exon_t***
  %31 = load %struct._exon_t**, %struct._exon_t*** %30, align 8
  %32 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %33 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %31, i64 %36
  %38 = load %struct._exon_t*, %struct._exon_t** %37, align 8
  store %struct._exon_t* %38, %struct._exon_t** %10, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %144, label %41

41:                                               ; preds = %27
  %42 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %43 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %46 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add i32 %47, 30
  %49 = icmp ult i32 %44, %48
  br i1 %49, label %50, label %144

50:                                               ; preds = %41
  %51 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %52 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %55 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %56, 1
  %58 = icmp ugt i32 %53, %57
  br i1 %58, label %59, label %144

59:                                               ; preds = %50
  %60 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %61 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %69 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  br label %75

71:                                               ; preds = %59
  %72 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %73 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %70, %67 ], [ %74, %71 ]
  %77 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %78 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %80 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %83 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %88 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  br label %94

90:                                               ; preds = %75
  %91 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %92 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %89, %86 ], [ %93, %90 ]
  %96 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %97 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %99 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %102 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ugt i32 %100, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %94
  %106 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %107 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  br label %113

109:                                              ; preds = %94
  %110 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %111 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  %115 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %116 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %118 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %121 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ugt i32 %119, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %113
  %125 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %126 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  br label %132

128:                                              ; preds = %113
  %129 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %130 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i32 [ %127, %124 ], [ %131, %128 ]
  %134 = load %struct._exon_t*, %struct._exon_t** %10, align 8
  %135 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %137 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %136, i32 0, i32 6
  %138 = load i64, i64* %137, align 4
  %139 = shl i64 %138, 32
  %140 = ashr i64 %139, 34
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %6, align 4
  %142 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %143 = bitcast %struct._exon_t* %142 to i8*
  call void @free(i8* %143) #5
  br label %14

144:                                              ; preds = %50, %41, %27
  br label %145

145:                                              ; preds = %144, %17
  %146 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %147 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %148 = bitcast %struct._exon_t* %147 to i8*
  call void @add_col_elt(%struct._collec_t* %146, i8* %148)
  %149 = load %struct._exon_t*, %struct._exon_t** %9, align 8
  %150 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 4
  %152 = shl i64 %151, 32
  %153 = ashr i64 %152, 34
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %6, align 4
  br label %14

155:                                              ; preds = %14
  %156 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %157 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = icmp ugt i32 %158, 1
  br i1 %159, label %160, label %207

160:                                              ; preds = %155
  store i32 0, i32* %11, align 4
  %161 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %162 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = sub i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %165

165:                                              ; preds = %201, %160
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp ugt i32 %166, %167
  br i1 %168, label %169, label %206

169:                                              ; preds = %165
  %170 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %171 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %170, i32 0, i32 0
  %172 = bitcast %union._collec_elt_t* %171 to %struct._exon_t***
  %173 = load %struct._exon_t**, %struct._exon_t*** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %173, i64 %175
  %177 = load %struct._exon_t*, %struct._exon_t** %176, align 8
  store %struct._exon_t* %177, %struct._exon_t** %13, align 8
  %178 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %179 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %178, i32 0, i32 0
  %180 = bitcast %union._collec_elt_t* %179 to %struct._exon_t***
  %181 = load %struct._exon_t**, %struct._exon_t*** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %181, i64 %183
  %185 = load %struct._exon_t*, %struct._exon_t** %184, align 8
  %186 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %187 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %186, i32 0, i32 0
  %188 = bitcast %union._collec_elt_t* %187 to %struct._exon_t***
  %189 = load %struct._exon_t**, %struct._exon_t*** %188, align 8
  %190 = load i32, i32* %11, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %189, i64 %191
  store %struct._exon_t* %185, %struct._exon_t** %192, align 8
  %193 = load %struct._exon_t*, %struct._exon_t** %13, align 8
  %194 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %195 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %194, i32 0, i32 0
  %196 = bitcast %union._collec_elt_t* %195 to %struct._exon_t***
  %197 = load %struct._exon_t**, %struct._exon_t*** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %197, i64 %199
  store %struct._exon_t* %193, %struct._exon_t** %200, align 8
  br label %201

201:                                              ; preds = %169
  %202 = load i32, i32* %11, align 4
  %203 = add i32 %202, 1
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = add i32 %204, -1
  store i32 %205, i32* %12, align 4
  br label %165

206:                                              ; preds = %165
  br label %207

207:                                              ; preds = %206, %155
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable
define internal i32 @lies_after_p(%struct._exon_t* %0, %struct._exon_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._exon_t*, align 8
  %5 = alloca %struct._exon_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._exon_t* %0, %struct._exon_t** %4, align 8
  store %struct._exon_t* %1, %struct._exon_t** %5, align 8
  %12 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %13 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %16 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ugt i32 %14, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %2
  %20 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %21 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %24 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %150

28:                                               ; preds = %19
  %29 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %30 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %33 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %38 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %41 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28
  store i32 0, i32* %3, align 4
  br label %150

45:                                               ; preds = %36
  %46 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %47 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %50 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %54 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %57 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %55, %58
  store i32 %59, i32* %7, align 4
  %60 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %61 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ugt i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %45
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %77 = icmp ugt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %81 = icmp ugt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %150

83:                                               ; preds = %78, %74, %70, %45
  br label %149

84:                                               ; preds = %2
  %85 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %86 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %89 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp ugt i32 %87, %90
  br i1 %91, label %92, label %148

92:                                               ; preds = %84
  %93 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %94 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %97 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %92
  %101 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %102 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %105 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ult i32 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100, %92
  store i32 0, i32* %3, align 4
  br label %150

109:                                              ; preds = %100
  %110 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %111 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %114 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub i32 %112, %115
  store i32 %116, i32* %9, align 4
  %117 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %118 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %121 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = sub i32 %119, %122
  store i32 %123, i32* %10, align 4
  %124 = load %struct._exon_t*, %struct._exon_t** %5, align 8
  %125 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct._exon_t*, %struct._exon_t** %4, align 8
  %128 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = sub i32 %126, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ugt i32 %131, %132
  br i1 %133, label %134, label %147

134:                                              ; preds = %109
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ugt i32 %135, %136
  br i1 %137, label %138, label %147

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %141 = icmp ugt i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %138
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %145 = icmp ugt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %150

147:                                              ; preds = %142, %138, %134, %109
  br label %148

148:                                              ; preds = %147, %84
  br label %149

149:                                              ; preds = %148, %83
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %146, %108, %82, %44, %27
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #7

declare dso_local i8* @tfind(i8*, i8**, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @extend_hit(i32 %0, i32 %1, %struct._hash_env_t* %2, i8* %3, i32 %4, i32 %5, %struct._collec_t* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._hash_env_t*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct._collec_t*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store %struct._hash_env_t* %2, %struct._hash_env_t** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct._collec_t* %6, %struct._collec_t** %15, align 8
  store i32* %7, i32** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %25, align 4
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %25, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %8
  br label %250

38:                                               ; preds = %8
  store i32 0, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %39 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %40 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  store i8* %44, i8** %20, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %21, align 8
  %49 = load i8*, i8** %20, align 8
  store i8* %49, i8** %19, align 8
  br label %50

50:                                               ; preds = %100, %38
  %51 = load i8*, i8** %21, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = icmp ult i8* %51, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %50
  %58 = load i8*, i8** %20, align 8
  %59 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %60 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %63 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %61, i64 %65
  %67 = icmp ult i8* %58, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load i32, i32* %24, align 4
  %70 = load i32, i32* %23, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  %72 = sub nsw i32 %70, %71
  %73 = icmp sge i32 %69, %72
  br label %74

74:                                               ; preds = %68, %57, %50
  %75 = phi i1 [ false, %57 ], [ false, %50 ], [ %73, %68 ]
  br i1 %75, label %76, label %101

76:                                               ; preds = %74
  %77 = load i8*, i8** %21, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %21, align 8
  %79 = load i8, i8* %77, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8*, i8** %20, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %20, align 8
  %83 = load i8, i8* %81, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load i32, i32* %24, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %24, align 4
  %95 = load i32, i32* %23, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* %24, align 4
  store i32 %98, i32* %23, align 4
  %99 = load i8*, i8** %20, align 8
  store i8* %99, i8** %19, align 8
  br label %100

100:                                              ; preds = %97, %90
  br label %50

101:                                              ; preds = %74
  store i32 0, i32* %24, align 4
  store i32 0, i32* %22, align 4
  %102 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %103 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %109 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = sub i64 0, %111
  %113 = getelementptr inbounds i8, i8* %107, i64 %112
  store i8* %113, i8** %20, align 8
  store i8* %113, i8** %18, align 8
  %114 = load i8*, i8** %12, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %119 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  %122 = sub i64 0, %121
  %123 = getelementptr inbounds i8, i8* %117, i64 %122
  store i8* %123, i8** %21, align 8
  store i8* %123, i8** %17, align 8
  br label %124

124:                                              ; preds = %167, %101
  %125 = load i8*, i8** %21, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = icmp ugt i8* %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load i8*, i8** %20, align 8
  %130 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %131 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ugt i8* %129, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %22, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  %138 = sub nsw i32 %136, %137
  %139 = icmp sge i32 %135, %138
  br label %140

140:                                              ; preds = %134, %128, %124
  %141 = phi i1 [ false, %128 ], [ false, %124 ], [ %139, %134 ]
  br i1 %141, label %142, label %168

142:                                              ; preds = %140
  %143 = load i8*, i8** %21, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 -1
  store i8* %144, i8** %21, align 8
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i8*, i8** %20, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 -1
  store i8* %148, i8** %20, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %146, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  br label %156

154:                                              ; preds = %142
  %155 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  br label %156

156:                                              ; preds = %154, %152
  %157 = phi i32 [ %153, %152 ], [ %155, %154 ]
  %158 = load i32, i32* %24, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %24, align 4
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %22, align 4
  %162 = icmp sgt i32 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* %24, align 4
  store i32 %164, i32* %22, align 4
  %165 = load i8*, i8** %21, align 8
  store i8* %165, i8** %17, align 8
  %166 = load i8*, i8** %20, align 8
  store i8* %166, i8** %18, align 8
  br label %167

167:                                              ; preds = %163, %156
  br label %124

168:                                              ; preds = %140
  %169 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %170 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %23, align 4
  %173 = add i32 %171, %172
  %174 = load i32, i32* %22, align 4
  %175 = add i32 %173, %174
  store i32 %175, i32* %26, align 4
  %176 = load i32, i32* %26, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp sge i32 %176, %177
  br i1 %178, label %179, label %232

179:                                              ; preds = %168
  %180 = load %struct._collec_t*, %struct._collec_t** %15, align 8
  %181 = load i8*, i8** %18, align 8
  %182 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %183 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = ptrtoint i8* %181 to i64
  %186 = ptrtoint i8* %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = load i8*, i8** %17, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = load i8*, i8** %19, align 8
  %196 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %197 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %195 to i64
  %200 = ptrtoint i8* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sub nsw i64 %201, 1
  %203 = trunc i64 %202 to i32
  %204 = load i8*, i8** %17, align 8
  %205 = load i8*, i8** %12, align 8
  %206 = ptrtoint i8* %204 to i64
  %207 = ptrtoint i8* %205 to i64
  %208 = sub i64 %206, %207
  %209 = load i8*, i8** %19, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 %208
  %211 = load i8*, i8** %18, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = sub nsw i64 %214, 1
  %216 = trunc i64 %215 to i32
  %217 = call %struct._exon_t* @new_exon(i32 %188, i32 %194, i32 %203, i32 %216)
  %218 = bitcast %struct._exon_t* %217 to i8*
  call void @add_col_elt(%struct._collec_t* %180, i8* %218)
  %219 = load i32, i32* %26, align 4
  %220 = load %struct._collec_t*, %struct._collec_t** %15, align 8
  %221 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %220, i32 0, i32 0
  %222 = bitcast %union._collec_elt_t* %221 to %struct._exon_t***
  %223 = load %struct._exon_t**, %struct._exon_t*** %222, align 8
  %224 = load %struct._collec_t*, %struct._collec_t** %15, align 8
  %225 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = sub i32 %226, 1
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %223, i64 %228
  %230 = load %struct._exon_t*, %struct._exon_t** %229, align 8
  %231 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %230, i32 0, i32 4
  store i32 %219, i32* %231, align 4
  br label %232

232:                                              ; preds = %179, %168
  %233 = load i8*, i8** %19, align 8
  %234 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %235 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %234, i32 0, i32 1
  %236 = load i8*, i8** %235, align 8
  %237 = ptrtoint i8* %233 to i64
  %238 = ptrtoint i8* %236 to i64
  %239 = sub i64 %237, %238
  %240 = load %struct._hash_env_t*, %struct._hash_env_t** %11, align 8
  %241 = getelementptr inbounds %struct._hash_env_t, %struct._hash_env_t* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  %244 = add nsw i64 %239, %243
  %245 = trunc i64 %244 to i32
  %246 = load i32*, i32** %16, align 8
  %247 = load i32, i32* %25, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %245, i32* %249, align 4
  br label %250

250:                                              ; preds = %232, %37
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @init_encoding() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %9, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp ult i32 %3, 128
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], [128 x i32]* @encoding, i64 0, i64 %7
  store i32 4, i32* %8, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = add i32 %10, 1
  store i32 %11, i32* %1, align 4
  br label %2

12:                                               ; preds = %2
  store i32 0, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i64 0, i64 65), align 4
  store i32 1, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i64 0, i64 67), align 4
  store i32 2, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i64 0, i64 71), align 4
  store i32 3, i32* getelementptr inbounds ([128 x i32], [128 x i32]* @encoding, i64 0, i64 84), align 16
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_exons(%struct._collec_t* %0, i32 %1) #0 {
  %3 = alloca %struct._collec_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._exon_t*, align 8
  store %struct._collec_t* %0, %struct._collec_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %9 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sub i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %13 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ugt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %18

17:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.20, i64 0, i64 0), i32 1138, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.print_exons, i64 0, i64 0)) #9
  unreachable

18:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %115, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %118

23:                                               ; preds = %19
  %24 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %25 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %24, i32 0, i32 0
  %26 = bitcast %union._collec_elt_t* %25 to %struct._exon_t***
  %27 = load %struct._exon_t**, %struct._exon_t*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %27, i64 %29
  %31 = load %struct._exon_t*, %struct._exon_t** %30, align 8
  store %struct._exon_t* %31, %struct._exon_t** %7, align 8
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  %35 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %36 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %35, i32 0, i32 6
  %37 = load i64, i64* %36, align 4
  %38 = ashr i64 %37, 56
  %39 = trunc i64 %38 to i32
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %34, %23
  %42 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %43 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %46 = add i32 %44, %45
  %47 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %48 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %51 = add i32 %49, %50
  %52 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %53 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %56 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %59 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2.26, i64 0, i64 0), i32 %46, i32 %51, i32 %54, i32 %57, i32 %60)
  br label %114

62:                                               ; preds = %34
  %63 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %64 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %67 = add i32 %65, %66
  %68 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %69 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %72 = add i32 %70, %71
  %73 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %74 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %77 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %80 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp sgt i32 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4.27, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5.28, i64 0, i64 0)
  %86 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %87 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %88 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 4
  %90 = ashr i64 %89, 56
  %91 = trunc i64 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %86, i64 %92
  %94 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %93, i32 0, i32 0
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %94, i64 0, i64 0
  %96 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %97 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %98 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 4
  %100 = ashr i64 %99, 56
  %101 = trunc i64 %100 to i32
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %96, i64 %102
  %104 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %103, i32 0, i32 0
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %104, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %108 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %107, i32 0, i32 6
  %109 = load i64, i64* %108, align 4
  %110 = lshr i64 %109, 34
  %111 = and i64 %110, 4194303
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3.29, i64 0, i64 0), i32 %67, i32 %72, i32 %75, i32 %78, i32 %81, i8* %85, i8* %95, i8* %106, i32 %112)
  br label %114

114:                                              ; preds = %62, %41
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %19

118:                                              ; preds = %19
  %119 = load %struct._collec_t*, %struct._collec_t** %3, align 8
  %120 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %119, i32 0, i32 0
  %121 = bitcast %union._collec_elt_t* %120 to %struct._exon_t***
  %122 = load %struct._exon_t**, %struct._exon_t*** %121, align 8
  %123 = load i32, i32* %6, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %122, i64 %124
  %126 = load %struct._exon_t*, %struct._exon_t** %125, align 8
  store %struct._exon_t* %126, %struct._exon_t** %7, align 8
  %127 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %128 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %131 = add i32 %129, %130
  %132 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %133 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %136 = add i32 %134, %135
  %137 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %138 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %141 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct._exon_t*, %struct._exon_t** %7, align 8
  %144 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6.30, i64 0, i64 0), i32 %131, i32 %136, i32 %139, i32 %142, i32 %145)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._seq_t, align 8
  %8 = alloca %struct._seq_t, align 8
  %9 = alloca %struct._hash_env_t, align 8
  %10 = alloca %struct._collec_t, align 8
  %11 = alloca %struct._collec_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct._result_t*, align 8
  %22 = alloca %struct._result_t*, align 8
  %23 = alloca %struct._result_t*, align 8
  %24 = alloca %struct._result_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @argv0, align 8
  %28 = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0)) #5
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1.40, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %30, %2
  %37 = call void (i32)* @signal(i32 11, void (i32)* @bug_handler) #5
  %38 = call void (i32)* @signal(i32 7, void (i32)* @bug_handler) #5
  store i32 15, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  store i32 3, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  store i32 10, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 8
  store i32 6, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  store i32 15, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2.41, i64 0, i64 0), i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  store i32 4, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  store i32 10, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  store i32 -5, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  store i32 2, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  store i32 1, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  store i32 12, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  store i32 12, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  store i32 75, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  store i32 50, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  br label %39

39:                                               ; preds = %230, %36
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3.42, i64 0, i64 0)) #5
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %231

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  switch i32 %47, label %226 [
    i32 65, label %48
    i32 67, label %58
    i32 99, label %66
    i32 69, label %74
    i32 102, label %84
    i32 103, label %91
    i32 73, label %94
    i32 75, label %97
    i32 76, label %105
    i32 77, label %181
    i32 111, label %189
    i32 113, label %192
    i32 82, label %195
    i32 114, label %205
    i32 87, label %208
    i32 88, label %218
    i32 63, label %225
  ]

48:                                               ; preds = %46
  %49 = load i8*, i8** @optarg, align 8
  %50 = call i32 @atoi(i8* %49) #11
  store i32 %50, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %51 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %55 = icmp sgt i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %48
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4.43, i64 0, i64 0)) #10
  unreachable

57:                                               ; preds = %53
  br label %230

58:                                               ; preds = %46
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @atoi(i8* %59) #11
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5.44, i64 0, i64 0)) #10
  unreachable

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  br label %230

66:                                               ; preds = %46
  %67 = load i8*, i8** @optarg, align 8
  %68 = call i32 @atoi(i8* %67) #11
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6.45, i64 0, i64 0)) #10
  unreachable

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  br label %230

74:                                               ; preds = %46
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @atoi(i8* %75) #11
  store i32 %76, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %77 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %78 = icmp slt i32 %77, 3
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %81 = icmp sgt i32 %80, 10
  br i1 %81, label %82, label %83

82:                                               ; preds = %79, %74
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7.46, i64 0, i64 0)) #10
  unreachable

83:                                               ; preds = %79
  br label %230

84:                                               ; preds = %46
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @atoi(i8* %85) #11
  store i32 %86, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %87 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %88 = icmp ugt i32 %87, 100
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8.47, i64 0, i64 0)) #10
  unreachable

90:                                               ; preds = %84
  br label %230

91:                                               ; preds = %46
  %92 = load i8*, i8** @optarg, align 8
  %93 = call i32 @atoi(i8* %92) #11
  store i32 %93, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 8
  br label %230

94:                                               ; preds = %46
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 @atoi(i8* %95) #11
  store i32 %96, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  br label %230

97:                                               ; preds = %46
  %98 = load i8*, i8** @optarg, align 8
  %99 = call i32 @atoi(i8* %98) #11
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9.48, i64 0, i64 0)) #10
  unreachable

103:                                              ; preds = %97
  %104 = load i32, i32* %15, align 4
  store i32 %104, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  br label %230

105:                                              ; preds = %46
  %106 = load i8*, i8** @optarg, align 8
  %107 = call i64 @strlen(i8* %106) #11
  store i64 %107, i64* %17, align 8
  %108 = load i8*, i8** @optarg, align 8
  store i8* %108, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %109 = load i64, i64* %17, align 8
  %110 = urem i64 %109, 5
  %111 = icmp ne i64 %110, 4
  br i1 %111, label %112, label %114

112:                                              ; preds = %105
  %113 = load i64, i64* %17, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.49, i64 0, i64 0), i64 %113) #10
  unreachable

114:                                              ; preds = %105
  store i64 0, i64* %16, align 8
  br label %115

115:                                              ; preds = %177, %114
  %116 = load i64, i64* %16, align 8
  %117 = load i64, i64* %17, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %180

119:                                              ; preds = %115
  %120 = load i64, i64* %16, align 8
  %121 = urem i64 %120, 5
  %122 = icmp eq i64 %121, 4
  br i1 %122, label %123, label %140

123:                                              ; preds = %119
  %124 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %125 = load i64, i64* %16, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 44
  br i1 %129, label %130, label %137

130:                                              ; preds = %123
  %131 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %132 = load i64, i64* %16, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i64, i64* %16, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.11.50, i64 0, i64 0), i32 %135, i64 %136) #10
  unreachable

137:                                              ; preds = %123
  %138 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %139 = add i32 %138, 1
  store i32 %139, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  br label %176

140:                                              ; preds = %119
  %141 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 65
  br i1 %146, label %147, label %175

147:                                              ; preds = %140
  %148 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %149 = load i64, i64* %16, align 8
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 67
  br i1 %153, label %154, label %175

154:                                              ; preds = %147
  %155 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %156 = load i64, i64* %16, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 71
  br i1 %160, label %161, label %175

161:                                              ; preds = %154
  %162 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %163 = load i64, i64* %16, align 8
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 84
  br i1 %167, label %168, label %175

168:                                              ; preds = %161
  %169 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %170 = load i64, i64* %16, align 8
  %171 = getelementptr inbounds i8, i8* %169, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i64, i64* %16, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.12.51, i64 0, i64 0), i32 %173, i64 %174) #10
  unreachable

175:                                              ; preds = %161, %154, %147, %140
  br label %176

176:                                              ; preds = %175, %137
  br label %177

177:                                              ; preds = %176
  %178 = load i64, i64* %16, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %16, align 8
  br label %115

180:                                              ; preds = %115
  br label %230

181:                                              ; preds = %46
  %182 = load i8*, i8** @optarg, align 8
  %183 = call i32 @atoi(i8* %182) #11
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %18, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %181
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0)) #10
  unreachable

187:                                              ; preds = %181
  %188 = load i32, i32* %18, align 4
  store i32 %188, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  br label %230

189:                                              ; preds = %46
  %190 = load i8*, i8** @optarg, align 8
  %191 = call i32 @atoi(i8* %190) #11
  store i32 %191, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  br label %230

192:                                              ; preds = %46
  %193 = load i8*, i8** @optarg, align 8
  %194 = call i32 @atoi(i8* %193) #11
  store i32 %194, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  br label %230

195:                                              ; preds = %46
  %196 = load i8*, i8** @optarg, align 8
  %197 = call i32 @atoi(i8* %196) #11
  store i32 %197, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %198 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %195
  %201 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %202 = icmp sgt i32 %201, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %200, %195
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #10
  unreachable

204:                                              ; preds = %200
  br label %230

205:                                              ; preds = %46
  %206 = load i8*, i8** @optarg, align 8
  %207 = call i32 @atoi(i8* %206) #11
  store i32 %207, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  br label %230

208:                                              ; preds = %46
  %209 = load i8*, i8** @optarg, align 8
  %210 = call i32 @atoi(i8* %209) #11
  store i32 %210, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %211 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %216, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %215 = icmp sgt i32 %214, 15
  br i1 %215, label %216, label %217

216:                                              ; preds = %213, %208
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0)) #10
  unreachable

217:                                              ; preds = %213
  br label %230

218:                                              ; preds = %46
  %219 = load i8*, i8** @optarg, align 8
  %220 = call i32 @atoi(i8* %219) #11
  store i32 %220, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  %221 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0)) #10
  unreachable

224:                                              ; preds = %218
  br label %230

225:                                              ; preds = %46
  br label %230

226:                                              ; preds = %46
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %225, %224, %217, %205, %204, %192, %189, %187, %180, %103, %94, %91, %90, %83, %72, %64, %57
  br label %39

231:                                              ; preds = %45
  %232 = load i32, i32* @optind, align 4
  %233 = add nsw i32 %232, 2
  %234 = load i32, i32* %4, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %236, label %258

236:                                              ; preds = %231
  %237 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %238 = load i8**, i8*** %5, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %242 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 4), align 8
  %243 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  %244 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 5), align 4
  %245 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %246 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 6), align 8
  %247 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 7), align 4
  %248 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 8), align 8
  %249 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %250 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 9), align 4
  %251 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %252 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 10), align 8
  %253 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %254 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 12), align 8
  %255 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %256 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 14), align 8
  %257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %237, i8* getelementptr inbounds ([1399 x i8], [1399 x i8]* @Usage, i64 0, i64 0), i8* %240, i32 %241, i32 %242, i32 %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i8* %249, i32 %250, i32 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32 %256)
  store i32 1, i32* %3, align 4
  br label %484

258:                                              ; preds = %231
  %259 = load i8**, i8*** %5, align 8
  %260 = load i32, i32* @optind, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8*, i8** %259, i64 %261
  %263 = load i8*, i8** %262, align 8
  call void @init_seq(i8* %263, %struct._seq_t* %7)
  %264 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %265 = call i32 @get_next_seq(%struct._seq_t* %7, i32 %264, i32 1)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %258
  %268 = load i8**, i8*** %5, align 8
  %269 = load i32, i32* @optind, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i8*, i8** %268, i64 %270
  %272 = load i8*, i8** %271, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %272) #10
  unreachable

273:                                              ; preds = %258
  %274 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i64 0, i64 0), i8* %275, i64 256) #5
  %277 = load i8**, i8*** %5, align 8
  %278 = load i32, i32* @optind, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8*, i8** %277, i64 %280
  %282 = load i8*, i8** %281, align 8
  call void @init_seq(i8* %282, %struct._seq_t* %8)
  %283 = call i32 @get_next_seq(%struct._seq_t* %8, i32 0, i32 0)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %273
  %286 = load i8**, i8*** %5, align 8
  %287 = load i32, i32* @optind, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8*, i8** %286, i64 %289
  %291 = load i8*, i8** %290, align 8
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i8* %291) #10
  unreachable

292:                                              ; preds = %273
  call void @init_encoding()
  %293 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 13), align 4
  %294 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 2
  %295 = load i8*, i8** %294, align 8
  %296 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %7, i32 0, i32 5
  %297 = load i32, i32* %296, align 4
  call void @init_hash_env(%struct._hash_env_t* %9, i32 %293, i8* %295, i32 %297)
  call void @init_col(%struct._collec_t* %10, i32 1)
  call void @init_col(%struct._collec_t* %11, i32 1)
  call void @bld_table(%struct._hash_env_t* %9)
  call void @init_splice_junctions()
  store i32 0, i32* %6, align 4
  br label %298

298:                                              ; preds = %481, %292
  %299 = load i32, i32* %6, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = call i32 @get_next_seq(%struct._seq_t* %8, i32 0, i32 0)
  %303 = icmp eq i32 %302, 0
  br label %304

304:                                              ; preds = %301, %298
  %305 = phi i1 [ true, %298 ], [ %303, %301 ]
  br i1 %305, label %306, label %483

306:                                              ; preds = %304
  %307 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %8, i32 0, i32 1
  %308 = load i8*, i8** %307, align 8
  %309 = call i8* @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i64 0, i64 0), i8* %308, i64 256) #5
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %6, align 4
  %312 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  switch i32 %312, label %316 [
    i32 0, label %313
    i32 2, label %314
    i32 1, label %315
  ]

313:                                              ; preds = %306
  call void @SIM4(%struct._hash_env_t* %9, %struct._seq_t* %8, %struct._collec_t* %10)
  br label %317

314:                                              ; preds = %306
  call void @SIM4(%struct._hash_env_t* %9, %struct._seq_t* %8, %struct._collec_t* %10)
  br label %315

315:                                              ; preds = %314, %306
  call void @seq_revcomp_inplace(%struct._seq_t* %8)
  call void @SIM4(%struct._hash_env_t* %9, %struct._seq_t* %8, %struct._collec_t* %11)
  br label %317

316:                                              ; preds = %306
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0)) #10
  unreachable

317:                                              ; preds = %315, %313
  %318 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %319 = icmp ugt i32 %318, 0
  br i1 %319, label %320, label %439

320:                                              ; preds = %317
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %321

321:                                              ; preds = %346, %320
  %322 = load i32, i32* %19, align 4
  %323 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = icmp ult i32 %322, %324
  br i1 %325, label %326, label %349

326:                                              ; preds = %321
  %327 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 0
  %328 = bitcast %union._collec_elt_t* %327 to %struct._result_t***
  %329 = load %struct._result_t**, %struct._result_t*** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = zext i32 %330 to i64
  %332 = getelementptr inbounds %struct._result_t*, %struct._result_t** %329, i64 %331
  %333 = load %struct._result_t*, %struct._result_t** %332, align 8
  store %struct._result_t* %333, %struct._result_t** %21, align 8
  %334 = load %struct._result_t*, %struct._result_t** %21, align 8
  %335 = getelementptr inbounds %struct._result_t, %struct._result_t* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %20, align 4
  %339 = icmp ugt i32 %337, %338
  br i1 %339, label %340, label %345

340:                                              ; preds = %326
  %341 = load %struct._result_t*, %struct._result_t** %21, align 8
  %342 = getelementptr inbounds %struct._result_t, %struct._result_t* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %20, align 4
  br label %345

345:                                              ; preds = %340, %326
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %19, align 4
  %348 = add i32 %347, 1
  store i32 %348, i32* %19, align 4
  br label %321

349:                                              ; preds = %321
  store i32 0, i32* %19, align 4
  br label %350

350:                                              ; preds = %375, %349
  %351 = load i32, i32* %19, align 4
  %352 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = icmp ult i32 %351, %353
  br i1 %354, label %355, label %378

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 0
  %357 = bitcast %union._collec_elt_t* %356 to %struct._result_t***
  %358 = load %struct._result_t**, %struct._result_t*** %357, align 8
  %359 = load i32, i32* %19, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds %struct._result_t*, %struct._result_t** %358, i64 %360
  %362 = load %struct._result_t*, %struct._result_t** %361, align 8
  store %struct._result_t* %362, %struct._result_t** %22, align 8
  %363 = load %struct._result_t*, %struct._result_t** %22, align 8
  %364 = getelementptr inbounds %struct._result_t, %struct._result_t* %363, i32 0, i32 5
  %365 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* %20, align 4
  %368 = icmp ugt i32 %366, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %355
  %370 = load %struct._result_t*, %struct._result_t** %22, align 8
  %371 = getelementptr inbounds %struct._result_t, %struct._result_t* %370, i32 0, i32 5
  %372 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  store i32 %373, i32* %20, align 4
  br label %374

374:                                              ; preds = %369, %355
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %19, align 4
  %377 = add i32 %376, 1
  store i32 %377, i32* %19, align 4
  br label %350

378:                                              ; preds = %350
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 16), align 8
  %381 = mul i32 %379, %380
  %382 = udiv i32 %381, 100
  store i32 %382, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %383

383:                                              ; preds = %407, %378
  %384 = load i32, i32* %19, align 4
  %385 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 1
  %386 = load i32, i32* %385, align 8
  %387 = icmp ult i32 %384, %386
  br i1 %387, label %388, label %410

388:                                              ; preds = %383
  %389 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 0
  %390 = bitcast %union._collec_elt_t* %389 to %struct._result_t***
  %391 = load %struct._result_t**, %struct._result_t*** %390, align 8
  %392 = load i32, i32* %19, align 4
  %393 = zext i32 %392 to i64
  %394 = getelementptr inbounds %struct._result_t*, %struct._result_t** %391, i64 %393
  %395 = load %struct._result_t*, %struct._result_t** %394, align 8
  store %struct._result_t* %395, %struct._result_t** %23, align 8
  %396 = load %struct._result_t*, %struct._result_t** %23, align 8
  %397 = getelementptr inbounds %struct._result_t, %struct._result_t* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %20, align 4
  %401 = icmp ult i32 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %388
  %403 = load %struct._result_t*, %struct._result_t** %23, align 8
  %404 = getelementptr inbounds %struct._result_t, %struct._result_t* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %404, i32 0, i32 0
  store i32 0, i32* %405, align 4
  br label %406

406:                                              ; preds = %402, %388
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %19, align 4
  %409 = add i32 %408, 1
  store i32 %409, i32* %19, align 4
  br label %383

410:                                              ; preds = %383
  store i32 0, i32* %19, align 4
  br label %411

411:                                              ; preds = %435, %410
  %412 = load i32, i32* %19, align 4
  %413 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 1
  %414 = load i32, i32* %413, align 8
  %415 = icmp ult i32 %412, %414
  br i1 %415, label %416, label %438

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 0
  %418 = bitcast %union._collec_elt_t* %417 to %struct._result_t***
  %419 = load %struct._result_t**, %struct._result_t*** %418, align 8
  %420 = load i32, i32* %19, align 4
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds %struct._result_t*, %struct._result_t** %419, i64 %421
  %423 = load %struct._result_t*, %struct._result_t** %422, align 8
  store %struct._result_t* %423, %struct._result_t** %24, align 8
  %424 = load %struct._result_t*, %struct._result_t** %24, align 8
  %425 = getelementptr inbounds %struct._result_t, %struct._result_t* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* %20, align 4
  %429 = icmp ult i32 %427, %428
  br i1 %429, label %430, label %434

430:                                              ; preds = %416
  %431 = load %struct._result_t*, %struct._result_t** %24, align 8
  %432 = getelementptr inbounds %struct._result_t, %struct._result_t* %431, i32 0, i32 5
  %433 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %432, i32 0, i32 0
  store i32 0, i32* %433, align 4
  br label %434

434:                                              ; preds = %430, %416
  br label %435

435:                                              ; preds = %434
  %436 = load i32, i32* %19, align 4
  %437 = add i32 %436, 1
  store i32 %437, i32* %19, align 4
  br label %411

438:                                              ; preds = %411
  br label %439

439:                                              ; preds = %438, %317
  store i32 0, i32* %19, align 4
  br label %440

440:                                              ; preds = %453, %439
  %441 = load i32, i32* %19, align 4
  %442 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 1
  %443 = load i32, i32* %442, align 8
  %444 = icmp ult i32 %441, %443
  br i1 %444, label %445, label %456

445:                                              ; preds = %440
  %446 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 0
  %447 = bitcast %union._collec_elt_t* %446 to %struct._result_t***
  %448 = load %struct._result_t**, %struct._result_t*** %447, align 8
  %449 = load i32, i32* %19, align 4
  %450 = zext i32 %449 to i64
  %451 = getelementptr inbounds %struct._result_t*, %struct._result_t** %448, i64 %450
  %452 = load %struct._result_t*, %struct._result_t** %451, align 8
  call void @print_res(%struct._result_t* %452, i32 1, %struct._seq_t* %7, %struct._seq_t* %8)
  br label %453

453:                                              ; preds = %445
  %454 = load i32, i32* %19, align 4
  %455 = add i32 %454, 1
  store i32 %455, i32* %19, align 4
  br label %440

456:                                              ; preds = %440
  %457 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %11, i32 0, i32 1
  store i32 0, i32* %457, align 8
  %458 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 11), align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %464

460:                                              ; preds = %456
  %461 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %460
  call void @seq_revcomp_inplace(%struct._seq_t* %8)
  br label %464

464:                                              ; preds = %463, %460, %456
  store i32 0, i32* %19, align 4
  br label %465

465:                                              ; preds = %478, %464
  %466 = load i32, i32* %19, align 4
  %467 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 1
  %468 = load i32, i32* %467, align 8
  %469 = icmp ult i32 %466, %468
  br i1 %469, label %470, label %481

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 0
  %472 = bitcast %union._collec_elt_t* %471 to %struct._result_t***
  %473 = load %struct._result_t**, %struct._result_t*** %472, align 8
  %474 = load i32, i32* %19, align 4
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds %struct._result_t*, %struct._result_t** %473, i64 %475
  %477 = load %struct._result_t*, %struct._result_t** %476, align 8
  call void @print_res(%struct._result_t* %477, i32 0, %struct._seq_t* %7, %struct._seq_t* %8)
  br label %478

478:                                              ; preds = %470
  %479 = load i32, i32* %19, align 4
  %480 = add i32 %479, 1
  store i32 %480, i32* %19, align 4
  br label %465

481:                                              ; preds = %465
  %482 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %10, i32 0, i32 1
  store i32 0, i32* %482, align 8
  br label %298

483:                                              ; preds = %304
  store i32 0, i32* %3, align 4
  br label %484

484:                                              ; preds = %483, %236
  %485 = load i32, i32* %3, align 4
  ret i32 %485
}

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @bug_handler(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %4 = call i32 @fflush(%struct._IO_FILE* %3)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 @fflush(%struct._IO_FILE* %5)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 %8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @dna_seq_head, i64 0, i64 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @rna_seq_head, i64 0, i64 0))
  call void @abort() #9
  unreachable
}

; Function Attrs: nounwind
declare dso_local void (i32)* @signal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #6

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal void @init_seq(i8* %0, %struct._seq_t* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._seq_t*, align 8
  store i8* %0, i8** %3, align 8
  store %struct._seq_t* %1, %struct._seq_t** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %7 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %6, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %9 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %8, i32 0, i32 1
  store i8* null, i8** %9, align 8
  %10 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %11 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %10, i32 0, i32 2
  store i8* null, i8** %11, align 8
  %12 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %13 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %12, i32 0, i32 3
  call void @init_buf(%struct._read_buf_t* %13)
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 (i8*, i32, ...) @open(i8* %17, i32 0)
  %19 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %20 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %22 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = load i8*, i8** %3, align 8
  %27 = call i32* @__errno_location() #12
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @strerror(i32 %28) #5
  %30 = call i32* @__errno_location() #12
  %31 = load i32, i32* %30, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i64 0, i64 0), i8* %26, i8* %29, i32 %31) #10
  unreachable

32:                                               ; preds = %16
  br label %36

33:                                               ; preds = %2
  %34 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %35 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %34, i32 0, i32 4
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %38 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %37, i32 0, i32 5
  store i32 0, i32* %38, align 4
  %39 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %40 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %39, i32 0, i32 6
  store i32 0, i32* %40, align 8
  %41 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %42 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %41, i32 0, i32 7
  store i32 0, i32* %42, align 4
  %43 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %44 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %43, i32 0, i32 3
  %45 = load %struct._seq_t*, %struct._seq_t** %4, align 8
  %46 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @read_line_buf(%struct._read_buf_t* %44, i32 %47)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_next_seq(%struct._seq_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._seq_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  store %struct._seq_t* %0, %struct._seq_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %14 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %15 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %10, align 8
  br label %18

18:                                               ; preds = %32, %3
  %19 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %20 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 62
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %34 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %33, i32 0, i32 3
  %35 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %36 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @read_line_buf(%struct._read_buf_t* %34, i32 %37)
  store i8* %38, i8** %10, align 8
  br label %18

39:                                               ; preds = %30
  %40 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %41 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %354

46:                                               ; preds = %39
  %47 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %48 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add i32 %50, 24
  %52 = add i32 %51, 1
  %53 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %54 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = icmp ugt i32 %52, %55
  br i1 %56, label %57, label %77

57:                                               ; preds = %46
  %58 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %59 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, 24
  %63 = add i32 %62, 1
  %64 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %65 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %67 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %70 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = zext i32 %71 to i64
  %73 = mul i64 %72, 1
  %74 = call i8* @xrealloc(i8* %68, i64 %73)
  %75 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %76 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %57, %46
  %78 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %79 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  %82 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %83 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %10, align 8
  %86 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %87 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = add i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = mul i64 %91, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %84, i8* align 1 %85, i64 %92, i1 false)
  %93 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %94 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %93, i32 0, i32 5
  store i32 0, i32* %94, align 4
  %95 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %96 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %95, i32 0, i32 3
  %97 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %98 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @read_line_buf(%struct._read_buf_t* %96, i32 %99)
  store i8* %100, i8** %10, align 8
  br label %101

101:                                              ; preds = %230, %77
  %102 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %103 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp ugt i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %101
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 62
  br label %113

113:                                              ; preds = %107, %101
  %114 = phi i1 [ false, %101 ], [ %112, %107 ]
  br i1 %114, label %115, label %237

115:                                              ; preds = %113
  %116 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %117 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %120 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add i32 %118, %122
  %124 = add i32 %123, 1
  %125 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %126 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 4
  %128 = icmp ugt i32 %124, %127
  br i1 %128, label %129, label %174

129:                                              ; preds = %115
  %130 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %131 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %134 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add i32 %132, %136
  %138 = add i32 %137, 1
  %139 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %140 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = add i32 %141, 262144
  %143 = icmp ult i32 %138, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %129
  %145 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %146 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 262144
  br label %159

149:                                              ; preds = %129
  %150 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %151 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %154 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add i32 %152, %156
  %158 = add i32 %157, 1
  br label %159

159:                                              ; preds = %149, %144
  %160 = phi i32 [ %148, %144 ], [ %158, %149 ]
  %161 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %162 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %161, i32 0, i32 7
  store i32 %160, i32* %162, align 4
  %163 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %164 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %167 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  %170 = mul i64 %169, 1
  %171 = call i8* @xrealloc(i8* %165, i64 %170)
  %172 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %173 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %159, %115
  br label %175

175:                                              ; preds = %229, %174
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %10, align 8
  %178 = load i8, i8* %176, align 1
  store i8 %178, i8* %12, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %230

181:                                              ; preds = %175
  %182 = call i16** @__ctype_b_loc() #12
  %183 = load i16*, i16** %182, align 8
  %184 = load i8, i8* %12, align 1
  %185 = zext i8 %184 to i32
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i16, i16* %183, i64 %186
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i32
  %190 = and i32 %189, 256
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load i8, i8* %12, align 1
  %194 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %195 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %198 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %198, align 4
  %201 = zext i32 %199 to i64
  %202 = getelementptr inbounds i8, i8* %196, i64 %201
  store i8 %193, i8* %202, align 1
  br label %229

203:                                              ; preds = %181
  %204 = call i16** @__ctype_b_loc() #12
  %205 = load i16*, i16** %204, align 8
  %206 = load i8, i8* %12, align 1
  %207 = zext i8 %206 to i32
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i16, i16* %205, i64 %208
  %210 = load i16, i16* %209, align 2
  %211 = zext i16 %210 to i32
  %212 = and i32 %211, 512
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %203
  %215 = load i8, i8* %12, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 @toupper(i32 %216) #11
  %218 = trunc i32 %217 to i8
  %219 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %220 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %219, i32 0, i32 2
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %223 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = add i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = zext i32 %224 to i64
  %227 = getelementptr inbounds i8, i8* %221, i64 %226
  store i8 %218, i8* %227, align 1
  br label %228

228:                                              ; preds = %214, %203
  br label %229

229:                                              ; preds = %228, %192
  br label %175

230:                                              ; preds = %175
  %231 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %232 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %231, i32 0, i32 3
  %233 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %234 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = call i8* @read_line_buf(%struct._read_buf_t* %232, i32 %235)
  store i8* %236, i8** %10, align 8
  br label %101

237:                                              ; preds = %113
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %237
  %241 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %242 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %241, i32 0, i32 3
  %243 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = icmp ugt i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %247, i8* getelementptr inbounds ([239 x i8], [239 x i8]* @.str.34, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %240, %237
  %250 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %251 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %254 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %252, i64 %256
  store i8 0, i8* %257, align 1
  %258 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %259 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %258, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = call i8* @strstr(i8* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0)) #11
  store i8* %261, i8** %10, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = icmp ne i8* %262, null
  br i1 %263, label %264, label %298

264:                                              ; preds = %249
  %265 = load i8*, i8** %10, align 8
  %266 = getelementptr inbounds i8, i8* %265, i64 6
  store i8* %266, i8** %13, align 8
  %267 = load i32, i32* %9, align 4
  %268 = sub i32 %267, 6
  store i32 %268, i32* %9, align 4
  br label %269

269:                                              ; preds = %281, %264
  %270 = call i16** @__ctype_b_loc() #12
  %271 = load i16*, i16** %270, align 8
  %272 = load i8*, i8** %13, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i16, i16* %271, i64 %275
  %277 = load i16, i16* %276, align 2
  %278 = zext i16 %277 to i32
  %279 = and i32 %278, 2048
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %269
  %282 = load i8*, i8** %13, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 1
  store i8* %283, i8** %13, align 8
  %284 = load i32, i32* %9, align 4
  %285 = sub i32 %284, 1
  store i32 %285, i32* %9, align 4
  br label %269

286:                                              ; preds = %269
  br label %287

287:                                              ; preds = %291, %286
  %288 = load i8*, i8** %13, align 8
  %289 = load i8, i8* %288, align 1
  %290 = icmp ne i8 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = load i8*, i8** %13, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %13, align 8
  %294 = load i8, i8* %292, align 1
  %295 = load i8*, i8** %10, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %10, align 8
  store i8 %294, i8* %295, align 1
  br label %287

297:                                              ; preds = %287
  br label %298

298:                                              ; preds = %297, %249
  %299 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %300 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = load i32, i32* %9, align 4
  %303 = zext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = getelementptr inbounds i8, i8* %304, i64 -1
  store i8* %305, i8** %10, align 8
  br label %306

306:                                              ; preds = %332, %298
  %307 = call i16** @__ctype_b_loc() #12
  %308 = load i16*, i16** %307, align 8
  %309 = load i8*, i8** %10, align 8
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i16, i16* %308, i64 %312
  %314 = load i16, i16* %313, align 2
  %315 = zext i16 %314 to i32
  %316 = and i32 %315, 2
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %330, label %318

318:                                              ; preds = %306
  %319 = call i16** @__ctype_b_loc() #12
  %320 = load i16*, i16** %319, align 8
  %321 = load i8*, i8** %10, align 8
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i16, i16* %320, i64 %324
  %326 = load i16, i16* %325, align 2
  %327 = zext i16 %326 to i32
  %328 = and i32 %327, 8192
  %329 = icmp ne i32 %328, 0
  br label %330

330:                                              ; preds = %318, %306
  %331 = phi i1 [ true, %306 ], [ %329, %318 ]
  br i1 %331, label %332, label %335

332:                                              ; preds = %330
  %333 = load i8*, i8** %10, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 -1
  store i8* %334, i8** %10, align 8
  br label %306

335:                                              ; preds = %330
  %336 = load i8*, i8** %10, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 1
  %338 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %339 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %338, i32 0, i32 5
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %6, align 4
  %342 = add i32 %340, %341
  %343 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %337, i64 24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i32 %342) #5
  store i32 %343, i32* %11, align 4
  %344 = load i32, i32* %11, align 4
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %349, label %346

346:                                              ; preds = %335
  %347 = load i32, i32* %11, align 4
  %348 = icmp sge i32 %347, 24
  br i1 %348, label %349, label %353

349:                                              ; preds = %346, %335
  %350 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %351 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0), i32 %352) #10
  unreachable

353:                                              ; preds = %346
  store i32 0, i32* %4, align 4
  br label %354

354:                                              ; preds = %353, %45
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

; Function Attrs: nounwind
declare dso_local i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @init_splice_junctions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %5 = zext i32 %4 to i64
  %6 = mul i64 %5, 8
  %7 = call i8* @xmalloc(i64 %6)
  %8 = bitcast i8* %7 to %struct._junction_t*
  store %struct._junction_t* %8, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %52, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 2), align 8
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %55

13:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %48, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load i8*, i8** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 0), align 8
  %19 = load i32, i32* %1, align 4
  %20 = mul i32 %19, 5
  %21 = load i32, i32* %2, align 4
  %22 = add i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %18, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %3, align 1
  %26 = load i8, i8* %3, align 1
  %27 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %28 = load i32, i32* %1, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %27, i64 %29
  %31 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %30, i32 0, i32 0
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i64 0, i64 %33
  store i8 %26, i8* %34, align 1
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load %struct._junction_t*, %struct._junction_t** getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 1), align 8
  %40 = load i32, i32* %1, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %39, i64 %41
  %43 = getelementptr inbounds %struct._junction_t, %struct._junction_t* %42, i32 0, i32 1
  %44 = load i32, i32* %2, align 4
  %45 = sub i32 3, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %43, i64 0, i64 %46
  store i8 %38, i8* %47, align 1
  br label %48

48:                                               ; preds = %17
  %49 = load i32, i32* %2, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %2, align 4
  br label %14

51:                                               ; preds = %14
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %1, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %9

55:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @seq_revcomp_inplace(%struct._seq_t* %0) #0 {
  %2 = alloca %struct._seq_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct._seq_t* %0, %struct._seq_t** %2, align 8
  %6 = load %struct._seq_t*, %struct._seq_t** %2, align 8
  %7 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load %struct._seq_t*, %struct._seq_t** %2, align 8
  %10 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct._seq_t*, %struct._seq_t** %2, align 8
  %13 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %11, i64 %15
  store i8* %16, i8** %4, align 8
  br label %17

17:                                               ; preds = %21, %1
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp ult i8* %18, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 -1
  store i8* %23, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %5, align 1
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i64
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @dna_complement, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %4, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8, i8* %5, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %3, align 8
  store i8 %34, i8* %35, align 1
  br label %17

37:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_res(%struct._result_t* %0, i32 %1, %struct._seq_t* %2, %struct._seq_t* %3) #0 {
  %5 = alloca %struct._result_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._seq_t*, align 8
  %8 = alloca %struct._seq_t*, align 8
  %9 = alloca i32, align 4
  store %struct._result_t* %0, %struct._result_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct._seq_t* %2, %struct._seq_t** %7, align 8
  store %struct._seq_t* %3, %struct._seq_t** %8, align 8
  %10 = load %struct._result_t*, %struct._result_t** %5, align 8
  %11 = getelementptr inbounds %struct._result_t, %struct._result_t* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 17), align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %79

16:                                               ; preds = %4
  %17 = load %struct._seq_t*, %struct._seq_t** %7, align 8
  %18 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct._seq_t*, %struct._seq_t** %8, align 8
  %21 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8* %19, i8* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 3), align 4
  switch i32 %29, label %76 [
    i32 0, label %30
    i32 1, label %36
    i32 3, label %44
    i32 4, label %57
  ]

30:                                               ; preds = %28
  %31 = load %struct._result_t*, %struct._result_t** %5, align 8
  %32 = getelementptr inbounds %struct._result_t, %struct._result_t* %31, i32 0, i32 1
  %33 = load %struct._result_t*, %struct._result_t** %5, align 8
  %34 = getelementptr inbounds %struct._result_t, %struct._result_t* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  call void @print_exons(%struct._collec_t* %32, i32 %35)
  br label %77

36:                                               ; preds = %28
  %37 = load %struct._seq_t*, %struct._seq_t** %7, align 8
  %38 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct._seq_t*, %struct._seq_t** %8, align 8
  %41 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct._result_t*, %struct._result_t** %5, align 8
  call void @print_align_lat(i8* %39, i8* %42, %struct._result_t* %43)
  br label %77

44:                                               ; preds = %28
  %45 = load %struct._result_t*, %struct._result_t** %5, align 8
  %46 = getelementptr inbounds %struct._result_t, %struct._result_t* %45, i32 0, i32 1
  %47 = load %struct._result_t*, %struct._result_t** %5, align 8
  %48 = getelementptr inbounds %struct._result_t, %struct._result_t* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  call void @print_exons(%struct._collec_t* %46, i32 %49)
  %50 = load %struct._seq_t*, %struct._seq_t** %7, align 8
  %51 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct._seq_t*, %struct._seq_t** %8, align 8
  %54 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct._result_t*, %struct._result_t** %5, align 8
  call void @print_align_lat(i8* %52, i8* %55, %struct._result_t* %56)
  br label %77

57:                                               ; preds = %28
  %58 = load %struct._result_t*, %struct._result_t** %5, align 8
  %59 = getelementptr inbounds %struct._result_t, %struct._result_t* %58, i32 0, i32 1
  %60 = load %struct._result_t*, %struct._result_t** %5, align 8
  %61 = getelementptr inbounds %struct._result_t, %struct._result_t* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  call void @print_exons(%struct._collec_t* %59, i32 %62)
  %63 = load %struct._seq_t*, %struct._seq_t** %7, align 8
  %64 = load %struct._seq_t*, %struct._seq_t** %8, align 8
  %65 = load %struct._result_t*, %struct._result_t** %5, align 8
  %66 = getelementptr inbounds %struct._result_t, %struct._result_t* %65, i32 0, i32 1
  %67 = load %struct._result_t*, %struct._result_t** %5, align 8
  %68 = getelementptr inbounds %struct._result_t, %struct._result_t* %67, i32 0, i32 5
  call void @print_polyA_info(%struct._seq_t* %63, %struct._seq_t* %64, %struct._collec_t* %66, %struct._sim4_stats* %68)
  %69 = load %struct._seq_t*, %struct._seq_t** %7, align 8
  %70 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct._seq_t*, %struct._seq_t** %8, align 8
  %73 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct._result_t*, %struct._result_t** %5, align 8
  call void @print_align_lat(i8* %71, i8* %74, %struct._result_t* %75)
  br label %77

76:                                               ; preds = %28
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.22, i64 0, i64 0)) #10
  unreachable

77:                                               ; preds = %57, %44, %36, %30
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %4
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %9, align 4
  %82 = load %struct._result_t*, %struct._result_t** %5, align 8
  %83 = getelementptr inbounds %struct._result_t, %struct._result_t* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ult i32 %81, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %80
  %88 = load %struct._result_t*, %struct._result_t** %5, align 8
  %89 = getelementptr inbounds %struct._result_t, %struct._result_t* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %89, i32 0, i32 0
  %91 = bitcast %union._collec_elt_t* %90 to i8***
  %92 = load i8**, i8*** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  call void @free(i8* %96) #5
  br label %97

97:                                               ; preds = %87
  %98 = load i32, i32* %9, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load %struct._result_t*, %struct._result_t** %5, align 8
  %102 = getelementptr inbounds %struct._result_t, %struct._result_t* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %102, i32 0, i32 0
  %104 = bitcast %union._collec_elt_t* %103 to i8***
  %105 = load i8**, i8*** %104, align 8
  %106 = bitcast i8** %105 to i8*
  call void @free(i8* %106) #5
  %107 = load %struct._result_t*, %struct._result_t** %5, align 8
  %108 = getelementptr inbounds %struct._result_t, %struct._result_t* %107, i32 0, i32 0
  %109 = load %struct._edit_script_list*, %struct._edit_script_list** %108, align 8
  %110 = icmp ne %struct._edit_script_list* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %100
  %112 = load %struct._result_t*, %struct._result_t** %5, align 8
  %113 = getelementptr inbounds %struct._result_t, %struct._result_t* %112, i32 0, i32 0
  %114 = load %struct._edit_script_list*, %struct._edit_script_list** %113, align 8
  call void @free_align(%struct._edit_script_list* %114)
  br label %115

115:                                              ; preds = %111, %100
  %116 = load %struct._result_t*, %struct._result_t** %5, align 8
  %117 = bitcast %struct._result_t* %116 to i8*
  call void @free(i8* %117) #5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_align_lat(i8* %0, i8* %1, %struct._result_t* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._result_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._edit_script_list*, align 8
  %9 = alloca %struct._edit_script_list*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct._result_t* %2, %struct._result_t** %6, align 8
  %10 = load %struct._result_t*, %struct._result_t** %6, align 8
  %11 = getelementptr inbounds %struct._result_t, %struct._result_t* %10, i32 0, i32 0
  %12 = load %struct._edit_script_list*, %struct._edit_script_list** %11, align 8
  %13 = icmp eq %struct._edit_script_list* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %88

15:                                               ; preds = %3
  %16 = load %struct._result_t*, %struct._result_t** %6, align 8
  %17 = getelementptr inbounds %struct._result_t, %struct._result_t* %16, i32 0, i32 0
  %18 = load %struct._edit_script_list*, %struct._edit_script_list** %17, align 8
  store %struct._edit_script_list* %18, %struct._edit_script_list** %9, align 8
  br label %19

19:                                               ; preds = %22, %15
  %20 = load %struct._edit_script_list*, %struct._edit_script_list** %9, align 8
  %21 = icmp ne %struct._edit_script_list* %20, null
  br i1 %21, label %22, label %85

22:                                               ; preds = %19
  %23 = load %struct._edit_script_list*, %struct._edit_script_list** %9, align 8
  store %struct._edit_script_list* %23, %struct._edit_script_list** %8, align 8
  %24 = load %struct._edit_script_list*, %struct._edit_script_list** %9, align 8
  %25 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %24, i32 0, i32 0
  %26 = load %struct._edit_script_list*, %struct._edit_script_list** %25, align 8
  store %struct._edit_script_list* %26, %struct._edit_script_list** %9, align 8
  %27 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %28 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 2, %29
  %31 = add i32 %30, 1
  %32 = add i32 %31, 1
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call i8* @xmalloc(i64 %34)
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %7, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %7, align 8
  %39 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %40 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %39, i32 0, i32 1
  %41 = load %struct._edit_script*, %struct._edit_script** %40, align 8
  %42 = load i32*, i32** %7, align 8
  call void @S2A(%struct._edit_script* %41, i32* %42, i32 0)
  %43 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %44 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %43, i32 0, i32 1
  %45 = load %struct._edit_script*, %struct._edit_script** %44, align 8
  call void @Free_script(%struct._edit_script* %45)
  %46 = load i8*, i8** %4, align 8
  %47 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %48 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %46, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 -1
  %53 = getelementptr inbounds i8, i8* %52, i64 -1
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %56 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %54, i64 %58
  %60 = getelementptr inbounds i8, i8* %59, i64 -1
  %61 = getelementptr inbounds i8, i8* %60, i64 -1
  %62 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %63 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %66 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %70 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %73 = getelementptr inbounds %struct._edit_script_list, %struct._edit_script_list* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct._result_t*, %struct._result_t** %6, align 8
  %76 = getelementptr inbounds %struct._result_t, %struct._result_t* %75, i32 0, i32 1
  %77 = load %struct._result_t*, %struct._result_t** %6, align 8
  %78 = getelementptr inbounds %struct._result_t, %struct._result_t* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  call void @IDISPLAY(i8* %53, i8* %61, i32 %64, i32 %67, i32* %68, i32 %71, i32 %74, %struct._collec_t* %76, i32 %79)
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -1
  %82 = bitcast i32* %81 to i8*
  call void @free(i8* %82) #5
  %83 = load %struct._edit_script_list*, %struct._edit_script_list** %8, align 8
  %84 = bitcast %struct._edit_script_list* %83 to i8*
  call void @free(i8* %84) #5
  br label %19

85:                                               ; preds = %19
  %86 = load %struct._result_t*, %struct._result_t** %6, align 8
  %87 = getelementptr inbounds %struct._result_t, %struct._result_t* %86, i32 0, i32 0
  store %struct._edit_script_list* null, %struct._edit_script_list** %87, align 8
  br label %88

88:                                               ; preds = %85, %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_polyA_info(%struct._seq_t* %0, %struct._seq_t* %1, %struct._collec_t* %2, %struct._sim4_stats* %3) #0 {
  %5 = alloca %struct._seq_t*, align 8
  %6 = alloca %struct._seq_t*, align 8
  %7 = alloca %struct._collec_t*, align 8
  %8 = alloca %struct._sim4_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca [51 x i8], align 16
  %16 = alloca %struct._exon_t*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca [51 x i8], align 16
  %23 = alloca %struct._exon_t*, align 8
  store %struct._seq_t* %0, %struct._seq_t** %5, align 8
  store %struct._seq_t* %1, %struct._seq_t** %6, align 8
  store %struct._collec_t* %2, %struct._collec_t** %7, align 8
  store %struct._sim4_stats* %3, %struct._sim4_stats** %8, align 8
  %24 = load %struct._sim4_stats*, %struct._sim4_stats** %8, align 8
  %25 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %242

28:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 50, i32* %13, align 4
  %29 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %30 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %29, i32 0, i32 0
  %31 = bitcast %union._collec_elt_t* %30 to %struct._exon_t***
  %32 = load %struct._exon_t**, %struct._exon_t*** %31, align 8
  %33 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %34 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %32, i64 %37
  %39 = load %struct._exon_t*, %struct._exon_t** %38, align 8
  store %struct._exon_t* %39, %struct._exon_t** %16, align 8
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %73, %28
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %41, 10
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %45 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add i32 %46, %47
  %49 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %50 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = icmp ult i32 %48, %51
  br label %53

53:                                               ; preds = %43, %40
  %54 = phi i1 [ false, %40 ], [ %52, %43 ]
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %57 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %60 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %61, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %58, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 65
  br i1 %68, label %69, label %72

69:                                               ; preds = %55
  %70 = load i32, i32* %9, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %40

76:                                               ; preds = %53
  br label %77

77:                                               ; preds = %103, %76
  %78 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %79 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %80, %81
  %83 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %84 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = icmp ult i32 %82, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %77
  %88 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %89 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %88, i32 0, i32 2
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %92 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %90, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp eq i32 %99, 65
  br label %101

101:                                              ; preds = %87, %77
  %102 = phi i1 [ false, %77 ], [ %100, %87 ]
  br i1 %102, label %103, label %108

103:                                              ; preds = %101
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %9, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %77

108:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  br label %109

109:                                              ; preds = %139, %108
  %110 = load i32, i32* %12, align 4
  %111 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %112 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ult i32 %116, %117
  br label %119

119:                                              ; preds = %115, %109
  %120 = phi i1 [ false, %109 ], [ %118, %115 ]
  br i1 %120, label %121, label %142

121:                                              ; preds = %119
  %122 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %123 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %126 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = add i32 %127, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %124, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 65
  br i1 %134, label %135, label %138

135:                                              ; preds = %121
  %136 = load i32, i32* %10, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %135, %121
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %12, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %109

142:                                              ; preds = %119
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %147 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add i32 %148, 1
  %150 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %151 = add i32 %149, %150
  %152 = load i32, i32* %11, align 4
  %153 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %154 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %157 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %155, i64 %159
  %161 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %162 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, 1
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* %12, align 4
  %167 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %168 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %167, i32 0, i32 2
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %171 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %169, i64 %173
  %175 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %176 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = add i32 %177, 1
  %179 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %180 = add i32 %178, %179
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.24, i64 0, i64 0), i32 %143, i32 %144, i32 %145, i32 %151, i32 %152, i8* %160, i32 %164, i32 %165, i32 %166, i8* %174, i32 %180)
  %182 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %183 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %142
  %188 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %189 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %187, %142
  %192 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %193 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %194 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %197 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %195, i64 %199
  %201 = load i32, i32* %13, align 4
  %202 = zext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds i8, i8* %200, i64 %203
  %205 = load i32, i32* %13, align 4
  %206 = zext i32 %205 to i64
  %207 = call i8* @strncpy(i8* %192, i8* %204, i64 %206) #5
  %208 = load i32, i32* %13, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 %209
  store i8 0, i8* %210, align 1
  %211 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %212 = call i8* @strstr(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25.52, i64 0, i64 0)) #11
  store i8* %212, i8** %14, align 8
  %213 = load i8*, i8** %14, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %191
  %216 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %217 = call i8* @strstr(i8* %216, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0)) #11
  store i8* %217, i8** %14, align 8
  br label %218

218:                                              ; preds = %215, %191
  %219 = load i8*, i8** %14, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %241

221:                                              ; preds = %218
  %222 = load i8*, i8** %14, align 8
  %223 = getelementptr inbounds [51 x i8], [51 x i8]* %15, i64 0, i64 0
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = load %struct._exon_t*, %struct._exon_t** %16, align 8
  %228 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = zext i32 %229 to i64
  %231 = add nsw i64 %226, %230
  %232 = load i32, i32* %13, align 4
  %233 = zext i32 %232 to i64
  %234 = sub nsw i64 %231, %233
  %235 = add nsw i64 %234, 1
  %236 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %237 = zext i32 %236 to i64
  %238 = add nsw i64 %235, %237
  %239 = trunc i64 %238 to i32
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %221, %218
  br label %242

242:                                              ; preds = %241, %4
  %243 = load %struct._sim4_stats*, %struct._sim4_stats** %8, align 8
  %244 = getelementptr inbounds %struct._sim4_stats, %struct._sim4_stats* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %440

247:                                              ; preds = %242
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %248 = load %struct._collec_t*, %struct._collec_t** %7, align 8
  %249 = getelementptr inbounds %struct._collec_t, %struct._collec_t* %248, i32 0, i32 0
  %250 = bitcast %union._collec_elt_t* %249 to %struct._exon_t***
  %251 = load %struct._exon_t**, %struct._exon_t*** %250, align 8
  %252 = getelementptr inbounds %struct._exon_t*, %struct._exon_t** %251, i64 0
  %253 = load %struct._exon_t*, %struct._exon_t** %252, align 8
  store %struct._exon_t* %253, %struct._exon_t** %23, align 8
  store i32 0, i32* %19, align 4
  br label %254

254:                                              ; preds = %285, %247
  %255 = load i32, i32* %19, align 4
  %256 = icmp ult i32 %255, 10
  br i1 %256, label %257, label %264

257:                                              ; preds = %254
  %258 = load i32, i32* %19, align 4
  %259 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %260 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = sub i32 %261, 1
  %263 = icmp ult i32 %258, %262
  br label %264

264:                                              ; preds = %257, %254
  %265 = phi i1 [ false, %254 ], [ %263, %257 ]
  br i1 %265, label %266, label %288

266:                                              ; preds = %264
  %267 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %268 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %267, i32 0, i32 2
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %271 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = sub i32 %272, 2
  %274 = load i32, i32* %19, align 4
  %275 = sub i32 %273, %274
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %269, i64 %276
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp eq i32 %279, 84
  br i1 %280, label %281, label %284

281:                                              ; preds = %266
  %282 = load i32, i32* %17, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %17, align 4
  br label %284

284:                                              ; preds = %281, %266
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %19, align 4
  %287 = add i32 %286, 1
  store i32 %287, i32* %19, align 4
  br label %254

288:                                              ; preds = %264
  br label %289

289:                                              ; preds = %313, %288
  %290 = load i32, i32* %19, align 4
  %291 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %292 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = sub i32 %293, 1
  %295 = icmp ult i32 %290, %294
  br i1 %295, label %296, label %311

296:                                              ; preds = %289
  %297 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %298 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %301 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = sub i32 %302, 2
  %304 = load i32, i32* %19, align 4
  %305 = sub i32 %303, %304
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %299, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %309, 84
  br label %311

311:                                              ; preds = %296, %289
  %312 = phi i1 [ false, %289 ], [ %310, %296 ]
  br i1 %312, label %313, label %318

313:                                              ; preds = %311
  %314 = load i32, i32* %19, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %19, align 4
  %316 = load i32, i32* %17, align 4
  %317 = add i32 %316, 1
  store i32 %317, i32* %17, align 4
  br label %289

318:                                              ; preds = %311
  store i32 0, i32* %20, align 4
  br label %319

319:                                              ; preds = %351, %318
  %320 = load i32, i32* %20, align 4
  %321 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %322 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = sub i32 %323, 1
  %325 = icmp ult i32 %320, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %319
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* %19, align 4
  %329 = icmp ult i32 %327, %328
  br label %330

330:                                              ; preds = %326, %319
  %331 = phi i1 [ false, %319 ], [ %329, %326 ]
  br i1 %331, label %332, label %354

332:                                              ; preds = %330
  %333 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %334 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %333, i32 0, i32 2
  %335 = load i8*, i8** %334, align 8
  %336 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %337 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = sub i32 %338, 2
  %340 = load i32, i32* %20, align 4
  %341 = sub i32 %339, %340
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds i8, i8* %335, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 84
  br i1 %346, label %347, label %350

347:                                              ; preds = %332
  %348 = load i32, i32* %18, align 4
  %349 = add i32 %348, 1
  store i32 %349, i32* %18, align 4
  br label %350

350:                                              ; preds = %347, %332
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %20, align 4
  %353 = add i32 %352, 1
  store i32 %353, i32* %20, align 4
  br label %319

354:                                              ; preds = %330
  %355 = load i32, i32* %19, align 4
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* %18, align 4
  %358 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %359 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = sub i32 %360, 1
  %362 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %363 = add i32 %361, %362
  %364 = load i32, i32* %19, align 4
  %365 = load %struct._seq_t*, %struct._seq_t** %6, align 8
  %366 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %365, i32 0, i32 2
  %367 = load i8*, i8** %366, align 8
  %368 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %369 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = sub i32 %370, 1
  %372 = load i32, i32* %19, align 4
  %373 = sub i32 %371, %372
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i8, i8* %367, i64 %374
  %376 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %377 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = sub i32 %378, 1
  %380 = load i32, i32* %19, align 4
  %381 = load i32, i32* %20, align 4
  %382 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %383 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %382, i32 0, i32 2
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %386 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = sub i32 %387, 1
  %389 = load i32, i32* %20, align 4
  %390 = sub i32 %388, %389
  %391 = zext i32 %390 to i64
  %392 = getelementptr inbounds i8, i8* %384, i64 %391
  %393 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %394 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 4
  %396 = sub i32 %395, 1
  %397 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %398 = add i32 %396, %397
  %399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.28, i64 0, i64 0), i32 %355, i32 %356, i32 %357, i32 %363, i32 %364, i8* %375, i32 %379, i32 %380, i32 %381, i8* %392, i32 %398)
  %400 = getelementptr inbounds [51 x i8], [51 x i8]* %22, i64 0, i64 0
  %401 = load %struct._seq_t*, %struct._seq_t** %5, align 8
  %402 = getelementptr inbounds %struct._seq_t, %struct._seq_t* %401, i32 0, i32 2
  %403 = load i8*, i8** %402, align 8
  %404 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %405 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i8, i8* %403, i64 %407
  %409 = getelementptr inbounds i8, i8* %408, i64 -1
  %410 = call i8* @strncpy(i8* %400, i8* %409, i64 50) #5
  %411 = getelementptr inbounds [51 x i8], [51 x i8]* %22, i64 0, i64 50
  store i8 0, i8* %411, align 2
  %412 = getelementptr inbounds [51 x i8], [51 x i8]* %22, i64 0, i64 0
  %413 = call i8* @strstr(i8* %412, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0)) #11
  store i8* %413, i8** %21, align 8
  %414 = load i8*, i8** %21, align 8
  %415 = icmp eq i8* %414, null
  br i1 %415, label %416, label %419

416:                                              ; preds = %354
  %417 = getelementptr inbounds [51 x i8], [51 x i8]* %22, i64 0, i64 0
  %418 = call i8* @strstr(i8* %417, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0)) #11
  store i8* %418, i8** %21, align 8
  br label %419

419:                                              ; preds = %416, %354
  %420 = load i8*, i8** %21, align 8
  %421 = icmp ne i8* %420, null
  br i1 %421, label %422, label %439

422:                                              ; preds = %419
  %423 = load i8*, i8** %21, align 8
  %424 = getelementptr inbounds [51 x i8], [51 x i8]* %22, i64 0, i64 0
  %425 = ptrtoint i8* %423 to i64
  %426 = ptrtoint i8* %424 to i64
  %427 = sub i64 %425, %426
  %428 = load %struct._exon_t*, %struct._exon_t** %23, align 8
  %429 = getelementptr inbounds %struct._exon_t, %struct._exon_t* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = zext i32 %430 to i64
  %432 = add nsw i64 %427, %431
  %433 = add nsw i64 %432, 5
  %434 = load i32, i32* getelementptr inbounds (%struct._options_t, %struct._options_t* @options, i32 0, i32 15), align 4
  %435 = zext i32 %434 to i64
  %436 = add nsw i64 %433, %435
  %437 = trunc i64 %436 to i32
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %437)
  br label %439

439:                                              ; preds = %422, %419
  br label %440

440:                                              ; preds = %439, %242
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i8* @strstr(i8*, i8*) #6

; Function Attrs: noinline nounwind uwtable
define internal i8* @read_line_buf(%struct._read_buf_t* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._read_buf_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._read_buf_t* %0, %struct._read_buf_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %10 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %9, i32 0, i32 2
  store i32 0, i32* %10, align 4
  %11 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %12 = call i8* @shuffle_line(%struct._read_buf_t* %11, i64* %8)
  store i8* %12, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  store i8* %15, i8** %3, align 8
  br label %81

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %76, %16
  %18 = load i32, i32* %5, align 4
  %19 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %20 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %19, i32 0, i32 4
  %21 = getelementptr inbounds [4096 x i8], [4096 x i8]* %20, i64 0, i64 0
  %22 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %23 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  %27 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %28 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sub i32 4096, %29
  %31 = sub i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = call i64 @read(i32 %18, i8* %26, i64 %32)
  store i64 %33, i64* %7, align 8
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %47

35:                                               ; preds = %17
  %36 = call i32* @__errno_location() #12
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 4
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @__errno_location() #12
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @strerror(i32 %42) #5
  %44 = call i32* @__errno_location() #12
  %45 = load i32, i32* %44, align 4
  call void (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i32 %40, i8* %43, i32 %45) #10
  unreachable

46:                                               ; preds = %35
  br label %55

47:                                               ; preds = %17
  %48 = load i64, i64* %7, align 8
  %49 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %50 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  br label %55

55:                                               ; preds = %47, %46
  %56 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %57 = call i8* @shuffle_line(%struct._read_buf_t* %56, i64* %8)
  store i8* %57, i8** %6, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %65 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %68 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %66, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %73 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %63, %60, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i8*, i8** %6, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %17, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** %3, align 8
  br label %81

81:                                               ; preds = %79, %14
  %82 = load i8*, i8** %3, align 8
  ret i8* %82
}

; Function Attrs: nounwind readnone
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #6

; Function Attrs: nounwind
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline nounwind uwtable
define internal i8* @shuffle_line(%struct._read_buf_t* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._read_buf_t*, align 8
  %5 = alloca i64*, align 8
  store %struct._read_buf_t* %0, %struct._read_buf_t** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %7 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %14 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = icmp uge i64 %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10, %2
  store i8* null, i8** %3, align 8
  br label %154

19:                                               ; preds = %10
  %20 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %21 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = zext i32 %22 to i64
  %24 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %25 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = zext i32 %26 to i64
  %28 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %29 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = zext i32 %30 to i64
  %32 = load i64*, i64** %5, align 8
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %31, %33
  %35 = add i64 %27, %34
  %36 = icmp ule i64 %23, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  call void @grow_read_buf(%struct._read_buf_t* %38)
  br label %39

39:                                               ; preds = %37, %19
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %44 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %50 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %49, i32 0, i32 4
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds [4096 x i8], [4096 x i8]* %50, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 10
  br label %57

57:                                               ; preds = %48, %40
  %58 = phi i1 [ false, %40 ], [ %56, %48 ]
  br i1 %58, label %59, label %76

59:                                               ; preds = %57
  %60 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %61 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %60, i32 0, i32 4
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %61, i64 0, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %68 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %71 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %69, i64 %74
  store i8 %66, i8* %75, align 1
  br label %40

76:                                               ; preds = %57
  %77 = load i64*, i64** %5, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %80 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %78, %82
  br i1 %83, label %84, label %150

84:                                               ; preds = %76
  %85 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %86 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %85, i32 0, i32 4
  %87 = load i64*, i64** %5, align 8
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = getelementptr inbounds [4096 x i8], [4096 x i8]* %86, i64 0, i64 %88
  %91 = load i8, i8* %90, align 1
  %92 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %93 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %96 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %96, align 4
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %94, i64 %99
  store i8 %91, i8* %100, align 1
  %101 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %102 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %105 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load i64*, i64** %5, align 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %112 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = zext i32 %113 to i64
  %115 = icmp ult i64 %110, %114
  br i1 %115, label %116, label %142

116:                                              ; preds = %84
  %117 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %118 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %117, i32 0, i32 4
  %119 = getelementptr inbounds [4096 x i8], [4096 x i8]* %118, i64 0, i64 0
  %120 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %121 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %120, i32 0, i32 4
  %122 = getelementptr inbounds [4096 x i8], [4096 x i8]* %121, i64 0, i64 0
  %123 = load i64*, i64** %5, align 8
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %127 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = zext i32 %128 to i64
  %130 = load i64*, i64** %5, align 8
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %129, %131
  %133 = mul i64 %132, 1
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %119, i8* align 1 %125, i64 %133, i1 false)
  %134 = load i64*, i64** %5, align 8
  %135 = load i64, i64* %134, align 8
  %136 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %137 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = zext i32 %138 to i64
  %140 = sub i64 %139, %135
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 8
  br label %145

142:                                              ; preds = %84
  %143 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %144 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %143, i32 0, i32 3
  store i32 0, i32* %144, align 8
  br label %145

145:                                              ; preds = %142, %116
  %146 = load i64*, i64** %5, align 8
  store i64 0, i64* %146, align 8
  %147 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %148 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %3, align 8
  br label %154

150:                                              ; preds = %76
  %151 = load %struct._read_buf_t*, %struct._read_buf_t** %4, align 8
  %152 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %151, i32 0, i32 3
  store i32 0, i32* %152, align 8
  %153 = load i64*, i64** %5, align 8
  store i64 0, i64* %153, align 8
  store i8* null, i8** %3, align 8
  br label %154

154:                                              ; preds = %150, %145, %18
  %155 = load i8*, i8** %3, align 8
  ret i8* %155
}

declare dso_local i64 @read(i32, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @grow_read_buf(%struct._read_buf_t* %0) #0 {
  %2 = alloca %struct._read_buf_t*, align 8
  store %struct._read_buf_t* %0, %struct._read_buf_t** %2, align 8
  %3 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %4 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = add i32 %5, 4096
  store i32 %6, i32* %4, align 8
  %7 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %8 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %11 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = zext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = call i8* @xrealloc(i8* %9, i64 %14)
  %16 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %17 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_buf(%struct._read_buf_t* %0) #0 {
  %2 = alloca %struct._read_buf_t*, align 8
  store %struct._read_buf_t* %0, %struct._read_buf_t** %2, align 8
  %3 = call i8* @xmalloc(i64 4096)
  %4 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %5 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %4, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %7 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %6, i32 0, i32 1
  store i32 4096, i32* %7, align 8
  %8 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %9 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %8, i32 0, i32 2
  store i32 0, i32* %9, align 4
  %10 = load %struct._read_buf_t*, %struct._read_buf_t** %2, align 8
  %11 = getelementptr inbounds %struct._read_buf_t, %struct._read_buf_t* %10, i32 0, i32 3
  store i32 0, i32* %11, align 8
  ret void
}

declare dso_local i32 @open(i8*, i32, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { argmemonly nounwind willreturn }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind readnone }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"Debian clang version 10.0.1-++20200708124224+ef32c611aa2-1~exp1~20200707224822.188 "}
!1 = !{i32 1, !"wchar_size", i32 4}
